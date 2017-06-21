/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50717
Source Host           : localhost:3307
Source Database       : klinik_keuangan_daerah

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-12 08:29:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bidangs
-- ----------------------------
DROP TABLE IF EXISTS `bidangs`;
CREATE TABLE `bidangs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_bidang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sub` int(11) DEFAULT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bidangs
-- ----------------------------
INSERT INTO `bidangs` VALUES ('1', 'BAPPEDA', '0', null, null, null, null);
INSERT INTO `bidangs` VALUES ('2', 'BPKAD - Anggaran', '1', 'BPKAD', null, null, null);
INSERT INTO `bidangs` VALUES ('3', 'BPKAD - Bid Perbendaharaan Akuntansi', '1', 'BPKAD', null, null, null);
INSERT INTO `bidangs` VALUES ('4', 'BPKAD - Bid Asset Daerah', '1', 'BPKAD', null, null, null);
INSERT INTO `bidangs` VALUES ('5', 'Inspektorat', '0', null, null, null, null);
INSERT INTO `bidangs` VALUES ('6', 'Bagian Pengadaan', '0', null, null, null, null);
INSERT INTO `bidangs` VALUES ('7', 'DISPERMADES', '0', null, null, null, null);
INSERT INTO `bidangs` VALUES ('8', 'SETDA - SSH', '1', 'SETDA', null, null, null);
INSERT INTO `bidangs` VALUES ('9', 'SETDA - ASB', '1', 'SETDA', null, null, null);

-- ----------------------------
-- Table structure for buku_tamus
-- ----------------------------
DROP TABLE IF EXISTS `buku_tamus`;
CREATE TABLE `buku_tamus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bidang_id` int(11) DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skpd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lampiran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sudah_tanya` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of buku_tamus
-- ----------------------------
INSERT INTO `buku_tamus` VALUES ('7', '1', 'brillian musyafa', '213123123', '4', 'jl waringin 15 no 255 btn curug griya pangkah indah\r\nkec pangkah kab tegal', '+6285741167889', null, '2017-05-09 03:02:41', '2017-05-09 03:29:08', '0');
INSERT INTO `buku_tamus` VALUES ('8', '5', 'dikun', '928392389', '5', 'jakarta', '029302930', null, '2017-05-09 03:35:56', '2017-05-09 03:36:05', '1');
INSERT INTO `buku_tamus` VALUES ('9', '9', 'desi', '28937238928', '11', 'kalisapu', '023823829', null, '2017-05-09 04:00:25', '2017-05-09 04:01:13', '1');

-- ----------------------------
-- Table structure for kategories
-- ----------------------------
DROP TABLE IF EXISTS `kategories`;
CREATE TABLE `kategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_group` int(11) DEFAULT NULL,
  `nama_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kategories
-- ----------------------------
INSERT INTO `kategories` VALUES ('1', 'BAPPEDA', null, 'Konsultasi Perencanaan Daerah (RPJMD, RKPD, KUA, PPAS, RENJA, RENSTRA)', null, '2017-05-03 05:32:16', '085741167889 (Brillian Musayfa)');
INSERT INTO `kategories` VALUES ('2', 'BPKAD', null, 'Konsiltasi penganggaran, penatausahaan, pertanggungjawaban keuangan daerah, pengelolaan aset daerah)', null, '2017-05-09 03:57:47', '02831111111 (BPKAD)');
INSERT INTO `kategories` VALUES ('3', 'Inspektorat', null, 'Konsiltasi permasalahan keuangan daerah', null, '2017-05-09 03:57:57', '0283378738 (Inspektorat)');
INSERT INTO `kategories` VALUES ('4', 'Bagian Pengadaan', null, 'Konsultasi pelaksanaan pengadaan barang jasa', null, null, null);
INSERT INTO `kategories` VALUES ('5', 'DISPERMADES', null, 'Konsultasi keuangan desa', null, null, null);
INSERT INTO `kategories` VALUES ('6', 'Bagian Keuangan', null, 'Konsultasi terkait SSH dan ASB', null, null, null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2017_04_20_093133_addrole_users_table', '1');
INSERT INTO `migrations` VALUES ('4', '2017_04_20_093621_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('5', '2017_05_02_200759_create_buku_tamus_table', '2');
INSERT INTO `migrations` VALUES ('6', '2017_05_03_005918_create_pertanyaans_table', '2');
INSERT INTO `migrations` VALUES ('7', '2017_05_03_032536_create_kategories_table', '3');
INSERT INTO `migrations` VALUES ('8', '2017_05_03_052134_create_skpds_table', '3');
INSERT INTO `migrations` VALUES ('9', '2017_05_04_025845_create_bidangs_table', '4');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for pertanyaans
-- ----------------------------
DROP TABLE IF EXISTS `pertanyaans`;
CREATE TABLE `pertanyaans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `buku_tamu_id` int(11) NOT NULL,
  `pertanyaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lampiran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pertanyaans
-- ----------------------------
INSERT INTO `pertanyaans` VALUES ('3', '7', 'sudah tanya', 'tanya apa? kalo tanya yang jelas.', '2', '2017-05-09 03:29:08', '2017-05-09 08:11:45', 'E:\\APPLICATION\\xampp_php56\\tmp\\php23AD.tmp');
INSERT INTO `pertanyaans` VALUES ('4', '8', 'tanya ke inspektorat', 'bisa langsung datang ke stand klinik keuangan daerah', '1', '2017-05-09 03:36:05', '2017-05-09 03:52:19', null);
INSERT INTO `pertanyaans` VALUES ('5', '9', 'tentang SETDA ASD', null, null, '2017-05-09 04:01:13', '2017-05-09 04:01:13', null);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Admin', null, '2017-05-09 07:51:55', '2017-05-09 07:51:55');
INSERT INTO `roles` VALUES ('2', 'Bidang', null, '2017-05-09 07:52:03', '2017-05-09 07:52:03');

-- ----------------------------
-- Table structure for skpds
-- ----------------------------
DROP TABLE IF EXISTS `skpds`;
CREATE TABLE `skpds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_skpd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of skpds
-- ----------------------------
INSERT INTO `skpds` VALUES ('1', 'Dinas Pekerjaan Umum', '2017-02-14 07:47:33', '2017-02-14 07:47:33');
INSERT INTO `skpds` VALUES ('2', 'Dinas Perumahan Rakyat, Kawasan Permukiman, Tata Ruang dan Pertanahan', '2017-02-14 07:52:54', '2017-02-14 07:52:54');
INSERT INTO `skpds` VALUES ('3', 'Dinas Kesehatan', '2017-02-14 07:54:17', '2017-02-14 07:54:17');
INSERT INTO `skpds` VALUES ('4', 'Dinas Sosial', '2017-02-14 07:54:53', '2017-02-14 07:54:53');
INSERT INTO `skpds` VALUES ('5', 'Dinas Pendidikan dan Kebudayaan', '2017-02-14 07:55:05', '2017-02-14 07:55:05');
INSERT INTO `skpds` VALUES ('6', 'Dinas Perindustrian dan Tenaga Kerja', '2017-02-14 07:55:15', '2017-02-14 07:55:15');
INSERT INTO `skpds` VALUES ('7', 'Dinas Pemberdayaan Perempuan, Perlindungan Anak, Pengendalian Penduduk dan KB', '2017-02-14 07:55:25', '2017-02-14 07:55:25');
INSERT INTO `skpds` VALUES ('8', 'Satuan Polisi Pamong Praja', '2017-02-14 07:55:39', '2017-02-14 07:55:39');
INSERT INTO `skpds` VALUES ('9', 'Dinas Lingkungan Hidup', '2017-02-14 07:55:48', '2017-02-14 07:55:48');
INSERT INTO `skpds` VALUES ('10', 'Dinas Pemberdayaan Masyarakat dan Desa', '2017-02-14 07:55:56', '2017-02-14 07:55:56');
INSERT INTO `skpds` VALUES ('11', 'Dinas Perhubungan', '2017-02-14 07:56:05', '2017-02-14 07:56:05');
INSERT INTO `skpds` VALUES ('12', 'Dinas Komunikasi dan Informatika', '2017-02-14 07:56:15', '2017-02-14 07:56:15');
INSERT INTO `skpds` VALUES ('13', 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', '2017-02-14 07:56:24', '2017-02-14 07:56:24');
INSERT INTO `skpds` VALUES ('14', 'Dinas Pariwisata, Pemuda dan Olahraga', '2017-02-14 07:56:32', '2017-02-14 07:56:32');
INSERT INTO `skpds` VALUES ('15', 'Dinas Kearsipan dan Perpustakaan', '2017-02-14 07:56:39', '2017-02-14 07:56:39');
INSERT INTO `skpds` VALUES ('16', 'Dinas Pertanian dan Ketahanan Pangan', '2017-02-14 07:56:46', '2017-02-14 07:56:46');
INSERT INTO `skpds` VALUES ('17', 'Dinas Kelautan, Perikanan dan Peternakan', '2017-02-14 07:56:54', '2017-02-14 07:56:54');
INSERT INTO `skpds` VALUES ('18', 'Dinas Perdagangan, Koperasi dan Usaha Kecil Menengah', '2017-02-14 07:57:03', '2017-02-14 07:57:03');
