-- EGESER PREFABRIK - KVKK AYDINLATMA METNINI GERI AL - 20261124
SET NAMES utf8mb4;
UPDATE oc_information_description p JOIN oc_information_description_backup_kvkk_20261124 b ON b.information_id = p.information_id AND b.language_id = p.language_id SET p.description = b.description;
DROP TABLE oc_information_description_backup_kvkk_20261124;
