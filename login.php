<?php
include('koneksi.php');
if(isset($_POST['login'])){
	$user = $_POST['username'];
	$password = $_POST['password'];

	$sql = "SELECT * FROM user WHERE username='$user' AND password='$password'";
	$query = mysqli_query($koneksi,$sql);
	
	if(mysqli_num_rows($query) == 0){
		echo 'User tidak ditemukan';
	}else{
		$row = mysqli_fetch_assoc($query);
		if($row['level'] == 1){
			$_SESSION['admin']=$user;
			echo '<script language="javascript">alert("Anda berhasil Login Admin!"); document.location="admin/index.php";</script>';
		}else{
			$_SESSION['user']=$user;
			echo '<script language="javascript">alert("Anda berhasil Login User!"); document.location="user/index.php";</script>';
		}
	}
}
?>