# Egeser Prefabrik — Denetim "Bugün" Düzeltmeleri

`docs/egeser-prefabrik-denetim-raporu.md` raporundaki ilk aşama kod düzeltmeleri.
Depo kökü sunucudaki `public_html/` ile aynı yapıdadır. İlk commit orijinal yedek, ikinci commit bu düzeltmelerdir.

## Değişen dosyalar

| Dosya | Değişiklik |
|---|---|
| `catalog/view/theme/egeser/template/common/home.tpl` | Sayaçlar HTML'de `0` yerine gerçek değerle (8+, 42 M², 4+, 233+) geliyor; JS animasyonu aynen çalışır. Hero alanındaki "Ana proje görseli… otomatik kullanılır" taslak metni kaldırıldı. |
| `catalog/controller/product/product.php` | `og:image` / `twitter:image` artık logo değil ürün görseli (1200×630). |
| `catalog/controller/product/category.php` | Kategori görseli varsa `og:image` olarak kullanılır. Fiyat, oylama ve ürün kodu sıralama seçenekleri kaldırıldı (Varsayılan ve Ad A-Z / Z-A kaldı). |
| `catalog/view/theme/egeser/template/common/footer.tpl` | WhatsApp linkine hazır mesaj eklendi. |
| `catalog/view/theme/egeser/template/information/contact.tpl` | 4 WhatsApp linkine hazır mesaj eklendi. |

## Kurulum

1. Sunucuda bu 5 dosyanın yedeğini alın.
2. Değişen dosyaları aynı yollarla `public_html/` altına yükleyin.
3. Admin → Ana Sayfa'daki mavi dişli (Geliştirici Ayarları) → tema ve SASS önbelleğini temizleyin; Eklentiler → Modifikasyonlar → **Yenile**.
4. Kontrol: ana sayfa kaynak kodunda (Ctrl+U) `eh12-stats__num` değerleri gerçek rakamları göstermeli; bir ürün linkini https://developers.facebook.com/tools/debug/ ile test edin.

## Kod dışı (panel/sunucu) adımlar

- **`opcache-temizle.php` dosyasını sunucudan da silin** (depodan kaldırıldı, sunucuda hâlâ duruyor).
- **DB şifresini değiştirin** (cPanel → MySQL Databases) ve `config.php` + `admin/config.php` dosyalarını güncelleyin.
- `(0)` sayıları: Admin → Sistem → Ayarlar → Mağaza → Seçenekler → **Kategori Ürün Sayısı = Hayır**.
- 158 m² prefabrik ofis ürününün fiyatını (2.370.000 TL) bilinçli değilse 0 yapın.

---

# 2. Aşama — Teknik SEO Düzeltmeleri

| Dosya | Değişiklik |
|---|---|
| `system/library/document.php` | Sayfa bazlı robots meta için `setRobots()` / `getRobots()` eklendi. |
| `catalog/controller/common/header.php` | Robots önceliği: sayfa ayarı → rota kuralı → genel `egeser_robots` ayarı. `product/search`, `product/compare`, `account/*`, `affiliate/*`, `checkout/*` sayfaları `noindex,follow`. |
| `catalog/view/theme/egeser/template/product/category.tpl` | Ürünü olmayan kurumsal kategorilerde (Yatakhane, Şantiye, Sosyal Tesis, Özel Proje) "henüz ürün bulunmuyor" yerine projelendirme odaklı olumlu mesaj. Bu sayfalar özgün içerikli hizmet sayfaları olduğu için **indekste ve sitemap'te kalır**. |
| `information/egeser_hakkimizda_v2.tpl`, `information/egeser_kurumsal_v1.tpl` | H1'de bitişik okunan kelimeler ayrıldı ("Hakkımızda Egeser Prefabrik", "Kurumsal Prefabrik Yapı Çözümleri"). |
| `product/product.tpl` | Product şeması açıklamasında başlık ve paragraflar artık birbirine yapışmıyor ("özeti122" → "özeti 122"). |

## Kurulum
`system/library/document.php` sistem dosyasıdır; OCMOD önbelleğinde bu dosyanın kopyası yoktur, doğrudan yüklenebilir. Yükleme sonrası Eklentiler → Modifikasyonlar → **Yenile**.

## Kontrol
- Kategori ve ürün sayfalarında `noindex` **olmamalı**.
- Arama sayfası (`index.php?route=product/search&search=ev`) kaynak kodunda `noindex,follow` olmalı.

---

# 3. Aşama — Veritabanı Düzeltmeleri (A Listesi)

Dosyalar `database/` klasöründe (web erişimine kapalı):

- `07_VERITABANI_DUZELTME_YUKLE.sql` — kurulum
- `08_VERITABANI_DUZELTME_GERI_AL.sql` — geri alma
- `09_VERITABANI_DEGISIKLIK_LISTESI.csv` — yazılan tüm yeni metinler ve karakter sayıları (Excel'de açılabilir)

## Ne değişir

| # | Değişiklik | Kayıt |
|---|---|---|
| 1 | Kategori ürün sayısı "(0)" gizlenir (`config_product_count = 0`) | 1 ayar |
| 2 | Kullanılmayan yorum sistemi ve misafir yorumu kapatılır | 2 ayar |
| 3 | Ana sayfa meta açıklaması 181 → 153 karakter | 1 ayar |
| 4 | 8 kısa ürün başlığına "\| Egeser Prefabrik" eklenir | 8 ürün |
| 5 | Ofis/yemekhane başlıkları "Fiyatları" ifadesinden arındırılır, ≤60 karakter | 18 ürün |
| 6 | Ürün meta açıklamaları ≤160 karakter; "uygun fiyat / hemen sipariş" vaatleri çıkarıldı | 37 ürün |
| 7 | 101 m² ofis ürün kodu `PRF-OFIS-100M2` → `PRF-OFIS-101M2` | 1 ürün |
| 8 | 3 yönlendirme zinciri doğrudan son adrese bağlanır | 3 yönlendirme |
| 9 | Pasif ürüne (404) giden yönlendirme → `/tek-katli-prefabrik-evler` | 1 yönlendirme |
| 10 | Kayıt/ödeme/ortaklık sözleşme linki → Gizlilik Politikası (id 13) | 3 ayar |
| 11 | 6 blog yazısının meta başlık/açıklaması uygun uzunluğa getirilir | 6 yazı |
| 12 | 158 m² ofisin 2.370.000 TL fiyatı sıfırlanır (diğer ürünler gibi "Proje Bazlı") | 1 ürün |

Ürün adları, açıklamaları (sayfa içeriği), diğer fiyatlar, görseller, SEO URL'leri, kategoriler ve teklif kayıtlarına **dokunulmaz**.

## Kurulum
1. cPanel → phpMyAdmin → `egeserp1_egeserprefabrik` veritabanını seçin.
2. Önce **Dışa Aktar** ile tam yedek alın.
3. **İçe Aktar** → `07_VERITABANI_DUZELTME_YUKLE.sql`.
4. Sonuç tablosu şu değerleri göstermeli:
   `ayar_kapatildi_3 = 3`, `sozlesme_linki_3 = 3`, `urun_meta_uygun_37 = 37`, `yonlendirme_4 = 4`, `blog_meta_uygun_6 = 6`, `urun_kodu_167 = PRF-OFIS-101M2`, `fiyatli_urun_0 = 0`.
5. Admin panelinden önbelleği temizleyin.

## Güvenlik
- Dosya önce `oc_egeser_*_backup_20261030` adlı 5 yedek tablo oluşturur, sonra yalnızca listedeki kayıtları günceller.
- Dosya **ikinci kez** çalıştırılırsa "tablo zaten var" hatasıyla durur; ilk yedek ezilmez.
- Geri almak için `08_VERITABANI_DUZELTME_GERI_AL.sql` dosyasını içe aktarın. Yedek tablolar, her şey yolunda görüldükten sonra silinebilir.
- Yerel kopyada test edildi: kurulum → kontroller beklenen değerleri verdi → ikinci çalıştırma hatayla durdu → geri alma sonrası tablolar sağlama toplamıyla birebir orijinal hale döndü.

---

# 4. Aşama — Eski Yedek Tabloların Silinmesi

`database/10_ESKI_YEDEKLERI_SIL.sql` — Eylül 2026 paketlerinden kalan **21** yedek tabloyu siler (`oc_egeser_p3_*_bak_20260910`, `oc_egeser_p4a_*_bak_20260911`, `*_backup_20260919`, `*_removed_20260919`, `oc_egeser_redirect_backup_before_product_activation`).

- Site kodu bu tabloların hiçbirini kullanmaz (kod taraması yapıldı).
- `oc_egeser_p3_setting_bak_20260910` FTP bağlantı bilgilerini (şifre dahil) içeriyordu; silinmesinin ana nedeni budur. **FTP şifresi ayrıca cPanel → FTP Accounts bölümünden değiştirilmelidir**, çünkü bu bilgi daha önce paylaşılan veritabanı dökümlerinde de yer alıyor.
- Yalnızca adı tek tek yazılmış tablolar silinir; joker/toplu silme yoktur. Bugünkü `*_20261030` yedeklerine dokunmaz.
- **Geri alınamaz.** Çalıştırmadan önce phpMyAdmin → Dışa Aktar ile tam yedek alın.
- Kontrol: sonuç tablosunda `kalan_eski_yedek = 0` görünmeli.
- Yerel kopyada test edildi: 21 tablo silindi, ürün/yönlendirme/blog tabloları değişmedi, ikinci çalıştırma hatasız geçer.

## Önerilen sıra
1. phpMyAdmin → Dışa Aktar (tam yedek)
2. `07_VERITABANI_DUZELTME_YUKLE.sql`
3. Siteyi kontrol edin
4. `10_ESKI_YEDEKLERI_SIL.sql`
5. Birkaç gün sorun görülmezse `oc_egeser_*_backup_20261030` tablolarını da silebilirsiniz

---

# 5. Aşama — Dış Denetim (PDF) Bulguları

| Dosya | Değişiklik |
|---|---|
| `catalog/controller/product/category.php` | Sayfalama sayfaları (`?page=2`, `?page=3`…) kendi adreslerini canonical olarak gösterir. Sıralama/limit parametreleri canonical'a eklenmez. |
| `catalog/view/theme/egeser/template/product/product.tpl` | Teknik özellikler bölümündeki geliştirici notu ("Ürün kartına girilen değerler otomatik olarak…") müşteriye yönelik bir cümleyle değiştirildi. |
| `catalog/controller/product/product.php` | SEO adresiyle açılan ürünlerde breadcrumb'a (görünür + şema) kategori basamağı eklenir: Ana Sayfa › Prefabrik Yapılar › Tek Katlı Prefabrik Evler › Ürün. En derin, eşitlikte en az ürünlü (en özel) kategori seçilir; 50 ürünün tamamı kendi kategorisine düşer (tek katlı 20, dubleks 6, ofis 16, yemekhane 8). |

## Kontrol
- `/prefabrik-yapilar?page=2` kaynak kodunda `<link href="…/prefabrik-yapilar?page=2" rel="canonical">` olmalı.
- Bir ürün sayfasında breadcrumb'ta kategori görünmeli; https://search.google.com/test/rich-results ile BreadcrumbList 4 öğe göstermeli.
- Ürün sayfası "Teknik Özellikler" bölümünde geliştirici notu görünmemeli.

## Yapılmadı (karar gerekli)
- Organization ve LocalBusiness şemasında iki farklı adres var. Doğru adres netleşince tek adrese çekilecek.
