-- EGESER PREFABRIK - KVKK AYDINLATMA METNI GUNCELLEME - 20261124
-- Bilgi sayfasi id=12 (/kvkk-aydinlatma-metni): veri kategorisi / toplama yontemi / hukuki sebep tablosu,
-- yurt disina aktarim (Google hizmetleri, WhatsApp), basvuru yontemi, 30 gun yanit suresi ve Kurul'a sikayet hakki eklendi.
-- Sirket bilgileri (unvan, Mersis, sicil, adres, e-posta, telefon) mevcut metinden aynen alindi.
-- TASLAKTIR: yayindan once hukukcuya okutun.
-- Once yedek alir; ikinci kez calistirilirsa CREATE TABLE hatasiyla durur. Geri almak icin: 31_KVKK_AYDINLATMA_GERI_AL.sql
SET NAMES utf8mb4;

CREATE TABLE oc_information_description_backup_kvkk_20261124 AS SELECT * FROM oc_information_description WHERE information_id = 12;

UPDATE oc_information_description SET description = '&lt;p&gt;&lt;em&gt;Son güncelleme: 24.11.2026&lt;/em&gt;&lt;/p&gt;
&lt;h2&gt;Veri Sorumlusunun Kimliği&lt;/h2&gt;
&lt;p&gt;6698 sayılı Kişisel Verilerin Korunması Kanunu (&quot;KVKK&quot;) uyarınca, kişisel verileriniz; veri sorumlusu sıfatıyla &lt;strong&gt;Egeser Konteyner Prefabrik Sanayi ve Ticaret Limited Şirketi&lt;/strong&gt; (&quot;Egeser Prefabrik&quot;) tarafından aşağıda açıklanan kapsam ve amaçlarla işlenebilecektir.&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;&lt;strong&gt;Ticaret Unvanı:&lt;/strong&gt; Egeser Konteyner Prefabrik Sanayi ve Ticaret Limited Şirketi&lt;/li&gt;
&lt;li&gt;&lt;strong&gt;Mersis No:&lt;/strong&gt; 0325096208000001&lt;/li&gt;
&lt;li&gt;&lt;strong&gt;Ticaret Sicil No:&lt;/strong&gt; 208625&lt;/li&gt;
&lt;li&gt;&lt;strong&gt;Adres:&lt;/strong&gt; Çambel Mah. 1558 Sk. No: 28 İç Kapı No: 1 Kemalpaşa / İzmir&lt;/li&gt;
&lt;li&gt;&lt;strong&gt;E-posta:&lt;/strong&gt; web@egeserprefabrik.com.tr&lt;/li&gt;
&lt;li&gt;&lt;strong&gt;Telefon:&lt;/strong&gt; 0531 886 60 90&lt;/li&gt;
&lt;/ul&gt;
&lt;h2&gt;Hangi Verileri, Hangi Yolla ve Hangi Hukuki Sebeple İşliyoruz?&lt;/h2&gt;
&lt;div style=&quot;overflow-x:auto;-webkit-overflow-scrolling:touch&quot;&gt;&lt;table border=&quot;1&quot; cellpadding=&quot;8&quot; style=&quot;border-collapse:collapse;width:100%;min-width:560px&quot;&gt;
&lt;thead&gt;&lt;tr&gt;&lt;th&gt;Veri&lt;/th&gt;&lt;th&gt;Nasıl toplanır?&lt;/th&gt;&lt;th&gt;Hukuki sebep (KVKK m.5)&lt;/th&gt;&lt;/tr&gt;&lt;/thead&gt;
&lt;tbody&gt;
&lt;tr&gt;&lt;td&gt;&lt;strong&gt;Kimlik ve iletişim:&lt;/strong&gt; ad soyad, telefon, e-posta, kurumsal taleplerde firma unvanı&lt;/td&gt;&lt;td&gt;Teklif ve iletişim formları, telefon görüşmeleri, WhatsApp yazışmaları, showroom ziyaretleri&lt;/td&gt;&lt;td&gt;Bir sözleşmenin kurulması veya ifasıyla doğrudan ilgili olması (m.5/2-c); veri sorumlusunun meşru menfaati (m.5/2-f)&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;strong&gt;Talep bilgileri:&lt;/strong&gt; yapı türü, kurulum yeri, yaklaşık metrekare, ilgilendiğiniz model, mesajınız, formu gönderdiğiniz sayfa&lt;/td&gt;&lt;td&gt;Teklif ve iletişim formları&lt;/td&gt;&lt;td&gt;Sözleşmenin kurulması (m.5/2-c); meşru menfaat (m.5/2-f)&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;strong&gt;Müşteri işlem bilgileri:&lt;/strong&gt; sözleşme, sipariş, fatura, ödeme ve teslimat bilgileri&lt;/td&gt;&lt;td&gt;Satış, üretim, sevkiyat ve montaj süreçleri&lt;/td&gt;&lt;td&gt;Sözleşmenin ifası (m.5/2-c); hukuki yükümlülüğün yerine getirilmesi (m.5/2-ç)&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;strong&gt;İşlem güvenliği:&lt;/strong&gt; IP adresi ve sunucu erişim kayıtları (formlarda IP adresi tek yönlü şifrelenerek saklanır)&lt;/td&gt;&lt;td&gt;Siteyi ziyaretinizde otomatik olarak&lt;/td&gt;&lt;td&gt;Hukuki yükümlülük (m.5/2-ç); meşru menfaat (m.5/2-f)&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;&lt;strong&gt;Ölçüm ve pazarlama:&lt;/strong&gt; çerez verileri, ziyaret edilen sayfalar, sizi siteye yönlendiren kaynak veya kampanya&lt;/td&gt;&lt;td&gt;Çerezler ve benzeri teknolojiler, yalnızca çerez bildiriminde onay verirseniz&lt;/td&gt;&lt;td&gt;Açık rıza (m.5/1)&lt;/td&gt;&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;&lt;/div&gt;
&lt;p&gt;Teklif ve iletişim formlarımız talebinizi yanıtlamak için gerekli bilgileri ister; bu bilgiler açık rızaya değil, yukarıdaki hukuki sebeplere dayanılarak işlenir. Formlardaki onay kutusu, bu metni okuduğunuzu teyit etmeniz içindir. Çerezlere verdiğiniz onayı dilediğiniz zaman sayfanın altındaki &quot;Çerez Tercihleri&quot; bağlantısından geri alabilirsiniz.&lt;/p&gt;
&lt;h2&gt;Kişisel Verilerin İşlenme Amaçları&lt;/h2&gt;
&lt;ul&gt;
&lt;li&gt;Talep ve tekliflerinizin değerlendirilmesi, proje ön görüşmelerinin yürütülmesi,&lt;/li&gt;
&lt;li&gt;Tarafınızla iletişime geçilmesi, sorularınızın yanıtlanması,&lt;/li&gt;
&lt;li&gt;Satış ve satış sonrası süreçlerin yürütülmesi,&lt;/li&gt;
&lt;li&gt;Yasal yükümlülüklerin yerine getirilmesi,&lt;/li&gt;
&lt;li&gt;Sitemizin güvenliğinin ve işlerliğinin sağlanması,&lt;/li&gt;
&lt;li&gt;Onay vermeniz hâlinde, ziyaretçi istatistiklerinin ve reklam kampanyalarının sonuçlarının ölçülmesi.&lt;/li&gt;
&lt;/ul&gt;
&lt;h2&gt;Kişisel Verilerin Yurt İçinde Aktarılması&lt;/h2&gt;
&lt;p&gt;Kişisel verileriniz; yasal yükümlülüklerimiz gereği yetkili kamu kurum ve kuruluşlarına, hizmet aldığımız barındırma (hosting), e-posta ve muhasebe hizmeti sağlayıcılarına, KVKK''nın 8. maddesinde belirtilen şartlar çerçevesinde ve yukarıdaki amaçlarla sınırlı olarak aktarılabilmektedir.&lt;/p&gt;
&lt;h2&gt;Kişisel Verilerin Yurt Dışına Aktarılması&lt;/h2&gt;
&lt;ul&gt;
&lt;li&gt;&lt;strong&gt;Google hizmetleri&lt;/strong&gt; (Google Analytics, Google Tag Manager, Google Ads, Google Haritalar): Yalnızca çerez bildiriminde onay vermeniz hâlinde çalışır; bu hizmetler aracılığıyla işlenen veriler Google''ın yurt dışındaki sunucularına aktarılabilir.&lt;/li&gt;
&lt;li&gt;&lt;strong&gt;WhatsApp:&lt;/strong&gt; Bize WhatsApp üzerinden yazmayı tercih etmeniz hâlinde, yazışmalarınız hizmet sağlayıcının yurt dışındaki sunucuları üzerinden iletilir. Bu kanalı kullanmak zorunda değilsiniz; telefon, e-posta veya teklif formu ile de bize ulaşabilirsiniz.&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;Bu aktarımlar KVKK''nın 9. maddesinde öngörülen şartlar çerçevesinde gerçekleştirilir. Teklif ve iletişim formlarıyla gönderdiğiniz bilgiler ile birinci taraf ölçüm verilerimiz (egs_vid, egs_sid) bu hizmetlere aktarılmaz.&lt;/p&gt;
&lt;h2&gt;Saklama Süresi&lt;/h2&gt;
&lt;p&gt;Kişisel verileriniz, işlenme amacının gerektirdiği süre ve ilgili mevzuatta öngörülen saklama ve zamanaşımı süreleri boyunca saklanır. Örneğin fatura ve ticari defterlere ilişkin kayıtlar, Türk Ticaret Kanunu ve Vergi Usul Kanunu''nda öngörülen süreler boyunca tutulur. Bu sürelerin sonunda verileriniz silinir, yok edilir veya anonim hâle getirilir.&lt;/p&gt;
&lt;h2&gt;İlgili Kişinin Hakları&lt;/h2&gt;
&lt;p&gt;KVKK''nın 11. maddesi uyarınca kişisel verilerinize ilişkin; işlenip işlenmediğini öğrenme, işlenmişse buna ilişkin bilgi talep etme, işlenme amacını ve amacına uygun kullanılıp kullanılmadığını öğrenme, yurt içinde veya yurt dışında aktarıldığı üçüncü kişileri bilme, eksik veya yanlış işlenmişse düzeltilmesini isteme, işlenmesini gerektiren sebeplerin ortadan kalkması hâlinde silinmesini veya yok edilmesini isteme, bu işlemlerin aktarılan üçüncü kişilere bildirilmesini isteme, işlenen verilerin münhasıran otomatik sistemlerle analiz edilmesi suretiyle aleyhinize bir sonucun ortaya çıkmasına itiraz etme ve kanuna aykırı işlenmesi sebebiyle zarara uğramanız hâlinde zararın giderilmesini talep etme haklarına sahipsiniz.&lt;/p&gt;
&lt;h2&gt;Başvuru Yöntemi&lt;/h2&gt;
&lt;p&gt;Haklarınıza ilişkin talebinizi; kimliğinizi tespit edici bilgilerle birlikte, yukarıdaki adresimize ıslak imzalı dilekçeyle şahsen veya posta yoluyla, güvenli elektronik imza ya da mobil imza ile imzalayarak veya daha önce bize bildirdiğiniz ve sistemimizde kayıtlı e-posta adresinizden &lt;strong&gt;web@egeserprefabrik.com.tr&lt;/strong&gt; adresine iletebilirsiniz.&lt;/p&gt;
&lt;p&gt;Talebiniz, niteliğine göre en kısa sürede ve en geç 30 gün içinde ücretsiz olarak sonuçlandırılır. İşlemin ayrıca bir maliyet gerektirmesi hâlinde, Kişisel Verileri Koruma Kurulunca belirlenen tarifedeki ücret alınabilir. Başvurunuzun reddedilmesi, verilen cevabı yetersiz bulmanız veya süresinde cevap verilmemesi hâlinde Kişisel Verileri Koruma Kurulu''na şikâyette bulunabilirsiniz.&lt;/p&gt;' WHERE information_id = 12;

-- KONTROL: guncellenen = 1
SELECT COUNT(*) AS guncellenen FROM oc_information_description WHERE information_id = 12 AND description LIKE '%Başvuru Yöntemi%' AND description LIKE '%Yurt Dışına Aktarılması%';
