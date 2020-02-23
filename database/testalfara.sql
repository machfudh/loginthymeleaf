-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2020 at 10:02 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testalfara`
--

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` varchar(36) NOT NULL,
  `id_kota` varchar(36) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `id_kota`, `kode`, `nama`) VALUES
('3e12313d-3723-4800-856d-2719e3b5ce1f', '22786d65-4921-4af1-9063-2f963b231f21', '310101', 'Kepulauan Seribu Utara'),
('1b8d9059-8022-4471-bc34-f336b371c0a0', '22786d65-4921-4af1-9063-2f963b231f21', '310102', 'Kepulauan Seribu Selatan.'),
('91f663d2-45ae-456e-afa4-af0571d2fe70', '03c76de0-e1be-409b-a3cc-f8a00148f979', '317101', 'Gambir'),
('cc2f3b03-4db4-4dfc-afda-fd0959e253c4', '03c76de0-e1be-409b-a3cc-f8a00148f979', '317102', 'Sawah Besar'),
('db086e60-6273-41b1-b966-611ab7263fc0', '03c76de0-e1be-409b-a3cc-f8a00148f979', '317103', 'Kemayoran'),
('707acef6-6daa-4894-a3fb-ff7995e479c1', '03c76de0-e1be-409b-a3cc-f8a00148f979', '317104', 'Senen'),
('0e6a9278-25ac-4613-ad4a-9124996fc4f7', '03c76de0-e1be-409b-a3cc-f8a00148f979', '317105', 'Cempaka Putih'),
('d9acce16-2d80-42dd-96f0-5799d692f65f', '03c76de0-e1be-409b-a3cc-f8a00148f979', '317106', 'Menteng'),
('73784738-f978-4cef-a1bb-217860473904', '03c76de0-e1be-409b-a3cc-f8a00148f979', '317107', 'Tanah Abang'),
('6798a495-2815-45ac-9034-34bc21419496', '03c76de0-e1be-409b-a3cc-f8a00148f979', '317108', 'Johar Baru'),
('1cddb633-1dfb-4b5c-9ee4-d2740e4e7010', 'b1845f23-7dcd-4add-94de-09f17583496b', '317201', 'Penjaringan'),
('991e87a7-8e90-4465-9155-62a126a02aab', 'b1845f23-7dcd-4add-94de-09f17583496b', '317202', 'Tanjung Priok'),
('4b33f00e-8779-49a7-a4ce-35e977962209', 'b1845f23-7dcd-4add-94de-09f17583496b', '317203', 'Koja'),
('4a5650fe-32d8-4c0b-9caa-b1e71a87a1e9', 'b1845f23-7dcd-4add-94de-09f17583496b', '317204', 'Cilincing'),
('0e9eced0-1674-4cc5-95fa-233da5ea909d', 'b1845f23-7dcd-4add-94de-09f17583496b', '317205', 'Pademangan'),
('73cd2be9-b4e1-4c89-9304-4d173429037a', 'b1845f23-7dcd-4add-94de-09f17583496b', '317206', 'Kelapa Gading'),
('82dfa6a3-ce7c-4836-ab7f-dc28f90b5c4d', 'a27f99cd-5efb-4d7c-b9b2-b395cba03734', '317301', 'Cengkareng'),
('d8d11221-3409-4ae9-b14f-93bcd3bbd771', 'a27f99cd-5efb-4d7c-b9b2-b395cba03734', '317302', 'Grogol Petamburan'),
('4a7daf5f-5e9e-4fbf-92f8-51493f230858', 'a27f99cd-5efb-4d7c-b9b2-b395cba03734', '317303', 'Taman Sari'),
('cb9ee459-70ee-47a8-88d0-efd08096bf24', 'a27f99cd-5efb-4d7c-b9b2-b395cba03734', '317304', 'Tambora'),
('21896797-f558-458f-b72a-0caa8930cd69', 'a27f99cd-5efb-4d7c-b9b2-b395cba03734', '317305', 'Kebon Jeruk'),
('9e3bd92a-9425-418e-b22f-7630cdeae201', 'a27f99cd-5efb-4d7c-b9b2-b395cba03734', '317306', 'Kalideres'),
('1c125b4a-add5-48ba-9417-3e60c0646028', 'a27f99cd-5efb-4d7c-b9b2-b395cba03734', '317307', 'Pal Merah'),
('1602255f-f001-4dcd-bd5a-06450f73a98c', 'a27f99cd-5efb-4d7c-b9b2-b395cba03734', '317308', 'Kembangan'),
('2646698f-d96f-41ff-9703-780db52e792f', '	520c6862-1a09-47b9-8ef1-680113ee105', '317401', 'Tebet'),
('303a28f1-baa4-46a1-9418-cc6ef6d36c14', '520c6862-1a09-47b9-8ef1-680113ee1053', '317402', 'Setiabudi'),
('bec389ee-11e5-427b-8423-a717b1fd8f37', '520c6862-1a09-47b9-8ef1-680113ee1053', '317403', 'Mampang Prapatan'),
('735e55c9-98b7-4c21-af69-8653d674f5e6', '520c6862-1a09-47b9-8ef1-680113ee1053', '317404', 'Pasar Minggu'),
('e87bb16c-4c7c-4730-8fd5-273d6281b74e', '520c6862-1a09-47b9-8ef1-680113ee1053', '317405', 'Kebayoran Lama'),
('95c0f725-4561-4628-b250-49e3aa54a968', '520c6862-1a09-47b9-8ef1-680113ee1053', '317406', 'Cilandak'),
('71410b32-4995-4b3f-b76f-2ab9fbd83dc3', '520c6862-1a09-47b9-8ef1-680113ee1053', '317407', 'Kebayoran Baru'),
('d6827a9c-2a12-4041-9616-4929fcdfd0bb', '520c6862-1a09-47b9-8ef1-680113ee1053', '317408', 'Pancoran'),
('8aa6d6fb-14cb-4a76-847f-99fef1dfdbc4', '520c6862-1a09-47b9-8ef1-680113ee1053', '317409', 'Jagakarsa'),
('5b4e11fa-ec5f-424f-b5cc-674f56123c8a', '520c6862-1a09-47b9-8ef1-680113ee1053', '317410', 'Pesanggrahan'),
('ae62947e-0778-4e05-93dd-3e1688b089b3', 'c551395d-3850-4410-abf2-e0105d238bd4', '317501', 'Matraman'),
('f7c39148-d071-4f37-9a67-c4091763e704', 'c551395d-3850-4410-abf2-e0105d238bd4', '317502', 'Pulogadung'),
('04602c67-7ddd-4e7d-a940-ac7165616d77', 'c551395d-3850-4410-abf2-e0105d238bd4', '317503', 'Jatinegara'),
('25cc2c06-4107-4d70-9935-bab275fa72bb', 'c551395d-3850-4410-abf2-e0105d238bd4', '317504', 'Kramatjati'),
('4a029f64-a750-4c3a-9440-7f3d79309904', 'c551395d-3850-4410-abf2-e0105d238bd4', '317505', 'Pasar Rebo'),
('ca2fc413-7f36-42df-b172-5a534b71f8d3', 'c551395d-3850-4410-abf2-e0105d238bd4', '317506', 'Cakung'),
('48af4d4a-13d2-49f7-a950-292326ccda83', 'c551395d-3850-4410-abf2-e0105d238bd4', '317507', 'Duren Sawit'),
('4ddcc46a-4c6a-408b-af70-3d6f297d297d', 'c551395d-3850-4410-abf2-e0105d238bd4', '317508', 'Makasar'),
('9092b23f-69ed-403c-838f-f9c3508d04f7', 'c551395d-3850-4410-abf2-e0105d238bd4', '317509', 'Ciracas'),
('f165125e-395d-4a4d-b6f3-e65ba9f00117', 'c551395d-3850-4410-abf2-e0105d238bd4', '317510', 'Cipayung');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id` varchar(36) NOT NULL,
  `id_kecamatan` varchar(36) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pos` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id`, `id_kecamatan`, `kode`, `nama`, `pos`) VALUES
('e3d7a7ab-85f5-4a69-a0c0-9b5797988a17', '3e12313d-3723-4800-856d-2719e3b5ce1f', '3101011001', 'Pulau Panggang', '14530'),
('8d1ca201-66c4-4775-aecd-fc4d7b0d13d4', '3e12313d-3723-4800-856d-2719e3b5ce1f', '3101011002', 'Pulau Kelapa', '14540'),
('dd6dd270-b27b-4784-ba05-6cbca0f406a4', '3e12313d-3723-4800-856d-2719e3b5ce1f', '3101011003', 'Pulau Harapan', '14540'),
('bf5e2531-c172-4cae-8849-5f8667dc4ace', '1b8d9059-8022-4471-bc34-f336b371c0a0', '3101021001', 'Pulau Untung Jawa', '14510'),
('ea9040dc-25bc-4523-89e7-8ca7ccbfbe6f', '1b8d9059-8022-4471-bc34-f336b371c0a0', '3101021002', 'Pulau Tidung', '14520'),
('e94445fa-0d12-44af-8986-3cea426c9dcb', '1b8d9059-8022-4471-bc34-f336b371c0a0', '3101021003', 'Pulau Pari', '14520'),
('8e090aee-2388-494a-abfc-1d4b4a283f13', '91f663d2-45ae-456e-afa4-af0571d2fe70', '3171011001', 'Gambir', '10110'),
('c4e3507c-77d9-428d-ba43-30af99caa238', '91f663d2-45ae-456e-afa4-af0571d2fe70', '3171011002', 'Cideng', '10150'),
('f7883dbd-7ab6-4695-bc2e-872f81116f67', '91f663d2-45ae-456e-afa4-af0571d2fe70', '3171011003', 'Petojo Utara', '10130'),
('a65a78fe-5a66-4b49-971e-71f73a374fd6', '91f663d2-45ae-456e-afa4-af0571d2fe70', '3171011004', 'Petojo Selatan', '10160'),
('958adff3-cad8-4090-b879-305bb563f6f2', '91f663d2-45ae-456e-afa4-af0571d2fe70', '3171011005', 'Kebon Kelapa', '10120'),
('de4759cd-2040-41c7-b546-6f47b44eab29', '91f663d2-45ae-456e-afa4-af0571d2fe70', '3171011006', 'Duri Pulo', '10140'),
('6e8dcf8e-44a6-4aaf-b087-5bac3947163b', 'cc2f3b03-4db4-4dfc-afda-fd0959e253c4', '3171021001', 'Pasar Baru', '10710'),
('1b7c4ca5-c36b-4b96-b122-92edf517ae09', 'cc2f3b03-4db4-4dfc-afda-fd0959e253c4', '3171021002', 'Karang Anyar', '10740'),
('3c0184be-e52e-4015-93cb-52d0ff617863', 'cc2f3b03-4db4-4dfc-afda-fd0959e253c4', '3171021003', 'Kartini', '10750'),
('f1e0d464-9344-4905-b031-9f8b5c9227ea', 'cc2f3b03-4db4-4dfc-afda-fd0959e253c4', '3171021004', 'Gunung Sahari Utara', '10720'),
('9a3696dc-fd81-4661-ac64-c3c85d783ece', 'cc2f3b03-4db4-4dfc-afda-fd0959e253c4', '3171021005', 'Mangga Dua Selatan', '10730'),
('ec2d661d-8472-44b0-8fba-832f61d2d642', 'db086e60-6273-41b1-b966-611ab7263fc0', '3171031001', 'Kemayoran', '10620'),
('4a14acbb-197d-4a75-8401-c29e4e5248c3', 'db086e60-6273-41b1-b966-611ab7263fc0', '3171031002', 'Kebon Kosong', '10630'),
('3eb3f78f-3c88-480d-86c4-a695ccf02caf', 'db086e60-6273-41b1-b966-611ab7263fc0', '3171031003', 'Harapan Mulia', '10640'),
('30f20ed3-b411-45e1-8b62-dd26ca07ca70', 'db086e60-6273-41b1-b966-611ab7263fc0', '3171031004', 'Serdang', '10650'),
('106fee2b-52de-4e71-947e-fd9be9210000', 'db086e60-6273-41b1-b966-611ab7263fc0', '3171031005', 'Gunung Sahari Selatan', '10610'),
('d32c9c78-ebea-4101-ad72-46c0f8fc15ee', 'db086e60-6273-41b1-b966-611ab7263fc0', '3171031006', 'Cempaka Baru', '10640'),
('d65e2e3e-860e-4980-9b39-2f1bddb7235a', 'db086e60-6273-41b1-b966-611ab7263fc0', '3171031007', 'Sumur Batu', '10640'),
('ed25cf59-ac7f-46e3-8d76-3515aad8c9a4', 'db086e60-6273-41b1-b966-611ab7263fc0', '3171031008', 'Utan Panjang', '10650'),
('edce5882-1517-48b8-87e3-84b094e4d875', '707acef6-6daa-4894-a3fb-ff7995e479c1', '3171041001', 'Senen', '10410'),
('769a2342-baed-42eb-ac8b-da767a52fd86', '707acef6-6daa-4894-a3fb-ff7995e479c1', '3171041002', 'Kenari', '10430'),
('b37a1693-f345-4a8e-9097-c3456810f9d9', '707acef6-6daa-4894-a3fb-ff7995e479c1', '3171041003', 'Paseban', '10440'),
('7990436d-278b-4417-9a74-f08603e3a362', '707acef6-6daa-4894-a3fb-ff7995e479c1', '3171041004', 'Kramat', '10450'),
('4c20ba5c-fbd6-42b0-ac06-360ac890a4cd', '707acef6-6daa-4894-a3fb-ff7995e479c1', '3171041005', 'Kwitang', '10420'),
('8529d9f3-c350-4600-8f6e-d372823a39bd', '707acef6-6daa-4894-a3fb-ff7995e479c1', '3171041006', 'Bungur', '10460'),
('e0698d40-d3cf-42f2-9df7-f1e843aafb7a', '0e6a9278-25ac-4613-ad4a-9124996fc4f7', '3171051001', 'Cempaka Putih Timur', '10510'),
('ece63a83-596d-4602-bd90-f88d46d14a87', '0e6a9278-25ac-4613-ad4a-9124996fc4f7', '3171051002', 'Cempaka Putih Barat', '10520'),
('d7b72b37-f8a9-437a-bf49-e35aec03a4c5', '0e6a9278-25ac-4613-ad4a-9124996fc4f7', '3171051003', 'Rawasari', '10570'),
('371d3910-1caa-4be8-9afb-3ee8628fd153', 'd9acce16-2d80-42dd-96f0-5799d692f65f', '3171061001', 'Menteng', '10310'),
('9a082e70-983c-4603-a23d-62a6de16c957', 'd9acce16-2d80-42dd-96f0-5799d692f65f', '3171061002', 'Pegangsaan', '10320'),
('ada2fb64-122a-4a3f-9560-9ca4d35c7831', 'd9acce16-2d80-42dd-96f0-5799d692f65f', '3171061003', 'Cikini', '10330'),
('70503f65-45b3-4111-b1ec-0a804acc3b73', 'd9acce16-2d80-42dd-96f0-5799d692f65f', '3171061004', 'Gondangdia', '10350'),
('5b88993e-5738-4ae4-b0eb-0d7d048c624d', 'd9acce16-2d80-42dd-96f0-5799d692f65f', '3171061005', 'Kebon Sirih', '10340'),
('796b1d0a-b28c-4420-a827-0baa8b930df1', '73784738-f978-4cef-a1bb-217860473904', '3171071001', 'Gelora', '10270'),
('2d8c3b0c-5e6b-48e0-b943-674c065faa9d', '73784738-f978-4cef-a1bb-217860473904', '3171071002', 'Bendungan Hilir', '10210'),
('574f3a85-ca0e-47eb-bace-b15bc299a134', '73784738-f978-4cef-a1bb-217860473904', '3171071003', 'Karet Tengsin', '10220'),
('f9c5f2a2-e8ee-444a-abb5-51735faf7d78', '73784738-f978-4cef-a1bb-217860473904', '3171071004', 'Petamburan', '10260'),
('8879183f-e3ef-4b35-a5ff-19db326b2d98', '73784738-f978-4cef-a1bb-217860473904', '3171071005', 'Kebon Melati', '10230'),
('398c64a2-80a4-4879-bc37-1db1323cb516', '73784738-f978-4cef-a1bb-217860473904', '3171071006', 'Kebon Kacang', '10240'),
('fe82051e-35ec-4794-becf-52a0a079dcd4', '73784738-f978-4cef-a1bb-217860473904', '3171071007', 'Kampung Bali', '10250'),
('1fcafd32-181b-4758-b144-02a57e6b9dda', '6798a495-2815-45ac-9034-34bc21419496', '3171081001', 'Johar Baru', '10560'),
('4a670731-9d52-415b-a860-579ee65bda5a', '6798a495-2815-45ac-9034-34bc21419496', '3171081002', 'Kampung Rawa', '10550'),
('973268de-4651-4877-bb26-e043e4e55680', '6798a495-2815-45ac-9034-34bc21419496', '3171081003', 'Galur', '10530'),
('57872085-51a6-44d0-9bf4-af071397890c', '6798a495-2815-45ac-9034-34bc21419496', '3171081004', 'Tanah Tinggi', '10540');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` varchar(36) NOT NULL,
  `id_provinsi` varchar(36) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `id_provinsi`, `nama`, `kode`) VALUES
('22786d65-4921-4af1-9063-2f963b231f21', '6b0b405d-5fdf-42e2-8904-703613d68882', 'KAB. ADM. KEP. SERIBU', '3101'),
('03c76de0-e1be-409b-a3cc-f8a00148f979', '6b0b405d-5fdf-42e2-8904-703613d68882', 'KOTA ADM. JAKARTA PUSAT', '3171'),
('b1845f23-7dcd-4add-94de-09f17583496b', '6b0b405d-5fdf-42e2-8904-703613d68882', 'KOTA ADM. JAKARTA UTARA', '3172'),
('a27f99cd-5efb-4d7c-b9b2-b395cba03734', '6b0b405d-5fdf-42e2-8904-703613d68882', 'KOTA ADM. JAKARTA BARAT', '3173'),
('520c6862-1a09-47b9-8ef1-680113ee1053', '6b0b405d-5fdf-42e2-8904-703613d68882', 'KOTA ADM. JAKARTA SELATAN', '3174'),
('c551395d-3850-4410-abf2-e0105d238bd4', '6b0b405d-5fdf-42e2-8904-703613d68882', 'KOTA ADM. JAKARTA TIMUR', '3175'),
('7046e1bd-9dca-4712-b8bd-2718164f9740', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. BOGOR', '3201'),
('a81f2998-50d2-4035-859c-b923fe18a5e0', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. SUKABUMI', '3202'),
('df0b45ee-c040-4ef1-be06-2fba863da1c7', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. CIANJUR', '3203'),
('1c9c1c83-ab22-44a8-8118-ad8ff74ee2c1', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. BANDUNG', '3204'),
('227c1a3f-7f20-4b4a-a46b-e1ba0bc3757c', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. GARUT', '3205'),
('45865644-9b4a-4da4-b3c9-b606e9222c35', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. TASIKMALAYA', '3206'),
('84251db7-733d-4f1e-9714-6063613d4c28', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. CIAMIS', '3207'),
('07e161a9-b680-47e4-9b97-02ddea80ac23', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. KUNINGAN', '3208'),
('7c084147-50f0-41f8-b4d0-878538afb73f', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. CIREBON', '3209'),
('33fe629c-e736-4341-8315-7125f0383f64', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. MAJALENGKA', '3210'),
('dc090c0e-d33a-4f8c-a6fe-bc2cdc419adf', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. SUMEDANG', '3211'),
('3dba137d-9302-469a-af0d-057e4f5be1bc', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. INDRAMAYU', '3212'),
('e59afd49-24cb-43cf-96cf-01b3a39d26d4', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. SUBANG', '3213'),
('be1dd23c-a08b-4d92-9199-b49e71b45e53', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. PURWAKARTA', '3214'),
('ed38e6a5-a515-4d1f-ada0-d4baf1d99279', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. KARAWANG', '3215'),
('a851fc83-e404-47f9-8a96-a70e2149a41c', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. BEKASI', '3216'),
('989c7cf8-2081-41b8-a14a-4752b8ad5a3a', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. BANDUNG BARAT', '3217'),
('7bdd0a9d-1e44-4bc0-8e3c-b04a051ffc9b', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KAB. PANGANDARAN', '3218'),
('b084c6ae-e950-49c5-8874-daf82f35d8c6', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KOTA BOGOR', '3271'),
('53080c90-09fe-4567-bad5-fbb5ce4b48f3', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KOTA SUKABUMI', '3272'),
('072e2b03-324d-4fb5-b49b-cd88e9522c7f', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KOTA BANDUNG', '3273'),
('f26aee47-afd5-45ae-93b2-b8def8b6eb78', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KOTA CIREBON', '3274'),
('8c19fb18-95cd-43a0-9e3d-1b4d4c10e5e0', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KOTA BEKASI', '3275'),
('8faa13b1-6198-426d-85c1-06f3278f6718', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KOTA DEPOK', '3276'),
('dc8f101d-3a86-4529-86bd-0663de1a0dcc', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KOTA CIMAHI', '3277'),
('3b3a4bf1-6106-47b4-9e8c-e2b40ba2d695', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KOTA TASIKMALAYA', '3278'),
('a2a514db-5a77-407f-8b06-88769d57f6d0', '333686dc-42bd-4c3d-934f-e0282f4beec5', 'KOTA BANJAR', '3279');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` varchar(36) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `id_user` varchar(36) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `id_provinsi` varchar(36) NOT NULL,
  `id_kota` varchar(36) NOT NULL,
  `id_kecamatan` varchar(36) NOT NULL,
  `id_kelurahan` varchar(36) NOT NULL,
  `tgllahir` date NOT NULL,
  `ibukandung` varchar(30) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `pendidikan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `nama`, `id_user`, `alamat`, `id_provinsi`, `id_kota`, `id_kecamatan`, `id_kelurahan`, `tgllahir`, `ibukandung`, `pekerjaan`, `pendidikan`) VALUES
('4aed95fd-7268-497c-9a90-d77261427c7b', 'Siti Latifah', 'dc5e7a80-b3d0-4399-8b96-7ef595c84b82', 'jln sukmul', '6b0b405d-5fdf-42e2-8904-703613d68882', '03c76de0-e1be-409b-a3cc-f8a00148f979', 'db086e60-6273-41b1-b966-611ab7263fc0', '3eb3f78f-3c88-480d-86c4-a695ccf02caf', '1972-01-01', 'Siti DJubaedah', 'PNS', 'S1'),
('529139a1-23ad-4ba0-9d4b-f420179e2b03', 'Jack Jack', '683a79f9-b8ac-4a27-ac8c-5e7bacebf30d', 'Sukamulya 7 lingkar sukasari', '6b0b405d-5fdf-42e2-8904-703613d68882', '03c76de0-e1be-409b-a3cc-f8a00148f979', '73784738-f978-4cef-a1bb-217860473904', 'fe82051e-35ec-4794-becf-52a0a079dcd4', '2020-02-22', 'Neng Oci', 'Karyawan Swata', 'S1'),
('83ed426e-5209-44c9-a6be-b987626c06b5', 'Moh. Naufal Majid', 'e8bf16c1-aaa2-4b43-a5ba-86a21b890cbc', 'sama', '6b0b405d-5fdf-42e2-8904-703613d68882', '03c76de0-e1be-409b-a3cc-f8a00148f979', 'db086e60-6273-41b1-b966-611ab7263fc0', '3eb3f78f-3c88-480d-86c4-a695ccf02caf', '2004-04-07', 'Siti Latifah', 'Karyawan Swata', 'S1'),
('9ea94e87-32ef-4cd5-a5ad-f5913a96b1c2', 'Moh Machfudh', '10ddfe5f-2aec-4134-9c6b-a11ccabae344', 'jln sukmul', '6b0b405d-5fdf-42e2-8904-703613d68882', '03c76de0-e1be-409b-a3cc-f8a00148f979', 'db086e60-6273-41b1-b966-611ab7263fc0', '3eb3f78f-3c88-480d-86c4-a695ccf02caf', '1971-01-01', 'Siti Rubiah', 'Karyawan Swata', 'S1'),
('a15362e9-1b0d-411c-a42a-9a1679017165', 'Boy Geboy', '6fe5ee70-81ac-4f2e-95fe-5fbfa7c9b26b', 'Jl. lingkar sukasari ro 004.04 no.15', '6b0b405d-5fdf-42e2-8904-703613d68882', '22786d65-4921-4af1-9063-2f963b231f21', '3e12313d-3723-4800-856d-2719e3b5ce1f', 'e3d7a7ab-85f5-4a69-a0c0-9b5797988a17', '2003-03-20', 'Adopsi', 'Karyawan Swata', 'S1'),
('d8a5f474-0bed-404a-8b31-02f33d17d2a9', 'Siti Humaira', '212c0d06-9a46-443f-b21a-5a99cd62d1e2', 'Jln Sukamulya 7', '6b0b405d-5fdf-42e2-8904-703613d68882', '03c76de0-e1be-409b-a3cc-f8a00148f979', 'db086e60-6273-41b1-b966-611ab7263fc0', '3eb3f78f-3c88-480d-86c4-a695ccf02caf', '1999-08-11', 'Siti Latifah', 'Wirausaha', 'S1');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` varchar(36) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `kode`, `nama`) VALUES
('6b0b405d-5fdf-42e2-8904-703613d68882', '31', 'DKI Jakarta'),
('333686dc-42bd-4c3d-934f-e0282f4beec5', '32', 'Jawa Barat');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` varchar(36) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama`) VALUES
('usr', 'ROLE_USER'),
('adm', 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(36) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `active` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `active`) VALUES
('10ddfe5f-2aec-4134-9c6b-a11ccabae344', 'machfudh@gmail.com', '$2a$10$Hh.xCh.etOe/LEOtTpodw.c1m0lHXnl97OlsiqRi3o1/8PM42epa.', 1),
('212c0d06-9a46-443f-b21a-5a99cd62d1e2', 'zira@gmail.com', '$2a$10$NjHuWUjujh/KkWGdCrZfK.HErO8HElN0uO3WqRNeTliOLtC0WTKsW', 1),
('683a79f9-b8ac-4a27-ac8c-5e7bacebf30d', 'jackjack@gmail.com', '$2a$10$iXCoK8BWkxXcR0hRVkKBU.Ik7yVkPs6I/P3B3MPEXfR8EysDjgksa', 1),
('6fe5ee70-81ac-4f2e-95fe-5fbfa7c9b26b', 'geboy@gmail.com', '$2a$10$0fXEVA.CaZUY1MGsN7jhf.qV0b7Hsfkq3Nnafjkk6gB3KARDzXR2y', 1),
('dc5e7a80-b3d0-4399-8b96-7ef595c84b82', 'sitilatifah@gmail.com', '$2a$10$eDNp5LvFBNk0SGIgHIbWpunsJa9oyjQjHNbDev6EWvRafdjoB7K52', 1),
('e8bf16c1-aaa2-4b43-a5ba-86a21b890cbc', 'naufalmajid@gmail.com', '$2a$10$jAI43jwiUVmHJm2pish1qe6a5Mq834TkCQ5R4gm2NTfAoD/1AiMXC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usersroles`
--

CREATE TABLE `usersroles` (
  `id` varchar(36) NOT NULL,
  `id_user` varchar(36) NOT NULL,
  `id_role` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersroles`
--

INSERT INTO `usersroles` (`id`, `id_user`, `id_role`) VALUES
('000001', '10ddfe5f-2aec-4134-9c6b-a11ccabae344', 'usr'),
('000002', '10ddfe5f-2aec-4134-9c6b-a11ccabae344', 'adm'),
('000003', 'dc5e7a80-b3d0-4399-8b96-7ef595c84b82', 'usr'),
('05e56221-2fa5-4f51-8615-84d3505d352a', '683a79f9-b8ac-4a27-ac8c-5e7bacebf30d', 'usr'),
('54e0676c-db51-4e5b-a8c6-eaeeb3d8194a', '6fe5ee70-81ac-4f2e-95fe-5fbfa7c9b26b', 'usr'),
('7c3a126f-7db0-4914-a60c-2c0224c24264', '212c0d06-9a46-443f-b21a-5a99cd62d1e2', 'usr'),
('ee7857ed-5d16-4148-88f4-01e4cf62a0ab', 'e8bf16c1-aaa2-4b43-a5ba-86a21b890cbc', 'usr');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_user`
-- (See below for the actual view)
--
CREATE TABLE `v_user` (
`username` varchar(50)
,`password` varchar(100)
,`enable` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_usersroles`
-- (See below for the actual view)
--
CREATE TABLE `v_usersroles` (
`username` varchar(50)
,`authority` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `v_user`
--
DROP TABLE IF EXISTS `v_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user`  AS  select `user`.`email` AS `username`,`user`.`password` AS `password`,`user`.`active` AS `enable` from `user` ;

-- --------------------------------------------------------

--
-- Structure for view `v_usersroles`
--
DROP TABLE IF EXISTS `v_usersroles`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_usersroles`  AS  select `u`.`email` AS `username`,`r`.`nama` AS `authority` from ((`user` `u` join `usersroles` `ur` on((`u`.`id` = `ur`.`id_user`))) join `roles` `r` on((`ur`.`id_role` = `r`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersroles`
--
ALTER TABLE `usersroles`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
