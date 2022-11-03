SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek_bbp`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `nickname`, `role`) VALUES
(1, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idx` int(11) NOT NULL,
  `kode` varchar(15) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `merek` varchar(40) NOT NULL,
  `jumlah` int(12) NOT NULL,
  `kondisi` varchar(15) NOT NULL,
  `fakultas` varchar(55) NOT NULL,
  `lokasi` varchar(55) NOT NULL,
  `pemakai` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idx`, `kode`, `nama`, `merek`, `jumlah`, `kondisi`, `fakultas`, `lokasi`, `pemakai`) VALUES
(1, '3.05.02.04.004', 'A.C. Split', 'Panasonic', '5', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Ruang 104', 'Mahasiswa'),
(2, '3.05.02.04.006', 'Kipas Angin', 'Panasonic F-EQ405', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Ruang 104', 'Mahasiswa'),
(3, '3.05.02.01.003', 'Kursi Kuliah', 'Cakra', '60', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Ruang 104', 'Mahasiswa'),
(4, '3.05.01.05.048', 'LCD Projector/Infocus', 'Epson EB-X450', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Ruang 104', 'Mahasiswa'),
(5, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Ruang 104', 'Mahasiswa'),
(6, '3.05.01.05.002', 'Hidran', ' ', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby Lantai 3', 'Mahasiswa'),
(7, '3.05.02.01.003', 'Kursi Besi', 'Panjang', '3', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby Lantai 3', 'Mahasiswa'),
(8, '3.05.01.05.008', 'Papan Visual', 'P. Pengumuman', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby Lantai 3', 'Mahasiswa'),
(9, '3.05.01.05.001', 'Tabung Pamadam', 'Appron AP-35P', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby Lantai 3', 'Mahasiswa'),
(10, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Ruang 304', 'Mahasiswa'),
(11, '3.05.02.04.006', 'Kipas Anging', 'Panasonic F-EQ405', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Ruang 304', 'Mahasiswa'),
(12, '3.05.02.01.003', 'Kursi Dosen', 'Stramm', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Ruang 304', 'Dosen'),
(13, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '73', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Ruang 304', 'Mahasiswa'),
(14, '3.05.01.05.048', 'LCD Projector/Infocus', 'Epson EB-W28', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Ruang 304', 'Mahasiswa'),
(15, '3.05.02.01.002', 'Meja Kerja Kayu', 'Pronov', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Ruang 304', 'Dosen'),
(16, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Ruang 304', 'Dosen')
;

-- --------------------------------------------------------

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idx`);

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;