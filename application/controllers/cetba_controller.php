<?php
class cetba_controller extends CI_Controller {
public function menu() {
 $data['polozky'] = $this->cetba_model->get_menu_polozky();
 $this->load->view('layout/layout_main', $data);
}
}