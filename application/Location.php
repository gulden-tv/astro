<?php

class Location
{
    public $id;
    public $title;
    public $type;
    public $style;
    public $coordinate;
    public $url;
    public $created;
    public $startDate;
    public $endDate;
    public $comment;
    public $daysCreated;

    public function __construct()
    {
        $now = new DateTime();
        $created = new DateTime($this->created);
        $this->daysCreated = $now->diff($created)->format("%a");
    }

    public function __set($name, $value)
    {
        // empty
    }
}
