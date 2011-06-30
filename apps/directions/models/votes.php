<?php

class Vote extends Object {
    //
}

class Votes extends Table {
    protected $meta = array(
        "columns" => array(
            "direction_id" => array(
                "type" => "foreign_key",
            ),
            "email" => array(
                "type" => "email",
                "validation" => "unique",
            ),
        ),
    );
}
