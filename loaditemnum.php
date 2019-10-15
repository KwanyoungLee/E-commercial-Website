<?php

	$conn=mysqli_connect('sophia','kylee3','VDkBSacc') or die ('Failed to Connect '.mysqli_error());
	mysqli_select_db($conn, 'kylee3') or die ('Failed to Access DB'.mysqli_error());


	$query = 'select itemName from catalog';
	$result = mysqli_query($conn, $query) or die ('Failed to query '.mysqli_error($conn));
	$category_array = array();
	while($row = mysqli_fetch_array($result)){
		$category_array[] = $row;
	}

	print json_encode($category_array);

?>