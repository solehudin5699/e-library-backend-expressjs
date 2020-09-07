-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2020 at 03:58 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `synopsis` varchar(1000) NOT NULL,
  `release_year` varchar(255) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `books_qty` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `synopsis`, `release_year`, `genre_id`, `image`, `added_at`, `books_qty`) VALUES
(73, 'Buku tamu', 'Syafiq Zakin', 'Tamu kerap datang dan mengetuk pintu rumah.\nDipersilakan masuk dengan ramah. Berharap menetap selamanya, padahal hanya singgah sementara.\n\nTamu kerap datang dan duduk di ruang tamu.\nTak rela membuatnya menunggu seperti di ruang tunggu, juga tak rela menahannya seperti di ruang tahanan, apalagi senantiasa menantinya dan berharap masuk ke ruang hati.\n\nKamu sebagai tuan rumah bisa memilih, menyediakan dia secangkir kopi agar bisa singgah sebentar atau menyediakan dia secangkir hati dan siap terlukai?', 'September - 2019', 4, 'http://localhost:2300/images/1599405361980-113364_f.jpg.jpg', '2020-09-06 15:16:01', 5),
(74, 'Geez', 'Rintik Sedu, Helloditta', 'Anna, kamu hanya seorang perempuan yang baru kutemui beberapa menit saja, tapi sebagian besar dari diriku sudah berhasil kamu curi.\n\nKamu berbeda, dan hal itu akan selalu jadi jawaban untuk setiap pertanyaan, termasuk kenapa aku menyayangimu. Aku hanya ingin membuatmu bahagia.\n\nKalau ternyata hasilnya tidak seperti yang kuperkirakan,\n\nberarti itu bukan rencanaku, Ann.\n\nBuku Rahasia Geez adalah ungkapan kejujuran Geez sejak awal mengenal Ann--perempuan yang ditemui di acara pensi sekolah, yang sangat ingin memiliki rumah pohon dengan teropong bintang. Bukan hanya tulisan, di buku ini juga terdapat ilustrasi manis yang akan membuatmu mengerti perasaan Geez kepada Ann. Bersiaplah untuk jatuh hati kepada Dewa Kejutan yang membuat Ann susah move on.', 'September - 2018', 4, 'http://localhost:2300/images/1599405465312-Buku-Rahasia-Geez.jpg.jpg', '2020-09-06 16:09:41', 4),
(75, 'Ayat-ayat cinta 2', 'Habiburrahman El Shirazy', 'Ann, kamu hanya seorang perempuan yang baru kutemui beberapa menit saja, tapi sebagian besar dari diriku sudah berhasil kamu curi.\n\nKamu berbeda, dan hal itu akan selalu jadi jawaban untuk setiap pertanyaan, termasuk kenapa aku menyayangimu. Aku hanya ingin membuatmu bahagia.\n\nKalau ternyata hasilnya tidak seperti yang kuperkirakan,\n\nberarti itu bukan rencanaku, Ann.\n\nBuku Rahasia Geez adalah ungkapan kejujuran Geez sejak awal mengenal Ann--perempuan yang ditemui di acara pensi sekolah, yang sangat ingin memiliki rumah pohon dengan teropong bintang. Bukan hanya tulisan, di buku ini juga terdapat ilustrasi manis yang akan membuatmu mAyat Ayat Cinta 2 ini adalah karya sastra racikan Kang Abik yang mengejutkan. Lebih bcrani dan dinamis. Tapi tetap sarat makna dan pesan.\n- Melly Goeslaw, Musisi Indonesia.\n\nJika Sutarji Calzoum Bahri selalu menyihir dengan puisi-puisi mantranya, maka Habiburrahman El Shirazy selalu menyihir dengan novel-novel pembangun jiwanya. Sungguh, Ayat Ayat Cinta 2 in', 'Desember - 2017', 4, 'http://localhost:2300/images/1599405559276-Buku_Novel_Ayat_Ayat_Cinta_2_Cover_Terbaru.jpg.jpg', '2020-09-06 15:19:19', 5),
(76, 'Suster apung', 'ARFAN SABRAN', 'Begitu banyak hal menakjubkan yang terjadi dalam masa kecil para anggota Laskar Pelangi. Sebelas orang anak Melayu Belitong yang luar biasa ini tak menyerah walau keadaan tak bersimpati pada mereka. Tengoklah Lintang, seorang kuli kopra cilik yang genius dan dengan senang hati bersepeda 80 kilometer pulang pergi untuk memuaskan dahaganya akan ilmubahkan terkadang hanya untuk menyanyikan Padamu Negeri di akhir jam sekolah. Atau Mahar, seorang pesuruh tukang parut kelapa sekaligus seniman dadakan yang imajinatif, tak logis, kreatif, dan sering diremehkan sahabat-sahabatnya, namun berhasil mengangkat derajat sekolah kampung mereka dalam karnaval 17 Agustus. Dan juga sembilan orang Laskar Pelangi lain yang begitu bersemangat dalam menjalani hidup dan berjuang meraih cita-cita. Selami ironisnya kehidupan mereka, kejujuran pemikiran mereka, indahnya petualangan mereka, dan temukan diri Anda tertawa, menangis, dan tersentuh saat membaca setiap lembarnya. Buku ini dipersembahkan buat mereka y', 'November - 2019', 5, 'http://localhost:2300/images/1599405625029-suster-apung-01.png.png', '2020-09-06 16:09:19', 5),
(79, 'LASKAR PELANGI : ORIGINAL STORY', 'Andrea Hirata', 'laskar pelangi yaaa', 'Februari - 2020', 4, 'http://localhost:2300/images/1599406968012-1903555_583d7b58-0c6a-47e7-94b2-a7f294272c75_581_581.jpg.jpg', '2020-09-07 00:00:22', 0),
(81, 'Pramodya', 'unknown', 'dsds', '2020', 2, 'http://localhost:2300/images/1599440987168-Rumah-Kaca.jpg.jpg', '2020-09-07 01:33:43', 0);

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_books`
--

CREATE TABLE `borrowed_books` (
  `id` int(11) NOT NULL,
  `books_id` int(11) NOT NULL,
  `borrow_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `duration` int(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre`) VALUES
(1, 'Religion'),
(2, 'Biography'),
(3, 'History'),
(4, 'Novel'),
(5, 'Comic'),
(6, 'scientific');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `books_id` int(11) NOT NULL,
  `borrow_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `duration` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `level_id`, `fullname`, `avatar`) VALUES
(1, 'markus', 'markus.kambing@gmail.com', 'kambing123', 1, 'markusudin', ''),
(2, 'kambing', 'kambingtes@gmail.com', '$2b$10$txC1i24viZw6xVeNJXoh8OuDyZ6iwQtOUvLyCstp4oa5SDxoIWlmS', 2, 'kambingkambing', ''),
(3, 'domba', 'kambingtes@gmail.com', '$2b$10$/HK6EH4zyuXLjARBnMCIVeZpUcor1gicYmL4Fqtm.Zz3IRZMqQVvO', 2, 'kambingkambing', 'http://localhost:3000/images/1599053307061-usaha-kecil-dititip-di-warung.jpg.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
