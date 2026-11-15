-- EGESER PREFABRIK - ONLINE SATIS AYARLARINI GERI AL - 20261115
SET NAMES utf8mb4;
UPDATE oc_setting s JOIN oc_setting_backup_20261115 b ON b.setting_id = s.setting_id SET s.value = b.value;
DROP TABLE oc_setting_backup_20261115;
