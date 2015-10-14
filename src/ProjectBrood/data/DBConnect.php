<?php
namespace src\ProjectBrood\data;

use PDO;
use PDOException;


class DBConnect
{
    private $handler;

    public function startConnection()
    {
//        include('config.php');
        try
        {
            $this->handler = new PDO('mysql:
            host=localhost;
            dbname=broodjeszaak;
            charset=utf8',
                'user',
                'password',
                array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));

            $this->handler->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $this->handler;
        }
        catch (PDOException $e)
        {
//            echo $e->getMessage();
            echo "Problem with DB";
            die();
        }
    }
}


