<?php

class Direction extends Object {
    public function getSlides() {
        return Table::factory("DirectionSlides")->findAll(array(
            "parent_id" => $this->getId(),
        ));
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
