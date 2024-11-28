<?php 
	require 'connection.php';
	$id_pendapatan = $_GET['id_pendapatan'];
	if (isset($id_pendapatann)) {
		if (deletePengeluaran($id_pendapatan) > 0) {
			setAlert("Pendapatan has been deleted", "Successfully deleted", "success");
		    header("Location: pendapatan.php");
	    }
	} else {
	   header("Location: pendapatan.php");
	}