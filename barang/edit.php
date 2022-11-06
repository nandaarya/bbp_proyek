<?php
session_start();
if (! isset($_SESSION['role'])) {
	header("location:../index.php");
}

// include databse connection file
include '../dbconnect.php';
// Check if form is submitted for user update, then redirect to homepage after update
if (isset($_POST['update'])) {
	$idx = $_POST['idx'];
	$kode = $_POST['kode'];
	$nama = $_POST['nama'];
	$merek = $_POST['merek'];
	$jumlah = $_POST['jumlah'];
	$kondisi = $_POST['kondisi'];
	$fakultas = $_POST['fakultas'];
	$lokasi = $_POST['lokasi'];
	$pemakai = $_POST['pemakai'];
	// update user data
	$result = mysqli_query($conn, "UPDATE barang SET kode='$kode',nama='$nama',merek='$merek',jumlah='$jumlah',kondisi='$kondisi',fakultas='$fakultas',lokasi='$lokasi',pemakai='$pemakai' WHERE idx=$idx");
	header("Location: index.php");
}
?>
<?php
// Display selected user data based on id
// Getting id from url
$idx = $_GET['idx'];
$operasi = $_GET['operasi'];
// Fetech user data based on id
$result = mysqli_query($conn, "SELECT * FROM barang WHERE idx=$idx");

while ($daftar_barang = mysqli_fetch_array($result)) {
	$kode = $daftar_barang['kode'];
	$nama = $daftar_barang['nama'];
	$merek = $daftar_barang['merek'];
	$jumlah = $daftar_barang['jumlah'];
	$kondisi = $daftar_barang['kondisi'];
	$fakultas = $daftar_barang['fakultas'];
	$lokasi = $daftar_barang['lokasi'];
	$pemakai = $daftar_barang['pemakai'];
}
?>
<!DOCTYPE html>
<html lang="en" >
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="..\style\add.css">
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

	<!-- Body -->
	<div class="input">
		<h1 style="text-align: center;"><?php echo $operasi;?></h1>
		<a href="index.php">Go to Home</a>
		<br/><br/>
		<form action="edit.php" method="post" name="update_barang">
			<table border="0">
				<tr>
					<td>Kode Barang</td>
					<td><input type="tel" id="kode" name="kode" value=<?php echo $kode;?> pattern="[0-9]{1}.[0-9]{2}.[0-9]{2}.[0-9]{2}.[0-9]{3}" required>
						<small>Format: X.XX.XX.XXX</small>
					</td>
				</tr>
				<tr>
					<td>Nama Barang</td>
					<td><input type="text" name="nama" value=<?php echo $nama;?>></td>
				</tr>
				<tr>
					<td>Merek</td>
					<td><input type="text" name="merek" value=<?php echo $merek;?>></td>
				</tr>
				<tr>
					<td>Jumlah</td>
					<td><input type="number" min="1" name="jumlah" value=<?php echo $jumlah;?>></td>
				</tr>
				<tr>
					<td>Kondisi</td>
					<td>
						<select name="kondisi" id="kondisi">
							<option value="Baik">Baik</option>
							<option value="Rusak Ringan">Rusak Ringan</option>
							<option value="Rusak Berat">Rusak Berat</option>
						</select>
						<small>Pilihan Sebelumnya: <?php echo $kondisi;?></small>
					</td>
				</tr>
				<tr>
					<td>Unit / Fakultas</td>
					<td>
						<select name="fakultas" id="fakultas">
							<option value="FAKULTAS ILMU TARBIYAH DAN KEGURUAN">FAKULTAS ILMU TARBIYAH DAN KEGURUAN</option>
							<option value="FAKULTAS ADAB DAN ILMU BUDAYA">FAKULTAS ADAB DAN ILMU BUDAYA</option>
							<option value="FAKULTAS EKONOMI DAN BISNIS ISLAM">FAKULTAS EKONOMI DAN BISNIS ISLAM</option>
							<option value="FAKULTAS SAINS DAN TEKNOLOGI">FAKULTAS SAINS DAN TEKNOLOGI</option>
							<option value="FAKULTAS USHULUDDIN DAN PEMIKIRAN ISLAM">FAKULTAS USHULUDDIN DAN PEMIKIRAN ISLAM</option>
							<option value="FAKULTAS DAKWAH DAN KOMUNIKASI">FAKULTAS DAKWAH DAN KOMUNIKASI</option>
							<option value="FAKULTAS ILMU SOSIAL DAN HUMANIORA">FAKULTAS ILMU SOSIAL DAN HUMANIORA</option>
							<option value="FAKULTAS SYARI’AH DAN HUKUM">FAKULTAS SYARI’AH DAN HUKUM</option>
							<option value="PASCASARJANA">PASCASARJANA</option>
							<option value="UPT PUSAT PERPUSTAKAAN">UPT PUSAT PERPUSTAKAAN</option>
							<option value="UPT PUSAT PENGEMBANGAN BAHASA">UPT PUSAT PENGEMBANGAN BAHASA</option>
							<option value="LP2M">LP2M</option>
							<option value="UPT PUSAT PENGEMBANGAN BISNIS">UPT PUSAT PENGEMBANGAN BISNIS</option>
							<option value="UPT PUSAT PTIPD">UPT PUSAT PTIPD</option>
							<option value="ADMISI">ADMISI</option>
							<option value="LPM">LPM</option>
							<option value="SPI">SPI</option>
						</select>
						<small>Pilihan Sebelumnya: <?php echo $fakultas;?></small>
					</td>
				</tr>
				<tr>
					<td>Lokasi</td>
					<td><input type="text" name="lokasi" value=<?php echo $lokasi;?>></td>
				</tr>
				<tr>
					<td>Pemakai</td>
					<td>
						<select name="pemakai" id="pemakai">
							<option value="Mahasiswa">Mahasiswa</option>
							<option value="Dosen">Dosen</option>
						</select>
						<small>Pilihan Sebelumnya: <?php echo $pemakai;?></small>
					</td>
				</tr>
				<tr>
					<td><input type="hidden" name="idx" value=<?php echo $_GET['idx'];?>></td>
					<td><input type="submit" name="update" value="Update"></td>
				</tr>
			</table>
		</form>
	</div>

	<!-- Footer -->
	<div class="copyright" style="background-color: #f6f6f6; border-top: 1px solid #dddddd;"> 
		© 2022 - Pusat Teknologi Informasi dan Pangkalan Data, UIN Sunan Kalijaga, Yogyakarta
	</div>
</body>