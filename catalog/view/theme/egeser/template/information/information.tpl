<?php echo $header; ?>
<?php if (empty($egeser_information_id) || !in_array((int)$egeser_information_id, array(12, 13, 14), true)) { ?><link rel="stylesheet" href="catalog/view/theme/egeser/stylesheet/egeser-corporate-v105.css"><?php } ?>
<?php
$eg_legal_pages = array(
  12 => array('url' => '/kvkk-aydinlatma-metni', 'tab' => 'KVKK Aydınlatma Metni', 'intro' => 'Teklif, iletişim ve satış süreçlerinde hangi kişisel verilerinizi, hangi amaçla ve hangi hukuki sebeple işlediğimizi; haklarınızı ve bize nasıl başvurabileceğinizi açıklar.'),
  13 => array('url' => '/gizlilik-politikasi', 'tab' => 'Gizlilik Politikası', 'intro' => 'egeserprefabrik.com.tr\'yi ziyaret ettiğinizde ve formlarımızı kullandığınızda hangi bilgilerin toplandığını ve nasıl korunduğunu özetler.'),
  14 => array('url' => '/cerez-politikasi', 'tab' => 'Çerez Politikası', 'intro' => 'Sitemizde kullanılan çerezleri, ne kadar süre saklandıklarını ve çerez tercihlerinizi nasıl değiştirebileceğinizi açıklar.')
);
$eg_info_id = isset($egeser_information_id) ? (int)$egeser_information_id : 0;
$eg_is_legal = isset($eg_legal_pages[$eg_info_id]);
if ($eg_is_legal) {
  $eg_legal_body = $description;
  $eg_legal_updated = '';
  if (preg_match('#^\s*<p>\s*<em>\s*Son güncelleme:\s*([^<]+)</em>\s*</p>#u', $eg_legal_body, $eg_m)) {
    $eg_legal_updated = trim($eg_m[1]);
    $eg_legal_body = substr($eg_legal_body, strlen($eg_m[0]));
  }
  $eg_legal_toc = array();
  $eg_legal_body = preg_replace_callback('#<h2([^>]*)>(.*?)</h2>#su', function ($m) use (&$eg_legal_toc) {
    $text = trim(html_entity_decode(strip_tags($m[2]), ENT_QUOTES, 'UTF-8'));
    $slug = strtolower(strtr($text, array('ç'=>'c','Ç'=>'c','ğ'=>'g','Ğ'=>'g','ı'=>'i','I'=>'i','İ'=>'i','ö'=>'o','Ö'=>'o','ş'=>'s','Ş'=>'s','ü'=>'u','Ü'=>'u')));
    $slug = trim(preg_replace('/[^a-z0-9]+/', '-', $slug), '-');
    if ($slug === '') { $slug = 'bolum-' . (count($eg_legal_toc) + 1); }
    $eg_legal_toc[] = array('id' => $slug, 'text' => $text);
    return '<h2 id="' . $slug . '"' . $m[1] . '>' . $m[2] . '</h2>';
  }, $eg_legal_body);
}
?>
<?php if ($eg_is_legal) { ?>
<style id="eg-legal-css">
.eg-legal{--lg-red:#d71920;--lg-ink:#171717;--lg-text:#303033;--lg-muted:#737377;--lg-soft:#f6f6f3;--lg-line:#e6e6e2;font-family:Arial,Helvetica,sans-serif;color:var(--lg-text)}
.eg-legal__hero{margin:4px 0 34px;padding:38px 42px 30px;border-radius:30px;background:var(--lg-soft)}
.eg-legal__label{display:inline-flex;align-items:center;gap:8px;color:var(--lg-red);font-size:10px;font-weight:900;letter-spacing:.14em;text-transform:uppercase}
.eg-legal__label:before{content:"";width:28px;height:2px;background:currentColor}
.eg-legal__hero h1{margin:12px 0 14px;color:var(--lg-ink);font-size:clamp(34px,4.2vw,56px);line-height:1.02;letter-spacing:-.045em;font-weight:900}
.eg-legal__intro{max-width:720px;margin:0;color:#5d5e61;font-size:17px;line-height:1.7}
.eg-legal__meta{margin:16px 0 0;color:var(--lg-muted);font-size:13px;font-weight:700}
.eg-legal__tabs{display:flex;flex-wrap:wrap;gap:8px;margin:24px 0 0;padding:0;list-style:none}
.eg-legal__tabs a{display:inline-flex;align-items:center;min-height:40px;padding:0 16px;border:1px solid #d9d9d4;border-radius:999px;background:#fff;color:var(--lg-ink);font-size:13px;font-weight:800;text-decoration:none}
.eg-legal__tabs a:hover{border-color:var(--lg-ink)}
.eg-legal__tabs a[aria-current="page"]{background:var(--lg-ink);border-color:var(--lg-ink);color:#fff}
.eg-legal__grid{display:grid;grid-template-columns:260px minmax(0,1fr);gap:56px;align-items:start}
.eg-legal__aside{position:sticky;top:100px;display:grid;gap:16px}
.eg-legal__toc{padding:18px 18px 14px;border:1px solid var(--lg-line);border-radius:22px;background:#fff}
.eg-legal__toc summary{list-style:none;cursor:default;color:var(--lg-ink);font-size:14px;font-weight:900}
.eg-legal__toc summary::-webkit-details-marker{display:none}
.eg-legal__toc ol{margin:12px 0 0;padding:0;list-style:none;counter-reset:lgtoc}
.eg-legal__toc li{margin:0}
.eg-legal__toc a{display:block;padding:7px 0 7px 12px;border-left:2px solid var(--lg-line);color:#5d5e61;font-size:13px;line-height:1.4;text-decoration:none}
.eg-legal__toc a:hover,.eg-legal__toc a:focus-visible{border-left-color:var(--lg-red);color:var(--lg-ink)}
.eg-legal__contact{padding:20px;border-radius:22px;background:var(--lg-ink);color:#d8d8d4;font-size:13px;line-height:1.55}
.eg-legal__contact strong{display:block;margin-bottom:6px;color:#fff;font-size:15px}
.eg-legal__contact p{margin:0 0 12px}
.eg-legal__contact a{display:block;margin-top:6px;color:#fff;font-weight:700;text-decoration:underline;text-underline-offset:3px;overflow-wrap:anywhere}
.eg-legal__contact button{margin-top:14px;width:100%;min-height:42px;border:0;border-radius:12px;background:var(--lg-red);color:#fff;font:inherit;font-weight:800;cursor:pointer}
.eg-legal__body{min-width:0;max-width:780px;font-size:16px;line-height:1.75;overflow-wrap:break-word}
.eg-legal__body h2{scroll-margin-top:110px;margin:40px 0 14px;padding-top:30px;border-top:1px solid var(--lg-line);color:var(--lg-ink);font-size:24px;line-height:1.2;letter-spacing:-.02em;font-weight:900}
.eg-legal__body h2:first-child{margin-top:0;padding-top:0;border-top:0}
.eg-legal__body p{margin:0 0 14px}
.eg-legal__body strong{color:var(--lg-ink)}
.eg-legal__body a{color:var(--lg-red);text-decoration:underline;text-underline-offset:3px}
.eg-legal__body ul{margin:0 0 16px;padding:0;list-style:none}
.eg-legal__body li{position:relative;margin:0 0 8px;padding-left:20px}
.eg-legal__body li:before{content:"";position:absolute;left:2px;top:.72em;width:7px;height:7px;border-radius:2px;background:var(--lg-red)}
.eg-legal__body table{width:100%;border-collapse:separate!important;border-spacing:0;border:1px solid var(--lg-line)!important;border-radius:16px;overflow:hidden;font-size:14px;line-height:1.5;margin:6px 0 16px}
.eg-legal__body th,.eg-legal__body td{padding:12px 14px!important;border:0!important;border-bottom:1px solid var(--lg-line)!important;text-align:left;vertical-align:top}
.eg-legal__body th{background:var(--lg-soft);color:var(--lg-ink);font-weight:900;font-size:13px}
.eg-legal__body tr:last-child td{border-bottom:0!important}
.eg-legal__body td+td,.eg-legal__body th+th{border-left:1px solid var(--lg-line)!important}
.eg-legal__body em{color:var(--lg-muted)}
@media(max-width:991px){
 .eg-legal__grid{grid-template-columns:minmax(0,1fr);gap:24px}
 .eg-legal__aside{position:static;order:-1}
 .eg-legal__contact{display:none}
 .eg-legal__contact--end{display:block!important;margin-top:34px}
 .eg-legal__toc summary{cursor:pointer;display:flex;justify-content:space-between}
 .eg-legal__toc summary:after{content:"+";font-size:18px;line-height:1}
 .eg-legal__toc[open] summary:after{content:"–"}
}
@media(min-width:992px){.eg-legal__contact--end{display:none}}
@media(max-width:600px){
 .eg-legal__hero{padding:26px 20px 22px;border-radius:22px;margin-bottom:24px}
 .eg-legal__intro{font-size:15px}
 .eg-legal__tabs{flex-wrap:nowrap;overflow-x:auto;margin-right:-20px;padding-right:20px;scrollbar-width:none}
 .eg-legal__tabs a{white-space:nowrap}
 .eg-legal__body{font-size:15px}
 .eg-legal__body h2{font-size:21px;margin-top:30px;padding-top:24px}
}
</style>
<main id="content" class="eg-page eg-legal">
  <div class="eg-container">
    <nav class="eg-breadcrumb" aria-label="Breadcrumb"><ol><?php foreach($breadcrumbs as $breadcrumb){ ?><li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li><?php } ?></ol></nav>
    <?php echo $content_top; ?>
    <article>
      <header class="eg-legal__hero">
        <span class="eg-legal__label">Yasal bilgilendirme</span>
        <h1><?php echo $heading_title; ?></h1>
        <p class="eg-legal__intro"><?php echo $eg_legal_pages[$eg_info_id]['intro']; ?></p>
        <?php if ($eg_legal_updated) { ?><p class="eg-legal__meta">Son güncelleme: <?php echo htmlspecialchars($eg_legal_updated, ENT_QUOTES, 'UTF-8'); ?></p><?php } ?>
        <nav aria-label="Yasal metinler"><ul class="eg-legal__tabs">
          <?php foreach ($eg_legal_pages as $eg_lid => $eg_lp) { ?><li><a href="<?php echo $eg_lp['url']; ?>"<?php echo $eg_lid === $eg_info_id ? ' aria-current="page"' : ''; ?>><?php echo $eg_lp['tab']; ?></a></li><?php } ?>
        </ul></nav>
      </header>
      <div class="eg-legal__grid">
        <aside class="eg-legal__aside">
          <?php if (count($eg_legal_toc) > 2) { ?>
          <details class="eg-legal__toc" open>
            <summary>Bu sayfada</summary>
            <ol><?php foreach ($eg_legal_toc as $eg_t) { ?><li><a href="#<?php echo $eg_t['id']; ?>"><?php echo htmlspecialchars($eg_t['text'], ENT_QUOTES, 'UTF-8'); ?></a></li><?php } ?></ol>
          </details>
          <?php } ?>
          <div class="eg-legal__contact">
            <strong>Verilerinizle ilgili sorunuz mu var?</strong>
            <p>Başvurularınızı ve sorularınızı aşağıdaki adreslere iletebilirsiniz.</p>
            <a href="mailto:web@egeserprefabrik.com.tr">web@egeserprefabrik.com.tr</a>
            <a href="mailto:egeserprefabrik@hs01.kep.tr">KEP: egeserprefabrik@hs01.kep.tr</a>
            <a href="tel:+905318866090">0531 886 60 90</a>
            <button type="button" data-eg-consent-reopen>Çerez tercihlerini değiştir</button>
          </div>
        </aside>
        <div class="eg-legal__body">
          <?php echo $eg_legal_body; ?>
          <div class="eg-legal__contact eg-legal__contact--end">
            <strong>Verilerinizle ilgili sorunuz mu var?</strong>
            <p>Başvurularınızı ve sorularınızı aşağıdaki adreslere iletebilirsiniz.</p>
            <a href="mailto:web@egeserprefabrik.com.tr">web@egeserprefabrik.com.tr</a>
            <a href="mailto:egeserprefabrik@hs01.kep.tr">KEP: egeserprefabrik@hs01.kep.tr</a>
            <a href="tel:+905318866090">0531 886 60 90</a>
            <button type="button" data-eg-consent-reopen>Çerez tercihlerini değiştir</button>
          </div>
        </div>
      </div>
    </article>
    <?php echo $content_bottom; ?>
  </div>
</main>
<script>
(function(){var d=document.querySelector('.eg-legal__toc');if(d&&window.matchMedia('(max-width:991px)').matches){d.removeAttribute('open');}})();
</script>
<?php } else { ?>
<main id="content" class="eg-page eg-article-page">
  <div class="eg-container">
    <nav class="eg-breadcrumb" aria-label="Breadcrumb"><ol><?php foreach($breadcrumbs as $breadcrumb){ ?><li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li><?php } ?></ol></nav>
    <?php echo $content_top; ?>
    <article class="eg-content-page eg-authority-article">
      <header class="eg-authority-article__header">
        <?php if ($heading_title === 'KVKK Aydınlatma Metni' || $heading_title === 'Gizlilik Politikası' || $heading_title === 'Çerez Politikası') { ?>
          <span class="eg-section__eyebrow">YASAL BİLGİLENDİRME</span>
          <h1><?php echo $heading_title; ?></h1>
          <p class="eg-authority-article__intro">Kişisel verilerinizin işlenmesi ve web sitemizin kullanımına ilişkin bilgilendirme metni.</p>
        <?php } else { ?>
          <span class="eg-section__eyebrow">EGESER PREFABRİK BİLGİ MERKEZİ</span>
          <h1><?php echo $heading_title; ?></h1>
          <p class="eg-authority-article__intro">Prefabrik yapı seçimi, teknik sistemler, uygulama ve kullanım süreçleri hakkında açıklayıcı bilgiler.</p>
        <?php } ?>
      </header>
      <div class="eg-authority-article__layout">
        <div class="eg-richtext eg-authority-article__content"><?php echo $description; ?></div>
        <aside class="eg-authority-article__aside" aria-label="İletişim">
          <strong>Projeniz için teknik destek alın</strong>
          <p>Bireysel veya kurumsal yapınız için ihtiyaçlarınızı ekibimizle paylaşın.</p>
          <a class="eg-btn eg-btn--primary" href="/iletisim">Teklif / Bilgi Al</a>
          <?php if (!empty($telephone)) { ?><a class="eg-authority-article__phone" href="tel:<?php echo preg_replace('/[^0-9+]/', '', $telephone); ?>">☎ <?php echo $telephone; ?></a><?php } ?>
        </aside>
      </div>
    </article>
    <?php echo $content_bottom; ?>
  </div>
</main>
<?php } ?>


<?php if (!empty($egeser_schema_url)) { ?>
<script type="application/ld+json"><?php
$eg_page_schema = array(
  '@context' => 'https://schema.org',
  '@type' => !empty($egeser_schema_type) ? $egeser_schema_type : 'WebPage',
  'name' => !empty($egeser_schema_name) ? strip_tags($egeser_schema_name) : strip_tags($heading_title),
  'url' => $egeser_schema_url
);
if (!empty($egeser_schema_description)) { $eg_page_schema['description'] = $egeser_schema_description; }
echo json_encode($eg_page_schema, JSON_UNESCAPED_UNICODE|JSON_UNESCAPED_SLASHES|JSON_HEX_TAG|JSON_HEX_AMP|JSON_HEX_APOS|JSON_HEX_QUOT);
?></script>
<script type="application/ld+json"><?php
$eg_bc_items = array(); $eg_bc_pos = 1;
foreach ($breadcrumbs as $eg_bc) {
  $eg_bc_items[] = array('@type'=>'ListItem','position'=>$eg_bc_pos++,'name'=>trim(strip_tags($eg_bc['text'])),'item'=>html_entity_decode($eg_bc['href'], ENT_QUOTES, 'UTF-8'));
}
echo json_encode(array('@context'=>'https://schema.org','@type'=>'BreadcrumbList','itemListElement'=>$eg_bc_items), JSON_UNESCAPED_UNICODE|JSON_UNESCAPED_SLASHES|JSON_HEX_TAG|JSON_HEX_AMP|JSON_HEX_APOS|JSON_HEX_QUOT);
?></script>
<?php } ?>

<?php echo $footer; ?>
