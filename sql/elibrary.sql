-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Nov 2020 pada 04.21
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elibrary`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
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
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `synopsis`, `release_year`, `genre_id`, `image`, `added_at`, `books_qty`) VALUES
(7, 'Khadijah: Ketika Rahasia Mim Tersingkap', 'Sibel Eraslan', 'Khadijah terpaku. Mulutnya tak mampu mengucapkan kata itu. Sebuah kata yang berawalan huruf \"mim\". Kata itu ternyata mengandung makna yang dalam. Sebuah kata yang diibaratkan sebagai kunci, rumus, dan juga sandi. Khadijah ingin merahasiakannya. Merahasiakan dambaan hatinya, kekasih yang juga sepupunya. Khadijah tidak sendiri. Seluruh makhluk di jagad raya ini seolah telah menjadi seperti dirinya. Merindu, haus akan air segar ‘Mim’. Dan saat Khadijah berucap “mim”, ketika kedua bibirnya menutup rapat, seakan-akan udara yang ada dalam rongga mulutnya telah meniupkan cinta ke dalam hatinya. Cintanya yang teguh kepada seorang lelaki yang kelak menjadi Sang Nabi.', '14 Februari 2014', 4, '/images/1599444700418-khadijah.jpg.jpg', '2020-11-03 03:13:20', 8),
(8, 'Fatimah az-Zahra', 'Sibel Eraslan', 'Seorang penyair berusaha mati-matian mengisahkannya selama 40 hari di depan orang banyak di sebuah alun-alun kota Karbala. Hukuman telah menantinya karena mengaku-ngaku sebagai pengarang Diwan az-Zahra yang sangat terkenal.\nSementara itu, sebuah rombongan haji berangkat dari Karbala menuju Mekah dan Madinah membawa kerinduan pada Tanah Suci dan keluarga Rasulullah . Begitu banyak halangan dan kepedihan menimpa mereka sehingga berhaji laksana menunaikan perang dahsyat yang mempertaruhkan jiwa dan raga.\nDari sinilah semua kisah ini bermula....\nSemuanya berawal dari kerinduan. Kerinduan terhadap sebuah sosok yang luar biasa. Salah satu dari 4 wanita yang dijanjikan surga. Yang kehidupannya sangat bersahaja. Yang gerak-geriknya membuat cemburu semua wanita. Yang tingkah lakunya dipuja semua manusia. Yang menjadi belahan jiwa ayahandanya.\nDialah Fatimah az-Zahra... Sumber keindahan, kebanggaan, dan tanda pengenal yang telah dibentuk Rasulullah  dengan keindahan Alquran dan kemulian ahlak ', '5 Februari 2014', 4, '/images/1599444727131-fatimah.jpg.jpg', '2020-11-03 03:13:40', 10),
(9, 'The Power of Ideas', 'Baharuddin Jusuf Habibie', '“Untuk menjadi manusia jenius. Jagalah kemampuan otak dengan banyak minum air. Saya banyak minum air.” Gagasan, pencerahan, dan kiat inspirasi Habibie telah banyak menginspirasi masyarakat dan bangsa, sekaligus memperlihatkan the power of ideas. Semuanya telah membentuk dan memperkaya peradaban bangsa. Kuncinya terletak pada semua gagasan yang pernah disampaikannya, bukanlah terbatas sebagai orasi dan catatan di atas kertas belaka, tetapi sudah dijalani, ditunjukkan, dan dibuktikannya.', '18 Oktober 2018', 2, '/images/1599227981241-bj-habibi.jpg.jpg', '2020-11-03 03:13:58', 0),
(10, 'Tentang Kamu', 'Tere Liye', 'Terima kasih untuk kesempatan mengenalmu, itu adalah salah satu anugerah terbesar hidupku. Cinta memang tidak perlu ditemukan, cintalah yang akan menemukan kita. Terima kasih. Nasihat lama itu benar sekali, aku tidak akan menangis karena sesuatu telah berakhir, tapi aku akan tersenyum karena sesuatu itu pernah terjadi. Masa lalu. Rasa sakit. Masa depan. Mimpi-mimpi. Semua akan berlalu, seperti sungai yang mengalir. Maka biarlah hidupku mengalir seperti sungai kehidupan.', '27 Oktober 2016', 4, '/images/1599228011043-about-you.jpg.jpg', '2020-11-03 03:14:45', 14),
(11, 'Ayah', 'Andrea Hirata', 'Betapa Sabari menyayangi Zorro. Ingin dia memeluknya sepanjang waktu. Dia terpesona melihat makhluk kecil yang sangat indah dan seluruh kebaikan yang terpancar\ndarinya. Diciuminya anak itu dari kepala sampai ke jari-jemari kakinya yang mungil. Kalau malam Sabari susah susah tidur lantaran membayangkan bermacam rencana\nyang akan dia lalui dengan anaknya jika besar nanti. Dia ingin mengajaknya melihat pawai 17 Agustus, mengunjungi pasar malam, membelikannya mainan,\nmenggandengnya ke masjid, mengajarinya berpuasa dan mengaji, dan memboncengnya naik sepeda saban sore ke taman kota.', '1 May 2015', 4, '/images/1599228034218-ayah.jpg.jpg', '2020-11-03 03:15:05', 13),
(12, 'Avengers by Jason Aaron, Vol. 6: Starbrand Reborn', 'Jason Aaron', 'Starbrand terlahir kembali! Bersiaplah untuk petualangan luar angkasa epik yang membawa Avengers ke penjara alien - seukuran galaksi! Di sana, pengguna baru misterius dari Starbrand yang sangat kuat tiba-tiba muncul, melepaskan kekacauan kosmik. Untung Avengers membawa senjata rahasia mereka - Black Widow! Tetapi beberapa tokoh paling kuat dari luar bintang telah ditarik untuk menemukan Starbrand juga. Lihatlah kedatangan Three Heralds! Ditambah lagi, Thor ... terinfeksi oleh parasit alien yang dikenal sebagai Brood ?! Bukan itu yang Anda harapkan! Bersiaplah untuk ledakan kosmik yang belum pernah Anda lihat sebelumnya', '19 May 2020', 5, '/images/1599228084134-avanger-6.jpg.jpg', '2020-11-03 03:15:24', 11),
(13, 'Avengers by Jason Aaron, Vol. 1: The Final Host', 'Jason Aaron', 'Era baru bagi Pahlawan Terkuat di Bumi! Steve Rogers. Tony Stark. Thor Odinson. Tiga besar akhirnya bersatu kembali! Dan tepat pada waktunya untuk menyelamatkan dunia dari kehancuran total di tangan musuh terkuat mereka - dewa luar angkasa setinggi 2.000 kaki yang dikenal sebagai Celestial! Lihatlah kedatangan Tuan Rumah Terakhir! Tapi siapa yang akan menjawab panggilan saat tim baru Avengers berkumpul? Petunjuk: salah satunya memiliki tengkorak yang menyala-nyala. Saat Black Panther dan Doctor Strange bertarung untuk hidup mereka jauh di dalam bumi, Captain Marvel menghadapi kematian dan kehancuran yang menghujani langit ... dan bagaimana dengan Savage Hulk? Ditambah lagi, pertemuan Avengers tidak akan lengkap tanpa Prince of Lies tertentu! Tapi hubungan apa yang mengguncang dunia antara Dark Celestials dan band Prehistoric Avengers kuno milik Odin?', '2 Oktober 2018', 5, '/images/1599228320049-avanger1.jpg.jpg', '2020-11-03 03:15:46', 12),
(14, 'Star Wars, Vol. 1: Skywalker Strikes', 'Jason Aaron', 'Luke Skywalker dan kelompok pemberontak yang menentang Kekaisaran Galaktik baru saja meraih kemenangan terbesar mereka sejauh ini - penghancuran Death Star yang sangat besar. Tapi Kekaisaran belum digulingkan! Bergabunglah dengan Luke, Putri Leia, Han Solo, Chewbacca, C-3PO, R2-D2 dan anggota Rebel Alliance lainnya saat mereka berjuang untuk kebebasan melawan kejahatan Darth Vader dan tuannya, sang Kaisar! Tetapi ketika serangan Pemberontak menjadi sangat tidak beres, Han dan Leia harus berpikir cepat untuk melarikan diri - sementara Luke menemukan dirinya berhadapan langsung dengan Darth Vader! Setelah ledakan, Luke yang rendah hati kembali ke Tatooine untuk mempelajari lebih lanjut tentang mentornya Obi-Wan Kenobi. Sementara itu, Leia dan Han menjalankan misi rahasia yang vital - dan berbahaya -. Tapi bisakah mereka berhasil tanpa Luke? Plus: ancaman dari Boba Fett!', '1 Januari 2015', 5, '/images/1599444789720-starWars1.jpg.jpg', '2020-11-03 03:16:04', 11),
(15, 'Star Wars, Vol. 2: Showdown on the Smuggler\'s Moon', 'Jason Aaron', 'Luke melanjutkan pencariannya untuk mempelajari Jedi dengan menuju ke Kuil Jedi di Coruscant. Tetapi ketika lightsabernya dicuri, dia segera menemukan dirinya terperangkap dan dipenjara! Akankah teman-temannya datang membantunya sebelum dia dipaksa masuk ke Arena of Death? Sementara itu, Han dan Leia dihadapkan pada musuh yang tak terduga. Kekaisaran mendekati mereka, dan mereka ditempatkan di jalur pemberontak oleh seorang wanita misterius dari masa lalu Han - yang memiliki dendam yang sangat pribadi! Saat Chewbacca dilepaskan, Han mendapati dirinya berurusan dengan ... bola dan rantai ?! Anda harus membacanya untuk mempercayainya! Plus: Ketidakadilan menguasai Tatooine saat sampah jahat merajalela. Akankah Ben Kenobi mengambil risiko mengungkapkan dirinya untuk melakukan apa yang benar? Ini adalah kisah khusus dari masa lalu Obi-Wan!', '13 Januari 2016', 5, '/images/1599444804595-starWars2.jpg.jpg', '2020-11-03 03:16:23', 10),
(16, 'Why We Sleep: Unlocking the Power of Sleep and Dreams', 'Matthew Walker', 'Buku tidur pertama oleh pakar ilmiah terkemuka — Profesor Matthew Walker, Direktur Laboratorium Tidur dan Neuroimaging UC Berkeley — mengungkapkan eksplorasi terobosannya tentang tidur, menjelaskan bagaimana kita dapat memanfaatkan kekuatan transformatifnya untuk mengubah hidup kita menjadi lebih baik.', '3 Oktober 2017', 6, '/images/1599228396012-sleep.jpg.jpg', '2020-11-03 03:16:42', 7),
(17, 'Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones', 'James Clear', 'Apa pun tujuan Anda, Atomic Habits menawarkan kerangka kerja yang telah terbukti untuk meningkatkan - setiap hari. James Clear, salah satu pakar terkemuka dunia tentang pembentukan kebiasaan, mengungkapkan strategi praktis yang akan mengajari Anda dengan tepat cara membentuk kebiasaan baik, menghentikan kebiasaan buruk, dan menguasai perilaku kecil yang membawa hasil luar biasa.', '16 Oktober 2018', 6, '/images/1599228415114-atom.jpg.jpg', '2020-11-03 03:17:09', 9),
(18, 'The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life', 'Mark Monson', 'Dalam panduan self-help yang menentukan generasi ini, seorang superstar blogger memotong omong kosong itu untuk menunjukkan kepada kita bagaimana berhenti berusaha menjadi \"positif\" sepanjang waktu sehingga kita benar-benar bisa menjadi orang yang lebih baik dan lebih bahagia.', '13 September 2016', 6, '/images/1599228437512-the-subtle.jpg.jpg', '2020-11-03 03:17:30', 10),
(19, 'Mohammad Hatta', 'Anom Whani Wicaksana', 'Dari judul buku ini aja, Sahabat Cemerlang semua pasti udah langsung tau, siapa tokoh utama yang ada di dalam buku ini. Yaps, Dr.(HC) Drs.H. Mohammad Hatta, orang yang pertama kali dipercaya untuk menjadi wakil presiden pertama di Indonesia. Selain itu Mohammad Hatta juga adalah seorang tokoh besar yang sangat terkenal di dunia internasional. Salah satu kata-kata bijaknya yang sangat menginspirasi dan sangat dikenang oleh masyarakat luas adalah \"Aku rela di penjara asalkan bersama buku, karena dengan buku aku bebas.\". Sahabat Cemerlang, para pemimpin terdahulu di negeri ini aja suka membaca buku, seharusnya kita sebagai generasi penerusnya mau meneladani  hal baik tersebut dan menjadikannya menjadi sebuah kebiasaan yang baik. Bicara soal meneladani, banyak banget lho hal yang bisa kita teladani dari sosok pemimpin legendaris kita yang satu ini. Mulai dari keteladanan tentang sifat kepemimpinannya, kejujuran, kesederhanaan dan masih nanyak lagi sifat baik yang bisa kita teladani dari be', '13 September 2017', 2, '/images/1599228474911-bj-habibi.jpg.jpg', '2020-11-03 03:17:49', 10),
(20, 'Sirah Nabawiyah', 'Syaikh Shafiyurrahman Al Mubarakfuri', 'Perjalanan Hidup Rasulullah, adalah lautan luas yang membentang, dengan kebeningan airnya yang kebiruan. Di sana tersimpan pesona alami nan abadi. Tiada mata yang bosan memandang. Tiada hati yang jemu menikmati. Tiada Berhenti orang menyalami. Karena sosok Beliau, adalah pesona sepanjang masa', '1 September 2016', 2, '/images/1599228493808-sirah-nabawiyah.jpg.jpg', '2020-11-03 03:18:07', 10),
(21, 'Sifat Sholat Nabi', 'Muhammad Nashiruddin al-Albani', 'Dalam masalah Sholat, bukan hanya Rasulullah memberi petunjuk dengan lisan, tetapi juga dengan praktik sehari-hari. Sehingga suatu saat beliau sholat di atas mimbar dan kemudian mengatakan, \"Sesungguhnya aku berbuat demikian agar kalian mengikuti dan mengetahui tentang sholatku.\" (HR al-Bukhari dan Muslim)', '1 Agustus 2018', 1, '/images/1599228513095-sifaat.jpg.jpg', '2020-11-03 03:18:25', 10),
(22, 'Sejarah Umat Islam', 'Prof.Dr.Hamka', 'Buku Sejarah Umat Islam mengupas tentang kejayaan yang pernah dilalui umat islam selama beberapa dekade hingga kejatuhannya saat berada dalam genggaman para penguasa islam yang lemah dan zalim. Layaknya sebuah drama, buku ini juga memuat tentang berbagai intrik politik dan kekuasaan, serta permusuhan dan perpecahan di kalangan umat islam, termasuk berbagai konspirasi dari pihak luar untuk menjatuhkan dan menggulingkan pemerintahan islam, seperti terjadinya Perang Salib di dunia, dan pendudukan bangsa-bangsa Eropa, seperti Portugis, Spanyol, danPrancis atas negeri=negeri islam, tidak terkecuali juga penjajahan yang berlangsung di negeri kita tercinta, Indonesia.', '1 May2018', 3, '/images/1599228543488-sej.jpg.jpg', '2020-11-03 03:18:41', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `borrowed_books`
--

CREATE TABLE `borrowed_books` (
  `id` int(11) NOT NULL,
  `books_id` int(11) NOT NULL,
  `borrow_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `duration` int(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `borrowed_books`
--

INSERT INTO `borrowed_books` (`id`, `books_id`, `borrow_date`, `duration`, `user_id`) VALUES
(2, 12, '2020-09-06 14:01:32', 7, 3),
(3, 5, '0000-00-00 00:00:00', 7, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `genres`
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
-- Struktur dari tabel `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `books_id` int(11) NOT NULL,
  `borrow_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `duration` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`id`, `books_id`, `borrow_date`, `duration`, `users_id`) VALUES
(1, 7, '2020-09-05 16:23:38', 7, 2),
(2, 8, '2020-09-05 16:23:38', 7, 1),
(3, 19, '2020-09-05 16:25:06', 7, 1),
(4, 11, '2020-09-05 16:25:06', 7, 2),
(5, 15, '2020-09-05 16:28:42', 7, 2),
(6, 5, '0000-00-00 00:00:00', 7, 5),
(7, 5, '0000-00-00 00:00:00', 7, 2),
(8, 7, '0000-00-00 00:00:00', 7, 2),
(9, 9, '0000-00-00 00:00:00', 7, 2),
(10, 5, '0000-00-00 00:00:00', 7, 7),
(11, 8, '0000-00-00 00:00:00', 7, 7),
(12, 5, '2020-09-07 05:57:43', 7, 7),
(13, 6, '2020-09-07 05:58:26', 7, 7),
(14, 6, '2020-09-07 06:00:25', 7, 7),
(15, 7, '2020-09-07 06:00:43', 7, 7),
(16, 6, '2020-09-07 06:19:13', 7, 7),
(17, 6, '2020-09-07 06:20:45', 7, 7),
(18, 6, '2020-09-07 06:22:31', 7, 7),
(19, 5, '2020-09-07 06:34:46', 7, 9),
(20, 6, '2020-09-07 06:37:13', 7, 9),
(21, 3, '2020-09-07 06:49:33', 8, 1),
(22, 7, '2020-09-07 07:22:32', 7, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id`, `level`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `level_id`, `fullname`, `avatar`) VALUES
(2, 'kambing', 'kambingtes@gmail.com', '$2b$10$txC1i24viZw6xVeNJXoh8OuDyZ6iwQtOUvLyCstp4oa5SDxoIWlmS', 2, 'kambingkambing', ''),
(7, 'markus', 'timmarkus@gmail.com', '$2b$10$Ar0EzYLx5H8VON9kXQIPR.CSmOtI01YADZcoAqCMKKgypZ4jwoc/2', 2, 'markmarkus', '/images/1599454686844-wiener.png.png'),
(8, 'junedjun', 'kambinglawless@gmail.com', '$2b$10$t/hiTDKwYIGJjCM9GoyUEOAGhat7VpCRrmCwIr0KJIXXEx.G0qNs2', 1, '', ''),
(9, 'markusmark', 'markusmark@gmail.com', '$2b$10$KcIb1bqOt9fvE8rj1mA.0edda85KJIgh83cbJycN11ycwekYuHZDO', 2, 'teammarkus', '/images/1599460225886-wiener.png.png'),
(10, 'nawirudin', 'kambinglawless@gmail.com', '$2b$10$i9Tt5/LmrPXOOYKLMuba2uNNZ.bEN42kCXiFh6wTZuIE94HeP2FRu', 1, '', ''),
(11, 'admin', 's@gmail', '$2b$10$loi7bq3u3CzSy1I9Fw7N..gX/dKtRlgB7yx3gSiZ4lM9nLa84.leq', 2, 'markmarkus', '/images/1599463805191-wiener.png.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `borrowed_books`
--
ALTER TABLE `borrowed_books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `borrowed_books`
--
ALTER TABLE `borrowed_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
