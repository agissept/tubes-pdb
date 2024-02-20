-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 12:36 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes_pdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `phone_number` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `phone_number`) VALUES
(1, 'hafizhan shidqi', 'Jalan Pasteur No. 17, Cilegon, LA 68068', '081241237612'),
(2, 'gandhi wibowo', 'Gg. Tubagus Ismail No. 3, Banjar, Jawa Barat 66174', '081288857148'),
(3, 'aldio mahendra purwandrarto', 'Gg. Gegerkalong Hilir No. 24, Magelang, JB 79161', '081249290070'),
(4, 'benny putra', 'Jl. M.H Thamrin No. 411, Balikpapan, Nusa Tenggara Barat 76877', '081207878444'),
(5, 'vicky vernando dasta', 'Gg. Joyoboyo No. 394, Pekanbaru, Kalimantan Selatan 39958', '081296157246'),
(6, 'jufianto henri', 'Jalan Cempaka No. 76, Jambi, Sulawesi Tengah 38652', '081276773286'),
(7, 'aan nuraini', 'Gang Moch. Toha No. 2, Kota Administrasi Jakarta Pusat, JK 84271', '081262674476'),
(8, 'abdur rahman', 'Gg. Rajawali Timur No. 50, Tangerang, JT 20942', '081219311927'),
(9, 'abdurrahman', 'Jl. Sentot Alibasa No. 2, Medan, Maluku 02091', '081282886531'),
(10, 'ade indra sukma', 'Gang Cikapayang No. 7, Tasikmalaya, Kepulauan Riau 44907', '081214844605'),
(11, 'ade irmayani', 'Jl. Joyoboyo No. 513, Sibolga, GO 46611', '081294652310'),
(12, 'bakti yoga fiyandana', 'Jalan M.H Thamrin No. 5, Salatiga, Bali 26474', '081292584229'),
(13, 'daniel sepra fatama', 'Jl. Kiaracondong No. 350, Purwokerto, Sumatera Barat 28938', '081211260192'),
(14, 'dayu m sandro', 'Jl. Ciwastra No. 833, Tasikmalaya, KS 90623', '081225254105'),
(15, 'dean mareti hariani', 'Gg. Rawamangun No. 76, Jayapura, Bengkulu 15965', '081252690227'),
(16, 'edi kurniawan wibowo', 'Gang Waringin No. 10, Palopo, KU 43030', '081232536661'),
(17, 'fadil rahmat andini', 'Gg. Moch. Toha No. 404, Bekasi, KR 68647', '081251049073'),
(18, 'fahmi iqbal firmananda', 'Jl. Gardujati No. 508, Tangerang Selatan, SU 36770', '081212443605'),
(19, 'fairuzi', 'Gang Jakarta No. 7, Tanjungbalai, SN 87661', '081265091122'),
(20, 'gustian', 'Jalan Rumah Sakit No. 235, Pagaralam, ST 53698', '081298171937'),
(21, 'habil sabilla doa', 'Gg. Setiabudhi No. 0, Cimahi, KI 00193', '081225271623'),
(22, 'hermawan syah', 'Gg. Kapten Muslihat No. 11, Solok, Banten 74170', '081227446486'),
(23, 'ibnuyohanzah ahmad', 'Gang Rungkut Industri No. 8, Palu, Jawa Barat 51209', '081281358811'),
(24, 'lia pertiwi', 'Jalan Cempaka No. 4, Surakarta, Maluku Utara 73265', '081274128080'),
(25, 'muhammad maksum sugondo', 'Jalan Rajawali Barat No. 678, Purwokerto, JA 51845', '081219568987'),
(26, 'muhammad risfandanu', 'Gg. KH Amin Jasuta No. 99, Bima, Jambi 31910', '081288801899'),
(27, 'adnil riza', 'Gg. H.J Maemunah No. 70, Tidore Kepulauan, KR 87430', '081298596996'),
(28, 'nadia gustiana', 'Jalan Asia Afrika No. 97, Medan, SN 00963', '081213627082'),
(29, 'nanda aditya', 'Jl. Dipatiukur No. 992, Bima, KI 96406', '081270740928'),
(30, 'nurgivo alfajri', 'Gang Laswi No. 12, Payakumbuh, Maluku 02581', '081296575705'),
(31, 'pita irul sayekti', 'Jl. Kebonjati No. 084, Purwokerto, Kalimantan Timur 04923', '081291602082'),
(32, 'rahmadi gusri', 'Jl. M.T Haryono No. 95, Kotamobagu, SU 66176', '081264445754'),
(33, 'rahmat', 'Gang HOS. Cokroaminoto No. 539, Bukittinggi, Papua Barat 31973', '081224509485'),
(34, 'sadra wilis', 'Jl. Rajawali Barat No. 39, Pagaralam, AC 51901', '081249405706'),
(35, 'said rio apriadi', 'Jalan Rajawali Barat No. 88, Lubuklinggau, SS 01096', '081272658509'),
(36, 'tania rahmadhini', 'Gg. Rajawali Barat No. 43, Tangerang Selatan, Sulawesi Utara 31950', '081234326382'),
(37, 'tarikhul mahfudz', 'Gg. Jend. Sudirman No. 26, Tangerang Selatan, Sumatera Barat 90829', '081211019708'),
(38, 'vido idramedi', 'Jalan Pasteur No. 662, Batam, SR 81610', '081297023428'),
(39, 'wahyu darmawan', 'Jalan S. Parman No. 0, Banjarbaru, SN 45374', '081265500927'),
(40, 'yana famana', 'Jalan Rajiman No. 49, Kota Administrasi Jakarta Utara, SS 24323', '081262554575'),
(41, 'yusrika dewi', 'Gang Sukajadi No. 041, Tanjungpinang, KS 83456', '081238682169'),
(42, 'zakiah nurviani', 'Gg. Rajiman No. 473, Semarang, Jawa Tengah 30149', '081260828233'),
(43, 'aditya dwi nugraha', 'Gang Cempaka No. 13, Tanjungpinang, Papua 27461', '081270505108'),
(44, 'afrian djugi', 'Gang Kapten Muslihat No. 3, Semarang, Kalimantan Selatan 21429', '081250294018'),
(45, 'debby jayadi nugroho', 'Gg. Indragiri No. 32, Kotamobagu, KB 30295', '081256318374'),
(46, 'dede dwi arviyanti', 'Gang Jayawijaya No. 741, Sibolga, Sulawesi Barat 34487', '081273028332'),
(47, 'della maulina herianda', 'Jl. Stasiun Wonokromo No. 72, Bandung, KU 83530', '081295022418'),
(48, 'deny gustriansyah', 'Gang Cikapayang No. 9, Kota Administrasi Jakarta Timur, Papua 59964', '081277315748'),
(49, 'desi fitri', 'Jalan Surapati No. 0, Probolinggo, ST 26820', '081216148225'),
(50, 'edmund andriano', 'Gang Ahmad Dahlan No. 87, Kediri, DI Yogyakarta 86703', '081271489281'),
(51, 'fajar aulia rahman', 'Jl. Kutisari Selatan No. 029, Bandar Lampung, Sulawesi Utara 39505', '081219049718'),
(52, 'fathiya hasyifah sibarani', 'Jalan Tubagus Ismail No. 1, Medan, Jawa Tengah 40822', '081269325840'),
(53, 'fauzar', 'Jalan Sukabumi No. 0, Bogor, KR 70075', '081275030765'),
(54, 'habzer maisera', 'Jl. Cihampelas No. 3, Yogyakarta, YO 51260', '081286781891'),
(55, 'herzavina', 'Jl. Dipenogoro No. 340, Palu, YO 46447', '081262396313'),
(56, 'ikbal gazalba', 'Gang Ciumbuleuit No. 050, Langsa, Kalimantan Barat 67496', '081272977900'),
(57, 'ikhsan firdaus', 'Jalan Gardujati No. 39, Cirebon, KB 28964', '081263980024'),
(58, 'ilda ikhwana lubis', 'Jl. Waringin No. 05, Bau-Bau, SN 53925', '081238843295'),
(59, 'jayus suryawan', 'Jalan Jakarta No. 885, Cilegon, SR 59264', '081219001659'),
(60, 'muhammad bagoes samaron', 'Jl. Rajiman No. 658, Lhokseumawe, BB 27044', '081220084010'),
(61, 'muhammad hanafi', 'Gg. Antapani Lama No. 37, Palu, BB 63447', '081277071437'),
(62, 'muhammad ilham akbar khoiri', 'Gg. Gegerkalong Hilir No. 36, Manado, PB 55227', '081222506038'),
(63, 'narendra benny', 'Gg. Dipatiukur No. 96, Cimahi, PB 04986', '081242786716'),
(64, 'naufal abiyyu', 'Jalan Joyoboyo No. 00, Kotamobagu, SS 93694', '081244243641'),
(65, 'nurhikmah', 'Gg. Joyoboyo No. 307, Tegal, Riau 10498', '081254673631'),
(66, 'fadana bagus harsono', 'Gang Ronggowarsito No. 7, Tegal, Bengkulu 73452', '081293954214'),
(67, 'rahmi omya ulta', 'Jl. Ronggowarsito No. 95, Medan, SS 67164', '081280215858'),
(68, 'rahmi septhianingrum', 'Gang Pacuan Kuda No. 2, Metro, Sulawesi Tenggara 45599', '081227025803'),
(69, 'rangga arief putra', 'Jl. Ahmad Dahlan No. 13, Binjai, Sulawesi Tengah 07655', '081292929495'),
(70, 'rangga dwi nugrawan', 'Gg. Kiaracondong No. 66, Lubuklinggau, NB 59141', '081205924297'),
(71, 'saiful wahyudi', 'Gang BKR No. 00, Binjai, BT 53293', '081238950801'),
(72, 'sari devia agustina', 'Jl. Merdeka No. 4, Cilegon, SR 35503', '081276293831'),
(73, 'taufik oktafiyardi', 'Jalan Jakarta No. 1, Cirebon, JK 18056', '081238961962'),
(74, 'teddy franwijaya', 'Gg. Ronggowarsito No. 474, Cimahi, JI 94838', '081265315286'),
(75, 'vigo farlandi', 'Jl. Raya Ujungberung No. 25, Meulaboh, PA 43498', '081209487723'),
(76, 'wahyu ernu setiawan', 'Jl. Suryakencana No. 939, Balikpapan, SR 36330', '081235787753'),
(77, 'yofaldi laksmana putra', 'Jalan Waringin No. 3, Lhokseumawe, Banten 25114', '081237151214'),
(78, 'zubaidah', 'Jl. H.J Maemunah No. 031, Banjar, SN 30399', '081258534856'),
(79, 'agus faturrahman', 'Jalan Siliwangi No. 40, Banjarmasin, DI Yogyakarta 26693', '081298954053'),
(80, 'agustiando rahmat', 'Gang K.H. Wahid Hasyim No. 212, Bima, AC 12118', '081220803521'),
(81, 'aidil badri', 'Gg. Dr. Djunjunan No. 412, Tegal, Sulawesi Barat 84519', '081244771795'),
(82, 'alfajri', 'Gg. R.E Martadinata No. 54, Tangerang, JI 11203', '081220961673'),
(83, 'bayu hasan basyir aljawi', 'Gg. BKR No. 4, Pagaralam, Sumatera Barat 87401', '081258330824'),
(84, 'desi fransiska', 'Gang Ronggowarsito No. 427, Medan, JA 87370', '081266209960'),
(85, 'desnando', 'Gang M.T Haryono No. 72, Kota Administrasi Jakarta Timur, Riau 39509', '081218934891'),
(86, 'desri ardika', 'Jalan Veteran No. 09, Serang, Sulawesi Tengah 61163', '081297712165'),
(87, 'dessy masdianata p', 'Gg. W.R. Supratman No. 3, Kota Administrasi Jakarta Selatan, Maluku Utara 97404', '081281724600'),
(88, 'destria membrane', 'Gg. Cikutra Timur No. 216, Tidore Kepulauan, MU 87203', '081228536289'),
(89, 'eka nur safitri', 'Jalan Wonoayu No. 3, Purwokerto, Riau 64259', '081281360868'),
(90, 'fauziah', 'Gang BKR No. 118, Bima, BE 52508', '081279916509'),
(91, 'feny afrisilia', 'Jl. Yos Sudarso No. 947, Surakarta, Kalimantan Utara 10975', '081255440466'),
(92, 'hesty afriani srg', 'Jl. Wonoayu No. 030, Lhokseumawe, MA 29264', '081238450664'),
(93, 'ilham afandi aziz', 'Jalan Cihampelas No. 8, Kediri, Sulawesi Selatan 81970', '081291471877'),
(94, 'ilham fajri', 'Gang S. Parman No. 642, Jayapura, Sulawesi Barat 96766', '081269206281'),
(95, 'indah permata sari', 'Gang Dipenogoro No. 0, Kota Administrasi Jakarta Pusat, SS 74314', '081201597611'),
(96, 'jukhri syahputra', 'Gang Pasir Koja No. 07, Metro, KI 95233', '081258376692'),
(97, 'm. muawam', 'Jl. Veteran No. 9, Kota Administrasi Jakarta Selatan, Sulawesi Tenggara 80347', '081226730647'),
(98, 'm. yassir saputra jamina', 'Gg. Kendalsari No. 38, Tarakan, SR 82007', '081218242706'),
(99, 'mardiyyat fadliellah', 'Gg. H.J Maemunah No. 004, Cirebon, BE 40209', '081202515629'),
(100, 'mukhtar lutfi', 'Jl. Waringin No. 525, Batu, Riau 64272', '081232771895'),
(101, 'nazarudin yusuf', 'Jalan S. Parman No. 98, Surabaya, Sulawesi Barat 86896', '081225757472'),
(102, 'neni anggraeni dalimunthe', 'Gg. Gegerkalong Hilir No. 12, Manado, Sumatera Selatan 00500', '081238215583'),
(103, 'nurpauliani dewi n', 'Jalan Antapani Lama No. 6, Bogor, BA 60425', '081219879638'),
(104, 'rano abdul rahman', 'Jl. Gedebage Selatan No. 5, Balikpapan, AC 59849', '081294633916'),
(105, 'ratih purwasih', 'Jalan M.H Thamrin No. 91, Kota Administrasi Jakarta Utara, Banten 03264', '081240354512'),
(106, 'raynaldi setiawan', 'Jl. Cihampelas No. 0, Pekalongan, LA 99610', '081257223398'),
(107, 'shynta dwi afitri', 'Jalan Cikutra Barat No. 75, Kupang, Jambi 44340', '081239323590'),
(108, 'siti romlah', 'Gang Tebet Barat Dalam No. 059, Tasikmalaya, KI 48935', '081292620487'),
(109, 'teresno maulana', 'Gang Rajawali Barat No. 985, Tual, Kalimantan Timur 77388', '081296967939'),
(110, 'tessa eka fatiwi', 'Gg. Sukabumi No. 8, Manado, KT 53211', '081250988419'),
(111, 'wendi gusfan hutapea', 'Jalan Abdul Muis No. 3, Depok, SG 25456', '081278925553'),
(112, 'yovita sari', 'Jl. Cikapayang No. 075, Sabang, Maluku 54229', '081229433467'),
(113, 'zukri adinalta', 'Gg. Pacuan Kuda No. 782, Madiun, PB 35473', '081298256722'),
(114, 'alfi sahri', 'Jalan Merdeka No. 85, Mojokerto, ST 08516', '081260572877'),
(115, 'amalia wulandari', 'Jalan Sadang Serang No. 2, Pangkalpinang, Kalimantan Selatan 51273', '081238980869'),
(116, 'amelia novrida', 'Gang Laswi No. 251, Banjar, DI Yogyakarta 78396', '081217705915'),
(117, 'andre ganda wilaga putra', 'Jl. W.R. Supratman No. 0, Magelang, KU 78871', '081279825292'),
(118, 'andre oktora', 'Gg. Ciumbuleuit No. 586, Banjarbaru, Papua 55489', '081239015638'),
(119, 'benni setiawan', 'Gg. Kutai No. 9, Banjar, Kepulauan Riau 58429', '081273948835'),
(120, 'deswanto', 'Jalan Cikutra Barat No. 7, Batu, PA 54239', '081265494066'),
(121, 'desy syahputri', 'Jl. Tubagus Ismail No. 305, Cimahi, Banten 20160', '081285893525'),
(122, 'eka wulandari', 'Gg. Sukajadi No. 7, Cilegon, Jawa Timur 64164', '081288664611'),
(123, 'ferry ramadhan', 'Gg. Pasteur No. 37, Magelang, Maluku Utara 53529', '081224153968'),
(124, 'firdaus', 'Gang Rajawali Timur No. 5, Bau-Bau, Maluku Utara 85382', '081293757134'),
(125, 'hamdani asril', 'Jalan Jayawijaya No. 112, Bontang, BA 24238', '081211482060'),
(126, 'hijrah syahputra', 'Jl. Gardujati No. 199, Kota Administrasi Jakarta Barat, NB 79641', '081208749734'),
(127, 'indah rahmawati', 'Gang W.R. Supratman No. 1, Tanjungbalai, ST 46271', '081235253703'),
(128, 'indra firman', 'Jl. Sadang Serang No. 91, Dumai, Aceh 88104', '081274984670'),
(129, 'indri dian pertiwi', 'Gg. Sukajadi No. 057, Salatiga, JI 52906', '081243710547'),
(130, 'kemal pasha', 'Gg. Dipenogoro No. 6, Cimahi, Sulawesi Utara 86191', '081236310357'),
(131, 'muhammad sayuti nur nasution', 'Gg. Laswi No. 7, Blitar, Sulawesi Utara 20196', '081224040500'),
(132, 'miftahur ridho', 'Gang Waringin No. 1, Pangkalpinang, KU 47038', '081267711451'),
(133, 'mila yuli yanti', 'Gg. Suniaraja No. 0, Tanjungbalai, KB 76913', '081216155526'),
(134, 'muhammad wendi hidayat', 'Gg. Pasirkoja No. 18, Langsa, KR 57014', '081288013030'),
(135, 'nikawati', 'Jalan Indragiri No. 78, Kupang, SU 43349', '081210449557'),
(136, 'nofan widiyarna', 'Jl. Jakarta No. 4, Bitung, KT 23997', '081285973398'),
(137, 'nurudin rahman', 'Jalan Ir. H. Djuanda No. 7, Kendari, Sumatera Selatan 65390', '081256547664'),
(138, 'puji astuti', 'Gg. Gardujati No. 48, Bengkulu, YO 60538', '081288888480'),
(139, 'refi delia', 'Gg. Moch. Toha No. 880, Sukabumi, DI Yogyakarta 19357', '081245384594'),
(140, 'reno mulia sari', 'Jalan Wonoayu No. 9, Blitar, Papua 42059', '081226566198'),
(141, 'resa putri ananda', 'Jalan Kutai No. 29, Padang Sidempuan, Sumatera Utara 40546', '081250182304'),
(142, 'resi septiani', 'Gang Joyoboyo No. 154, Tanjungbalai, Kalimantan Barat 82782', '081212713098'),
(143, 'rudi kurniawan', 'Gg. Raya Setiabudhi No. 10, Pagaralam, Kalimantan Selatan 59902', '081263459333'),
(144, 'siti zulaiha', 'Gg. Bangka Raya No. 95, Kupang, Sumatera Selatan 42691', '081263071362'),
(145, 'sry dhina pohan', 'Jalan H.J Maemunah No. 26, Batam, BB 26034', '081208397658'),
(146, 'thovanni jogga', 'Gg. Jayawijaya No. 81, Pariaman, KU 13762', '081272479839'),
(147, 'tian fitra kurniawan', 'Jl. Raya Ujungberung No. 359, Kupang, BB 54600', '081238860313'),
(148, 'widya ayu azhari', 'Gang Suniaraja No. 6, Meulaboh, SS 46375', '081240432123'),
(149, 'yudiatma adrion', 'Jalan Moch. Toha No. 73, Surabaya, Kalimantan Timur 11647', '081290318801'),
(150, 'zukri rahman', 'Jalan Waringin No. 192, Pariaman, Kalimantan Selatan 80300', '081247359119'),
(151, 'andre saputra', 'Jalan Kapten Muslihat No. 250, Cirebon, KT 03695', '081296955247'),
(152, 'andrianto', 'Gg. Ronggowarsito No. 108, Tangerang, SG 51583', '081241224481'),
(153, 'andryan dwi cahyono', 'Jalan Rungkut Industri No. 45, Ternate, Jawa Timur 10308', '081248342678'),
(154, 'angga wiratama', 'Jl. Laswi No. 886, Kupang, Sulawesi Tengah 82633', '081275614822'),
(155, 'anggi desmita arini', 'Gg. Jend. A. Yani No. 264, Salatiga, Kepulauan Bangka Belitung 84591', '081203451311'),
(156, 'dewi cita rani', 'Gang Sentot Alibasa No. 856, Parepare, SB 08053', '081229234949'),
(157, 'dewi kartika sari', 'Jalan W.R. Supratman No. 47, Pekanbaru, Papua 39057', '081284320751'),
(158, 'dewi shinta octariati', 'Jl. Asia Afrika No. 555, Tegal, Sumatera Selatan 40777', '081204224175'),
(159, 'firdaus', 'Gang Waringin No. 5, Metro, Riau 32845', '081211246615'),
(160, 'fitra andri gunawan', 'Gg. Siliwangi No. 30, Surakarta, BT 38657', '081286519988'),
(161, 'indriani saritsha', 'Gg. Cikutra Timur No. 951, Lhokseumawe, DKI Jakarta 63310', '081281437382'),
(162, 'inggar wangi r', 'Gg. Wonoayu No. 2, Bukittinggi, JK 00773', '081215241523'),
(163, 'mira afriani', 'Jalan Stasiun Wonokromo No. 8, Surakarta, AC 50441', '081206932795'),
(164, 'muhammad adri', 'Jl. Kutai No. 85, Parepare, SB 84111', '081222483144'),
(165, 'muhammad alayyubi', 'Jalan Merdeka No. 7, Makassar, Gorontalo 86633', '081276743370'),
(166, 'nony chrisnayanti', 'Jl. Kutisari Selatan No. 952, Banjarmasin, Papua 62393', '081278763138'),
(167, 'nora ferwati', 'Jalan H.J Maemunah No. 4, Parepare, Jawa Tengah 02707', '081264587268'),
(168, 'nurul gayatri indah reza', 'Gang Kutai No. 737, Kota Administrasi Jakarta Pusat, Kalimantan Selatan 56185', '081286705282'),
(169, 'benny yohanes', 'Jalan Gedebage Selatan No. 836, Yogyakarta, Sulawesi Tenggara 71182', '081288009651'),
(170, 'elennuari', 'Gang Pacuan Kuda No. 1, Sawahlunto, Sulawesi Tengah 83369', '081209457729'),
(171, 'harika vaizal', 'Jalan Setiabudhi No. 96, Lubuklinggau, Sulawesi Selatan 15381', '081201755318'),
(172, 'hildayanti oktaviana', 'Jalan Rajawali Barat No. 4, Bogor, Lampung 49865', '081201769801'),
(173, 'khairul fahmi purba', 'Jl. Yos Sudarso No. 9, Pasuruan, SS 99170', '081257357627'),
(174, 'muhammad triyoga sp', 'Jl. Kapten Muslihat No. 97, Serang, SN 93240', '081243442655'),
(175, 'putri lia lestari', 'Gang Moch. Ramdan No. 56, Ambon, Kepulauan Bangka Belitung 63679', '081236446633'),
(176, 'resti yulia', 'Jalan Antapani Lama No. 87, Sibolga, Kalimantan Utara 17740', '081261790735'),
(177, 'reysa hastarimasuci', 'Gg. Kebonjati No. 133, Tanjungpinang, Nusa Tenggara Timur 39761', '081287703378'),
(178, 'reza fahlevi', 'Gang Peta No. 29, Gorontalo, MA 31483', '081246514650'),
(179, 'rhesma naca', 'Gang R.E Martadinata No. 8, Tomohon, Jawa Timur 36089', '081237505454'),
(180, 'rudi wijaya', 'Gg. Erlangga No. 73, Banjar, Sumatera Barat 70766', '081225476728'),
(181, 'suci fahma julia', 'Jl. Moch. Ramdan No. 2, Bogor, Jawa Barat 43718', '081202994018'),
(182, 'suci hijryani fitry', 'Gang Erlangga No. 87, Kota Administrasi Jakarta Pusat, AC 27097', '081212961502'),
(183, 'tika handayani asnur', 'Gang Dipatiukur No. 15, Tual, Kalimantan Tengah 86065', '081219917863'),
(184, 'tio doli raharjo', 'Gang Yos Sudarso No. 93, Kota Administrasi Jakarta Utara, Sulawesi Tengah 92165', '081206904286'),
(185, 'winda wahyuti', 'Jalan Laswi No. 02, Kota Administrasi Jakarta Barat, LA 82152', '081238520173'),
(186, 'yulia ningsih', 'Jl. Cikapayang No. 28, Ambon, Sumatera Utara 43459', '081251616276'),
(187, 'anggia anfina', 'Jalan Wonoayu No. 07, Dumai, Gorontalo 01682', '081270052483'),
(188, 'anita pauzia hsb', 'Gang Ahmad Dahlan No. 40, Banjar, RI 59773', '081215573582'),
(189, 'annisa julita sari', 'Jalan Laswi No. 7, Sorong, Kalimantan Barat 30622', '081219304243'),
(190, 'boby adi oktarino', 'Jalan Abdul Muis No. 128, Kota Administrasi Jakarta Barat, Kalimantan Tengah 14611', '081229664620'),
(191, 'dias marzal fatama', 'Gg. Rajawali Timur No. 65, Subulussalam, Kepulauan Riau 51437', '081265305542'),
(192, 'dicky mahendra', 'Jl. Siliwangi No. 118, Depok, Papua 42373', '081251872108'),
(193, 'dika aristya linardi', 'Jl. Waringin No. 504, Surabaya, Jawa Timur 25584', '081283375937'),
(194, 'elvi suryani', 'Jl. Bangka Raya No. 71, Tebingtinggi, SN 14715', '081293504211'),
(195, 'fitra miswardi', 'Jl. Moch. Ramdan No. 335, Banjar, JI 79082', '081299272923'),
(196, 'fitri meldiani', 'Jl. S. Parman No. 683, Serang, JI 26479', '081231486319'),
(197, 'husnul habib', 'Gang Gegerkalong Hilir No. 787, Pontianak, KB 89857', '081225429820'),
(198, 'irfani dwi ayu riski', 'Gg. Rungkut Industri No. 366, Parepare, DKI Jakarta 60388', '081205192800'),
(199, 'irpandi kurniawan', 'Gang Yos Sudarso No. 42, Pangkalpinang, YO 48743', '081298005137'),
(200, 'kurniawan eka putra', 'Jl. Bangka Raya No. 8, Palopo, MA 40435', '081271120550'),
(201, 'muhammad asri wisnu wardana', 'Jalan R.E Martadinata No. 69, Kota Administrasi Jakarta Timur, NB 33037', '081284816035'),
(202, 'muhammad audi reza islami', 'Gg. Sadang Serang No. 05, Bau-Bau, Sulawesi Tenggara 77926', '081292942298'),
(203, 'muhammad azmeer', 'Jalan Ahmad Dahlan No. 66, Tanjungpinang, KS 23529', '081240261494'),
(204, 'muhammad thoha', 'Jalan Rumah Sakit No. 62, Prabumulih, SU 93334', '081224745531'),
(205, 'novi gustiana', 'Gg. Sukabumi No. 1, Palembang, Jawa Tengah 26540', '081201764492'),
(206, 'novia kumala sari', 'Gang Bangka Raya No. 3, Purwokerto, Nusa Tenggara Barat 83160', '081247314018'),
(207, 'padli nofrizal', 'Gang Ciwastra No. 665, Yogyakarta, BA 33560', '081292786296'),
(208, 'putri wahyuni', 'Jalan Cihampelas No. 197, Pekalongan, Kepulauan Riau 38501', '081236748615'),
(209, 'rahmat hidayat', 'Gang Setiabudhi No. 653, Sibolga, YO 94121', '081298903258'),
(210, 'rahmi andreni', 'Gg. Lembong No. 5, Samarinda, SS 96719', '081240608226'),
(211, 'rian aries fani', 'Gg. Gardujati No. 006, Sabang, SU 28508', '081219498096'),
(212, 'riandi selvi', 'Jalan M.H Thamrin No. 80, Banjar, BT 70882', '081204440761'),
(213, 'rianto', 'Gang Sukabumi No. 37, Sungai Penuh, Kalimantan Tengah 56448', '081214491863'),
(214, 'ridha ulva', 'Gg. Raya Ujungberung No. 9, Kota Administrasi Jakarta Utara, Jambi 16175', '081293548251'),
(215, 'rizqi wahyuningsih', 'Gg. Sukabumi No. 42, Bogor, Maluku 96073', '081237036751'),
(216, 'ruwadi saputra', 'Gang Pasir Koja No. 9, Prabumulih, BA 57135', '081272818618'),
(217, 'sugeng hermawan', 'Gang Suryakencana No. 984, Banda Aceh, Riau 00505', '081281550984'),
(218, 'suliatun', 'Gang Kendalsari No. 52, Sorong, Jambi 48792', '081207183914'),
(219, 'tomi ismeidianto', 'Gang R.E Martadinata No. 4, Bandung, SU 35880', '081215957513'),
(220, 'usthalay putra', 'Gang Wonoayu No. 467, Batu, Sulawesi Barat 46313', '081275987114'),
(221, 'winggo aga septian', 'Gang Rawamangun No. 83, Kota Administrasi Jakarta Pusat, NB 18847', '081253430491'),
(222, 'yunaldi rizki putra', 'Gg. Bangka Raya No. 98, Palembang, JK 17649', '081270318733'),
(223, 'arif fasetyo', 'Gg. Sukajadi No. 41, Pekalongan, DKI Jakarta 25976', '081211922139'),
(224, 'arie rahman satria', 'Gg. Sentot Alibasa No. 7, Kupang, DKI Jakarta 70409', '081270398100'),
(225, 'arinda oktaviana', 'Jalan BKR No. 490, Tual, Maluku Utara 14868', '081248367364'),
(226, 'asri jakawendra', 'Gg. Medokan Ayu No. 0, Tegal, Sulawesi Tengah 35155', '081268017205'),
(227, 'astri stiawaty', 'Gg. Astana Anyar No. 84, Binjai, Kalimantan Barat 19035', '081212654021'),
(228, 'aszani', 'Jl. Jend. A. Yani No. 175, Tomohon, Banten 35293', '081218339141'),
(229, 'boby rahman', 'Gang Antapani Lama No. 8, Malang, Papua 27133', '081255049158'),
(230, 'dewi cahyati', 'Jalan Moch. Ramdan No. 25, Binjai, Sulawesi Selatan 37188', '081204074089'),
(231, 'dimas aditya perdana', 'Gg. Dr. Djunjunan No. 3, Kendari, Papua Barat 61324', '081252571369'),
(232, 'dinda afani', 'Gang Astana Anyar No. 194, Pagaralam, NT 88556', '081285328818'),
(233, 'doni sanjaya', 'Jl. Sadang Serang No. 0, Cirebon, BT 73734', '081255086760'),
(234, 'fitri yanti', 'Jl. Cikutra Barat No. 19, Bitung, Kalimantan Timur 76942', '081238578445'),
(235, 'hendri eka saputra', 'Gang Ciumbuleuit No. 3, Bogor, Kalimantan Timur 18581', '081226744049'),
(236, 'irwan ahmad gafur', 'Gang Ciumbuleuit No. 7, Payakumbuh, Sumatera Selatan 40140', '081214964986'),
(237, 'isa ismail', 'Jl. Dipatiukur No. 47, Palu, Sumatera Barat 37025', '081270058545'),
(238, 'kurniawan rosman a', 'Gang Dipatiukur No. 33, Pekanbaru, Sulawesi Selatan 94967', '081262356108'),
(239, 'muhammad azmy', 'Jalan Medokan Ayu No. 3, Solok, Kalimantan Timur 83730', '081228774929'),
(240, 'muhammad ilham', 'Jl. Kapten Muslihat No. 4, Malang, Lampung 71207', '081221549441'),
(241, 'muhammad sholihan', 'Gg. Joyoboyo No. 33, Serang, Maluku 59803', '081243189280'),
(242, 'novita dewi', 'Jalan Ahmad Dahlan No. 668, Tomohon, JA 20487', '081232633138'),
(243, 'novri sabli saputra', 'Jl. Ahmad Yani No. 14, Blitar, MA 22482', '081210179871'),
(244, 'pajar bahari', 'Gg. PHH. Mustofa No. 0, Makassar, BE 11372', '081276906907'),
(245, 'redha fauziah aziz', 'Gang BKR No. 47, Yogyakarta, Kalimantan Utara 86472', '081255611047'),
(246, 'ridho', 'Jl. Pasteur No. 7, Yogyakarta, Nusa Tenggara Barat 64651', '081245998132'),
(247, 'ridho fajri', 'Gang Cikutra Barat No. 5, Dumai, Sumatera Utara 60167', '081255631254'),
(248, 'ridho rismayanda', 'Gg. Cikutra Timur No. 94, Binjai, YO 56899', '081258283841'),
(249, 'ridwan candra', 'Gg. Jend. A. Yani No. 41, Mataram, NT 01011', '081233730143'),
(250, 'rosdina', 'Jalan Ronggowarsito No. 679, Sorong, YO 81548', '081277776906'),
(251, 'supriadi', 'Gg. Abdul Muis No. 66, Kupang, PA 22171', '081209745421'),
(252, 'suriyani', 'Gang Pasir Koja No. 03, Medan, Sumatera Barat 54326', '081251086065'),
(253, 'tommy zul hidayat', 'Jl. Waringin No. 37, Kotamobagu, BE 53774', '081278207345'),
(254, 'umi riyani', 'Jalan R.E Martadinata No. 3, Padang Sidempuan, Jambi 24280', '081255814439'),
(255, 'wiwik sumarmi', 'Gg. Raya Ujungberung No. 18, Palembang, SU 49743', '081244517739'),
(256, 'yuni dwi hastuti', 'Gg. Stasiun Wonokromo No. 9, Bengkulu, Nusa Tenggara Barat 70676', '081217201082'),
(257, 'aulia rahman', 'Gang Waringin No. 258, Bontang, Sulawesi Utara 65092', '081261580624'),
(258, 'agung kurniawan', 'Gg. Astana Anyar No. 3, Tasikmalaya, RI 19705', '081296720253'),
(259, 'ahmad fauzi paturusi', 'Jl. Surapati No. 565, Palangkaraya, BT 38384', '081255006942'),
(260, 'arie biola gunti masuko', 'Jalan Suniaraja No. 4, Bontang, NT 97970', '081233407437'),
(261, 'ayu andira', 'Jalan Ciwastra No. 09, Padang, Maluku 94598', '081270649599'),
(262, 'ayu dwi septiana arta', 'Jl. Raya Setiabudhi No. 15, Kotamobagu, Kalimantan Barat 19883', '081290663809'),
(263, 'azwar anas', 'Jl. Pelajar Pejuang No. 617, Banjar, Gorontalo 70271', '081294514449'),
(264, 'azwir irfan nanda', 'Jl. Pasirkoja No. 372, Tangerang, JB 90885', '081234825727'),
(265, 'budi setiawan', 'Jl. Sentot Alibasa No. 985, Palu, Kalimantan Tengah 91019', '081268784252'),
(266, 'donna febriani', 'Gg. Rajawali Barat No. 246, Medan, LA 47610', '081268289635'),
(267, 'dwi widiastuti', 'Jalan Ahmad Yani No. 928, Prabumulih, Sulawesi Barat 95964', '081203269673'),
(268, 'dwiki apsyarin', 'Jalan Pasteur No. 115, Probolinggo, Nusa Tenggara Barat 63619', '081269355492'),
(269, 'dwiza indri', 'Jalan Gegerkalong Hilir No. 5, Bima, Kalimantan Tengah 45817', '081229076992'),
(270, 'frans b jaya zalukhu', 'Gg. Ciwastra No. 885, Sawahlunto, JT 66236', '081279825792'),
(271, 'fuad harisfa', 'Jl. Dipenogoro No. 10, Parepare, SB 75205', '081219865137'),
(272, 'herman efendi', 'Gang Sukabumi No. 865, Mojokerto, Sulawesi Tengah 60109', '081242175222'),
(273, 'ichsyan rizky adi p', 'Jalan Cikutra Timur No. 686, Langsa, AC 43843', '081217347397'),
(274, 'ivo oktavianti', 'Jl. Surapati No. 66, Kota Administrasi Jakarta Barat, LA 15235', '081215946224'),
(275, 'lailatul izzati', 'Jl. Laswi No. 45, Pematangsiantar, Kepulauan Riau 08695', '081210355812'),
(276, 'muhammad oki', 'Jalan Asia Afrika No. 24, Cimahi, SG 27947', '081254102579'),
(277, 'muhammad ridho ardonis', 'Gang Suniaraja No. 7, Jambi, SB 43578', '081283032682'),
(278, 'muhammad rizqi muttaqin', 'Jl. Monginsidi No. 27, Salatiga, Bali 12705', '081225916826'),
(279, 'muhammad setyo', 'Jalan S. Parman No. 571, Probolinggo, Nusa Tenggara Barat 22741', '081233584350'),
(280, 'nur aulia hasanah', 'Gang Sentot Alibasa No. 06, Lubuklinggau, Jawa Timur 84487', '081270476094'),
(281, 'nurfatrianti', 'Gang Ahmad Dahlan No. 40, Jayapura, Sumatera Utara 08408', '081248389925'),
(282, 'pikril islami', 'Gang M.T Haryono No. 911, Probolinggo, GO 50854', '081208810151'),
(283, 'rikal', 'Jl. Dr. Djunjunan No. 691, Cirebon, Papua Barat 97050', '081232526870'),
(284, 'riyan hidayat', 'Jl. Kendalsari No. 071, Palembang, Kepulauan Bangka Belitung 05680', '081282684230'),
(285, 'rizki fatama', 'Gang KH Amin Jasuta No. 35, Padang, MU 39474', '081207412057'),
(286, 'rizkie hafizzah', 'Gg. Lembong No. 31, Parepare, Lampung 96730', '081242782040'),
(287, 'syaiful akbar', 'Jl. Indragiri No. 5, Balikpapan, LA 91207', '081261859509'),
(288, 'nu in sofyan', 'Jalan Waringin No. 9, Pekalongan, SR 12356', '081206844591'),
(289, 'sumirah', 'Gang Tebet Barat Dalam No. 240, Bukittinggi, Bengkulu 70909', '081205680837'),
(290, 'ade surahman', 'Jl. Jakarta No. 988, Salatiga, KR 26434', '081234649927'),
(291, 'kasnanto', 'Jalan Cihampelas No. 67, Sibolga, Jawa Tengah 45029', '081273565605'),
(292, 'sumirah', 'Jalan Pasir Koja No. 3, Ambon, JK 54538', '081271234490'),
(293, 'teguh wahyudi', 'Jl. Siliwangi No. 38, Purwokerto, KR 98230', '081242563399'),
(294, 'sakiyo', 'Jalan Gedebage Selatan No. 429, Manado, SR 73915', '081257245846'),
(295, 'dwi kasmini', 'Gg. Veteran No. 36, Banjarbaru, GO 75887', '081219832149'),
(296, 'laily mufarokah', 'Jalan Sentot Alibasa No. 4, Tegal, Kalimantan Utara 23527', '081261979290'),
(297, 'sigit nugroho', 'Jl. Antapani Lama No. 5, Cirebon, JA 73652', '081217786058'),
(298, 'linda rusmi wardani', 'Gg. Pelajar Pejuang No. 8, Surakarta, DI Yogyakarta 76252', '081263313005'),
(299, 'm. charly iman nugroho', 'Gang M.T Haryono No. 33, Pagaralam, Sulawesi Tengah 18663', '081271637380'),
(300, 'untung sugiono', 'Jalan Jamika No. 0, Pekanbaru, KS 02939', '081205913375');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `transaction_date` datetime NOT NULL DEFAULT current_timestamp(),
  `courier` varchar(100) DEFAULT NULL,
  `shipping_price` int(11) DEFAULT NULL,
  `items_price_total` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `customer_id`, `transaction_date`, `courier`, `shipping_price`, `items_price_total`, `grand_total`) VALUES
(1, 1, '2024-02-20 06:20:36', 'SiCepat', 10000, 2434418, 2444418),
(2, 15, '2024-02-20 06:21:07', 'SiCepat', 10000, 647423, 657423);

-- --------------------------------------------------------

--
-- Table structure for table `item_transactions`
--

CREATE TABLE `item_transactions` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_transactions`
--

INSERT INTO `item_transactions` (`id`, `invoice_id`, `product_id`, `quantity`, `sub_total`) VALUES
(1, 1, 1, 2, 1141176),
(2, 1, 1, 1, 570588),
(3, 1, 1, 2, 1141176),
(4, 1, 3, 1, 851133),
(5, 1, 33, 1, 442109),
(6, 2, 76, 1, 188172),
(7, 2, 6, 1, 459251);

--
-- Triggers `item_transactions`
--
DELIMITER $$
CREATE TRIGGER `ReduceProductStock` AFTER INSERT ON `item_transactions` FOR EACH ROW BEGIN
    UPDATE products
    SET stock = stock - NEW.quantity
    WHERE id = NEW.product_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UpdateInvoiceTotals` AFTER INSERT ON `item_transactions` FOR EACH ROW BEGIN
    UPDATE invoices
    SET items_price_total = items_price_total + NEW.sub_total,
        grand_total = grand_total + NEW.sub_total + (SELECT shipping_price FROM (SELECT shipping_price FROM invoices WHERE id = NEW.invoice_id) AS sp)
    WHERE id = NEW.invoice_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UpdateInvoiceTotals2` AFTER UPDATE ON `item_transactions` FOR EACH ROW BEGIN
    DECLARE newItemsPriceTotal INT;
    DECLARE newGrandTotal INT;

    -- Hitung ulang items_price_total untuk invoice yang bersangkutan
    SELECT SUM(sub_total) INTO newItemsPriceTotal
    FROM item_transactions
    WHERE invoice_id = NEW.invoice_id;

    -- Dapatkan shipping_price untuk invoice yang bersangkutan
    SELECT shipping_price INTO @shippingPrice
    FROM invoices
    WHERE id = NEW.invoice_id;

    -- Hitung ulang grand_total
    SET newGrandTotal = newItemsPriceTotal + @shippingPrice;

    -- Perbarui invoice dengan total yang baru
    UPDATE invoices
    SET items_price_total = newItemsPriceTotal,
        grand_total = newGrandTotal
    WHERE id = NEW.invoice_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `run_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `name`, `run_on`) VALUES
(1, '/20240130122753-create-customers-table', '2024-01-31 06:07:34'),
(2, '/20240130133004-create-product-table', '2024-01-31 06:07:34'),
(3, '/20240130133255-create-invoices-table', '2024-01-31 06:07:34'),
(4, '/20240130133537-create-item-transactions-table', '2024-01-31 06:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations_state`
--

CREATE TABLE `migrations_state` (
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `run_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations_state`
--

INSERT INTO `migrations_state` (`key`, `value`, `run_on`) VALUES
('__dbmigrate_schema__', '{}', '2024-01-31 06:07:34'),
('__dbmigrate_state__', '{\"s\":{\"step\":0,\"fin\":0,\"date\":\"2024-01-30T23:07:34.334Z\"}}', '2024-01-31 06:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `stock`, `price`) VALUES
(1, 'Gigabyte SSD M.2 512GB 2280 PCIe x2 NVMe', 95, 570588),
(2, 'BitFenix Enso Cristal Templado USB 3.0 RGB Blanca', 87, 748214),
(3, 'PNY XLR8 CS3030 250GB M.2 3D TLC NVMe PCI-Express', 79, 851133),
(4, 'PNY XLR8 CS3030 500GB M.2 3D TLC NVMe PCI-Express', 115, 511980),
(5, 'PNY XLR8 CS3030 1TB M.2 3D TLC NVMe PCI-Express', 86, 944877),
(6, 'G.Skill Trident Z Royal DDR4 3000Mhz PC4-24000 2x16GB CL16 Dorado', 25, 459251),
(7, 'BitFenix Enso Mesh Semitorre ATX Cristal Templado RGB Blanca', 16, 772389),
(8, 'BitFenix Enso Mesh Semitorre ATX Cristal Templado RGB Negra', 68, 232105),
(9, 'BitFenix Nova Semitorre ATX con Ventana Blanca', 153, 887389),
(10, 'BitFenix Nova TG Semitorre ATX Cristal Templado Blanca', 94, 934824),
(11, 'BitFenix Nova Semitorre ATX con Ventana Negra', 85, 767448),
(12, 'MSI MPG Gungnir 100 Cristal Templado USB 3.0 ARGB Negro', 162, 574658),
(13, 'BitFenix Nova TG Semitorre ATX Cristal Templado Negra', 139, 646878),
(14, 'Tempest Spectra RGB USB 3.0 con Ventana', 40, 550326),
(15, 'MSI MPG Gungnir 100P Cristal Templado USB 3.0 Negro', 181, 908893),
(16, 'MSI MAG Vampiric 010 Cristal Templado USB 3.0 ARGB Negro', 113, 359359),
(17, 'Gigabyte Aorus RGB M.2 512GB PCI Express 3.0 3D TLC NVMe', 136, 447891),
(18, 'Gigabyte Aorus RGB M.2 256GB PCI Express 3.0 3D TLC NVMe', 69, 517996),
(19, 'Nfortec Lynx Cristal Templado USB 3.0 RGB Blanco', 14, 884006),
(20, 'Nfortec Lynx Cristal Templado USB 3.0 RGB Negra', 29, 114975),
(21, 'Cooler Master MasterWatt Lite 700W 80 Plus', 37, 294277),
(22, 'Cooler Master MasterWatt Lite 500W 80 Plus', 112, 111478),
(23, 'Gigabyte P650B 650W 80 Plus Bronze ', 195, 972889),
(24, 'Mars Gaming MCX ATX Cristal Templado USB 3.0 RGB Negra', 85, 126962),
(25, 'Mars Gaming MCX ATX Cristal Templado USB 3.0 RGB Blanca', 189, 470805),
(26, 'Aerocool LUX 550M RGB 550W Bronze Semi-Modular ', 40, 265502),
(27, 'Aerocool LUX 650M RGB 650W Bronze Semi-Modular ', 151, 171759),
(28, 'Aerocool LUX 750M RGB 750W Bronze Semi-Modular ', 128, 653528),
(29, 'WD Green SATA 480GB SSD M.2 2280', 84, 301695),
(30, 'Asus GeForce RTX 2060 TUF OC 6GB GDDR6', 14, 349002),
(31, 'L-Link Kiro RGB ATX Cristal Templado USB 3.0 Negra', 70, 818721),
(32, 'Corsair Vengeance RGB Pro DDR4 3000 PC4-24000 32GB 2x16GB CL15', 122, 430637),
(33, 'Maxtor M3 Portable 4TB 2.5\" USB 3.0', 13, 442109),
(34, 'Kingston A400 SSD 120GB M.2 SATA III TLC', 100, 842414),
(35, 'Kingston A400 SSD 240GB M.2 SATA III TLC', 172, 170926),
(36, 'Tempest Shadow USB 3.0 con Ventana RGB Negro', 99, 796338),
(37, 'Tempest Ghost Cristal Templado USB 3.0 RGB Negro', 116, 734136),
(38, 'MSI GeForce GTX 1660 Gaming X 6GB GDDR5', 70, 130484),
(39, 'MSI GeForce GTX 1660 Armor OC 6GB GDDR5', 133, 356835),
(40, 'MSI GeForce GTX 1660 Ventus XS OC 6GB GDDR5', 61, 995847),
(41, 'Gigabyte GeForce GTX 1660 Gaming OC 6GB GDDR5', 133, 377550),
(42, 'Gigabyte GeForce GTX 1660 OC 6GB GDDR5', 40, 840527),
(43, 'Asus GeForce GTX 1660 Phoenix OC 6GB GDDR5', 143, 304683),
(44, 'Thermaltake Commander C31 TG ARGB Edition Cristal Templado USB 3.0', 191, 887053),
(45, 'Thermaltake Commander C32 TG ARGB Edition Cristal Templado USB 3.0', 47, 101259),
(46, 'Thermaltake Commander C33 TG ARGB Edition Cristal Templado USB 3.0', 186, 578885),
(47, 'Thermaltake Commander C34 TG ARGB Edition Cristal Templado USB 3.0', 163, 175664),
(48, 'Thermaltake Commander C35 TG ARGB Edition Cristal Templado USB 3.0', 146, 111444),
(49, 'Thermaltake Commander C36 TG ARGB Edition Cristal Templado USB 3.0', 150, 640211),
(50, 'Thermaltake Toughpower iRGB Plus 850W 80 Plus Platinum Full Modular', 62, 794905),
(51, 'Nfortec Caronte Cristal Templado USB 3.0 RGB Negro', 22, 487500),
(52, 'Nfortec Caronte Pro Cristal Templado USB 3.0 RGB Negro', 102, 660729),
(53, 'Tacens Anima AC4500 USB 3.0 + Fuente de Alimentaci�n 500W', 136, 344708),
(54, 'Tacens Anima AC4 USB 3.0 Negro', 89, 847373),
(55, 'Tacens Anima APSI500 ATX 500W', 25, 623834),
(56, 'Tacens ALU II USB 3.0 Negro', 123, 100561),
(57, 'MSI GeForce RTX 2060 Gaming 6GB GDDR6', 56, 554456),
(58, 'WD Green 480GB SATA3 SLC', 11, 201479),
(59, 'Zotac Gaming GeForce GTX 1660 AMP 6GB GDDR5', 173, 464825),
(60, 'Gigabyte B450 Aorus Elite', 74, 790316),
(61, 'Gigabyte B450 I Aorus Pro WIFI', 175, 374193),
(62, 'Gigabyte B450M S2H', 174, 811126),
(63, 'Asus Prime J4005I-C', 71, 105154),
(64, 'HP S700 250GB SSD SATA 3', 49, 935783),
(65, 'HP S700 500GB SSD SATA 3', 162, 678765),
(66, 'HP S700 250 GB M.2 SATA 3', 127, 857197),
(67, 'HP S700 Pro 256 GB SSD SATA 3', 12, 670835),
(68, 'HP S700 Pro 512 GB SSD SATA 3', 20, 932262),
(69, 'HP EX900 250GB NVMe 2280 M.2', 12, 282799),
(70, 'HP EX900 500GB NVMe 2280 M.2', 55, 881399),
(71, 'HP EX920 1TB SSD NVMe M.2', 130, 883933),
(72, 'Corsair SF750 750W SFX 80 Plus Platinum Full Modular', 53, 787084),
(73, 'Aerocool Bolt RGB USB 3.0 con Ventana', 32, 944873),
(74, 'Aerocool Klaw RGB Cristal Templado USB 3.0 Negra', 41, 968050),
(75, 'Aerocool Tor RGB Cristal Templado USB 3.0 Negra', 68, 907615),
(76, 'Aerocool Shard RGB USB 3.0 con Ventana', 82, 188172),
(77, 'Aerocool Playa RGB Cristal Templado USB 3.0', 83, 119975),
(78, 'Corsair Dominator Platinum RGB DDR4 3200MHz PC4-25600 32GB 4x8GB CL16', 194, 251166),
(79, 'HyperX Predator RGB DDR4 4000MHz 16GB 2x8GB CL19', 122, 161912),
(80, 'Enermax StarryFort SF30 Cristal Templado USB 3.0', 58, 971746),
(81, 'Enermax Revolution D.F. 650W 80 Plus Gold Full Modular', 188, 751920),
(82, 'Enermax Revolution D.F. 750W 80 Plus Gold Full Modular', 102, 359348),
(83, 'Enermax Revolution D.F. 850W 80 Plus Gold Full Modular', 125, 403375),
(84, 'Corsair Vengeance RGB Pro DDR4 3200 PC4-25600 32GB 2x16GB CL16 Negra', 182, 906228),
(85, 'Talius Xentinel USB 3.0 Blanca con Ventana', 192, 873070),
(86, 'Talius Valkyria Cristal Templado USB 3.0 RGB Negro', 35, 500237),
(87, 'Talius Fuente de Alimentaci�n 500W 80 Plus Bronze', 91, 105779),
(88, 'Talius Drakko USB 3.0 Blanca con Ventana', 131, 709978),
(89, 'Talius Vorttex USB 3.0 Negra con Ventana', 131, 860761),
(90, 'Talius Fuente de Alimentaci�n 600W 80 Plus Bronze', 62, 707834),
(91, 'Talius G�rgola Cristal Templado USB 3.0 RGB Negra', 117, 790354),
(92, 'Talius Fuente de Alimentaci�n 800W 80 Plus Bronze', 200, 570194),
(93, 'Talius Plus Fuente de Alimentaci�n 500W', 101, 842266),
(94, 'Talius Basic Fuente de Alimentaci�n 500W Negra', 97, 683891),
(95, 'Talius Indiana USB 3.0 + Fuente de Alimentaci�n 500W Negra', 114, 108796),
(96, 'Talius Cronos Cristal Templado USB 3.0 RGB', 47, 511803),
(97, 'Talius Fuente de Alimentacion 700W Modular', 136, 890792),
(98, 'Talius Minni Slim USB 3.0 + Fuente de Alimentaci�n 500W', 27, 462951),
(99, 'Talius Hydra USB 3.0 Gris con Ventana', 64, 624174),
(100, 'Talius Fuente de Alimentacion 600W', 29, 315793),
(101, 'PNY GeForce GTX 1660 Ti XLR8 Gaming OC Dual Fan 6GB GDDR6', 119, 582616),
(102, 'Talius Kraken Tornado Cristal Templado USB 3.0 Negra', 87, 788770),
(103, 'Talius Kraken Spectrum Cristal Templado USB 3.0 RGB Negra', 70, 776338),
(104, 'WD Blue SN500 SSD 250GB NVMe M.2 PCI-e 3.0', 181, 406284),
(105, 'WD Blue SN500 SSD 500GB NVMe M.2 PCI-e 3.0', 30, 582015),
(106, 'G-Technology G-Drive Mobile 1TB USB-C 3.0', 104, 396372),
(107, 'MSI GeForce GTX 1650 Ventus XS 4GB OC GDDR5', 138, 497872),
(108, 'Gigabyte GeForce GTX 1650 MINI ITX OC 4GB GDDR5', 139, 981496),
(109, 'Gigabyte GeForce GTX 1650 OC 4GB GDDR5', 116, 121561),
(110, 'MSI GeForce GTX 1650 Gaming X 4GB GDDR5', 18, 763119),
(111, 'MSI GeForce GTX 1650 AERO ITX 4GB OC GDDR5', 195, 976034),
(112, 'Asus GeForce GTX 1650 Dual 4GB OC GDDR5', 141, 261393),
(113, 'Asus GeForce GTX 1650 Rog Strix Gaming 4GB OC GDDR5', 34, 802947),
(114, 'Adata XPG Spectrix D80 DDR4 3200 PC4-25600 16GB CL16 Rojo', 166, 891447),
(115, 'Adata XPG Spectrix D80 DDR4 3200 PC4-25600 8GB 1x8GB CL16 Negro', 73, 110368),
(116, 'Adata XPG Spectrix D80 DDR4 3000 PC4-24000 32GB 2x16GB CL16 Negro', 15, 165619),
(117, 'Adata XPG Spectrix D80 DDR4 3200 PC4-25600 16GB 2x8GB CL16 Negro', 56, 769564),
(118, 'SilverStone ST75F-GS v3.0 750W 80 Plus Gold Modular', 178, 771723),
(119, 'AeroCool Cylon Pro Cristal Templado USB 3.0 Negro', 40, 308798),
(120, 'Geil Super Luce RGB Sync TUF Gaming DDR4 3200MHz PC4-25600 16GB 2x8GB CL16', 22, 126393),
(121, 'SilverStone ST1200-PTS 1200W 80 Plus Platinum Modular', 147, 231444),
(122, 'CoolBox F-750 USB 3.0 Negra', 75, 784016),
(123, 'Geil Super Luce RGB Sync DDR4 2400MHz PC4-19200 2x16GB CL16', 36, 634520),
(124, 'Thermaltake Commander C31 TG Snow ARGB Edition Cristal Templado USB 3.0', 159, 307090),
(125, 'Thermaltake Commander C34 TG Snow ARGB Edition Cristal Templado USB 3.0', 174, 395381),
(126, 'Thermaltake Toughpower GF1 650W 80 Plus Gold Full Modular', 64, 343337),
(127, 'Thermaltake Toughpower GF1 750W 80 Plus Gold Full Modular', 25, 154401),
(128, 'Thermaltake Toughpower GF1 850W 80 Plus Gold Full Modular', 126, 271148),
(129, 'Cooler Master MasterBox MB520 USB 3.0 con Ventana Blanco', 137, 193911),
(130, 'Cooler Master MasterBox MB520 USB 3.0 con Ventana Rojo', 122, 213172),
(131, 'Cooler Master MasterBox MB511 USB 3.0 con Ventana Blanco', 10, 159105),
(132, 'Cooler Master MasterBox E500 Cristal Templado USB 3.0 Negra sin ODD', 97, 846323),
(133, 'Cooler Master MasterBox E500 Cristal Templado USB 3.0 Negra con ODD', 151, 493228),
(134, 'Cooler Master MWE Gold 650 80 Plus Gold Full Modular', 91, 665602),
(135, 'Cooler Master MasterBox MB511 RGB Cristal Templado USB 3.0 Negra', 56, 731134),
(136, 'Cooler Master MasterBox K500 Cristal Templado USB 3.0 Negra', 76, 602693),
(137, 'Cooler Master Masterbox TD500 RGB USB 3.0 con Ventana', 103, 118723),
(138, 'PNY XLR8 CS3030 PCIe NVMe 2TB', 57, 203896),
(139, 'Tempest Gaming GPSU 650W', 198, 318708),
(140, 'Asus Prime B365M-A', 23, 356234),
(141, 'Asus Prime B365M-K', 159, 449178),
(142, 'Asrock J4005B-ITX', 51, 433059),
(143, 'Asus Prime H310M-K R2.0', 40, 408911),
(144, 'Asus Prime H310M-E R2.0', 134, 956835),
(145, 'Asus Prime A320M-C R2.0', 200, 373281),
(146, 'Cooler Master MasterWatt Lite 600W 80 Plus', 19, 683369),
(147, 'Cooler Master MWE Gold 750W 80 Plus Gold', 34, 127985),
(148, 'Cooler Master MWE Gold 550W 80 Plus Gold Full Modular', 68, 320838),
(149, 'Cooler Master MasterCase SL600M Cristal Templado USB 3.0', 31, 112332),
(150, 'Cooler Master MasterBox MB530P Cristal Templado USB 3.0', 24, 713687),
(151, 'Cooler Master MasterBox MB500 TUF Gaming Edition Cristal Templado USB 3.0', 134, 959815),
(152, 'Cooler Master MasterBox MB511 USB 3.0 con Ventana', 147, 222947),
(153, 'Corsair Carbide 175R RGB Cristal Templado USB 3.0', 182, 804794),
(154, 'Corsair Carbide 678C Cristal Templado USB 3.0 Negra', 132, 146081),
(155, 'Corsair Carbide 678C Cristal Templado USB 3.0 Blanca', 149, 965576),
(156, 'Corsair Crystal 680X RGB Cristal Templado USB 3.0 Negra', 130, 703970),
(157, 'Corsair Crystal 680X RGB Cristal Templado USB 3.0 Blanca', 103, 944934),
(158, 'Gigabyte Radeon RX 570 Gaming 8G MI 8GB GDDR5', 115, 880021),
(159, 'Intel Core i3-9100F 3.6GHz', 159, 922553),
(160, 'Asus Xonar U7 MKII USB Tarjeta de Sonido 7.1', 173, 926561),
(161, 'Cooler Master MasterCase H500P Mesh Cristal Templado USB 3.0', 117, 503778),
(162, 'Asus Prime A320M-R', 172, 757458),
(163, 'Asus Dual GeForce RTX 2080 EVO OC 8GB GDDR6', 45, 377212),
(164, 'Asus Phoenix GeForce GTX 1650 4GB GDDR5', 149, 589343),
(165, 'Asus Rog Strix Gaming GeForce GTX 1650 4GB GDDR5', 69, 410160),
(166, 'Asus Tuf Gaming GeForce RTX 2060 6GB GDDR6', 200, 556035),
(167, 'Thermaltake TR2 S 500W 80 Plus', 185, 173923),
(168, 'Thermaltake TR2 S 600W 80 Plus', 73, 372979),
(169, 'Corsair Vengeance LPX DDR4 3000 PC4-24000 16GB 2x8GB CL16', 172, 547505),
(170, 'WD Purple 3.5\" 12TB SATA 3', 159, 179308),
(171, 'WD Black 3.5\" 6TB SATA 3', 71, 912071),
(172, 'WD Purple 3.5\" 6TB SATA 3', 38, 215610),
(173, 'WD Elements SE 3TB 2.5\" USB 3.0 Negro', 114, 727573),
(174, 'WD Black 3.5\" 4TB SATA 3', 40, 412117),
(175, 'WD Black SN750 NVMe 500GB SSD M.2 PCI Express 3.0 con Disipador T�rmico', 187, 295944),
(176, 'WD Black SN750 NVMe 2TB SSD M.2 PCI Express 3.0', 117, 549163),
(177, 'WD Black SN750 NVMe 1TB SSD M.2 PCI Express 3.0 con Disipador T�rmico', 32, 333092),
(178, 'Corsair Vengeance LPX DDR4 2666MHz PC4-21300 8GB CL16', 55, 391807),
(179, 'Nox Hummer TGM ARGB Cristal Templado USB 3.0', 16, 692800),
(180, 'Nox Infinity Omega ARGB USB 3.0 con Ventana', 61, 829421),
(181, 'Corsair Vengeance LPX DDR4 3000MHz PC4-24000 16GB 2x8GB CL15', 55, 939005),
(182, 'Corsair Vengeance LPX DDR4 3000MHz PC4-24000 32GB 2x16GB CL15', 181, 458662),
(183, 'Nox Infinity Alpha ARGB Cristal Templado USB 3.0', 195, 368907),
(184, 'Toshiba P300 3.5\" 500GB 7200RPM SATA 3', 151, 253105),
(185, 'Toshiba Canvio Basics 2.5\" 4TB USB 3.0', 173, 398687),
(186, 'Toshiba L200 2.5\" 2TB SATA 3', 34, 196303),
(187, 'Crucial Ballistix Sport AT Dual Rank DDR4 2666 PC4-21300 2x8GB CL16', 93, 640449),
(188, 'Crucial Ballistix Sport LT Single Rank DDR4 2666 PC4-21300 2x8GB CL16', 58, 810674),
(189, 'Crucial Ballistix Elite DDR4 3600 PC4-28800 2x8GB CL18', 117, 759068),
(190, 'Toshiba L200 2.5\" 1TB SATA 3', 99, 209822),
(191, 'Kingston KC2000 1TB SSD M.2 NVMe PCIe', 75, 689714),
(192, 'Kingston KC2000 2TB SSD M.2 NVMe PCIe', 160, 109401),
(193, 'Kingston KC2000 500GB SSD M.2 NVMe PCIe', 141, 815435),
(194, 'Kingston KC2000 250GB SSD M.2 NVMe PCIe', 119, 373609),
(195, 'Aorus RGB AIC NVMe 512GB SSD ', 78, 906722),
(196, 'AMD EPYC 7351P 2.4 GHz', 171, 232433),
(197, 'WD Black SN750 NVMe 2TB SSD M.2 PCI Express 3.0 con Disipador T�rmico', 144, 458834),
(198, 'Asus Prime H310M-R R2.0 Caja Blanca', 191, 504466),
(199, 'Gigabyte Z390 Designare', 144, 107227),
(200, 'Asrock J3455B-ITX', 161, 582286),
(201, 'PNY CS900 2.5\" 120GB SSD SATA 3 TLC', 98, 704249),
(202, 'PNY CS900 2.5\" 240GB SSD SATA 3 TLC', 83, 890008),
(203, 'Seagate IronWolf 110 2.5\" 240GB SSD SATA 3 3D TLC', 191, 317924),
(204, 'Seagate IronWolf 110 2.5\" 960GB SSD SATA 3 3D TLC', 181, 294650),
(205, 'Seagate IronWolf 110 2.5\" 480GB SSD SATA 3 3D TLC', 33, 151717),
(206, 'Seagate BarraCuda 2.5\" 500GB SSD SATA 3 3D TLC', 21, 328337),
(207, 'Seagate BarraCuda 2.5\" 250GB SSD SATA 3 3D TLC', 47, 926706),
(208, 'Asus GX601 Rog Strix Helios Cristal Templado USB 3.0', 105, 638475),
(209, 'Zotac GeForce GT 710 2GB GDDR3', 123, 609402),
(210, 'AMD Ryzen 9 3900X 3.8 GHz BOX', 87, 215277),
(211, 'AMD Ryzen 7 3800X 3.9GHz BOX', 174, 476718),
(212, 'AMD Ryzen 7 3700X 3.6GHz BOX', 98, 783045),
(213, 'AMD Ryzen 5 3600 3.6GHz BOX', 192, 620786),
(214, 'AMD Ryzen 5 3400G 3.7GHz BOX', 61, 924918),
(215, 'AMD Ryzen 3 3200G 3.6 GHz BOX', 176, 832289),
(216, 'AMD Ryzen 5 3600X 3.8GHz BOX', 12, 745592),
(217, 'Nfortec Krater Cristal Templado USB 3.0 ARGB Blanco', 168, 234375),
(218, 'Nfortec Krater Cristal Templado USB 3.0 ARGB Negro', 73, 527128),
(219, 'Seagate Exos X10 3.5\" 10TB SATA3', 184, 897853),
(220, 'Crucial DDR4 2933 PC4-23400 32GB CL21', 62, 958428),
(221, 'Corsair RM650 650W 80 Plus Gold Full Modular', 73, 897737),
(222, 'Corsair RM750 750W 80 Plus Gold Full Modular', 73, 805473),
(223, 'Corsair RM850 850W 80 Plus Gold Full Modular', 155, 678501),
(224, 'Asus H110M-R', 194, 238753),
(225, 'Seagate IronWolf Pro 3.5\" NAS 16TB SATA3', 130, 519239),
(226, 'Thermaltake WaterRam RGB Liquid Cooling Memory DDR4 3200 PC4-25600 16GB 2x8GB CL16', 98, 801766),
(227, 'PNY GeForce GTX 1660 6GB GDDR5 XLR8 Gaming Overclocked Limited Edition', 124, 462088),
(228, 'Thermaltake WaterRam RGB Liquid Cooling Memory DDR4 3200 PC4-25600 32GB 4x8GB CL16', 61, 111626),
(229, 'Thermaltake DDR4 2400 PC4-19200 8GB CL17', 68, 876296),
(230, 'Intel Core i5-9500F 3GHz', 33, 111030),
(231, 'Intel Core i7-9700F 3GHz', 30, 827002),
(232, 'BitFenix Whisper M 450W 80 Plus Gold Modular Negra', 191, 870270),
(233, 'Goodram DDR4 2400 PC4-19200 16GB CL17 SODIMM', 122, 889904),
(234, 'Team Group T-Force Night Hawk RGB DDR4 3200 PC4-25600 16GB 2x8 CL16', 115, 198390),
(235, 'InWin 303 USB 3.0 Cristal Templado Blanco', 129, 751635),
(236, 'LaCie Mobile Drive 5TB 2.5\" USB-C/3.1/Thunderbolt', 176, 812566),
(237, 'Gigabyte Radeon RX 590 Gaming 8GB GDDR5', 79, 333945),
(238, 'HP S700 1TB SSD SATA 3', 181, 958024),
(239, 'LaCie Mobile Drive 1TB 2.5\" USB-C/3.1/Thunderbolt', 120, 196418),
(240, 'HP S700 120GB SSD SATA 3', 111, 434888),
(241, 'PNY CS900 2.5\" 960GB SSD SATA 3 TLC', 25, 481074),
(242, 'PNY CS900 2.5\" 480GB SSD SATA 3 TLC', 40, 322579),
(243, 'InWin 303 Aurora Edition USB 3.0 Cristal Templado Blanco', 19, 581084),
(244, 'Intel Core i7-9700 3 GHz', 199, 561759),
(245, 'Intel Core i9-9900 3.1 GHz', 128, 226142),
(246, 'Intel Celeron G4930 3.2 GHz', 142, 453375),
(247, 'WD Blue 3D Nand SSD M.2 2TB SATA3', 35, 919788),
(248, 'Intel Core i5-9500 3 GHz', 185, 464264),
(249, 'Intel Pentium Gold G5420 3.8 GHz', 12, 744300),
(250, 'Gigabyte AORUS RGB DDR4 3200 PC4-25600 2x8GB CL16', 41, 250635),
(251, 'Toshiba XG5 NVMe 1TB SSD M.2 PCIe Bulk', 82, 116884),
(252, 'Team Group T-Force Night Hawk RGB DDR4 3000 PC4-24000 16GB 2x8 CL16', 192, 648802),
(253, 'Team Group T-Force Night Hawk White RGB DDR4 3200 PC4-25600 32GB 2x16 CL16', 82, 704471),
(254, 'Team Group T-Force Night Hawk White RGB DDR4 3000 PC4-24000 16GB 2x8 CL16', 40, 618133),
(255, 'Team Group T-Force Night Hawk RGB DDR4 3200 PC4-25600 32GB 2x16 CL16', 84, 829084),
(256, 'Team Group T-Force Night Hawk RGB DDR4 3000 PC4-24000 32GB 2x16 CL16', 147, 288896),
(257, 'Team Group T-Force Night Hawk White RGB DDR4 3000 PC4-24000 32GB 2x16 CL16', 168, 640452),
(258, 'Team Group T-Force Night Hawk RGB DDR4 3600 PC4-28000 16GB 2x8 CL18', 157, 137104),
(259, 'Team Group T-Force Night Hawk RGB DDR4 4000 PC4-32000 16GB 2x8 CL18', 160, 108707),
(260, 'Team Group T-Force Night Hawk White RGB DDR4 4000 PC4-32000 16GB 2x8 CL18', 180, 594885),
(261, 'Team Group T-Force Night Hawk White RGB DDR4 3200 PC4-25600 16GB 2x8 CL16', 107, 519597),
(262, 'Team Group T-Force Night Hawk White RGB DDR4 3600 PC4-28000 16GB 2x8 CL18', 173, 799169),
(263, 'Team Group T-Force Night Hawk Legend RGB DDR4 3466 PC4-27728 16GB 2x8 CL16', 68, 963354),
(264, 'Team Group T-Force Night Hawk Legend RGB DDR4 3200 PC4-25600 16GB 2x8 CL14', 138, 277524),
(265, 'Team Group T-Force XCalibur RGB General Edition DDR4 3600 PC4-28800 16GB 2x8 CL18', 80, 133582),
(266, 'Team Group T-Force XCalibur RGB Special Edition DDR4 3600 PC4-28800 16GB 2x8 CL18', 154, 674300),
(267, 'Team Group T-Force XCalibur RGB General Edition DDR4 4000 PC4-32000 16GB 2x8 CL18', 106, 474896),
(268, 'Team Group T-Force XCalibur RGB Special Edition DDR4 4000 PC4-32000 16GB 2x8 CL18', 181, 495563),
(269, 'Nfortec Draco V2 Cristal Templado USB 3.0 RGB Blanco', 38, 841114),
(270, 'Team Group Delta RGB DDR4 2400 PC4-19200 8GB 2x4GB CL15', 36, 988320),
(271, 'Team Group Delta RGB DDR4 2400 PC4-19200 16GB 2x8GB CL15', 174, 393578),
(272, 'Team Group Delta RGB DDR4 2400 PC4-19200 32GB 2x16GB CL15', 141, 965802),
(273, 'Team Group Delta White RGB DDR4 2400 PC4-19200 16GB 2x8GB CL15', 72, 741658),
(274, 'Team Group Delta White RGB DDR4 2400 PC4-19200 32GB 2x16GB CL15', 107, 570155),
(275, 'Team Group Delta RGB DDR4 2666 PC4-21300 8GB 2x4GB CL15', 120, 906417),
(276, 'Team Group Delta RGB DDR4 2666 PC4-21300 16GB 2x8GB CL15', 20, 835045),
(277, 'Team Group Delta White RGB DDR4 2666 PC4-21300 8GB 2x4GB CL15', 132, 713300),
(278, 'Team Group Delta White RGB DDR4 2666 PC4-21300 16GB 2x8GB CL15', 37, 281889),
(279, 'Team Group Delta White RGB DDR4 2666 PC4-21300 32GB 2x16GB CL15', 46, 431714),
(280, 'Team Group Delta RGB DDR4 2666 PC4-21300 32GB 2x16GB CL15', 23, 478125),
(281, 'Team Group Delta White RGB DDR4 3000 PC4-24000 8GB 2x4GB CL16', 179, 397769),
(282, 'Team Group Delta RGB DDR4 3000 PC4-24000 8GB 2x4GB CL16', 52, 836156),
(283, 'Team Group Delta RGB DDR4 3000 PC4-24000 16GB 2x8GB CL16', 57, 142087),
(284, 'Team Group Delta RGB DDR4 3000 PC4-24000 32GB 2x16GB CL16', 82, 165976),
(285, 'Team Group Delta White RGB DDR4 3000 PC4-24000 16GB 2x8GB CL16', 164, 338403),
(286, 'Team Group Delta White RGB DDR4 3000 PC4-24000 32GB 2x16GB CL16', 34, 630386),
(287, 'Sharkoon V1000 USB 3.0 Negra', 65, 956916),
(288, 'Sharkoon V1000 Window USB 3.0 con Ventana Negra', 109, 518296),
(289, 'Sharkoon VS4-V USB 3.0 Negra', 59, 906296),
(290, 'Team Group Delta White RGB DDR4 3200 PC4-25600 16GB 2x8GB CL16', 80, 545029),
(291, 'Team Group Delta RGB DDR4 3200 PC4-25600 16GB 2x8GB CL16', 99, 448868),
(292, 'Team Group Delta White RGB DDR4 3200 PC4-25600 32GB 2x16GB CL16', 25, 542335),
(293, 'Team Group Delta RGB DDR4 3200 PC4-25600 32GB 2x16GB CL16', 145, 290340),
(294, 'Sharkoon S25-W USB 3.0 con Ventana Negra', 90, 350735),
(295, 'Sharkoon TG5 USB 3.0 Cristal Templado Negra/Azul', 90, 747326),
(296, 'Asus Prime X570-Pro', 195, 903174),
(297, 'Asus Prime X570-P', 46, 201171),
(298, 'Asus ROG Crosshair VIII Impact', 53, 261271),
(299, 'Asus ROG Crosshair VIII Hero Wi-Fi', 64, 354444),
(300, 'Asus ROG Crosshair VIII Hero', 159, 470447);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `item_transactions`
--
ALTER TABLE `item_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `item_transactions_ibfk_1` (`invoice_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations_state`
--
ALTER TABLE `migrations_state`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_transactions`
--
ALTER TABLE `item_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `item_transactions`
--
ALTER TABLE `item_transactions`
  ADD CONSTRAINT `item_transactions_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_transactions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
