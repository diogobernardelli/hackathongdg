<?php
	mysql_set_charset('utf8');
	

	// Include confi.php
	include_once('confi.php');

	if(isset($_GET['id'])){
		$id = mysql_real_escape_string($_GET['id']);
		$qur = mysql_query("SELECT * FROM `users` WHERE `id`=$id");
	}else{
		$qur = mysql_query("SELECT * FROM `users` ORDER BY `id` DESC");
	}

	$result = array();
	while($r = mysql_fetch_array($qur)){
		extract($r);
		$result[] = array(
			"id" => utf8_encode($id), 
			"politico" => utf8_encode($politico), 
			"text" => utf8_encode($text),  
			"data" => utf8_encode($data),  
			"area" => utf8_encode($area), 
			"dica" => utf8_encode($dica),
			"uteis" => utf8_encode($uteis),
			"emailFeedback" => utf8_encode($emailFeedback),
			"status" => utf8_encode($status)
		);
	}
	$json = array("status" => 1, "info" => $result);

	@mysql_close($conn);

	/* Output header */
	header("Content-type: application/json; charset=utf-8");
	echo json_encode($json);

?>