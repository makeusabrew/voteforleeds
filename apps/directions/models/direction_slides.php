<?php

class DirectionSlide extends Object {
    //
}

class DirectionSlides extends Table {
    protected $order_by = "`sort_order` ASC";
    protected $meta = array(
        "columns" => array(
            "parent_id" => array(
                "type" => "foreign_key",
            ),
            "content" => array(
                "type" => "text",
            ),
            "thumbnail" => array(
                "type" => "text",
            ),
            "sort_order" => array(
                "type" => "number",
            ),
        ),
    );
}
