# Database Mental Health Project

## Project Summary

A database management system designed to store, organize, and retrieve information related to mental health resources, patient records, and support services. This project aims to demonstrate database design principles, SQL operations, and relationships between entities in the context of mental health data.

## Features

* Store information on patients, therapists, appointments, and resources
* Support CRUD operations using SQL
* Enforce data integrity with primary and foreign keys
* Sample queries for reporting and analysis

## Technologies Used

* **Database Engine:** MySQL or SQL Server
* **Query Language:** SQL (DDL, DML, DCL)
* **ER Diagram Tool:** Draw\.io or Lucidchart

## Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/yourusername/database-mental-health.git
   cd database-mental-health
   ```
2. **Install Database Server**

   * Download and install MySQL: [https://dev.mysql.com/downloads/](https://dev.mysql.com/downloads/)
   * Or install SQL Server Express: [https://www.microsoft.com/sql-server](https://www.microsoft.com/sql-server)
3. **Create the database**

   ```sql
   -- from project root
   mysql -u root -p < scripts/create_database.sql
   ```
4. **Populate sample data**

   ```sql
   mysql -u root -p mental_health_db < scripts/sample_data.sql
   ```
5. **Run queries**

   * Open your SQL client and connect to `mental_health_db`.

## Tables Overview

| Table Name      | Description                                        |
| --------------- | -------------------------------------------------- |
| `Patients`      | Stores patient personal and contact data           |
| `Therapists`    | Therapist profiles and specialties                 |
| `Appointments`  | Scheduled sessions between patients and therapists |
| `Resources`     | Articles, helplines, and support links             |
| `Patient_Notes` | Session notes and treatment plans                  |
| `Feedback`      | Patient feedback after sessions                    |

### ER Diagram

An ER diagram is provided in `docs/ER_diagram.png` illustrating relationships:

* One-to-many between Therapists and Appointments
* One-to-many between Patients and Appointments
* One-to-many between Appointments and Patient\_Notes
* One-to-many between Patients and Feedback

## Usage

1. Open your SQL client
2. Execute custom queries from the `queries/` folder
3. Examples:

   * List all upcoming appointments:

     ```sql
     SELECT * FROM Appointments WHERE date >= CURDATE();
     ```
   * Get feedback summary:

     ```sql
     SELECT t.name, AVG(f.rating) AS avg_rating
     FROM Therapists t
     JOIN Feedback f ON t.id = f.therapist_id
     GROUP BY t.name;
     ```

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature-name`)
3. Commit your changes (`git commit -m "Add feature"`)
4. Push to the branch (`git push origin feature-name`)
5. Open a Pull Request

## License

This project is licensed under the MIT License. See `LICENSE` for details.

## Contact

* **Author:** Ahmed
* **Email:** am3365568@gmail.com
* **Club:** Microsoft Student Club - Kafr Elshakh

