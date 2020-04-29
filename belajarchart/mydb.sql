-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2020 at 05:42 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'diahfatmawati_', 'mentaripagi');

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `ID_BT` int(10) UNSIGNED NOT NULL,
  `NAMA` varchar(200) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `ISI` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `corona`
--

CREATE TABLE `corona` (
  `country` varchar(30) NOT NULL,
  `total_cases` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corona`
--

INSERT INTO `corona` (`country`, `total_cases`) VALUES
('USA', 1029878),
('Spain', 232128),
('Italy', 201505),
('France', 165911),
('UK', 161145),
('Germany', 159431),
('Turkey', 114653),
('Russia', 93558),
('Iran', 92584),
('China', 82836);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id_country` int(11) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id_country`, `country`) VALUES
(1, 'USA'),
(2, 'Spain'),
(3, 'Italy'),
(4, 'France'),
(5, 'UK'),
(6, 'Germany'),
(7, 'Turkey'),
(8, 'Russia'),
(9, 'Iran'),
(10, 'China');

-- --------------------------------------------------------

--
-- Table structure for table `covid`
--

CREATE TABLE `covid` (
  `id_covid` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `total_case` varchar(50) NOT NULL,
  `new_case` varchar(60) NOT NULL,
  `total_deaths` varchar(60) NOT NULL,
  `new_deaths` varchar(60) NOT NULL,
  `total_recovered` varchar(60) NOT NULL,
  `active_cases` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `covid`
--

INSERT INTO `covid` (`id_covid`, `id_country`, `total_case`, `new_case`, `total_deaths`, `new_deaths`, `total_recovered`, `active_cases`) VALUES
(1, 1, '1029878', '19522', '58640', '1843', '140138', '831100'),
(2, 2, '232128', '2706', '23822', '301', '123903', '84403'),
(3, 3, '201505', '2091', '27359', '382', '68941', '105205'),
(4, 4, '165911', '2638', '23660', '367', '46886', '95365'),
(5, 5, '161145', '3996', '21678', '586', 'N/A', '139123'),
(6, 6, '159431', '673', '6215', '89', '117400', '35816'),
(7, 7, '114653', '2392', '2992', '92', '38809', '72852'),
(8, 8, '93558', '6411', '867', '73', '8456', '84235'),
(9, 9, '92584', '1112', '5877', '71', '72439', '14268'),
(10, 10, '82836', '6', '4633', '', '77555', '648');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(4) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `jKel` varchar(10) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `Kota` varchar(20) DEFAULT NULL,
  `Pesan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `Nama`, `jKel`, `Email`, `Alamat`, `Kota`, `Pesan`) VALUES
(1, 'Apriliana Latifah Hanum', 'Perempuan', 'aprhanum@gmail.com', 'Jalan Kenjeran', 'Surabaya', 'Mahasiswa semester 4 Jurusan Sistem Informasi Fakultas Ilmu Komputer UPN \"Veteran\" Jawa Timur.'),
(2, 'Fariza Nanda Sabila', 'Perempuan', 'fanasabila@gmail.com', 'Jalan Sedati', 'Sidoarjo', 'Mahasiswa semester 4 Jurusan Sistem Informasi Fakultas Ilmu Komputer UPN \"Veteran\" Jawa Timur.'),
(3, 'Firhan Adam Zulfian', 'Perempuan', 'zulfianadam@gmail.com', 'Pondok Benowo Indah', 'Surabaya', 'Mahasiswa semester 4 Jurusan Teknik Kimia Fakultas Teknik UPN \"Veteran\" Jawa Timur.'),
(4, 'M. Shaifullah Indrawanto', 'laki-laki', 'm.indrawanto@gmail.com', 'Jalan Kota Baru Driyorejo', 'Gresik', 'Mahasiswa semester 4 Jurusan Teknik Lingkungan Fakultas Teknik UPN \"Veteran\" Jawa Timur.'),
(5, 'Tiara Karunia Miranti', 'Perempuan', 'ayatiara28@gmail.com', 'Jalan Raya Lamongan', 'Lamongan', 'Mahasiswa semester 4 Jurusan Sistem Informasi Fakultas Ilmu Komputer UPN \"Veteran\" Jawa Timur.');

-- --------------------------------------------------------

--
-- Table structure for table `liga`
--

CREATE TABLE `liga` (
  `id` int(6) UNSIGNED NOT NULL,
  `kode` varchar(3) NOT NULL,
  `negara` varchar(30) NOT NULL,
  `champion` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `liga`
--

INSERT INTO `liga` (`id`, `kode`, `negara`, `champion`) VALUES
(1, 'Jer', 'Jerman', 4),
(2, 'Spa', 'Spanyol', 3),
(3, 'Eng', 'English', 3);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `pass`) VALUES
(1, 'ariyananda_@gmail.com', 'ariyana00'),
(2, 'bryan_lee@gmail.com', 'leebryan06'),
(3, 'dream.lavina@gmail.com', '12lavina00'),
(4, 'marsha_vella@yahoo.co.id', 'marsha1978'),
(5, 'maudymarissa5@gmail.com', 'marissa5'),
(6, 'zahra_alia@gmail.com', 'aliazahra12'),
(7, 'diah_fatmawati@ymail.com', 'diahfatma_00'),
(8, 'elvarida_muala@gmail.com', 'mualala11'),
(9, 'permanaputraibu@yahoo.co.id', 'putraibu1'),
(10, 'cantika_putriayu@gmail.com', 'cantikaayu2'),
(11, 'mentari@gmail.com', 'ajamentari');

-- --------------------------------------------------------

--
-- Table structure for table `registrasi`
--

CREATE TABLE `registrasi` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `jeniskelamin` varchar(40) NOT NULL,
  `nisn` int(15) NOT NULL,
  `nik` int(15) NOT NULL,
  `tempatlahir` varchar(40) NOT NULL,
  `tanggallahir` varchar(40) NOT NULL,
  `akta` int(15) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `kewarganegaraan` varchar(30) NOT NULL,
  `berkebutuhankhusus` varchar(60) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `rt` int(11) NOT NULL,
  `rw` int(11) NOT NULL,
  `dusun` varchar(40) NOT NULL,
  `kelurahan` varchar(40) NOT NULL,
  `kecamatan` varchar(40) NOT NULL,
  `kodepos` int(11) NOT NULL,
  `lintang` varchar(40) NOT NULL,
  `bujur` varchar(40) NOT NULL,
  `tempattinggal` varchar(50) NOT NULL,
  `transportasi` varchar(40) NOT NULL,
  `nokks` int(15) NOT NULL,
  `anak` int(11) NOT NULL,
  `penerima` varchar(30) NOT NULL,
  `nokps` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrasi`
--

INSERT INTO `registrasi` (`id`, `tanggal`, `namalengkap`, `jeniskelamin`, `nisn`, `nik`, `tempatlahir`, `tanggallahir`, `akta`, `agama`, `kewarganegaraan`, `berkebutuhankhusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kodepos`, `lintang`, `bujur`, `tempattinggal`, `transportasi`, `nokks`, `anak`, `penerima`, `nokps`) VALUES
(1, '2020-04-10', 'Maria Selena', 'Perempuan', 411202001, 123456789, 'Surabaya', '2002-04-20', 200220, 'Islam', 'WNI', 'tidak', 'Jalan Malioboro No 12', 3, 2, 'Kerta', 'Kerta', 'Kertajati', 10212, '14 LU', '30 BT', 'Orang Tua', 'Kendaraan Pribadi', 12345678, 2, 'Ya', 1010201),
(2, '2020-04-10', 'Alex Potter', 'Laki-laki', 411202002, 1234567890, 'Surabaya', '2002-01-31', 200231, 'Islam', 'WNI', 'tidak', 'Pondok Benowo Indah', 1, 2, 'Benowo', 'Sambikerep', 'Tandes', 20216, '15 LU', '30 BT', 'Orang Tua', 'Kendaraan Pribadi', 123456789, 1, 'Ya', 1010202),
(3, '2020-04-11', 'Kenzo Hadid', 'Laki-laki', 411202003, 456789001, 'Yogyakarta', '2003-02-02', 200202, 'Konghucu', 'WNI', 'tidak', 'Jalan Kota Baru Driyorejo', 3, 2, 'Driyorejo', 'Driyorejo', 'Driyorejo', 20212, '15 LU', '30 BT', 'Orang Tua', 'Kendaraan Pribadi', 12345678, 2, 'Ya', 1010203),
(4, '2020-04-12', 'Almira Ose', 'Perempuan', 411202004, 35783178, 'Palembang', '2003-01-01', 200201, 'Islam', 'WNI', 'tidak', 'Jalan Lontar', 4, 2, 'Lontar Baru', 'Lontar', 'Sambikerep', 20216, '15 LU', '30 BT', 'Orang Tua', 'Kendaraan Pribadi', 1234567890, 3, 'Ya', 1010204),
(5, '2020-04-13', 'Ariana Grande', 'Perempuan', 411202005, 1357831700, 'Australia', '2002-08-19', 200219, 'Katolik', 'WNA', 'tidak', 'Jalan Kerta Jaya', 1, 1, 'Kerta', 'Kertajaya', 'Kertajaya', 20213, '15 LU', '30 BT', 'Orang Tua', 'Kendaraan Pribadi', 123456790, 2, 'Ya', 1010205);

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `barang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `barang`) VALUES
(1, 'Redmi Note 7'),
(2, 'Samsung M20'),
(3, 'Realme 3'),
(4, 'Iphone X');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tgl_penjualan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`id_penjualan`, `id_barang`, `jumlah`, `tgl_penjualan`) VALUES
(1, 1, 5, '2019-01-11'),
(2, 3, 3, '2019-01-04'),
(3, 2, 4, '2019-02-11'),
(4, 2, 3, '2019-03-09'),
(5, 3, 4, '2019-04-10'),
(6, 4, 1, '2019-05-11'),
(7, 1, 2, '2019-05-05'),
(8, 4, 7, '2019-06-09'),
(9, 3, 2, '2019-06-11'),
(10, 2, 5, '2019-07-11'),
(11, 1, 2, '2019-07-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`ID_BT`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liga`
--
ALTER TABLE `liga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrasi`
--
ALTER TABLE `registrasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  MODIFY `ID_BT` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `liga`
--
ALTER TABLE `liga`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `registrasi`
--
ALTER TABLE `registrasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
