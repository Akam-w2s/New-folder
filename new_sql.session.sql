-- Find the company_id of 'Amazon'
-- Then show all job titles that belong to Amazon.
SELECT company_id

FROM company_dim
WHERE company_id (
SELECT company_id
FROM company_dim
name = 'amazon'
);
 



SELECT company_id
FROM company_dim
WHERE name = 'Amazon';


SELECT *
FROM job_postings_fact 
inner join job_postings_fact on company_dim .company_id = job_postings_fact.company_id
limit 20;


SELECT jp.job_title, company_dim.name AS company_name
FROM job_postings_fact jp
INNER JOIN company_dim ON jp.company_id = company_dim.company_id;


SELECT *
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id;

SELECT * FROM skills_job_dim LIMIT 5;

SELECT * 
FROM job_postings_fact
LIMIT 5;

SELECT job_postings_fact.job_title, company_dim.name AS company_name
FROM job_postings_fact
INNER JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id;




SELECT job_title, company_dim.name AS company_name, skills_dim.skills
FROM job_postings_fact 
INNER JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
LEFT JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
LEFT JOIN  skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE skills_dim.skills IS NOT NULL;


SELECT COUNT(*)
FROM job_postings_fact
INNER JOIN company_dim 
    ON job_postings_fact.company_id = company_dim.company_id
INNER JOIN skills_job_dim 
    ON job_postings_fact.job_id = skills_job_dim.job_id;



SELECT * FROM skills_job_dim LIMIT 5;
