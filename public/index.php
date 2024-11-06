<?php
if( !session_id() ) session_start();

require_once '../application/config.php';

$app = new App;