<?php

App::uses('Facebook', 'Lib/Facebook' );
App::import('Vendor', 'functions');

class MusicController extends AppController {

    /**
     * Controller name
     *
     * @var string
     */
    public $name = 'Music';

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
    
    public function download(){
        $user_id = $this->UserAuth->getUserId();
        $song_id = $this->request->params['pass'][0];
        if (!empty($user_id) && !empty($song_id)) {
            $fetch_music_info = $this->StoreMusic->find('first', array('conditions'=>array('id'=>$song_id),'order' => array('StoreMusic.id ASC')));
            
            $file_name = SITE_URL."music/".$fetch_music_info['StoreMusic']['file_name'];
            Header("Content-Disposition: attachment; filename=" . basename($file_name));
            $content = file_get_contents($file_name);
            print $content;
        }else{
            $this->Session->setFlash(__('You must login to download this song.'));
            $this->redirect('/');
        }
    }
            
    
}

?>
