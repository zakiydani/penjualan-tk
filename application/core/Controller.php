<?php 

class Controller {
    public function view($view, $data = [])
    {
        require_once '../application/modules/views/' . $view . '.php';
    }

    public function model($model)
    {
        require_once '../application/modules/models/' . $model . '.php';
        return new $model;
    }
}