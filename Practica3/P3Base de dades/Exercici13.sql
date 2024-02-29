-- 13.1 
SELECT staff_id, position, salary, branch_id FROM staff;

-- 13.2
CREATE VIEW comp_view AS
SELECT staff_id, position, salary, branch_id FROM staff;

-- 13.3
DROP VIEW comp_view;

