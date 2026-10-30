-- EGESER PREFABRIK - VERITABANI DENETIM DUZELTMELERI (A LISTESI) - 20261030
-- Once yedek tablolar olusturur, sonra yalnizca asagidaki kayitlari gunceller.
-- Geri almak icin: 08_VERITABANI_DUZELTME_GERI_AL.sql
SET NAMES utf8mb4;

-- 0) YEDEKLER
-- Dosya ikinci kez calistirilirsa asagidaki CREATE TABLE 'tablo zaten var' hatasiyla durur;
-- boylece ilk yedek (orijinal veriler) asla ezilmez.
CREATE TABLE oc_egeser_setting_backup_20261030 AS SELECT * FROM oc_setting WHERE store_id = 0 AND `key` IN ('config_product_count','config_review_status','config_review_guest','config_meta_description','config_account_id','config_checkout_id','config_affiliate_id');
CREATE TABLE oc_egeser_product_description_backup_20261030 AS SELECT * FROM oc_product_description WHERE language_id = 2 AND product_id IN (132,136,137,138,139,140,141,143,147,148,149,151,152,153,154,155,156,157,158,160,161,162,163,164,165,167,168,169,170,171,172,173,176,177,179,181,183);
CREATE TABLE oc_egeser_product_model_backup_20261030 AS SELECT product_id, model FROM oc_product WHERE product_id = 167;
CREATE TABLE oc_egeser_redirect_backup_20261030 AS SELECT * FROM oc_egeser_redirect WHERE redirect_id IN (14,21,30,31);
CREATE TABLE oc_egeser_blog_post_meta_backup_20261030 AS SELECT blog_id, meta_title, meta_description FROM oc_egeser_blog_post WHERE blog_id IN (1,3,5,6,8,9);

-- 1-2) Kategori urun sayisi "(0)" ve kullanilmayan yorum sistemi
UPDATE oc_setting SET `value` = '0' WHERE store_id = 0 AND `key` IN ('config_product_count','config_review_status','config_review_guest');

-- 3) Ana sayfa meta aciklamasi (153 karakter)
UPDATE oc_setting SET `value` = 'İzmir Kemalpaşa''da üretim yapan Egeser Prefabrik; tek katlı ve dubleks prefabrik evler ile kurumsal yapılar için projelendirme, sevkiyat ve montaj sunar.' WHERE store_id = 0 AND `key` = 'config_meta_description';

-- 10) Kayit / odeme / ortaklik sozlesme linki -> Gizlilik Politikasi (information_id 13)
UPDATE oc_setting SET `value` = '13' WHERE store_id = 0 AND `key` IN ('config_account_id','config_checkout_id','config_affiliate_id');

-- 4-6) Urun meta basliklari ve aciklamalari
UPDATE oc_product_description SET meta_title = '60 m² Tek Katlı Prefabrik Ev | Geniş Verandalı 2+1', meta_description = '60 m² tek katlı prefabrik ev (EGE-108). 2+1 plan, 12,68 m² geniş veranda, 20,08 m² mutfak+salon, banyo/WC ve 2 yatak odası. Teklif alın.' WHERE language_id = 2 AND product_id = 132;
UPDATE oc_product_description SET meta_description = '64 m² tek katlı prefabrik ev (EGE-110). 2+1 plan, 7 m² veranda, 19 m² salon, 8 m² mutfak, 12 + 10 m² odalar, 5 m² banyo/WC. Teklif alın.' WHERE language_id = 2 AND product_id = 136;
UPDATE oc_product_description SET meta_title = '69 m² Tek Katlı Prefabrik Ev | Egeser Prefabrik', meta_description = '69 m² tek katlı prefabrik ev. 2+1 plan, 21,68 m² salon, 6,12 m² mutfak, 13,93 + 9,25 m² odalar, 7,15 m² veranda, banyo/WC. Teklif alın.' WHERE language_id = 2 AND product_id = 137;
UPDATE oc_product_description SET meta_description = '74 m² tek katlı prefabrik ev. 2+1 plan, 10 m² veranda, 17 m² salon, 10 m² mutfak, 12 + 12 m² yatak odaları ve hol düzeni. Teklif alın.' WHERE language_id = 2 AND product_id = 138;
UPDATE oc_product_description SET meta_description = '101 m² tek katlı verandalı 3+1 prefabrik ev. 23,28 m² salon, 9,12 m² mutfak, üç yatak odası, 6,05 m² banyo/WC, 11,25 m² veranda.' WHERE language_id = 2 AND product_id = 139;
UPDATE oc_product_description SET meta_description = '109 m² tek katlı verandalı 3+1 prefabrik ev. 31,13 m² salon, 7,59 m² mutfak, üç yatak odası, 12 m² antre ve 8,49 m² veranda.' WHERE language_id = 2 AND product_id = 140;
UPDATE oc_product_description SET meta_description = '105 m² tek katlı verandalı 3+1 prefabrik ev. 24,49 m² salon, 10,80 m² mutfak, 16,28 + 13,54 + 10,66 m² yatak odaları ve banyo/WC.' WHERE language_id = 2 AND product_id = 141;
UPDATE oc_product_description SET meta_title = '32 m² Tek Katlı Prefabrik Ev | Egeser Prefabrik', meta_description = '32 m² 1+1 tek katlı prefabrik ev (EGE-101). 7,075×4,575 m ölçü, 3 m² veranda, 3,5 m² banyo/WC. İzmir ve Ege Bölgesi''nde kurulum. Teklif alın.' WHERE language_id = 2 AND product_id = 143;
UPDATE oc_product_description SET meta_description = '52 m² tek katlı verandalı 2+1 prefabrik ev. 8,95×5,83 m ölçü, 6,5 m² veranda, 18 m² salon-mutfak, 2 yatak odası, 3,5 m² banyo/WC.' WHERE language_id = 2 AND product_id = 147;
UPDATE oc_product_description SET meta_description = '78 m² tek katlı 2+1 prefabrik ev. Geniş salon, 2 yatak odası, veranda, antre ve banyo/WC. Anahtar teslim seçenekleriyle teklif alın.' WHERE language_id = 2 AND product_id = 148;
UPDATE oc_product_description SET meta_description = '80 m² tek katlı 2+1 prefabrik ev. 22,28 m² geniş veranda, 15,49 m² salon, 11,59 m² mutfak, 13,54 + 7,70 m² odalar ve banyo/WC.' WHERE language_id = 2 AND product_id = 149;
UPDATE oc_product_description SET meta_description = '138 m² tek katlı verandalı 3+1 prefabrik ev. 26 m² salon, 18 m² mutfak, 14 m² hol, 14 m² veranda, üç yatak odası ve 6 m² banyo.' WHERE language_id = 2 AND product_id = 151;
UPDATE oc_product_description SET meta_description = '142 m² tek katlı verandalı 4+1 prefabrik ev. 29,22 m² salon, 10,60 m² mutfak, 14,26 m² veranda, 4 yatak odası ve 2 banyo/WC.' WHERE language_id = 2 AND product_id = 152;
UPDATE oc_product_description SET meta_title = '80 m² Dubleks Prefabrik Ev | Egeser Prefabrik', meta_description = '80 m² dubleks prefabrik ev (EGE-200). Kompakt taban oturumlu iki katlı aile evi; oda ve ıslak hacim yerleşimi projeye göre planlanır.' WHERE language_id = 2 AND product_id = 153;
UPDATE oc_product_description SET meta_title = '92 m² Dubleks Prefabrik Ev | Egeser Prefabrik', meta_description = '92 m² dubleks prefabrik ev (EGE-201). Katlar arasında sosyal ve özel alan ayrımı sunan, orta ölçekli aileler için iki katlı yaşam planı.' WHERE language_id = 2 AND product_id = 154;
UPDATE oc_product_description SET meta_title = '122 m² Dubleks Prefabrik Ev | Egeser Prefabrik', meta_description = '122 m² dubleks prefabrik ev (EGE-202). Çocuk odası, çalışma alanı ve misafir odasını katlara ayıran geniş aile yerleşimi. Teklif alın.' WHERE language_id = 2 AND product_id = 155;
UPDATE oc_product_description SET meta_title = '131 m² Dubleks Prefabrik Ev | Egeser Prefabrik', meta_description = '131 m² dubleks prefabrik ev (EGE-203). Günlük yaşam, çalışma ve misafir alanlarını iki kata dengeli dağıtan aile planı. Teklif alın.' WHERE language_id = 2 AND product_id = 156;
UPDATE oc_product_description SET meta_title = '149 m² Dubleks Prefabrik Ev | Egeser Prefabrik', meta_description = '149 m² dubleks prefabrik ev (EGE-204). Kalabalık aileler ve çok amaçlı oda ihtiyacı için geniş, iki katlı yaşam alanı. Teklif alın.' WHERE language_id = 2 AND product_id = 157;
UPDATE oc_product_description SET meta_title = '155 m² Dubleks Prefabrik Ev | Egeser Prefabrik', meta_description = '155 m² dubleks prefabrik ev (EGE-205). Serinin en geniş modeli; çok odalı, birden fazla banyolu aile yaşamı planı. Teklif alın.' WHERE language_id = 2 AND product_id = 158;
UPDATE oc_product_description SET meta_title = '30 m² Prefabrik Ofis Binası | Egeser Prefabrik', meta_description = '30 m² prefabrik ofis: satış, saha ve şantiye ofisi için kompakt çalışma alanı. Projelendirme, Kemalpaşa''da üretim, sevkiyat ve montaj.' WHERE language_id = 2 AND product_id = 160;
UPDATE oc_product_description SET meta_title = '39 m² Prefabrik Ofis Binası | Egeser Prefabrik', meta_description = '39 m² prefabrik ofis: küçük ekipler için şantiye ve saha ofisi. Plan ihtiyaca göre belirlenir; üretim, sevkiyat ve montaj tek elden.' WHERE language_id = 2 AND product_id = 161;
UPDATE oc_product_description SET meta_title = '50 m² Prefabrik Ofis Binası | Egeser Prefabrik', meta_description = '50 m² prefabrik ofis: küçük ekipler için birden fazla çalışma odalı plan. Projelendirme, Kemalpaşa''da üretim, sevkiyat ve montaj.' WHERE language_id = 2 AND product_id = 162;
UPDATE oc_product_description SET meta_title = '65 m² Prefabrik Ofis Binası | Egeser Prefabrik', meta_description = '65 m² prefabrik ofis: departmanlı kullanıma uygun çalışma ve yönetici odaları. Plan, üretim, sevkiyat ve montaj tek elden. Teklif alın.' WHERE language_id = 2 AND product_id = 163;
UPDATE oc_product_description SET meta_title = '78 m² Prefabrik Ofis Binası | Egeser Prefabrik', meta_description = '78 m² prefabrik ofis binası: orta ölçekli ekipler için çok odalı çalışma alanı. Projelendirme, üretim, sevkiyat ve montaj. Teklif alın.' WHERE language_id = 2 AND product_id = 164;
UPDATE oc_product_description SET meta_title = '82 m² Prefabrik Ofis Binası | Egeser Prefabrik', meta_description = '82 m² prefabrik ofis binası: fonksiyonel oda planlamasıyla ekip ve yönetim alanları. Projelendirme, üretim ve montaj. Teklif alın.' WHERE language_id = 2 AND product_id = 165;
UPDATE oc_product_description SET meta_title = '101 m² Prefabrik Ofis Binası | Egeser Prefabrik', meta_description = '101 m² prefabrik ofis binası: toplantı salonu ve yönetici odaları içeren idari yapı. Projelendirme, üretim, sevkiyat ve montaj.' WHERE language_id = 2 AND product_id = 167;
UPDATE oc_product_description SET meta_title = '114 m² Prefabrik Ofis Binası | Egeser Prefabrik', meta_description = '114 m² prefabrik ofis ve şantiye idare binası: kalabalık ekipler için çok odalı plan. Projelendirme, üretim ve montaj. Teklif alın.' WHERE language_id = 2 AND product_id = 168;
UPDATE oc_product_description SET meta_title = '125 m² Prefabrik Ofis Binası | Egeser Prefabrik', meta_description = '125 m² prefabrik ofis binası: kurumsal kullanım için çok sayıda çalışma odası. Proje bazlı planlama, üretim ve montaj. Teklif alın.' WHERE language_id = 2 AND product_id = 169;
UPDATE oc_product_description SET meta_title = '136 m² Prefabrik Ofis Binası | Egeser Prefabrik', meta_description = '136 m² prefabrik ofis binası: toplantı alanı ve ofis odalarıyla geniş kullanım. Projelendirme, üretim, sevkiyat ve montaj. Teklif alın.' WHERE language_id = 2 AND product_id = 170;
UPDATE oc_product_description SET meta_title = '147 m² Prefabrik Ofis Binası | Egeser Prefabrik', meta_description = '147 m² prefabrik yönetim binası: şantiye ve fabrika sahaları için kurumsal çalışma alanı. Projelendirme, üretim ve montaj. Teklif alın.' WHERE language_id = 2 AND product_id = 171;
UPDATE oc_product_description SET meta_title = '158 m² Prefabrik Ofis Binası | Egeser Prefabrik', meta_description = '158 m² prefabrik ofis binası: geniş yönetim ekipleri için çok birimli plan. Projelendirme, Kemalpaşa''da üretim, sevkiyat ve montaj.' WHERE language_id = 2 AND product_id = 172;
UPDATE oc_product_description SET meta_title = '169 m² Prefabrik Ofis Binası | Egeser Prefabrik', meta_description = '169 m² prefabrik ofis binası: fonksiyonel yerleşim planıyla çok birimli kurumsal kullanım. Projelendirme, üretim ve montaj. Teklif alın.' WHERE language_id = 2 AND product_id = 173;
UPDATE oc_product_description SET meta_title = '249 m² Prefabrik Ofis Binası | Egeser Prefabrik', meta_description = '249 m² prefabrik ofis ve şantiye kamp binası: büyük ekipler için geniş idari yapı. Proje bazlı planlama, üretim ve montaj. Teklif alın.' WHERE language_id = 2 AND product_id = 176;
UPDATE oc_product_description SET meta_title = '60 m² Prefabrik Yemekhane Binası | Egeser Prefabrik', meta_description = '60 m² prefabrik yemekhane: küçük ve orta ölçekli işletmeler için hijyenik toplu yemek alanı. Projelendirme, üretim ve montaj. Teklif alın.' WHERE language_id = 2 AND product_id = 177;
UPDATE oc_product_description SET meta_title = '103 m² Prefabrik Yemekhane Binası | Egeser Prefabrik', meta_description = '103 m² prefabrik yemekhane binası: orta ölçekli personel kadrosu için ferah oturma düzeni. Projelendirme, üretim ve montaj. Teklif alın.' WHERE language_id = 2 AND product_id = 179;
UPDATE oc_product_description SET meta_title = '159 m² Prefabrik Yemekhane Binası | Egeser Prefabrik', meta_description = '159 m² prefabrik yemekhane binası: kalabalık personeli olan işletmeler için ferah ve hijyenik toplu yemek alanı. Teklif alın.' WHERE language_id = 2 AND product_id = 181;
UPDATE oc_product_description SET meta_title = '237 m² Prefabrik Yemekhane Binası | Egeser Prefabrik', meta_description = '237 m² prefabrik yemekhane binası: yüksek personel yoğunluğu olan tesisler için geniş ve fonksiyonel toplu yemek alanı. Teklif alın.' WHERE language_id = 2 AND product_id = 183;

-- 7) 101 m2 ofis urun kodu
UPDATE oc_product SET model = 'PRF-OFIS-101M2' WHERE product_id = 167 AND model = 'PRF-OFIS-100M2';

-- 8) Yonlendirme zincirleri: dogrudan son adrese
UPDATE oc_egeser_redirect SET target_url = '/109-m2-tek-katli-prefabrik-ev' WHERE redirect_id = 21 AND target_url = '/109-m-tek-katli-prefabrik-ev';
UPDATE oc_egeser_redirect SET target_url = '/80-m2-tek-katli-prefabrik-ev'  WHERE redirect_id = 30 AND target_url = '/80-m-tek-katli-prefabrik-ev';
UPDATE oc_egeser_redirect SET target_url = '/123-m2-tek-katli-prefabrik-ev' WHERE redirect_id = 31 AND target_url = '/123-m-tek-katli-prefabrik-ev';

-- 9) Pasif urune (404) giden yonlendirme -> Tek katli evler kategorisi
UPDATE oc_egeser_redirect SET target_url = '/tek-katli-prefabrik-evler' WHERE redirect_id = 14 AND target_url = '/96-m2-tek-katli-prefabrik-ev';

-- 11) Blog meta bilgileri
UPDATE oc_egeser_blog_post SET meta_title = 'Prefabrik Ev Rehberi: Avantajlar, Dezavantajlar, Kullanım' WHERE blog_id = 1;
UPDATE oc_egeser_blog_post SET meta_title = 'Deprem Yönetmeliği ve Prefabrik Evler | Güvenli Ev Rehberi', meta_description = 'Deprem yönetmeliği (TBDY) çerçevesinde prefabrik ev seçerken proje, zemin, temel, montaj ve standartlarda dikkat edilmesi gerekenler.' WHERE blog_id = 3;
UPDATE oc_egeser_blog_post SET meta_title = 'Çelik Ev mi Prefabrik Ev mi? Detaylı Karşılaştırma' WHERE blog_id = 5;
UPDATE oc_egeser_blog_post SET meta_title = 'Prefabrik Ev Fiyatları 2026 | m² Maliyet Rehberi' WHERE blog_id = 6;
UPDATE oc_egeser_blog_post SET meta_description = 'Prefabrik ev montaj süreci adım adım: ihtiyaç analizi, projelendirme, fabrika üretimi, sevkiyat, saha montajı ve teslim aşamaları.' WHERE blog_id = 8;
UPDATE oc_egeser_blog_post SET meta_description = 'Kredi kartına 12 taksite kadar prefabrik ev ödeme seçenekleri, peşinat ve doğru ödeme planı oluşturma hakkında bilmeniz gerekenler.' WHERE blog_id = 9;

-- KONTROL (beklenen degerler kontrol listesinde)
SELECT
  (SELECT COUNT(*) FROM oc_setting WHERE store_id = 0 AND `key` IN ('config_product_count','config_review_status','config_review_guest') AND `value` = '0') AS ayar_kapatildi_3,
  (SELECT COUNT(*) FROM oc_setting WHERE store_id = 0 AND `key` IN ('config_account_id','config_checkout_id','config_affiliate_id') AND `value` = '13') AS sozlesme_linki_3,
  (SELECT COUNT(*) FROM oc_product_description WHERE language_id = 2 AND product_id IN (132,136,137,138,139,140,141,143,147,148,149,151,152,153,154,155,156,157,158,160,161,162,163,164,165,167,168,169,170,171,172,173,176,177,179,181,183) AND CHAR_LENGTH(meta_title) <= 60 AND CHAR_LENGTH(meta_description) <= 160) AS urun_meta_uygun_37,
  (SELECT COUNT(*) FROM oc_egeser_redirect WHERE redirect_id IN (14,21,30,31) AND target_url IN ('/109-m2-tek-katli-prefabrik-ev','/80-m2-tek-katli-prefabrik-ev','/123-m2-tek-katli-prefabrik-ev','/tek-katli-prefabrik-evler')) AS yonlendirme_4,
  (SELECT COUNT(*) FROM oc_egeser_blog_post WHERE blog_id IN (1,3,5,6,8,9) AND CHAR_LENGTH(meta_title) <= 60 AND CHAR_LENGTH(meta_description) BETWEEN 110 AND 160) AS blog_meta_uygun_6,
  (SELECT model FROM oc_product WHERE product_id = 167) AS urun_kodu_167;
