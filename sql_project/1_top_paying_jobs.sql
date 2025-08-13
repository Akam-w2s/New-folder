
SELECT 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name as name_country

    FROM job_postings_fact
    LEFT join company_dim on job_postings_fact.company_id = company_dim.company_id

    WHERE 
    job_title_short ILIKE '%data analyst%' AND 
    job_location ILIKE '%anywhere%' AND
    salary_year_avg IS NOT NULL

    ORDER BY salary_year_avg DESC
    LIMIT 10;