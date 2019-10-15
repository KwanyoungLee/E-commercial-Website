<?php
session_start();
	
	$itemid = $_GET['itemid'];
	$updateNumber = $_GET['updateNumber'];
	
	
	if ($itemid == 0 && $updateNumber == 0){
		$_SESSION['shoppingCart'] = array("0" => "0");
	}
	else if ($itemid == -1 && $updateNumber == 0){
		session_destroy;
	}
	else{
		if(!array_key_exists($_SESSION['shoppingCart'],$itemid)){
			$_SESSION['shoppingCart'][$itemid] = $updateNumber;
		}
		else
		{	
			$_SESSION['shoppingCart'][$itemid] = $_SESSION['shoppingCart'][$itemid] + $updateNumber;
				
		}
	}
	print array_sum($_SESSION['shoppingCart']);

?>