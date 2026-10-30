<?php
/* EGESER - "Ilgili Rehberler" kutusunu cizer. Cagiran sablon $eg_guides_type
   ('house' | 'corporate') degiskenini tanimlar. */
$eg_guides_all = @include(DIR_TEMPLATE . 'egeser/data/eg_guides.php');
$eg_guides_list = (is_array($eg_guides_all) && isset($eg_guides_all[$eg_guides_type])) ? $eg_guides_all[$eg_guides_type] : array();
$eg_guides_base = defined('HTTPS_SERVER') ? HTTPS_SERVER : '/';
if ($eg_guides_list) { ?>
<style>
.eg-guides{max-width:1240px;margin:56px auto;padding:0 20px}
.eg-guides__head{display:flex;justify-content:space-between;align-items:flex-end;gap:16px;margin-bottom:18px}
.eg-guides__eyebrow{display:block;margin-bottom:6px;color:#c82028;font-size:11px;font-weight:900;letter-spacing:.12em}
.eg-guides__head h2{margin:0;font-size:clamp(22px,2.4vw,30px);line-height:1.2;color:#1d1d1b}
.eg-guides__all{color:#c82028;font-weight:800;text-decoration:none;white-space:nowrap}
.eg-guides__grid{display:grid;grid-template-columns:repeat(4,minmax(0,1fr));gap:14px}
.eg-guides__card{display:flex;flex-direction:column;gap:10px;min-height:132px;padding:18px;border:1px solid #eadfd5;border-radius:16px;background:#fff;color:#1d1d1b;text-decoration:none;transition:border-color .2s,box-shadow .2s}
.eg-guides__card:hover{border-color:#c82028;box-shadow:0 8px 22px rgba(20,20,20,.07)}
.eg-guides__tag{align-self:flex-start;padding:4px 10px;border-radius:999px;background:#fbf1ec;color:#a3191f;font-size:11px;font-weight:800}
.eg-guides__title{font-size:15px;font-weight:800;line-height:1.4}
.eg-guides__more{margin-top:auto;color:#c82028;font-size:13px;font-weight:800}
@media(max-width:991px){.eg-guides__grid{grid-template-columns:repeat(2,minmax(0,1fr))}}
@media(max-width:575px){.eg-guides{margin:40px auto;padding:0 16px}.eg-guides__head{flex-direction:column;align-items:flex-start;gap:6px;margin-bottom:14px}.eg-guides__grid{grid-template-columns:1fr;gap:10px}.eg-guides__card{min-height:0;gap:6px;padding:14px 16px;border-radius:14px}.eg-guides__title{font-size:14px}.eg-guides__more{font-size:12px}}
</style>
<section class="eg-guides" aria-labelledby="eg-guides-title">
  <div class="eg-guides__head">
    <div>
      <span class="eg-guides__eyebrow">İLGİLİ REHBERLER</span>
      <h2 id="eg-guides-title">Karar vermeden önce okuyun</h2>
    </div>
    <a class="eg-guides__all" href="<?php echo $eg_guides_base; ?>blog">Tüm rehberler →</a>
  </div>
  <div class="eg-guides__grid">
    <?php foreach ($eg_guides_list as $eg_guide) { ?>
    <a class="eg-guides__card" href="<?php echo $eg_guides_base; ?>blog/<?php echo htmlspecialchars($eg_guide['slug'], ENT_QUOTES, 'UTF-8'); ?>">
      <span class="eg-guides__tag"><?php echo htmlspecialchars($eg_guide['tag'], ENT_QUOTES, 'UTF-8'); ?></span>
      <span class="eg-guides__title"><?php echo htmlspecialchars($eg_guide['title'], ENT_QUOTES, 'UTF-8'); ?></span>
      <span class="eg-guides__more">Rehberi oku →</span>
    </a>
    <?php } ?>
  </div>
</section>
<?php } ?>
