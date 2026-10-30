# Egeser Prefabrik — Performans ve SEO Denetimi (Canlı Site)

**Tarih:** 30.10.2026 · **Site:** https://www.egeserprefabrik.com.tr
**Yöntem:**
- Lighthouse 12 (mobil + masaüstü), 5 sayfa tipi
- Gerçek mobil tarayıcı testi (Playwright, Pixel 5), 6 sayfa
- Sitemap'teki 91 sayfanın ve 126 iç linkin tamamının taranması
- HTTP başlık ve görsel ağırlığı ölçümü

> Lighthouse ölçümleri bulut sunucusundan, simüle edilmiş mobil ağda yapıldı. Gerçek kullanıcı değerleri farklı olabilir; asıl referans Search Console → Core Web Vitals raporudur. Göreli sorunlar (hangi dosya ağır, hangisi yavaşlatıyor) ise kesindir.

---

## 1. Özet

| Alan | Puan | Durum |
|---|---|---|
| **Performans (mobil)** | **74–98** | Ürün ve kategori sayfaları çok iyi. **Blog yazıları ve ana sayfa görseller yüzünden yavaş.** |
| Performans (masaüstü) | 99 | Çok iyi |
| SEO (Lighthouse) | 100 | Teknik temel eksiksiz |
| SEO (genel değerlendirme) | **84 / 100** | Önceki denetim: 74. Veritabanı paketi uygulandığı için yükseldi. |
| Erişilebilirlik | 96–97 | Renk kontrastı ve küçük dokunma alanları |
| En İyi Uygulamalar | 100 | JS hatası yok, HTTPS doğru |

**En önemli 3 sorun:**
1. **Blog kapak görselleri çok ağır.** "Prefabrik Ev Fiyatları 2026" yazısının kapağı **1,9 MB PNG**; bu yüzden mobilde ana içerik **11,7 saniyede** görünüyor. Diğer 12 kapak da 190–490 KB.
2. **Ana sayfa slider'ı mobilde 1,5 MB görsel indiriyor.** 4 adet 1080×1080 JPEG var ve telefona da aynı büyük boy gönderiliyor. Mobil LCP **4,0 sn**; Google'ın "iyi" sınırı 2,5 sn.
3. **Hazırlanan site dosyası düzeltmeleri henüz yüklenmemiş.** Sayaçlar hâlâ `0`, taslak metin duruyor, paylaşım görseli hâlâ logo, `opcache-temizle.php` hâlâ herkese açık.

---

## 2. Önceki Düzeltmelerin Canlıdaki Durumu

| Düzeltme | Durum |
|---|---|
| Veritabanı paketi (`07_…YUKLE.sql`) | ✅ **Uygulanmış**: "(0)" sayıları gizli, 158 m² ofisin fiyatı kalkmış, başlık ve açıklamalar düzelmiş |
| Sayaçlar gerçek değerle | ❌ Yüklenmemiş (`home.tpl`) |
| Taslak "Ana proje görseli…" metni | ❌ Hâlâ sayfa kaynağında |
| Ürün/kategori paylaşım görseli | ❌ Hâlâ `logo-copy.png` |
| Fiyata göre sıralama | ❌ Hâlâ var |
| Footer/iletişim WhatsApp hazır mesajı | ❌ Yüklenmemiş |
| Arama sayfası `noindex` | ❌ Yüklenmemiş |
| `opcache-temizle.php` silinmesi | ❌ **Hâlâ açık (200)** |
| Bingbot erişimi | ❌ Hâlâ **406** |

**Aksiyon:** `egeser_site_dosyalari.zip` içindeki 11 dosyayı yükleyin ve `opcache-temizle.php` dosyasını silin.

---

## 3. Performans

### 3.1 Ölçümler (Lighthouse, mobil)

| Sayfa | Puan | FCP | **LCP** | TBT | CLS | Ağırlık |
|---|---|---|---|---|---|---|
| Ana sayfa | 84 | 1,5 sn | **4,0 sn** 🟠 | 150 ms | 0,016 | 2,49 MB |
| Ana sayfa (masaüstü) | 99 | 0,4 sn | 0,8 sn | 0 ms | 0,015 | 2,54 MB |
| Kategori (tek katlı evler) | 98 | 1,4 sn | 2,1 sn | 0 ms | 0,015 | 472 KB |
| Ürün (80 m²) | 98 | 1,3 sn | 2,3 sn | 10 ms | 0,037 | 659 KB |
| Blog (fiyatlar 2026) | 74 | 1,4 sn | **11,7 sn** 🔴 | 0 ms | 0,001 | 2,21 MB |

Sunucu yanıt süresi (TTFB) 240–290 ms ile iyi. JavaScript sayfayı kilitlemiyor (TBT ≈ 0) ve sayfa kayması (CLS) çok düşük. **Sorun tamamen görsel ağırlığında.**

### 3.2 Bulgular (önem sırasıyla)

**🔴 P1 — Blog kapak görselleri**

| Görsel | Boyut |
|---|---|
| prefabrik-ev-fiyatlari (PNG) | **1.931 KB** |
| prefabrik-evlerde-kisa-hazirlik | 491 KB |
| prefabrik-ev-arsa-secimi | 424 KB |
| prefabrik-ev-omru | 409 KB |
| kurumsal-prefabrik-blog | 400 KB |
| ruhsat-ve-izin-sureci | 379 KB |
| … diğer 7 görsel | 190–340 KB |

Kapaklar 1080×1080 boyutunda yükleniyor; sayfada ise en fazla ~600 px genişlikte gösteriliyor.
**Çözüm:** Kaynak görselleri 1200 px genişlik ve %75 kalite JPEG (veya WebP) olarak yeniden kaydedip `image/catalog/blog/` altına aynı adla yükleyin, sonra `image/cache/catalog/blog/` klasörünü temizleyin. Hedef: her kapak ≤120 KB. **Fiyatlar yazısının kapağı PNG yerine mutlaka JPEG/WebP olmalı**; tek başına 1,8 MB kazanç sağlar.

**🟠 P2 — Ana sayfa slider ve kart görselleri (mobil 1,5 MB+)**

| Görsel | Boyut |
|---|---|
| slider/egeser-prefabrik-showroom-1 (1080×1080) | 459 KB |
| slider/cift-katli-prefabrik-ev (1080×1080) | 456 KB |
| slider/tek-katli-prefabrik-ev (1080×1080) | 361 KB |
| slider/satis-ofisi (1080×1080) | 267 KB |
| home/cift-katli-placeholder.jpg | 350 KB |
| home/tek-katli-placeholder.jpg | 262 KB |

- Slider JS'i 4 görselin hepsini baştan indiriyor; telefona da 1080 px boy gönderiliyor.
- **Çözüm:**
  1. Slider görsellerini ≤150 KB olacak şekilde sıkıştırın.
  2. Slider'da yalnızca ilk görseli hemen, diğerlerini ilk geçişten hemen önce yükleyin (`egeser_hero_slider.tpl` JS değişikliği).
  3. İlk slider görseli için `<link rel="preload" as="image" fetchpriority="high">` ekleyin.
  4. "placeholder" adlı iki ev görselini (612 KB) sıkıştırın; adlarına bakılırsa geçici görseller, gerçek fotoğraflarla değiştirilmeleri de düşünülmeli.

**🟡 P3 — Ürün sayfası: kat planı görseli ekran dışında olduğu halde hemen yükleniyor**
`…kat-plani-1-1600x1200.jpg` (170 KB) ve ikinci galeri görseli `loading="lazy"` olmadan yükleniyor. Lazy yapılınca ürün sayfası başına ~200–350 KB kazanılır.

**🟡 P4 — Geri tuşu önbelleği kapalı**
HTML sayfaları `Cache-Control: no-store` ile geliyor (PHP oturumunun varsayılan ayarı). Bu ayar tarayıcının geri/ileri önbelleğini (bfcache) kapatıyor; kullanıcı "geri" dediğinde sayfa baştan yükleniyor. Lighthouse 4 sayfada uyardı.
**Çözüm:** `system/library/session.php` veya başlangıçta `session_cache_limiter('private_no_expire')` kullanılabilir. Form/CSRF davranışı test edilmeli; **düşük öncelik**.

**🟡 P5 — Favicon olarak 512×512 PNG (56 KB) her sayfada yükleniyor**
`<link rel="icon">` 512 px Android ikonunu gösteriyor. 32×32 `favicon.ico` (≈5 KB) + 180 px `apple-touch-icon` kullanılmalı (Admin → Ayarlar → Görsel → İkon).

**🟡 P6 — CSS/JS dosyalarında sürüm numarası olmadan 1 yıllık "immutable" önbellek**
`theme.css`, `egeser-hero-slider.css` gibi dosyalar `max-age=31536000, immutable` ile geliyor ama adresleri `?v=` içermiyor. **Bu dosyalar güncellenirse tekrar gelen ziyaretçiler 1 yıl boyunca eski CSS'i görür.** Bazı dosyalarda `?v=` var (`egeser-layout-v5.css?v=…`). Değişen her CSS/JS dosyasında `?v=` değeri artırılmalı.

**⚪ P7 — Diğer**
- **WebP kullanılmıyor.** Tüm görseller JPEG/PNG. WebP ile görsel başına ~%25–35 kazanç.
- Görseller ayrıca Brotli ile sıkıştırılıyor. JPEG/PNG'de kazanç yok, sunucu CPU'su harcanıyor; `.htaccess` → `mod_deflate` listesinde görsel türü yok, bu muhtemelen hosting (LiteSpeed) ayarı. Önemsiz.
- Ana sayfa DOM'u 973 öğe ve ~86 KB inline CSS içeriyor. Lighthouse "aşırı DOM" uyarısı veriyor ama TBT 150 ms ile kabul edilebilir.
- Kullanılmayan JS/CSS: ~22 KB + 24 KB (Bootstrap 3 / Font Awesome 4). Küçük kazanç.

### 3.3 İyi Olanlar
- TTFB 240–290 ms; HTML, CSS ve JS Brotli ile sıkıştırılıyor; HTTP/2 ve HTTP/3 açık.
- Tüm JS dosyaları `defer` ile yükleniyor; render-blocking JS yok.
- Statik dosyalar 1 yıl önbellekte; Google Analytics çerez onayından sonra yükleniyor.
- 6 sayfada mobilde **JS hatası, başarısız istek veya yatay kaydırma yok**.

---

## 4. SEO

### 4.1 Tarama Sonuçları (91 sayfa, 126 iç link)

| Kontrol | Sonuç |
|---|---|
| HTTP durumu | ✅ 91/91 sayfa 200 |
| Kırık iç link | ✅ 0 / 126 |
| Canonical | ✅ Tümü kendine işaret ediyor |
| H1 | ✅ Her sayfada tek H1 |
| Tekrarlanan title / description | ✅ Yok |
| Title 30–60 karakter | ✅ 89/91 (istisnalar: `/prefabrik-ev-modelleri` 61, `/hakkimizda` 29) |
| Description 120–160 karakter | ✅ 90/91 (`/cerez-politikasi` 119) |
| İnce içerik (<400 kelime) | ✅ Yok |
| `alt` eksik görsel | 🟡 2 (blog: "Prefabrik ev ve çelik ev arasındaki farklar") |
| `noindex` | ✅ İndekslenmesi gereken hiçbir sayfada yok |
| Yapılandırılmış veri | ✅ BreadcrumbList (88), FAQPage (71), Product (50), BlogPosting (13), Service (6), LocalBusiness, Organization |

### 4.2 Bulgular

**🔴 S1 — Bingbot, YandexBot ve AhrefsBot kimliğine 406 hatası (devam ediyor)**
Bing, ChatGPT Search ve Copilot'un da veri kaynağı. Bing Webmaster Tools → URL İnceleme ile doğrulayın; 406 alırsanız hosting firmasından ModSecurity/Imunify "bad bot" kuralının doğrulanmış Bing IP'leri için kapatılmasını isteyin.

**🔴 S2 — Yüklenmemiş site düzeltmeleri** (bkz. Bölüm 2)
Sayaçların Google'a `0` görünmesi ve taslak metin, ilk izlenimi ve güveni doğrudan etkiliyor.

**🟠 S3 — Blog yazılarına iç link çok zayıf**
7 blog yazısı sitede yalnızca **1 yerden** (`/blog` listesi) link alıyor: kurumsal yapı seçimi rehberi, montaj süreci, duvarların yanmazlık sınıfı, **prefabrik ev fiyatları 2026**, prefabrik/çelik ev farkları, deprem yönetmeliği, kullanım amaçları.
**Çözüm:**
- İlgili ürün ve kategori sayfalarından "Rehber" kutusuyla bu yazılara link verin (ör. tek katlı evler kategorisinden "Prefabrik ev fiyatları 2026" ve "Montaj süreci").
- Ana sayfadaki SSS / "fiyatlar neye göre belirlenir" bölümünden fiyat yazısına link verin.
- Blog yazılarının birbirine verdiği linkleri artırın.

"Prefabrik ev fiyatları" en çok aranan konu; bu yazının güçlendirilmesi en yüksek getirili SEO işi.

**🟠 S4 — Ürün şeması zengin sonuç için yetersiz**
50 üründe Product şeması var ama `offers`, `aggregateRating` ve `review` alanlarının üçü de yok (158 m² ofisin fiyatı da sıfırlandığı için artık hiçbirinde `offers` yok). Google bu durumda Search Console'da "Ürün snippet'leri: geçersiz öğe" uyarısı verir ve yıldız/fiyat göstermez.
**Seçenekler:**
- (a) Modeller için "başlangıç fiyatı" belirlenirse `AggregateOffer` (`lowPrice`) eklenir.
- (b) Fiyat verilmeyecekse `Product` yerine `Service` + `isRelatedTo` yapısına geçilir; uyarılar kalkar.

Bu bir iş kararı.

**🟡 S5 — FAQPage şeması 71 sayfada**
Google, Ağustos 2023'ten beri SSS zengin sonuçlarını yalnızca resmi sağlık ve devlet sitelerinde gösteriyor. Şemanın zararı yok, ama arama sonuçlarında SSS açılır listesi beklenmemeli. Kaldırmaya gerek yok.

**🟡 S6 — Küçük meta düzeltmeleri** (Admin panelinden)
- `/prefabrik-ev-modelleri` title 61 karakter → 1 karakter kısaltın.
- `/hakkimizda` title 29 karakter → "Hakkımızda | Egeser Prefabrik İzmir Kemalpaşa" gibi.
- `/cerez-politikasi` description 119 karakter → birkaç kelime ekleyin.
- Çelik ev blog yazısındaki 2 görsele `alt` ekleyin.

**🟡 S7 — Mobil okunabilirlik ve dokunma alanları**
- Sayfa başına 25–41 link/buton 32 px'ten küçük (Google önerisi ≥44 px; özellikle footer linkleri ve kart altı "İncele" linkleri).
- 13 px'ten küçük metin: Hakkımızda'da 50, kategori sayfasında 48 paragraf/liste öğesi (ör. 11,5 px etiketler).
- Lighthouse her sayfada **renk kontrastı yetersiz** uyarısı veriyor (açık gri metinler, `rgba(255,255,255,.62)` istatistik etiketleri).

Mobil kullanılabilirlik sıralamayı dolaylı etkiler; asıl etkisi dönüşüm oranında.

**⚪ S8 — Mevcut kalan maddeler (önceki rapordan)**
- WebP ve görsel optimizasyonu (bkz. Performans P1–P2)
- Kurumsal belge rozetleri ve gerçek fabrika/proje fotoğrafları (E-E-A-T güven sinyali)
- Ofis/yemekhane ürünlerinde teknik özellik tablosu yok (evlerde 17 özellik var)

### 4.3 İyi Olanlar
- Tamamı Türkçe ve SEO uyumlu URL yapısı, HTTPS + www yönlendirmesi, HSTS
- Dinamik sitemap (91 URL, `lastmod` dolu), doğru `robots.txt`, yapay zekâ botları için `llms.txt`
- Tüm sayfalarda OG ve Twitter etiketleri; zengin yapılandırılmış veri
- Şehir sayfaları (İzmir, Manisa, Aydın, Uşak, Balıkesir, Muğla) ve 13 blog yazısıyla iyi içerik kapsamı
- 50 ürünün tamamında kat planı ve oda bazlı m² dökümü

---

## 5. Öncelikli Aksiyon Planı

### Hemen (≤1 saat, sizin tarafınızda)
- [ ] `egeser_site_dosyalari.zip` dosyalarını yükleyin, önbelleği temizleyin
- [ ] `opcache-temizle.php` dosyasını sunucudan silin
- [ ] "Prefabrik ev fiyatları 2026" kapak görselini JPEG ≤120 KB olarak yeniden yükleyin (**tek başına mobil LCP'yi ~11,7 sn'den ~2–3 sn'ye indirir**)

### Bu hafta
- [ ] Diğer 12 blog kapağını ve 4 slider görselini ≤120–150 KB'a sıkıştırın
- [ ] Ana sayfadaki 2 "placeholder" görseli sıkıştırın veya gerçek fotoğrafla değiştirin
- [ ] Bing Webmaster Tools'ta 406 testini yapın; gerekirse hosting firmasıyla görüşün
- [ ] Favicon'u 32 px `.ico` yapın
- [ ] S6'daki küçük meta düzeltmeleri

### 2–4 hafta (kod; isterseniz ben hazırlarım)
- [ ] Slider: yalnızca ilk görseli hemen yükle + preload (P2)
- [ ] Ürün sayfası galerisi ve kat planına `loading="lazy"` (P3)
- [ ] Blog yazılarına ürün ve kategori sayfalarından "İlgili Rehber" linkleri (S3)
- [ ] Değişen CSS/JS dosyalarına `?v=` sürüm numarası (P6)
- [ ] Kontrast ve dokunma alanı düzeltmeleri (S7)
- [ ] Product şeması kararı: başlangıç fiyatı mı, Service yapısı mı (S4)

### Orta vade
- [ ] WebP dönüşümü (OpenCart 2.3'te otomatik değil; sunucu tarafı eklenti veya toplu dönüşüm)
- [ ] Bootstrap 3 / Font Awesome 4 / jQuery 2.1.1 sadeleştirmesi
- [ ] PHP 8.x ve OpenCart sürüm yükseltme planı
