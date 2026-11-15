-- EGESER PREFABRIK - "MODULER" DEGISIKLIGINI GERI AL - 20261115
SET NAMES utf8mb4;
UPDATE oc_product_description p JOIN oc_product_description_backup_20261115 b ON b.product_id = p.product_id AND b.language_id = p.language_id SET p.description = b.description, p.tag = b.tag, p.meta_keyword = b.meta_keyword;
UPDATE oc_information_description p JOIN oc_information_description_backup_20261115 b ON b.information_id = p.information_id AND b.language_id = p.language_id SET p.description = b.description;
UPDATE oc_egeser_blog_post p JOIN oc_egeser_blog_post_backup_20261115 b ON b.blog_id = p.blog_id SET p.description = b.description;
DROP TABLE oc_product_description_backup_20261115;
DROP TABLE oc_information_description_backup_20261115;
DROP TABLE oc_egeser_blog_post_backup_20261115;
