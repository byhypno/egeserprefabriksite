-- EGESER PREFABRIK - 249 m2 OFIS PLAN OZETINE DIS OLCU - 20261125
-- Yeni plan gorseliyle (toplam 27,71 m) olculer tutarli hale geldi; plan ozetine dis olcu eklenir.
-- 37_PLAN_OZETI.sql'den SONRA calistirin. Tekrar calistirmak zararsizdir.
SET NAMES utf8mb4;

UPDATE oc_product_description
SET description = REPLACE(description, '<li><strong>Bölümler:</strong> 9 ofis odası, yönetici odası, toplantı odası, mutfak, 4 WC ve veranda</li>', '<li><strong>Bölümler:</strong> 9 ofis odası, yönetici odası, toplantı odası, mutfak, 4 WC ve veranda</li><li><strong>Dış ölçü:</strong> 27,71 × 8,99 m</li>'),
    meta_description = '249 m² prefabrik ofis binası: 9 ofis odası, yönetici odası ve toplantı odası, 27,71 × 8,99 m. Kat planını inceleyin, teklif alın.'
WHERE product_id = 176 AND description LIKE '%eg-plan-ozeti%' AND description NOT LIKE '%27,71 × 8,99%';

-- KONTROL: olcu_eklendi = 1
SELECT COUNT(DISTINCT product_id) AS olcu_eklendi FROM oc_product_description WHERE product_id = 176 AND description LIKE '%27,71 × 8,99 m%';
