# 🗄️ MySQL Masterclass: Schemas, Queries & Relational Architecture

A comprehensive, production-style repository containing structured SQL scripts designed to demonstrate relational database design, data manipulation, advanced filtering, multi-table joins, and subquery mechanics using MySQL.

---

## 📊 Repository Dashboard

| Metric / Attribute | Specification |
| :--- | :--- |
| **Primary Language** | SQL (MySQL) |
| **Core Modules** | College Information System (`classroom.sql`)[cite: 1] <br> E-Commerce & HR Analytics (`practice.sql`)[cite: 2] |
| **Concepts Covered** | DDL, DML, Constraints, Aggregations, Subqueries, Joins[cite: 1, 2] |
| **Status** | Active Portfolio Project |

---

## 📂 File Architecture & Detailed Breakdown

### 1. `classroom.sql` — College Management System
This script establishes a normalized relational database (`college`) focused on student academic lifecycles, faculty assignments, and department mappings[cite: 1].

* **`student` Table:** Tracks roll numbers, student names, numeric marks, assigned grades, cities, and implements dynamic column modifications (`ALTER TABLE` commands for `age` tracking and renaming to `full_name`)[cite: 1].
* **`dept` Table:** Manages departmental listings with primary key constraints and transactional updates[cite: 1].
* **`teacher` Table:** Establishes foreign key relational dependencies linked to departments, enforcing cascading integrity (`ON DELETE CASCADE`, `ON UPDATE CASCADE`)[cite: 1].
* **`student1` & `course` Tables:** Designed specifically to test relational operations, inner/outer mapping gaps, and unassigned entity isolation[cite: 1].
* **`employee` Table:** Implements hierarchical self-referential mapping to isolate manager-subordinate relationships[cite: 1].

### 2. `practice.sql` — Analytics & Business Logic
This script simulates real-world business scenarios, including customer segmentation, e-commerce order lifecycles, and corporate HR salary distributions[cite: 2].

* **`customers` & `orders` Tables:** Models order tracking states (`DELIVERED`, `PENDING`, `CANCELLED`) and isolates orphan records (e.g., customers without orders via `LEFT JOIN ... WHERE o.order_id IS NULL`)[cite: 2].
* **`employee` (Self-Join) Table:** Structures hierarchical reporting lines and sorts management levels dynamically[cite: 2].
* **`Employees` & `Departments` Tables:** Complex enterprise architecture used to execute multi-level subqueries, global salary benchmarking, and department-specific location filters[cite: 2].

---

## 🚀 Key Technical Implementations

### A. Advanced Joins & Relational Algebra
* **Inner Joins:** Intersects records shared across unified keys[cite: 1].
* **Left / Right Outer Joins:** Preserves complete primary datasets while appending matching secondary records[cite: 1, 2].
* **Full Outer Joins (via `UNION`):** Merges dataset boundaries to capture complete bilateral records[cite: 1].
* **Self-Joins:** Resolves organizational reporting chains by mapping table aliases against themselves[cite: 1, 2].

### B. Subqueries & Derived Tables
* Scalar subqueries evaluating dynamic parameters (e.g., matching salaries above the corporate average)[cite: 2].
* Nested subqueries for rank calculations (e.g., extracting second-highest marks)[cite: 1].
* Derived inline tables (`FROM (SELECT...) AS TEMP`) to run multi-layered aggregations[cite: 1].

---

## 🛠️ Getting Started & Execution

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/parwezadnan07/your-repo-name.git](https://github.com/parwezadnan07/your-repo-name.git)

Open your MySQL client (MySQL Workbench or terminal CLI).
Run the scripts to initialize the databases and execute queries:
SOURCE classroom.sql;
SOURCE practice.sql;
