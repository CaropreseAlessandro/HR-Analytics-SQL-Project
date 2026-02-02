/* PROJECT: HR Attrition Analysis
   OBJECTIVE: Identify the critical factors leading to employee turnover.
*/

-- BLOCK 1: Business Understanding
-- Calculating total employee count and salary averages

#1) How many employees are there in total?
SELECT COUNT(*) AS total_employes FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`;
#ANSWER: 1470

#2) How many employees per department? 
SELECT Department, COUNT(*) AS number_employees
FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`
GROUP BY Department;
#ANSWER SALES: 446; RESEARCH & DEVELOPMENT: 961; HR: 63

#3) What is the average age of employees?
SELECT AVG(ï»¿Age)
FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`;
#ANSWER: 37

#4) What is the average salary?
SELECT AVG(MonthlyIncome) FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`;
#ANSWER: 6502

-- BLOCK 2: Attrition Analysis (CORE HR)
-- Objective: Analyze the volume and distribution of employee turnover.

#5) How many employees left the company?
SELECT COUNT(*) FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`
WHERE Attrition = 'Yes';
#ANSWER: 237

#6) What is the total attrition percentage?
SELECT (COUNT(CASE WHEN Attrition = 'Yes'THEN 1 END) * 100 / COUNT(*)) as percentual_attrition
FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`;
#ANSWER: 16

#7) Which departments have the most attrition?
SELECT Department , COUNT(*) as number_exit
FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`
WHERE Attrition= 'Yes'
GROUP BY Department
ORDER BY number_exit DESC;
#ANSWER: RESEARCH & DEVELOPMENT: 133; SALES: 92; HR: 12

#8) Is attrition higher among junior or senior employees?
SELECT
	CASE
		WHEN ï»¿Age<=30 THEN 'Junior'
        ELSE 'Senior'
	END AS category_age,
    COUNT(*) AS number_exit
FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`
WHERE Attrition= 'Yes' 
GROUP BY category_age;
#ANSWER: Senior

-- BLOCK 3: Satisfaction & Engagement
-- Objective: Determine if low job satisfaction is a primary driver for attrition.

#9) What is the average level of job satisfaction by department?
SELECT Department, AVG(JobSatisfaction) AS avg_jb
FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`
GROUP BY Department;
#ANSWER SALES:2,75 ; RESARCH & DEVELOPMENT: 2,72 ; HR: 2,6

#10) Did employees who left have lower job satisfaction?
SELECT Attrition, AVG(JobSatisfaction) AS avg_job
FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`
GROUP BY Attrition;
#ANSWER: YES: 2,4 ; NO: 2,7

#11) Which departments have below-average overall satisfaction?
SELECT Department, AVG(JobSatisfaction) AS avg_satisfaction
FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`
GROUP BY Department
HAVING avg_satisfaction <
(SELECT AVG (JobSatisfaction) FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`);
#ANSWER: Research & Development: 2,7 ; HR: 2,6

-- BLOCK 4: Tenure & Experience (Retention Analysis)
-- Objective: Analyze the employee lifecycle and identify critical periods for turnover.

#12) After how many years does attrition build up in a company?
SELECT YearsAtCompany , COUNT(*) AS years_company
FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`
WHERE Attrition= 'Yes'
GROUP BY YearsAtCompany;

#13) Do people over X years old tend to stay longer?
SELECT 
    CASE 
        WHEN YearsAtCompany > 5 THEN 'Over5years'
        ELSE 'less5years'
    END AS old_employees_range,
    COUNT(*) AS employees_in_company
FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`
WHERE Attrition = 'No'
GROUP BY old_employees_range;
#ANSWER: YES

#14) What is the average seniority per role?
SELECT JobRole, AVG(YearsAtCompany) AS old_avg
FROM hr_analytics.`wa_fn-usec_-hr-employee-attrition`
GROUP BY JobRole
ORDER BY old_avg DESC;


-- PROJECT BY CAROPRESE ALESSANDRO
