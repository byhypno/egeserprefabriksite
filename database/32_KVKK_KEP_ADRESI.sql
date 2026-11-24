-- EGESER PREFABRIK - KVKK METNINE KEP ADRESI - 20261124
-- 30_KVKK_AYDINLATMA.sql'in KEP'siz eski surumunu calistirdiysaniz bunu calistirin.
-- Sirket bilgilerine ve basvuru yontemine KEP adresi eklenir. Tekrar calistirmak zararsizdir.
SET NAMES utf8mb4;

UPDATE oc_information_description
SET description = REPLACE(REPLACE(description,
    '&lt;li&gt;&lt;strong&gt;Telefon:&lt;/strong&gt; 0531 886 60 90&lt;/li&gt;', '&lt;li&gt;&lt;strong&gt;Telefon:&lt;/strong&gt; 0531 886 60 90&lt;/li&gt;
&lt;li&gt;&lt;strong&gt;KEP Adresi:&lt;/strong&gt; egeserprefabrik@hs01.kep.tr&lt;/li&gt;'),
    'posta yoluyla, güvenli elektronik imza', 'posta yoluyla, kayıtlı elektronik posta (KEP) ile &lt;strong&gt;egeserprefabrik@hs01.kep.tr&lt;/strong&gt; adresine, güvenli elektronik imza')
WHERE information_id = 12 AND description NOT LIKE '%hs01.kep.tr%';

-- KONTROL: kep_eklendi = 1
SELECT COUNT(*) AS kep_eklendi FROM oc_information_description WHERE information_id = 12 AND description LIKE '%KEP Adresi%' AND description LIKE '%(KEP) ile%';
