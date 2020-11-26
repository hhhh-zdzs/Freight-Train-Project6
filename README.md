# README

# Freight-Train-Project6
The project 6
## Installation
Clone the repo and run the following command in the repo dir
- bundle install
- rails server / rails s

## Project Structure
There will be three main pages: LoginPage, Student's Home Page, Teacher's Home Page

### Login Page
Login page will only contain a login module which can identify the user's ID to determine whether jump to student's home page or teacher's home page

### Student's Home Page
This is a home page for a single student.
- Contain's a list of his/her teammates
Each line of student will followed by an '''EVALUATE''' button
This button allows student to evaluate a single student's peer's review by promating a form

### Teacher's Home Page
This is a home page for a single teacher.
- Contains a list of all students
Each line of student will followed by an '''EDIT''' button and a '''DELETE''' button
    - 'EDIT' button works for edit a student information
    - 'DELETE' button works for delete this student
- Contains a button of create one new student
This button allows teacher to add a new student into the student list with student's info, by promating a form