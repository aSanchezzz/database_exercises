-- PROJECTS DB EXERCISE

-- 1.

SELECT * FROM project_uses_tech
	WHERE project_uses_tech.tech_id = 3;
	
-- 2.

SELECT * FROM project_uses_tech
	WHERE project_uses_tech.project_id = 4;
	
-- 3.

SELECT * FROM tech
  LEFT OUTER JOIN project_uses_tech
    ON tech.id = project_uses_tech.tech_id; -- Ruby, JavaScript and Java have no associated projects

-- 4.

SELECT name, count(tech_id)
	FROM tech
	LEFT OUTER JOIN project_uses_tech
	ON project_uses_tech.tech_id = tech.id
	GROUP BY tech.id;
    
-- 5.

SELECT DISTINCT(name), count(tech_id) AS nums_tech_used FROM project
  LEFT OUTER JOIN project_uses_tech
    ON project.id = project_uses_tech.project_id
    GROUP BY project.id; -- Whiteboard Exercises has no associated projects
    
-- 6.

SELECT DISTINCT(name), count(tech_id) AS nums_tech_used FROM project
  LEFT OUTER JOIN project_uses_tech
    ON project.id = project_uses_tech.project_id
    GROUP BY project.id;
    
-- 7.

SELECT project.name AS project, tech.name AS techs_used FROM project
	LEFT OUTER JOIN project_uses_tech
		ON project_uses_tech.project_id = project.id
	LEFT OUTER JOIN tech
		ON project_uses_tech.tech_id = tech.id 
	ORDER BY project.id, tech.name;

-- 8.

SELECT DISTINCT(tech.name) AS techs_used FROM tech
	RIGHT OUTER JOIN project_uses_tech
		ON project_uses_tech.tech_id = tech.id
	ORDER BY tech.name;

-- 9.

SELECT DISTINCT(tech.name) AS tech_not_used FROM project
	RIGHT OUTER JOIN project_uses_tech
		ON project_uses_tech.project_id = project.id
	RIGHT OUTER JOIN tech
		ON project_uses_tech.tech_id = tech.id
	WHERE project_id IS NULL;
	
-- 10.

SELECT DISTINCT(project.name) AS projects_with_tech FROM project
	RIGHT OUTER JOIN project_uses_tech
		ON project_uses_tech.project_id = project.id
	WHERE project_uses_tech.tech_id IS NOT NULL;
	
-- 11.

SELECT name AS projects_without_tech FROM project
	LEFT OUTER JOIN project_uses_tech
		ON project_uses_tech.project_id = project.id
	WHERE project_uses_tech.tech_id IS NULL;
	
-- 12.

SELECT DISTINCT(name), count(tech_id) AS nums_tech_used FROM project
  LEFT OUTER JOIN project_uses_tech
    ON project.id = project_uses_tech.project_id
    GROUP BY project.name
    ORDER BY nums_tech_used;
    
-- 13.

SELECT DISTINCT(name), count(project_id) AS num_projects_using FROM tech
	LEFT OUTER JOIN project_uses_tech
		ON tech.id = project_uses_tech.tech_id
	GROUP BY tech.name
	ORDER BY num_projects_using;

-- 14.

select
	project.id,
	project.name,
	count(project_uses_tech.tech_id) as my_count
from
	project
left outer join
	project_uses_tech on project_uses_tech.project_id = project.id
group by
	project.id
order by
	my_count;