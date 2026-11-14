<?php
class ControllerExtensionFeedEgeserSitemap extends Controller {
	public function index() {
		$this->response->addHeader('Content-Type: application/xml; charset=UTF-8');

		$store_id = (int)$this->config->get('config_store_id');
		$urls = array();

		// EGESER - Gorsel sitemap, sitede gosterilen yeniden boyutlanmis (image/cache/...)
		// adresleri verir; orijinal image/catalog/... dosyalari sayfalarda hic kullanilmadigi
		// icin Google bunlari sayfayla eslestiremiyordu.
		$this->load->model('tool/image');
		$theme = $this->config->get('config_theme');
		$theme_image = array(
			'thumb_w' => (int)$this->config->get($theme . '_image_thumb_width') ?: 900,
			'thumb_h' => (int)$this->config->get($theme . '_image_thumb_height') ?: 675,
			'popup_w' => (int)$this->config->get($theme . '_image_popup_width') ?: 1600,
			'popup_h' => (int)$this->config->get($theme . '_image_popup_height') ?: 1200
		);

		// Ana sayfa
		$this->addUrl($urls, rtrim($this->config->get('config_url'), '/') . '/', '', 'daily', '1.0');

		// Kategoriler
		$category_query = $this->db->query("
			SELECT c.category_id, c.date_modified
			FROM " . DB_PREFIX . "category c
			INNER JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id)
			WHERE c.status = '1'
			  AND c2s.store_id = '" . $store_id . "'
			ORDER BY c.sort_order ASC, c.category_id ASC
		");

		foreach ($category_query->rows as $row) {
			$url = html_entity_decode(
				$this->url->link('product/category', 'path=' . (int)$row['category_id']),
				ENT_QUOTES,
				'UTF-8'
			);

			if ($this->isSeoUrl($url)) {
				$this->addUrl(
					$urls,
					$url,
					!empty($row['date_modified']) ? $row['date_modified'] : '',
					'weekly',
					'0.8'
				);
			}
		}

		// Ürünler
		$product_query = $this->db->query("
			SELECT p.product_id, p.date_modified, p.image
			FROM " . DB_PREFIX . "product p
			INNER JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id)
			WHERE p.status = '1'
			  AND p.date_available <= NOW()
			  AND p2s.store_id = '" . $store_id . "'
			ORDER BY p.product_id ASC
		");

		foreach ($product_query->rows as $row) {
			$url = html_entity_decode(
				$this->url->link('product/product', 'product_id=' . (int)$row['product_id']),
				ENT_QUOTES,
				'UTF-8'
			);

			if ($this->isSeoUrl($url)) {
				// EGESER - Gorsel sitemap: urun ana gorseli + ek gorseller (kat planlari dahil).
				// Sayfadaki <img> ile ayni boyutlu adresler verilir: ana gorsel sayfadaki
				// thumb (900x675), ek gorseller sayfada yalniz 160x120 kucuk resim oldugu
				// icin lightbox'ta acilan buyuk (popup) surum.
				$images = array();
				if (!empty($row['image'])) {
					$images[] = array($row['image'], $theme_image['thumb_w'], $theme_image['thumb_h']);
				}
				$image_query = $this->db->query("SELECT image FROM " . DB_PREFIX . "product_image WHERE product_id = '" . (int)$row['product_id'] . "' ORDER BY sort_order ASC");
				foreach ($image_query->rows as $image_row) {
					$images[] = array($image_row['image'], $theme_image['popup_w'], $theme_image['popup_h']);
				}

				$this->addUrl(
					$urls,
					$url,
					!empty($row['date_modified']) ? $row['date_modified'] : '',
					'weekly',
					'0.7',
					$images
				);
			}
		}

		// Bilgi sayfaları (Hakkımızda, Projelerimiz, Teknik Bilgiler vb.)
		$information_query = $this->db->query("
			SELECT i.information_id
			FROM " . DB_PREFIX . "information i
			INNER JOIN " . DB_PREFIX . "information_to_store i2s ON (i.information_id = i2s.information_id)
			WHERE i.status = '1'
			  AND i2s.store_id = '" . $store_id . "'
			ORDER BY i.sort_order ASC, i.information_id ASC
		");

		foreach ($information_query->rows as $row) {
			$url = html_entity_decode(
				$this->url->link('information/information', 'information_id=' . (int)$row['information_id']),
				ENT_QUOTES,
				'UTF-8'
			);

			if ($this->isSeoUrl($url)) {
				$this->addUrl($urls, $url, '', 'monthly', '0.6');
			}
		}

		// EGESER - Gorsel sitemap: gercek proje fotograflari Projelerimiz sayfasina ve
		// konumu eslesen sehir sayfasina baglanir (egeser_city ile ayni eslestirme).
		$project_images = array();
		$city_project_images = array();
		$city_names = array(
			'izmir-prefabrik-ev' => 'İzmir',
			'manisa-prefabrik-ev' => 'Manisa',
			'aydin-prefabrik-ev' => 'Aydın',
			'usak-prefabrik-ev' => 'Uşak',
			'balikesir-prefabrik-ev' => 'Balıkesir',
			'mugla-prefabrik-ev' => 'Muğla'
		);
		$references_query = $this->db->query("SELECT `setting` FROM `" . DB_PREFIX . "module` WHERE `code` = 'egeser_references' ORDER BY `module_id` ASC LIMIT 1");
		if ($references_query->num_rows) {
			$references = json_decode($references_query->row['setting'], true);
			if (is_array($references) && !empty($references['projects']) && is_array($references['projects'])) {
				foreach ($references['projects'] as $project) {
					if (empty($project['enabled']) || empty($project['image'])) {
						continue;
					}
					$project_image = array($project['image'], 640, 640, true);
					$project_images[] = $project_image;
					$location = !empty($project['location']) ? mb_strtolower($project['location'], 'UTF-8') : '';
					foreach ($city_names as $city_slug => $city_name) {
						if ($location !== '' && mb_strpos($location, mb_strtolower($city_name, 'UTF-8')) !== false) {
							$city_project_images[$city_slug][] = $project_image;
						}
					}
				}
			}
		}
		if ($project_images) {
			$this->addUrl($urls, rtrim($this->config->get('config_url'), '/') . '/projelerimiz', '', 'monthly', '0.6', $project_images);
		}

		// Özel iletişim SEO URL'si
		$this->addUrl(
			$urls,
			rtrim($this->config->get('config_url'), '/') . '/iletisim',
			'',
			'monthly',
			'0.6'
		);

		// V7 - Özgün içerikli şehir bazlı hizmet sayfaları
		$city_slugs = array(
			'izmir-prefabrik-ev',
			'manisa-prefabrik-ev',
			'aydin-prefabrik-ev',
			'usak-prefabrik-ev',
			'balikesir-prefabrik-ev',
			'mugla-prefabrik-ev'
		);

		foreach ($city_slugs as $city_slug) {
			$this->addUrl(
				$urls,
				rtrim($this->config->get('config_url'), '/') . '/' . $city_slug,
				'',
				'monthly',
				'0.75',
				isset($city_project_images[$city_slug]) ? $city_project_images[$city_slug] : array()
			);
		}

		// Paket 4A - Blog ana sayfası ve aktif blog yazıları
		$blog_base = rtrim($this->config->get('config_url'), '/') . '/blog';
		$this->addUrl($urls, $blog_base, '', 'weekly', '0.7');

		$blog_query = $this->db->query("
			SELECT slug, date_modified, image
			FROM " . DB_PREFIX . "egeser_blog_post
			WHERE status = '1'
			ORDER BY date_published DESC, blog_id DESC
		");

		foreach ($blog_query->rows as $row) {
			$this->addUrl(
				$urls,
				$blog_base . '/' . ltrim($row['slug'], '/'),
				!empty($row['date_modified']) ? $row['date_modified'] : '',
				'monthly',
				'0.7',
				!empty($row['image']) ? array(array(ltrim($row['image'], '/'), 900, 900)) : array()
			);
		}

		$xml  = '<?xml version="1.0" encoding="UTF-8"?>' . "\n";
		$xml .= '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:image="http://www.google.com/schemas/sitemap-image/1.1">' . "\n";

		foreach ($urls as $item) {
			$xml .= "  <url>\n";
			$xml .= '    <loc>' . htmlspecialchars($item['loc'], ENT_QUOTES, 'UTF-8') . "</loc>\n";

			if ($item['lastmod'] !== '') {
				$timestamp = strtotime($item['lastmod']);

				if ($timestamp) {
					$xml .= '    <lastmod>' . date('Y-m-d', $timestamp) . "</lastmod>\n";
				}
			}

			$xml .= '    <changefreq>' . $item['changefreq'] . "</changefreq>\n";
			$xml .= '    <priority>' . $item['priority'] . "</priority>\n";

			foreach ($item['images'] as $image_loc) {
				$xml .= "    <image:image>\n";
				$xml .= '      <image:loc>' . htmlspecialchars($image_loc, ENT_QUOTES, 'UTF-8') . "</image:loc>\n";
				$xml .= "    </image:image>\n";
			}
			$xml .= "  </url>\n";
		}

		$xml .= "</urlset>\n";

		$this->response->setOutput($xml);
	}

	private function addUrl(&$urls, $loc, $lastmod, $changefreq, $priority, $images = array()) {
		$loc = trim((string)$loc);

		if ($loc === '') {
			return;
		}

		$key = strtolower($loc);

		if (!isset($urls[$key])) {
			$urls[$key] = array(
				'loc' => $loc,
				'lastmod' => $lastmod,
				'changefreq' => $changefreq,
				'priority' => $priority,
				'images' => array()
			);
		}

		foreach ((array)$images as $image) {
			$image_url = is_array($image) ? $this->resizedImageUrl($image) : $this->imageUrl($image);
			if ($image_url !== '' && !in_array($image_url, $urls[$key]['images'], true) && count($urls[$key]['images']) < 1000) {
				$urls[$key]['images'][] = $image_url;
			}
		}
	}

	// EGESER - image/ altindaki dosyanin tam adresi; dosya yoksa bos doner.
	private function imageUrl($path) {
		$path = ltrim(str_replace('\\', '/', trim((string)$path)), '/');

		if ($path === '' || !is_file(DIR_IMAGE . $path)) {
			return '';
		}

		return rtrim($this->config->get('config_url'), '/') . '/image/' . implode('/', array_map('rawurlencode', explode('/', $path)));
	}

	// EGESER - Sayfada kullanilan image/cache/... adresi (model_tool_image->resize ile ayni).
	private function resizedImageUrl($spec) {
		$path = ltrim(str_replace('\\', '/', trim((string)$spec[0])), '/');

		if ($path === '' || !is_file(DIR_IMAGE . $path)) {
			return '';
		}

		$url = $this->model_tool_image->resize($path, (int)$spec[1], (int)$spec[2], !empty($spec[3]));

		return $url ? html_entity_decode($url, ENT_QUOTES, 'UTF-8') : $this->imageUrl($path);
	}

	private function isSeoUrl($url) {
		$url = (string)$url;

		if ($url === '') {
			return false;
		}

		// Sitemap'e yalnız temiz SEO URL'leri al.
		if (strpos($url, 'index.php?route=') !== false) {
			return false;
		}

		return true;
	}
}
