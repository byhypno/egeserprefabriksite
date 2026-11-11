-- EGESER PREFABRIK - ESKI ADRES YONLENDIRMELERI - GERI AL - 20261111
SET NAMES utf8mb4;
UPDATE oc_egeser_redirect r JOIN oc_egeser_redirect_backup_20261111 b ON b.redirect_id = r.redirect_id SET r.status = b.status, r.target_url = b.target_url, r.note = b.note, r.date_modified = b.date_modified;
DELETE FROM oc_egeser_redirect WHERE source = 'Denetim 2026-11';
SELECT 'Geri alma tamamlandi' AS sonuc;
