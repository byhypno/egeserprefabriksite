-- EGESER PREFABRIK - CEREZ POLITIKASI TABLOSU MOBIL DUZELTME - 20261115
-- Bilgi sayfasi id=14: cerez tablosu mobilde ekrana sigmiyordu (son sutun kesiliyordu).
-- Tablo yatay kaydirilabilir bir kutuya alinir. 25_CEREZ_POLITIKASI.sql'den sonra calistirin.
-- Tekrar calistirmak zararsizdir (zaten kutuya alinmissa degisiklik yapmaz).
SET NAMES utf8mb4;

UPDATE oc_information_description
SET description = REPLACE(REPLACE(description,
    '&lt;table border=&quot;1&quot;', '&lt;div style=&quot;overflow-x:auto;-webkit-overflow-scrolling:touch&quot;&gt;&lt;table border=&quot;1&quot;'),
    '&lt;/table&gt;', '&lt;/table&gt;&lt;/div&gt;')
WHERE information_id = 14 AND description NOT LIKE '%overflow-x:auto%';

-- KONTROL: kutulu_tablo = 1
SELECT COUNT(*) AS kutulu_tablo FROM oc_information_description WHERE information_id = 14 AND description LIKE '%overflow-x:auto%';
