-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2024 at 04:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `IdBarang` int(11) NOT NULL,
  `NamaBarang` varchar(250) DEFAULT NULL,
  `Keterangan` varchar(250) DEFAULT NULL,
  `Satuan` varchar(250) DEFAULT NULL,
  `IdPengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`IdBarang`, `NamaBarang`, `Keterangan`, `Satuan`, `IdPengguna`) VALUES
(15, 'Laptop', 'Laptop Dell Inspire', 'Unit', 1),
(16, 'Mouse', 'Mouse Logitech Wireless', 'Unit', 2),
(17, 'Keyboard', 'Keyboard Mechanical Razer', 'Unit', 3),
(18, 'Monitor', 'Monitor LG 24 Inch', 'Unit', 4),
(19, 'Printer', 'Printer Epson L3110', 'Unit', 5),
(20, 'Scanner', 'Scanner Canon', 'Unit', 6),
(21, 'Flashdisk', 'Flashdisk Sandisk 64GB', 'Unit', 7),
(22, 'Proyektor', 'Proyektor Epson Full HD', 'Unit', 8),
(23, 'Smartphone', 'Smartphone Samsung Galaxy', 'Unit', 9),
(24, 'Tablet', 'Tablet iPad Air', 'Unit', 10);

-- --------------------------------------------------------

--
-- Table structure for table `hakAkses`
--

CREATE TABLE `hakAkses` (
  `IdAkses` int(11) NOT NULL,
  `NamaAkses` varchar(250) DEFAULT NULL,
  `Keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hakAkses`
--

INSERT INTO `hakAkses` (`IdAkses`, `NamaAkses`, `Keterangan`) VALUES
(1, 'Admin', 'Memiliki hak penuh dalam sistem'),
(2, 'Operator', 'Dapat melakukan operasi terkait penjualan dan pembelian'),
(3, 'Supervisor', 'Mengawasi dan mengelola data'),
(4, 'Kasir', 'Melakukan transaksi harian'),
(5, 'Customer Service', 'Berhubungan langsung dengan pelanggan'),
(6, 'Manager', 'Bertanggung jawab atas pengambilan keputusan'),
(7, 'Staff', 'Menangani operasional harian'),
(8, 'Warehouse', 'Mengelola penyimpanan barang'),
(9, 'Marketing', 'Menangani promosi dan penjualan'),
(10, 'User', 'Pengguna biasa tanpa hak akses admin');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `IdPelanggan` int(11) NOT NULL,
  `NamaPelanggan` varchar(100) NOT NULL,
  `NoHP` varchar(15) DEFAULT NULL,
  `IdPengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `IdPembelian` int(11) NOT NULL,
  `JumlahPembelian` int(11) DEFAULT NULL,
  `HargaBeli` double DEFAULT NULL,
  `IdPengguna` int(11) DEFAULT NULL,
  `IdBarang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`IdPembelian`, `JumlahPembelian`, `HargaBeli`, `IdPengguna`, `IdBarang`) VALUES
(76, 30, 7000000, 1, 15),
(77, 50, 50000, 2, 16),
(78, 40, 75000, 3, 17),
(79, 60, 100000, 4, 18),
(80, 30, 150000, 5, 19),
(81, 45, 120000, 6, 20),
(82, 70, 25000, 7, 21),
(83, 25, 300000, 8, 22),
(84, 45, 4000000, 9, 23),
(85, 20, 6000000, 10, 24);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `IdPengguna` int(11) NOT NULL,
  `NamaPengguna` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `NamaDepan` varchar(250) DEFAULT NULL,
  `NamaBelakang` varchar(250) DEFAULT NULL,
  `NoHp` varchar(250) DEFAULT NULL,
  `Alamat` varchar(250) DEFAULT NULL,
  `IdAkses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`IdPengguna`, `NamaPengguna`, `Password`, `NamaDepan`, `NamaBelakang`, `NoHp`, `Alamat`, `IdAkses`) VALUES
(1, 'admin1', 'pass123', 'Andi', 'Setiawan', '081234567890', 'Jl. Merdeka No. 1, Jakarta', 1),
(2, 'operator1', 'op123', 'Budi', 'Santoso', '081234567891', 'Jl. Kemenangan No. 2, Bandung', 2),
(3, 'supervisor1', 'sup123', 'Citra', 'Lestari', '081234567892', 'Jl. Sudirman No. 3, Surabaya', 3),
(4, 'kasir1', 'kasir123', 'Dewi', 'Kartika', '081234567893', 'Jl. Gatot Subroto No. 4, Bali', 4),
(5, 'cs1', 'cs123', 'Erik', 'Wicaksono', '081234567894', 'Jl. Diponegoro No. 5, Medan', 5),
(6, 'manager1', 'man123', 'Fahmi', 'Ramadhan', '081234567895', 'Jl. Ahmad Yani No. 6, Palembang', 6),
(7, 'staff1', 'staff123', 'Gilang', 'Putra', '081234567896', 'Jl. Pemuda No. 7, Makassar', 7),
(8, 'warehouse1', 'ware123', 'Hendra', 'Wijaya', '081234567897', 'Jl. Sisingamangaraja No. 8, Yogyakarta', 8),
(9, 'marketing1', 'mark123', 'Irfan', 'Hakim', '081234567898', 'Jl. Asia Afrika No. 9, Semarang', 9),
(10, 'user1', 'user123', 'Joko', 'Prasetyo', '081234567899', 'Jl. Kaliurang No. 10, Tangerang', 10);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `IdPenjualan` int(11) NOT NULL,
  `JumlahPenjualan` int(11) DEFAULT NULL,
  `HargaJual` double DEFAULT NULL,
  `IdPengguna` int(11) DEFAULT NULL,
  `IdBarang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`IdPenjualan`, `JumlahPenjualan`, `HargaJual`, `IdPengguna`, `IdBarang`) VALUES
(36, 30, 9000000, 1, 15),
(37, 50, 60000, 2, 16),
(38, 35, 120000, 3, 17),
(39, 50, 150000, 4, 18),
(40, 30, 200000, 5, 19),
(41, 40, 150000, 6, 20),
(42, 60, 50000, 7, 21),
(43, 20, 400000, 8, 22),
(44, 45, 5000000, 9, 23),
(45, 20, 7000000, 10, 24);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `IdSupplier` int(11) NOT NULL,
  `NamaSupplier` varchar(100) NOT NULL,
  `NoHP` varchar(15) DEFAULT NULL,
  `IdPengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`IdBarang`),
  ADD KEY `FKPenggunaBarang` (`IdPengguna`);

--
-- Indexes for table `hakAkses`
--
ALTER TABLE `hakAkses`
  ADD PRIMARY KEY (`IdAkses`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`IdPelanggan`),
  ADD KEY `FKPelangganPengguna` (`IdPengguna`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`IdPembelian`),
  ADD KEY `FKPenggunaPembelian` (`IdPengguna`),
  ADD KEY `FKPembelianBarang` (`IdBarang`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`IdPengguna`),
  ADD KEY `FKAkses` (`IdAkses`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`IdPenjualan`),
  ADD KEY `FKPenggunaPenjualan` (`IdPengguna`),
  ADD KEY `FKPenjualanBarang` (`IdBarang`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`IdSupplier`),
  ADD KEY `FKSupplierPengguna` (`IdPengguna`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `IdBarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `hakAkses`
--
ALTER TABLE `hakAkses`
  MODIFY `IdAkses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `IdPelanggan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `IdPembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `IdPengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `IdPenjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `IdSupplier` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `FKPenggunaBarang` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`);

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `FKPelangganPengguna` FOREIGN KEY (`IdPengguna`) REFERENCES `Pengguna` (`IdPengguna`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `FKPembelianBarang` FOREIGN KEY (`IdBarang`) REFERENCES `barang` (`IdBarang`),
  ADD CONSTRAINT `FKPenggunaPembelian` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`);

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `FKAkses` FOREIGN KEY (`IdAkses`) REFERENCES `hakAkses` (`IdAkses`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `FKPenggunaPenjualan` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`),
  ADD CONSTRAINT `FKPenjualanBarang` FOREIGN KEY (`IdBarang`) REFERENCES `barang` (`IdBarang`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `FKPengguna` FOREIGN KEY (`IdPengguna`) REFERENCES `Pengguna` (`IdPengguna`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
