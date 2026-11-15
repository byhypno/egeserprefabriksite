-- EGESER PREFABRIK - CEREZ POLITIKASINI GERI AL - 20261115
SET NAMES utf8mb4;
UPDATE oc_information_description p JOIN oc_information_description_backup_cerez_20261115 b ON b.information_id = p.information_id AND b.language_id = p.language_id SET p.description = b.description;
DROP TABLE oc_information_description_backup_cerez_20261115;
