<?php
class AdminUser extends Object {

    protected $isAuthed = false;

    public function addToSession() {
        $s = Session::getInstance();
        $s->adminUserId = $this->getId();
    }
    
    public function logout() {
    	$s = Session::getInstance();
    	unset($s->adminUserId);
    }

    public function isAuthed() {
        return $this->isAuthed;
    }

    public function setAuthed($authed) {
        $this->isAuthed = $authed;
    }
}

class AdminUsers extends Table {

	protected $meta = array(
		"columns" => array(
			"email" => array(
				"type" => "email",
                "required" => true,
                "confirm" => true,
                "validation" => array("unique"),
			),
            "password" => array(
                "type" => "password",
                "required" => true,
                "confirm" => true,
                "validation" => "minLength",
                "length" => 8,
            ),
		),
	);

    public function loadFromSession() {
        $s = Session::getInstance();
        $id = $s->adminUserId;
        if ($id === NULL) {
            return new AdminUser();
        }
        $user = $this->read($id);
        if (!$user) {
            // oh dear
            Log::debug("Could not find admin user id [".$id."]");
            return new AdminUser();
        }
        $user->setAuthed(true);
        return $user;
    }

    public function login($email, $password) {
        return $this->find("`email` = ? AND `password` = SHA1(?)", array($email, $password));
    }
}
