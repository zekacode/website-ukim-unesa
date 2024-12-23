-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 23, 2024 at 04:00 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_ukim`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`username`, `password`) VALUES
('admin', 'pass123');

-- --------------------------------------------------------

--
-- Table structure for table `blog_ukim`
--

CREATE TABLE `blog_ukim` (
  `id_blog` int NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `departemen` enum('BPH','DPO','DPR','DHM','DPE') COLLATE utf8mb4_general_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isi` longtext COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_ukim`
--

INSERT INTO `blog_ukim` (`id_blog`, `tgl`, `departemen`, `judul`, `gambar`, `isi`) VALUES
(1, '2024-12-19 10:13:54', 'DHM', 'PENGABDIAN MASYARAKAT SEBAGAI WUJUD IMPLEMENTASI TRI DHARMA PERGURUAN TINGGI OLEH UKM UKIM UNESA 2024', './asset/gbr_blog/IMG_20241216_190235.jpg', 'PENDAHULUAN\r\n\r\nUnit Kegiatan Ilmiah Mahasiswa (UKIM) merupakan salah satu UKM yang terdapat di Universitas Negeri Surabaya. UKM UKIM mewadahi seluruh mahasiswa Unesa untuk menyalurkan potensi serta membentuk karakter berupa pengimplementasian keempat roh, yaitu roh peneliti, roh penulis, roh aktivis, dan roh wirausaha. Selain bergerak dalam penalaran, UKM UKIM juga membekali mahasiswa Unesa untuk memiliki soft skills seperti kepemimpinan, teamwork, dan berkomunikasi secara efektif. Sebagai pengimplentasian beberapa roh, yaitu roh aktivis dan roh wirausaha, maka diadakannya kegiatan berupa Pengabdian Masyarakat 2024.\r\n\r\nPengabdian Masyarakat 2024 merupakan program kerja tahunan yang diselenggarakan UKM UKIM sebagai bentuk kepedulian UKM UKIM terhadap permasalahan-permasalahan yang terdapat di masyarakat. Pengabdian Masyarakat 2024 dilakukan di Desa Sumbersari, Kecamatan Sambeng, Lamongan. Di desa tersebut telah memiliki usaha desa, namun belum memiliki pengetahuan cukup untuk memasarkan produk usaha desa ke ranah digital. Selain itu, permasalahan sampah masih menjadi suatu hal yang harus diselesaikan di desa tersebut karena pengelolaan sampah di desa tersebut masih kurang optimal. Oleh karena itu, UKIM UNESA melakukan Pengabdian Masyarakat 2024 yang meliputi kegiatan seminar kewirausahaan, diharapkan masyarakat Desa Sumbersari dapat memanfaatkan potensial yang terdapat di sekitar desa seperti pemasaran produk secara online yang akan memberikan benefit lebih besar terkait pemasaran produk. Selain itu, melalui kegiatan seminar pengelolaan sampah yang disampaikan oleh Duta Lingkungan Provinsi Jawa Timur, diharapkan masyarakat Desa Sumbersari dapat sadar akan kebersihan lingkungan dan pemanfaatan produk daur ulang dari limbah rumah tangga. Pada kedua seminar tersebut, diadakan sesi tanya jawab serta diskusi untuk menanggulangi permasalahan-permasalahan yang terjadi.\r\n\r\nPEMBAHASAN\r\n\r\nHari pertama Pengabdian Masyarakat 2024 dibuka dengan mengundang seluruh perangkat desa dan lapisan masyarakat untuk menyaksikan opening ceremony yang ditandai dengan beberapa sambutan dan pemotongan pita serta makan bersama. Dilanjutkan dengan istirahat dan rapat evaluasi untuk kelanjutan agenda besok.\r\n\r\nPada hari kedua diawali dengan sholat subuh berjamaah di masjid terdekat bersama warga sekitar. Dilanjutkan dengan senam seluruh panitia Pengabdian Masyarakat 2024. Setelah senam bersama, berikutnya adalah Sosialisasi Kewirausahaan yang diharapkan warga Desa Sumbersari dapat mengoptimalkan promosi produk melalui digital. Tidak hanya itu, terdapat tips dan diskusi antara pemateri dan peserta dengan tujuan tercapainya pemahaman yang mendalam tentang wirausaha berbasis digital. Selain Sosialisasi Kewirausahaan, sore hari dilanjutkan dengan lomba-lomba 17 Agustus yang berkolaborasi dengan Karang Taruna setempat guna memaksimalkan keberhasilan perlombaan. Sebagai penutup agenda hari kedua, dilakukan rapat evaluasi dan briefing untuk agenda hari berikutnya.\r\n\r\nHari ketiga Pengabdian Masyarakat 2024 dibuka dengan sholat subuh berjamaah, lalu dilanjutkan dengan mengajar dan sosialisasi pengelolaan sampah. Dalam mengajar memuat materi tentang tanaman toga yang diharapkan dapat mencetak peserta didik yang dapat membudidayakan tanaman toga. Sedangkan pada sosialisasi pengelolaan sampah diharapkan dapat meminimalisir pencemaran sampah. Setelah sosialisasi pengelolaan sampah dilanjutkan dengan mengajar di Taman Pendidikan al-Qur’an (TPQ) terdekat di Desa Sumbersari. Proses mengajar dilaksanakan dengan antusias anak-anak untuk belajar agama Islam. Sebagai penutup agenda hari ketiga, dilakukan rapat evaluasi harian dan briefing untuk agenda hari berikutnya. Untuk hari keempat pagi hari melakukan kegiatan yang sama dengan hari sebelumnya, namun di sore hari dilakukan gladi pentas seni dan malam penutupan ditutup dengan pentas seni yang digelar di Lapangan Voli Desa Sumbersari yang dihadiri oleh sekretaris desa dan perangkat desa lainnya serta warga Desa Sumbersari. Dalam pentas seni diis sambutan-sambutan dari ketua pelaksana, ketua umum UKIM UNESA 2024 dan kepala desa yang diwakilkan oleh sekretaris desa. Kemudian dilanjutkan oleh penampilan anak-anak Desa Sumbersari, pembagian hadiah, penyerahan sertifikat kepada pihak desa, sekolah, dan TPQ, serta penyerahan doorprize hasil undian.\r\n\r\nHari terakhir, diawali dengan kegiatan kerja bakti sekitar jalan Desa Sumbersari. Tidak hanya itu, perwakilan panitia UKIM UNESA 2024 juga berpamitan kepada kepala desa dan perangkat desa lainnya.\r\n\r\nPENUTUP\r\n\r\nBerdasarkan kegiatan Pengabdian Masyarakat 2024 yang telah dilakukan UKIM UNESA 2024, telah tercapai yang dirangkum sebagai berikut:\r\n\r\nDapat memberikan manfaat kepada warga Desa Sumbersari yang ditandai dengan melakukan kegiatan kerja bakti, memberikan fasilitas berupa seminar kewirausahan, sosialisasi pengelolaan sampah, mengajar SD dan TPQ.\r\n\r\nMeningkatkan jiwa sosial dan kepedulian Pengurus dan Anggota UKIM UNESA 2024 ditandai dengan terlaksananya kerja bakti bersama warga.\r\n\r\nMembantu mengurangi masalah yang ada di Desa Sumbersari ditandai dengan terlaksananya seluruh rangkaian acara yang terdapat di Pengabdian Masyarakat 2024.'),
(2, '2024-12-19 10:19:17', 'DPO', 'STRATEGI KEBERHASILAN KADERISASI MENUJU KEBENARAN BERSAMA UNIT KEGIATAN ILMIAH MAHASISWA UNESA MELALUI COLLABORATIVE APPROACH', './asset/gbr_blog/IMG-20241216-WA0090-min.jpg', 'PENDAHULUAN\r\n\r\nMenuju Kebenaran Bersama UKIM (MKBU) merupakan salah satu program kerja dari Departemen Pengembangan Organisasi (DPO). MKBU adalah kegiatan pengaderan tingkat dasar bagi anggota baru UKIM dimana anggota baru ini akan diberikan pembekalan pengenalan organisasi Unit Kegiatan Ilmiah Mahasiswa UNESA dan anggota baru tersebut akan dilantik sebagai bagian dari keluarga besar UKIM UNESA. Dalam kegiatan ini peserta akan diberikan materi 4 Roh yang ada di UKIM yaitu Roh Peneliti, Roh Penulis, Roh Aktivis, dan Roh Kewirausahaan. Selain materi 4 Roh tersebut, peserta juga diberikan pengenalan sejarah UKIM dari tahun berdiri 1998 hingga sekarang 2024.\r\n\r\nKegiatan Menuju Kebenaran Bersama UKIM (MKBU) ini juga mendatangkan para Demisionir dan Alumni yang berprestasi baik dibidang Esai, KTI, Debat, Puisi, BMC, dan masih banyak lagi. Tujuan agar para peserta dapat kenal para Ukimers terdahulu dan peserta dapat termotivasi untuk mengembangkan potensi diri. Oleh karena itu setiap tahunnya para Alumni diminta untuk mengisi materi 4 Roh UKIM agar para peserta dapat memahami dengan baik materi-materi tersebut.\r\n\r\nDengan adanya program kerja Menuju Kebenaran Bersama UKIM (MKBU), para anggota baru diharapkan mampu memahami dan menghayati setiap materi maupun sejarah UKIM yang disampaikan. Melalui pembekalan materi 4 Roh ini, peserta dapat menumbuhkan karakter dan keterampilan yang mendukung peran mereka sebagai bagian dari Unit Kegiatan Ilmiah Mahasiswa. Selain itu, kegiatan ini juga menjadi momen penting untuk membangun ikatan kekeluargaan antara generasi baru dengan alumni serta para demisionir. Pertemuan dan dialog langsung dengan alumni berprestasi di berbagai bidang seperti Esai, Karya Tulis Ilmiah (KTI), Debat, Puisi, dan Business Model Canvas (BMC) diharapkan mampu memotivasi peserta untuk terus mengembangkan potensi dan minatnya masing-masing. Hal ini sekaligus membuka peluang bagi mereka untuk mengikuti jejak dan prestasi yang telah dicapai para pendahulunya. Dengan demikian, kegiatan MKBU menjadi langkah awal yang penting dalam membentuk karakter unggul, inovatif, serta berwawasan luas pada anggota baru.\r\n\r\nHASIL DAN PEMBAHASAN\r\n\r\nHasil dari kegiatan Menuju Kebenaran Bersama UKIM (MKBU) yang dilaksanakan pada Jumat, 4 Oktober 2024 – Minggu, 6 Oktober 2024 di Villa Tirto Alir, kecamatan Pacet, kabupaten Mojokerto, ini menunjukkan kegiatan berjalan dengan sukses. Kegiatan diikuti 88 peserta anggota UKIM UNESA, dengan rencana awal peserta 150. Presentase kesuksesan yaitu 58,67%. Angka tersebut menunjukan adanya kemajuan presentase daripada tahun sebelumnya. Kegiatan ini juga tidak lepas dari para panitia yang telah menyukseskan acara.\r\n\r\nKuesioner ini dibuat untuk mengevaluasi bagaimana kegiatan Menuju Kebenaran Bersama UKIM berlangsung dan bertujuan untuk mendapatkan masukan maupun kritik yang bermanfaat dari setiap pengurus UKIM, yang selanjutnya digunakan untuk memperbaiki segala kekurangan kegiatan tersebut. Diharapkan dari data ini dapat memberikan pemahaman yang lebih baik tentang persepsi dan pengalaman pengurus yang paham betul alur kegiatan yang ada dilapangan, data ini menjadi dasar untuk meningkatkan keberhasilan MKBU 2025.\r\n\r\nBerdasarkan data dari kuesioner evaluasi, terdapat beberapa poin penting yang perlu menjadi perhatian untuk meningkatkan kualitas pelaksanaan kegiatan Menuju Kebenaran Bersama UKIM (MKBU) tahun 2025. Pertama, lokasi dan fasilitas menjadi aspek yang harus diperbaiki. Kapasitas villa yang digunakan dinilai kurang memadai untuk menampung seluruh peserta, panitia, dan demisionir. Oleh karena itu, disarankan untuk memilih villa dengan kapasitas lebih besar dan memastikan ketersediaan air mencukupi untuk kebutuhan selama kegiatan berlangsung. Fasilitas yang lebih baik akan mendukung kenyamanan peserta dan kelancaran acara secara keseluruhan.\r\n\r\nSelanjutnya, aspek kepanitiaan dan transportasi juga membutuhkan perhatian. Penambahan jumlah panitia menjadi langkah penting untuk mengoptimalkan pelaksanaan kegiatan. Panitia yang dipilih harus memiliki komitmen tinggi dan dilibatkan tanpa paksaan, sehingga mereka dapat bekerja dengan maksimal. Selain itu, sistem transportasi perlu ditingkatkan agar lebih efisien dan nyaman bagi semua pihak yang terlibat.\r\n\r\nPelaksanaan pengukuhan anggota baru juga perlu diperbaiki, terutama pada aspek arahan dan teknis pelaksanaan. Banyak peserta yang terlihat bingung karena kurangnya penjelasan yang sistematis sebelum acara dimulai. Oleh karena itu, penting untuk memberikan arahan yang jelas agar proses pengukuhan berjalan lancar dan lebih terstruktur.\r\n\r\nPersiapan materi dan penyusunan rundown acara menjadi elemen penting lainnya. Penentuan pemateri harus dilakukan lebih awal untuk memastikan relevansi dan kualitas materi yang disampaikan. Rundown acara juga perlu dievaluasi dengan mempertimbangkan kemungkinan kemunduran waktu, sehingga penyesuaian dapat segera dilakukan jika terjadi keterlambatan. Langkah ini akan membantu menjaga kelancaran jadwal keseluruhan.\r\n\r\nPerbaikan pada sistem konsumsi juga menjadi perhatian. Kebutuhan konsumsi untuk peserta, panitia, dan demisionir harus dipenuhi dengan baik agar tidak menimbulkan kendala selama kegiatan berlangsung. Selain itu, Steering Committee (SC) dan Ketua Pelaksana MKBU diharapkan memahami dengan baik proses pengukuhan, karena tahun ini ditemukan adanya keraguan dalam mengarahkan peserta. Pelibatan mereka dalam persiapan sejak dini akan membantu meningkatkan kualitas pelaksanaan tahun depan.\r\n\r\nDengan memperhatikan evaluasi tersebut, langkah konkret seperti peningkatan fasilitas, optimalisasi panitia, perencanaan yang matang, peningkatan kualitas materi, koordinasi transportasi, serta evaluasi dan pendampingan yang lebih baik menjadi kunci sukses MKBU 2025. Perbaikan ini diharapkan dapat meningkatkan partisipasi dan kualitas pelaksanaan kegiatan, sekaligus memperkuat semangat kekeluargaan di antara anggota UKIM UNESA.\r\n\r\nPENUTUP\r\n\r\nKegiatan Menuju Kebenaran Bersama UKIM (MKBU) tahun 2024 telah terlaksana dengan sukses meskipun masih terdapat beberapa kendala yang memerlukan perhatian dan perbaikan untuk pelaksanaan di tahun mendatang. Tingkat partisipasi peserta mencapai 58,67%, menunjukkan peningkatan dari tahun sebelumnya, meskipun belum mencapai target awal. Evaluasi menyeluruh mengidentifikasi sejumlah aspek yang perlu diperbaiki, seperti kapasitas lokasi, sistem kepanitiaan, transportasi, pelaksanaan pengukuhan, penyusunan rundown acara, konsumsi, hingga pemahaman proses pengukuhan oleh Steering Committee (SC) dan Ketua Pelaksana.\r\n\r\nUntuk tahun 2025, langkah-langkah strategis perlu dilakukan, termasuk memilih lokasi dengan fasilitas yang lebih baik, meningkatkan kualitas dan jumlah panitia, memperbaiki sistem transportasi, menyusun rundown yang fleksibel, serta memastikan semua elemen acara dipersiapkan dengan matang. Dengan pembenahan ini, diharapkan MKBU dapat mencapai tingkat partisipasi yang lebih tinggi, memberikan pengalaman yang lebih baik bagi peserta, serta membangun ikatan kekeluargaan yang lebih erat di antara generasi baru dan alumni UKIM UNESA.');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id_event` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tema` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tgl_event` date NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `tgl` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id_event`, `judul`, `tema`, `deskripsi`, `tgl_event`, `lokasi`, `gambar`, `link`, `tgl`) VALUES
(1, 'Galaksi 2024', 'Eksplorasi dan Optimalisasi Peran Generasi Muda Menuju Indonesia Emas 2045', '[𝐔𝐍𝐈𝐓 𝐊𝐄𝐆𝐈𝐀𝐓𝐀𝐍 𝐈𝐋𝐌𝐈𝐀𝐇 𝐌𝐀𝐇𝐀𝐒𝐈𝐒𝐖𝐀 𝐔𝐍𝐄𝐒𝐀]\r\n\r\n🔥𝗚𝗲𝗯𝘆𝗮𝗿 𝗟𝗼𝗺𝗯𝗮 𝗞𝗮𝗿𝘆𝗮 𝗧𝘂𝗹𝗶𝘀 𝗜𝗹𝗺𝗶𝗮𝗵 𝟮𝟬𝟮𝟰🔥\r\n\r\nHalo Sobat Ilmiah!!👋🏻\r\n\r\nGebyar Lomba Karya Tulis Ilmiah (GALAKSI) 2024 kini hadir kembali dengan lomba-lomba yang menarik dan bergengsi, salah satunya yaitu Lomba Esai. Ini adalah kesempatan emas bagi kalian yang memiliki minat menulis dan ingin menyuarakan ide-ide brilian kalian.\r\n\r\n🎖️𝗟𝗢𝗠𝗕𝗔 𝗘𝗦𝗔𝗜 (𝗠𝗮𝗵𝗮𝘀𝗶𝘀𝘄𝗮 𝗗𝟯/𝗗𝟰/𝗦𝟭)\r\n • Gelombang 1: Rp50.000,00\r\n      🗓️ 13 Mei 2024 - 4 Juni 2024\r\n • Gelombang 2: Rp60.000,00\r\n      🗓️ 5 Juni 2024 - 7 Agustus 2024 \r\n\r\n💡[𝐓𝐄𝐌𝐀 𝐆𝐀𝐋𝐀𝐊𝐒𝐈 𝟐𝟎𝟐𝟒]\r\n\"Eksplorasi dan Optimalisasi Peran Generasi Muda Menuju Indonesia Emas 2045\"\r\n\r\n🔬 [𝐒𝐔𝐁 𝐓𝐄𝐌𝐀]\r\n1. Pendidikan\r\n2. Sosial Budaya\r\n3. Ekonomi\r\n4. Kesehatan dan Lingkungan\r\n5. Teknologi\r\n6. Hukum dan Politik\r\n\r\n🏆 [𝐇𝐀𝐃𝐈𝐀𝐇]\r\n1. Uang Pembinaan \r\n2. Sertifikat \r\n3. Trophy\r\n4. Free National Talkshow\r\n\r\n💶 [𝐌𝐄𝐓𝐎𝐃𝐄 𝐏𝐄𝐌𝐁𝐀𝐘𝐀𝐑𝐀𝐍]\r\na.n/ Nur Faizah Fidaroaini\r\nBRI: 002301123369507\r\nBTN: 0037701610406166\r\nHana Bank: 10595811340\r\nDana: 087717362101\r\nGopay: 087717362101\r\n\r\n📲 [𝐊𝐎𝐍𝐅𝐈𝐑𝐌𝐀𝐒𝐈 𝐏𝐄𝐌𝐁𝐀𝐘𝐀𝐑𝐀𝐍]\r\n1. Faizah (087717362101)\r\n\r\n📞 [ 𝐂𝐎𝐍𝐓𝐀𝐂𝐓 𝐏𝐄𝐑𝐒𝐎𝐍 ]\r\n1. Lisa (085708827959)\r\n2. Rendy (089515520970)\r\n\r\n𝗟𝗶𝗻𝗸 𝗣𝗲𝗻𝗱𝗮𝗳𝘁𝗮𝗿𝗮𝗻 𝗱𝗮𝗻 𝗕𝘂𝗸𝘂 𝗣𝗮𝗻𝗱𝘂𝗮𝗻:\r\nhttps://linktr.ee/BerkasGALAKSI2024\r\n\r\nCheck our social media for further Information:\r\n𝐈𝐧𝐬𝐭𝐚𝐠𝐫𝐚𝐦: @galaksiunesa_2024 & @ukim_unesa\r\n𝐓𝐢𝐤𝐓𝐨𝐤: galaksiukimunesa \r\n𝐅𝐚𝐜𝐞𝐛𝐨𝐨𝐤: Galaksi Unesa \r\n𝐗: galaksi_unesa \r\n𝐘𝐨𝐮𝐓𝐮𝐛𝐞: UKIM UNESA', '2025-01-23', 'Universitas Negeri Surabaya', './asset/gbr_event/galaksi2024.png', 'https://linktr.ee/BerkasGALAKSI2024', '2024-12-20 16:37:25'),
(3, 'OPEN RECRUITMENT PENGURUS UKIM 2025', '-', '✨[OPEN RECRUITMENT PENGURUS UKIM 2025] ✨\r\n\r\nSALAM ILMIAH!!!\r\nUKIM JAYA✊\r\n\r\nHalo UKIMERS👋\r\nSudah siap menjadi bagian dari perubahan UKIM Unesa?🧐\r\nSudah siap untuk berkontribusi dan berinovasi bersama UKIM Unesa?🤔\r\n\r\nAda kabar menarik untuk kalian yang ingin memberikan kontribusi dan inovasi untuk UKIM Unesa kedepannya. Kami sedang membuka pendaftaran untuk pengurus baru UKIM periode 2025 🤩\r\n\r\nTunggu apa lagi? \r\nMari Bergabung Bersama Kami 😊\r\n\r\nJangan lewatkan kesempatan emas ini dan segera daftarkan dirimu 🥳\r\n\r\nPersyaratan :\r\n1. Mahasiswa aktif Unesa angkatan 2023 dan 2024\r\n2. Anggota UKIM Unesa (dibuktikan dengan KTA atau Screenshot Grup Anggota)\r\n3. Berkomitmen dan Bertanggungjawab\r\n\r\nMekanisme Pendaftaran :\r\n📝Mengunduh dan mengisi formulir pendaftaran⁣ : linktr.ee/OprecPengurusUKIM2025\r\n📝Mengisi link form pendaftaran\r\nLink Pendaftaran : bit.ly/OpenRecruitmentPengurusUKIM2025\r\n📝Masuk ke dalam grup WhatsApp untuk informasi lebih lanjut.\r\n📝Wawancara\r\n📝Pengumuman\r\n\r\n📆 Periode Pendaftaran :\r\n5 - 15 Desember 2024\r\n\r\nMore Information : \r\n📍Sekret UKIM UKM Center Lantai 2 Unesa Ketintang\r\n📱 wa.me/6285239136595 (Rona)\r\n    wa.me/6285955258254 (Khakim)\r\n      \r\nTunggu apalagi, Yuk segera daftarkan dirimu menjadi Pengurus UKIM 2025\r\n\r\nSALAM ILMIAH!!!\r\nUKIM JAYA✊\r\n\r\n-𝐀𝐤𝐮𝐧 𝐑𝐞𝐬𝐦𝐢 𝐔𝐊𝐈𝐌-\r\n𝐈𝐧𝐬𝐭𝐚𝐠𝐫𝐚𝐦: @𝐮𝐤𝐢𝐦_𝐮𝐧𝐞𝐬𝐚\r\n𝐓𝐢𝐤𝐭𝐨𝐤 : @𝐮𝐤𝐢𝐦_𝐮𝐧𝐞𝐬𝐚\r\nX : @𝐮𝐤𝐢𝐦_𝐮𝐧𝐞𝐬𝐚\r\n𝐖𝐞𝐛𝐬𝐢𝐭𝐞 : 𝐮𝐤𝐢𝐦.𝐮𝐧𝐞𝐬𝐚.𝐚𝐜.𝐢𝐝\r\n𝐘𝐨𝐮𝐭𝐮𝐛𝐞 : 𝐔𝐊𝐈𝐌 𝐔𝐍𝐄𝐒𝐀', '2025-01-03', 'Sekret UKIM UKM Center Lantai 2 Unesa Ketintang', './asset/gbr_event/oprec24.jpeg', 'bit.ly/OpenRecruitmentPengurusUKIM2025', '2024-12-20 20:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `karya_cipta`
--

CREATE TABLE `karya_cipta` (
  `id_karya` int NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kategori` enum('Ilmiah','Non Ilmiah') COLLATE utf8mb4_general_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isi` longtext COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karya_cipta`
--

INSERT INTO `karya_cipta` (`id_karya`, `tgl`, `kategori`, `judul`, `isi`) VALUES
(1, '2024-12-19 09:37:44', 'Ilmiah', 'Perempuan Harus Lebih Menutup Pakaian Agar Bisa Disebut Menjaga Diri | [Kajian Aktivis]', 'Tidak hanya tingkah laku dan tutur kata, pakaian dapat menggambarkan citra diri atau self image seseorang. Tingkat citra diri dalam diri seseorang dapat rendah maupun tinggi. Individu yang memiliki citra diri yang tinggi dapat mengembangkan dirinya karena menyadari aset yang dimilikinya harus dijaga dan dihormati. Cara berpakaian juga merupakan salah satu bentuk komunikasi, antara lain bagaimana kita ingin dilihat oleh orang lain dan seperti apa kita ingin diperlakukan. Bahkan suatu ungkapan Jawa mengatakan “ Ajining raga ana ing busana” yang artinya pakaian juga berperan penting bagi seseorang. Orang dengan busana atau pakaian yang rapi tentunya dapat menaikkan martabat. Dengan kata lain, busana atau pakaian secara fisik mencerminkan siapa diri kita sebenarnya.\r\n\r\n  Dalam relasi sosial, citra diri wanita semakin jelas dilihat tempatnya. Seorang perempuan yang berpakaian tertutup dianggap lebih menghargai kenyamanan pemakainya namun juga nyaman di mata orang lain. Lebih nyaman dikarenakan perempuan yang memakai pakaian tertutup tentunya merasa melindungi bagian-bagian atau aset penting yang dimilikinya tanpa khawatir orang lain melihat atau bahkan menjamah bagian-bagian atau aset penting ini. \r\n\r\nPakaian tertutup menjadi upaya preventif agar tidak terjadi objektifikasi. Hal ini selaras dengan jurnal edukasi yang dilakukan oleh UIN Jakarta tahun 2019 dimana meneliti bahwa salah satu upaya preventif untuk menangani objektifikasi tubuh adalah melalui dengan busana yang berfungsi untuk menutup bagian tubuh tertentu. Segi lainnya menurut analisis survei BBC tahun 2020 tentang hasil survei terbaru mengenai pelecehan seksual di ruang publik. Dalam temuan survei, mayoritas korban pelecehan seksual di ruang publik mengenakan baju terbuka, dengan presentasi lebih dari 82%, sedangkan bagi mereka yang menggunakan pakaian tertutup dengan prsentasi terendah mulai dari 16-18% saja. Sementara itu, meninjau psikologi pria dengan penelitian yang dilakukan pada pria di inggris menunjukkan bahwa lebih dari 50 persen pria mengaku akan lebih menghormati wanita yang berpakaian tertutup, sementara sekitar 25 persen mengaku hal itu bergantung pada wanitanya. Hanya 22 persen pria yang mengatakan dia akan menghargai wanita yang berpakaian terbuka. Artinya salah satu upaya preventif agar tidak terjadi objektifikasi adalah dengan modifikasi pakaian dengan tertutup.\r\n\r\nSelain itu, adat ketimuran di Indonesia identik dengan pakaian yang tertutup. Standard tertutup masyarakat Indonesia bukan hanya dari sudut pandang agama Islam, tetapi juga mengacu pada nilai kesopanan dan etika masyarakat Indonesia. Dapat dikatakan pakaian tertutup bukan hanya yang memakai hijab saja, mengingat ideologi Indonesia adalah Pancasila, beragam agama, suku bangsa hingga budaya. Berpakaian tertutup ini artinya berpakaian yang sopan dan sesuai dengan kondisi dan situasi. Sehingga perlu disikapi bagaimana standard pakaian tertutup tersebut. Pakaian yang baik tidak hanya terbatas berdasarkan potensi yang dimiliki, menghargai diri sendiri, dan percaya diri yang akan memudahkan individu melakukan berbagai hal namun dapat menutupi bagian-bagian atau aset penting yang dimiliki.\r\n\r\nSeorang perempuan harus berupaya untuk menutup diri agar bisa dianggap menjaga diri. Dengan cara menutup diri tersebut sama saja dengan melindungi diri dari hal-hal yang dapat menimbulkan kejahatan. Beda halnya dengan seorang yang tidak menutup diri, seorang perempuan yang tidak menutup diri akan berpotensi  menjadi korban kejahatan seperti pemerkosaan ataupun tindak kriminal lainnya. Hal ini akan berbanding terbalik dengan perempuan yang senantiasa menutup dirinya. Orang yang jahat merasa tidak tertarik dengan wanita yang serba tertutup karena menampilan mereka yang misterius membuat pelaku kejahatan menjadi enggan menjahatinya.\r\n\r\nOleh : Tim Pro 2 Kajian Aktivis Season 1 (Nadi Harvita, dkk.)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `blog_ukim`
--
ALTER TABLE `blog_ukim`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `karya_cipta`
--
ALTER TABLE `karya_cipta`
  ADD PRIMARY KEY (`id_karya`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_ukim`
--
ALTER TABLE `blog_ukim`
  MODIFY `id_blog` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id_event` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `karya_cipta`
--
ALTER TABLE `karya_cipta`
  MODIFY `id_karya` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
