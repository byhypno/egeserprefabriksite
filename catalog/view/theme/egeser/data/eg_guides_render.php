<?php
/* EGESER - "Ilgili Rehberler" kutusu. Cagiran sablon $eg_guides_type ('house' | 'corporate')
   ve $eg_guides_context ('category' | 'product') tanimlar. Baslik, sayfanin kendi bolum
   basligi siniflarini kullanir; kartlar kategori sayfasindaki secim kartlarinin gorunumundedir. */
$eg_guides_all = @include(DIR_TEMPLATE . 'egeser/data/eg_guides.php');
$eg_guides_list = (is_array($eg_guides_all) && isset($eg_guides_all[$eg_guides_type])) ? $eg_guides_all[$eg_guides_type] : array();
$eg_guides_base = defined('HTTPS_SERVER') ? HTTPS_SERVER : '/';
$eg_guides_copy = 'Fiyat, süreç ve mevzuat hakkındaki sorularınızın yanıtlarını rehberlerimizde bulabilirsiniz.';
if ($eg_guides_list) { ?>
<style>
.eg-v18-choice.eg-guides{padding-top:56px}
.eg-guides__grid{display:grid;grid-template-columns:repeat(4,minmax(0,1fr));gap:14px}
.eg-guides__card{display:flex;flex-direction:column;min-height:210px;padding:24px;border:1px solid #e8e2da;border-radius:20px;background:linear-gradient(145deg,#fff,#fffaf4);color:#171717;text-decoration:none;transition:border-color .2s,box-shadow .2s,transform .2s}
.eg-guides__card:hover{border-color:#e9c9b8;box-shadow:0 14px 30px rgba(20,20,20,.06);transform:translateY(-2px)}
.eg-guides__tag{align-self:flex-start;min-width:46px;height:32px;padding:0 14px;border-radius:999px;display:flex;align-items:center;justify-content:center;background:#fff2df;color:#bd6c00;font-weight:900;font-size:12px}
.eg-guides__card h3{margin:22px 0 8px;font-size:19px;line-height:1.3;letter-spacing:-.01em;color:#171717}
.eg-guides__card p{margin:0 0 18px;color:#666;font-size:14px;line-height:1.6}
.eg-guides__more{margin-top:auto;font-weight:800;color:#171717}
.eg-guides__card:hover .eg-guides__more{color:#ef2029}
.eg-guides__all{display:inline-block;margin-top:10px;font-weight:800;color:#171717;text-decoration:none}
.eg-guides__all:hover{color:#ef2029}
@media(max-width:991px){.eg-guides__grid{grid-template-columns:repeat(2,minmax(0,1fr))}}
@media(max-width:575px){.eg-guides__grid{grid-template-columns:1fr;gap:10px}.eg-guides__card{min-height:0;padding:20px}.eg-guides__card h3{margin:14px 0 6px;font-size:17px}.eg-guides__card p{margin-bottom:12px}}
</style>
<?php if ($eg_guides_context == 'product') { ?>
<section class="eg11-section eg-guides" aria-labelledby="eg-guides-title">
  <div class="eg11-section-head">
    <div><span class="eg11-label">İLGİLİ REHBERLER</span><h2 id="eg-guides-title">Karar vermeden önce okuyun.</h2></div>
    <p><?php echo $eg_guides_copy; ?><br><a class="eg-guides__all" href="<?php echo $eg_guides_base; ?>blog">Tüm rehberler →</a></p>
  </div>
<?php } else { ?>
<section class="eg-v18-choice eg-guides" aria-labelledby="eg-guides-title">
  <div class="eg-v18-section-head">
    <div><span class="eg-section__eyebrow">İLGİLİ REHBERLER</span><h2 id="eg-guides-title">Karar vermeden önce okuyun.</h2></div>
    <p><?php echo $eg_guides_copy; ?><br><a class="eg-guides__all" href="<?php echo $eg_guides_base; ?>blog">Tüm rehberler →</a></p>
  </div>
<?php } ?>
  <div class="eg-guides__grid">
    <?php foreach ($eg_guides_list as $eg_guide) { ?>
    <a class="eg-guides__card" href="<?php echo $eg_guides_base; ?>blog/<?php echo htmlspecialchars($eg_guide['slug'], ENT_QUOTES, 'UTF-8'); ?>">
      <span class="eg-guides__tag"><?php echo htmlspecialchars($eg_guide['tag'], ENT_QUOTES, 'UTF-8'); ?></span>
      <h3><?php echo htmlspecialchars($eg_guide['title'], ENT_QUOTES, 'UTF-8'); ?></h3>
      <?php if (!empty($eg_guide['copy'])) { ?><p><?php echo htmlspecialchars($eg_guide['copy'], ENT_QUOTES, 'UTF-8'); ?></p><?php } ?>
      <span class="eg-guides__more">Rehberi oku →</span>
    </a>
    <?php } ?>
  </div>
</section>
<?php } ?>
