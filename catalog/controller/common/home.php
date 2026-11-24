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

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
