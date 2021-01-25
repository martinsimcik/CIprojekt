<?php
class Pages extends CI_Controller {

        public function view()
    {


                   
                $this->load->model('cetba_model');
                $data['polozky'] = $this->cetba_model->get_menu();

		$this->load->view('templates/header', $data);                
		$this->load->view('pages/home', $data);  
		$this->load->view('templates/footer');
                
	}

        public function autori()
        {
                $this->load->model('cetba_model');
                $data['polozky'] = $this->cetba_model->get_menu();
                $data['kategorie'] = $this->db->query('SELECT * FROM kategorie')->result();
                $this->load->view('templates/header', $data);                
		$this->load->view('pages/autori', $data);  
		$this->load->view('templates/footer');
        }
        public function dila()
        {
                $this->load->model('cetba_model');
                $data['polozky'] = $this->cetba_model->get_menu();
                $data['knihovna'] = $this->db->query('SELECT * FROM knihy ORDER BY id_knihy')->result();
                $this->load->view('templates/header', $data);                
		$this->load->view('pages/dila', $data);  
		$this->load->view('templates/footer');
        }
        public function home()
        {
            
                $this->load->model('cetba_model');
                $data['polozky'] = $this->cetba_model->get_menu();
                $this->load->view('templates/header', $data);                
		$this->load->view('pages/home', $data);  
		$this->load->view('templates/footer');
        }

        public function autoriRoz($id){
                $this->load->model('cetba_model');
                $data['polozky'] = $this->cetba_model->get_menu();
                $data['nazev'] = $this->db->query('SELECT * FROM kategorie where id_kategorie= '.$id)->result();
                $data['knihy'] = $this->db->query('SELECT * FROM knihy where kategorie_id_kategorie= '.$id)->result();
                $this->load->view('templates/header', $data);                
		$this->load->view('pages/autoriRoz', $data);  
		$this->load->view('templates/footer');
                
          
     
}
}
                
        
