<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		// EGESER - Ana sayfa canonical her durumda root URL'yi göstersin.
		$this->document->addLink($this->config->get('config_url'), 'canonical');

		// EGESER sabit iletisim bilgileri (kullanici tarafindan teyitli).
		require_once(DIR_SYSTEM . 'library/egeser_contact.php');
		$data['egeser_whatsapp'] = EgeserContact::WHATSAPP;

		// EGESER - Hero kanit seridi: aktif urunlerin en dusuk fiyati (KDV dahil), fiyat degisince kendiliginden guncellenir.
		$data['egeser_min_price'] = '';
		$eg_min = $this->db->query("SELECT MIN(p.price) AS min_price FROM `" . DB_PREFIX . "product` p LEFT JOIN `" . DB_PREFIX . "product_to_store` p2s ON (p.product_id = p2s.product_id) WHERE p.status = '1' AND p.price > 0 AND p.date_available <= NOW() AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "'");
		if ($eg_min->num_rows && (float)$eg_min->row['min_price'] > 0) {
			$data['egeser_min_price'] = number_format((float)$eg_min->row['min_price'] * (1 + (float)$this->config->get('egeser_kdv_rate') / 100), 0, ',', '.');
		}

		// EGESER - Ana sayfa model kartlari: ekrana uygun boyut icin kucultulmus kopyalar (srcset).
		$this->load->model('tool/image');
		$data['egeser_home_card_srcset'] = array();
		foreach (array(
			'tek'  => array('catalog/egeser/home/tek-katli-prefabrik-ev-modeli.jpg', 'catalog/egeser/home/tek-katli-placeholder.jpg'),
			'cift' => array('catalog/egeser/home/dubleks-prefabrik-ev-modeli.jpg', 'catalog/egeser/home/cift-katli-placeholder.jpg')
		) as $eg_card_key => $eg_card_paths) {
			$eg_card_file = is_file(DIR_IMAGE . $eg_card_paths[0]) ? $eg_card_paths[0] : (is_file(DIR_IMAGE . $eg_card_paths[1]) ? $eg_card_paths[1] : '');
			if ($eg_card_file === '') { continue; }
			$eg_card_size = @getimagesize(DIR_IMAGE . $eg_card_file);
			if (!$eg_card_size || (int)$eg_card_size[0] !== 1200 || (int)$eg_card_size[1] !== 520) { continue; }
			$eg_card_600 = $this->model_tool_image->resize($eg_card_file, 600, 260);
			$eg_card_900 = $this->model_tool_image->resize($eg_card_file, 900, 390);
			if ($eg_card_600 && $eg_card_900) {
				$data['egeser_home_card_srcset'][$eg_card_key] = array('file' => 'image/' . $eg_card_file, 'w600' => $eg_card_600, 'w900' => $eg_card_900);
			}
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
