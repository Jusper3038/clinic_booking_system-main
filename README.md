# Clinic Booking System Database

## Description
The **Clinic Booking System Database** is a relational database designed to manage clinic appointments, patient records, and doctor schedules. This project uses MySQL to provide a robust and efficient solution for clinic management. The database is structured to support various clinic operations, including storing patient details, appointment management, doctor information, and more. 

Key features of the database include:
- **Patient Information**: Stores details about patients such as full name, gender, date of birth, contact information, etc.
- **Appointment Management**: Manages patient appointments, including appointment dates, statuses, and associated doctors.
- **Doctor Information**: Contains details about the clinic’s doctors, including their specialties and work schedules.
- **Efficient Querying**: The schema is normalized to reduce redundancy and improve performance, ensuring smooth querying and data retrieval.

This database system is ideal for clinics looking to streamline their patient booking process and manage clinic resources more efficiently.

## How to Run/Setup
To set up the **Clinic Booking System Database** on your local machine, follow these steps:

1. **Download the SQL Script**:
   - Download the `clinic_booking_system.sql` file, which contains the necessary SQL statements to create the entire database schema, tables, and relationships.

2. **Run the SQL Script**:
   - Open **MySQL Workbench** or any MySQL client you prefer.
   - Create a new connection to your MySQL server if you haven't already.
   - In the SQL editor, open the `clinic_booking_system.sql` file.

3. **Execute the Script**:
   - Run the SQL script to create the database and its corresponding tables. This will generate all the required tables and relationships in your MySQL instance.

4. **Populate the Database with Sample Data**:
   - After the tables are created, execute the `INSERT INTO` statements in the SQL script to populate the tables with sample data, such as patient records, doctor details, and appointment information.

5. **Start Using the Database**:
   - Once the database is set up and populated, you can begin querying and managing patient appointments, doctor schedules, and other clinic operations.

## ERD
The **Entity Relationship Diagram (ERD)** provides a visual representation of the database structure, including all tables, their relationships, and the flow of data between them.

You can view the ERD for this project by following the link below:
(https://dbdiagram.io/d/clinic_booking_system-681ca7e35b2fc4582fc384b7)

## Project Notes
- **Normalization**: The database schema is designed following best practices for database normalization, ensuring the data is efficient, consistent, and easy to maintain.
- **Future Enhancements**: Future versions could include more advanced features, such as appointment reminders, payment tracking, and patient medical history management.

Feel free to fork this repository, make changes, or extend the project according to your needs.
