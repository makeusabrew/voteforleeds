<?php
class DirectionsController extends Controller {
    protected $direction = null;

    public function init() {
        $direction = Table::factory("Directions")->find(array(
            "url" => $this->getMatch('identifier')
        ));
        if ($direction == false) {
            throw new CoreException("Path Rejected", CoreException::PATH_REJECTED);
        }
        $this->direction = $direction;
        $this->assign("hasVoted", $this->session->hasVoted);
    }

    public function index() {
        $this->assign("direction", $this->direction);
        $this->assign("slides", $this->direction->getSlides());
        $this->assign("page_id", "gallery");
    }

    public function vote() {
        if (!$this->request->isPost()) {
            // what action?
            return $this->redirect("/");
        }

        $data = array(
            "email" => $this->request->getVar("email"),
            "direction_id" => $this->direction->getId(),
        );

        $vote = Table::factory("Votes")->newObject();
        if ($vote->setValues($data)) {
            // all good, crack on
            $vote->save();
            $this->session->hasVoted = true;
            return $this->render("thanks-for-voting");
        } else {
            $errors = $vote->getErrors();
            if (isset($errors['email']) && $errors['email'] == 'this email is already in use') {
                // look, it's just a quick hack right, because already in use is a bit boring and not quite right for LDF
                $errors['email'] = 'Whoops, you\'ve used that one, try again!';
            }
            $this->setErrors($errors);
            if (!$this->request->isAjax()) {
                $this->assign("direction", $this->direction);
                $this->assign("slides", $this->direction->getSlides());
            }
            return $this->render("index");
        }
    }
}
