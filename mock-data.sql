-- Database creation and selection

-- This file contains extensive sample data for the academy database
-- It is intended for learning purposes and includes a large variety of data

-- =============================================
-- ACADEMY DATA
-- =============================================
INSERT INTO Academy (name, location, established_year) VALUES 
('Tech Academy', 'New York', 1990),
('Business School', 'Chicago', 1985),
('Arts Institute', 'Los Angeles', 2000),
('Medical University', 'Boston', 1950),
('Engineering College', 'San Francisco', 1975),
('Law School', 'Washington DC', 1960),
('Science Academy', 'Seattle', 1995),
('Language Institute', 'Miami', 2005),
('Culinary Arts School', 'New Orleans', 2010),
('Sports Academy', 'Denver', 2015);

-- =============================================
-- DEPARTMENT DATA
-- =============================================
INSERT INTO Department (name, academy_id, head_of_department) VALUES 
-- Tech Academy Departments (academy_id = 1)
('Computer Science', 1, 'Dr. John Smith'),
('Data Science', 1, 'Dr. Emily Johnson'),
('Cybersecurity', 1, 'Prof. Richard Lee'),
('Artificial Intelligence', 1, 'Dr. Sophia Chen'),
('Software Engineering', 1, 'Prof. David Miller'),

-- Business School Departments (academy_id = 2)
('Marketing', 2, 'Prof. Michael Brown'),
('Finance', 2, 'Prof. Sarah Davis'),
('Management', 2, 'Dr. Robert Wilson'),
('Accounting', 2, 'Prof. Jennifer Lopez'),
('Economics', 2, 'Dr. Thomas Anderson'),

-- Arts Institute Departments (academy_id = 3)
('Fine Arts', 3, 'Dr. Patricia White'),
('Music', 3, 'Prof. James Taylor'),
('Theater', 3, 'Dr. Elizabeth Green'),
('Film Production', 3, 'Prof. Christopher Nolan'),
('Photography', 3, 'Dr. Ansel Adams'),

-- Medical University Departments (academy_id = 4)
('Medicine', 4, 'Dr. Gregory House'),
('Nursing', 4, 'Dr. Florence Nightingale'),
('Pharmacy', 4, 'Prof. Marie Curie'),
('Public Health', 4, 'Dr. Anthony Fauci'),
('Dentistry', 4, 'Prof. Crentist Tooth'),

-- Engineering College Departments (academy_id = 5)
('Mechanical Engineering', 5, 'Prof. Nikola Tesla'),
('Electrical Engineering', 5, 'Dr. Thomas Edison'),
('Civil Engineering', 5, 'Prof. Isambard Kingdom'),
('Chemical Engineering', 5, 'Dr. Marie Skłodowska'),
('Aerospace Engineering', 5, 'Prof. Neil Armstrong');

-- =============================================
-- ROOM DATA
-- =============================================
INSERT INTO Room (name, building, floor, capacity, has_projector) VALUES 
-- Tech Building Rooms
('CS-101', 'Tech Building', 1, 30, TRUE),
('CS-102', 'Tech Building', 1, 25, TRUE),
('CS-201', 'Tech Building', 2, 40, TRUE),
('CS-202', 'Tech Building', 2, 35, TRUE),
('CS-301', 'Tech Building', 3, 20, FALSE),
('CS-302', 'Tech Building', 3, 15, TRUE),
('CS-LAB1', 'Tech Building', 1, 50, TRUE),
('CS-LAB2', 'Tech Building', 2, 50, TRUE),

-- Business Building Rooms
('BIZ-101', 'Business Building', 1, 45, TRUE),
('BIZ-102', 'Business Building', 1, 40, TRUE),
('BIZ-201', 'Business Building', 2, 40, TRUE),
('BIZ-202', 'Business Building', 2, 35, TRUE),
('BIZ-301', 'Business Building', 3, 30, TRUE),
('BIZ-302', 'Business Building', 3, 25, FALSE),
('BIZ-CONF', 'Business Building', 1, 20, TRUE),

-- Arts Building Rooms
('ART-101', 'Arts Building', 1, 25, FALSE),
('ART-102', 'Arts Building', 1, 20, FALSE),
('ART-201', 'Arts Building', 2, 30, TRUE),
('ART-202', 'Arts Building', 2, 25, TRUE),
('ART-301', 'Arts Building', 3, 20, FALSE),
('ART-STUDIO', 'Arts Building', 1, 40, FALSE),
('ART-THEATER', 'Arts Building', 2, 100, TRUE),

-- Medical Building Rooms
('MED-101', 'Medical Building', 1, 35, TRUE),
('MED-102', 'Medical Building', 1, 30, TRUE),
('MED-LAB1', 'Medical Building', 2, 25, TRUE),
('MED-LAB2', 'Medical Building', 2, 25, TRUE),
('MED-SURGERY', 'Medical Building', 3, 15, TRUE),

-- Engineering Building Rooms
('ENG-101', 'Engineering Building', 1, 40, TRUE),
('ENG-102', 'Engineering Building', 1, 35, TRUE),
('ENG-201', 'Engineering Building', 2, 30, TRUE),
('ENG-202', 'Engineering Building', 2, 25, TRUE),
('ENG-LAB1', 'Engineering Building', 1, 50, TRUE),
('ENG-LAB2', 'Engineering Building', 3, 50, TRUE);

-- =============================================
-- TEACHER DATA
-- =============================================
INSERT INTO Teacher (full_name, email, phone_number, hire_date, department_id, salary, is_active) VALUES 
-- Computer Science Department (department_id = 1)
('Alan Turing', 'alan.turing@tech.edu', '123-456-7890', '2010-01-15', 1, 85000.00, TRUE),
('Ada Lovelace', 'ada.lovelace@tech.edu', '123-456-7891', '2012-03-20', 1, 82000.00, TRUE),
('Tim Berners-Lee', 'tim.berners-lee@tech.edu', '123-456-7892', '2015-08-12', 1, 88000.00, TRUE),
('Linus Torvalds', 'linus.torvalds@tech.edu', '123-456-7893', '2018-05-10', 1, 90000.00, TRUE),
('Margaret Hamilton', 'margaret.hamilton@tech.edu', '123-456-7894', '2019-11-05', 1, 79000.00, TRUE),

-- Data Science Department (department_id = 2)
('Grace Hopper', 'grace.hopper@tech.edu', '123-456-7895', '2015-06-10', 2, 78000.00, TRUE),
('Andrew Ng', 'andrew.ng@tech.edu', '123-456-7896', '2017-09-15', 2, 92000.00, TRUE),
('Geoffrey Hinton', 'geoffrey.hinton@tech.edu', '123-456-7897', '2016-04-20', 2, 95000.00, TRUE),
('Fei-Fei Li', 'fei.fei.li@tech.edu', '123-456-7898', '2018-07-25', 2, 91000.00, TRUE),
('Yann LeCun', 'yann.lecun@tech.edu', '123-456-7899', '2019-02-15', 2, 93000.00, TRUE),

-- Cybersecurity Department (department_id = 3)
('Bruce Schneier', 'bruce.schneier@tech.edu', '123-456-7900', '2014-03-10', 3, 86000.00, TRUE),
('Dorothy Denning', 'dorothy.denning@tech.edu', '123-456-7901', '2016-08-15', 3, 84000.00, TRUE),
('Whitfield Diffie', 'whitfield.diffie@tech.edu', '123-456-7902', '2015-11-20', 3, 87000.00, TRUE),
('Martin Hellman', 'martin.hellman@tech.edu', '123-456-7903', '2017-05-25', 3, 85000.00, TRUE),
('Ross Anderson', 'ross.anderson@tech.edu', '123-456-7904', '2018-09-30', 3, 83000.00, TRUE),

-- Finance Department (department_id = 7)
('Warren Buffett', 'warren.buffett@business.edu', '123-456-7905', '2008-09-05', 7, 90000.00, TRUE),
('Janet Yellen', 'janet.yellen@business.edu', '123-456-7906', '2010-11-10', 7, 88000.00, TRUE),
('George Soros', 'george.soros@business.edu', '123-456-7907', '2012-02-15', 7, 92000.00, TRUE),
('Christine Lagarde', 'christine.lagarde@business.edu', '123-456-7908', '2014-06-20', 7, 94000.00, TRUE),
('Ray Dalio', 'ray.dalio@business.edu', '123-456-7909', '2016-10-25', 7, 96000.00, TRUE),

-- Fine Arts Department (department_id = 11)
('Pablo Picasso', 'pablo.picasso@arts.edu', '123-456-7910', '2018-11-30', 11, 75000.00, TRUE),
('Frida Kahlo', 'frida.kahlo@arts.edu', '123-456-7911', '2019-03-05', 11, 72000.00, TRUE),
('Vincent van Gogh', 'vincent.vangogh@arts.edu', '123-456-7912', '2017-07-10', 11, 71000.00, TRUE),
('Georgia O\'Keeffe', 'georgia.okeeffe@arts.edu', '123-456-7913', '2016-12-15', 11, 73000.00, TRUE),
('Salvador Dali', 'salvador.dali@arts.edu', '123-456-7914', '2015-04-20', 11, 74000.00, TRUE),

-- Medicine Department (department_id = 16)
('Jonas Salk', 'jonas.salk@medical.edu', '123-456-7915', '2010-05-25', 16, 110000.00, TRUE),
('Elizabeth Blackwell', 'elizabeth.blackwell@medical.edu', '123-456-7916', '2012-09-30', 16, 105000.00, TRUE),
('Hippocrates', 'hippocrates@medical.edu', '123-456-7917', '2014-01-05', 16, 115000.00, TRUE),
('Virginia Apgar', 'virginia.apgar@medical.edu', '123-456-7918', '2016-03-10', 16, 108000.00, TRUE),
('Alexander Fleming', 'alexander.fleming@medical.edu', '123-456-7919', '2018-07-15', 16, 112000.00, TRUE),

-- Mechanical Engineering Department (department_id = 21)
('Elon Musk', 'elon.musk@engineering.edu', '123-456-7920', '2015-08-20', 21, 100000.00, TRUE),
('Henry Ford', 'henry.ford@engineering.edu', '123-456-7921', '2013-12-25', 21, 95000.00, TRUE),
('Rudolf Diesel', 'rudolf.diesel@engineering.edu', '123-456-7922', '2011-04-30', 21, 93000.00, TRUE),
('Karl Benz', 'karl.benz@engineering.edu', '123-456-7923', '2009-10-05', 21, 91000.00, TRUE),
('Gottlieb Daimler', 'gottlieb.daimler@engineering.edu', '123-456-7924', '2007-02-10', 21, 89000.00, TRUE);

-- =============================================
-- COURSE DATA
-- =============================================
INSERT INTO Course (title, description, credit, department_id, is_active) VALUES 
-- Computer Science Courses (department_id = 1)
('Introduction to Programming', 'Basic programming concepts using Python', 4, 1, TRUE),
('Data Structures', 'Advanced data structures and algorithms', 4, 1, TRUE),
('Web Development', 'Building web applications using HTML, CSS, and JavaScript', 3, 1, TRUE),
('Database Systems', 'Relational database design and SQL', 3, 1, TRUE),
('Operating Systems', 'Principles of operating system design', 4, 1, TRUE),
('Computer Networks', 'Fundamentals of computer networking', 3, 1, TRUE),
('Software Engineering', 'Software development methodologies and practices', 4, 1, TRUE),
('Mobile App Development', 'Creating applications for iOS and Android', 3, 1, TRUE),

-- Data Science Courses (department_id = 2)
('Machine Learning', 'Introduction to machine learning concepts', 3, 2, TRUE),
('Big Data Analytics', 'Processing and analyzing large datasets', 4, 2, TRUE),
('Statistical Methods', 'Statistical analysis for data science', 3, 2, TRUE),
('Data Visualization', 'Techniques for visualizing complex data', 3, 2, TRUE),
('Natural Language Processing', 'Processing and analyzing text data', 4, 2, TRUE),
('Deep Learning', 'Neural networks and deep learning architectures', 4, 2, TRUE),

-- Cybersecurity Courses (department_id = 3)
('Network Security', 'Securing computer networks from attacks', 3, 3, TRUE),
('Ethical Hacking', 'Penetration testing and vulnerability assessment', 4, 3, TRUE),
('Cryptography', 'Encryption and secure communication', 3, 3, TRUE),
('Security Policies', 'Developing and implementing security policies', 2, 3, TRUE),
('Digital Forensics', 'Investigating cybersecurity incidents', 4, 3, TRUE),

-- Finance Courses (department_id = 7)
('Investment Strategies', 'Analysis of investment opportunities', 3, 7, TRUE),
('Corporate Finance', 'Financial management in corporations', 4, 7, TRUE),
('Financial Markets', 'Structure and operation of financial markets', 3, 7, TRUE),
('Risk Management', 'Identifying and managing financial risks', 3, 7, TRUE),
('International Finance', 'Global financial systems and international trade', 4, 7, TRUE),

-- Fine Arts Courses (department_id = 11)
('Drawing Fundamentals', 'Basic drawing techniques', 2, 11, TRUE),
('Painting Techniques', 'Introduction to various painting styles', 3, 11, TRUE),
('Sculpture', 'Three-dimensional art creation', 3, 11, TRUE),
('Art History', 'Survey of major art movements', 4, 11, TRUE),
('Digital Art', 'Creating art using digital tools', 3, 11, TRUE),

-- Medicine Courses (department_id = 16)
('Anatomy', 'Study of human body structure', 5, 16, TRUE),
('Physiology', 'Function of human body systems', 5, 16, TRUE),
('Pathology', 'Study of diseases', 4, 16, TRUE),
('Pharmacology', 'Study of drugs and their effects', 4, 16, TRUE),
('Clinical Skills', 'Practical medical procedures', 6, 16, TRUE),

-- Mechanical Engineering Courses (department_id = 21)
('Thermodynamics', 'Energy and heat transfer principles', 4, 21, TRUE),
('Fluid Mechanics', 'Behavior of fluids at rest and in motion', 4, 21, TRUE),
('Machine Design', 'Designing mechanical components and systems', 3, 21, TRUE),
('Materials Science', 'Properties and applications of engineering materials', 3, 21, TRUE),
('Robotics', 'Design and control of robotic systems', 4, 21, TRUE);

-- =============================================
-- STUDENT DATA
-- =============================================
INSERT INTO Student (full_name, email, age, enrollment_date, graduation_date, academy_id, is_active) VALUES 
-- Tech Academy Students (academy_id = 1)
('John Doe', 'john.doe@student.edu', 20, '2022-09-01', NULL, 1, TRUE),
('Jane Smith', 'jane.smith@student.edu', 21, '2021-09-01', NULL, 1, TRUE),
('Michael Johnson', 'michael.johnson@student.edu', 22, '2020-09-01', '2024-05-15', 1, TRUE),
('Emily Davis', 'emily.davis@student.edu', 19, '2023-01-15', NULL, 1, TRUE),
('David Wilson', 'david.wilson@student.edu', 23, '2020-01-15', '2023-12-20', 1, FALSE),
('Sarah Brown', 'sarah.brown@student.edu', 20, '2022-09-01', NULL, 1, TRUE),
('James Taylor', 'james.taylor@student.edu', 21, '2021-09-01', NULL, 1, TRUE),
('Jennifer Miller', 'jennifer.miller@student.edu', 22, '2020-09-01', '2024-05-15', 1, TRUE),
('Robert Anderson', 'robert.anderson@student.edu', 19, '2023-01-15', NULL, 1, TRUE),
('Jessica Thomas', 'jessica.thomas@student.edu', 23, '2020-01-15', '2023-12-20', 1, FALSE),
('Daniel Jackson', 'daniel.jackson@student.edu', 20, '2022-09-01', NULL, 1, TRUE),
('Lisa White', 'lisa.white@student.edu', 21, '2021-09-01', NULL, 1, TRUE),
('Christopher Harris', 'christopher.harris@student.edu', 22, '2020-09-01', '2024-05-15', 1, TRUE),
('Amanda Martin', 'amanda.martin@student.edu', 19, '2023-01-15', NULL, 1, TRUE),
('Matthew Thompson', 'matthew.thompson@student.edu', 23, '2020-01-15', '2023-12-20', 1, FALSE),

-- Business School Students (academy_id = 2)
('Bob Johnson', 'bob.johnson@student.edu', 22, '2022-09-01', NULL, 2, TRUE),
('Alice Brown', 'alice.brown@student.edu', 20, '2023-01-15', NULL, 2, TRUE),
('William Garcia', 'william.garcia@student.edu', 21, '2021-09-01', NULL, 2, TRUE),
('Olivia Martinez', 'olivia.martinez@student.edu', 23, '2020-09-01', '2024-05-15', 2, TRUE),
('Henry Rodriguez', 'henry.rodriguez@student.edu', 19, '2023-01-15', NULL, 2, TRUE),
('Sophia Lee', 'sophia.lee@student.edu', 24, '2019-09-01', '2023-05-20', 2, FALSE),
('Joseph Hernandez', 'joseph.hernandez@student.edu', 22, '2022-09-01', NULL, 2, TRUE),
('Mia Gonzalez', 'mia.gonzalez@student.edu', 20, '2023-01-15', NULL, 2, TRUE),
('Alexander Perez', 'alexander.perez@student.edu', 21, '2021-09-01', NULL, 2, TRUE),
('Abigail Sanchez', 'abigail.sanchez@student.edu', 23, '2020-09-01', '2024-05-15', 2, TRUE),
('Benjamin Ramirez', 'benjamin.ramirez@student.edu', 19, '2023-01-15', NULL, 2, TRUE),
('Elizabeth Torres', 'elizabeth.torres@student.edu', 24, '2019-09-01', '2023-05-20', 2, FALSE),
('Ethan Flores', 'ethan.flores@student.edu', 22, '2022-09-01', NULL, 2, TRUE),
('Charlotte Collins', 'charlotte.collins@student.edu', 20, '2023-01-15', NULL, 2, TRUE),
('Samuel Stewart', 'samuel.stewart@student.edu', 21, '2021-09-01', NULL, 2, TRUE),

-- Arts Institute Students (academy_id = 3)
('Charlie Davis', 'charlie.davis@student.edu', 19, '2023-01-15', NULL, 3, TRUE),
('Emma Wilson', 'emma.wilson@student.edu', 21, '2022-09-01', NULL, 3, TRUE),
('Noah Moore', 'noah.moore@student.edu', 20, '2022-09-01', NULL, 3, TRUE),
('Ava Taylor', 'ava.taylor@student.edu', 22, '2021-09-01', NULL, 3, TRUE),
('Liam Anderson', 'liam.anderson@student.edu', 23, '2020-09-01', '2024-05-15', 3, TRUE),
('Isabella Thomas', 'isabella.thomas@student.edu', 19, '2023-01-15', NULL, 3, TRUE),
('Mason Jackson', 'mason.jackson@student.edu', 24, '2019-09-01', '2023-05-20', 3, FALSE),
('Sophia White', 'sophia.white@student.edu', 19, '2023-01-15', NULL, 3, TRUE),
('Jacob Harris', 'jacob.harris@student.edu', 21, '2022-09-01', NULL, 3, TRUE),
('Olivia Martin', 'olivia.martin@student.edu', 20, '2022-09-01', NULL, 3, TRUE),
('Lucas Thompson', 'lucas.thompson@student.edu', 22, '2021-09-01', NULL, 3, TRUE),
('Amelia Garcia', 'amelia.garcia@student.edu', 23, '2020-09-01', '2024-05-15', 3, TRUE),
('Aiden Martinez', 'aiden.martinez@student.edu', 19, '2023-01-15', NULL, 3, TRUE),
('Mia Rodriguez', 'mia.rodriguez@student.edu', 24, '2019-09-01', '2023-05-20', 3, FALSE),
('Ethan Lee', 'ethan.lee@student.edu', 19, '2023-01-15', NULL, 3, TRUE),

-- Medical University Students (academy_id = 4)
('Olivia Johnson', 'olivia.johnson@student.edu', 22, '2021-09-01', NULL, 4, TRUE),
('William Smith', 'william.smith@student.edu', 23, '2020-09-01', NULL, 4, TRUE),
('Emma Brown', 'emma.brown@student.edu', 24, '2019-09-01', '2023-05-20', 4, FALSE),
('James Davis', 'james.davis@student.edu', 21, '2022-09-01', NULL, 4, TRUE),
('Sophia Wilson', 'sophia.wilson@student.edu', 22, '2021-09-01', NULL, 4, TRUE),
('Benjamin Taylor', 'benjamin.taylor@student.edu', 23, '2020-09-01', NULL, 4, TRUE),
('Isabella Anderson', 'isabella.anderson@student.edu', 24, '2019-09-01', '2023-05-20', 4, FALSE),
('Lucas Thomas', 'lucas.thomas@student.edu', 21, '2022-09-01', NULL, 4, TRUE),
('Mia Jackson', 'mia.jackson@student.edu', 22, '2021-09-01', NULL, 4, TRUE),
('Henry White', 'henry.white@student.edu', 23, '2020-09-01', NULL, 4, TRUE),
('Charlotte Harris', 'charlotte.harris@student.edu', 24, '2019-09-01', '2023-05-20', 4, FALSE),
('Alexander Martin', 'alexander.martin@student.edu', 21, '2022-09-01', NULL, 4, TRUE),
('Amelia Thompson', 'amelia.thompson@student.edu', 22, '2021-09-01', NULL, 4, TRUE),
('Daniel Garcia', 'daniel.garcia@student.edu', 23, '2020-09-01', NULL, 4, TRUE),
('Elizabeth Martinez', 'elizabeth.martinez@student.edu', 24, '2019-09-01', '2023-05-20', 4, FALSE),

-- Engineering College Students (academy_id = 5)
('Noah Johnson', 'noah.johnson@student.edu', 20, '2022-09-01', NULL, 5, TRUE),
('Ava Smith', 'ava.smith@student.edu', 21, '2021-09-01', NULL, 5, TRUE),
('Liam Brown', 'liam.brown@student.edu', 22, '2020-09-01', '2024-05-15', 5, TRUE),
('Isabella Davis', 'isabella.davis@student.edu', 19, '2023-01-15', NULL, 5, TRUE),
('Mason Wilson', 'mason.wilson@student.edu', 23, '2020-01-15', '2023-12-20', 5, FALSE),
('Sophia Taylor', 'sophia.taylor@student.edu', 20, '2022-09-01', NULL, 5, TRUE),
('Jacob Anderson', 'jacob.anderson@student.edu', 21, '2021-09-01', NULL, 5, TRUE),
('Olivia Thomas', 'olivia.thomas@student.edu', 22, '2020-09-01', '2024-05-15', 5, TRUE),
('Lucas Jackson', 'lucas.jackson@student.edu', 19, '2023-01-15', NULL, 5, TRUE),
('Amelia White', 'amelia.white@student.edu', 23, '2020-01-15', '2023-12-20', 5, FALSE),
('Aiden Harris', 'aiden.harris@student.edu', 20, '2022-09-01', NULL, 5, TRUE),
('Mia Martin', 'mia.martin@student.edu', 21, '2021-09-01', NULL, 5, TRUE),
('Ethan Thompson', 'ethan.thompson@student.edu', 22, '2020-09-01', '2024-05-15', 5, TRUE),
('Charlotte Garcia', 'charlotte.garcia@student.edu', 19, '2023-01-15', NULL, 5, TRUE),
('Alexander Martinez', 'alexander.martinez@student.edu', 23, '2020-01-15', '2023-12-20', 5, FALSE);

-- =============================================
-- SCHOLARSHIP DATA
-- =============================================
INSERT INTO Scholarship (name, amount, description, student_id, start_date, end_date, is_active) VALUES
-- Tech Academy Scholarships
('Tech Excellence Scholarship', 5000.00, 'Awarded to top computer science students', 1, '2023-09-01', '2024-06-30', TRUE),
('Women in Tech Scholarship', 4500.00, 'Supporting women in technology fields', 2, '2023-09-01', '2024-06-30', TRUE),
('Programming Merit Award', 3000.00, 'For outstanding programming skills', 3, '2022-09-01', '2023-06-30', FALSE),
('Innovation Grant', 6000.00, 'For students with innovative project ideas', 5, '2022-09-01', '2023-06-30', FALSE),
('Data Science Fellowship', 5500.00, 'For excellence in data science', 7, '2023-09-01', '2024-06-30', TRUE),
('Software Development Award', 4000.00, 'For achievements in software development', 9, '2023-09-01', '2024-06-30', TRUE),
('Cybersecurity Scholarship', 4800.00, 'For students specializing in cybersecurity', 11, '2023-09-01', '2024-06-30', TRUE),
('AI Research Grant', 5200.00, 'Supporting research in artificial intelligence', 13, '2022-09-01', '2023-06-30', FALSE),

-- Business School Scholarships
('Business Leadership Award', 4500.00, 'For demonstrated leadership in business', 16, '2023-09-01', '2024-06-30', TRUE),
('Entrepreneurship Scholarship', 5000.00, 'For students with entrepreneurial ventures', 17, '2023-09-01', '2024-06-30', TRUE),
('Finance Excellence Award', 4200.00, 'For top performers in finance courses', 19, '2023-09-01', '2024-06-30', TRUE),
('Marketing Innovation Grant', 3800.00, 'For creative marketing strategies', 21, '2022-09-01', '2023-06-30', FALSE),
('Global Business Scholarship', 5500.00, 'For students focusing on international business', 23, '2023-09-01', '2024-06-30', TRUE),
('Accounting Merit Award', 4000.00, 'For excellence in accounting studies', 25, '2023-09-01', '2024-06-30', TRUE),

-- Arts Institute Scholarships
('Creative Arts Scholarship', 3500.00, 'For exceptional creativity in arts', 31, '2023-09-01', '2024-06-30', TRUE),
('Performance Arts Grant', 3800.00, 'For outstanding performance in theater or music', 33, '2023-09-01', '2024-06-30', TRUE),
('Visual Arts Award', 3200.00, 'For excellence in painting, sculpture, or photography', 35, '2022-09-01', '2023-06-30', FALSE),
('Film Production Scholarship', 4200.00, 'For promising filmmakers', 37, '2023-09-01', '2024-06-30', TRUE),
('Music Composition Grant', 3600.00, 'For talented music composers', 39, '2022-09-01', '2023-06-30', FALSE),
('Digital Media Scholarship', 3900.00, 'For innovation in digital media', 41, '2023-09-01', '2024-06-30', TRUE),

-- Medical University Scholarships
('Future Physician Scholarship', 6000.00, 'For outstanding medical students', 46, '2023-09-01', '2024-06-30', TRUE),
('Nursing Excellence Award', 5500.00, 'For top nursing students', 48, '2023-09-01', '2024-06-30', TRUE),
('Medical Research Grant', 6500.00, 'Supporting medical research projects', 50, '2022-09-01', '2023-06-30', FALSE),
('Public Health Scholarship', 5000.00, 'For students dedicated to public health', 52, '2023-09-01', '2024-06-30', TRUE),
('Pharmacy Studies Award', 5800.00, 'For excellence in pharmaceutical studies', 54, '2022-09-01', '2023-06-30', FALSE),

-- Engineering College Scholarships
('Engineering Excellence Scholarship', 5500.00, 'For top engineering students', 61, '2023-09-01', '2024-06-30', TRUE),
('Innovation in Engineering Award', 6000.00, 'For innovative engineering projects', 63, '2022-09-01', '2023-06-30', FALSE),
('Women in Engineering Scholarship', 5800.00, 'Supporting women in engineering fields', 65, '2023-09-01', '2024-06-30', TRUE),
('Sustainable Engineering Grant', 5200.00, 'For projects focused on sustainability', 67, '2023-09-01', '2024-06-30', TRUE),
('Robotics Research Scholarship', 6200.00, 'For students excelling in robotics', 69, '2022-09-01', '2023-06-30', FALSE);

-- =============================================
-- EXAM DATA
-- =============================================
INSERT INTO Exam (title, description, course_id, teacher_id, exam_date, duration_minutes, max_score, exam_type, is_active) VALUES
-- Introduction to Programming (course_id = 1) exams by Alan Turing (teacher_id = 1)
('Programming Basics Quiz', 'Quiz covering variables, data types, and basic syntax', 1, 1, '2023-09-15', 30, 20, 'Quiz', TRUE),
('Control Structures Midterm', 'Exam on conditional statements and loops', 1, 1, '2023-10-20', 90, 100, 'Midterm', TRUE),
('Functions and OOP Assignment', 'Programming assignment on functions and object-oriented concepts', 1, 1, '2023-11-10', 120, 50, 'Assignment', TRUE),
('Final Programming Exam', 'Comprehensive exam covering all course topics', 1, 1, '2023-12-15', 180, 150, 'Final', TRUE),

-- Data Structures (course_id = 2) exams by Ada Lovelace (teacher_id = 2)
('Arrays and Lists Quiz', 'Quiz on array operations and linked list concepts', 2, 2, '2023-09-20', 30, 20, 'Quiz', TRUE),
('Trees and Graphs Midterm', 'Exam on tree and graph data structures', 2, 2, '2023-10-25', 90, 100, 'Midterm', TRUE),
('Sorting Algorithms Project', 'Implementation of various sorting algorithms', 2, 2, '2023-11-15', 240, 80, 'Project', TRUE),
('Data Structures Final Exam', 'Comprehensive exam on all data structures', 2, 2, '2023-12-20', 180, 150, 'Final', TRUE),

-- Machine Learning (course_id = 9) exams by Grace Hopper (teacher_id = 6)
('Supervised Learning Quiz', 'Quiz on classification and regression techniques', 9, 6, '2023-09-18', 30, 20, 'Quiz', TRUE),
('Neural Networks Midterm', 'Exam on neural network architectures and training', 9, 6, '2023-10-23', 90, 100, 'Midterm', TRUE),
('ML Model Implementation Project', 'Building and evaluating a machine learning model', 9, 6, '2023-11-20', 300, 100, 'Project', TRUE),
('Machine Learning Final', 'Comprehensive exam on all ML concepts', 9, 6, '2023-12-18', 180, 150, 'Final', TRUE),

-- Investment Strategies (course_id = 20) exams by Warren Buffett (teacher_id = 16)
('Market Analysis Quiz', 'Quiz on stock market fundamentals', 20, 16, '2023-09-22', 30, 20, 'Quiz', TRUE),
('Portfolio Management Midterm', 'Exam on portfolio construction and management', 20, 16, '2023-10-27', 90, 100, 'Midterm', TRUE),
('Investment Strategy Assignment', 'Developing a comprehensive investment strategy', 20, 16, '2023-11-17', 180, 70, 'Assignment', TRUE),
('Investment Final Exam', 'Comprehensive exam on all investment concepts', 20, 16, '2023-12-22', 180, 150, 'Final', TRUE),

-- Drawing Fundamentals (course_id = 25) exams by Pablo Picasso (teacher_id = 21)
('Perspective Drawing Quiz', 'Quiz on perspective techniques', 25, 21, '2023-09-19', 30, 20, 'Quiz', TRUE),
('Figure Drawing Midterm', 'Exam on human figure representation', 25, 21, '2023-10-24', 120, 100, 'Midterm', TRUE),
('Composition Project', 'Creating a complete artwork with proper composition', 25, 21, '2023-11-14', 240, 100, 'Project', TRUE),
('Drawing Final Exam', 'Comprehensive practical exam on drawing techniques', 25, 21, '2023-12-19', 240, 150, 'Final', TRUE);

-- =============================================
-- EXAM RESULTS
-- =============================================
INSERT INTO ExamResult (exam_id, student_id, score, submission_date, feedback, is_passed) VALUES
-- John Doe (student_id = 1) results for Introduction to Programming exams
(1, 1, 18.5, '2023-09-15 10:25:00', 'Excellent understanding of basic concepts', TRUE),
(2, 1, 85.0, '2023-10-20 11:30:00', 'Good grasp of control structures, work on efficiency', TRUE),
(3, 1, 42.5, '2023-11-10 14:15:00', 'Well-structured code, needs better documentation', TRUE),

-- Jane Smith (student_id = 2) results for Introduction to Programming exams
(1, 2, 19.0, '2023-09-15 10:20:00', 'Outstanding knowledge of programming basics', TRUE),
(2, 2, 92.5, '2023-10-20 11:25:00', 'Excellent work on control structures', TRUE),

-- Jane Smith (student_id = 2) results for Machine Learning exams
(9, 2, 17.5, '2023-09-18 12:25:00', 'Good understanding of supervised learning concepts', TRUE),
(10, 2, 88.0, '2023-10-23 12:30:00', 'Strong grasp of neural networks', TRUE),

-- Michael Johnson (student_id = 3) results for Machine Learning exams
(9, 3, 16.0, '2023-09-18 12:20:00', 'Solid understanding, review classification methods', TRUE),
(10, 3, 78.5, '2023-10-23 12:25:00', 'Good work, needs improvement on backpropagation concepts', TRUE),
(11, 3, 85.0, '2023-11-20 15:00:00', 'Well-implemented model with good evaluation metrics', TRUE),

-- Bob Johnson (student_id = 16) results for Investment Strategies exams
(13, 16, 15.5, '2023-09-22 16:25:00', 'Good understanding of market fundamentals', TRUE),
(14, 16, 82.0, '2023-10-27 16:30:00', 'Solid portfolio management strategies', TRUE),

-- Alice Brown (student_id = 17) results for Investment Strategies exams
(13, 17, 18.0, '2023-09-22 16:20:00', 'Excellent market analysis skills', TRUE),
(14, 17, 87.5, '2023-10-27 16:25:00', 'Very good understanding of portfolio theory', TRUE),
(15, 17, 65.0, '2023-11-17 15:45:00', 'Good strategy, needs more risk assessment', TRUE),

-- Charlie Davis (student_id = 31) results for Drawing Fundamentals exams
(17, 31, 19.5, '2023-09-19 11:25:00', 'Exceptional perspective techniques', TRUE),
(18, 31, 95.0, '2023-10-24 12:30:00', 'Outstanding figure drawing skills', TRUE),
(19, 31, 92.0, '2023-11-14 13:00:00', 'Excellent composition with great use of space', TRUE);

-- =============================================
-- TEACHER-COURSE RELATIONSHIPS
-- =============================================
INSERT INTO TeacherCourse (teacher_id, course_id, semester, academic_year) VALUES 
-- Alan Turing (teacher_id = 1) teaching Computer Science courses
(1, 1, 'Fall', '2023-2024'),  -- Introduction to Programming
(1, 2, 'Spring', '2023-2024'), -- Data Structures
(1, 5, 'Fall', '2023-2024'),  -- Operating Systems

-- Ada Lovelace (teacher_id = 2) teaching Computer Science courses
(2, 2, 'Fall', '2023-2024'),  -- Data Structures
(2, 4, 'Spring', '2023-2024'), -- Database Systems
(2, 7, 'Fall', '2023-2024'),  -- Software Engineering

-- Tim Berners-Lee (teacher_id = 3) teaching Computer Science courses
(3, 3, 'Fall', '2023-2024'),  -- Web Development
(3, 6, 'Spring', '2023-2024'), -- Computer Networks
(3, 8, 'Fall', '2023-2024'),  -- Mobile App Development

-- Grace Hopper (teacher_id = 6) teaching Data Science courses
(6, 9, 'Fall', '2023-2024'),  -- Machine Learning
(6, 11, 'Spring', '2023-2024'), -- Statistical Methods

-- Andrew Ng (teacher_id = 7) teaching Data Science courses
(7, 9, 'Spring', '2023-2024'), -- Machine Learning
(7, 10, 'Fall', '2023-2024'), -- Big Data Analytics
(7, 14, 'Spring', '2023-2024'), -- Deep Learning

-- Bruce Schneier (teacher_id = 11) teaching Cybersecurity courses
(11, 15, 'Fall', '2023-2024'), -- Network Security
(11, 17, 'Spring', '2023-2024'), -- Cryptography

-- Warren Buffett (teacher_id = 16) teaching Finance courses
(16, 20, 'Spring', '2023-2024'), -- Investment Strategies
(16, 21, 'Fall', '2023-2024'), -- Corporate Finance
(16, 23, 'Spring', '2023-2024'), -- Risk Management

-- Pablo Picasso (teacher_id = 21) teaching Fine Arts courses
(21, 25, 'Fall', '2023-2024'), -- Drawing Fundamentals
(21, 26, 'Spring', '2023-2024'), -- Painting Techniques

-- Jonas Salk (teacher_id = 26) teaching Medicine courses
(26, 30, 'Fall', '2023-2024'), -- Anatomy
(26, 31, 'Spring', '2023-2024'), -- Physiology

-- Elon Musk (teacher_id = 31) teaching Mechanical Engineering courses
(31, 35, 'Fall', '2023-2024'), -- Thermodynamics
(31, 39, 'Spring', '2023-2024'); -- Robotics

-- =============================================
-- STUDENT ENROLLMENT
-- =============================================
INSERT INTO Enrollment (student_id, course_id, enroll_date, grade, status) VALUES 
-- John Doe (student_id = 1) enrollments
(1, 1, '2023-08-25', 85.50, 'Active'),  -- Introduction to Programming
(1, 2, '2023-08-25', NULL, 'Active'),   -- Data Structures
(1, 3, '2023-08-25', NULL, 'Active'),   -- Web Development
(1, 5, '2023-08-25', NULL, 'Active'),   -- Operating Systems

-- Jane Smith (student_id = 2) enrollments
(2, 1, '2023-08-26', 92.75, 'Active'),  -- Introduction to Programming
(2, 9, '2023-08-26', 88.00, 'Active'),  -- Machine Learning
(2, 4, '2023-08-26', NULL, 'Active'),   -- Database Systems

-- Michael Johnson (student_id = 3) enrollments
(3, 2, '2022-08-27', 78.50, 'Completed'), -- Data Structures
(3, 5, '2022-08-27', 81.25, 'Completed'), -- Operating Systems
(3, 7, '2022-08-27', 85.00, 'Completed'), -- Software Engineering
(3, 9, '2023-01-15', 90.50, 'Active'),    -- Machine Learning

-- Bob Johnson (student_id = 16) enrollments
(16, 20, '2023-08-27', NULL, 'Active'),  -- Investment Strategies
(16, 21, '2023-08-27', NULL, 'Active'),  -- Corporate Finance
(16, 22, '2023-08-27', NULL, 'Active'),  -- Financial Markets

-- Alice Brown (student_id = 17) enrollments
(17, 20, '2023-08-28', 87.25, 'Active'), -- Investment Strategies
(17, 23, '2023-08-28', NULL, 'Active'),  -- Risk Management

-- Charlie Davis (student_id = 31) enrollments
(31, 25, '2023-08-29', 95.00, 'Active'), -- Drawing Fundamentals
(31, 26, '2023-08-29', NULL, 'Active'),  -- Painting Techniques
(31, 28, '2023-08-29', NULL, 'Active'),  -- Art History

-- Olivia Johnson (student_id = 46) enrollments
(46, 30, '2022-08-30', 88.75, 'Completed'), -- Anatomy
(46, 31, '2022-08-30', 92.50, 'Completed'), -- Physiology
(46, 32, '2023-01-15', NULL, 'Active'),     -- Pathology
(46, 33, '2023-01-15', NULL, 'Active'),     -- Pharmacology

-- Noah Johnson (student_id = 61) enrollments
(61, 35, '2023-08-31', NULL, 'Active'),  -- Thermodynamics
(61, 36, '2023-08-31', NULL, 'Active'),  -- Fluid Mechanics
(61, 39, '2023-08-31', NULL, 'Active');  -- Robotics

-- =============================================
-- LECTURE SCHEDULE
-- =============================================
INSERT INTO Lecture (topic, course_id, teacher_id, schedule_time, end_time, room_id) VALUES 
-- Introduction to Programming (course_id = 1) lectures by Alan Turing (teacher_id = 1)
('Variables and Data Types', 1, 1, '2023-09-05 09:00:00', '2023-09-05 10:30:00', 1),
('Control Structures', 1, 1, '2023-09-07 09:00:00', '2023-09-07 10:30:00', 1),
('Functions and Modules', 1, 1, '2023-09-12 09:00:00', '2023-09-12 10:30:00', 1),
('Object-Oriented Programming', 1, 1, '2023-09-14 09:00:00', '2023-09-14 10:30:00', 1),
('File I/O and Exception Handling', 1, 1, '2023-09-19 09:00:00', '2023-09-19 10:30:00', 1),

-- Data Structures (course_id = 2) lectures by Ada Lovelace (teacher_id = 2)
('Arrays and Linked Lists', 2, 2, '2023-09-06 13:00:00', '2023-09-06 14:30:00', 2),
('Stacks and Queues', 2, 2, '2023-09-08 13:00:00', '2023-09-08 14:30:00', 2),
('Trees and Graphs', 2, 2, '2023-09-13 13:00:00', '2023-09-13 14:30:00', 2),
('Sorting Algorithms', 2, 2, '2023-09-15 13:00:00', '2023-09-15 14:30:00', 2),
('Searching Algorithms', 2, 2, '2023-09-20 13:00:00', '2023-09-20 14:30:00', 2),

-- Machine Learning (course_id = 9) lectures by Grace Hopper (teacher_id = 6)
('Supervised Learning', 9, 6, '2023-09-05 11:00:00', '2023-09-05 12:30:00', 3),
('Unsupervised Learning', 9, 6, '2023-09-07 11:00:00', '2023-09-07 12:30:00', 3),
('Neural Networks', 9, 6, '2023-09-12 11:00:00', '2023-09-12 12:30:00', 3),
('Decision Trees', 9, 6, '2023-09-14 11:00:00', '2023-09-14 12:30:00', 3),
('Support Vector Machines', 9, 6, '2023-09-19 11:00:00', '2023-09-19 12:30:00', 3),

-- Investment Strategies (course_id = 20) lectures by Warren Buffett (teacher_id = 16)
('Stock Market Analysis', 20, 16, '2023-09-07 15:00:00', '2023-09-07 16:30:00', 10),
('Portfolio Management', 20, 16, '2023-09-09 15:00:00', '2023-09-09 16:30:00', 10),
('Value Investing', 20, 16, '2023-09-14 15:00:00', '2023-09-14 16:30:00', 10),
('Growth Investing', 20, 16, '2023-09-16 15:00:00', '2023-09-16 16:30:00', 10),
('Asset Allocation', 20, 16, '2023-09-21 15:00:00', '2023-09-21 16:30:00', 10),

-- Drawing Fundamentals (course_id = 25) lectures by Pablo Picasso (teacher_id = 21)
('Perspective Drawing', 25, 21, '2023-09-06 10:00:00', '2023-09-06 12:00:00', 16),
('Light and Shadow', 25, 21, '2023-09-08 10:00:00', '2023-09-08 12:00:00', 16),
('Figure Drawing', 25, 21, '2023-09-13 10:00:00', '2023-09-13 12:00:00', 16),
('Composition', 25, 21, '2023-09-15 10:00:00', '2023-09-15 12:00:00', 16),
('Color Theory', 25, 21, '2023-09-20 10:00:00', '2023-09-20 12:00:00', 16),

-- Anatomy (course_id = 30) lectures by Jonas Salk (teacher_id = 26)
('Skeletal System', 30, 26, '2023-09-05 14:00:00', '2023-09-05 16:00:00', 24),
('Muscular System', 30, 26, '2023-09-07 14:00:00', '2023-09-07 16:00:00', 24),
('Cardiovascular System', 30, 26, '2023-09-12 14:00:00', '2023-09-12 16:00:00', 24),
('Respiratory System', 30, 26, '2023-09-14 14:00:00', '2023-09-14 16:00:00', 24),
('Nervous System', 30, 26, '2023-09-19 14:00:00', '2023-09-19 16:00:00', 24),

-- Thermodynamics (course_id = 35) lectures by Elon Musk (teacher_id = 31)
('Laws of Thermodynamics', 35, 31, '2023-09-06 09:00:00', '2023-09-06 11:00:00', 29),
('Heat Transfer', 35, 31, '2023-09-08 09:00:00', '2023-09-08 11:00:00', 29),
('Entropy', 35, 31, '2023-09-13 09:00:00', '2023-09-13 11:00:00', 29),
('Thermodynamic Cycles', 35, 31, '2023-09-15 09:00:00', '2023-09-15 11:00:00', 29),
('Energy Conversion', 35, 31, '2023-09-20 09:00:00', '2023-09-20 11:00:00', 29);

-- =============================================
-- LECTURE ATTENDANCE
-- =============================================
INSERT INTO LectureAttendance (lecture_id, student_id, status, check_in_time, notes) VALUES 
-- John Doe (student_id = 1) attendance for Introduction to Programming lectures
(1, 1, 'Present', '2023-09-05 08:55:00', NULL),
(2, 1, 'Late', '2023-09-07 09:10:00', 'Student arrived 10 minutes late'),
(3, 1, 'Present', '2023-09-12 08:50:00', NULL),
(4, 1, 'Present', '2023-09-14 08:55:00', NULL),
(5, 1, 'Absent', NULL, 'Student notified illness'),

-- Jane Smith (student_id = 2) attendance for Introduction to Programming lectures
(1, 2, 'Present', '2023-09-05 08:58:00', NULL),
(2, 2, 'Present', '2023-09-07 08:50:00', NULL),
(3, 2, 'Present', '2023-09-12 08:55:00', NULL),
(4, 2, 'Late', '2023-09-14 09:15:00', 'Traffic delay'),
(5, 2, 'Present', '2023-09-19 08:52:00', NULL),

-- Jane Smith (student_id = 2) attendance for Machine Learning lectures
(11, 2, 'Present', '2023-09-05 10:55:00', NULL),
(12, 2, 'Present', '2023-09-07 10:50:00', NULL),
(13, 2, 'Absent', NULL, 'Medical appointment'),
(14, 2, 'Present', '2023-09-14 10:55:00', NULL),
(15, 2, 'Present', '2023-09-19 10:52:00', NULL),

-- Michael Johnson (student_id = 3) attendance for Machine Learning lectures
(11, 3, 'Present', '2023-09-05 10:50:00', NULL),
(12, 3, 'Late', '2023-09-07 11:10:00', 'Bus delay'),
(13, 3, 'Present', '2023-09-12 10:55:00', NULL),
(14, 3, 'Present', '2023-09-14 10:50:00', NULL),
(15, 3, 'Excused', NULL, 'Approved absence for conference'),

-- Bob Johnson (student_id = 16) attendance for Investment Strategies lectures
(16, 16, 'Present', '2023-09-07 14:55:00', NULL),
(17, 16, 'Present', '2023-09-09 14:50:00', NULL),
(18, 16, 'Present', '2023-09-14 14:55:00', NULL),
(19, 16, 'Absent', NULL, 'No notification'),
(20, 16, 'Present', '2023-09-21 14:52:00', NULL),

-- Alice Brown (student_id = 17) attendance for Investment Strategies lectures
(16, 17, 'Present', '2023-09-07 14:50:00', NULL),
(17, 17, 'Late', '2023-09-09 15:05:00', 'Parking issues'),
(18, 17, 'Present', '2023-09-14 14:55:00', NULL),
(19, 17, 'Present', '2023-09-16 14:50:00', NULL),
(20, 17, 'Present', '2023-09-21 14:55:00', NULL),

-- Charlie Davis (student_id = 31) attendance for Drawing Fundamentals lectures
(21, 31, 'Present', '2023-09-06 09:50:00', NULL),
(22, 31, 'Present', '2023-09-08 09:55:00', NULL),
(23, 31, 'Late', '2023-09-13 10:10:00', 'Lost supplies'),
(24, 31, 'Present', '2023-09-15 09:50:00', NULL),
(25, 31, 'Present', '2023-09-20 09:55:00', NULL),

-- Olivia Johnson (student_id = 46) attendance for Anatomy lectures
(26, 46, 'Present', '2023-09-05 13:55:00', NULL),
(27, 46, 'Present', '2023-09-07 13:50:00', NULL),
(28, 46, 'Present', '2023-09-12 13:55:00', NULL),
(29, 46, 'Present', '2023-09-14 13:50:00', NULL),
(30, 46, 'Present', '2023-09-19 13:55:00', NULL),

-- Noah Johnson (student_id = 61) attendance for Thermodynamics lectures
(31, 61, 'Late', '2023-09-06 09:15:00', 'Car trouble'),
(32, 61, 'Present', '2023-09-08 08:55:00', NULL),
(33, 61, 'Present', '2023-09-13 08:50:00', NULL),
(34, 61, 'Absent', NULL, 'Family emergency'),
(35, 61, 'Present', '2023-09-20 08:55:00', NULL);
