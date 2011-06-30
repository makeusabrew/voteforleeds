<?php
class DefaultController extends Controller {
    public function index() {
        // world changing code goes here
        $directions = Table::factory("Directions")->findAll();
        $this->assign("directions", $directions);
    }
}
