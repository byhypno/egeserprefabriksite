-- EGESER PREFABRIK - RUHSAT YAZISI YENIDEN YAZIM - 20261114
-- /blog/ruhsat-ve-izin-sureci-nasil-isler yazisinin baslik, meta ve icerigini gunceller.
-- Adres (slug), yayin tarihi ve kapak gorseli degismez. SSS semasi blog sablonu tarafindan otomatik uretilir.
-- Once yedek alir; ikinci kez calistirilirsa CREATE TABLE hatasiyla durur.
-- Geri almak icin: 20_RUHSAT_YAZISI_GERI_AL.sql
SET NAMES utf8mb4;

CREATE TABLE oc_egeser_blog_post_backup_20261114 AS SELECT * FROM oc_egeser_blog_post WHERE slug = 'ruhsat-ve-izin-sureci-nasil-isler';

UPDATE oc_egeser_blog_post SET
  title = 'Prefabrik Ev İçin Ruhsat Gerekir mi? Tarla, Hobi Bahçesi ve İskan Rehberi (2026)',
  meta_title = 'Prefabrik Ev Ruhsatı 2026: Tarla, Hobi Bahçesi ve İskan',
  meta_description = 'Prefabrik ev için yapı ruhsatı gerekir mi? Tarlaya, hobi bahçesine ve köye prefabrik ev kurallarını, 2026 değişikliklerini ve iskan sürecini öğrenin.',
  meta_keyword = 'prefabrik ev ruhsat, tarlaya prefabrik ev, hobi bahçesine prefabrik ev, prefabrik ev iskan, köye prefabrik ev',
  description = '&lt;p&gt;&lt;strong&gt;Kısa cevap:&lt;/strong&gt; Evet. Prefabrik ev de Türkiye''de bir yapı sayılır ve kural olarak yapı ruhsatı ister. Prefabrik olması, fabrikada üretilip sahada kurulması ya da sökülüp taşınabilmesi onu ruhsattan muaf tutmaz. Ruhsatın kimden, nasıl alınacağı ise arsanızın durumuna bağlıdır: imar planı olan bir parsel, köy yerleşik alanı ve tarım arazisi için kurallar birbirinden farklıdır.&lt;/p&gt;

&lt;p&gt;Bu rehberde tarlaya, hobi bahçesine ve köydeki arsaya prefabrik ev konulup konulamayacağını, 2026''da yürürlüğe giren yeni düzenlemeleri ve iskan sürecini anlatıyoruz. Yazı genel bilgilendirme amaçlıdır; arsanız için kesin cevabı her zaman ilgili belediyenin imar müdürlüğü verir.&lt;/p&gt;

&lt;h2&gt;Arsa türüne göre özet&lt;/h2&gt;
&lt;ul&gt;
  &lt;li&gt;&lt;strong&gt;İmarlı arsa:&lt;/strong&gt; Prefabrik ev, betonarme bir evle aynı kurallara tabidir. Proje hazırlanır, belediyeden yapı ruhsatı alınır, bitince yapı kullanma izni (iskan) alınır.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Köy yerleşik alanı:&lt;/strong&gt; Belediye ve mücavir alan sınırları dışındaki köylerde konut için yapı ruhsatı aranmayabilir; ama yapı yine fen ve sağlık kurallarına uymalı ve süreç idareye bildirilmelidir.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Tarım arazisi (tarla):&lt;/strong&gt; Tarım arazisi konut için kullanılamaz. Yalnızca tarımsal amaçlı yapılara, valilikten izin alınarak ve ruhsat sürecinden geçilerek izin verilir.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Hobi bahçesi:&lt;/strong&gt; Mevzuatta &quot;hobi bahçesi&quot; diye bir yapı izni yoktur. 2026''da çıkan 7584 sayılı Kanun ile izinsiz yapılara elektrik, su ve doğalgaz bağlanması yasaklandı.&lt;/li&gt;
&lt;/ul&gt;

&lt;h2&gt;Prefabrik ev hukuken &quot;yapı&quot; sayılır mı?&lt;/h2&gt;
&lt;p&gt;Sayılır. 3194 sayılı İmar Kanunu''nun 5. maddesi yapıyı; karada ve suda, daimi veya geçici, yer altı ve yer üstü inşaatı ile bunların ilave, değişiklik ve tamirlerini içine alan &quot;sabit ve müteharrik&quot; (hareketli) tesisler olarak tanımlar. Yani yapının geçici olması ya da yerinden sökülebilmesi tanımın dışında kalmasını sağlamaz.&lt;/p&gt;
&lt;p&gt;Aynı kanunun 21. maddesi ise kanun kapsamındaki bütün yapılar için belediyeden ya da valilikten yapı ruhsatı alınmasını zorunlu tutar. Bu nedenle &quot;prefabrik ev ruhsat gerektirmez&quot; ya da &quot;beton temel atılmazsa izin gerekmez&quot; gibi söylemler doğru değildir. Ruhsatın şekli değişebilir, ama izin sürecinden tamamen bağımsız bir prefabrik ev yoktur.&lt;/p&gt;
&lt;p&gt;Prefabrik evler ruhsat sürecinde de betonarme yapılarla aynı teknik şartları sağlar: mimari, statik ve tesisat projeleri hazırlanır, taşıyıcı sistem Türkiye Bina Deprem Yönetmeliği''ne göre hesaplanır. Bu konuyu &lt;a href=&quot;https://www.egeserprefabrik.com.tr/blog/deprem-yonetmeligi-prefabrik-evler&quot;&gt;deprem yönetmeliği ve prefabrik evler&lt;/a&gt; yazımızda ayrıca anlattık.&lt;/p&gt;

&lt;h2&gt;Arsanızın durumu her şeyi belirler&lt;/h2&gt;
&lt;p&gt;Bir prefabrik evin nereye, ne büyüklükte ve hangi izinle kurulabileceğini belirleyen şey yapının kendisi değil, arsanın imar durumudur. Arsa almadan ya da sipariş vermeden önce ilk iş, parselin hangi gruba girdiğini öğrenmektir. Birçok belediye, ada ve parsel numarasıyla imar durumunu internetten sorgulamaya izin verir (e-İmar); kesin belge için belediyeden &lt;strong&gt;imar durum belgesi&lt;/strong&gt; istenir.&lt;/p&gt;

&lt;h3&gt;İmar planı olan arsa&lt;/h3&gt;
&lt;p&gt;İmar planı bulunan alanlarda Planlı Alanlar İmar Yönetmeliği ve belediyenin plan notları uygulanır. Prefabrik ev için de taban alanı (TAKS), toplam inşaat alanı (KAKS veya emsal), kat adedi, yükseklik ve komşu parsellere çekme mesafeleri aynen geçerlidir. Konut alanı olarak ayrılmış bir parselde süreç genelde en kısa ve en öngörülebilir olandır.&lt;/p&gt;

&lt;h3&gt;Köy yerleşik alanı ve kırsal mahalle&lt;/h3&gt;
&lt;p&gt;İmar Kanunu''nun 27. maddesine göre belediye ve mücavir alan sınırları dışındaki köylerin yerleşik alanları ve civarında yapılacak konutlar için yapı ruhsatı aranmaz. Bu bir &quot;serbestlik&quot; değildir: yapının fen ve sağlık kurallarına uygun olması, gerekli projelerin onaylanması ve köy muhtarlığına bilgi verilmesi gerekir. Köy yerleşik alanının sınırını il idare kurulu belirler; parselin bu sınırın içinde olup olmadığı tapudan anlaşılmaz, idareden öğrenilir.&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;Ege için önemli bir not:&lt;/strong&gt; İzmir, Manisa, Aydın, Balıkesir ve Muğla büyükşehir olduğu için bu illerdeki eski köyler 6360 sayılı Kanun''la mahalleye dönüştü. Bu mahallelerde köye özgü kolaylıkların uygulanıp uygulanmadığı, orasının &quot;kırsal mahalle&quot; olarak belirlenip belirlenmediğine bağlıdır. Uşak''ta ise köyler köy statüsünü korur. Hangi kuralın geçerli olduğunu ilçe belediyesinin imar müdürlüğünden sorun.&lt;/p&gt;

&lt;h3&gt;Tarım arazisi (tarla)&lt;/h3&gt;
&lt;p&gt;Tapuda &quot;tarla&quot;, &quot;bağ&quot; ya da &quot;bahçe&quot; olarak görünen ve imar planı dışında kalan araziler 5403 sayılı Toprak Koruma ve Arazi Kullanımı Kanunu''na tabidir. Bu kanuna göre tarım arazileri amacı dışında kullanılamaz; tarım dışı her kullanım için izin gerekir. Konut, bu izinlerin verildiği kullanımlardan biri değildir. Ayrıntısını bir sonraki bölümde anlatıyoruz.&lt;/p&gt;

&lt;h2&gt;Tarlaya prefabrik ev yapılır mı?&lt;/h2&gt;
&lt;p&gt;Yaşamak için kullanılacak bir konut olarak &lt;strong&gt;hayır&lt;/strong&gt;. Tarım arazisine &quot;ev&quot; yapılamaz; prefabrik, betonarme ya da ahşap olması bu sonucu değiştirmez.&lt;/p&gt;
&lt;p&gt;İzin verilebilen durum &lt;strong&gt;tarımsal amaçlı yapılar&lt;/strong&gt;dır. 4 Nisan 2026 tarihli Resmî Gazete''de yayımlanan Tarım Arazilerinin Korunması ve Kullanılması Hakkında Yönetmelik, tarımsal faaliyet için gerekli olan bağ evini de tarımsal amaçlı yapılar arasında sayar. Bu tür yapılar için:&lt;/p&gt;
&lt;ul&gt;
  &lt;li&gt;Önce valilikten (İl Tarım ve Orman Müdürlüğü) tarım dışı kullanım izni ya da tarımsal amaçlı yapı uygunluğu alınır.&lt;/li&gt;
  &lt;li&gt;Sonra imar mevzuatına göre proje hazırlanır ve ruhsat süreci yürütülür.&lt;/li&gt;
  &lt;li&gt;Yapı gerçekten tarımsal faaliyete hizmet etmelidir. Tarımsal üretim yapılmayan bir arazide &quot;bağ evi&quot; adıyla sürekli oturulan bir konut, iznin amacı dışında kullanım sayılır.&lt;/li&gt;
  &lt;li&gt;Onaylanan izinlerin belirli bir süre içinde uygulanması gerekir; yönetmelik, süresinde tamamlanmayan onayların düşeceğini düzenler.&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;Bağ evinin taban alanı, toplam büyüklüğü ve parsel başına kaç tane yapılabileceği konusunda internette birbirini tutmayan rakamlar dolaşıyor. Bu ölçüler arazinin sınıfına, büyüklüğüne ve bağlı olduğu idarenin uygulamasına göre değişir. Rakamı bir haber sitesinden değil, il müdürlüğünden ve belediyeden yazılı olarak öğrenin.&lt;/p&gt;
&lt;p&gt;Tarlanın imara açılması ise ayrı ve uzun bir süreçtir; imar planı değişikliği gerektirir ve sonucu garanti değildir. Yalnızca bu beklentiyle tarla almak risklidir.&lt;/p&gt;

&lt;h2&gt;Hobi bahçesine prefabrik ev: 2026''da ne değişti?&lt;/h2&gt;
&lt;p&gt;&quot;Hobi bahçesi&quot; mevzuatta tanımlı bir yapı türü değildir. Genellikle bir tarım arazisinin hisseli ya da fiilen bölünerek satılması ve her parçaya küçük bir yapı konması anlamında kullanılır. Bu parçalar çoğu zaman 5403 sayılı Kanun''a göre tarım arazisi olmaya devam eder, yani yukarıdaki kurallar aynen geçerlidir.&lt;/p&gt;
&lt;p&gt;11 Haziran 2026 tarihli &lt;strong&gt;7584 sayılı Kanun&lt;/strong&gt; (Resmî Gazete: 20 Haziran 2026, sayı 33286) 5403 sayılı Kanun''da şu değişiklikleri yaptı:&lt;/p&gt;
&lt;ul&gt;
  &lt;li&gt;&lt;strong&gt;Abonelik yasağı:&lt;/strong&gt; İzin alınmadan yapılmış her türlü yapı ve tesise elektrik, su ve doğalgaz bağlantısı ve aboneliği yapılamaz. Bu kurala uymayan idare ve şirketlere abone başına 100.000 TL idari para cezası öngörülür; abonelik bildirimden sonra 30 gün içinde iptal edilmezse ceza her ay için yeniden uygulanır.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Daha yüksek cezalar:&lt;/strong&gt; Tarım arazisini izinsiz amaç dışı kullananlara uygulanan metrekare başına ceza &quot;on&quot; liradan &quot;iki bin beş yüz&quot; liraya çıkarıldı. Tarım ve Orman Bakanlığı''nın duyurusuna göre büyük ova koruma alanlarında bu tutar iki katına çıkar ve yapı süresinde kaldırılmazsa ceza artırılarak yeniden uygulanır.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Kooperatif sınırı:&lt;/strong&gt; Tarımsal amaçlı olmayan kooperatiflerin, kanunda sayılan tarım alanlarında mülkiyet ve sınırlı ayni hak edinmesi kısıtlandı.&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;Kanun metni prefabrik ev ya da başka bir yapı tipini adıyla saymaz; &quot;izin alınmadan yapılmış her türlü yapı ve tesis&quot; der. Dolayısıyla belirleyici olan yapının türü değil, gerekli iznin alınıp alınmadığıdır. İzinli ve projesine uygun bir tarımsal yapı bu yasaktan etkilenmez; izinsiz kurulan bir prefabrik yapı ise etkilenir.&lt;/p&gt;
&lt;p&gt;Hobi bahçesi alırken satıcının &quot;üstüne ev koyabilirsiniz, sorun olmaz&quot; demesi hiçbir güvence sağlamaz. Tapu kaydının beyanlar hanesinde &quot;5403 sayılı Kanunun amacı dışında kullanılmıştır&quot; şerhi olup olmadığını da kontrol edin.&lt;/p&gt;

&lt;h2&gt;Ruhsat süreci adım adım&lt;/h2&gt;
&lt;p&gt;İmarlı bir arsada prefabrik ev için süreç genel hatlarıyla şöyle ilerler. Adımlar belediyeden belediyeye küçük farklar gösterebilir.&lt;/p&gt;
&lt;ol&gt;
  &lt;li&gt;&lt;strong&gt;İmar durumu:&lt;/strong&gt; Belediyeden imar durum belgesi alınır. Taban alanı, emsal, kat adedi ve çekme mesafeleri buradan öğrenilir.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Zemin etüdü:&lt;/strong&gt; Parselin zemin yapısı incelenir. Temel tipi ve deprem hesapları bu rapora göre yapılır.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Projeler:&lt;/strong&gt; Seçilen modele göre mimari, statik, elektrik ve mekanik tesisat projeleri hazırlanır. Prefabrik sistemde statik proje panel ve çelik taşıyıcı sistemi kapsar.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Başvuru ve ruhsat:&lt;/strong&gt; Projeler, tapu ve gerekli belgelerle belediyeye başvurulur. Onaydan ve harçların ödenmesinden sonra yapı ruhsatı düzenlenir. Yapı denetimine tabi işlerde bir yapı denetim kuruluşu süreçte yer alır.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Üretim ve montaj:&lt;/strong&gt; Ruhsat süreci devam ederken fabrikada üretim planlanabilir; sahada temel ve montaj ise ruhsattan sonra yapılmalıdır. Montaj adımlarını &lt;a href=&quot;https://www.egeserprefabrik.com.tr/blog/prefabrik-ev-montaj-sureci-adimlari&quot;&gt;prefabrik ev montaj süreci&lt;/a&gt; yazımızda bulabilirsiniz.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;İskan:&lt;/strong&gt; Yapı tamamlanınca yapı kullanma izni için başvurulur.&lt;/li&gt;
&lt;/ol&gt;
&lt;p&gt;Prefabrik evin önemli bir avantajı burada ortaya çıkar: üretim fabrikada yapıldığı için sahadaki inşaat süresi kısadır ve toplam takvimde en uzun kalem çoğu zaman ruhsat süresi olur. Bu nedenle ruhsat ve üretim takvimini birlikte planlamak gerekir.&lt;/p&gt;

&lt;h2&gt;İskan (yapı kullanma izni) ve abonelikler&lt;/h2&gt;
&lt;p&gt;İmar Kanunu''nun 30. maddesine göre yapı tamamlandığında yapı kullanma izni alınır. Bu belge, yapının ruhsatına ve projesine uygun bitirildiğini gösterir. Kalıcı elektrik, su ve doğalgaz aboneliği, tapuda cins değişikliği (arsadan &quot;kargir ev&quot; gibi yapıya) ve satışta konut kredisi gibi işlemler için çoğu zaman bu belge istenir.&lt;/p&gt;
&lt;p&gt;Ruhsatlı ve projesine uygun yapılmış bir prefabrik ev de iskan alabilir. Bunun için yapının onaylı projeyle birebir uyumlu olması gerekir; montaj sırasında yapılan plansız eklemeler, sonradan kapatılan sundurmalar ve proje dışı büyütmeler iskan aşamasında sorun çıkarır.&lt;/p&gt;

&lt;h2&gt;Ruhsatsız yapının sonuçları&lt;/h2&gt;
&lt;ul&gt;
  &lt;li&gt;&lt;strong&gt;İmar mevzuatı:&lt;/strong&gt; İmar Kanunu''nun 32. maddesine göre ruhsatsız ya da ruhsata aykırı yapı tespit edilince mühürlenir ve inşaat durdurulur. Süresi içinde ruhsat alınmaz veya aykırılık giderilmezse yapı idare tarafından yıktırılır, masrafı yapı sahibinden alınır. 42. madde ayrıca idari para cezası öngörür.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Ceza hukuku:&lt;/strong&gt; Türk Ceza Kanunu''nun 184. maddesi, ruhsatsız veya ruhsata aykırı bina yapmayı ve yaptırmayı imar kirliliği suçu olarak düzenler. Bu hüküm kural olarak belediye sınırları içinde ve özel imar rejimine tabi yerlerde uygulanır.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Tarım arazisi:&lt;/strong&gt; 5403 sayılı Kanun''a göre metrekare başına idari para cezası, yapının kaldırılması yükümlülüğü ve 2026''dan itibaren abonelik yasağı.&lt;/li&gt;
  &lt;li&gt;&lt;strong&gt;Mülkiyet ve satış:&lt;/strong&gt; İskansız yapıda tapu cins değişikliği yapılamaz; yapı satışta değer kaybeder ve kredi kullanılamayabilir.&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;Prefabrik evin sökülüp taşınabilmesi bu sonuçlardan korumaz. Aksine, yıkım kararında sökülmesi kolay olduğu için kararın uygulanması da hızlı olur.&lt;/p&gt;

&lt;h2&gt;Arsa almadan önce kontrol listesi&lt;/h2&gt;
&lt;ul&gt;
  &lt;li&gt;Parselin imar durumu ne? İmar planı içinde mi, köy yerleşik alanında mı, tarım arazisi mi?&lt;/li&gt;
  &lt;li&gt;İmar durum belgesinde taban alanı, emsal ve kat sınırı ne yazıyor?&lt;/li&gt;
  &lt;li&gt;Tapu tam mülkiyet mi, hisseli mi? Beyanlar hanesinde şerh var mı?&lt;/li&gt;
  &lt;li&gt;Elektrik, su ve kanalizasyon hattı parsele ne kadar uzak? İzinsiz yapıya bağlantı yapılamayacağını unutmayın.&lt;/li&gt;
  &lt;li&gt;Araç ve vinç parsele ulaşabiliyor mu?&lt;/li&gt;
  &lt;li&gt;Belediyenin imar müdürlüğü, seçtiğiniz model büyüklüğünde bir yapının bu parselde mümkün olduğunu teyit etti mi?&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;Zemin, yol ve altyapı tarafını &lt;a href=&quot;https://www.egeserprefabrik.com.tr/blog/prefabrik-ev-arsa-secimi&quot;&gt;prefabrik ev için arsa seçimi&lt;/a&gt; rehberimizde ayrıntılı anlattık. İmar durumu netleştiğinde parselinize uyan büyüklükleri &lt;a href=&quot;https://www.egeserprefabrik.com.tr/tek-katli-prefabrik-evler&quot;&gt;tek katlı prefabrik ev modellerimiz&lt;/a&gt; ve &lt;a href=&quot;https://www.egeserprefabrik.com.tr/cift-katli-prefabrik-evler&quot;&gt;dubleks prefabrik ev modellerimiz&lt;/a&gt; arasından seçebilirsiniz; bütçe tarafı için &lt;a href=&quot;https://www.egeserprefabrik.com.tr/blog/prefabrik-ev-fiyatlari-2026&quot;&gt;prefabrik ev fiyatları 2026&lt;/a&gt; yazımıza bakabilirsiniz.&lt;/p&gt;

&lt;h2&gt;Sık sorulan sorular&lt;/h2&gt;

&lt;h3&gt;Prefabrik ev için ruhsat gerekir mi?&lt;/h3&gt;
&lt;p&gt;Evet. Prefabrik ev de İmar Kanunu''na göre bir yapıdır ve kural olarak yapı ruhsatı ister. Ruhsatın şekli arsanın durumuna göre değişir: imarlı arsada belediyeden ruhsat alınır, belediye dışındaki köy yerleşik alanında ruhsat aranmasa da fen ve sağlık kurallarına uyulması ve idareye bilgi verilmesi gerekir.&lt;/p&gt;

&lt;h3&gt;Tarlaya prefabrik ev koymak yasal mı?&lt;/h3&gt;
&lt;p&gt;Konut olarak hayır. Tarım arazisi 5403 sayılı Kanun''a göre amacı dışında kullanılamaz. Yalnızca bağ evi gibi tarımsal amaçlı yapılara, valilikten izin alınarak ve ruhsat süreci yürütülerek izin verilebilir; bu yapının da gerçekten tarımsal faaliyete hizmet etmesi gerekir.&lt;/p&gt;

&lt;h3&gt;Hobi bahçesine prefabrik ev yapılabilir mi?&lt;/h3&gt;
&lt;p&gt;Hobi bahçesi mevzuatta tanımlı bir yapı izni değildir; bu araziler çoğunlukla tarım arazisi olarak kalır. İzin alınmadan yapılan yapılara 2026''da yürürlüğe giren 7584 sayılı Kanun ile elektrik, su ve doğalgaz aboneliği verilmesi yasaklandı ve metrekare başına cezalar artırıldı.&lt;/p&gt;

&lt;h3&gt;Prefabrik ev taşınabilir olduğu için ruhsattan muaf mı?&lt;/h3&gt;
&lt;p&gt;Hayır. İmar Kanunu yapıyı daimi veya geçici, sabit veya hareketli tesisleri kapsayacak şekilde tanımlar. Sökülüp taşınabilmesi ya da beton temel yerine farklı bir temel kullanılması, prefabrik evi ruhsat yükümlülüğünden çıkarmaz.&lt;/p&gt;

&lt;h3&gt;Köydeki arsaya prefabrik ev için ruhsat alınır mı?&lt;/h3&gt;
&lt;p&gt;Belediye ve mücavir alan sınırları dışındaki köy yerleşik alanlarında konut için yapı ruhsatı aranmayabilir, ancak projelerin onaylanması ve muhtarlığa bilgi verilmesi gerekir. İzmir, Manisa, Aydın, Balıkesir ve Muğla gibi büyükşehirlerde eski köyler mahalle olduğu için hangi kuralın geçerli olduğunu ilçe belediyesine sorun.&lt;/p&gt;

&lt;h3&gt;Prefabrik ev iskan alır mı?&lt;/h3&gt;
&lt;p&gt;Evet. Ruhsatla yapılmış ve onaylı projesine uygun tamamlanmış bir prefabrik ev, betonarme bir yapı gibi yapı kullanma izni (iskan) alabilir. İskan, kalıcı abonelikler, tapuda cins değişikliği ve konut kredisi için çoğu zaman gereklidir.&lt;/p&gt;

&lt;h3&gt;Ruhsat sürecini Egeser Prefabrik mi yürütür?&lt;/h3&gt;
&lt;p&gt;Ruhsat başvurusu arsa sahibi adına ilgili belediyeye yapılır ve kararı belediye verir. Egeser Prefabrik, seçtiğiniz model için başvuruda gereken mimari ve statik proje dokümanlarının hazırlanmasında destek olur ve üretim takvimini ruhsat sürecine göre planlar.&lt;/p&gt;

&lt;h2&gt;Kaynaklar&lt;/h2&gt;
&lt;ul&gt;
  &lt;li&gt;3194 sayılı İmar Kanunu, m. 5, 21, 27, 30, 32 ve 42 (mevzuat.gov.tr).&lt;/li&gt;
  &lt;li&gt;5403 sayılı Toprak Koruma ve Arazi Kullanımı Kanunu (mevzuat.gov.tr).&lt;/li&gt;
  &lt;li&gt;7584 sayılı Toprak Koruma ve Arazi Kullanımı Kanunu ile Bazı Kanunlarda Değişiklik Yapılmasına Dair Kanun, Resmî Gazete 20.06.2026, sayı 33286.&lt;/li&gt;
  &lt;li&gt;Tarım Arazilerinin Korunması ve Kullanılması Hakkında Yönetmelik, Resmî Gazete 04.04.2026, sayı 33214.&lt;/li&gt;
  &lt;li&gt;Planlı Alanlar İmar Yönetmeliği, Resmî Gazete 03.07.2017, sayı 30113 (güncel hâli).&lt;/li&gt;
  &lt;li&gt;5237 sayılı Türk Ceza Kanunu, m. 184.&lt;/li&gt;
  &lt;li&gt;Tarım ve Orman Bakanlığı Batman İl Müdürlüğü, &quot;5403 Sayılı Toprak Koruma ve Arazi Kullanımı Kanununda Yapılan Değişiklikler ve Artırılan Cezai Müeyyideler Duyurusu&quot;, 13.07.2026.&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;em&gt;Bu yazı genel bilgilendirme amaçlıdır ve hukuki görüş yerine geçmez. Mevzuat ve belediye uygulamaları değişebilir; arsanız için kesin bilgiyi ilgili belediyenin imar müdürlüğünden, tarım arazilerinde ise İl Tarım ve Orman Müdürlüğü''nden alın. Son güncelleme: Kasım 2026.&lt;/em&gt;&lt;/p&gt;

&lt;h2&gt;Arsanızı birlikte değerlendirelim&lt;/h2&gt;
&lt;p&gt;Elinizde bir arsa ya da baktığınız bir parsel varsa imar durum belgesiyle birlikte bize ulaşın. Parselin izin verdiği büyüklüğe uyan modelleri birlikte seçelim, proje ve üretim takvimini ruhsat sürecine göre planlayalım. Kemalpaşa''daki üretim tesisimizi ve showroom''umuzu ziyaret edebilir ya da &lt;a href=&quot;https://www.egeserprefabrik.com.tr/iletisim&quot;&gt;iletişim sayfamızdan teklif isteyebilirsiniz&lt;/a&gt;.&lt;/p&gt;',
  date_modified = NOW()
WHERE slug = 'ruhsat-ve-izin-sureci-nasil-isler';

-- KONTROL: guncellenen = 1, yedek = 1
SELECT (SELECT COUNT(*) FROM oc_egeser_blog_post WHERE slug = 'ruhsat-ve-izin-sureci-nasil-isler' AND meta_title LIKE 'Prefabrik Ev Ruhsat%2026%') AS guncellenen, (SELECT COUNT(*) FROM oc_egeser_blog_post_backup_20261114) AS yedek;
