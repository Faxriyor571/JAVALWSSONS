-- Database creation and selection
DROP DATABASE IF EXISTS academy;
CREATE DATABASE academy;
USE academy;

-- Drop tables if they exist (in reverse order of creation to handle foreign key constraints)
DROP TABLE IF EXISTS LectureAttendance;
DROP TABLE IF EXISTS Lecture;
DROP TABLE IF EXISTS Room;
DROP TABLE IF EXISTS Enrollment;
DROP TABLE IF EXISTS TeacherCourse;
DROP TABLE IF EXISTS ExamResult;
DROP TABLE IF EXISTS Exam;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS Scholarship;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Teacher;
DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS Academy;

-- Main table for academies
CREATE TABLE Academy (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL DEFAULT 'Unknown',
    established_year INT CHECK (established_year > 1800 AND established_year <= 2025),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Main table storing information about educational academies';

-- Departments within academy
CREATE TABLE Department (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    academy_id INT NOT NULL,
    head_of_department VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (academy_id) REFERENCES Academy(id) ON DELETE CASCADE
) COMMENT 'Departments belonging to academies';

-- Create index on foreign key for better performance
CREATE INDEX idx_department_academy ON Department(academy_id);

-- Teachers
CREATE TABLE Teacher (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    hire_date DATE NOT NULL,
    department_id INT NOT NULL,
    salary DECIMAL(10,2) DEFAULT 0.00,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (department_id) REFERENCES Department(id) ON DELETE RESTRICT
) COMMENT 'Teachers working at the academy';

-- Create index on foreign key for better performance
CREATE INDEX idx_teacher_department ON Teacher(department_id);

-- Students
CREATE TABLE Student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT CHECK (age >= 16 AND age <= 100),
    enrollment_date DATE NOT NULL,
    graduation_date DATE,
    academy_id INT NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (academy_id) REFERENCES Academy(id) ON DELETE RESTRICT,
    CHECK (graduation_date IS NULL OR graduation_date > enrollment_date)
) COMMENT 'Students enrolled in the academy';

-- Create index on foreign key for better performance
CREATE INDEX idx_student_academy ON Student(academy_id);

-- Scholarships
CREATE TABLE Scholarship (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    amount DECIMAL(10,2) NOT NULL CHECK (amount > 0),
    description TEXT,
    student_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES Student(id) ON DELETE CASCADE,
    CHECK (end_date IS NULL OR end_date > start_date)
) COMMENT 'Scholarships awarded to students';

-- Create index on foreign key for better performance
CREATE INDEX idx_scholarship_student ON Scholarship(student_id);

-- Courses
CREATE TABLE Course (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    credit INT NOT NULL DEFAULT 3 CHECK (credit > 0),
    department_id INT NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (department_id) REFERENCES Department(id) ON DELETE RESTRICT
) COMMENT 'Courses offered by departments';

-- Create index on foreign key for better performance
CREATE INDEX idx_course_department ON Course(department_id);

-- Exams for courses
CREATE TABLE Exam (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    course_id INT NOT NULL,
    teacher_id INT NOT NULL,
    exam_date DATE NOT NULL,
    duration_minutes INT NOT NULL CHECK (duration_minutes > 0),
    max_score INT NOT NULL CHECK (max_score > 0),
    exam_type ENUM('Midterm', 'Final', 'Quiz', 'Assignment', 'Project') NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (course_id) REFERENCES Course(id) ON DELETE CASCADE,
    FOREIGN KEY (teacher_id) REFERENCES Teacher(id) ON DELETE RESTRICT
) COMMENT 'Exams and assessments for courses';

-- Create indexes on foreign keys for better performance
CREATE INDEX idx_exam_course ON Exam(course_id);
CREATE INDEX idx_exam_teacher ON Exam(teacher_id);
CREATE INDEX idx_exam_date ON Exam(exam_date);

-- Student exam results
CREATE TABLE ExamResult (
    exam_id INT NOT NULL,
    student_id INT NOT NULL,
    score DECIMAL(5,2) NOT NULL CHECK (score >= 0),
    submission_date DATETIME NOT NULL,
    feedback TEXT,
    is_passed BOOLEAN DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (exam_id, student_id),
    FOREIGN KEY (exam_id) REFERENCES Exam(id) ON DELETE CASCADE,
    FOREIGN KEY (student_id) REFERENCES Student(id) ON DELETE CASCADE
) COMMENT 'Student results for exams';

-- Create index for better performance
CREATE INDEX idx_exam_result_student ON ExamResult(student_id);

-- Linking table: Teachers can teach multiple courses
CREATE TABLE TeacherCourse (
    teacher_id INT NOT NULL,
    course_id INT NOT NULL,
    semester VARCHAR(20) NOT NULL,
    academic_year VARCHAR(9) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (teacher_id, course_id, semester, academic_year),
    FOREIGN KEY (teacher_id) REFERENCES Teacher(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Course(id) ON DELETE CASCADE
) COMMENT 'Junction table linking teachers to the courses they teach';

-- Linking table: Students enroll in courses
CREATE TABLE Enrollment (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enroll_date DATE NOT NULL DEFAULT (CURRENT_DATE),
    grade DECIMAL(4,2) CHECK (grade IS NULL OR (grade >= 0 AND grade <= 100)),
    status ENUM('Active', 'Completed', 'Withdrawn', 'Failed') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Student(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Course(id) ON DELETE CASCADE
) COMMENT 'Junction table tracking student enrollment in courses';

-- Rooms (for lectures)
CREATE TABLE Room (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    building VARCHAR(50) NOT NULL DEFAULT 'Main Building',
    floor INT NOT NULL DEFAULT 1,
    capacity INT NOT NULL CHECK (capacity > 0),
    has_projector BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Rooms where lectures are held';

-- Lectures
CREATE TABLE Lecture (
    id INT PRIMARY KEY AUTO_INCREMENT,
    topic VARCHAR(100) NOT NULL,
    course_id INT NOT NULL,
    teacher_id INT NOT NULL,
    schedule_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    room_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (course_id) REFERENCES Course(id) ON DELETE CASCADE,
    FOREIGN KEY (teacher_id) REFERENCES Teacher(id) ON DELETE RESTRICT,
    FOREIGN KEY (room_id) REFERENCES Room(id) ON DELETE RESTRICT,
    CHECK (end_time > schedule_time)
) COMMENT 'Scheduled lectures for courses';

-- Create indexes on foreign keys for better performance
CREATE INDEX idx_lecture_course ON Lecture(course_id);
CREATE INDEX idx_lecture_teacher ON Lecture(teacher_id);
CREATE INDEX idx_lecture_room ON Lecture(room_id);
CREATE INDEX idx_lecture_schedule ON Lecture(schedule_time);

-- Students attending lectures
CREATE TABLE LectureAttendance (
    lecture_id INT NOT NULL,
    student_id INT NOT NULL,
    status ENUM('Present', 'Absent', 'Late', 'Excused') DEFAULT 'Present',
    check_in_time TIMESTAMP NULL,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (lecture_id, student_id),
    FOREIGN KEY (lecture_id) REFERENCES Lecture(id) ON DELETE CASCADE,
    FOREIGN KEY (student_id) REFERENCES Student(id) ON DELETE CASCADE
) COMMENT 'Tracks student attendance at lectures';
