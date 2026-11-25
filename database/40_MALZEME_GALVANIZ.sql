-- EGESER PREFABRIK - MALZEME YAZISINA GALVANIZ BILGISI - 20261125
-- /blog/prefabrik-ev-malzemeleri: tasiyici profiller ve ara birlesim elemanlarinin galvanizli oldugu (kullanici teyidi) eklenir.
-- Malzeme tablosuna "Tasiyici sistem" satiri, tasiyici sistem bolumune bir paragraf, SSS ilk cevabina bir ifade.
-- 33_BLOG_DEZAVANTAJ_MALZEME.sql'den SONRA calistirin. Tekrar calistirmak zararsizdir.
SET NAMES utf8mb4;

UPDATE oc_egeser_blog_post
SET description = REPLACE(REPLACE(REPLACE(description, '&lt;tr&gt;&lt;td&gt;Duvar ve ısı yalıtımı&lt;/td&gt;&lt;td&gt;Betopan EPS press panel, 10 cm&lt;/td&gt;&lt;/tr&gt;', '&lt;tr&gt;&lt;td&gt;Taşıyıcı sistem&lt;/td&gt;&lt;td&gt;Galvanizli çelik profil karkas, galvanizli ara birleşim elemanları&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Duvar ve ısı yalıtımı&lt;/td&gt;&lt;td&gt;Betopan EPS press panel, 10 cm&lt;/td&gt;&lt;/tr&gt;'), '&lt;p&gt;Çeliğin en büyük düşmanı uzun süre temas eden nemdir. Bu yüzden karkasın korozyona karşı korunması ve çatı ile cephe detaylarının suyu içeri almayacak şekilde çözülmesi, malzemenin kendisi kadar önemlidir.&lt;/p&gt;', '&lt;p&gt;Çeliğin en büyük düşmanı uzun süre temas eden nemdir. Bu yüzden karkasın korozyona karşı korunması ve çatı ile cephe detaylarının suyu içeri almayacak şekilde çözülmesi, malzemenin kendisi kadar önemlidir.&lt;/p&gt;
&lt;p&gt;Egeser modellerinde taşıyıcı profiller ve ara birleşim elemanları &lt;strong&gt;galvanizlidir&lt;/strong&gt;. Galvanizleme, çeliğin yüzeyini çinkoyla kaplar; çinko tabakası nemle çeliğin arasına girerek paslanmayı geciktirir.&lt;/p&gt;'), 'Egeser modellerinde duvarlar 10 cm Betopan EPS press panel, çatı trapez sactır.&lt;/p&gt;', 'Egeser modellerinde taşıyıcı karkas ve ara birleşim elemanları galvanizli çelik, duvarlar 10 cm Betopan EPS press panel, çatı trapez sactır.&lt;/p&gt;'),
    meta_description = 'Prefabrik ev malzemeleri: galvanizli çelik karkas, Betopan EPS panel, trapez sac çatı, ısıcam ve tesisat. Egeser modellerindeki standart malzeme listesi.',
    date_modified = NOW()
WHERE slug = 'prefabrik-ev-malzemeleri' AND description NOT LIKE '%Galvanizli çelik profil karkas%';

-- KONTROL: galvaniz = 1 (tablo + paragraf + SSS eklenmis)
SELECT COUNT(*) AS galvaniz FROM oc_egeser_blog_post WHERE slug = 'prefabrik-ev-malzemeleri' AND description LIKE '%Galvanizli çelik profil karkas%' AND description LIKE '%galvanizlidir%' AND description LIKE '%ara birleşim elemanları galvanizli çelik%';
