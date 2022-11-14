-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Nov 2022 pada 10.22
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learnwithuus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `skor` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `nisn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `skor`, `id_soal`, `nisn`) VALUES
(70, 0, 51, 1011401928),
(71, 0, 52, 1011401928),
(72, 1, 53, 1011401928),
(73, 0, 54, 1011401928),
(74, 0, 55, 1011401928),
(75, 0, 56, 1011401928),
(76, 0, 57, 1011401928),
(77, 0, 58, 1011401928),
(78, 0, 59, 1011401928),
(79, 0, 60, 1011401928),
(80, 0, 61, 1011401928),
(81, 0, 62, 1011401928),
(82, 0, 63, 1011401928),
(83, 0, 64, 1011401928),
(84, 1, 65, 1011401928),
(85, 0, 67, 1011401928),
(86, 1, 68, 1011401928),
(87, 1, 69, 1011401928),
(88, 0, 70, 1011401928),
(89, 0, 71, 1011401928);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `nisn` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `mapel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nisn`, `nilai`, `mapel`) VALUES
(33, 1011401928, 16, 'bahasa indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `no` int(10) NOT NULL,
  `soalnya` text NOT NULL,
  `jawaban_a` text NOT NULL,
  `jawaban_b` text NOT NULL,
  `jawaban_c` text NOT NULL,
  `jawaban_d` text NOT NULL,
  `jawaban_benar` text NOT NULL,
  `mapel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `no`, `soalnya`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`, `jawaban_benar`, `mapel`) VALUES
(1, 1, '40 % + 0,25 – 1⁄2 = …..', '0,15', '0,5', '0,25', '0,35', '0,15', 'matematika'),
(2, 2, 'Skala sebuah peta adalah 1 : 1.00.000. Apabila jarak pada peta 8 cm, jarak sesungguhnya adalah ….', '80 km', '8 km', '800 m', '800 km', '8 km', 'matematika'),
(3, 3, 'Panjang lapangan adalah 150 m. Panjang lapangan dalam sebuah peta adalah 5 cm. Maka skala peta tersebut adalah ….', '1 : 4.500', '1 : 150', '1 : 3.000', '1 : 1.500', '1 : 3.000', 'matematika'),
(4, 4, 'Perbandingan antara usia Andi dan Iqbal adalah 7 : 5. Jika usia Andi adalah 21 tahun. Maka usia Iqbal adalah ….', '35 tahun', '12 tahun', '20 tahun', '15 tahun', '15 tahun', 'matematika'),
(5, 5, 'Perbandingan jumlah sapi dan ayam dalam kandang adalah 3 : 8. Jika jumlah semua sapi dan ayam adalah 33 ekor. Maka jumlah sapi adalah ….', '11 ekor', '6 ekor', '9 ekor', '24 ekor', '9 ekor', 'matematika'),
(6, 6, 'Bentuk pecahan desimal dari 2 1⁄2 adalah ….', '2,2', '2,1', '2,5', '2,10', '2,5', 'matematika'),
(7, 7, 'Pecahan desimal yang paling besar nilainya adalah ….', '2,3', '2,25', '2,18', '2,6', '2,6', 'matematika'),
(8, 8, 'Bentuk pecahan dari 128 % adalah ….', '128⁄10', '1 7⁄25', '128⁄50', '1 1⁄28', '1 7⁄25', 'matematika'),
(9, 9, 'Hasil dari 10 7⁄8 + 12 125⁄1000 = ….', '23', '23,5', '24,7', '25', '23', 'matematika'),
(10, 10, 'Hasil dari 5 4⁄8  x 2 5⁄10 = ….', '13 3⁄8', '13 2⁄4', '13 3⁄4', '14 3⁄8', '13 3⁄4', 'matematika'),
(11, 11, 'Bangun yang mempunyai jumlah simetri putar tak terhingga adalah ….', 'Segiempat', 'Segitiga', 'Lingkaran', 'Persegi panjang', 'Lingkaran', 'matematika'),
(12, 12, 'Jumlah simetri lipat segiempat adalah ….', '4', '5', '2', '6', '4', 'matematika'),
(13, 13, 'Luas persegi yang kelilingnya 56 cm adalah …. cm2', '144', '225', '196', '121', '196', 'matematika'),
(14, 14, 'Luas lingkaran yang berdiameter 28 cm adalah ….cm2', '1.028', '2.156', '536', '1964', '536', 'matematika'),
(15, 15, 'Keliling persegi yang luasnya 100 cm2 adalah ….', '10 cm', '40 cm', '10.000 cm', '400 cm', '40 cm', 'matematika'),
(16, 16, 'Bentuk pecahan desimal dari 240% adalah', '0,24', '24,0', '2,4', '0,240', '2,4', 'matematika'),
(17, 17, 'Sudut yang ukurannya lebih kecil dari sudut siku-siku adalah sudut ….', 'Tumpul', 'Lancip', 'Simetris', 'Persegi', 'Lancip', 'matematika'),
(18, 18, 'Panjang sisi kubus jika diketahui volume kubus 4.913 cm³ adalah .....', '16 cm', '18 cm', '17 cm', '19 cm', '17 cm', 'matematika'),
(19, 19, 'Jumlah sisi pada bangun kubus adalah ….', '4', '5', '6', '8', '6', 'matematika'),
(20, 20, 'Tabung adalah bangun ruang yang alasnya berbentuk ….', 'Persegi', 'Segitiga', 'Lingkaran', 'Persegi Panjang', 'Lingkaran', 'matematika'),
(21, 21, 'Jumlah rusuk yang dimiliki bangun limas segi empat adalah ….', '12', '8', '6', '18', '8', 'matematika'),
(22, 22, 'Volume kubus dengan panjang sisi 13 cm adalah .....', '2.197 cm³', '2.744 cm³', '2.297 cm³', '2.774 cm³', '2.197 cm³', 'matematika'),
(23, 23, 'Sebuah peta dengan skala setiap 1 cm pada peta mewakili 5 km sebenarnya. Jarak kota A ke kota B pada peta 20 cm. Jarak kota A ke kota B sebenarnya adalah ..... km', '10', '25', '75', '100', '100', 'matematika'),
(24, 24, 'Sebuah kolam renang panjangnya 20 meter dan lebarnya 12 meter. Jika volume kolam renang 336.000 liter. Kedalaman kolam renang adalah .....', '120 cm', '150 cm', '140 cm', '180 cm', '140 cm', 'matematika'),
(25, 25, 'Damar mempunyai 2 buah kubus dengan panjang sisi 15 cm dan 18 cm. Selisih volume kedua kubus Damar adalah .....', '1.544 cm³', '2.445 cm³', '1.457 cm³', '2.457 cm³', '2.457 cm³', 'matematika'),
(26, 1, 'My Father works in a school to teach mathematics, he is a..', 'student', 'teacher', 'nurse', 'Librarian', 'teacher', 'bahasa inggris'),
(27, 2, 'My Mom works from home to cure sick animal, she is a...', 'merchant', 'vet', 'bankir', 'Accountant', 'merchant', 'bahasa inggris'),
(28, 3, 'Fahmi is a scientist. He works daily in a...', 'Bank', 'Laboratory', 'Store', 'Café', 'Laboratory', 'bahasa inggris'),
(29, 4, 'I want to build a machine someday. I want to be...', 'a doctor', 'a director', 'an engineer', 'an accountant', 'an accountant', 'bahasa inggris'),
(30, 5, 'My brother studies law, after he graduates, he will become.', 'lawyer', 'engineer', 'translator', 'Painter', 'lawyer', 'bahasa inggris'),
(31, 6, 'The shape of a ball is a...', 'sphere', 'spiral', 'cube', 'Cuboid', 'sphere', 'bahasa inggris'),
(32, 7, 'The shape of a wheel is a.', 'cone', 'cube', 'rectangle', 'Circle', 'rectangle', 'bahasa inggris'),
(33, 8, 'The shape of the pyramids is a...', 'rectangle', 'triangle', 'diagonal', 'Circle', 'triangle', 'bahasa inggris'),
(34, 9, 'Indonesia has ... weathers', '5', '4', '3', '2', '2', 'bahasa inggris'),
(35, 10, 'These are activities in summer holiday, except..', 'going to the beach', 'wearing thick jacket in the home', 'riding a bicycle in a park', 'barbeque garden party', 'wearing thick jacket in the home', 'bahasa inggris'),
(36, 11, 'In autumn...', 'snow falls', 'flower blooms', 'temperature is so hot', 'leaves falls', 'temperature is so hot', 'bahasa inggris'),
(37, 12, 'In rainy season...', 'barely raining', 'rainfall decreases', 'rainfall increases', 'no raining', 'rainfall increases', 'bahasa inggris'),
(38, 13, 'There was so much wind, it was a ...', 'scorching', 'breezy', 'windy day', 'Quiet', 'windy day', 'bahasa inggris'),
(39, 14, 'I take a ... to the school.', 'bus', 'car', 'plane', 'Helicopter', 'bus', 'bahasa inggris'),
(40, 15, 'These are private transportation, except...', 'train', 'car', 'bicycle', 'Motorcycle', 'train', 'bahasa inggris'),
(41, 16, 'These are public transportation, except', 'bicycle', 'plane', 'bus', 'Cart', 'bicycle', 'bahasa inggris'),
(42, 17, 'My flight will be ... in 2 hours. I need to go to the airport!', 'take off', 'landing', 'take on', 'land on', 'take off', 'bahasa inggris'),
(43, 18, 'Dear passanger, we will ... in Kuala Lumpur 8 minutes.', 'take in', 'lunch', 'arrive', 'take off', 'arrive', 'bahasa inggris'),
(44, 19, 'Keep ...! We are on a library!', 'talking', 'walking', 'noisy', 'Quiet', 'Quiet', 'bahasa inggris'),
(45, 20, 'I don\'t know where the book I am looking for. I am going to ask the ..', 'library', 'librarian', 'library office', 'library center', 'librarian', 'bahasa inggris'),
(46, 21, 'The library is where you can find ...', 'biographies', 'animals', 'movies', 'Clothes', 'biographies', 'bahasa inggris'),
(47, 22, 'In the library, you can ... the books.', 'steal', 'borrow', 'buy', 'Tear', 'buy', 'bahasa inggris'),
(48, 23, 'These things you can find in the library, except...', 'bookshelves', 'music loudspeaker', 'a globe', 'a desk', 'music loudspeaker', 'bahasa inggris'),
(49, 24, 'These books you likely will find in the elementary school library, except...', 'expert medical books', 'folk tales books', 'fairy tales books', 'children magazine', 'folk tales books', 'bahasa inggris'),
(50, 25, 'Retno : Can you hold these books, please?\r\nHanni : … , I can.\r\n', 'Excuse me', 'I am sorry', 'Thank you', 'Sure', 'Sure', 'bahasa inggris'),
(51, 1, 'Membaca intensif merupakan kegiatan membaca suatu bacaan secara ......', 'Sambil lalu', 'Sekilas', 'Mendalam', 'Teori', 'Mendalam', 'bahasa indonesia'),
(52, 2, 'Kalimat utama biasanya terdapat pada tiap ....', 'Kata', 'Paragraf', 'Kalimat', 'Suku kata', 'Paragraf', 'bahasa indonesia'),
(53, 3, 'Rencana kerja yang memuat garis – garis besar suatu karangan disebut ......', 'Tema karangan', 'Kerangka karangan', 'Topik karangan', 'Judul karangan', 'Kerangka karangan', 'bahasa indonesia'),
(54, 4, 'Paragraf sering juga disebut dengan istilah .....', 'Kalimat', 'Alenia', 'Judul', 'Kata', 'Alenia', 'bahasa indonesia'),
(55, 5, 'Karangan yang baik harus memperhatikan penggunaan ejaan yang ....', 'Berlaku', 'Modern', 'Masuk akal', 'Telah lampau', 'Berlaku', 'bahasa indonesia'),
(56, 6, 'Berikut ini merupakan bentuk penulisan judul karangan yang tepat ........', 'Kegemaran Yang Menghasilkan', 'Kegemaran yang menghasilkan', 'Kegemaran Yang menghasilkan', 'kegemaran yang menghasilkan', 'Kegemaran Yang Menghasilkan', 'bahasa indonesia'),
(57, 7, 'Gagasan utama pada karangan disebut ....', 'Dukungan', 'Paragraf', 'Alur', 'Topik', 'Topik', 'bahasa indonesia'),
(58, 8, 'Kegemaran sama artinya dengan ......', 'Sesuatu yang disukai', 'Hal yang menyenangkan', 'Kegiatan sehari – hari', 'Kegiatan menghilangkan kejenuhan', 'Sesuatu yang disukai', 'bahasa indonesia'),
(59, 9, 'Berikut ini bukan kegemaran yang biasa dilakukan anak laki-laki adalah\r\nbermain .......\r\n', 'Bola', 'Kelereng', 'Layang – layang', 'Boneka', 'Boneka', 'bahasa indonesia'),
(60, 10, 'Tiap bait pada pantun terdiri atas ......', 'Dua baris', 'Tiga baris', 'Empat baris', 'Lima baris', 'Dua baris', 'bahasa indonesia'),
(61, 11, 'Dian gemar sekali membaca buku, sehingga ia dijuluki sebagai ......', 'Kutu buku', 'Kolektor buku', 'Pengarang buku', 'Pengusaha buku', 'Kolektor buku', 'bahasa indonesia'),
(62, 12, 'Pengumuman dibuat untuk ditujukan kepada .....', 'Diri sendiri', 'Orang banyak', 'Orang tua', 'Guru', 'Orang banyak', 'bahasa indonesia'),
(63, 13, 'Kalimat yang digunakan dalam pengumuman adala .....', 'Bertele – tele', 'Berbunga – bunga', 'Berbelit – belit', 'Singkat dan padat', 'Singkat dan padat', 'bahasa indonesia'),
(64, 14, 'Berikut yang tidak terdapat dalam isi pengumuman adalah .', 'Waktu', 'Tempat', 'Tanggal', 'Jumlah', 'Jumlah', 'bahasa indonesia'),
(65, 15, 'Salah satu contoh media cetak yang dapat digunakan untuk menyampaikan pengumuman\r\nadalah .....\r\n', 'Radio', 'Koran', 'Televisi', 'Internet', 'Koran', 'bahasa indonesia'),
(66, 16, 'Karya sastra berupa pantun termasuk jenis puisi ......', 'Lama', 'Baru', 'Modern', 'Bebas', 'Lama', 'bahasa indonesia'),
(67, 17, 'Baris pertama dan kedua pada pantun merupakan ......', 'Isi', 'Sampiran', 'Tema', 'Gagasan pokok', 'Sampiran', 'bahasa indonesia'),
(68, 18, 'Ciri – ciri pantun bersajak .......', 'a-a-b-b', 'a-b-b-a', 'b-a-a-b', 'a-b-a-b', 'a-b-a-b', 'bahasa indonesia'),
(69, 19, 'Persamaan bunyi pada akhir baris pantun disebut ...', 'Bait', 'Rima', 'Baris', 'Ritme', 'Rima', 'bahasa indonesia'),
(70, 20, 'Kegiatan berpantun dengan teman atau orang lain disebut ..', 'Membaca pantun', 'Membuat pantun', 'Berbalas pantun', 'Menulis pantun', 'Berbalas pantun', 'bahasa indonesia'),
(71, 21, 'Percakapan sebelum drama dimulai disebut ...', 'monolog', 'dialog', 'epilog', 'prolog', 'prolog', 'bahasa indonesia'),
(72, 22, 'Berikut ini yang tidak harus diperhatikan dalam membacakan puisi adalah ....', 'lafal', 'intonasi', 'ekspresi', 'pengarang', 'pengarang', 'bahasa indonesia'),
(73, 23, 'Pemeran wanita dalam sebuah drama disebut ....', 'aktor', 'sutradara', 'aktris', 'selebritis', 'aktris', 'bahasa indonesia'),
(74, 24, 'Di bawah ini yang tidak termasuk unsur-unsur dalam sebuah cerita adalah ....', 'alur', 'amanat', 'sudut pandang', 'sosial budaya', 'sosial budaya', 'bahasa indonesia'),
(75, 25, 'Perkenalan, pertikaian, dan penyelesaian merupakan tahap-tahap dari ....', 'alur', 'amanat', 'latar', 'Sajak', 'alur', 'bahasa indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `nisn` int(10) NOT NULL,
  `nama` varchar(1000) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(1000) NOT NULL,
  `foto` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nisn`, `nama`, `password`, `email`, `foto`) VALUES
(200501, 'ADITIYA', '76bd44db1d31060250e3650ef9d2838697becc7b', 'ADITIYA@gmail.com', 'uknown.png'),
(200502, 'AFGAN', '5ccff4d07b6ac8bf161d9ad75a70bda6853c3d15', 'AFGAN@gmail.com', 'uknown.png'),
(200503, 'AGHNI HIDAYATI', 'a8d27ee57beb3f1a669951bef0a6873c14e5eda5', 'AGHNIHIDAYATI@gmail.com', 'uknown.png'),
(200504, 'AHMAD AMINUDDIN', '375c11721fc6f6428d4d26120665966d0968ab92', 'AHMADAMINUDDIN@gmail.com', 'uknown.png'),
(200505, 'AHMAD RIPAI', '4dc7249d3972261549045d57b2b51a9c7566d3f5', 'AHMADRIPAI@gmail.com', 'uknown.png'),
(200506, 'AHMAD TAUHID', '5040e28d2b6142cfc491252cf7b6cff5815257aa', 'AHMADTAUHID@gmail.com', 'uknown.png'),
(200507, 'ANDIKA', '1891337927fa561620109fcf9cae0949d945d179', 'ANDIKA@gmail.com', 'uknown.png'),
(200508, 'ANGGA JUNEDI', '638177f3b69ad73f496fe975a4494554cd9aa25e', 'ANGGAJUNEDI@gmail.com', 'uknown.png'),
(200509, 'ANGGARA SAPUTRA PRATAMA', 'b7c063a2bfc3463c33eb49d787e9b75d7ab6f3c2', 'ANGGARA@gmail.com', 'uknown.png'),
(200510, 'DEGA APRILIA', '49a8739e89aed14fb04127cf841fa1f0a3bab7ef', 'DEGAAPRILIA@gmail.com', 'uknown.png'),
(200511, 'FANISAS SAFILA', 'eb598afe0821acca677c39a31db47543c34d558e', 'FANISASSAFILA@gmail.com', 'uknown.png'),
(200512, 'HANA PERTIWI', 'a7a605f364d8b394f9018f759985627124c8ef83', 'HANAPERTIWI@gmail.com', 'uknown.png'),
(200513, 'JAHIRA', '9980b09e9491fbad31496d4c18724401e671430f', 'JAHIRA@gmail.com', 'uknown.png'),
(200514, 'KAFKA FARHAN WIJAYA', '74fa306ea267065135632f662e3a3541ef8cce4b', 'KAFKA@gmail.com', 'uknown.png'),
(200515, 'MUHAMAD ANDREYANI', '817a649556ae7e54da18deb755f6fd22306274ad', 'MUHAMADANDREYANI@gmail.com', 'uknown.png'),
(200516, 'Muhamad Dimas Syahputra', '21cd24920b6de7b607ab4ac965b292da66061947', 'MuhamadDimas@gmail.com', 'uknown.png'),
(200517, 'MUHAMAD RAHLI', '968205b350f4605157e485c1b981c70728e9b776', 'MUHAMADRAHLI@gmail.com', 'uknown.png'),
(200518, 'MUHAMAD SAKTI YANSYAH', '83873c0d18996fd648257f451c26222dfa9f9339', 'MUHAMADSAKTI@gmail.com', 'uknown.png'),
(200519, 'Muhammad Shahlan', '5cf88464621ed2531a653f410fd10bbbc38fccd6', 'MuhammadShahlan@gmail.com', 'uknown.png'),
(200520, 'PUTRA RAMADHAN TARIGAN', '9df7c4e7ce8e94c91e74f3802b6bc86592d72b3a', 'PUTRARAMADHANTARIGAN@gmail.com', 'uknown.png'),
(200521, 'SHELA AULIA AGUSTIN', '5608f76647d1986551ca8dee217bc1a6b2690ca0', 'SHELAAULIAAGUSTIN@gmail.com', 'uknown.png'),
(200522, 'Sindi Auliya', 'b7dd37ae3539ebb099139c7b589e1751b07a252c', 'SindiAuliya@gmail.com', 'uknown.png'),
(1011401928, 'Fahrizal Artha Pangestu', '7c222fb2927d828af22f592134e8932480637c0d', 'arthafahri@gmail.com', 'arthabgmerah.jpg'),
(1011401941, 'Siti Jukhoriyah', 'c8499454bada15f6d76bbf8cf133960f93f9b4eb', 'sitijukhoriyah@gmail.com', 'juho.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nisn`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
