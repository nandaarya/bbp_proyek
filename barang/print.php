<?php
session_start();

if (!isset($_SESSION['role'])) {
	header("location:../index.php");
}

include '../dbconnect.php';

$fakultas = $_GET['fakultas'] ?? "all";

if ($fakultas == "all") {
	$result = mysqli_query($conn, "SELECT * FROM barang ORDER BY idx ASC");
	$nama_fakultas = "SEMUA UNIT DAN FAKULTAS";
} else {
	$result = mysqli_query($conn, "SELECT * FROM barang WHERE fakultas = '$fakultas'");
	$nama_fakultas = $fakultas;
}

?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="..\style\index_barang.css">
	<title>DATA BMN <?php echo $nama_fakultas ?> UIN SUNAN KALIJAGA</title>
</head>

<body>

	<center>

		<h2>DATA INVENTARIS BMN UIN SUNAN KALIJAGA</h2>
		<?php echo "<h3>$nama_fakultas</h3>" ?>

	</center>

	<table id="tabel" width='100%' border=1>
		<tr>
			<th style="width:2%">No</th>
			<th style="width:10%">Kode Barang</th>
			<th style="width:15%">Nama Barang</th>
			<th style="width:12%">Merek</th>
			<th style="width:5%">Jumlah</th>
			<th style="width:8%">Kondisi</th>
			<th style="width:30%">Unit / Fakultas</th>
			<th style="width:10%">Lokasi</th>
			<th style="width:8%">Pemakai</th>
		</tr>
		<?php
		$nomor = 1;
		while ($daftar_barang = mysqli_fetch_array($result)) {
			echo "<tr style='background-color: #FFF8EA;'>";
			echo "<td>" . $nomor . "</td>";
			echo "<td>" . $daftar_barang['kode'] . "</td>";
			echo "<td>" . $daftar_barang['nama'] . "</td>";
			echo "<td>" . $daftar_barang['merek'] . "</td>";
			echo "<td>" . $daftar_barang['jumlah'] . "</td>";
			echo "<td>" . $daftar_barang['kondisi'] . "</td>";
			echo "<td>" . $daftar_barang['fakultas'] . "</td>";
			echo "<td>" . $daftar_barang['lokasi'] . "</td>";
			echo "<td>" . $daftar_barang['pemakai'] . "</td>";
			$nomor++;
		}
		?>
	</table>

	<script>
		window.print();
	</script>

</body>

</html>