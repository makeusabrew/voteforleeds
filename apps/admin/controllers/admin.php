<?php

class AdminController extends Controller {
    protected $adminUser = null;
    public function init() {
        $this->adminUser = Table::factory("AdminUsers")->loadFromSession();
        $this->assign("adminUser", $this->adminUser);

        switch($this->path->getAction()) {
            case "login":
                break;
            default:
                if ($this->adminUser->isAuthed() === false) {
                    $this->redirectAction("login");
                    throw new CoreException("Not Authed");
                }
                break;
        }
    }

    public function index() {
        $votes = Table::factory("Votes")->findAll();
        $directions = Table::factory("Directions")->findAll();
        $this->assign("total", count($votes));
        $this->assign("directions", $directions);
    }

    public function login() {
        if (!$this->request->isPost()) {
            return;
        }
        
        $user = Table::factory("AdminUsers")->login(
            $this->request->getVar("email"),
            $this->request->getVar("password")
        );

        if ($user) {
            $user->addToSession();
            return $this->redirect(array(
                "action" => "index",
            ));
        }

        // oh dear, invalid login
        $this->addError('Invalid login details');
        Log::warn("Invalid admin login attempt from IP [".$this->request->getIp()."]");
    }

    public function logout() {
        $this->adminUser->logout();
        return $this->redirect(array(
            "action" => "login",
        ));
    }

}
