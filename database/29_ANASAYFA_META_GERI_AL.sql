-- EGESER PREFABRIK - ANA SAYFA BASLIK VE ACIKLAMAYI GERI AL - 20261124
SET NAMES utf8mb4;
UPDATE oc_setting s JOIN oc_setting_backup_meta_20261124 b ON b.setting_id = s.setting_id SET s.value = b.value;
DROP TABLE oc_setting_backup_meta_20261124;
