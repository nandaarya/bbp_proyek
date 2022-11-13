<?php
session_start();

if (! isset($_SESSION['role'])) {
	header("location:../index.php");
}

include '../dbconnect.php';
$result = $_GET['fakultas'];

?>

<!DOCTYPE html>
<html>
<head>
	<title>CETAK DATA</title>
</head>
<body>
 
	<center>
 
		<h2>DATA INVENTARIS BMN UIN SUNAN KALIJAGA</h2>
		<h4></h4>
 
	</center>
 
    <table id="tabel" width='100%' border=1>
			<tr>
				<th style="width:2%">No</th> <th style="width:10%">Kode Barang</th><th style="width:15%">Nama Barang</th> <th style="width:12%">Merek</th> 
				<th style="width:5%">Jumlah</th> <th style="width:8%">Kondisi</th> <th style="width:25%">Unit / Fakultas</th> <th style="width:10%">Lokasi</th> 
				<th style="width:8%">Pemakai</th>
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
				$nomor++;
			}
			?>
			</table>
 
	<script>
		window.print();
	</script>
 
</body>
</html>













