<?php

App::uses('Facebook', 'Lib/Facebook' );
App::import('Vendor', 'functions');

class YourMusicController extends AppController {

    /**
     * Controller name
     *
     * @var string
     */
    public $name = 'YourMusic';

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
    public $uses = array('User', 'UserGroup', 'UserOwnGroup', 'StoreMusic');

    public function index() {
        $user_id = $this->UserAuth->getUserId();
        $fetch_user_music = $this->StoreMusic->find('all', array('conditions'=>array('id_user'=>$user_id),'order' => array('StoreMusic.id ASC')));
        $this->set('fetch_user_music', $fetch_user_music);
        	
    }
    
    public function upload(){
        if ($this->request->is('post')) {
            if (!empty($this->request->data)) {
//                    echo "<pre>";
//                    print_r($this->request->data);
//                    exit;
                $user_id = $this->UserAuth->getUserId();
                $this->request->data['StoreMusic']['id_user'] = $user_id;
                /* $this->request->data['InfoApp']['app_name'] = $this->request->data['Application']['app_name'];
                  $this->request->data['InfoApp']['promotion_note'] = $this->request->data['Application']['promotion_note'];
                  $this->request->data['InfoApp']['itunes_link'] = $this->request->data['Application']['itunes_link'];
                  $this->request->data['InfoApp']['store_info'] = $this->request->data['Application']['store_info'];
                  $this->request->data['InfoApp']['deal_date'] = $this->request->data['Application']['deal_date']; */
                move_uploaded_file($this->request->data['StoreMusic']['file_name']['tmp_name'], WWW_ROOT . 'music/' . $this->request->data['StoreMusic']['file_name']['name']);
                $this->request->data['StoreMusic']['file_name'] = $this->request->data['StoreMusic']['file_name']['name'];

                if ($this->StoreMusic->save($this->request->data['StoreMusic'])) {
                    $this->Session->setFlash(__('Song added successfully.'));
                    $this->redirect('../dashboard');
                } else {
                    $this->Session->setFlash(__('Song not added successfully. Something is wrong.'));
                    $this->redirect('../dashboard');
                }
            }
        }
    }
            
    public function upload_files(){
        
    }

    public function delete() {
        $this->layout = 'ajax';
        $song_id = $this->request->params['pass'][0];

        if ($this->StoreMusic->delete($song_id)) {
            $this->Session->setFlash(__('Song deleted successfully.'));
            $this->redirect('index');
        } else {
            $this->Session->setFlash(__('Song not deleted successfully. Something is wrong.'));
            $this->redirect('index');
        }
    }
}

?>
