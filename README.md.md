# Skill-Sharing Community SQL Database

**Created by Afsana Khan Patan
    Final-year B.Tech, Artificial Intelligence & Data Science**  

---


## Project Overview

A realistic SQL database that models a vibrant skill-sharing platform. 
Features users, skills, requests, sessions, and feedback in a clean and organized structure.  
Demonstrates best practices in relational design, data integrity, and analytics-ready schemas.

---


## ER Diagram

![ER Diagram](images/er-diagram.png)

Figure: Entity-Relationship Diagram for the Skill-Sharing Platform


---


## Table Summary

| Table           | Description                                        |
|-----------------|----------------------------------------------------|
| users           | Stores user details: name, email, location, bio    |
| skills          | List of available skills with categories           |
| user_skills     | Links users to the skills they can teach           |
| skill_requests  | Tracks who wants to learn which skill              |
| sessions        | Scheduled skill sessions with instructor & details |
| feedback        | Ratings and comments on sessions                   |

---


## Key Relationships

- Each session links to one instructor and one skill
- Users can both teach (user_skills) and request (skill_requests) any skill
- Feedback connects a session, its instructor, and an attending user
- All data is normalized — no duplication, everything joined by foreign keys

---


## Sample Data

*users Table*

| user_id | name               | email                   | location   | bio                              |
|---------|--------------------|-------------------------|------------|----------------------------------|
| 1       | Afsana Khan Patan  | afsanakhan@gmail.com    | Chennai    | AI and Data Science enthusiast   |
| 2       | Roshan Ackthan     | roshanackthar@gmail.com | Delhi      | Public speaker and coach         |
| 3       | Sameera Patan      | sameerapatan@gmail.com  | Bangalore  | Digital artist and UX designer   |

*skills Table*

| skill_id | skill_name         | category        |
|----------|--------------------|-----------------|
| 1        | Python Programming | Technology      |
| 2        | Public Speaking    | Communication   |
| 3        | Digital Painting   | Art/Design      |


 ---


## Example Queries

1. List all sessions with instructor and skill:
2. Show all skill requests with requester’s info:
3. List feedback with both instructor and feedback giver:


---


## Sample Output

| session_id | skill_name         | instructor           | session_date | location     |
|------------|--------------------|----------------------|--------------|--------------|
| 1          | Python Programming | Afsana Khan Patan    | 2025-09-01   | Online       |
| 2          | Public Speaking    | Roshan Ackthar       | 2025-09-03   | Delhi Center |
| 3          | Digital Painting   | Sameera Patan        | 2025-09-05   | Bangalore    |


---


## Highlights

- Clean and normalized relational design
- Human-like sample data: bios, titles, comments
- Practical SQL features: JOINs, reporting, analytics
- Demonstrates core database principles for learning, training, or extension

---


## How to Run

1. Import the sql files into MySQL Workbench or any SQL client.
2. Run the sample queries above to explore relationships and outputs.
3. Extend the tables, add your own data, or try new analytics.

---


## Project Notes

- Designed as a hands-on SQL training exercise.
- All data, names, and outputs are for educational/demonstration purposes.
- Easily adaptable for any classroom or personal learning project.


