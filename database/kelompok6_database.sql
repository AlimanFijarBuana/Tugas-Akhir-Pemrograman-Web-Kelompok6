-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2024 pada 04.43
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelompok6_database`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-03-28 23:34:07'),
(2, 'aliman fijar', '21232f297a57a5a743894a0e4a801fc3', '2024-01-04 17:33:57'),
(3, 'agung nabawi', '21232f297a57a5a743894a0e4a801fc3', '2018-03-28 23:34:07'),
(4, 'hikmatul zulfa', '21232f297a57a5a743894a0e4a801fc3', '2018-03-28 23:34:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `kode_booking` varchar(8) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `driver` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pickup` varchar(30) NOT NULL,
  `tgl_booking` date NOT NULL,
  `bukti_bayar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`kode_booking`, `id_mobil`, `tgl_mulai`, `tgl_selesai`, `durasi`, `driver`, `status`, `email`, `pickup`, `tgl_booking`, `bukti_bayar`) VALUES
('TRX00000', 10, '2024-01-05', '2024-01-06', 2, 900000, 'Selesai', 'robypurba@gmail.com', 'Ambil Sendiri', '2024-01-04', '0401202423354207092022080027id (1).png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cek_booking`
--

CREATE TABLE `cek_booking` (
  `kode_booking` varchar(8) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tgl_booking` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cek_booking`
--

INSERT INTO `cek_booking` (`kode_booking`, `id_mobil`, `tgl_booking`, `status`) VALUES
('TRX00001', 8, '2019-05-26', 'Sudah Dibayar'),
('TRX00002', 9, '2019-05-26', 'Menunggu Pembayaran'),
('TRX00002', 9, '2019-05-27', 'Menunggu Pembayaran'),
('TRX00000', 11, '2022-09-08', 'Selesai'),
('TRX00000', 11, '2022-09-09', 'Selesai'),
('TRX00000', 11, '2024-01-05', 'Selesai'),
('TRX00000', 11, '2024-01-06', 'Selesai'),
('TRX00000', 12, '2024-01-05', 'Selesai'),
('TRX00000', 12, '2024-01-06', 'Selesai'),
('TRX00000', 12, '2024-01-05', 'Selesai'),
('TRX00000', 12, '2024-01-06', 'Selesai'),
('TRX00000', 10, '2024-01-05', 'Selesai'),
('TRX00000', 10, '2024-01-06', 'Selesai'),
('TRX00001', 10, '2024-01-12', 'Menunggu Pembayaran'),
('TRX00001', 10, '2024-01-13', 'Menunggu Pembayaran'),
('TRX00002', 11, '2024-01-20', 'Menunggu Pembayaran'),
('TRX00002', 11, '2024-01-21', 'Menunggu Pembayaran'),
('TRX00002', 11, '2024-01-22', 'Menunggu Pembayaran'),
('TRX00002', 11, '2024-01-23', 'Menunggu Pembayaran'),
('TRX00002', 11, '2024-01-24', 'Menunggu Pembayaran'),
('TRX00002', 11, '2024-01-25', 'Menunggu Pembayaran'),
('TRX00003', 10, '2024-02-06', 'Menunggu Pembayaran'),
('TRX00003', 10, '2024-02-07', 'Menunggu Pembayaran'),
('TRX00004', 12, '2024-01-19', 'Menunggu Pembayaran'),
('TRX00004', 12, '2024-01-20', 'Menunggu Pembayaran'),
('TRX00005', 12, '2024-01-12', 'Menunggu Pembayaran'),
('TRX00005', 12, '2024-01-13', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-06', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-07', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-08', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-09', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-10', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-11', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-12', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-13', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-14', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-15', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-16', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-17', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-18', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-19', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-20', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-21', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-22', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-23', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-24', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-25', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-26', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-27', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-28', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-29', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-30', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-03-31', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-01', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-02', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-03', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-04', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-05', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-06', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-07', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-08', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-09', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-10', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-11', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-12', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-13', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-14', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-15', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-16', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-17', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-18', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-19', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-20', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-21', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-22', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-23', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-24', 'Menunggu Pembayaran'),
('TRX00006', 12, '2024-04-25', 'Menunggu Pembayaran'),
('TRX00007', 10, '2024-02-15', 'Menunggu Pembayaran'),
('TRX00007', 10, '2024-02-16', 'Menunggu Pembayaran'),
('TRX00008', 11, '2024-03-01', 'Menunggu Pembayaran'),
('TRX00008', 11, '2024-03-02', 'Menunggu Pembayaran'),
('TRX00001', 10, '2024-01-15', 'Menunggu Pembayaran'),
('TRX00001', 10, '2024-01-16', 'Menunggu Pembayaran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactus`
--

CREATE TABLE `contactus` (
  `id_cu` int(11) NOT NULL,
  `nama_visit` varchar(100) DEFAULT NULL,
  `email_visit` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `pesan` longtext DEFAULT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactusinfo`
--

CREATE TABLE `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext DEFAULT NULL,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`) VALUES
(1, 'Jl. Inspeksi Kalimalang No.9, Cibatu, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17530\r\n', 'rentalmobil@gmail.com', '08512222333');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merek`
--

CREATE TABLE `merek` (
  `id_merek` int(11) NOT NULL,
  `nama_merek` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `merek`
--

INSERT INTO `merek` (`id_merek`, `nama_merek`, `CreationDate`, `UpdationDate`) VALUES
(14, 'Honda', '2019-06-07 18:05:23', NULL),
(15, 'MercedesBenz', '2019-06-07 18:29:46', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `nama_mobil` varchar(150) DEFAULT NULL,
  `id_merek` int(11) DEFAULT NULL,
  `nopol` varchar(20) NOT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `bb` varchar(100) DEFAULT NULL,
  `tahun` int(6) DEFAULT NULL,
  `seating` int(11) DEFAULT NULL,
  `image1` varchar(120) DEFAULT NULL,
  `image2` varchar(120) DEFAULT NULL,
  `image3` varchar(120) DEFAULT NULL,
  `image4` varchar(120) DEFAULT NULL,
  `image5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `nama_mobil`, `id_merek`, `nopol`, `deskripsi`, `harga`, `bb`, `tahun`, `seating`, `image1`, `image2`, `image3`, `image4`, `image5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(10, 'hondafreed', 14, 'B 7730 NSP', 'Honda Freed 1500 cc transmision automatic seating capacity 6', 450000, 'Bensin', 2012, 6, 'Honda-Freed-front.jpg', 'Honda-Freed-front.jpg', 'Honda-Freed-Interior.jpg', 'Honda-Freed-front.jpg', 'Honda-Freed-Interior.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-06-07 18:09:49', '2019-06-07 18:19:29'),
(11, 'HondaCrv', 14, 'B 9990 RXY', 'Honda CRV Tahun 2011', 1000000, 'Bensin', 2011, 5, 'Honda-CRV-2011-Front.jpg', 'Honda-CRV-2011-Rear.jpg', 'Honda-CRV-2011-Interior.jpg', 'Honda-CRV-2011-Rear.jpg', 'Honda-CRV-2011-Front.jpg', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, '2019-06-07 18:27:37', NULL),
(12, 'MercedesBenzC', 15, 'B 56789 OPX', 'Mercedes Benz C Class 1800 CC', 1850000, 'Bensin', 2012, 5, 'Merci-Cclass-service1.jpg', 'Merci-Cclass-service2.jpg', 'Merci-Cclass-service3.jpg', 'Merci-Cclass-service3.jpg', 'Merci-Cclass-service1.jpg', 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, '2019-06-07 18:32:21', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '											<div style=\"text-align: center;\"><span style=\"font-weight: bold;\">Syarat dan Ketentuan Rental Mobil</span></div><div style=\"text-align: center;\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"text-align: center;\">Mohon untuk membaca dengan seksama sebelum menggunakan layanan rental mobil kami. Dengan menggunakan layanan ini, Anda setuju untuk terikat oleh syarat dan ketentuan yang tercantum di bawah ini:</div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"font-weight: bold;\">Pemilik Mobil:</span></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\">Mobil yang disewakan adalah milik perusahaan rental kami dan tidak boleh digunakan untuk tujuan ilegal atau di luar batasan yang ditentukan.</div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"font-weight: bold;\">Pemilik dan Pengemudi:</span></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\">Hanya pengemudi yang telah diidentifikasi dan disetujui oleh perusahaan rental yang diizinkan untuk mengemudikan mobil.</div><div style=\"text-align: center;\">Pemilik mobil berhak untuk menolak penyewaan kepada siapa pun yang dianggap tidak memenuhi persyaratan perusahaan.</div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"font-weight: bold;\">Pemakaian Mobil:</span></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\">Mobil hanya boleh digunakan untuk keperluan pribadi atau bisnis yang sah dan tidak boleh digunakan untuk tujuan ilegal atau berbahaya.</div><div style=\"text-align: center;\">Penyewa bertanggung jawab penuh atas kerusakan atau kehilangan yang terjadi selama masa penyewaan.</div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"font-weight: bold;\">Tarif dan Pembayaran:</span></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\">Tarif rental dan biaya tambahan harus dibayarkan sesuai dengan kesepakatan yang tercantum dalam perjanjian penyewaan.</div><div style=\"text-align: center;\">Pembayaran dapat dilakukan dengan kartu kredit atau metode pembayaran lain yang diterima oleh perusahaan.</div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"font-weight: bold;\">Pembatalan dan Pengembalian Dini:</span></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\">Pembatalan harus dilakukan setidaknya 24 jam sebelum waktu pengambilan mobil untuk mendapatkan pengembalian uang penuh.</div><div style=\"text-align: center;\">Pengembalian dini tidak memenuhi syarat untuk pengembalian dana tambahan.</div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"font-weight: bold;\">Pemeliharaan dan Perbaikan:</span></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\">Penyewa harus melaporkan segala kerusakan atau masalah teknis dengan mobil segera kepada perusahaan.</div><div style=\"text-align: center;\">Pemeliharaan rutin, seperti perubahan minyak dan perawatan dasar lainnya, adalah tanggung jawab perusahaan rental.</div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"font-weight: bold;\">Bahan Bakar:</span></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\">Mobil harus dikembalikan dengan jumlah bahan bakar yang sama seperti saat pengambilan.</div><div style=\"text-align: center;\">Jika tidak, penyewa akan dikenakan biaya tambahan untuk bahan bakar yang kurang.</div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"font-weight: bold;\">Asuransi:</span></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\">Semua mobil dilengkapi dengan asuransi dasar. Penyewa memiliki opsi untuk memilih tambahan asuransi jika diinginkan.</div><div style=\"text-align: center;\">Klaim asuransi hanya akan diproses jika penyewa melaporkan insiden atau kecelakaan dengan segera.</div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"font-weight: bold;\">Pelanggaran Hukum:</span></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\">Penyewa bertanggung jawab untuk mematuhi semua peraturan lalu lintas dan hukum terkait selama masa penyewaan.</div><div style=\"text-align: center;\">Biaya pelanggaran hukum, termasuk denda dan biaya hukum, menjadi tanggung jawab penyewa.</div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"font-weight: bold;\">Pengembalian Mobil:</span></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\">Mobil harus dikembalikan pada waktu yang telah disepakati. Keterlambatan akan dikenakan biaya tambahan.</div><div style=\"text-align: center;\">Penyewa harus mengembalikan mobil dalam kondisi yang sama seperti saat pengambilan.</div><div style=\"text-align: center;\">Dengan menggunakan layanan rental mobil kami, Anda mengkonfirmasi bahwa Anda telah membaca, memahami, dan menyetujui syarat dan ketentuan ini. Kami berhak untuk mengubah syarat dan ketentuan tanpa pemberitahuan sebelumnya. Terima kasih atas kerjasama Anda.</div>											'),
(5, 'Rekening', 'rekening', '																																												123456789 Bank MANDIRI a/n MR.PELITABANGSA											'),
(0, 'Driver', 'driver', '450000'),
(2, 'Privacy Policy', 'privacy', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\">Kebijakan Privasi dan Keamanan Rental Mobil</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Efektif per 5 Januari 2024</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Selamat datang di layanan RENTAL MOBIL CIKARANG. Kebijakan Privasi dan Keamanan ini menjelaskan bagaimana kami mengumpulkan, menggunakan, dan melindungi informasi pribadi Anda saat Anda menggunakan layanan kami. Mohon baca kebijakan ini dengan seksama.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Informasi yang Kami Kumpulkan:</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Saat Anda mendaftar atau menggunakan layanan kami, kami dapat mengumpulkan informasi pribadi seperti nama, alamat, nomor telepon, alamat email, dan informasi pembayaran.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Penggunaan Informasi:</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Informasi pribadi yang kami kumpulkan digunakan untuk proses penyewaan mobil, verifikasi identitas, komunikasi dengan Anda, dan penyediaan layanan terkait lainnya.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Kami juga dapat menggunakan informasi tersebut untuk meningkatkan kualitas layanan kami, analisis statistik, dan pengembangan produk.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Perlindungan Informasi:</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Kami mengambil langkah-langkah keamanan fisik, elektronik, dan administratif untuk melindungi informasi pribadi Anda dari akses yang tidak sah atau penggunaan yang tidak sah.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Akses ke informasi pribadi dibatasi hanya untuk karyawan yang membutuhkannya untuk melaksanakan tugas mereka.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Pemberian Informasi kepada Pihak Ketiga:</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Kami tidak akan menyewakan, menjual, atau menukar informasi pribadi Anda kepada pihak ketiga tanpa izin Anda, kecuali jika diwajibkan oleh hukum atau dalam rangka melindungi keamanan kami atau hak milik kami.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Cookie dan Teknologi Pelacakan Lainnya:</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Kami dapat menggunakan teknologi seperti cookie untuk mengumpulkan informasi tentang penggunaan layanan kami dan untuk meningkatkan pengalaman pengguna.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Anda dapat mengelola preferensi cookie Anda melalui pengaturan browser Anda.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Perubahan Kebijakan Privasi:</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Kami dapat mengubah kebijakan privasi ini dari waktu ke waktu. Perubahan signifikan akan diinformasikan kepada Anda melalui email atau pengumuman pada situs web kami.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Akses dan Koreksi Informasi Pribadi:</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Anda memiliki hak untuk mengakses dan memperbarui informasi pribadi Anda yang kami simpan. Jika Anda memiliki pertanyaan atau permintaan terkait privasi, silakan hubungi kami.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Persetujuan:</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Dengan menggunakan layanan kami, Anda menyetujui pengumpulan, penggunaan, dan pengungkapan informasi pribadi Anda sesuai dengan kebijakan privasi ini.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Kami berkomitmen untuk melindungi privasi Anda dan terus meningkatkan praktik kami sesuai dengan perkembangan teknologi dan hukum. Mohon untuk menghubungi kami jika Anda memiliki pertanyaan atau kekhawatiran terkait kebijakan privasi kami.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Terima kasih atas kepercayaan Anda kepada layanan rental mobil kami.</span></div>'),
(3, 'Tentang Kami', 'aboutus', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">**Tentang Kami: Rental Mobil Cikarang**</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Selamat datang di [Nama Perusahaan], penyedia layanan rental mobil yang berkomitmen untuk memberikan pengalaman berkendara yang nyaman, aman, dan terpercaya. Kami bangga menjadi mitra perjalanan Anda dalam menjelajahi destinasi Anda dengan gaya.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">**Visi Kami:**</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Menjadi penyedia layanan rental mobil terdepan yang dikenal karena keunggulan dalam pelayanan, armada kendaraan berkualitas, dan inovasi dalam industri rental mobil.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">**Misi Kami:**</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1. Menyediakan armada mobil yang terawat dan terbaru, memenuhi kebutuhan dan harapan pelanggan kami.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">2. Memberikan layanan pelanggan yang ramah, profesional, dan responsif untuk memastikan kepuasan pelanggan.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">3. Menerapkan standar keamanan dan kebersihan tertinggi dalam semua aspek operasional kami.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">4. Menghadirkan solusi rental mobil yang fleksibel dan terjangkau untuk berbagai keperluan pelanggan.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">5. Mengintegrasikan teknologi terkini untuk meningkatkan pengalaman pemesanan dan memberikan kemudahan akses informasi kepada pelanggan kami.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">**Keunggulan Kami:**</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1. **Armada Berkualitas:**</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Menyediakan beragam pilihan mobil terbaru dan terawat dengan baik.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Kendaraan yang terus dijaga kebersihan dan kondisinya untuk memastikan keamanan dan kenyamanan perjalanan.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">2. **Layanan Pelanggan Prima:**</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Tim layanan pelanggan yang ramah, profesional, dan siap membantu Anda dalam setiap tahap penyewaan.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">3. **Fleksibilitas Penyewaan:**</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Paket penyewaan yang dapat disesuaikan dengan kebutuhan Anda, baik untuk perjalanan bisnis, liburan, atau acara khusus.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">4. **Inovasi Teknologi:**</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Pemesanan online yang mudah dan cepat melalui situs web atau aplikasi mobile kami.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Pemantauan dan pelacakan armada menggunakan teknologi terkini.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">**Kenapa Memilih Kami:**</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- Kami memberikan prioritas tinggi pada keamanan dan kenyamanan pelanggan.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- Keterbukaan dan transparansi dalam setiap transaksi.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- Harga yang kompetitif dan terjangkau.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- Komitmen terhadap kepuasan pelanggan dan umpan balik yang konstruktif.</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Terima kasih telah memilih Rental Mobil CIkarang sebagai mitra perjalanan Anda. Kami berharap dapat memberikan pengalaman berkendara yang tak terlupakan bagi setiap pelanggan kami.</span></div>'),
(11, 'FAQs', 'faqs', '																																												<div style=\"text-align: justify;\"><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\">**Pertanyaan yang Sering Diajukan (FAQs) - Rental Mobil**</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1. **Bagaimana Cara Melakukan Pemesanan?**</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Untuk melakukan pemesanan, Anda dapat mengunjungi situs web kami atau menghubungi pusat layanan pelanggan kami. Pilih tanggal dan waktu pengambilan, serta jenis mobil yang Anda inginkan, lalu lengkapi proses pemesanan.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">2. **Apa Persyaratan untuk Menyewa Mobil?**</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Untuk menyewa mobil, Anda harus memiliki setidaknya 21 tahun (batasan usia dapat bervariasi) dan memiliki SIM yang berlaku. Beberapa kategori mobil mungkin memerlukan usia minimum yang lebih tinggi.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">3. **Apa yang Termasuk dalam Biaya Sewa?**</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Biaya sewa meliputi biaya dasar penyewaan, asuransi dasar, dan jumlah mil yang diizinkan. Biaya bahan bakar dan biaya tambahan mungkin dikenakan tergantung pada kebijakan penyewaan dan kondisi spesifik.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">4. **Bagaimana Jika Saya Telat Mengembalikan Mobil?**</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Keterlambatan dalam pengembalian mobil dapat dikenakan biaya tambahan. Pastikan untuk memberi tahu kami sebelumnya jika Anda membutuhkan perpanjangan waktu.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">5. **Apakah Asuransi Sudah Termasuk dalam Biaya Sewa?**</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Ya, asuransi dasar sudah termasuk dalam biaya sewa. Namun, opsi asuransi tambahan juga tersedia untuk perlindungan yang lebih komprehensif.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">6. **Bagaimana Cara Pembayaran?**</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Kami menerima pembayaran dengan kartu kredit atau metode pembayaran lain yang diterima oleh perusahaan. Pembayaran harus dilakukan sebelum pengambilan mobil.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">7. **Apakah Saya Bisa Mengganti Mobil Selama Masa Sewa?**</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Ketergantungan pada ketersediaan, penggantian mobil mungkin dimungkinkan. Harap hubungi kami untuk informasi lebih lanjut.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">8. **Bagaimana Jika Mobil Mengalami Masalah Teknis?**</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Hubungi pusat layanan pelanggan kami segera jika Anda mengalami masalah teknis. Kami akan memberikan bantuan atau menggantikan mobil sesuai kebijakan penyewaan.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">9. **Apakah Ada Batasan Jarak Perjalanan?**</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp;- Sebagian besar penyewaan memiliki batasan jarak harian atau total. Pastikan untuk memeriksa persyaratan penyewaan untuk mendapatkan informasi lebih lanjut.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">10. **Bagaimana Jika Saya Perlu Membatalkan Reservasi?**</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp; - Pembatalan dapat dilakukan dengan memberi tahu kami setidaknya 24 jam sebelum waktu pengambilan untuk mendapatkan pengembalian uang penuh. Lihat kebijakan pembatalan kami untuk informasi lebih lanjut.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Jika Anda memiliki pertanyaan tambahan, jangan ragu untuk menghubungi tim layanan pelanggan kami di Nomor Telepon atau Alamat Email. Kami siap membantu Anda!</span></div></div>																																												');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `telp` char(11) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `ktp` varchar(120) NOT NULL,
  `kk` varchar(120) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama_user`, `email`, `password`, `telp`, `alamat`, `ktp`, `kk`, `RegDate`, `UpdationDate`) VALUES
(10, 'ROBY PURBA', 'robypurba@gmail.com', 'c3ec0f7b054e729c5a716c8125839829', '20896423428', 'Jl. Pattimura 1 blok A5 no 2', '0401202415345207092022075619id.png', '0401202415345207092022080027id (1).png', '2024-01-04 14:34:52', NULL),
(11, 'udin', 'udin@gmail.com', 'c3ec0f7b054e729c5a716c8125839829', '08474673424', 'udin@gmail.com', '04012024214259pexels-hyundai-motor-group-11262462.jpg', '04012024214259pexels-hyundai-motor-group-19146408.jpg', '2024-01-04 20:42:59', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`kode_booking`);

--
-- Indeks untuk tabel `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indeks untuk tabel `contactusinfo`
--
ALTER TABLE `contactusinfo`
  ADD PRIMARY KEY (`id_info`);

--
-- Indeks untuk tabel `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`id_merek`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indeks untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `contactusinfo`
--
ALTER TABLE `contactusinfo`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `merek`
--
ALTER TABLE `merek`
  MODIFY `id_merek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
