-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for databasename
CREATE DATABASE IF NOT EXISTS `databasename` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `databasename`;

-- Dumping structure for table databasename.barang
CREATE TABLE IF NOT EXISTS `barang` (
  `barangid` bigint(11) NOT NULL AUTO_INCREMENT,
  `namabrg` varchar(100) NOT NULL,
  `stok` decimal(15,2) NOT NULL,
  PRIMARY KEY (`barangid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table databasename.barang: ~2 rows (approximately)
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` (`barangid`, `namabrg`, `stok`) VALUES
	(1, 'Baju', 10.00),
	(2, 'Celana', 12.00);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;

-- Dumping structure for table databasename.penjorder
CREATE TABLE IF NOT EXISTS `penjorder` (
  `noorder` bigint(11) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL,
  `namacust` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`noorder`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table databasename.penjorder: ~0 rows (approximately)
/*!40000 ALTER TABLE `penjorder` DISABLE KEYS */;
INSERT INTO `penjorder` (`noorder`, `tanggal`, `namacust`) VALUES
	(1, '2022-03-05 13:24:09', 'joko');
/*!40000 ALTER TABLE `penjorder` ENABLE KEYS */;

-- Dumping structure for table databasename.penjorderdet
CREATE TABLE IF NOT EXISTS `penjorderdet` (
  `noorder` bigint(11) NOT NULL,
  `barangid` int(11) NOT NULL,
  `harga` decimal(15,2) NOT NULL,
  `qty` decimal(15,2) NOT NULL,
  PRIMARY KEY (`noorder`,`barangid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table databasename.penjorderdet: ~0 rows (approximately)
/*!40000 ALTER TABLE `penjorderdet` DISABLE KEYS */;
INSERT INTO `penjorderdet` (`noorder`, `barangid`, `harga`, `qty`) VALUES
	(1, 1, 1000.00, 1.00),
	(1, 2, 2000.00, 2.00);
/*!40000 ALTER TABLE `penjorderdet` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
