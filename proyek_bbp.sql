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
(1, 'admin', 'admin', 'Administrator', 'Admin'),
(2, 'guest', 'guest', 'Tamu', 'Guest');

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
(16, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Ruang 304', 'Dosen'),
(17, '3.05.02.01.003', 'Kursi Besi', 'Panjang', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby Lantai 2', 'Mahasiswa'),
(18, '3.05.02.01.003', 'Kursi Besi', 'Panjang (imdorta)', '8', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby Lantai 2', 'Mahasiswa'),
(19, '3.05.02.01.008', 'Meja Rapat', 'Grand Furniture', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby Lantai 2', 'Mahasiswa'),
(20, '3.05.01.05.008', 'LCD Projector/Infocus', 'P. Pengumuman', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby Lantai 2', 'Mahasiswa'),
(21, '3.05.01.05.001', 'Meja Kerja Kayu', 'Appron AP-35P', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby Lantai 2', 'Dosen'),
(22, '3.05.02.04.004', 'A.C Split', 'Gree (2.5 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '303 A', 'Mahasiswa'),
(23, '3.05.02.04.006', 'Kipas Angin', 'Panasonic F-EQ405', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '303 A', 'Mahasiswa'),
(24, '3.05.02.01.003', 'Kursi Dosen', 'Stramm', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '303 A', 'Dosen'),
(25, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '23', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '303 A', 'Mahasiswa'),
(26, '3.05.02.01.002', 'Meja Kerja Kayu', 'Pronov', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '303 A', 'Dosen'),
(27, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '303 A', 'Dosen'),
(28, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '303 B', 'Mahasiswa'),
(29, '3.05.02.04.006', 'Kipas Angin', 'Panasonic F-EQ405', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '303 B', 'Mahasiswa'),
(30, '3.05.02.01.003', 'Kursi Dosen', 'Stramm', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '303 B', 'Dosen'),
(31, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '9', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '303 B', 'Mahasiswa'),
(32, '3.05.02.01.003', 'Kursi Kuliah', 'Yamato', '60', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '303 B', 'Mahasiswa'),
(33, '3.05.01.05.006', 'LCD Projector/Infocus', 'Epson EB-X450', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '303 B', 'Dosen'),
(34, '3.05.02.01.002', 'Meja Kerja Kayu', 'Grand Futura', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '303 B', 'Dosen'),
(35, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '301', 'Mahasiswa'),
(36, '3.05.02.04.006', 'Kipas Angin', 'Panasonic (Baling)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '301', 'Mahasiswa'),
(37, '3.05.02.01.003', 'Kursi Dosen', 'Stramm', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '301', 'Dosen'),
(38, '3.05.02.01.003', 'Kursi Kuliah', 'Yamato', '65', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '301', 'Mahasiswa'),
(39, '3.05.01.01.048', 'LCD Projector/Infocus', 'Epson EB-W04', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '301', 'Dosen'),
(40, '3.05.02.05.002', 'Meja Kerja Kayu', 'Pronov', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '301', 'Dosen'),
(41, '3.05.01.01.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '301', 'Dosen'),
(42, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '302', 'Mahasiswa'),
(43, '3.05.02.04.006', 'Kipas Angin', 'Panasonic F-EQ405', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '302', 'Mahasiswa'),
(44, '3.05.02.01.003', 'Kursi Dosen', 'Stramm', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '302', 'Dosen'),
(45, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '30', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '302', 'Mahasiswa'),
(46, '3.05.02.01.003', 'Kursi Kuliah', 'Yamato', '31', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '302', 'Mahasiswa'),
(47, '3.05.01.05.048', 'LCD Projector/Infocus', 'Epson EB-X450', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '302', 'Dosen'),
(48, '3.05.02.01.002', 'Meja Kerja Kayu', 'Pronov', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '302', 'Dosen'),
(49, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '302', 'Dosen'),
(50, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '305', 'Mahasiswa'),
(51, '3.05.02.04.006', 'Kipas Angin', 'Panasonic F-EQ405', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '305', 'Mahasiswa'),
(52, '3.05.02.01.003', 'Kursi Dosen', 'Stramm', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '305', 'Dosen'),
(53, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '68', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '305', 'Mahasiswa'),
(54, '3.05.01.05.048', 'LCD Projector/Infocus', 'Epson EB-W04', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '305', 'Dosen'),
(55, '3.05.02.01.002', 'Meja Kerja Kayu', 'Pronov', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '305', 'Dosen'),
(56, '3.05.01.05.010', 'White Board', 'Yumag', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '305', 'Dosen'),
(57, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '305', 'Dosen'),
(58, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '306', 'Mahasiswa'),
(59, '3.05.02.04.006', 'Kipas Angin', 'Panasonic ', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '306', 'Mahasiswa'),
(60, '3.05.02.04.006', 'Kipas Angin', 'Panasonic (Baling)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '306', 'Mahasiswa'),
(61, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '61', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '306', 'Mahasiswa'),
(62, '3.05.02.01.002', 'Meja Kerja Kayu', 'Pronov', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '306', 'Dosen'),
(63, '3.05.01.05.010', 'White Board', 'Yumag', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '306', 'Dosen'),
(64, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '306', 'Dosen'),
(65, '3.02.02.01.009', 'Baggage Trolly (150 kg)', 'Krisbow', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 1', ''),
(66, '3.05.02.05.007', 'CCTV', 'Sony', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 1', ''),
(67, '3.07.02.01.172', 'Digital Thermometer', 'Thermometer Standing', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 1', ''),
(68, '3.07.02.01.097', 'Etalase Kaca', '', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 1', ''),
(69, '3.05.01.05.002', 'Hidran', '', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 1', ''),
(70, '3.05.01.02.003', 'Jam Dinding', 'Seiko', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 1', ''),
(71, '3.05.02.01.003', 'Kursi Besi', 'Panjang', '4', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 1', ''),
(72, '3.05.02.01.002', 'Meja Kerja Kayu', 'Meja Diskusi / Roundtable', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 1', 'Mahasiswa'),
(73, '3.05.02.01.002', 'Meja Kerja Kayu', 'Jati', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 1', 'Mahasiswa'),
(74, '3.05.02.05.008', 'Papan Visual', 'Kotak Saran', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 1', 'Mahasiswa'),
(75, '3.05.01.05.008', 'Papan Visual', 'P. Pengumuman', '7', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 1', ''),
(76, '', 'Pompa Air', 'GroundFos & Ebara', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 1', ''),
(77, '3.05.02.05.001', 'Tabung Pemadam', 'Appron AP-35P', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 1', ''),
(78, '3.05.02.05.083', 'Teralis Jendela', 'Besar6 / Kecil 8', '14', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 1', ''),
(79, '3.05.02.04.004', 'A.C. Split', 'Panasonic', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '104', 'Mahasiswa'),
(80, '3.05.02.04.006', 'Kipas Angin', 'Panasonic F-EQ405', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '104', 'Mahasiswa'),
(81, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '104', 'Dosen'),
(82, '3.05.01.05.048', 'LCD Projector/Infocus', 'Epson EB-X450', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '104', 'Dosen'),
(83, '3.05.02.01.03', 'Kursi Kuliah', 'Cakra', '60', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '104', 'Mahasiswa'),
(84, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '103', 'Mahasiswa'),
(85, '3.05.02.04.006', 'Kipas Angin', 'Panasonic F-EQ405', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '103', 'Mahasiswa'),
(86, '3.05.02.01.003', 'Kursi Besi', 'Stramm', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '103', 'Dosen'),
(87, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '23', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '103', 'Mahasiswa'),
(88, '3.05.02.01.003', 'Kursi Kuliah', 'Cakra', '65', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '103', 'Mahasiswa'),
(89, '3.05.01.05.048', 'LCD Projector / Infocus', 'Epson EB-X450', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '103', 'Dosen'),
(90, '3.05.02.01.003', 'Kursi Kuliah', 'Yamato', '44', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '103', 'Dosen'),
(91, '3.05.02.06.002', 'Televisi', 'Interactive Flat 86', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '103', 'Dosen'),
(92, '3.05.02.04.004', 'A.C. Split', 'Panasonic', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '103', 'Mahasiswa'),
(93, '3.05.02.04.006', 'Kipas Angin', 'KDK WR 40 U', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '103', 'Mahasiswa'),
(94, '3.05.02.01.003', 'Kursi Besi', 'Futura Merah/Coklat', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 101', ''),
(95, '3.05.01.04.002', 'Lemari Kayu', 'Hand Made', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 101', ''),
(96, '3.05.02.01.005', 'Kursi Tamu', '', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 101', ''),
(97, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', 'Lobby 101', ''),
(98, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '401', 'Mahasiswa'),
(99, '3.05.02.04.006', 'Kipas Angin', 'Panasonic (Baling)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '401', 'Mahasiswa'),
(100, '3.05.02.01.003', 'Kursi Dosen', 'Stramm', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '401', 'Dosen'),
(101, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '47', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '401', 'Mahasiswa'),
(102, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '401', 'Dosen'),
(103, '3.05.01.05.048', 'LCD Projector / Infocus', 'Epson EB-X450', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '401', 'Dosen'),
(104, '3.05.02.01.002', 'Meja Kerja Kayu', 'Pronov', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '401', 'Dosen'),
(105, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '402', 'Mahasiswa'),
(106, '3.05.02.04.006', 'Kipas Angin', 'Panasonic F-EQ405', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '402', 'Mahasiswa'),
(107, '3.05.02.01.003', 'Kursi Dosen', 'Stramm', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '402', 'Dosen'),
(108, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '59', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '402', 'Mahasiswa'),
(109, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '402', 'Dosen'),
(110, '3.05.01.05.048', 'LCD Projector / Infocus', 'Epson EB-W28', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '402', 'Dosen'),
(111, '3.05.02.01.002', 'Meja Kerja Kayu', 'Pronov', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '402', 'Dosen'),
(112, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '403', 'Mahasiswa'),
(113, '3.05.02.04.006', 'Kipas Angin', 'Panasonic F-EQ405', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '403', 'Mahasiswa'),
(114, '3.05.02.01.003', 'Kursi Dosen', 'Stramm', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '403', 'Dosen'),
(115, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '78', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '403', 'Mahasiswa'),
(116, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '403', 'Dosen'),
(117, '3.05.01.05.048', 'LCD Projector / Infocus', 'Epson EB-X450', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '403', 'Dosen'),
(118, '3.05.02.01.002', 'Meja Kerja Kayu', 'Pronov', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '403', 'Dosen'),
(119, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '404', 'Mahasiswa'),
(120, '3.05.02.04.006', 'Kipas Angin', 'Panasonic F-EQ405', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '404', 'Mahasiswa'),
(121, '3.05.02.01.003', 'Kursi Dosen', 'Stramm', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '404', 'Dosen'),
(122, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '56', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '404', 'Mahasiswa'),
(123, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '404', 'Dosen'),
(124, '3.05.01.05.048', 'LCD Projector / Infocus', 'Epson EB-W28', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '404', 'Dosen'),
(125, '3.05.02.01.002', 'Meja Kerja Kayu', 'Pronov', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '404', 'Dosen'),
(126, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '406', 'Mahasiswa'),
(127, '3.05.02.04.006', 'Kipas Angin', 'KDK WR 40 U', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '406', 'Mahasiswa'),
(128, '3.05.02.04.006', 'Kipas Angin', 'Panasonic F-EQ405', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '406', 'Mahasiswa'),
(129, '3.05.02.01.003', 'Kursi Dosen', 'Stramm', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '406', 'Dosen'),
(130, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '20', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '406', 'Mahasiswa'),
(131, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '406', 'Dosen'),
(132, '3.05.01.05.048', 'LCD Projector / Infocus', 'Epson EB-W31', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '406', 'Dosen'),
(133, '3.05.02.01.002', 'Meja Kerja Kayu', 'Pronov', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '406', 'Dosen'),
(134, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '407', 'Mahasiswa'),
(135, '3.05.02.04.006', 'Kipas Angin', 'Panasonic F-EQ405', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '407', 'Mahasiswa'),
(136, '3.05.02.01.003', 'Kursi Dosen', 'Stramm', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '407', 'Dosen'),
(137, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '10', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '407', 'Mahasiswa'),
(138, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '407', 'Dosen'),
(139, '3.05.01.05.048', 'LCD Projector / Infocus', 'Epson EB-W31', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '407', 'Dosen'),
(140, '3.05.02.01.002', 'Meja Kerja Kayu', 'Pronov', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '407', 'Dosen'),
(141, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '408', 'Mahasiswa'),
(142, '3.05.02.04.006', 'Kipas Angin', 'Panasonic (Baling)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '408', 'Mahasiswa'),
(143, '3.05.02.01.003', 'Kursi Dosen', 'Stramm', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '408', 'Dosen'),
(144, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '78', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '408', 'Mahasiswa'),
(145, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '408', 'Dosen'),
(146, '3.05.01.05.048', 'LCD Projector / Infocus', 'Epson EB-W28', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '408', 'Dosen'),
(147, '3.05.02.01.002', 'Meja Kerja Kayu', 'Pronov', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '408', 'Dosen'),
(148, '3.05.02.04.004', 'A.C. Split', 'Gree (2 PK)', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '409', 'Mahasiswa'),
(149, '3.05.02.04.006', 'Kipas Angin', 'Panasonic F-EQ405', '2', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '409', 'Mahasiswa'),
(150, '3.05.02.01.003', 'Kursi Besi', 'Futura Biru', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '409', 'Dosen'),
(151, '3.05.02.01.003', 'Kursi Kuliah', 'Chitose', '7', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '409', 'Mahasiswa'),
(152, '3.05.01.05.010', 'White Board', 'Kaca Hand Made', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '409', 'Dosen'),
(153, '3.05.02.01.002', 'Meja Kerja Kayu', 'Pronov', '1', 'Baik', 'FAKULTAS SAINS DAN TEKNOLOGI', '409', 'Dosen')
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