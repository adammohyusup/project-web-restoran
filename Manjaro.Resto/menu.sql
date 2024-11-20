-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jan 2024 pada 15.01
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_order`
--

CREATE TABLE `detail_order` (
  `no_pesan` char(12) NOT NULL,
  `kode_makanan` char(12) NOT NULL,
  `jumlah_order` int(10) NOT NULL,
  `subtotal_order` double NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_order_keluar`
--

CREATE TABLE `detail_order_keluar` (
  `kode_makanan` char(8) NOT NULL,
  `nama_makanan` varchar(25) NOT NULL,
  `harga_makanan` double NOT NULL,
  `jumlah_keluar` int(10) NOT NULL,
  `subtotal_keluar` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_order_masuk`
--

CREATE TABLE `detail_order_masuk` (
  `no_masuk` char(12) NOT NULL,
  `kode_makanan` char(12) NOT NULL,
  `jumlah_masuk` int(10) NOT NULL,
  `subtotal_masuk` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan`
--

CREATE TABLE `makanan` (
  `nasi_campur` int(10) NOT NULL,
  `gado_gado` int(10) NOT NULL,
  `gudeg` int(10) NOT NULL,
  `pempek` int(10) NOT NULL,
  `bakso` int(10) NOT NULL,
  `martabak` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `makanan`
--

INSERT INTO `makanan` (`nasi_campur`, `gado_gado`, `gudeg`, `pempek`, `bakso`, `martabak`) VALUES
(15000, 15000, 25000, 15000, 10000, 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `minuman`
--

CREATE TABLE `minuman` (
  `es_cendol` int(10) NOT NULL,
  `es_sbw` int(10) NOT NULL,
  `es_kuwut` int(10) NOT NULL,
  `es_goyobod` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `minuman`
--

INSERT INTO `minuman` (`es_cendol`, `es_sbw`, `es_kuwut`, `es_goyobod`) VALUES
(13000, 12000, 12000, 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_keluar`
--

CREATE TABLE `order_keluar` (
  `no_keluar` char(12) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `total_keluar` double NOT NULL,
  `id_user` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_masuk`
--

CREATE TABLE `order_masuk` (
  `no_masuk` char(12) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `total_masuk` double NOT NULL,
  `id_user` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_user`
--

CREATE TABLE `order_user` (
  `username` varchar(25) NOT NULL,
  `old` int(10) NOT NULL,
  `number-phone` int(15) NOT NULL,
  `address` text NOT NULL,
  `additional_food` varchar(20) NOT NULL,
  `jumlah_order` int(10) NOT NULL,
  `date_time` date NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sementara_pesan`
--

CREATE TABLE `sementara_pesan` (
  `kode_makanan` char(8) NOT NULL,
  `nama_makanan` varchar(20) NOT NULL,
  `harga_makanan` double NOT NULL,
  `jumlah_pesan` int(10) NOT NULL,
  `subtotal` double NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `snacks`
--

CREATE TABLE `snacks` (
  `cireng_br` int(10) NOT NULL,
  `tahu_cg` int(10) NOT NULL,
  `kue_cubit` int(10) NOT NULL,
  `batagor` int(10) NOT NULL,
  `cilok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `snacks`
--

INSERT INTO `snacks` (`cireng_br`, `tahu_cg`, `kue_cubit`, `batagor`, `cilok`) VALUES
(20000, 20000, 15000, 12000, 11000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
