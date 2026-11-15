<?php
class ControllerStartupRouter extends Controller {
	public function index() {
		// Route
		if (isset($this->request->get['route']) && $this->request->get['route'] != 'startup/router') {
			$route = $this->request->get['route'];
		} else {
			$route = $this->config->get('action_default');
		}
		
		// Sanitize the call
		$route = preg_replace('/[^a-zA-Z0-9_\/]/', '', (string)$route);

		// EGESER - Site online satis yapmaz (teklif / telefon / showroom). OpenCart'in sepet, odeme,
		// uyelik ve bayilik sayfalari kapali: istek iletisim sayfasina gecici (302) yonlendirilir.
		// Geri acmak icin bu blogu kaldirmak yeterli.
		if (preg_match('#^(checkout|account|affiliate)/#', $route)) {
			if (!empty($this->request->server['HTTP_X_REQUESTED_WITH']) && strtolower($this->request->server['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
				$this->response->addHeader('Content-Type: application/json');
				$this->response->setOutput(json_encode(array('error' => 'Online satış yapılmamaktadır. Teklif için lütfen bizimle iletişime geçin.', 'redirect' => rtrim($this->config->get('config_url'), '/') . '/iletisim')));
				return;
			}
			$this->response->redirect(rtrim($this->config->get('config_url'), '/') . '/iletisim', 302);
		}
		
		// Trigger the pre events
		$result = $this->event->trigger('controller/' . $route . '/before', array(&$route, &$data));
		
		if (!is_null($result)) {
			return $result;
		}
		
		// We dont want to use the loader class as it would make an controller callable.
		$action = new Action($route);
		
		// Any output needs to be another Action object.
		$output = $action->execute($this->registry); 
		
		// Trigger the post events
		$result = $this->event->trigger('controller/' . $route . '/after', array(&$route, &$data, &$output));
		
		if (!is_null($result)) {
			return $result;
		}
		
		return $output;
	}
}
