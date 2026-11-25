-- EGESER PREFABRIK - BASLIK/ACIKLAMA DEGISIKLIGINI GERI AL - 20261125
SET NAMES utf8mb4;
UPDATE oc_product_description p JOIN oc_product_description_backup_meta_20261125 b ON b.product_id = p.product_id AND b.language_id = p.language_id SET p.meta_title = b.meta_title, p.meta_description = b.meta_description;
UPDATE oc_category_description c JOIN oc_category_description_backup_meta_20261125 b ON b.category_id = c.category_id AND b.language_id = c.language_id SET c.meta_title = b.meta_title, c.meta_description = b.meta_description;
DROP TABLE oc_product_description_backup_meta_20261125;
DROP TABLE oc_category_description_backup_meta_20261125;
