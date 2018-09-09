<?php

	mysql_set_charset('utf8');
	include_once('confi.php');

    $json = array("status" => 0, "info" => null);

	if(isset($_POST["text"])){
		
		$qur = mysql_query(
            "INSERT INTO `users` (
                `politico`, 
                `text`, 
                `data`, 
                `area`, 
                `dica`, 
                `uteis`, 
				`emailFeedback`,
                `status`
            ) 
            VALUES (
                '".utf8_decode($_POST['politico'])."', 
                '".utf8_decode($_POST['text'])."', 
                '".$_POST['data']."', 
                '".utf8_decode($_POST['area'])."', 
                '".utf8_decode($_POST['dica'])."', 
                '".utf8_decode($_POST['uteis'])."', 
				'".utf8_decode($_POST['emailFeedback'])."', 
                '1'
            )"
		);
		$json = array("status" => 1, "info" => $qur);
	}

	@mysql_close($conn);

	/* Output header */
	header("Content-type: application/json; charset=utf-8");
	echo json_encode($json);

?>