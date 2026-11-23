from flask import Flask, render_template
import sqlite3
import os


BASE_DIR = os.path.dirname(os.path.abspath(__file__))
FRONT_DIR = os.path.abspath(os.path.join(BASE_DIR, '..', 'front'))
DB_DIR = os.path.abspath(os.path.join(BASE_DIR, '..', 'database'))

DB_PATH = os.path.join(DB_DIR, 'database.db')
SCHEMA_PATH = os.path.join(DB_DIR, 'schema.sql')
SEED_PATH = os.path.join(DB_DIR, 'seed_data.sql')

app = Flask(__name__, template_folder=FRONT_DIR, static_folder=FRONT_DIR)

def init_db():
    conn=sqlite3.connect(DB_PATH)
    with open(SCHEMA_PATH, 'r', encoding='utf-8') as f:
        conn.executescript(f.read())
    if os.path.exists(SEED_PATH):
        with open(SEED_PATH, 'r', encoding='utf-8') as f:
            conn.executescript(f.read())
    conn.commit()
    conn.close() 

# Automatically build database.db from schema.sql if it doesn't exist yet
if not os.path.exists(DB_PATH):
    init_db() 

@app.route('/')
def home():
# 2. Connect to your SQL database
# (Make sure 'database.db' matches your actual database file name/path)
    conn = sqlite3.connect(DB_PATH)  
    conn.row_factory = sqlite3.Row
    cursor = conn.cursor() 

# 3. Run your SQL query to get all rabbi data
    cursor.execute("""
        SELECT 
            r.Rabbi_FullName, 
            r.Rabbi_YearBorn, 
            r.Rabbi_YearDied, 
            w.Rabbi_works, 
            rw.sefaria_path
        FROM RabbiInfo r
        LEFT JOIN works w ON r.Rabbi_id = w.Rabbi_id
        LEFT JOIN RabbiWorks rw ON r.Rabbi_id = rw.Rabbi_id
    """)
    rows = cursor.fetchall()
    conn.close()

# 4. Turn the rows into a dictionary organized by name:
# e.g., {'Rabbi Smith': {'name': 'Rabbi Smith', 'specialty': '...', 'bio': '...'}}
    rabbis_dict = {row['Rabbi_FullName']: row for row in rows}

# 5. Send this dictionary straight to your HTML file
    return render_template('index.html', rabbis=rabbis_dict)

if __name__ == '__main__':
    app.run(debug=True)