-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 03:57 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusperpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` int(11) NOT NULL,
  `ISBN` varchar(50) DEFAULT NULL,
  `judul_buku` varchar(255) DEFAULT NULL,
  `pengarang_buku` varchar(255) DEFAULT NULL,
  `penerbit_buku` varchar(255) DEFAULT NULL,
  `tahun_buku` varchar(255) DEFAULT NULL,
  `subjek_buku` varchar(255) DEFAULT NULL,
  `edisi_buku` varchar(100) NOT NULL,
  `stok_buku` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `ISBN`, `judul_buku`, `pengarang_buku`, `penerbit_buku`, `tahun_buku`, `subjek_buku`, `edisi_buku`, `stok_buku`) VALUES
(1, '978-602-03-2478-4', 'Hujan', 'Tere Liye', 'Jakarta : Gramedia Pustaka Utama', '2016', 'Fiksi Indonesia', 'cet. 20', 100),
(2, '978-602-03-3161-4', 'Kau, aku, dan sepucuk angpau merah', ' Tere Liye', 'Jakarta: Kompas Gramedia', '2016', 'Fiksi Indonesia', 'cet. 14', 100),
(3, '979-3210-60-5', 'Hafalan shalat Delisa', 'Tere-Liye', 'Jakarta : Republika', '2007', 'Fiksi Indonesia', '-', 50),
(4, '0-85345-468-X', 'Dependent accumulation and underdevelopment', 'Andre Gunder Frank', 'New York : Monthly Review Press', '2010', 'Keadaan ekonomi', '3', 4),
(5, '978-602-5493-64-5', 'Goresan ombak selayar : kumpulan puisi', 'Andre Suardi Piongdjongi', 'Watampone: Syahadah Creative Media', '2018', 'Puisi Indonesia', '2', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peminjaman`
--

CREATE TABLE `tbl_peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `tgl_peminjaman` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_peminjaman`
--

INSERT INTO `tbl_peminjaman` (`id_peminjaman`, `id_user`, `id_buku`, `tgl_peminjaman`) VALUES
(1, 2, 2, '12-10-2020'),
(2, 1, 1, '12-4-2021'),
(3, 5, 5, '21-10-2018'),
(4, 6, 4, '01-10-2019');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_petugas`
--

CREATE TABLE `tbl_petugas` (
  `id_petugas` int(11) NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  `alamat_petugas` varchar(255) DEFAULT NULL,
  `foto_petugas` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_petugas`
--

INSERT INTO `tbl_petugas` (`id_petugas`, `nip`, `nama_petugas`, `alamat_petugas`, `foto_petugas`) VALUES
(1, '11011', 'Exca', 'jl. mulu jadian kaga 7', 'foto1.jpg'),
(3, '09876', 'gararar', 'jl. yang lurus', '09876.png'),
(5, '02928', 'Depa', 'Jl. doang ga baper', '02928.png'),
(6, '09237', 'Fanday', 'Jl. Kok sendiri 2', '09237.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nim` varchar(11) DEFAULT NULL,
  `nama_user` varchar(252) DEFAULT NULL,
  `nomor_user` varchar(252) DEFAULT NULL,
  `alamat_user` varchar(252) DEFAULT NULL,
  `fakultas_user` varchar(252) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nim`, `nama_user`, `nomor_user`, `alamat_user`, `fakultas_user`) VALUES
(1, 'M3119036', 'Exca Muchlis Andita', '081222222222', 'jl. yang mana?', 'Fakultas Kedokteran Gigi Hewan'),
(2, 'M3119013', 'Ardell', '08219293123', 'jl. jalan yuk', 'Fakultas Peternakan Lele'),
(3, 'M3119000', 'Erling Halland', '02193832983', 'pinggir Stadion', 'Fakultas Kebidanan Hewan'),
(5, 'H29130121', 'Hotman Paris', '021838123212', 'jl. menuju kebenaran', 'Fakultas Hukum Alam'),
(6, 'J8231232', 'Hakim Ziyech', '021371929312', 'Jl. yang salah', 'Fakultas Teknik Akupuntur'),
(7, 'F9310231', 'Drogba', '02193198321', 'jl. maju mundur 21', 'Fakultas Teknik Mengarsir');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Exca Muchlis Andita', 'excamuchlisandita@gmail.com', NULL, '$2y$10$yVyfTOvp.6BSSNz.OG3FVOJR47N33VzoWudEurQ9zOZMbxXCZFRUm', NULL, '2021-06-24 00:13:55', '2021-06-24 00:13:55'),
(2, 'admin', 'apaya@gmail.com', NULL, '$2y$10$3HhDsDwhp3JRn97CipQqLe6r16KkmPZgmLkLRcmgkyr698ojXrDDG', NULL, '2021-06-24 00:58:14', '2021-06-24 00:58:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `tbl_petugas`
--
ALTER TABLE `tbl_petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_petugas`
--
ALTER TABLE `tbl_petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
