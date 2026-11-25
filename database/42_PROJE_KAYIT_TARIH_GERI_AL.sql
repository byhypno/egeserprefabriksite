-- EGESER PREFABRIK - PROJE KAYIT DUZELTMESINI GERI AL - 20261125 (yalniz referans modulu; tarihler geri alinmaz)
SET NAMES utf8mb4;
UPDATE oc_module m JOIN oc_module_backup_ref_20261125 b ON b.module_id = m.module_id SET m.setting = b.setting;
DROP TABLE oc_module_backup_ref_20261125;
