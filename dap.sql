-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Bulan Mei 2022 pada 16.50
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dap`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bulan_pembayaran`
--

CREATE TABLE `bulan_pembayaran` (
  `id_bulan_pembayaran` int(11) NOT NULL,
  `nama_bulan` enum('januari','februari','maret','april','mei','juni','juli','agustus','september','oktober','november','desember') NOT NULL,
  `tahun` int(4) NOT NULL,
  `pembayaran_perminggu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bulan_pembayaran`
--

INSERT INTO `bulan_pembayaran` (`id_bulan_pembayaran`, `nama_bulan`, `tahun`, `pembayaran_perminggu`) VALUES
(1, 'januari', 2022, 30000),
(2, 'februari', 2022, 30000);
(3, 'maret', 2022, 30000);
(4, 'april', 2022, 30000);
(5, 'mei', 2022, 30000);
(6, 'juni', 2022, 30000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'administrator'),
(2, 'dosen'),
(3, 'mahasiswi');
(4, 'mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendapatan`
--

CREATE TABLE `pendapatan` (
  `id_pendapatan` int(11) NOT NULL,
  `jumlah_pendapatan` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_pendapatan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendapatan`
--

INSERT INTO `pendapatan` (`id_pendapatan`, `jumlah_pendapatan`, `keterangan`, `tanggal_pendapatan`, `id_user`) VALUES
(1, 360000, 'DAP Bulan January', 01012022, 1),
(2, 360000, 'DAP Bulan February', 01022022, 1);
(3, 360000, 'DAP Bulan Maret', 01032022, 1);
(4, 360000, 'DAP Bulan April', 01042022, 1);
(5, 360000, 'DAP Bulan Mei', 01052022, 1);
(6, 360000, 'DAP Bulan Juni', 01062022, 1);

-- --------------------------------------------------------

-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `jumlah_pengeluaran` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `jumlah_pengeluaran`, `keterangan`, `tanggal_pengeluaran`, `id_user`) VALUES
(1, 100000, 'Santunan Kedukaan Karyawan', 30052022, 1),
(2, 100000, 'Bantuan Berobat', 30052022, 1);
(3, 100000, 'Pernikahan', 01062022, 1);
(4, 100000, 'Santunan Kelahiran Anak', 01062022, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_uang_kas` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_user`, `id_uang_kas`, `aksi`, `tanggal`) VALUES
-- pembayaran Januari
(1, 1, 2, 'telah menambah pembayaran minggu ke-1 Rp. 30,000', 1611256476),
(2, 1, 2, 'telah menambah pembayaran minggu ke-2 Rp. 30,000', 1611256479),
(3, 1, 2, 'telah menambah pembayaran minggu ke-3 Rp. 30,000', 1611256484),
(4, 1, 2, 'telah menambah pembayaran minggu ke-4 Rp. 30,000', 1611256488),
-- pembayaran Februari
(5, 1, 1, 'telah menambah pembayaran minggu ke-1 Rp. 30,000', 1611256492),
(6, 1, 1, 'telah menambah pembayaran minggu ke-2 Rp. 30,000', 1611256495),
(7, 1, 1, 'telah menambah pembayaran minggu ke-3 Rp. 30,000', 1611256500),
(8, 1, 1, 'telah menambah pembayaran minggu ke-4 Rp. 30,000', 1611256504),
-- pembayaran Maret
(9, 1, 3, 'telah menambah pembayaran minggu ke-1 Rp. 30,000', 1611256508),
(10, 1, 3, 'telah menambah pembayaran minggu ke-2 Rp. 30,000', 1611256512),
(11, 1, 4, 'telah menambah pembayaran minggu ke-3 Rp. 30,000', 1611256518),
(12, 1, 4, 'telah menambah pembayaran minggu ke-4 Rp. 30,000', 1611256526),
-- pembayaran April
(13, 1, 5, 'telah menambah pembayaran minggu ke-1 Rp. 30,000', 1611256530),
(14, 1, 5, 'telah menambah pembayaran minggu ke-2 Rp. 30,000', 1611256534),
(15, 1, 2, 'telah menambah pembayaran minggu ke-3 Rp. 30,000', 1611257026),
(16, 1, 2, 'telah menambah pembayaran minggu ke-4 Rp. 30,000', 1652453172),
-- pembayaran Mei
(17, 1, 3, 'telah menambah pembayaran minggu ke-1 Rp. 30,000', 1652453181),
(18, 1, 3, 'telah menambah pembayaran minggu ke-2 Rp. 30,000', 1652453187),
(19, 1, 4, 'telah menambah pembayaran minggu ke-3 Rp. 30,000', 1652453192),
(20, 1, 4, 'telah menambah pembayaran minggu ke-4 Rp. 30,000', 1652453196),
-- pembayaran Juni
(21, 1, 4, 'telah menambah pembayaran minggu ke-1 Rp. 30,000', 1652453201),
(22, 1, 5, 'telah menambah pembayaran minggu ke-2 Rp. 30,000', 1652453205),
(23, 1, 5, 'telah menambah pembayaran minggu ke-3 Rp. 30,000', 1652453209),
(24, 1, 11, 'telah menambah pembayaran minggu ke-4 Rp. 30,000', 1652453353),

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_pengeluaran`
--

CREATE TABLE `riwayat_pengeluaran` (
  `id_riwayat_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `riwayat_pengeluaran`
--

INSERT INTO `riwayat_pengeluaran` (`id_riwayat_pengeluaran`, `id_user`, `aksi`, `tanggal`) VALUES
(1, 1, 'telah menambahkan pengeluaran Santunan Kedukaan Karyawan Rp. 100,000', 1611256576),
(2, 1, 'telah menambahkan pengeluaran Bantuan Berobat Rp. 100,000', 1611256589),
(3, 1, 'telah menambahkan pengeluaran Pernikahan Rp. 100,000', 1611256595),
(4, 1, 'telah menambahkan pengeluaran Santunan Kelahiran Anak Rp. 100,000', 1611256599);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `no_telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `jenis_kelamin`, `no_telepon`, `email`) VALUES
(1, 'Christian Fernando', 'pria', '087808675313', 'ctian123@gmail.com'),
(2, 'Vany Yolanda', 'wanita', '085753152511', 'vany123@gmail.com'),
(3, 'Asni Delvi', 'wanita', '089612351520', 'asni123@gmail.com'),
(4, 'M Assad', 'pria', '085712526395', 'assad123@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `uang_kas`
--

CREATE TABLE `uang_kas` (
  `id_uang_kas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_bulan_pembayaran` int(11) NOT NULL,
  `minggu_ke_1` int(11) DEFAULT NULL,
  `minggu_ke_2` int(11) DEFAULT NULL,
  `minggu_ke_3` int(11) DEFAULT NULL,
  `minggu_ke_4` int(11) DEFAULT NULL,
  `status_lunas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `uang_kas`
--

INSERT INTO `uang_kas` (`id_uang_kas`, `id_siswa`, `id_bulan_pembayaran`, `minggu_ke_1`, `minggu_ke_2`, `minggu_ke_3`, `minggu_ke_4`, `status_lunas`) VALUES
-- Pembayaran Januari
(1, 1, 1, 30000, 30000, 30000, 30000, 1),
(2, 2, 1, 30000, 30000, 30000, 30000, 1),
(3, 3, 1, 30000, 30000, 30000, 30000, 1),
(4, 4, 1, 30000, 30000, 30000, 30000, 1),
-- Pembayaran Februari
(5, 1, 2, 30000, 30000, 30000, 30000, 1),
(6, 2, 2, 30000, 30000, 30000, 30000, 1),
(7, 3, 2, 30000, 30000, 30000, 30000, 1),
(8, 4, 2, 30000, 30000, 30000, 30000, 1),
-- Pembayaran Maret
(9, 1, 3, 30000, 30000, 30000, 30000, 1),
(10, 2, 3, 30000, 30000, 30000, 30000, 1),
(11, 3, 3, 30000, 30000, 30000, 30000, 1),
(12, 4, 3, 30000, 30000, 30000, 30000, 1),
-- Pembayaran April
(13, 1, 4, 30000, 30000, 30000, 30000, 1),
(14, 2, 4, 30000, 30000, 30000, 30000, 1),
(15, 3, 4, 30000, 30000, 30000, 30000, 1),
(16, 4, 4, 30000, 30000, 30000, 30000, 1),
-- Pembayaran Mei
(17, 1, 5, 30000, 30000, 30000, 30000, 1),
(18, 2, 5, 30000, 30000, 30000, 30000, 1),
(19, 3, 5, 30000, 30000, 30000, 30000, 1),
(20, 4, 5, 30000, 30000, 30000, 30000, 1),
-- Pembayaran Juni
(21, 1, 6, 30000, 30000, 30000, 30000, 1),
(22, 2, 6, 30000, 30000, 30000, 30000, 1),
(23, 3, 6, 30000, 30000, 30000, 30000, 1),
(24, 4, 6, 30000, 30000, 30000, 30000, 1);
-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_jabatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_jabatan`) VALUES
(1, 'Christian', 'chris123', '$2y$10$RtlG8gY2cp/2BYEeMBJ2C.tMli1qvWGCoT/jkKIZVNrRJ/4cGbbTm', 1),
(2, 'Vani', 'vany123', '$2y$10$fdeYDCtDbXiGEQGLtbiAgOjZe240BbZJfVZK.61cItcJ/VZqO.f4.', 2),
(3, 'asni', 'asni123', '$2y$10$1G9mvmbcbdwjdqCb1EuG5OGAYNhPa1aOmlmd2yS2/Yz.A3HRS/u5u', 3);
(4, 'assad', 'assad123', '', 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  ADD PRIMARY KEY (`id_bulan_pembayaran`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_uang_kas` (`id_uang_kas`);

--
-- Indeks untuk tabel `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  ADD PRIMARY KEY (`id_riwayat_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `uang_kas`
--
ALTER TABLE `uang_kas`
  ADD PRIMARY KEY (`id_uang_kas`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_bulan_pembayaran` (`id_bulan_pembayaran`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  MODIFY `id_bulan_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  MODIFY `id_riwayat_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `uang_kas`
--
ALTER TABLE `uang_kas`
  MODIFY `id_uang_kas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
