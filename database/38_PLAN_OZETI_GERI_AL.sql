-- EGESER PREFABRIK - PLAN OZETINI GERI AL - 20261125
SET NAMES utf8mb4;
UPDATE oc_product_description p JOIN oc_product_description_backup_plan_20261125 b ON b.product_id = p.product_id AND b.language_id = p.language_id SET p.description = b.description, p.meta_description = b.meta_description;
DROP TABLE oc_product_description_backup_plan_20261125;
