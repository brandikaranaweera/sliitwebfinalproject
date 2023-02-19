-- Create Course table
CREATE TABLE Course (
  course_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  lecture_name VARCHAR(50) NOT NULL
);

-- Insert data into Course table
INSERT INTO Course (course_id, name, lecture_name) VALUES
  (1, 'web development', 'M.M. Herath'),
  (2, 'Graphic Design', 'J.S.V. Piyasena'),
  (3, 'Mobile App Development', 'K.K.S. Dias'),
  (4, 'Java', 'U.H.S. Perera');

-- Create Students table
CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  city VARCHAR(50) NOT NULL,
  course_id INT,
  FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- Insert data into Students table
INSERT INTO Students (student_id, name, city, course_id) VALUES
  (1, 'kasun gamage', 'kandy', 2),
  (2, 'daniel sam', 'Jaffna', 3),
  (3, 'hansi silva', 'colombo', 1),
  (4, 'ranidu heath', 'matara', 3),
  (5, 'praneeth Wijesinghe', 'kandy', 4),
  (6, 'nuwani herath', 'Rathnapura', 1);