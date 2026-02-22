-- Lab 1: Books Read Tracker
-- Author: Your Name
-- Date: 2026-02-22

-- Create table
CREATE TABLE books_read (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    pages INTEGER CHECK (pages > 0),
    date_finished DATE,
    rating DECIMAL(3,1) CHECK (rating >= 0 AND rating <= 5.0),
    notes TEXT
);

-- Insert sample data
INSERT INTO books_read (title, author, category, pages, date_finished, rating, notes) VALUES
('Python for Data Science', 'Alice', 'Data Science', 450, '2026-01-15', 4.5, 'Great intro'),
('Deep Learning', 'Bob', 'Machine Learning', 600, '2026-02-20', 4.8, 'Challenging'),
('PostgreSQL Basics', 'Charlie', 'Databases', 300, '2026-01-22', 4.0, 'Very useful'),
('Advanced ML', 'Bob', 'Machine Learning', 500, '2026-03-05', 4.7, 'Intense but good'),
('Data Visualization', 'Alice', 'Data Science', 350, '2026-03-15', 4.6, 'Loved charts');
