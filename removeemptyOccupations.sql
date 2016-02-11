--Remove occupations with no knowledge data (because if there is no knowledge there is pretty much no other data we are going to use)
DELETE FROM dbo.job_zones WHERE onetsoc_code IN (
SELECT     dbo.occupation_data.onetsoc_code
FROM         dbo.occupation_data LEFT OUTER JOIN
                      dbo.knowledge ON dbo.occupation_data.onetsoc_code = dbo.knowledge.onetsoc_code
WHERE     (dbo.knowledge.onetsoc_code IS NULL))

DELETE FROM dbo.interests WHERE onetsoc_code IN (
SELECT     dbo.occupation_data.onetsoc_code
FROM         dbo.occupation_data LEFT OUTER JOIN
                      dbo.knowledge ON dbo.occupation_data.onetsoc_code = dbo.knowledge.onetsoc_code
WHERE     (dbo.knowledge.onetsoc_code IS NULL))

DELETE FROM dbo.tasks_to_dwas WHERE onetsoc_code IN (
SELECT     dbo.occupation_data.onetsoc_code
FROM         dbo.occupation_data LEFT OUTER JOIN
                      dbo.knowledge ON dbo.occupation_data.onetsoc_code = dbo.knowledge.onetsoc_code
WHERE     (dbo.knowledge.onetsoc_code IS NULL))

DELETE FROM dbo.green_task_statements WHERE onetsoc_code IN (
SELECT     dbo.occupation_data.onetsoc_code
FROM         dbo.occupation_data LEFT OUTER JOIN
                      dbo.knowledge ON dbo.occupation_data.onetsoc_code = dbo.knowledge.onetsoc_code
WHERE     (dbo.knowledge.onetsoc_code IS NULL))

DELETE FROM dbo.tasks_to_green_dwas WHERE onetsoc_code IN (
SELECT     dbo.occupation_data.onetsoc_code
FROM         dbo.occupation_data LEFT OUTER JOIN
                      dbo.knowledge ON dbo.occupation_data.onetsoc_code = dbo.knowledge.onetsoc_code
WHERE     (dbo.knowledge.onetsoc_code IS NULL))

DELETE FROM dbo.task_statements WHERE onetsoc_code IN (
SELECT     dbo.occupation_data.onetsoc_code
FROM         dbo.occupation_data LEFT OUTER JOIN
                      dbo.knowledge ON dbo.occupation_data.onetsoc_code = dbo.knowledge.onetsoc_code
WHERE     (dbo.knowledge.onetsoc_code IS NULL))

DELETE FROM dbo.work_values WHERE onetsoc_code IN (
SELECT     dbo.occupation_data.onetsoc_code
FROM         dbo.occupation_data LEFT OUTER JOIN
                      dbo.knowledge ON dbo.occupation_data.onetsoc_code = dbo.knowledge.onetsoc_code
WHERE     (dbo.knowledge.onetsoc_code IS NULL))

DELETE FROM dbo.work_activities WHERE onetsoc_code IN (
SELECT     dbo.occupation_data.onetsoc_code
FROM         dbo.occupation_data LEFT OUTER JOIN
                      dbo.knowledge ON dbo.occupation_data.onetsoc_code = dbo.knowledge.onetsoc_code
WHERE     (dbo.knowledge.onetsoc_code IS NULL))

DELETE FROM dbo.work_context WHERE onetsoc_code IN (
SELECT     dbo.occupation_data.onetsoc_code
FROM         dbo.occupation_data LEFT OUTER JOIN
                      dbo.knowledge ON dbo.occupation_data.onetsoc_code = dbo.knowledge.onetsoc_code
WHERE     (dbo.knowledge.onetsoc_code IS NULL))

DELETE FROM dbo.green_occupations WHERE onetsoc_code IN (
SELECT     dbo.occupation_data.onetsoc_code
FROM         dbo.occupation_data LEFT OUTER JOIN
                      dbo.knowledge ON dbo.occupation_data.onetsoc_code = dbo.knowledge.onetsoc_code
WHERE     (dbo.knowledge.onetsoc_code IS NULL))

DELETE FROM dbo.occupation_data WHERE onetsoc_code IN (
SELECT     dbo.occupation_data.onetsoc_code
FROM         dbo.occupation_data LEFT OUTER JOIN
                      dbo.knowledge ON dbo.occupation_data.onetsoc_code = dbo.knowledge.onetsoc_code
WHERE     (dbo.knowledge.onetsoc_code IS NULL))
