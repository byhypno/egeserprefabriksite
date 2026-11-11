-- EGESER PREFABRIK - 30.10.2026 DUZELTME PAKETININ YEDEK TABLOLARINI SIL
-- 07_VERITABANI_DUZELTME_YUKLE.sql uygulandi ve 11.11.2026 dokumunde dogrulandi; yedeklere artik gerek yok.
-- GERI ALINAMAZ: 08_VERITABANI_DUZELTME_GERI_AL.sql bu islemden sonra calismaz.
DROP TABLE IF EXISTS `oc_egeser_setting_backup_20261030`;
DROP TABLE IF EXISTS `oc_egeser_product_description_backup_20261030`;
DROP TABLE IF EXISTS `oc_egeser_product_backup_20261030`;
DROP TABLE IF EXISTS `oc_egeser_redirect_backup_20261030`;
DROP TABLE IF EXISTS `oc_egeser_blog_post_meta_backup_20261030`;

-- KONTROL: bos sonuc donmeli (hic tablo listelenmemeli)
SHOW TABLES LIKE 'oc_egeser_%_20261030';
