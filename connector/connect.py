from flask import Flask, render_template
import sqlite3
import os


template_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '../frontend'))
app = Flask(__name__, template_folder=template_dir)
@app.route('/')
def home():
# 2. Connect to your SQL database
# (Make sure 'database.db' matches your actual database file name/path)
    conn = sqlite3.connect('schema.sqlite')
    conn.row_factory = sqlite3.Row
    cursor = conn.cursor()
# 3. Run your SQL query to get all rabbi data
    cursor.execute("SELECT name, specialty, bio FROM rabbis")
    rows = cursor.fetchall()
    conn.close()
# 4. Turn the rows into a dictionary organized by name:
# e.g., {'Rabbi Smith': {'name': 'Rabbi Smith', 'specialty': '...', 'bio': '...'}}
    rabbis_dict = {row['name']: row for row in rows}
# 5. Send this dictionary straight to your HTML file
    return render_template('index.html', rabbis=rabbis_dict)
if __name__ == '__main__':
    app.run(debug=True)