-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2021 at 03:02 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengadaan2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `token` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama`, `email`, `alamat`, `password`, `status`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@mail.com', 'Jl Alamat', 'eyJpdiI6IjFjZk1HY3k2M3pKVng4SUx2WXNSa3c9PSIsInZhbHVlIjoiQUZRU1g0ckpWMkZqUURuTm0xR3JWc3V1c3ZkYytpRE5pcXpYdTVaYm1uZz0iLCJtYWMiOiI4N2IzYmY5NDAzNDdhMzExMTEyMmJhZGY3ODg3NDAxNTI0OGY3YmUxZjkxZTU5NzkyYWM0OWYzZmExYzY1MmM2In0=', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZF9hZG1pbiI6MX0.wIk0kXA8y_IsisQwfUapMh2fxg_HPkO-TLHlj4njVcI', '2021-08-02 01:25:52', '2021-08-11 18:03:39'),
(6, 'Admin2', 'admin2@mail.com', 'jl. admin2@mail.com', 'eyJpdiI6IlNEV3pmVjRiRHFpQm0zdkh1TFwvWnFnPT0iLCJ2YWx1ZSI6IlVwdzFCN2cxUDNmZDBxcnd6WUFGYXc9PSIsIm1hYyI6IjVhN2VjYWRjMzI0YzkwYWI4MWJhNzZlNjhjYTgyNWY3N2RmMTBlNDRmOTAxNTkyNGU5M2YwNjE1YmRkMzU2MTIifQ==', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZF9hZG1pbiI6Nn0.PfPjWwNc88oza--LDwYjHWPlzI1fJTGpnO_EkRBTrrU', '2021-08-03 21:43:39', '2021-08-18 20:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_laporan`
--

CREATE TABLE `tbl_laporan` (
  `id_laporan` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `id_suplier` int(11) NOT NULL,
  `laporan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengadaan`
--

CREATE TABLE `tbl_pengadaan` (
  `id_pengadaan` int(11) NOT NULL,
  `nama_pengadaan` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` text NOT NULL,
  `anggaran` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengadaan`
--

INSERT INTO `tbl_pengadaan` (`id_pengadaan`, `nama_pengadaan`, `deskripsi`, `gambar`, `anggaran`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Pintu', 'https://peraturan.bpk.go.id/Home/Details/143770/permen-pan-rb-no-13-tahun-2019', 'public/gambar/9hTXxpajcao44hPYCFjpLfb4f4Vqg88oBBFcfsAL.jpg', 3100000, 1, '2021-08-05 18:31:26', '2021-08-08 19:53:00'),
(7, 'Kursi Kayu Manis', 'https://peraturan.bpk.go.id/Home/Details/143770/permen-pan-rb-no-13-tahun-2019', 'public/gambar/6RWrxkAzlw23TzVbzYn7PaNcNVcof3Snb6RARmWQ.png', 1500000, 1, '2021-08-05 18:31:53', '2021-08-08 21:16:22'),
(10, 'jendela', 'https://peraturan.bpk.go.id/Home/Details/143770/permen-pan-rb-no-13-tahun-2019', 'public/gambar/JiRZm2zuadvjfzt5rNeaSeMSsy634BS8059GzPhA.png', 232233332, 1, '2021-08-08 21:23:06', '2021-08-08 21:23:06'),
(11, 'Kramik', 'https://peraturan.bpk.go.id/Home/Details/143770/permen-pan-rb-no-13-tahun-2019', 'public/gambar/X0CORRH8zum9Kkwe18piiTm3w63Z6G5RtE48jIrl.png', 200000, 1, '2021-08-08 21:23:48', '2021-08-08 21:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengajuan`
--

CREATE TABLE `tbl_pengajuan` (
  `id_pengajuan` int(11) NOT NULL,
  `id_suplier` int(11) NOT NULL,
  `id_pengadaan` int(11) NOT NULL,
  `anggaran` double NOT NULL,
  `proposal` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengajuan`
--

INSERT INTO `tbl_pengajuan` (`id_pengajuan`, `id_suplier`, `id_pengadaan`, `anggaran`, `proposal`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 6, 2100000, 'public/proposal/L6GSqOwMBa3jVQLIsDndZOIwwxo9qWjOugVNBtIR.pdf', 2, '2021-08-09 06:51:13', '2021-08-11 18:59:34'),
(2, 2, 7, 1500000, 'public/proposal/J1NnIDyaV1rYyCXwNV8PXSjtFSK5q4Ox1RILCYj9.pdf', 3, '2021-08-09 19:58:09', '2021-08-11 21:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suplier`
--

CREATE TABLE `tbl_suplier` (
  `id_suplier` int(11) NOT NULL,
  `nama_usaha` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_npwp` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 0,
  `token` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_suplier`
--

INSERT INTO `tbl_suplier` (`id_suplier`, `nama_usaha`, `email`, `alamat`, `no_npwp`, `password`, `status`, `token`, `created_at`, `updated_at`) VALUES
(1, 'PT ANGIN RIBUT', 'angin@mail.com', 'jl angin', '687687', 'eyJpdiI6IjVRaFRNTkZYY2pNd25wUTdSNlBEQ3c9PSIsInZhbHVlIjoiellMdFIxckpZOTlQK0NwaGdxd2tWdz09IiwibWFjIjoiNmI5YTJjMWQ4ZmFmODUyNWU0MTk0ZDY4MWFhYzJmNzgyZjBiZGRiZWZkMmIzMDQ3NmM4YTg1YWQxZWE4YmJiZSJ9', 1, 'keluar', '2021-07-28 06:59:52', '2021-08-17 21:39:16'),
(2, 'PT KARAWANG', 'jajang.jaenudin.12.210@gmail.com', 'JL JL. A YANI', '687687', 'eyJpdiI6Im5GdW5EOWtWZURiVzc1Qkk1V2FpVnc9PSIsInZhbHVlIjoiMks1Z0dySHBjSXBVOHJwaHpOWkppdz09IiwibWFjIjoiZTE2N2Y2NjYzZGRlM2ZlMTI0NWVkYTZhYjQyMDdhMTg3YWYxMzA4ZjJjMGE0MTJjMDYzMTE0NWE3Nzc3ZGY0NiJ9', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZF9zdXBsaWVyIjoyfQ.HFrqKsr5Ksl0oCJWiQcbf65PJAHBae3c8BqMp31vqcg', '2021-07-28 07:05:16', '2021-08-18 20:01:50');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_laporan`
--
ALTER TABLE `tbl_laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `tbl_pengadaan`
--
ALTER TABLE `tbl_pengadaan`
  ADD PRIMARY KEY (`id_pengadaan`);

--
-- Indexes for table `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indexes for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  ADD PRIMARY KEY (`id_suplier`);

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
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_laporan`
--
ALTER TABLE `tbl_laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_pengadaan`
--
ALTER TABLE `tbl_pengadaan`
  MODIFY `id_pengadaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  MODIFY `id_suplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
