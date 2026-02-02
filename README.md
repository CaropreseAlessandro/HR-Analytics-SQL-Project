# 📊 HR Analytics: Employee Attrition Analysis

## 🎯 Project Objective
The goal of this project is to identify the main drivers behind employee turnover (attrition) using SQL. By analyzing demographics, job satisfaction, and tenure, this study provides data-driven insights to help the HR department improve retention strategies.

## 🛠️ Technical Skills Applied
- **Advanced Aggregations:** `COUNT`, `AVG`, and `ROUND`.
- **Conditional Logic:** Extensive use of `CASE WHEN` for data categorization (e.g., Junior vs Senior).
- **Filtering & Grouping:** `GROUP BY`, `HAVING`, and `WHERE` clauses.
- **Subqueries:** Used to compare departmental performance against company-wide benchmarks.
- **Data Cleaning:** Handling character encoding issues in column names (e.g., `ï»¿Age`).

---

## 📂 Project Structure & Key Questions

### 🔵 Block 1: Business Understanding
Establishing baseline KPIs to understand the company's workforce structure.
1. **Total Workforce:** How many employees are currently in the company?
2. **Departmental Split:** How is the staff distributed across different departments?
3. **Demographics:** What is the average age of the employees?
4. **Compensation:** What is the average monthly income across the organization?

### 🔴 Block 2: Attrition Deep Dive (The "Who" and "Where")
Analyzing the volume and distribution of turnover.
5. **Total Leavers:** How many employees have left the company?
6. **Attrition Rate:** What is the global percentage of attrition?
7. **Departmental Risk:** Which departments are experiencing the highest turnover?
8. **Seniority Impact:** Is attrition higher among Junior (≤30) or Senior (>30) employees?

### 🟢 Block 3: Satisfaction & Engagement
Investigating if qualitative factors like happiness correlate with leaving.
9. **Departmental Satisfaction:** What is the average job satisfaction level per department?
10. **The Satisfaction Gap:** Do employees who leave have lower satisfaction scores than those who stay?
11. **Critical Areas:** Which departments have satisfaction levels below the corporate average?

### 🟡 Block 4: Tenure & Lifecycle (Retention)
Mapping when the risk of attrition is most critical.
12. **The Danger Zone:** After how many years at the company does attrition peak?
13. **Loyalty Factor:** Do employees with over 5 years of tenure show higher retention?
14. **Role Stability:** What is the average tenure (years at the company) for each job role?

---

## 💡 Professional Recommendations
Based on the data, I recommend the following actions:
1. **Focus on Early Retention:** Implement mentorship programs for employees in their first 2 years, as this is the highest risk period.
2. **Targeted Interventions:** Conduct "stay interviews" in the [Nome Dipartimento] to address low satisfaction before it leads to further attrition.
3. **Review Compensation for Junior Roles:** If attrition is high among younger staff, evaluate if salaries are competitive with market averages.

---

## 🚀 How to Run the Project
1. Clone this repository.
2. Import the `dataset.csv` into your SQL environment (e.g., MySQL Workbench).
3. Execute the `HR_Attrition_Analysis.sql` script to see the full results.
