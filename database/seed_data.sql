INSERT INTO RabbiInfo (Rabbi_id, Rabbi_Acronym, Rabbi_FullName, Rabbi_YearBorn, Rabbi_YearDied, Location)
VALUES(1, 'Rashi', 'Rav Shlomo Yitzchaki', 1040, 1105, 'France'),
(2, 'Ibn Ezra', 'Rav Avraham ben Meir Ibn Ezra', 1089, 1167, 'Spain'),
(3, 'Rambam', 'Rav Moshe ben Maimon', 1135, 1204, 'Spain and Egypt'),
(4, 'Ramban','Rav Moshe ben Nachman', 1194, 1270, 'Spain and Israel'),
(5, 'Shadal', 'Rav Shmuel Dovid Luzzato', 1800, 1865, 'Italy'),
(6, 'Radak', 'Rav Dovid Kimchi', 1160, 1235, 'Spain and France'),
(7, 'Abarbanel', 'Don Yitzchak Abarbanel', 1437, 1508, 'Portugal and Italy'),
(8, 'Malbim', 'Rav Meir Leibesh ben Yechiel Michel Wisser', 1809, 1879, 'Ukraine, Poland, and Romania'),
(9, 'Seforno', 'Rav Ovadia ben Yaakov Seforno', 1475, 1550, 'Italy'),
(10, 'Alshich', 'Rav Moshe Alshich', 1507, 1600, 'Turkey and Tzfat'),
(11, 'Chizkuni', 'Rav Chizkiya ben Manoach', 1250, 1310, 'France'),
(12, 'Netziv', 'Rav Naftali Tzvi Yehuda Berlin', 1816, 1893, 'Belarus and Poland'),
(13, 'Rashbam', 'Rav Shmuel ben Meir', 1085, 1158, 'France'),
(14, 'Ralbag', 'Rav Levi ben Gershon', 1288, 1344, 'France'), 
(15, 'Kli Yakar', 'Rav Shlomo Ephraim ben Aaron Luntschitz', 1550, 1619, 'Poland and Czech Republic');

INSERT INTO works (work_id, division) 
VALUES (1, 'Tanach and Talmud'),
(2, 'Torah');
INSERT INTO works (work_id, titles)
VALUES (3, 'Mishneh Torah and Moreh Nevuchim');
INSERT INTO works (work_id, division)
VALUES (4, 'Torah and Talmud'),
(5, 'Torah'),
(6, 'Tanach'),
(7, 'Tanach'),
(8, 'Tanach'),
(9, 'Tanach'),
(10, 'Torah and Tehillim'), 
(11, 'Torah'),
(12, 'Torah'), 
(13, 'Torah and Talmud'),
(14, 'Tanach'),
(15, 'Torah');

INSERT INTO RabbiWorks (Rabbi_id, work_id, sefaria_path)
VALUES (1, 1, 'https://www.sefaria.org/topics/rashi?tab=author-works-on-sefaria'),
(2, 2, 'https://www.sefaria.org/topics/ibn-ezra?tab=author-works-on-sefaria'),
(3, 3, 'https://www.sefaria.org/topics/rambam?tab=author-works-on-sefaria'),
(4, 4, 'https://www.sefaria.org/topics/ramban?tab=author-works-on-sefaria'),
(5, 5, 'https://www.sefaria.org/topics/shadal?tab=author-works-on-sefaria'),
(6, 6, 'https://www.sefaria.org/topics/radak?tab=author-works-on-sefaria'),
(7, 7, 'https://www.sefaria.org/topics/abarbanel?tab=author-works-on-sefaria'),
(8, 8, 'https://www.sefaria.org/topics/malbim?tab=author-works-on-sefaria'),
(9, 9, 'https://www.sefaria.org/topics/seforno?tab=author-works-on-sefaria'),
(10, 10, 'https://www.sefaria.org/topics/alshich?tab=author-works-on-sefaria'),
(11, 11, 'https://www.sefaria.org/topics/chizkuni?tab=author-works-on-sefaria'),
(12, 12, 'https://www.sefaria.org/topics/netziv?tab=author-works-on-sefaria'),
(13, 13, 'https://www.sefaria.org/topics/rashbam?tab=author-works-on-sefaria'),
(14, 14, 'https://www.sefaria.org/topics/ralbag?tab=author-works-on-sefaria'),
(15, 15, 'https://www.sefaria.org/topics/kli-yakar?tab=author-works-on-sefaria');