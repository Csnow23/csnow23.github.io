<?php

class Conexion{

    public static function conectar(){

    $link = new PDO("mysql:host=127.0.0.1;dbname=bdsidat", "root","");

    $link->exec("set names utf8");

    return $link;

    }
}
