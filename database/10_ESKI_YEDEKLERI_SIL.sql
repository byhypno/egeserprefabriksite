-- EGESER PREFABRIK - ESKI YEDEK TABLOLARI SIL - 20261030
-- Eylul 2026 duzenleme paketlerinden kalan 21 yedek tabloyu siler. Site bu tablolari kullanmaz.
-- oc_egeser_p3_setting_bak_20260910 tablosu FTP baglanti bilgilerini (sifre dahil) icerir.
-- GERI ALINAMAZ: calistirmadan once phpMyAdmin > Disa Aktar ile tam yedek alin.
-- 07_VERITABANI_DUZELTME_YUKLE.sql ile olusan *_20261030 yedeklerine dokunmaz.
-- Yalnizca asagida adi tek tek yazili tablolar silinir; tablo yoksa hata vermeden gecer.

DROP TABLE IF EXISTS `oc_egeser_blog_post_backup_20260919`;
DROP TABLE IF EXISTS `oc_egeser_blog_post_removed_20260919`;
DROP TABLE IF EXISTS `oc_egeser_p3_banner_bak_20260910`;
DROP TABLE IF EXISTS `oc_egeser_p3_banner_image_bak_20260910`;
DROP TABLE IF EXISTS `oc_egeser_p3_category_description_bak_20260910`;
DROP TABLE IF EXISTS `oc_egeser_p3_currency_bak_20260910`;
DROP TABLE IF EXISTS `oc_egeser_p3_information_bak_20260910`;
DROP TABLE IF EXISTS `oc_egeser_p3_language_bak_20260910`;
DROP TABLE IF EXISTS `oc_egeser_p3_layout_module_bak_20260910`;
DROP TABLE IF EXISTS `oc_egeser_p3_manufacturer_bak_20260910`;
DROP TABLE IF EXISTS `oc_egeser_p3_manufacturer_store_bak_20260910`;
DROP TABLE IF EXISTS `oc_egeser_p3_modification_bak_20260910`;
DROP TABLE IF EXISTS `oc_egeser_p3_module_bak_20260910`;
DROP TABLE IF EXISTS `oc_egeser_p3_setting_bak_20260910`;
DROP TABLE IF EXISTS `oc_egeser_p3_url_alias_bak_20260910`;
DROP TABLE IF EXISTS `oc_egeser_p4a_information_bak_20260911`;
DROP TABLE IF EXISTS `oc_egeser_p4a_information_description_bak_20260911`;
DROP TABLE IF EXISTS `oc_egeser_p4a_information_store_bak_20260911`;
DROP TABLE IF EXISTS `oc_egeser_p4a_url_alias_bak_20260911`;
DROP TABLE IF EXISTS `oc_egeser_product_description_backup_20260919`;
DROP TABLE IF EXISTS `oc_egeser_redirect_backup_before_product_activation`;

-- KONTROL: 0 olmali
SELECT COUNT(*) AS kalan_eski_yedek FROM information_schema.tables WHERE table_schema = DATABASE() AND table_name IN ('oc_egeser_blog_post_backup_20260919','oc_egeser_blog_post_removed_20260919','oc_egeser_p3_banner_bak_20260910','oc_egeser_p3_banner_image_bak_20260910','oc_egeser_p3_category_description_bak_20260910','oc_egeser_p3_currency_bak_20260910','oc_egeser_p3_information_bak_20260910','oc_egeser_p3_language_bak_20260910','oc_egeser_p3_layout_module_bak_20260910','oc_egeser_p3_manufacturer_bak_20260910','oc_egeser_p3_manufacturer_store_bak_20260910','oc_egeser_p3_modification_bak_20260910','oc_egeser_p3_module_bak_20260910','oc_egeser_p3_setting_bak_20260910','oc_egeser_p3_url_alias_bak_20260910','oc_egeser_p4a_information_bak_20260911','oc_egeser_p4a_information_description_bak_20260911','oc_egeser_p4a_information_store_bak_20260911','oc_egeser_p4a_url_alias_bak_20260911','oc_egeser_product_description_backup_20260919','oc_egeser_redirect_backup_before_product_activation');
