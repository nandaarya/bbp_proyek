<?php
session_start();
include '../dbconnect.php';

if (! isset($_SESSION['role'])) {
	header("location:../index.php");
}

if (isset($_POST['submit'])) {
	$filter_fakultas = $_POST['pilihan_fakultas'];
	if ($filter_fakultas == "all") {
		$result = mysqli_query($conn, "SELECT * FROM barang ORDER BY idx ASC");
	} else {
		$result = mysqli_query($conn, "SELECT * FROM barang WHERE fakultas = '$filter_fakultas'");
	}	
} else {
	$result = mysqli_query($conn, "SELECT * FROM barang ORDER BY idx ASC");
}
// switch ($filter_fakultas) {
//   case "$filter_fakultas":
// 	$result = mysqli_query($conn, "SELECT * FROM barang WHERE fakultas = '$filter_fakultas'");
// 	break;
//   default:
//   	$result = mysqli_query($conn, "SELECT * FROM barang ORDER BY idx ASC");
// }

// $result = mysqli_query($conn, "SELECT * FROM barang ORDER BY idx ASC"); // fetch all users data from database
$result_fakultas = mysqli_query($conn, "SELECT DISTINCT fakultas FROM barang ORDER BY fakultas ASC");
?>
<!DOCTYPE html>
<html lang="en" >
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css"  href="..\style\index_barang.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Inventaris BMN UIN Sunan Kalijaga</title>
</head>
<body>
	<!-- Header -->
	<div class="app_header-top"></div>
	<div class="app_header-top2"></div>
	<div class="app_main">
		<div class="app_header">
			<div class="center">
				<div class="app_uin_id">
					<img src="..\assets\images\uin.png">
				</div>
				<div class="app_header_right">
					<div class="app_system_id">Barang Milik Negara</div>
					<div class="app_univ_id">UIN Sunan Kalijaga</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>

	<div class="main_content">
		<?php echo "Selamat Datang, <b>" . $_SESSION["nickname"] . "</b>. Hak Akses Anda adalah <b>". $_SESSION["role"] ."</b>.";?>
		<a href="logout.php" class="btn">
			<button type="button" id="logout_button">Log Out</button>
		</a>
		<div class="operation-box">
			<form action="index.php" method="post">
				<select id="filter" name="pilihan_fakultas">
					<option value="all">SEMUA UNIT DAN FAKULTAS</option>
					<?php
					while($res = mysqli_fetch_array($result_fakultas)) {
						if ($filter_fakultas == $res['fakultas']) {
							echo "<option value='".$res['fakultas']."' selected>".$res['fakultas']."</option>";
						} else {
							echo "<option value='".$res['fakultas']."'>".$res['fakultas']."</option>";
						}
					}
					?>
				</select>
				<input type="submit" name="submit" value="Filter">
				<?php
				if ($_SESSION['role'] == "Admin") {
					echo "<a href='add.php' class='btn'><button type='button' id='add_button'>Tambah Data</button></a>";
				}
				?>
			</form>
		</div>
		<div class="tabel_data">
			<table id="tabel" width='100%' border=1>
			<tr>
				<th style="width:2%">No</th> <th style="width:10%">Kode Barang</th><th style="width:15%">Nama Barang</th> <th style="width:12%">Merek</th> 
				<th style="width:5%">Jumlah</th> <th style="width:8%">Kondisi</th> <th style="width:25%">Unit / Fakultas</th> <th style="width:10%">Lokasi</th> 
				<th style="width:8%">Pemakai</th> <th style="width:5%">Operasi</th>
			</tr>
			<?php
			$nomor = 1;
			while ($daftar_barang = mysqli_fetch_array($result)) {
				echo "<tr style='background-color: #FFF8EA;'>";
				echo "<td>".$nomor."</td>";
				echo "<td>".$daftar_barang['kode']."</td>";
				echo "<td>".$daftar_barang['nama']."</td>";
				echo "<td>".$daftar_barang['merek']."</td>";
				echo "<td>".$daftar_barang['jumlah']."</td>";
				echo "<td>".$daftar_barang['kondisi']."</td>";
				echo "<td>".$daftar_barang['fakultas']."</td>";
				echo "<td>".$daftar_barang['lokasi']."</td>";
				echo "<td>".$daftar_barang['pemakai']."</td>";
				if ($_SESSION['role'] == 'Admin') {
				echo "<td><a href='edit.php?idx=$daftar_barang[idx]&operasi=Ubah Data'><i class='fa fa-edit' style='font-size:14px;color:orange'></i></a> 
				| <a href='delete.php?idx=$daftar_barang[idx]'><i class='fa fa-trash-o' style='font-size:14px;color:red'></i></a></td></tr>";
				} else {
				echo "<td><i class='fa fa-ban' style='font-size:14px;color:red' aria-hidden='true'></i></td></tr>";
				}
				$nomor++;
			}
			?>
			</table>
		</div>
	</div>


	<!-- Footer -->
	<div class="copyright" style="background-color: #f6f6f6; border-top: 1px solid #dddddd;"> 
		© 2022 - Pusat Teknologi Informasi dan Pangkalan Data, UIN Sunan Kalijaga, Yogyakarta
	</div>
</body>