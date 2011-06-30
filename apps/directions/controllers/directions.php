<?php
class DirectionsController extends Controller {
    public function index() {
        $direction = Table::factory("Directions")->find(array(
            "url" => $this->getMatch('identifier')
        ));
        if ($direction == false) {
            return $this->redirect("/");
        }
        $this->assign("direction", $direction);
        $this->assign("slides", $direction->getSlides());
    }
}
