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
