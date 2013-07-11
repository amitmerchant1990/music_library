<?php

class HomeController extends AppController {

    /**
     * Controller name
     *
     * @var string
     */
    public $name = 'Home';

    /**
     * Default helper
     *
     * @var array
     */
    public $helpers = array('Form', 'Html', 'Session');

    /**
     * This controller does not use a model
     *
     * @var array
     */
    public $uses = array('User', 'StoreMusic');

    public function index() {

	$this->layout = 'home';
        $fetch_all_music = $this->StoreMusic->find('all', array('order' => array('StoreMusic.id ASC')));
        $this->set('fetch_all_music', $fetch_all_music);
    }

    public function signup(){
        $this->layout = 'home';
        if ($this->request -> isPost()) {
            if(!empty($this->request->data)){
                $this->set('signup_data',$this->request->data);
            }
            
        }
    }
    
    public function forgot_password(){
        $this->layout = 'home';
        
    }

    public function about(){
	$this->layout = 'home';

	$cms_pages_about = $this->Cms->find('all', array('conditions'=>array('id'=>1)));
	$this->set('cms_pages_about',$cms_pages_about);		
    }

    public function contact(){
	$this->layout = 'home';

	$cms_pages_about = $this->Cms->find('all', array('conditions'=>array('id'=>1)));
	$this->set('cms_pages_about',$cms_pages_about);		
    }		
	

    public function help(){
	$this->layout = 'home';

	$cms_pages_about = $this->Cms->find('all', array('conditions'=>array('id'=>1)));
	$this->set('cms_pages_about',$cms_pages_about);		
    }

    public function faq(){
	$this->layout = 'home';

	$cms_pages_about = $this->Cms->find('all', array('conditions'=>array('id'=>1)));
	$this->set('cms_pages_about',$cms_pages_about);		
    }	

    public function blog(){
	$this->layout = 'home';

	$cms_pages_about = $this->Cms->find('all', array('conditions'=>array('id'=>1)));
	$this->set('cms_pages_about',$cms_pages_about);		
    }	

    public function terms(){
	$this->layout = 'home';

	$cms_pages_about = $this->Cms->find('all', array('conditions'=>array('id'=>1)));
	$this->set('cms_pages_about',$cms_pages_about);		
    }	

    public function privacy(){
	$this->layout = 'home';

	$cms_pages_about = $this->Cms->find('all', array('conditions'=>array('id'=>1)));
	$this->set('cms_pages_about',$cms_pages_about);		
    }	
}

?>
