-- EGESER PREFABRIK - IKI BLOG YAZISI YENIDEN YAZIM - 20261124
-- 1) /blog/prefabrik-evler-kullanim-amaclari-avantajlari-dezavantajlari -> "Prefabrik ev dezavantajlari" odakli
-- 2) /blog/prefabrik-ev-malzemeleri -> "Prefabrik ev hangi malzemeden yapilir" odakli, Egeser standart malzeme listesiyle
-- Adres (slug), yayin tarihi ve kapak gorseli degismez. SSS semasi blog sablonu tarafindan otomatik uretilir.
-- Once yedek alir; ikinci kez calistirilirsa CREATE TABLE hatasiyla durur.
-- Geri almak icin: 34_BLOG_DEZAVANTAJ_MALZEME_GERI_AL.sql
SET NAMES utf8mb4;

CREATE TABLE oc_egeser_blog_post_backup_20261124 AS SELECT * FROM oc_egeser_blog_post WHERE slug IN ('prefabrik-evler-kullanim-amaclari-avantajlari-dezavantajlari', 'prefabrik-ev-malzemeleri');

UPDATE oc_egeser_blog_post SET
  title = 'Prefabrik Ev Dezavantajları: Almadan Önce Bilmeniz Gerekenler (2026)',
  meta_title = 'Prefabrik Ev Dezavantajları ve Çözümleri (2026)',
  meta_description = 'Prefabrik evin dezavantajları neler? Ek maliyetler, ruhsat, ısı, tadilat, bakım ve kredi konularını çözümleriyle öğrenin; avantajlarla karşılaştırın.',
  meta_keyword = 'prefabrik ev dezavantajları, prefabrik evin dezavantajları, prefabrik ev avantajları, prefabrik ev alınır mı, prefabrik ev mantıklı mı',
  description = '&lt;p&gt;&lt;strong&gt;Kısa cevap:&lt;/strong&gt; Prefabrik evin dezavantajları çoğunlukla evin kendisinden değil, evin etrafındaki işlerden gelir: zemin ve altyapı masrafları, ruhsat şartları, arsaya erişim, bölgeye göre değişen ikinci el değeri ve düzenli bakım ihtiyacı. Bunları baştan bilen biri için prefabrik ev hızlı ve bütçesi öngörülebilir bir çözümdür; bilmeyen biri için ise beklenmedik masraf ve gecikme demektir.&lt;/p&gt;

&lt;p&gt;Bu yazıda prefabrik evin dezavantajlarını tek tek, nasıl yönetileceğiyle birlikte anlatıyoruz. Sonunda avantajlarını da kısaca özetledik; karar verirken ikisini yan yana görmek en doğrusu.&lt;/p&gt;

&lt;h2&gt;Prefabrik evin dezavantajları: özet&lt;/h2&gt;
&lt;ul&gt;
  &lt;li&gt;&lt;strong&gt;Toplam maliyet ev fiyatından fazladır:&lt;/strong&gt; Zemin betonu, altyapı bağlantıları, nakliye ve proje masrafları ayrıca hesaplanır.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Ruhsat şartları betonarme evle aynıdır:&lt;/strong&gt; Prefabrik olması imar kurallarından muaf tutmaz.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Arsaya erişim önemlidir:&lt;/strong&gt; Sevkiyat aracı ve montaj ekipmanı arsaya ulaşamıyorsa ek iş çıkar.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Isıl kütle düşüktür:&lt;/strong&gt; Hafif duvarlar betonarmeye göre daha hızlı ısınıp soğur.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Sonradan değişiklik sınırlıdır:&lt;/strong&gt; Duvar kaldırmak, büyük açıklık açmak taşıyıcı sistemi ilgilendirir.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Bakım ister:&lt;/strong&gt; Çatı, derz ve silikon detayları belirli aralıklarla kontrol edilmelidir.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Kredi ve ikinci el değeri değişkendir:&lt;/strong&gt; Bankaya ve bölgeye göre farklı sonuç çıkabilir.&lt;/li&gt;
&lt;/ul&gt;

&lt;h2&gt;1. Toplam maliyet, ev fiyatından fazladır&lt;/h2&gt;
&lt;p&gt;Prefabrik ev fiyatı genellikle yapının kendisini kapsar. Evin oturacağı beton zemin, elektrik, su ve kanalizasyon bağlantıları, nakliye, varsa proje ve ruhsat masrafları ayrıca hesaplanır. Örneğin Egeser Prefabrik''te nakliye, kurulum yapılacak yere göre teklifle birlikte hesaplanır.&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;Nasıl yönetilir:&lt;/strong&gt; Teklif alırken &quot;bu fiyata neler dahil, neler hariç?&quot; sorusunu yazılı olarak sorun. Zemin ve altyapı için arsanızda ayrı bir keşif yaptırın. Kalemlerin ayrıntısını &lt;a href=&quot;https://www.egeserprefabrik.com.tr/blog/prefabrik-ev-fiyatlari-2026&quot;&gt;prefabrik ev fiyatları rehberimizde&lt;/a&gt; anlattık.&lt;/p&gt;

&lt;h2&gt;2. Ruhsat ve imar şartları betonarme evle aynıdır&lt;/h2&gt;
&lt;p&gt;Prefabrik ev de yapı sayılır. Fabrikada üretilmesi ya da sökülüp taşınabilmesi onu yapı ruhsatından muaf tutmaz. İmarlı arsada proje hazırlanır, ruhsat alınır, bitince iskan alınır. Tarım arazisinde ise kurallar çok daha sıkıdır.&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;Nasıl yönetilir:&lt;/strong&gt; Arsayı almadan önce belediyeden imar durum belgesini alın. Ayrıntılar için &lt;a href=&quot;https://www.egeserprefabrik.com.tr/blog/ruhsat-ve-izin-sureci-nasil-isler&quot;&gt;prefabrik ev ruhsat rehberimize&lt;/a&gt; bakın.&lt;/p&gt;

&lt;h2&gt;3. Arsaya erişim ve zemin hazırlığı belirleyicidir&lt;/h2&gt;
&lt;p&gt;Yapı elemanları fabrikadan araçla gelir ve sahada monte edilir. Dar köy yolları, keskin virajlar, sert eğimli ya da sulak arsalar sevkiyatı ve montajı zorlaştırır. Hazırlığı eksik bir zemin de kapı ve pencere ayarlarını, su tahliyesini ve uzun dönem kullanımı olumsuz etkiler.&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;Nasıl yönetilir:&lt;/strong&gt; Arsanın konumunu ve yol durumunu teklif aşamasında paylaşın. Zeminin düz, uygun kotta ve drenajı düşünülmüş olmasına dikkat edin. &lt;a href=&quot;https://www.egeserprefabrik.com.tr/blog/prefabrik-ev-arsa-secimi&quot;&gt;Arsa seçimi yazımızda&lt;/a&gt; kontrol listesini bulabilirsiniz.&lt;/p&gt;

&lt;h2&gt;4. Hafif duvarlar daha hızlı ısınıp soğur&lt;/h2&gt;
&lt;p&gt;Betonarme ve tuğla duvarlar ağırdır; ısıyı içlerinde depolar ve iç sıcaklığı yavaş değiştirir. Prefabrik duvar panelleri ise hafiftir ve ısıyı az depolar. Yalıtım iyi olsa bile ısıtma ya da soğutma kapandığında iç sıcaklık daha hızlı değişir. Ege''nin uzun ve sıcak yazlarında çatı ve batı cephesi özellikle önemlidir.&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;Nasıl yönetilir:&lt;/strong&gt; Duvar kadar çatı yalıtımını da sorun. Batıya bakan büyük camlara gölgelik ya da veranda düşünün. Evi yönlendirirken güneşi hesaba katın. Kışa hazırlık için &lt;a href=&quot;https://www.egeserprefabrik.com.tr/blog/prefabrik-evde-kisa-hazirlik&quot;&gt;bu kontrol listesine&lt;/a&gt; göz atın.&lt;/p&gt;

&lt;h2&gt;5. Sonradan tadilat sınırlıdır&lt;/h2&gt;
&lt;p&gt;Prefabrik evde duvarlar ve bağlantılar bir bütün olarak çalışır. Bir duvarı kaldırmak, yeni bir kapı ya da büyük pencere açmak, ağır bir dolabı ya da cihazı duvara asmak taşıyıcı sistemi ve yalıtımı etkileyebilir. Betonarme evdeki kadar serbest bir tadilat beklenmemelidir.&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;Nasıl yönetilir:&lt;/strong&gt; Oda düzenini, ıslak hacimleri ve pencere yerlerini üretimden önce netleştirin. Sonradan bir değişiklik düşünüyorsanız uygulamadan önce üreticiye danışın.&lt;/p&gt;

&lt;h2&gt;6. Düzenli bakım gerekir&lt;/h2&gt;
&lt;p&gt;Prefabrik evin taşıyıcı sistemi doğru projelendirildiğinde uzun yıllar sorun çıkarmaz. Asıl risk, nemin uzun süre yapıyla temas etmesidir. Bu da genellikle bakımı ihmal edilmiş bir çatı oluğundan, çatlamış bir silikondan ya da açılmış bir birleşim derzinden kaynaklanır.&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;Nasıl yönetilir:&lt;/strong&gt; Çatıyı, oluk ve iniş borularını, pencere silikonlarını ve dış yüzeyleri yılda en az bir kez, tercihen kış öncesi kontrol edin. Ömrü etkileyen faktörleri &lt;a href=&quot;https://www.egeserprefabrik.com.tr/blog/prefabrik-ev-kac-yil-dayanir&quot;&gt;prefabrik ev kaç yıl dayanır&lt;/a&gt; yazımızda anlattık.&lt;/p&gt;

&lt;h2&gt;7. Kredi, sigorta ve ikinci el değeri değişkendir&lt;/h2&gt;
&lt;p&gt;Konut kredisi için bankalar genellikle iskanlı bir yapı ve ekspertiz raporu ister. Prefabrik evlerde ekspertiz değeri ve kredi şartları bankadan bankaya değişebilir. Bazı bölgelerde prefabrik ev hâlâ &quot;geçici yapı&quot; gibi algılanabilir; bu da ikinci el değerini etkileyebilir.&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;Nasıl yönetilir:&lt;/strong&gt; Krediyle almayı düşünüyorsanız bankanızla önceden görüşün. Ruhsatlı ve iskanlı bir yapı, hem kredide hem satışta elinizi güçlendirir.&lt;/p&gt;

&lt;h2&gt;8. Kat sayısı ve büyüklük sınırlıdır&lt;/h2&gt;
&lt;p&gt;Prefabrik evler genellikle tek katlı ya da iki katlı (dubleks) olarak üretilir. Daha fazla kat ya da çok büyük açıklıklar istendiğinde farklı bir taşıyıcı sistem ve ayrı bir proje gerekir.&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;Nasıl yönetilir:&lt;/strong&gt; İhtiyacınız tek ya da iki katlı bir aile evi ise sorun yoktur. Egeser Prefabrik''in standart modelleri 32 m²''den 155 m²''ye kadar uzanır; daha büyük ihtiyaçlar proje olarak değerlendirilir.&lt;/p&gt;

&lt;h2&gt;Dezavantajlar ve çözümleri bir bakışta&lt;/h2&gt;
&lt;div style=&quot;overflow-x:auto;-webkit-overflow-scrolling:touch&quot;&gt;&lt;table border=&quot;1&quot; cellpadding=&quot;8&quot; style=&quot;border-collapse:collapse;width:100%&quot;&gt;
&lt;thead&gt;&lt;tr&gt;&lt;th&gt;Dezavantaj&lt;/th&gt;&lt;th&gt;Ne yapmalı?&lt;/th&gt;&lt;/tr&gt;&lt;/thead&gt;
&lt;tbody&gt;
&lt;tr&gt;&lt;td&gt;Ek maliyetler&lt;/td&gt;&lt;td&gt;Teklifte dahil ve hariç kalemleri yazılı isteyin; zemin ve altyapı için ayrı keşif yaptırın.&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Ruhsat şartları&lt;/td&gt;&lt;td&gt;Arsayı almadan önce imar durum belgesini alın.&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Arsaya erişim&lt;/td&gt;&lt;td&gt;Konumu ve yol durumunu teklif aşamasında paylaşın.&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Hızlı ısınıp soğuma&lt;/td&gt;&lt;td&gt;Çatı yalıtımını sorun, batı cephesini gölgeleyin.&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Tadilat sınırı&lt;/td&gt;&lt;td&gt;Planı üretimden önce netleştirin.&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Bakım&lt;/td&gt;&lt;td&gt;Çatı, oluk ve silikonları her kış öncesi kontrol edin.&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Kredi ve ikinci el&lt;/td&gt;&lt;td&gt;Bankayla önceden görüşün; ruhsat ve iskanı tamamlayın.&lt;/td&gt;&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;&lt;/div&gt;

&lt;h2&gt;Avantajları da kısaca&lt;/h2&gt;
&lt;ul&gt;
  &lt;li&gt;&lt;strong&gt;Hızlı kurulum:&lt;/strong&gt; Yapı elemanları fabrikada hazırlandığı için sahadaki iş süresi betonarmeye göre kısadır.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Öngörülebilir bütçe:&lt;/strong&gt; Model ve kapsam belli olduğu için fiyat baştan netleşir.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Kontrollü üretim:&lt;/strong&gt; Üretimin fabrikada yapılması ölçü ve işçilik farklarını azaltır.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Hafif yapı:&lt;/strong&gt; Hafif bir yapı, depremde daha az yük taşır. Tek başına güvenlik garantisi değildir; doğru proje ve zemin şarttır. Ayrıntılar &lt;a href=&quot;https://www.egeserprefabrik.com.tr/blog/deprem-yonetmeligi-prefabrik-evler&quot;&gt;deprem yazımızda&lt;/a&gt;.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Az şantiye kirliliği:&lt;/strong&gt; Sahada daha az atık ve daha kısa şantiye süresi olur.&lt;/li&gt;
&lt;/ul&gt;

&lt;h2&gt;Prefabrik ev kimler için uygun?&lt;/h2&gt;
&lt;p&gt;&lt;strong&gt;Uygun:&lt;/strong&gt; Arsası hazır olan, tek ya da iki katlı bir ev isteyen, bütçesini baştan bilmek ve kısa sürede taşınmak isteyenler; bağ evi, yazlık veya emeklilik evi planlayanlar.&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;Daha az uygun:&lt;/strong&gt; Üç ve daha fazla katlı bina isteyenler, ileride sık tadilat yapmayı planlayanlar ve arsasına araç ulaşımı çok zor olanlar.&lt;/p&gt;

&lt;h2&gt;Sık sorulan sorular&lt;/h2&gt;
&lt;h3&gt;Prefabrik evin en büyük dezavantajı nedir?&lt;/h3&gt;
&lt;p&gt;Çoğu kişi için en büyük sürpriz, ev fiyatının dışında kalan masraflardır: zemin betonu, altyapı bağlantıları, nakliye ve ruhsat. Bunlar teklif aşamasında netleştirilirse prefabrik evin bütçesi betonarmeye göre daha öngörülebilirdir.&lt;/p&gt;
&lt;h3&gt;Prefabrik ev kışın soğuk, yazın sıcak olur mu?&lt;/h3&gt;
&lt;p&gt;Duvar, çatı, doğrama ve birleşim detayları doğru seçilip uygulandığında dört mevsim yaşanabilir. Ancak hafif duvarlar ısıyı az depoladığı için iç sıcaklık betonarmeye göre daha hızlı değişir; çatı yalıtımı ve gölgeleme bu yüzden önemlidir.&lt;/p&gt;
&lt;h3&gt;Prefabrik eve konut kredisi çıkar mı?&lt;/h3&gt;
&lt;p&gt;Bankalar genellikle iskanlı bir yapı ve ekspertiz raporu ister. Şartlar bankadan bankaya değiştiği için krediyle almayı düşünüyorsanız bankanızla önceden görüşmeniz gerekir.&lt;/p&gt;
&lt;h3&gt;Prefabrik ev depreme dayanıklı mı?&lt;/h3&gt;
&lt;p&gt;Hafif olması depremde daha az yük taşımasını sağlar, ancak güvenlik doğru proje, doğru zemin ve doğru montajla sağlanır. Yalnızca prefabrik olması tek başına bir garanti değildir.&lt;/p&gt;
&lt;h3&gt;Prefabrik ev sonradan büyütülebilir mi?&lt;/h3&gt;
&lt;p&gt;Bazı durumlarda ek oda ya da veranda eklenebilir, ancak bu taşıyıcı sistemi ve ruhsatı ilgilendirir. Büyütme ihtimali varsa bunu baştan planlamak en doğrusudur.&lt;/p&gt;

&lt;h2&gt;Kararınızı birlikte netleştirelim&lt;/h2&gt;
&lt;p&gt;Arsanızın konumunu, istediğiniz oda düzenini ve bütçenizi paylaşın; size uygun modeli ve fiyata dahil olan kalemleri açıkça gösterelim. &lt;a href=&quot;https://www.egeserprefabrik.com.tr/tek-katli-prefabrik-evler&quot;&gt;Tek katlı&lt;/a&gt; ve &lt;a href=&quot;https://www.egeserprefabrik.com.tr/cift-katli-prefabrik-evler&quot;&gt;dubleks&lt;/a&gt; modellerimizi inceleyebilir, Kemalpaşa''daki showroom''umuzda örnek yapıları yerinde görebilir ya da &lt;a href=&quot;https://www.egeserprefabrik.com.tr/iletisim&quot;&gt;bize ulaşabilirsiniz&lt;/a&gt;.&lt;/p&gt;',
  date_modified = NOW()
WHERE slug = 'prefabrik-evler-kullanim-amaclari-avantajlari-dezavantajlari';

UPDATE oc_egeser_blog_post SET
  title = 'Prefabrik Ev Hangi Malzemeden Yapılır? Duvar, Çatı ve Tesisat Rehberi',
  meta_title = 'Prefabrik Ev Hangi Malzemeden Yapılır? (2026 Rehberi)',
  meta_description = 'Prefabrik ev malzemeleri: çelik karkas, Betopan EPS panel, trapez sac çatı, ısıcam ve tesisat. Egeser modellerindeki standart malzeme listesiyle.',
  meta_keyword = 'prefabrik ev hangi malzemeden yapılır, prefabrik ev malzemeleri, betopan eps panel, prefabrik ev duvar kalınlığı, 4+12+4 ısıcam',
  description = '&lt;p&gt;&lt;strong&gt;Kısa cevap:&lt;/strong&gt; Prefabrik ev; çelik profillerden oluşan bir taşıyıcı karkas, bu karkasa yerleşen yalıtımlı duvar panelleri, metal kaplamalı bir çatı ve içeride alçıpan, parke, PVC doğrama gibi bitiş malzemelerinden oluşur. Duvar panelleri çoğu zaman iki yüzü çimentolu levha, içi köpük yalıtım olan sandviç bir yapıdadır.&lt;/p&gt;

&lt;p&gt;Bu yazıda bir prefabrik evi oluşturan malzemeleri katman katman anlatıyoruz. Genel bilgilerin yanında, Egeser Prefabrik''in tek katlı ve dubleks modellerinde standart olarak kullanılan malzemeleri de açıkça yazdık; teklif karşılaştırırken neye bakmanız gerektiğini görebilirsiniz.&lt;/p&gt;

&lt;h2&gt;Egeser prefabrik evlerde standart malzeme listesi&lt;/h2&gt;
&lt;p&gt;Aşağıdaki liste, bireysel (konut) modellerimizin ürün sayfalarındaki teknik özelliklerden alınmıştır. Dubleks modellerde ve projeye özel çalışmalarda bazı kalemler seçilen pakete göre değişebilir; kesin kapsam teklifte yazılır.&lt;/p&gt;
&lt;div style=&quot;overflow-x:auto;-webkit-overflow-scrolling:touch&quot;&gt;&lt;table border=&quot;1&quot; cellpadding=&quot;8&quot; style=&quot;border-collapse:collapse;width:100%&quot;&gt;
&lt;thead&gt;&lt;tr&gt;&lt;th&gt;Bölüm&lt;/th&gt;&lt;th&gt;Malzeme&lt;/th&gt;&lt;/tr&gt;&lt;/thead&gt;
&lt;tbody&gt;
&lt;tr&gt;&lt;td&gt;Duvar ve ısı yalıtımı&lt;/td&gt;&lt;td&gt;Betopan EPS press panel, 10 cm&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Çatı&lt;/td&gt;&lt;td&gt;Trapez sac&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Tavan&lt;/td&gt;&lt;td&gt;Alçıpan&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Zemin kaplaması&lt;/td&gt;&lt;td&gt;8 mm floorpan parke&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Pencere&lt;/td&gt;&lt;td&gt;PVC doğrama, 120x100 cm, çift açılır&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Cam&lt;/td&gt;&lt;td&gt;4+12+4 ısıcam&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Dış kapı&lt;/td&gt;&lt;td&gt;Çelik kapı&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;İç kapılar&lt;/td&gt;&lt;td&gt;Membran kapı&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Mutfak&lt;/td&gt;&lt;td&gt;250 cm MDF mutfak dolabı (MDF, lake veya vakum kapak seçenekli)&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Banyo&lt;/td&gt;&lt;td&gt;90x90 duşakabin, klozet takımı, hilton dolabı&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Elektrik&lt;/td&gt;&lt;td&gt;Aydınlatmada 2x1,5 mm², prizlerde 3x2,5 mm² NYM bakır kablo, kaçak akım rölesi&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Sıhhi tesisat&lt;/td&gt;&lt;td&gt;Sıcak ve soğuk su hattı&lt;/td&gt;&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;&lt;/div&gt;

&lt;h2&gt;Taşıyıcı sistem: çelik karkas&lt;/h2&gt;
&lt;p&gt;Prefabrik evin iskeleti, fabrikada ölçüsüne göre kesilip hazırlanan çelik profillerden oluşur. Bu karkas çatının, duvarların ve rüzgârın yükünü taşıyıp zemine aktarır. Profillerin kesiti ve bağlantı detayları evin büyüklüğüne, kat sayısına ve kullanım amacına göre belirlenir; dubleks bir ev, tek katlı bir evden daha güçlü bir karkas ister.&lt;/p&gt;
&lt;p&gt;Çeliğin en büyük düşmanı uzun süre temas eden nemdir. Bu yüzden karkasın korozyona karşı korunması ve çatı ile cephe detaylarının suyu içeri almayacak şekilde çözülmesi, malzemenin kendisi kadar önemlidir.&lt;/p&gt;

&lt;h2&gt;Duvar: Betopan EPS press panel nedir?&lt;/h2&gt;
&lt;p&gt;Egeser modellerinde dış duvarlar 10 cm kalınlığında Betopan EPS press panelden oluşur. Adındaki üç kelime panelin yapısını anlatır:&lt;/p&gt;
&lt;ul&gt;
  &lt;li&gt;&lt;strong&gt;Betopan:&lt;/strong&gt; Çimento ve ahşap yongalarının preslenmesiyle üretilen çimentolu yonga levhadır. Panelin iç ve dış yüzünü oluşturur; neme, darbeye ve haşereye karşı dayanıklıdır, üzeri boyanabilir.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;EPS:&lt;/strong&gt; Genleştirilmiş polistiren, yani köpük yalıtım levhasıdır. Panelin ortasında yer alır ve ısı yalıtımını sağlar. Hafiftir ve su emmez.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Press:&lt;/strong&gt; Yüzey levhaları ve yalıtım çekirdeği yapıştırılıp preslenerek tek parça, rijit bir panel hâline getirilir.&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;Bu yapı duvarı hem hafif hem yalıtımlı yapar. Taş yünü dolgulu paneller gibi alternatifler de vardır; bunlar yangın performansında öne çıkar ama daha ağır ve genellikle daha pahalıdır. Panellerin yangın sınıflarını &lt;a href=&quot;https://www.egeserprefabrik.com.tr/blog/prefabrik-duvarlarin-yanmazlik-sinifi&quot;&gt;yanmazlık sınıfı yazımızda&lt;/a&gt; ayrıntılı anlattık.&lt;/p&gt;

&lt;h2&gt;Çatı: trapez sac&lt;/h2&gt;
&lt;p&gt;Trapez sac, kıvrımlı profilli, boyalı metal bir çatı kaplamasıdır. Hafiftir, suyu hızla tahliye eder ve uzun ömürlüdür. Çatının performansını yalnızca kaplama belirlemez; çatı eğimi, birleşim detayları, oluk ve iniş boruları da en az kaplama kadar önemlidir.&lt;/p&gt;
&lt;p&gt;Ege''nin sıcak yazlarında çatı, evin en çok ısı aldığı yüzeydir. Teklif alırken çatı kaplamasının altında hangi yalıtımın kullanıldığını mutlaka sorun.&lt;/p&gt;

&lt;h2&gt;İç mekân: tavan, zemin ve kapılar&lt;/h2&gt;
&lt;ul&gt;
  &lt;li&gt;&lt;strong&gt;Alçıpan tavan:&lt;/strong&gt; Alçı çekirdekli, karton kaplı levhadır. Düz ve boyanabilir bir tavan yüzeyi verir, tesisat güzergâhlarını gizler.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;8 mm floorpan parke:&lt;/strong&gt; Laminat parke türüdür. Çizilmeye dayanıklı üst katmanı sayesinde günlük kullanıma uygundur. Islak hacimlerde parke yerine suya dayanıklı kaplama tercih edilmelidir.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Membran iç kapı:&lt;/strong&gt; MDF gövdenin üzeri ısıyla şekillendirilmiş PVC bir yüzeyle kaplanır. Hafif, kolay temizlenen ve neme karşı dayanıklı bir kapı türüdür.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Çelik dış kapı:&lt;/strong&gt; Ana girişte güvenlik ve dayanım için kullanılır.&lt;/li&gt;
&lt;/ul&gt;

&lt;h2&gt;Pencere: PVC doğrama ve 4+12+4 ısıcam&lt;/h2&gt;
&lt;p&gt;Bir evde ısı kaybının önemli bir kısmı pencerelerden olur. PVC doğrama, ısıyı az ileten profil yapısı ve contaları sayesinde hava sızıntısını azaltır.&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;4+12+4 ısıcam&lt;/strong&gt;, 4 mm''lik iki cam ile aralarındaki 12 mm''lik boşluktan oluşan çift camdır. Aradaki boşluk ısı geçişini yavaşlatır; tek cama göre hem ısı hem ses yalıtımı belirgin şekilde daha iyidir.&lt;/p&gt;

&lt;h2&gt;Elektrik ve sıhhi tesisat&lt;/h2&gt;
&lt;p&gt;&lt;strong&gt;NYM kablo&lt;/strong&gt;, PVC yalıtımlı bakır tesisat kablosudur. Kesit, hattın taşıyacağı yüke göre seçilir: aydınlatma hatlarında 2x1,5 mm², prizlerde daha fazla akım çekildiği için 3x2,5 mm² kullanılır. &lt;strong&gt;Kaçak akım rölesi&lt;/strong&gt;, insan vücudu üzerinden ya da bozuk bir cihazdan toprağa akım kaçtığında elektriği keserek can güvenliğini korur.&lt;/p&gt;
&lt;p&gt;Sıhhi tesisatta mutfak ve banyo için sıcak ve soğuk su hatları yapı içinde hazırlanır. Arsadaki ana su, atık su ve elektrik bağlantıları ise ayrıca planlanmalıdır.&lt;/p&gt;

&lt;h2&gt;Temel: evin oturacağı zemin&lt;/h2&gt;
&lt;p&gt;Prefabrik evin altında genellikle düz bir betonarme zemin ya da proje koşullarına göre belirlenen bir temel bulunur. Bu zemin evin malzemesi değildir ama evin ömrünü doğrudan etkiler: kotu yanlış ya da drenajı düşünülmemiş bir zemin, en iyi malzemeyi bile nemle yüz yüze bırakır.&lt;/p&gt;

&lt;h2&gt;Teklif karşılaştırırken sorulacak sorular&lt;/h2&gt;
&lt;ul&gt;
  &lt;li&gt;Duvar paneli hangi malzemeden ve kaç cm? Yalıtım çekirdeği ne?&lt;/li&gt;
  &lt;li&gt;Çatı kaplamasının altında yalıtım var mı, varsa ne?&lt;/li&gt;
  &lt;li&gt;Taşıyıcı profiller korozyona karşı nasıl korunuyor?&lt;/li&gt;
  &lt;li&gt;Cam kombinasyonu ne (örneğin 4+12+4)?&lt;/li&gt;
  &lt;li&gt;Elektrik kablolarının kesiti ne, kaçak akım rölesi var mı?&lt;/li&gt;
  &lt;li&gt;Islak hacimlerde zemin ve duvar kaplaması ne?&lt;/li&gt;
  &lt;li&gt;Mutfak ve banyo donanımı fiyata dahil mi?&lt;/li&gt;
  &lt;li&gt;Zemin betonu, nakliye ve montaj fiyata dahil mi?&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;Aynı metrekaredeki iki prefabrik evin fiyatı arasındaki farkın büyük kısmı bu soruların cevaplarından gelir. Fiyatı oluşturan kalemleri &lt;a href=&quot;https://www.egeserprefabrik.com.tr/blog/prefabrik-ev-fiyatlari-2026&quot;&gt;prefabrik ev fiyatları rehberimizde&lt;/a&gt; ayrıca anlattık.&lt;/p&gt;

&lt;h2&gt;Sık sorulan sorular&lt;/h2&gt;
&lt;h3&gt;Prefabrik ev hangi malzemeden yapılır?&lt;/h3&gt;
&lt;p&gt;Çelik profillerden oluşan bir taşıyıcı karkas, yalıtımlı duvar panelleri, metal kaplamalı bir çatı ve alçıpan, parke, PVC doğrama gibi iç mekân malzemelerinden oluşur. Egeser modellerinde duvarlar 10 cm Betopan EPS press panel, çatı trapez sactır.&lt;/p&gt;
&lt;h3&gt;Betopan EPS panel nedir?&lt;/h3&gt;
&lt;p&gt;İki yüzü çimentolu yonga levha (Betopan), ortası EPS köpük yalıtım olan, preslenerek tek parça hâline getirilmiş duvar panelidir. Hafif, yalıtımlı ve neme dayanıklıdır.&lt;/p&gt;
&lt;h3&gt;Prefabrik ev duvar kalınlığı kaç cm?&lt;/h3&gt;
&lt;p&gt;Üreticiye ve projeye göre değişir. Egeser Prefabrik''in bireysel modellerinde dış duvarlar 10 cm Betopan EPS press paneldir. Kalınlık kadar panelin katman yapısı ve birleşim detayları da önemlidir.&lt;/p&gt;
&lt;h3&gt;4+12+4 ısıcam ne demek?&lt;/h3&gt;
&lt;p&gt;4 mm''lik iki cam ile aralarındaki 12 mm''lik boşluktan oluşan çift camdır. Tek cama göre ısı ve ses yalıtımı daha iyidir.&lt;/p&gt;
&lt;h3&gt;Prefabrik ev yanar mı?&lt;/h3&gt;
&lt;p&gt;Yangın performansı kullanılan panelin yüzey ve yalıtım malzemesine göre değişir. Çimentolu levhalar yanmaz sınıftadır; yalıtım çekirdeğinin türü ise önemli bir farktır. Ayrıntılar için yanmazlık sınıfı yazımıza bakabilirsiniz.&lt;/p&gt;

&lt;h2&gt;Malzemeleri yerinde görün&lt;/h2&gt;
&lt;p&gt;Duvar panelini, çatıyı ve iç mekân malzemelerini fotoğraftan değil, yerinde görmek isterseniz Kemalpaşa''daki showroom''umuza bekleriz. Modellerimizi incelemek için &lt;a href=&quot;https://www.egeserprefabrik.com.tr/tek-katli-prefabrik-evler&quot;&gt;tek katlı&lt;/a&gt; ve &lt;a href=&quot;https://www.egeserprefabrik.com.tr/cift-katli-prefabrik-evler&quot;&gt;dubleks prefabrik evler&lt;/a&gt; sayfalarına göz atabilir ya da &lt;a href=&quot;https://www.egeserprefabrik.com.tr/iletisim&quot;&gt;teklif isteyebilirsiniz&lt;/a&gt;.&lt;/p&gt;',
  date_modified = NOW()
WHERE slug = 'prefabrik-ev-malzemeleri';

-- KONTROL: guncellenen = 2
SELECT COUNT(*) AS guncellenen FROM oc_egeser_blog_post WHERE (slug = 'prefabrik-evler-kullanim-amaclari-avantajlari-dezavantajlari' AND title LIKE 'Prefabrik Ev Dezavantajları%') OR (slug = 'prefabrik-ev-malzemeleri' AND title LIKE 'Prefabrik Ev Hangi Malzemeden%');
