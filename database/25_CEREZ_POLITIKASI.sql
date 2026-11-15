-- EGESER PREFABRIK - CEREZ POLITIKASI GUNCELLEME - 20261115
-- Bilgi sayfasi id=14 (/cerez-politikasi): birinci taraf olcum cerezleri (egs_vid, egs_sid), IDE, Google Haritalar,
-- yurt disina aktarim ve onay mekanizmasinin guncel isleyisi eklendi. TASLAKTIR: yayindan once hukukcuya okutun.
-- Once yedek alir; ikinci kez calistirilirsa CREATE TABLE hatasiyla durur. Geri almak icin: 26_CEREZ_POLITIKASI_GERI_AL.sql
SET NAMES utf8mb4;

CREATE TABLE oc_information_description_backup_cerez_20261115 AS SELECT * FROM oc_information_description WHERE information_id = 14;

UPDATE oc_information_description SET description = '&lt;p&gt;&lt;em&gt;Son güncelleme: 15.11.2026&lt;/em&gt;&lt;/p&gt;
&lt;h2&gt;Çerez (Cookie) Nedir?&lt;/h2&gt;
&lt;p&gt;Çerezler, ziyaret ettiğiniz internet siteleri tarafından tarayıcınız aracılığıyla cihazınıza kaydedilen küçük metin dosyalarıdır. egeserprefabrik.com.tr (&quot;Site&quot;) olarak, Site''nin düzgün çalışmasını sağlamak, ziyaretçi istatistiklerini ölçmek ve reklam kampanyalarımızın sonuçlarını değerlendirmek amacıyla çerezler ve benzeri teknolojiler kullanmaktayız. Site''nin sahibi ve veri sorumlusu Egeser Konteyner Prefabrik Sanayi ve Ticaret Limited Şirketi''dir.&lt;/p&gt;

&lt;h2&gt;Onay Mekanizması&lt;/h2&gt;
&lt;p&gt;Siteyi ilk ziyaretinizde ekranın altında bir çerez bildirimi görürsünüz. &lt;strong&gt;&quot;Kabul Et&quot;&lt;/strong&gt; seçeneğiyle ölçüm, analitik ve pazarlama çerezlerine izin verebilir; &lt;strong&gt;&quot;Sadece Zorunlu&quot;&lt;/strong&gt; seçeneğiyle yalnızca Site''nin çalışması için gerekli çerezlerin kullanılmasını sağlayabilirsiniz.&lt;/p&gt;
&lt;p&gt;Zorunlu olanlar dışındaki çerezler ve aşağıda açıklanan ziyaretçi ölçüm sistemi, siz &quot;Kabul Et&quot; seçeneğini işaretlemeden çalışmaz. Tercihiniz 180 gün boyunca hatırlanır. Sayfanın alt kısmındaki &lt;strong&gt;&quot;Çerez Tercihleri&quot;&lt;/strong&gt; bağlantısıyla tercihinizi istediğiniz zaman değiştirebilirsiniz. Onayınızı geri aldığınızda birinci taraf ölçüm çerezlerimiz (egs_vid, egs_sid) bir sonraki sayfa görüntülemesinde silinir; Google''a ait çerezleri tarayıcı ayarlarınızdan silebilirsiniz.&lt;/p&gt;

&lt;h2&gt;Kullanılan Çerez Türleri&lt;/h2&gt;
&lt;ul&gt;
&lt;li&gt;&lt;strong&gt;Zorunlu Çerezler:&lt;/strong&gt; Site''nin temel işlevlerinin (sayfa gezinme, form gönderimi ve güvenliği, dil/para birimi tercihi, çerez onay tercihinizin hatırlanması gibi) çalışması için gereklidir ve onay gerektirmez.&lt;/li&gt;
&lt;li&gt;&lt;strong&gt;Ölçüm Çerezleri (birinci taraf):&lt;/strong&gt; Site''yi hangi kaynaktan (arama motoru, reklam, sosyal medya vb.) ziyaret ettiğinizi, hangi sayfaları görüntülediğinizi ve teklif/iletişim taleplerinin hangi ziyaretten geldiğini ölçmemizi sağlar. Bu bilgiler yalnızca bizim sunucumuzda tutulur ve üçüncü kişilerle paylaşılmaz. Yalnızca onayınızla çalışır.&lt;/li&gt;
&lt;li&gt;&lt;strong&gt;Analitik Çerezler:&lt;/strong&gt; Google Analytics ve Google Tag Manager ile, Site''nin nasıl kullanıldığını anlamamıza ve geliştirmemize yardımcı olur. Yalnızca onayınızla çalışır.&lt;/li&gt;
&lt;li&gt;&lt;strong&gt;Pazarlama Çerezleri:&lt;/strong&gt; Google Ads üzerinden yürütülen kampanyaların performansını ölçmek ve ilgili reklamların gösterilmesi amacıyla kullanılır. Yalnızca onayınızla çalışır.&lt;/li&gt;
&lt;/ul&gt;

&lt;h2&gt;Birinci Taraf Ziyaretçi Ölçümü&lt;/h2&gt;
&lt;p&gt;Onay vermeniz hâlinde Site, ziyaretinizi tanımak için rastgele üretilmiş bir ziyaretçi kimliği (egs_vid) ve oturum kimliği (egs_sid) kullanır. Bu kimliklerle birlikte; görüntülenen sayfalar, ziyaretin geldiği kaynak ve kampanya bilgileri (ör. UTM parametreleri, Google/Meta reklam tıklama kimlikleri), geldiğiniz sitenin adresi, cihaz, işletim sistemi ve tarayıcı türü ile IP adresinizden tahmini il bilgisi kaydedilir. IP adresinizin kendisi saklanmaz. Bir teklif veya iletişim formu gönderdiğinizde, bu ziyaret bilgileri talebinizle eşleştirilir; böylece hangi kanalın gerçek talep getirdiğini ölçebiliriz. Onay vermezseniz bu kayıt tutulmaz, formlarınız ise her durumda normal şekilde iletilir.&lt;/p&gt;

&lt;h2&gt;Kullanılan Çerezler&lt;/h2&gt;
&lt;table border=&quot;1&quot; cellpadding=&quot;6&quot; cellspacing=&quot;0&quot; style=&quot;border-collapse:collapse;width:100%&quot;&gt;
&lt;thead&gt;
&lt;tr&gt;
&lt;th&gt;Çerez&lt;/th&gt;
&lt;th&gt;Sağlayıcı&lt;/th&gt;
&lt;th&gt;Tür&lt;/th&gt;
&lt;th&gt;Amaç&lt;/th&gt;
&lt;th&gt;Saklama Süresi&lt;/th&gt;
&lt;/tr&gt;
&lt;/thead&gt;
&lt;tbody&gt;
&lt;tr&gt;&lt;td&gt;PHPSESSID, default&lt;/td&gt;&lt;td&gt;egeserprefabrik.com.tr&lt;/td&gt;&lt;td&gt;Zorunlu&lt;/td&gt;&lt;td&gt;Oturum yönetimi ve form güvenliği&lt;/td&gt;&lt;td&gt;Oturum süresince&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;egeser_consent&lt;/td&gt;&lt;td&gt;egeserprefabrik.com.tr&lt;/td&gt;&lt;td&gt;Zorunlu&lt;/td&gt;&lt;td&gt;Çerez tercihinizin hatırlanması&lt;/td&gt;&lt;td&gt;180 gün&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;language, currency&lt;/td&gt;&lt;td&gt;egeserprefabrik.com.tr&lt;/td&gt;&lt;td&gt;Zorunlu&lt;/td&gt;&lt;td&gt;Dil ve para birimi tercihi&lt;/td&gt;&lt;td&gt;30 gün&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;egs_vid&lt;/td&gt;&lt;td&gt;egeserprefabrik.com.tr&lt;/td&gt;&lt;td&gt;Ölçüm&lt;/td&gt;&lt;td&gt;Ziyaretçinin tekrar gelişlerini tanıma, ziyaret kaynağı ve taleplerin ölçümü&lt;/td&gt;&lt;td&gt;400 gün&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;egs_sid&lt;/td&gt;&lt;td&gt;egeserprefabrik.com.tr&lt;/td&gt;&lt;td&gt;Ölçüm&lt;/td&gt;&lt;td&gt;Ziyaret oturumunun ölçümü&lt;/td&gt;&lt;td&gt;30 dakika hareketsizlik&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;_ga, _ga_*&lt;/td&gt;&lt;td&gt;Google (Google Analytics)&lt;/td&gt;&lt;td&gt;Analitik&lt;/td&gt;&lt;td&gt;Ziyaretçi istatistikleri&lt;/td&gt;&lt;td&gt;13 aya kadar&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;_gid&lt;/td&gt;&lt;td&gt;Google (Google Analytics)&lt;/td&gt;&lt;td&gt;Analitik&lt;/td&gt;&lt;td&gt;Ziyaretçi ayrımı&lt;/td&gt;&lt;td&gt;24 saat&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;_gcl_au&lt;/td&gt;&lt;td&gt;Google (Google Ads)&lt;/td&gt;&lt;td&gt;Pazarlama&lt;/td&gt;&lt;td&gt;Dönüşüm/reklam ölçümü&lt;/td&gt;&lt;td&gt;90 güne kadar&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;IDE&lt;/td&gt;&lt;td&gt;Google (doubleclick.net)&lt;/td&gt;&lt;td&gt;Pazarlama&lt;/td&gt;&lt;td&gt;Reklam gösterimi ve ölçümü&lt;/td&gt;&lt;td&gt;13 aya kadar&lt;/td&gt;&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;
&lt;p&gt;Google tarafından kullanılan çerezlerin adları ve süreleri Google''ın kendi uygulamalarına göre değişebilir.&lt;/p&gt;

&lt;h2&gt;Google Haritalar&lt;/h2&gt;
&lt;p&gt;Ana sayfadaki ve İletişim sayfasındaki konum haritası Google Haritalar tarafından sunulur. Harita, siz &quot;Haritayı göster&quot; düğmesine basmadan veya çerezleri kabul etmeden yüklenmez. Harita yüklendiğinde tarayıcınız Google sunucularına bağlanır; Google, IP adresiniz gibi bilgileri işleyebilir ve kendi çerezlerini kullanabilir. Bu işlemler Google''ın gizlilik politikasına tabidir. Haritayı yüklemeden de &quot;Haritada Aç&quot; bağlantısı veya adres bilgilerimiz üzerinden bize ulaşabilirsiniz.&lt;/p&gt;

&lt;h2&gt;Yurt Dışına Aktarım&lt;/h2&gt;
&lt;p&gt;Google Analytics, Google Tag Manager, Google Ads ve Google Haritalar hizmetleri Google tarafından sağlanmaktadır; bu hizmetler aracılığıyla işlenen veriler yurt dışında bulunan sunuculara aktarılabilir. Bu aktarımlar, 6698 sayılı Kişisel Verilerin Korunması Kanunu''nun (&quot;KVKK&quot;) 9. maddesinde öngörülen şartlar çerçevesinde gerçekleştirilir. Birinci taraf ölçüm verileri (egs_vid, egs_sid) yurt dışına aktarılmaz.&lt;/p&gt;

&lt;h2&gt;Hukuki Dayanak&lt;/h2&gt;
&lt;p&gt;Zorunlu çerezler, KVKK''nın 5. maddesinde yer alan, hizmetin sunulması için zorunlu olma ve veri sorumlusunun meşru menfaati hukuki sebeplerine dayanılarak kullanılır. Ölçüm, analitik ve pazarlama çerezleri ile Google Haritalar yalnızca açık rızanıza dayanılarak, siz onay verdiğinizde çalışır. Ayrıntılı bilgi için &lt;a href=&quot;/kvkk-aydinlatma-metni&quot;&gt;KVKK Aydınlatma Metni&lt;/a&gt;''ni inceleyebilirsiniz.&lt;/p&gt;

&lt;h2&gt;Çerezlerin Yönetimi&lt;/h2&gt;
&lt;p&gt;Yukarıda açıklanan onay mekanizmasına ek olarak, tarayıcınızın ayarları üzerinden de çerezleri kabul etme, reddetme veya silme imkânına sahipsiniz. Zorunlu çerezleri devre dışı bırakmanız hâlinde Site''nin bazı bölümleri (ör. formlar) beklendiği gibi çalışmayabilir. Tarayıcınızın çerez ayarlarına genellikle &quot;Ayarlar / Gizlilik ve Güvenlik / Çerezler&quot; yolunu izleyerek ulaşabilirsiniz.&lt;/p&gt;

&lt;h2&gt;Haklarınız ve İletişim&lt;/h2&gt;
&lt;p&gt;KVKK''nın 11. maddesi kapsamındaki haklarınızı kullanmak veya çerez politikamıza ilişkin sorularınız için web@egeserprefabrik.com.tr adresinden bize ulaşabilirsiniz.&lt;/p&gt;' WHERE information_id = 14;

-- KONTROL: guncellenen = 1
SELECT COUNT(*) AS guncellenen FROM oc_information_description WHERE information_id = 14 AND description LIKE '%egs_vid%' AND description LIKE '%Google Haritalar%';
