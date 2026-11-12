# Site profili — Egeser Prefabrik

- **Site:** https://www.egeserprefabrik.com.tr
- **Altyapı:** OpenCart
- **Konu:** Yalnızca prefabrik yapılar (bireysel ve kurumsal)
- **Konum:** İzmir / Kemalpaşa — üretim ve showroom
- **Hizmet bölgeleri:** İzmir, Manisa, Aydın, Uşak, Balıkesir, Muğla
- **Dönüşüm hedefi:** Teklif formu, telefon araması, showroom ziyareti

Bu repo sitenin OpenCart kaynak kodunu içerir.

Egeser'in iki ayrı sitesi vardır; kardeş site https://www.egeserkonteyner.com (yalnızca konteyner, PrestaShop). Aşağıdaki
"Ortak kurallar" iki sitenin reposunda da aynıdır: birini değiştirirsen diğerini de
güncelle.

## Bu sitenin hedefi
Prefabrik ev ve prefabrik kurumsal yapı aramalarında İzmir ve Ege'de görünür olmak.

## Hedef sayfa yapısı
- Ana sayfa → "İzmir prefabrik ev / prefabrik yapı"
- Bireysel: tek katlı prefabrik ev, dubleks prefabrik ev, model sayfaları
- Kurumsal: prefabrik ofis, yatakhane, yemekhane, şantiye yapısı
- Projelerimiz, Teknik Bilgiler, Blog, Hakkımızda, İletişim
- Bölge sayfaları: yalnızca yukarıdaki hizmet bölgeleri için ve her biri özgün
  içerikle. Sadece şehir adı değişen kopya sayfa üretme.

## Bu sitede YASAK
- "konteyner" kelimesini hedefleyen title, H1, meta, kategori, ürün veya blog.
- Konteyner ürünü listeleme. Konteyner soran ziyaretçi için yalnızca
  egeserkonteyner.com'a tek bir yönlendirme linki yeterli.

## Bilinen durum (ilk denetimde doğrula)
- Ana sayfadaki "En çok tercih edilen projeler" listesi iki kez tekrar ediyor
  görünüyor.
- Ana sayfada SSS bölümü var; FAQ şeması olup olmadığını kontrol et.

## Denetim

    /seo audit https://www.egeserprefabrik.com.tr

Öneri yazarken OpenCart'ta nereden uygulanacağını da belirt (admin ayarı, tema
dosyası, SEO URL, modül).

---

# Ortak kurallar (iki site için aynı)

## Temel kural: iki site aynı aramada yarışmaz

Her arama niyeti tek bir siteye aittir. Bir sitede çalışırken diğer sitenin
kelimelerini hedefleyen title, H1, meta description, kategori, ürün, blog yazısı
veya şema ÖNERME ve YAZMA. Böyle bir fırsat görürsen "diğer siteye ait" diye
raporla, uygulama.

## Kelime sınır haritası

### egeserprefabrik.com.tr'ye ait
- prefabrik ev, prefabrik yapı, prefabrik ev modelleri, prefabrik ev fiyatları
- tek katlı prefabrik ev, çift katlı / dubleks prefabrik ev
- prefabrik ofis, prefabrik yatakhane, prefabrik yemekhane, prefabrik şantiye yapısı
- çelik konstrüksiyon / hafif çelik ev (prefabrik bağlamında)
- Bölgesel: İzmir / Manisa / Aydın / Uşak / Balıkesir / Muğla + "prefabrik"

### egeserkonteyner.com'a ait
- konteyner, konteyner fiyatları, konteyner üreticisi, sandviç panel konteyner
- yaşam konteyneri, konteyner ev, ofis konteyneri, şantiye konteyneri
- WC / duş konteyneri, güvenlik kulübesi / kabin
- demonte konteyner
- ölçü bazlı aramalar (ör. 300x700, 21 m² konteyner)
- Bölgesel: İzmir ve diğer iller + "konteyner"

### Gri alan (karar: aşağıdaki gibi, değiştirmeden önce sor)
- "şantiye": yapı prefabrikse prefabrik sitesi, konteynerse konteyner sitesi.
  Tek başına "şantiye binası" → prefabrik; "şantiye konteyneri" → konteyner.
- "ofis": "prefabrik ofis" → prefabrik; "ofis konteyneri" → konteyner.
- "modüler ev / modüler yapı": konteyner sitesi.
- "tiny house": henüz atanmadı. Hedeflemeden önce kullanıcıya sor.

## Marka ve bölge kelimeleri
- "Egeser" marka aramaları iki sitede de geçebilir, ama her zaman ürün kelimesiyle
  birlikte: "Egeser Prefabrik" / "Egeser Konteyner". Tek başına "Egeser" ile
  başlayan title yazma.
- İkisi de İzmir merkezli olduğu için "İzmir" iki sitede de kullanılır; ayrımı
  yanındaki ürün kelimesi yapar. "İzmir prefabrik" konteyner sitesinde,
  "İzmir konteyner" prefabrik sitesinde hedeflenmez.

## Siteler arası bağlantı
- Her site diğerine yalnızca şu yerlerden link verir: footer'da "Diğer markamız"
  bağlantısı ve Hakkımızda sayfası.
- Ürün ya da kategori sayfalarından karşı siteye anahtar kelimeli toplu link verme.
- İçerik kopyalama yok: aynı metin, aynı SSS, aynı blog yazısı iki sitede yer almaz.
  Ortak konular (ör. zemin hazırlığı, ruhsat) her site için kendi ürünü açısından
  ayrı yazılır.

## Şema (schema.org)
- Her site kendi Organization/LocalBusiness kaydını kendi adı ve kendi URL'siyle
  kullanır. İki site aynı işletmeye aitse bunu `parentOrganization` / `sameAs`
  ile belirt; aynı LocalBusiness bloğunu iki siteye kopyalama.
- Adres, telefon, çalışma saatleri gibi bilgileri uydurma; sitede yazanı kullan,
  emin değilsen sor.

## Çalışma şekli
- Sitede değişiklik gerektiren her öneri "öneri" olarak raporlanır; canlı sitede
  kullanıcı onayı olmadan değişiklik yapılmaz.
- Yönlendirme (301), sayfa silme, URL değiştirme, robots/noindex gibi geri alması
  zor işlemler her zaman önce onaya sunulur.
- Rakam uydurma: trafik, sıralama, arama hacmi gibi veriler yalnızca gerçek bir
  kaynaktan (Search Console, ölçüm aracı) geliyorsa yazılır.
- Denetim raporlarını oturumda teslim et; kullanıcı istemedikçe repoya commit etme.
