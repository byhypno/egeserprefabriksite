-- EGESER PREFABRIK - "Prefabrik Ev Fiyatlari 2026" blog kapagi PNG -> JPEG - 20261030
-- ONCE image/catalog/blog/prefabrik-ev-fiyatlari.jpg dosyasini sunucuya yukleyin (yukleme ZIP'inde var).
-- Eski PNG (2,4 MB) sunucuda kalabilir; geri almak icin asagidaki GERI AL satirini calistirin.
SET NAMES utf8mb4;

UPDATE oc_egeser_blog_post
SET image = 'catalog/blog/prefabrik-ev-fiyatlari.jpg'
WHERE blog_id = 6 AND image = 'catalog/blog/prefabrik-ev-fiyatlari.png';

-- KONTROL: 1 olmali
SELECT COUNT(*) AS jpeg_kapak FROM oc_egeser_blog_post WHERE blog_id = 6 AND image = 'catalog/blog/prefabrik-ev-fiyatlari.jpg';

-- GERI AL (gerekirse yalnizca bu satiri calistirin):
-- UPDATE oc_egeser_blog_post SET image = 'catalog/blog/prefabrik-ev-fiyatlari.png' WHERE blog_id = 6;
