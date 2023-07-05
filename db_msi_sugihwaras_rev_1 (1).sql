-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 01:55 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_msi_sugihwaras_rev_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku0072`
--

CREATE TABLE `buku0072` (
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `penerbit` enum('Laki-Laki','Perempuan') NOT NULL DEFAULT 'Laki-Laki',
  `stok_buku` bigint(20) NOT NULL,
  `status_buku` enum('Tersedia','Dipinjam') NOT NULL DEFAULT 'Tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `data_ayah`
--

CREATE TABLE `data_ayah` (
  `nis` varchar(10) NOT NULL,
  `nama_ayah` varchar(60) NOT NULL,
  `tempat_lahir` varchar(40) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pendidikan_terakhir` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `pendapatan` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_ibu`
--

CREATE TABLE `data_ibu` (
  `nis` varchar(10) NOT NULL,
  `nama_ibu` varchar(60) NOT NULL,
  `tempat_lahir` varchar(40) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `pendidikan_terakhir` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `pendapatan` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emis`
--

CREATE TABLE `emis` (
  `nis` varchar(10) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `jenis_kel` enum('laki-laki','perempuan') NOT NULL,
  `tempat_lhr` varchar(40) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(20) NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL,
  `tinggi_bdn` varchar(3) NOT NULL,
  `berat_bdn` varchar(3) NOT NULL,
  `riwayat_pnykt` varchar(50) NOT NULL,
  `nama_ayah` varchar(40) NOT NULL,
  `nama_ibu` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emis`
--

INSERT INTO `emis` (`nis`, `nisn`, `nik`, `nama`, `foto`, `alamat`, `jenis_kel`, `tempat_lhr`, `tgl_lahir`, `agama`, `tahun_ajaran`, `tinggi_bdn`, `berat_bdn`, `riwayat_pnykt`, `nama_ayah`, `nama_ibu`) VALUES
('101', '202', '222', 'Eka Paka', 'Screenshot (1).png', 'Pekalongan', 'laki-laki', 'pekalongan', '2023-06-20', 'islam', '2003', '21', '22', 'tidak ada', 'dada', 'dae'),
('101111', '234888', '32167829898', 'Lilis', 'Screenshot (6).png', 'pekalongan', 'perempuan', 'pkl', '2023-06-15', 'Islam', '2020/2021', '150', '30', 'tidak ada', 'aki', 'aola'),
('1034', '1111', '2222', 'DInda hawe', '1.png', 'Bkasi', 'laki-laki', 'watu', '2000-02-22', 'hindu', '2020/2021', '100', '029', '-', 'pala', 'aola'),
('1122', '2123000871', '000000', 'GENTALA MAHARI', '', 'PEMALANG', 'laki-laki', 'Pemalang ', '2005-12-02', 'islam', '2021', '178', '56', 'tidak ada', 'ayah', 'ibu'),
('12463', '3728362', '32873', 'apang', '1.png', 'pekalongan', 'laki-laki', 'Pekalongan', '2000-02-01', 'Islam', '2020/2021', '170', '50', 'no', 'aki', 'aki'),
('127890', '123657', '77535667', 'ulong', '2.png', 'pekalongan', 'perempuan', 'Pekalongan', '2001-09-10', 'Islam', '2020/2021', '130', '45', 't', 'ujio', 'yuiu'),
('14589', '35162', '21725', 'ilo', '3.png', 'pekalongan', 'perempuan', 'Pekalongan', '2000-10-10', 'Islam', '2020/2021', '160', '43', 'no', 'wer', 'wer'),
('222', '222', '222', 'ILMAA', '1.png', 'pekalongan', 'laki-laki', 'Pekalongan', '2023-05-16', 'Islam', '2020/2021', '120', '42', '-', 'Al', 'muti'),
('267365', '37625', '28326', 'uji', '4.png', 'pekalongan', 'laki-laki', 'Pekalongan', '2000-12-07', 'Islam', '2020/2021', '130', '55', 'tidak ada', 'lolo', 'polo'),
('65375', '627356', '36273', 'toto', '1.png', 'pekalongan', 'laki-laki', 'Pekalongan', '2001-04-05', 'Islam', '2020/2021', '160', '150', 'tidak ada', 'nono', 'bobo'),
('68236', '7826382', '3782382', 'yuyu', '3.png', 'pekalongan', 'perempuan', 'Pekalongan', '2000-09-09', 'Islam', '2020/2021', '135', '30', 'tidak ada', 'jswi', 'hdu'),
('836475', '274637', '82336', 'ryu', '1.png', 'pekalongan', 'perempuan', 'Pekalongan', '2001-12-12', 'Islam', '2020/2021', '150', '40', 'tidak ada', 'tuti', 'ruei'),
('88888', '33276651', '3327555555556666', 'ALIFFIYAN', '', 'PEKALONGAN', 'laki-laki', 'Pemalang', '2001-02-08', 'islam', '2021', '189', '67', 'Asam Lambung', 'ayah', 'ibu'),
('97483', '37283', '328327', 'fufi', '2.png', 'pekalongan', 'perempuan', 'Pekalongan', '2000-03-07', 'Islam', '2020/2021', '150', '50', 'tidak ada', 'oli', 'jsi'),
('9999', '89009877', '0988363733838', 'RHIZA', '', 'pemalang', 'laki-laki', 'pemalang', '2023-05-06', 'Islam', '2023', '167', '52', 'tidak ada', 'ayah', 'ibu');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-01-27-012203', 'App\\Database\\Migrations\\Products', 'default', 'App', 1681276910, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `nis` varchar(10) NOT NULL,
  `bhs_indonesia` int(3) UNSIGNED NOT NULL,
  `bhs_inggris` int(3) UNSIGNED NOT NULL,
  `matematika` int(3) UNSIGNED NOT NULL,
  `ipa` int(3) UNSIGNED NOT NULL,
  `ips` int(3) UNSIGNED NOT NULL,
  `agama` int(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`nis`, `bhs_indonesia`, `bhs_inggris`, `matematika`, `ipa`, `ips`, `agama`) VALUES
('88888', 10, 100, 90, 78, 98, 70),
('101', 98, 100, 90, 90, 40, 78);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_siswa`
--

CREATE TABLE `nilai_siswa` (
  `nis` varchar(10) NOT NULL,
  `jumlah_nilai` int(11) UNSIGNED NOT NULL,
  `rata_rata` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(10) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `id_pegawai` varchar(10) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `jenis_kel` enum('laki-laki','perempuan') NOT NULL,
  `tempat_lhr` varchar(40) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(20) NOT NULL,
  `masuk_thn` varchar(4) NOT NULL,
  `sk_guru` varchar(30) NOT NULL,
  `jabatan` enum('guru','tatausaha','sarpras','siswa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nik`, `id_pegawai`, `nama`, `foto`, `alamat`, `jenis_kel`, `tempat_lhr`, `tgl_lahir`, `agama`, `masuk_thn`, `sk_guru`, `jabatan`) VALUES
('0071', '12345678', '2020', 'TUMINEM RAPGOD', '033740100_1458615715-20160321-Janda-Ikuti-Festival-Holi-India-Reuters2.jpg', 'wonoyoso', 'perempuan', 'Pemalang kota', '1997-02-28', 'islam', '201', 'ab/2212/cdee', 'guru'),
('92847', '374378', '78668', 'rio', '4.png', 'pekalongan', 'laki-laki', 'Pekalongan', '1995-03-07', 'Islam', '2020', '178', 'guru'),
('0921', '0921898', '93K3', 'PAIJO MANIA', '17.M NAUFAL.JPG', 'pekalongan', 'laki-laki', 'Pemalang', '2037-12-31', 'Islam', '202', '20/0098/238281', 'guru'),
('0987', '00000', 'aabbcc', 'ACHMAD RHIZA KHULAIFY', '93699.JPG', 'Pemalang', 'laki-laki', 'pml', '2002-03-15', 'islm', '200', 'aa/23/dd/1', 'guru'),
('12346', '902893', 'FR-01', 'Faradia Nur Karimah', 'one piece.jpeg', 'poncol baru', 'perempuan', 'pkl', '2023-05-24', 'islam', '289', '2020/09/k/01', 'siswa'),
('8888', '7777', 'HL-01', 'Halimah', '3.png', 'poncol', 'perempuan', 'bal', '2023-05-22', 'Islam', '2000', 'HHHHHH', 'guru'),
('kn', 'kn', 'kkkk', 'Nadya Sakina', 'Coffee — Noel Barnhurst Photographer.jpg', 'kebumen', 'perempuan', 'Pemalang', '2011-12-31', 'islam', '22', '223/34424242/2424/00', 'tatausaha'),
('1234', '33276655', 'Nd01', 'Lilis', '13fd6daf25adc1da26b54399aeb003d1.jpg', 'wonoyoso', 'perempuan', 'pekalongan', '2003-03-30', 'islam', '2021', '-', 'sarpras'),
('nip', 'nik', 'peg01', 'sujono', 'IMG_8322.JPG', 'pekajangan', 'laki-laki', 'bali', '2000-02-02', 'islam', '2013', 'hui90909', 'guru'),
('2212', '12345678', 'qwerty', 'TONO ABDULLAH', '38ae3a5e64f9eade9dd5b2a3ddb596ae5aedcd7f_hq.jpg', 'Kebumen', 'laki-laki', 'Pemalang ', '2003-02-21', 'islam', '202', 'ab/2212/cdee', 'guru'),
('87879', '32132451', 'roy30', 'Indana Permai', 'Screenshot (5).png', 'pekalongan', 'perempuan', 'kasur', '2023-06-15', 'islam', '2020', '178', 'sarpras');

-- --------------------------------------------------------

--
-- Table structure for table `pembelajaran`
--

CREATE TABLE `pembelajaran` (
  `id_pembelajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL,
  `kelas` varchar(4) NOT NULL,
  `file` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelajaran`
--

INSERT INTO `pembelajaran` (`id_pembelajaran`, `tahun_ajaran`, `kelas`, `file`) VALUES
(2, '2023', '2BC', 0x697a756c2831292e646f6378),
(3, '2024', '3', 0x576861747341707020496d61676520323032332d30342d32392061742031392e35352e31382e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_sarpras`
--

CREATE TABLE `peminjaman_sarpras` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(70) NOT NULL,
  `jumlah` varchar(3) NOT NULL,
  `id_pegawai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman_sarpras`
--

INSERT INTO `peminjaman_sarpras` (`id`, `keterangan`, `jumlah`, `id_pegawai`) VALUES
(2, 'Baru Masuk Islam', '1', '93K3');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran_sarpras`
--

CREATE TABLE `pengeluaran_sarpras` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(70) NOT NULL,
  `jumlah` int(11) UNSIGNED NOT NULL,
  `harga` int(11) UNSIGNED NOT NULL,
  `bukti_sarpras` varchar(225) NOT NULL,
  `id_pegawai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengeluaran_sarpras`
--

INSERT INTO `pengeluaran_sarpras` (`id`, `keterangan`, `jumlah`, `harga`, `bukti_sarpras`, `id_pegawai`) VALUES
(1, 'Baju', 20, 100000, 'x.jpg', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalan`
--

CREATE TABLE `penjadwalan` (
  `id` int(11) NOT NULL,
  `id_pegawai` varchar(10) NOT NULL,
  `hari` enum('senin','selasa','rabu','kamis','sabtu','minggu') NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `mapel` enum('bhs_indonesia','bhs_inggris','matematika','ipa','ips','agama') NOT NULL,
  `status` enum('tunggu','verifikasi','tolak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjadwalan`
--

INSERT INTO `penjadwalan` (`id`, `id_pegawai`, `hari`, `waktu_mulai`, `waktu_selesai`, `mapel`, `status`) VALUES
(1, '2020', 'senin', '14:22:00', '14:33:00', 'bhs_indonesia', 'verifikasi');

-- --------------------------------------------------------

--
-- Table structure for table `ppdb`
--

CREATE TABLE `ppdb` (
  `id_daftar` varchar(10) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `jenis_kel` enum('laki-laki','perempuan') NOT NULL,
  `alamat` varchar(70) NOT NULL,
  `tempat_lhr` varchar(40) NOT NULL,
  `tgl_lhr` date NOT NULL,
  `agama` varchar(20) NOT NULL,
  `kewarganegaraan` enum('WNI','WNA Keturunan') NOT NULL,
  `anak_ke` varchar(2) NOT NULL,
  `jml_sdr` varchar(2) NOT NULL,
  `berat_bdn` varchar(3) NOT NULL,
  `tinggi_bdn` varchar(3) NOT NULL,
  `riwayat_pnykt` varchar(50) NOT NULL,
  `tmpt_tinggal` enum('orang tua','menumpang','asrama') NOT NULL,
  `nama_ayah` varchar(40) NOT NULL,
  `nama_ibu` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ppdb`
--

INSERT INTO `ppdb` (`id_daftar`, `nisn`, `nik`, `nama`, `jenis_kel`, `alamat`, `tempat_lhr`, `tgl_lhr`, `agama`, `kewarganegaraan`, `anak_ke`, `jml_sdr`, `berat_bdn`, `tinggi_bdn`, `riwayat_pnykt`, `tmpt_tinggal`, `nama_ayah`, `nama_ibu`) VALUES
('1122', '0089776562', '3327665525266252', 'RHIZA', 'perempuan', 'Sapuro', 'Banten', '2023-04-09', 'islam', 'WNA Keturunan', '7', '6', '52', '165', 'randue duet mumet', 'menumpang', 'ayah', 'ibu'),
('AKDBASNK', 'AABBCC', 'ABC', 'IZUUULLL', 'laki-laki', 'D', 'AJSD', '2023-04-26', 'LKASDSDD', 'WNI', '3', '2', '190', '20', 'aidal', 'asrama', 'asdkasd', 'asdad');

-- --------------------------------------------------------

--
-- Table structure for table `sarpras`
--

CREATE TABLE `sarpras` (
  `id_barang` varchar(8) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(70) NOT NULL,
  `status` enum('baik','sedang','buruk','') NOT NULL,
  `jumlah` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sarpras`
--

INSERT INTO `sarpras` (`id_barang`, `tanggal`, `keterangan`, `status`, `jumlah`) VALUES
('1', '2023-06-01', 'buruk bgt gais bintang 1', 'sedang', '7'),
('2', '2023-05-12', 'Baju', 'buruk', '3'),
('BK-01', '2023-05-31', 'Baru Masuk Islam', 'baik', '1');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id` int(11) NOT NULL,
  `nis` varchar(10) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `beban_pembayaran` int(5) UNSIGNED NOT NULL,
  `bukti_spp` mediumblob NOT NULL,
  `id_pegawai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id`, `nis`, `tanggal_bayar`, `bulan`, `beban_pembayaran`, `bukti_spp`, `id_pegawai`) VALUES
(1, '101', '2023-06-15', 'september', 200000, 0x33633632363632622d316634612d343839382d616230342d6538633438663162306462372e6a7067, '2020'),
(2, '9999', '0003-03-31', 'Januari', 100000, 0x322e706e67, 'aabbcc'),
(3, '267365', '2000-06-07', 'Desember', 100000, 0x53637265656e73686f74202832292e706e67, 'aabbcc'),
(4, '14589', '2000-09-10', 'April', 100000, 0x53637265656e73686f74202838292e706e67, 'aabbcc'),
(5, '97483', '2001-08-08', 'Mei', 100000, 0x53637265656e73686f74202832292e706e67, 'aabbcc'),
(6, '222', '2004-10-10', 'Februari', 100000, 0x53637265656e73686f74202833292e706e67, 'aabbcc'),
(7, '267365', '2023-06-15', 'Agustus', 100000, 0x53637265656e73686f74202833292e706e67, 'aabbcc'),
(8, '222', '2023-06-15', 'september', 100000, 0x53637265656e73686f74202837292e706e67, 'aabbcc'),
(9, '222', '2023-06-15', 'september', 100000, 0x53637265656e73686f74202837292e706e67, '2020'),
(10, '101', '2023-06-15', 'April', 30000, 0x53637265656e73686f74202837292e706e67, '93K3');

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id` int(11) NOT NULL,
  `nis` varchar(10) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `nama_ujian` varchar(20) NOT NULL,
  `beban_pembayaran` int(5) UNSIGNED NOT NULL,
  `id_pegawai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_pegawai` varchar(10) NOT NULL,
  `password` varchar(255) CHARACTER SET macce COLLATE macce_bin NOT NULL,
  `role` enum('guru','tata usaha','sarpras','siswa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `id_pegawai`, `password`, `role`) VALUES
(7, 'aabbcc', '$2y$10$GJ0o.z6Uv2H5xv5ZNVC9Bu6il/NFQpXwTUPn5fMn0RhCltX8w6VEK', 'tata usaha'),
(8, 'Nd01', '$2y$10$027EqyIEuOm5c2BPdcF1vO0BO4E6GtwiguCee1Yab/dxluyZmrF6i', 'sarpras'),
(9, '93k3', '$2y$10$9o57cV.SEvkYFWpXqhR56.71YcNkTQSRrIYTJdMxWooWnPe5LE.Ve', 'guru');

-- --------------------------------------------------------

--
-- Table structure for table `user_siswa`
--

CREATE TABLE `user_siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('siswa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_siswa`
--

INSERT INTO `user_siswa` (`id`, `nis`, `password`, `role`) VALUES
(1, '88888', '25d55ad283aa400af464c76d713c07ad', 'siswa'),
(3, '222', '25d55ad283aa400af464c76d713c07ad', 'siswa'),
(4, '101', '$2y$10$LQR4MseM/L0kYIDXZH76L.yjLseHaNqw5BhtDQwG71P4e2NT5JHQS', 'siswa'),
(5, '9999', '$2y$10$TdN4iAqiL8nD/mG8ygxFEe7mYL0v8MSkrCtUtZhljGjod7kZZvJ5y', 'siswa'),
(6, '9999', '$2y$10$Od2EeflaZkGfUPvePlG/zesnGfm.rHZzjVTi4QqIARsBFHmvokAya', 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku0072`
--
ALTER TABLE `buku0072`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `data_ayah`
--
ALTER TABLE `data_ayah`
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `data_ibu`
--
ALTER TABLE `data_ibu`
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `emis`
--
ALTER TABLE `emis`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `nilai_siswa`
--
ALTER TABLE `nilai_siswa`
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `nip` (`nip`,`nik`);

--
-- Indexes for table `pembelajaran`
--
ALTER TABLE `pembelajaran`
  ADD PRIMARY KEY (`id_pembelajaran`);

--
-- Indexes for table `peminjaman_sarpras`
--
ALTER TABLE `peminjaman_sarpras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengeluaran_sarpras`
--
ALTER TABLE `pengeluaran_sarpras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`keterangan`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `penjadwalan`
--
ALTER TABLE `penjadwalan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `ppdb`
--
ALTER TABLE `ppdb`
  ADD PRIMARY KEY (`id_daftar`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `sarpras`
--
ALTER TABLE `sarpras`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nis` (`nis`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nis` (`nis`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `user_siswa`
--
ALTER TABLE `user_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nis` (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku0072`
--
ALTER TABLE `buku0072`
  MODIFY `id_buku` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pembelajaran`
--
ALTER TABLE `pembelajaran`
  MODIFY `id_pembelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `peminjaman_sarpras`
--
ALTER TABLE `peminjaman_sarpras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengeluaran_sarpras`
--
ALTER TABLE `pengeluaran_sarpras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penjadwalan`
--
ALTER TABLE `penjadwalan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_siswa`
--
ALTER TABLE `user_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_ayah`
--
ALTER TABLE `data_ayah`
  ADD CONSTRAINT `data_ayah_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `emis` (`nis`);

--
-- Constraints for table `data_ibu`
--
ALTER TABLE `data_ibu`
  ADD CONSTRAINT `data_ibu_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `emis` (`nis`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `emis` (`nis`);

--
-- Constraints for table `nilai_siswa`
--
ALTER TABLE `nilai_siswa`
  ADD CONSTRAINT `nilai_siswa_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `emis` (`nis`);

--
-- Constraints for table `pengeluaran_sarpras`
--
ALTER TABLE `pengeluaran_sarpras`
  ADD CONSTRAINT `pengeluaran_sarpras_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);

--
-- Constraints for table `penjadwalan`
--
ALTER TABLE `penjadwalan`
  ADD CONSTRAINT `penjadwalan_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);

--
-- Constraints for table `spp`
--
ALTER TABLE `spp`
  ADD CONSTRAINT `spp_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `emis` (`nis`),
  ADD CONSTRAINT `spp_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);

--
-- Constraints for table `ujian`
--
ALTER TABLE `ujian`
  ADD CONSTRAINT `ujian_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `emis` (`nis`),
  ADD CONSTRAINT `ujian_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);

--
-- Constraints for table `user_siswa`
--
ALTER TABLE `user_siswa`
  ADD CONSTRAINT `user_siswa_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `emis` (`nis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
