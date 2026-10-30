-- EGESER PREFABRIK - VERITABANI DENETIM DUZELTMELERI - GERI AL - 20261030
-- 07_VERITABANI_DUZELTME_YUKLE.sql ile olusturulan yedek tablolardan eski degerleri geri yukler.
SET NAMES utf8mb4;

UPDATE oc_setting s JOIN oc_egeser_setting_backup_20261030 b ON b.setting_id = s.setting_id SET s.`value` = b.`value`;
UPDATE oc_product_description p JOIN oc_egeser_product_description_backup_20261030 b ON b.product_id = p.product_id AND b.language_id = p.language_id SET p.meta_title = b.meta_title, p.meta_description = b.meta_description;
UPDATE oc_product p JOIN oc_egeser_product_model_backup_20261030 b ON b.product_id = p.product_id SET p.model = b.model;
UPDATE oc_egeser_redirect r JOIN oc_egeser_redirect_backup_20261030 b ON b.redirect_id = r.redirect_id SET r.target_url = b.target_url;
UPDATE oc_egeser_blog_post p JOIN oc_egeser_blog_post_meta_backup_20261030 b ON b.blog_id = p.blog_id SET p.meta_title = b.meta_title, p.meta_description = b.meta_description;

SELECT 'Geri alma tamamlandi' AS sonuc;
