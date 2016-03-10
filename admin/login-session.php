<?php

include_once 'dbconfig.php';
    // http://php.net/manual/en/function.session-start.php
    // http://stackoverflow.com/questions/11768816/php-session-variables-not-preserved-with-ajax
    // http://stackoverflow.com/questions/9560240/how-session-start-function-works
    // get the session
    if (session_status() == PHP_SESSION_NONE) {
        session_start();
    }
  

    $methodType = $_SERVER['REQUEST_METHOD'];
    $data = array("status" => "fail", "msg" => "$methodType");

    if ($methodType === 'POST') {



        if(isset($_SERVER['HTTP_X_REQUESTED_WITH'])
            && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            // yes, is AJAX call
            // answer POST call and get the data that was sent
                $email =  $_POST['email'];
                $password =  $_POST['password'];
                
            
            if(isset($email) && !empty($email)
                && isset($password) && !empty($password)){


                // get the data from the post and store in variables
                $login =  $_POST["email"];
                $password = md5($_POST["password"]);
               
                try {
                    $conn = new PDO("mysql:host=$DB_host;dbname=$DB_name", $DB_pass, $DB_user);
                    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                    $sql = "SELECT * FROM users WHERE email = :log AND password = :pwd";

                    $statement = $conn->prepare($sql);
                    $statement->execute(array(":log" => $login, ":pwd" => $password));

                    $count = $statement->rowCount();

                    if($count > 0) {
                     
                        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);
                        $returnedLogin = $rows[0]['email'];
                        $returnedPassword = $rows[0]['password'];

                        
                        $_SESSION['email'] = $returnedLogin;
                        $_SESSION['loggedin'] = true;


                        // see that it was generated
                        $sid= session_id();
                       
                        
                        
                        $userinfo = array(
                            "id" => $rows[0]['id'],
                            "email" => $rows[0]['email'],
                           "password" => $rows[0]['password'],
                       

                        );

                         $data = array("status" => "success", "sid" => $sid, "userinfo" => $userinfo);
                       // $data=json_encode($data);

                    } else {
                        $data = array("status" => "fail", "msg" => "User name and/or password not correct.");
                    }


                } catch(PDOException $e) {
                    $data = array("status" => "fail", "msg" => $e->getMessage());
                }


            } else {
                $data = array("status" => "fail", "msg" => "Either login or password were absent.");
            }



        } else {
            // not AJAX
            $data = array("status" => "fail", "msg" => "Has to be an AJAX call.");
        }


    } else {
        // simple error message, only taking POST requests
        $data = array("status" => "fail", "msg" => "Error: only POST allowed.");
    }

    echo json_encode($data);

?>

