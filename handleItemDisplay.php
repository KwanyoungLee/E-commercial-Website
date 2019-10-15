<?php

	$conn=mysqli_connect('sophia.cs.hku.hk','kylee3','VDkBSacc') or die ('Failed to Connect '.mysqli_error());
	mysqli_select_db($conn, 'kylee3') or die ('Failed to Access DB'.mysqli_error());
	
	$cur = $_GET['currentPage'];
	$incre = $_GET['increment'];
	$firstItem = $cur * $incre;
	
	if($_GET['cate'] == "initial"){
		$query = "select * from catalog where itemCategory=(select itemCategory from catalog order by itemCategory asc limit 1) order by itemName asc Limit $firstItem, $incre";
	}else{
		$query = "select * from catalog where itemCategory='".$_GET['cate']."' order by itemName asc Limit $firstItem, $incre";
	}
	
	
	$result = mysqli_query($conn, $query) or die ('Failed to query '.mysqli_error($conn));
	$item_array=array();
	while($row = mysqli_fetch_array($result)){
		$item_array[] = array('itemID'=>$row['itemID'],'itemName'=> $row['itemName'],'itemDescription' => $row['itemDescription'] ,'itemCategory'=> $row['itemCategory'],'itemImage'=>$row['itemImage'],'itemPrice'=>$row['itemPrice']);
	}

	print json_encode($item_array);

?>