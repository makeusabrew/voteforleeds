<?php

class Direction extends Object {
    protected $votes = null;
    public function getSlides() {
        return Table::factory("DirectionSlides")->findAll(array(
            "parent_id" => $this->getId(),
        ));
    }

    public function getVotes() {
        if ($this->votes === null) {
            $this->votes = Table::factory("Votes")->findAll(array(
                "direction_id" => $this->getId(),
            ), null, "`created` DESC");
        }
        return $this->votes;
    }

    public function getVoteCount() {
        return count($this->getVotes());
    }
}

class Directions extends Table {
    protected $order_by = "`sort_order` ASC";
    protected $meta = array(
        "columns" => array(
            "title" => array(
                "type" => "text",
            ),
            "url" => array(
                "type" => "text",
            ),
            "sort_order" => array(
                "type" => "number",
            ),
        ),
    );
}
