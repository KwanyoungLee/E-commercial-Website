<?php
session_start();

	$conn=mysqli_connect('sophia.cs.hku.hk','kylee3','VDkBSacc') or die ('Failed to Connect '.mysqli_error());
	mysqli_select_db($conn, 'kylee3') or die ('Failed to Access DB'.mysqli_error());
	
	$arrayone = array();
	
	foreach($_SESSION['shoppingCart'] as $key=>$value){
		if (is_numeric($key) && $key!=0){
	
			$query = "select * from catalog where itemID='".$key."' ";
			$result = mysqli_query($conn, $query) or die ('Failed to query '.mysqli_error($conn));
	
			$item_array = array();
	
			while($row = mysqli_fetch_array($result)){

				$item_array[] = array('itemID'=>$row['itemID'],'itemName'=> $row['itemName'],'itemDescription' => $row['itemDescription'] ,'itemCategory'=> $row['itemCategory'],'itemImage'=>$row['itemImage'],'itemPrice'=>$row['itemPrice']);
			}
			
			$arrayone = array_merge($arrayone, $item_array);
		}
	}
	print json_encode($arrayone);

?>