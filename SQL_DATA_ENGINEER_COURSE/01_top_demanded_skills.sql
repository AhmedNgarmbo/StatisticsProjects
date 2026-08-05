
SELECT 
  sd.skills,
  COUNT(jpf.*) AS demand_count
FROM job_postings_fact as jpf
inner join skills_job_dim as sjd
    on jpf.job_id = sjd.job_id
inner join skills_dim as sd
    on sjd.skill_id= sd.skill_id
where jpf.job_title_short = 'Data Engineer'
   AND jpf. job_work_from_home=true
group by 
sd.skills
order by 
demand_count desc
LIMIT 10;




SELECT 
    sd.skills,
    ROUND(MEDIAN(jpf.salary_year_avg), 0) AS median_salary,
    COUNT(jpf.*) AS skill_count
FROM job_postings_fact jpf
INNER JOIN skills_job_dim sjd ON jpf.job_id = sjd.job_id
INNER JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
WHERE
    jpf.job_title_short = 'Data Engineer'
    AND jpf.job_work_from_home = True 
GROUP BY
    sd.skills
HAVING
    COUNT(sd.skills) >= 100
ORDER BY
    median_salary DESC
LIMIT 25;


SELECT 42 as answer;

