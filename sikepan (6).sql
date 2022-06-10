-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 04:09 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sikepan`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `FirstName`, `LastName`, `phone`, `address`, `city`, `country`) VALUES
(1, 'Carine ', 'Schmitt', '40.32.2555', '54, rue Royale', 'Nantes', 'France'),
(2, 'Jean', 'King', '7025551838', '8489 Strong St.', 'Las Vegas', 'USA'),
(3, 'Peter', 'Ferguson', '03 9520 4555', '636 St Kilda Road', 'Melbourne', 'Australia'),
(4, 'Janine ', 'Labrune', '40.67.8555', '67, rue des Cinquante Otages', 'Nantes', 'France'),
(5, 'Jonas ', 'Bergulfsen', '07-98 9555', 'Erling Skakkes gate 78', 'Stavern', 'Norway'),
(6, 'Susan', 'Nelson', '4155551450', '5677 Strong St.', 'San Rafael', 'USA'),
(7, 'Zbyszek ', 'Piestrzeniewicz', '(26) 642-7555', 'ul. Filtrowa 68', 'Warszawa', 'Poland'),
(8, 'Roland', 'Keitel', '+49 69 66 90 2555', 'Lyonerstr. 34', 'Frankfurt', 'Germany'),
(9, 'Julie', 'Murphy', '6505555787', '5557 North Pendale Street', 'San Francisco', 'USA'),
(10, 'Kwai', 'Lee', '2125557818', '897 Long Airport Avenue', 'NYC', 'USA'),
(11, 'Diego ', 'Freyre', '(91) 555 94 44', 'C/ Moralzarzal, 86', 'Madrid', 'Spain'),
(12, 'Christina ', 'Berglund', '0921-12 3555', 'Berguvsvägen  8', 'Luleå', 'Sweden'),
(13, 'Jytte ', 'Petersen', '31 12 3555', 'Vinbæltet 34', 'Kobenhavn', 'Denmark'),
(14, 'Mary ', 'Saveley', '78.32.5555', '2, rue du Commerce', 'Lyon', 'France'),
(15, 'Eric', 'Natividad', '+65 221 7555', 'Bronz Sok.', 'Singapore', 'Singapore'),
(16, 'Jeff', 'Young', '2125557413', '4092 Furth Circle', 'NYC', 'USA'),
(17, 'Kelvin', 'Leong', '2155551555', '7586 Pompton St.', 'Allentown', 'USA'),
(18, 'Juri', 'Hashimoto', '6505556809', '9408 Furth Circle', 'Burlingame', 'USA'),
(19, 'Wendy', 'Victorino', '+65 224 1555', '106 Linden Road Sandown', 'Singapore', 'Singapore'),
(20, 'Veysel', 'Oeztan', '+47 2267 3215', 'Brehmen St. 121', 'Bergen', 'Norway  '),
(21, 'Keith', 'Franco', '2035557845', '149 Spinnaker Dr.', 'New Haven', 'USA'),
(22, 'Isabel ', 'de Castro', '(1) 356-5555', 'Estrada da saúde n. 58', 'Lisboa', 'Portugal'),
(23, 'Martine ', 'Rancé', '20.16.1555', '184, chaussée de Tournai', 'Lille', 'France'),
(24, 'Marie', 'Bertrand', '(1) 42.34.2555', '265, boulevard Charonne', 'Paris', 'France'),
(25, 'Jerry', 'Tseng', '6175555555', '4658 Baden Av.', 'Cambridge', 'USA'),
(26, 'Julie', 'King', '2035552570', '25593 South Bay Ln.', 'Bridgewater', 'USA'),
(27, 'Mory', 'Kentary', '+81 06 6342 5555', '1-6-20 Dojima', 'Kita-ku', 'Japan'),
(28, 'Michael', 'Frick', '2125551500', '2678 Kingston Rd.', 'NYC', 'USA'),
(29, 'Matti', 'Karttunen', '90-224 8555', 'Keskuskatu 45', 'Helsinki', 'Finland'),
(30, 'Rachel', 'Ashworth', '(171) 555-1555', 'Fauntleroy Circus', 'Manchester', 'UK'),
(31, 'Dean', 'Cassidy', '+353 1862 1555', '25 Maiden Lane', 'Dublin', 'Ireland'),
(32, 'Leslie', 'Taylor', '6175558428', '16780 Pompton St.', 'Brickhaven', 'USA'),
(33, 'Elizabeth', 'Devon', '(171) 555-2282', '12, Berkeley Gardens Blvd', 'Liverpool', 'UK'),
(34, 'Yoshi ', 'Tamuri', '(604) 555-3392', '1900 Oak St.', 'Vancouver', 'Canada'),
(35, 'Miguel', 'Barajas', '6175557555', '7635 Spinnaker Dr.', 'Brickhaven', 'USA'),
(36, 'Julie', 'Young', '6265557265', '78934 Hillside Dr.', 'Pasadena', 'USA'),
(37, 'Brydey', 'Walker', '+612 9411 1555', 'Suntec Tower Three', 'Singapore', 'Singapore'),
(38, 'Frédérique ', 'Citeaux', '88.60.1555', '24, place Kléber', 'Strasbourg', 'France'),
(39, 'Mike', 'Gao', '+852 2251 1555', 'Bank of China Tower', 'Central Hong Kong', 'Hong Kong'),
(40, 'Eduardo ', 'Saavedra', '(93) 203 4555', 'Rambla de Cataluña, 23', 'Barcelona', 'Spain'),
(41, 'Mary', 'Young', '3105552373', '4097 Douglas Av.', 'Glendale', 'USA'),
(42, 'Horst ', 'Kloss', '0372-555188', 'Taucherstraße 10', 'Cunewalde', 'Germany'),
(43, 'Palle', 'Ibsen', '86 21 3555', 'Smagsloget 45', 'Århus', 'Denmark'),
(44, 'Jean ', 'Fresnière', '(514) 555-8054', '43 rue St. Laurent', 'Montréal', 'Canada'),
(45, 'Alejandra ', 'Camino', '(91) 745 6555', 'Gran Vía, 1', 'Madrid', 'Spain'),
(46, 'Valarie', 'Thompson', '7605558146', '361 Furth Circle', 'San Diego', 'USA'),
(47, 'Helen ', 'Bennett', '(198) 555-8888', 'Garden House', 'Cowes', 'UK'),
(48, 'Annette ', 'Roulet', '61.77.6555', '1 rue Alsace-Lorraine', 'Toulouse', 'France'),
(49, 'Renate ', 'Messner', '069-0555984', 'Magazinweg 7', 'Frankfurt', 'Germany'),
(50, 'Paolo ', 'Accorti', '011-4988555', 'Via Monte Bianco 34', 'Torino', 'Italy'),
(51, 'Daniel', 'Da Silva', '+33 1 46 62 7555', '27 rue du Colonel Pierre Avia', 'Paris', 'France'),
(52, 'Daniel ', 'Tonini', '30.59.8555', '67, avenue de l\'Europe', 'Versailles', 'France'),
(53, 'Henriette ', 'Pfalzheim', '0221-5554327', 'Mehrheimerstr. 369', 'Köln', 'Germany'),
(54, 'Elizabeth ', 'Lincoln', '(604) 555-4555', '23 Tsawassen Blvd.', 'Tsawassen', 'Canada'),
(55, 'Peter ', 'Franken', '089-0877555', 'Berliner Platz 43', 'München', 'Germany'),
(56, 'Anna', 'O\'Hara', '02 9936 8555', '201 Miller Street', 'North Sydney', 'Australia'),
(57, 'Giovanni ', 'Rovelli', '035-640555', 'Via Ludovico il Moro 22', 'Bergamo', 'Italy'),
(58, 'Adrian', 'Huxley', '+61 2 9495 8555', 'Monitor Money Building', 'Chatswood', 'Australia'),
(59, 'Marta', 'Hernandez', '6175558555', '39323 Spinnaker Dr.', 'Cambridge', 'USA'),
(60, 'Ed', 'Harrison', '+41 26 425 50 01', 'Rte des Arsenaux 41 ', 'Fribourg', 'Switzerland'),
(61, 'Mihael', 'Holz', '0897-034555', 'Grenzacherweg 237', 'Genève', 'Switzerland'),
(62, 'Jan', 'Klaeboe', '+47 2212 1555', 'Drammensveien 126A', 'Oslo', 'Norway  '),
(63, 'Bradley', 'Schuyler', '+31 20 491 9555', 'Kingsfordweg 151', 'Amsterdam', 'Netherlands'),
(64, 'Mel', 'Andersen', '030-0074555', 'Obere Str. 57', 'Berlin', 'Germany'),
(65, 'Pirkko', 'Koskitalo', '981-443655', 'Torikatu 38', 'Oulu', 'Finland'),
(66, 'Catherine ', 'Dewey', '(02) 5554 67', 'Rue Joseph-Bens 532', 'Bruxelles', 'Belgium'),
(67, 'Steve', 'Frick', '9145554562', '3758 North Pendale Street', 'White Plains', 'USA'),
(68, 'Wing', 'Huang', '5085559555', '4575 Hillside Dr.', 'New Bedford', 'USA'),
(69, 'Julie', 'Brown', '6505551386', '7734 Strong St.', 'San Francisco', 'USA'),
(70, 'Mike', 'Graham', '+64 9 312 5555', '162-164 Grafton Road', 'Auckland  ', 'New Zealand'),
(71, 'Ann ', 'Brown', '(171) 555-0297', '35 King George', 'London', 'UK'),
(72, 'William', 'Brown', '2015559350', '7476 Moss Rd.', 'Newark', 'USA'),
(73, 'Ben', 'Calaghan', '61-7-3844-6555', '31 Duncan St. West End', 'South Brisbane', 'Australia'),
(74, 'Kalle', 'Suominen', '+358 9 8045 555', 'Software Engineering Center', 'Espoo', 'Finland'),
(75, 'Philip ', 'Cramer', '0555-09555', 'Maubelstr. 90', 'Brandenburg', 'Germany'),
(76, 'Francisca', 'Cervantes', '2155554695', '782 First Street', 'Philadelphia', 'USA'),
(77, 'Jesus', 'Fernandez', '+34 913 728 555', 'Merchants House', 'Madrid', 'Spain'),
(78, 'Brian', 'Chandler', '2155554369', '6047 Douglas Av.', 'Los Angeles', 'USA'),
(79, 'Patricia ', 'McKenna', '2967 555', '8 Johnstown Road', 'Cork', 'Ireland'),
(80, 'Laurence ', 'Lebihan', '91.24.4555', '12, rue des Bouchers', 'Marseille', 'France'),
(81, 'Paul ', 'Henriot', '26.47.1555', '59 rue de l\'Abbaye', 'Reims', 'France'),
(82, 'Armand', 'Kuger', '+27 21 550 3555', '1250 Pretorius Street', 'Hatfield', 'South Africa'),
(83, 'Wales', 'MacKinlay', '64-9-3763555', '199 Great North Road', 'Auckland', 'New Zealand'),
(84, 'Karin', 'Josephs', '0251-555259', 'Luisenstr. 48', 'Münster', 'Germany'),
(85, 'Juri', 'Yoshido', '6175559555', '8616 Spinnaker Dr.', 'Boston', 'USA'),
(86, 'Dorothy', 'Young', '6035558647', '2304 Long Airport Avenue', 'Nashua', 'USA'),
(87, 'Lino ', 'Rodriguez', '(1) 354-2555', 'Jardim das rosas n. 32', 'Lisboa', 'Portugal'),
(88, 'Braun', 'Urs', '0452-076555', 'Hauptstr. 29', 'Bern', 'Switzerland'),
(89, 'Allen', 'Nelson', '6175558555', '7825 Douglas Av.', 'Brickhaven', 'USA'),
(90, 'Pascale ', 'Cartrain', '(071) 23 67 2555', 'Boulevard Tirou, 255', 'Charleroi', 'Belgium'),
(91, 'Georg ', 'Pipps', '6562-9555', 'Geislweg 14', 'Salzburg', 'Austria'),
(92, 'Arnold', 'Cruz', '+63 2 555 3587', '15 McCallum Street', 'Makati City', 'Philippines'),
(93, 'Maurizio ', 'Moroni', '0522-556555', 'Strada Provinciale 124', 'Reggio Emilia', 'Italy'),
(94, 'Akiko', 'Shimamura', '+81 3 3584 0555', '2-2-8 Roppongi', 'Minato-ku', 'Japan'),
(95, 'Dominique', 'Perrier', '(1) 47.55.6555', '25, rue Lauriston', 'Paris', 'France'),
(96, 'Rita ', 'Müller', '0711-555361', 'Adenauerallee 900', 'Stuttgart', 'Germany'),
(97, 'Sarah', 'McRoy', '04 499 9555', '101 Lambton Quay', 'Wellington', 'New Zealand'),
(98, 'Michael', 'Donnermeyer', ' +49 89 61 08 9555', 'Hansastr. 15', 'Munich', 'Germany'),
(99, 'Maria', 'Hernandez', '2125558493', '5905 Pompton St.', 'NYC', 'USA'),
(100, 'Alexander ', 'Feuer', '0342-555176', 'Heerstr. 22', 'Leipzig', 'Germany'),
(101, 'Dan', 'Lewis', '2035554407', '2440 Pompton St.', 'Glendale', 'USA'),
(102, 'Martha', 'Larsson', '0695-34 6555', 'Åkergatan 24', 'Bräcke', 'Sweden'),
(103, 'Sue', 'Frick', '4085553659', '3086 Ingle Ln.', 'San Jose', 'USA'),
(104, 'Roland ', 'Mendel', '7675-3555', 'Kirchgasse 6', 'Graz', 'Austria'),
(105, 'Leslie', 'Murphy', '2035559545', '567 North Pendale Street', 'New Haven', 'USA'),
(106, 'Yu', 'Choi', '2125551957', '5290 North Pendale Street', 'NYC', 'USA'),
(107, 'Martín ', 'Sommer', '(91) 555 22 82', 'C/ Araquil, 67', 'Madrid', 'Spain'),
(108, 'Sven ', 'Ottlieb', '0241-039123', 'Walserweg 21', 'Aachen', 'Germany'),
(109, 'Violeta', 'Benitez', '5085552555', '1785 First Street', 'New Bedford', 'USA'),
(110, 'Carmen', 'Anton', '+34 913 728555', 'c/ Gobelas, 19-1 Urb. La Florida', 'Madrid', 'Spain'),
(111, 'Sean', 'Clenahan', '61-9-3844-6555', '7 Allen Street', 'Glen Waverly', 'Australia'),
(112, 'Franco', 'Ricotti', '+39 022515555', '20093 Cologno Monzese', 'Milan', 'Italy'),
(113, 'Steve', 'Thompson', '3105553722', '3675 Furth Circle', 'Burbank', 'USA'),
(114, 'Hanna ', 'Moos', '0621-08555', 'Forsterstr. 57', 'Mannheim', 'Germany'),
(115, 'Alexander ', 'Semenov', '+7 812 293 0521', '2 Pobedy Square', 'Saint Petersburg', 'Russia'),
(116, 'Raanan', 'Altagar,G M', '+ 972 9 959 8555', '3 Hagalim Blv.', 'Herzlia', 'Israel'),
(117, 'José Pedro ', 'Roel', '(95) 555 82 82', 'C/ Romero, 33', 'Sevilla', 'Spain'),
(118, 'Rosa', 'Salazar', '2155559857', '11328 Douglas Av.', 'Philadelphia', 'USA'),
(119, 'Sue', 'Taylor', '4155554312', '2793 Furth Circle', 'Brisbane', 'USA'),
(120, 'Thomas ', 'Smith', '(171) 555-7555', '120 Hanover Sq.', 'London', 'UK'),
(121, 'Valarie', 'Franco', '6175552555', '6251 Ingle Ln.', 'Boston', 'USA'),
(122, 'Tony', 'Snowden', '+64 9 5555500', 'Arenales 1938 3\'A\'', 'Auckland  ', 'New Zealand');

-- --------------------------------------------------------

--
-- Stand-in structure for view `global_search`
-- (See below for the actual view)
--
CREATE TABLE `global_search` (
`id` int(11)
,`jenis` varchar(255)
,`gambar` varchar(255)
,`judul` varchar(255)
,`isi` mediumtext
);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(16) NOT NULL,
  `address` text NOT NULL,
  `salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `email`, `mobile`, `address`, `salary`) VALUES
(1, 'Samson', 'samson@webdamn.com', '1234567890', 'London', 457002),
(2, 'Jhon', 'jhon@webdamn.com', '1234567890', 'Paris', 456003),
(3, 'Carl', 'Carl@webdamn.com', '1234567890', 'Newyork', 678002),
(4, 'Boriss', 'Boriss@webdamn.com', '1234567890', 'Washington', 345003),
(5, 'Ryan', 'Ryan@webdamn.com', '1234567890', 'Toronto', 876002),
(6, 'Hokins', 'Hokins@webdamn.com', '1234567890', 'Sydney', 316003),
(7, 'Marsh', 'Marsh@webdamn.com', '1234567890', 'Melbourne', 456002),
(8, 'Jack', 'Jack@webdamn.com', '1234567890', 'Captown', 876003),
(9, 'Iyan', 'Iyan@webdamn.com', '1234567890', 'Wellington', 345003),
(10, 'Tare', 'tare@webdamn.com', '1234567890', 'Bankok', 654001),
(11, 'Oley', 'ole@webdamn.com', '1234567890', 'Tokyo', 543001),
(12, 'Ash', 'ash@webdamn.com', '1234567890', 'Delhi', 538001),
(13, 'Haddin', 'Haddin@webdamn.com', '1234567890', 'Mumbai', 653001),
(14, 'Graham', 'Graham@webdamn.com', '1234567890', 'New York', 941001),
(15, 'Sam', 'Sam@webdamn.com', '1234567890', 'London', 453001),
(16, 'Seal', 'Seal@webdamn.com', '1234567890', 'Sydney', 568002),
(17, 'Ervine', 'Ervine@webdamn.com', '1234567890', 'Wellington', 169003),
(18, 'Mark', 'Mark@webdamn.com', '1234567890', 'Washington DC', 216002),
(19, 'Tim', 'tim@webdamn.com', '1234567890', 'Amsterdam', 563003),
(22, 'siamm', 'sholihahnaisyah@student.uns.ac.id', '12345678', 'buwhfiw', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_administrator`
--

CREATE TABLE `tb_administrator` (
  `id` int(11) NOT NULL,
  `username_administrator` varchar(255) NOT NULL,
  `password_administrator` varchar(255) NOT NULL,
  `email_administrator` varchar(255) NOT NULL,
  `nama_lengkap` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_administrator`
--

INSERT INTO `tb_administrator` (`id`, `username_administrator`, `password_administrator`, `email_administrator`, `nama_lengkap`) VALUES
(9, 'adminq', '5b6f649dec5bb8173a7cd53bb24bc020', 'adminq@admin.com', 'Admin Q'),
(27, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', ''),
(31, 'luby', '99b553c7d25462d3ff9c12841071144b', 'luby@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_album`
--

CREATE TABLE `tb_album` (
  `id_album` int(11) NOT NULL,
  `judul_album` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `narasi_album` varchar(255) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL,
  `grup` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_album`
--

INSERT INTO `tb_album` (`id_album`, `judul_album`, `foto`, `narasi_album`, `tahun`, `grup`) VALUES
(9, 'Foto Monitoring FIB 2018', '01-Foto_Monitoring_FIB_20181.jpg', 'ini adalah narasi ', 0, 2),
(10, 'Foto Monitoring FIB 2018', '02-Foto_Monitoring_FIB_20181.jpg', 'ini adalah narasi ', 0, 2),
(11, 'Foto Monitoring FIB 2018', '03-Foto_Monitoring_FIB_20181.jpg', 'ini adalah narasi ', 0, 2),
(12, 'Foto Monitoring FIB 2018', '04-Foto_Monitoring_FIB_20181.jpg', 'ini adalah narasi ', 0, 2),
(14, 'Foto Monitoring FIB 2018', '05-Foto_Monitoring_FIB_20182.jpg', 'ini adalah narasi ', 0, 2),
(15, 'Foto Monitoring FISIP 2018', '01-Foto_Monitoring_FISIP_20181.jpg', 'ini adalah narasi ', 0, 8),
(16, 'Foto Monitoring FISIP 2018', '02-Foto_Monitoring_FISIP_20181.jpg', 'ini adalah narasi ', 0, 8),
(17, 'Foto Monitoring FISIP 2018', '03-Foto_Monitoring_FISIP_20181.jpg', 'ini adalah narasi ', 0, 8),
(18, 'Foto Monitoring FISIP 2018', '04-Foto_Monitoring_FISIP_20181.jpg', 'ini adalah narasi ', 0, 8),
(19, 'Foto Monitoring UPT Perpustakaan 2018', '01-Foto_Monitoring_UPT_Perpustakaan_20181.jpg', 'ini adalah narasi ', 0, 9),
(21, 'Foto Monitoring UPT Perpustakaan 2018', '03-Foto_Monitoring_UPT_Perpustakaan_20181.jpg', 'ini adalah narasi ', 0, 9),
(22, 'Foto Monitoring UPT Perpustakaan 2018', '04-Foto_Monitoring_UPT_Perpustakaan_20181.jpg', 'ini adalah narasi ', 0, 9),
(23, 'Foto Monitoring UPT Perpustakaan 2018', '05-Foto_Monitoring_UPT_Perpustakaan_20182.jpg', 'ini adalah narasi ', 0, 9),
(24, 'Foto Monitoring UPT Perpustakaan 2018', '06-Foto_Monitoring_UPT_Perpustakaan_20181.jpg', 'ini adalah narasi ', 0, 9),
(25, 'Foto Monitoring UPT Perpustakaan 2018', '07-Foto_Monitoring_UPT_Perpustakaan_20181.jpg', 'ini adalah narasi ', 0, 9),
(26, 'Bimtek Kearsipan 2018 Angkatan 1', '01-Bimtek_Kearsipan_2018_Angkatan_11.jpg', 'Peserta Bimtek sedang menyimak materi TND', 0, 10),
(27, 'Bimtek Kearsipan 2018 Angkatan 1', '02-Bimtek_Kearsipan_2018_Angkatan_11.jpg', 'Peserta Bimtek sedang mengerjakan soal pre test', 0, 10),
(29, 'Bimtek Kearsipan 2018 Angkatan 1', '04-Bimtek_Kearsipan_2018_Angkatan_11.jpg', 'Peserta Bimtek sedang melakukan praktek pemberkasan', 0, 10),
(31, 'Bimtek Kearsipan 2018 Angkatan 1', '05-Bimtek_Kearsipan_2018_Angkatan_11.jpg', 'Peserta Bimtek sedang praktek membuat boks arsip', 0, 10),
(32, 'Bimtek Kearsipan 2018 Angkatan 1', '06-Bimtek_Kearsipan_2018_Angkatan_11.jpg', 'special break', 0, 10),
(33, 'Bimtek Kearsipan 2018 Angkatan 1', '07-Bimtek_Kearsipan_2018_Angkatan_11.jpg', 'Penutupan acara bimtek angkatan 1', 0, 10),
(34, 'Bimtek Kearsipan 2018 Angkatan 2', '01-Bimtek_Kearsipan_2018_Angkatan_21.jpg', 'Pembukaan oleh Kepala UPT Kearsipan UNS dan Koordinator UPSDM & Remunerasi', 0, 11),
(35, 'Bimtek Kearsipan 2018 Angkatan 2', '02-Bimtek_Kearsipan_2018_Angkatan_21.jpg', 'Peserta Bimtek mengerjakan pre test', 0, 11),
(36, 'Bimtek Kearsipan 2018 Angkatan 2', '03-Bimtek_Kearsipan_2018_Angkatan_21.jpg', 'Pemberian materi pertama tentang Tata Naskah Dinas', 0, 11),
(37, 'Bimtek Kearsipan 2018 Angkatan 2', '04-Bimtek_Kearsipan_2018_Angkatan_21.jpg', 'Foto Bersama pada penutupan pelatihan hari pertama', 0, 11),
(38, 'Bimtek Kearsipan 2018 Angkatan 2', '05-Bimtek_Kearsipan_2018_Angkatan_21.jpg', 'Peserta Bimtek sedang praktek pengisian daftar pengisian penyerahan arsip', 0, 11),
(39, 'Bimtek Kearsipan 2018 Angkatan 2', '06-Bimtek_Kearsipan_2018_Angkatan_21.jpg', 'Penutupan hari kedua angatan 2', 0, 11),
(40, 'Sosialisasi Peraturan Rektor tentang Pedoman Pengelolaan Arsip Dinamis', '01-Sosialisasi_Peraturan_Rektor_tentang_Pedoman_Pengelolaan_Arsip_Dinamis1.jpg', 'pembukaan Sosialisasi Peraturan Rektor oleh Kepala UPT Kearsipan Universitas Sebelas Maret Drs. Joko Sugiyatno', 0, 12),
(41, 'Sosialisasi Peraturan Rektor tentang Pedoman Pengelolaan Arsip Dinamis', '02-Sosialisasi_Peraturan_Rektor_tentang_Pedoman_Pengelolaan_Arsip_Dinamis1.jpg', 'Peserta Sosialisasi Peraturan Rektor tentang Pedoman Pengelolaan Arsip Dinamis', 0, 12),
(42, 'Sosialisasi Peraturan Rektor tentang Pedoman Pengelolaan Arsip Dinamis', '03-Sosialisasi_Peraturan_Rektor_tentang_Pedoman_Pengelolaan_Arsip_Dinamis1.jpg', 'Dra. Sulistyowati, M.M memberikan materi tentang peran kearsipan di Perguruan Tinggi Negeri', 0, 12),
(43, 'Sosialisasi Peraturan Rektor tentang Pedoman Pengelolaan Arsip Dinamis', '04-Sosialisasi_Peraturan_Rektor_tentang_Pedoman_Pengelolaan_Arsip_Dinamis1.jpg', 'Sosialisasi perturan rektor tentang pedoman pengelolaan arsip dinamis oleh tiga pemateri', 0, 12),
(44, 'Sosialisasi Peraturan Rektor tentang Pedoman Pengelolaan Arsip Dinamis', '05-Sosialisasi_Peraturan_Rektor_tentang_Pedoman_Pengelolaan_Arsip_Dinamis1.jpg', 'Peserta sedang mendengarkan materi', 0, 12),
(45, 'Sosialisasi Peraturan Rektor tentang Pedoman Pengelolaan Arsip Dinamis', '06-Sosialisasi_Peraturan_Rektor_tentang_Pedoman_Pengelolaan_Arsip_Dinamis1.jpg', 'penutupan Sosialisasi Peraturan Rektor oleh Kepala UPT Kearsipan Drs. Joko Sugiyatno', 0, 12),
(46, 'Bimtek Kearsipan 2018 Angkatan 3', '01-Bimtek_Kearsipan_2018_Angkatan_31.jpg', 'Pembukaan bimtek angkatan 3 oleh Perwakilan Koordinator UPSDM & Remunerasi UNS', 0, 13),
(47, 'Bimtek Kearsipan 2018 Angkatan 3', '02-Bimtek_Kearsipan_2018_Angkatan_31.jpg', 'Peserta Bimtek Kearsipan Angkatan 3 melakukan Pre Test', 0, 13),
(48, 'Bimtek Kearsipan 2018 Angkatan 3', '03-Bimtek_Kearsipan_2018_Angkatan_31.jpg', 'Peserta Bimtek sedang melakukan praktek pemberkasan', 0, 13),
(49, 'Bimtek Kearsipan 2018 Angkatan 3', '04-Bimtek_Kearsipan_2018_Angkatan_31.jpg', 'Peserta Bimtek sedang melakukan praktek pemberkasan 2', 0, 13),
(50, 'Bimtek Kearsipan 2018 Angkatan 3', '05-Bimtek_Kearsipan_2018_Angkatan_31.jpg', 'Penutupan acara bimtek hari pertama angkatan 3', 0, 13),
(51, 'Bimtek Kearsipan 2018 Angkatan 3', '06-Bimtek_Kearsipan_2018_Angkatan_31.jpg', 'Penutupan acara bimtek angkatan 3', 0, 13),
(52, 'Bimtek Kearsipan 2018 Angkatan 4', '01-Bimtek_Kearsipan_2018_Angkatan_42.jpg', 'Peserta Bimtek sedang mengerjakan soal pre test', 0, 14),
(53, 'Bimtek Kearsipan 2018 Angkatan 4', '02-Bimtek_Kearsipan_2018_Angkatan_42.jpg', 'Peserta Bimtek sedang mendengarkan materi Tata Naskah Dinas', 0, 14),
(54, 'Bimtek Kearsipan 2018 Angkatan 4', '3-Bimtek_Kearsipan_2018_Angkatan_41.jpg', 'Peserta Bimtek sedang menyimak materi Pola Klasifikasi Arsip & JRA UNS', 0, 14),
(55, 'Bimtek Kearsipan 2018 Angkatan 4', '04-Bimtek_Kearsipan_2018_Angkatan_41.jpg', 'Peserta Bimtek sedang melakukan praktek pemberkasan', 0, 14),
(56, 'Bimtek Kearsipan 2018 Angkatan 4', '05-Bimtek_Kearsipan_2018_Angkatan_41.jpg', 'Peserta Bimtek sedang praktek membuat boks arsip', 0, 14),
(57, 'Bimtek Kearsipan 2018 Angkatan 4', '06-Bimtek_Kearsipan_2018_Angkatan_41.jpg', 'Peserta Bimtek sedang praktek membuat pembungkus arsip (kising)', 0, 14),
(58, 'Bimtek Kearsipan 2018 Angkatan 4', '07-Bimtek_Kearsipan_2018_Angkatan_41.jpg', 'Penutupan acara bimtek angkatan 4', 0, 14),
(59, 'Kunjungan BeKraf', '01-Kunjungan_BeKraf1.jpg', 'Kunjungan Kearsipan Badan Ekonomi Kreatif (Bekraf)', 0, 15),
(60, 'Kunjungan BeKraf', '02-Kunjungan_BeKraf1.jpg', 'Penyerahan Cindera Mata dari Staff Biro Persuratan Badan Ekonomi Kreatif kepada Kepala UPT Kearsipan Universitas Sebelas Maret', 0, 15),
(61, 'Kunjungan BeKraf', '03-Kunjungan_BeKraf1.jpg', 'Touring Depo oleh Yani Marsudiyasti, S. Sos Arsiparis Ahli Madya UPT Kearsipan UNS', 0, 15),
(62, 'Kunjungan BeKraf', '04-Kunjungan_BeKraf1.jpg', 'Touring Depo oleh Yani Marsudiyasti, S. Sos Arsiparis Madya UPT Kearsipan UNS', 0, 15),
(63, 'Kunjungan BeKraf', '05-Kunjungan_BeKraf1.jpg', 'foto bersama antara Badan Ekonomi Kreatif dengan UPT Kearsipan UNS', 0, 15),
(64, 'Pendirian UPT Kearsipan UNS', '000000001.jpg', 'ini adalah narasi ', 0, 1),
(65, 'Pendirian UPT Kearsipan UNS', '0000000002.jpg', 'ini adalah narasi ', 0, 1),
(66, 'Pendirian UPT Kearsipan UNS', '0000000003.jpg', 'ini adalah narasi ', 0, 1),
(67, 'Pendirian UPT Kearsipan UNS', '00000000004.jpg', 'ini adalah narasi ', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_arsip_foto`
--

CREATE TABLE `tb_arsip_foto` (
  `id_arsip_foto` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `narasi` varchar(255) DEFAULT NULL,
  `grup` int(11) DEFAULT NULL,
  `tahun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_arsip_foto`
--

INSERT INTO `tb_arsip_foto` (`id_arsip_foto`, `judul`, `foto`, `narasi`, `grup`, `tahun`) VALUES
(1, 'judul 1', 'WhatsApp_Image_2021-10-20_at_9_33_53_PM_(5).jpeg', 'ini adalah narasi', 12, 0),
(2, 'judul 2', 'WhatsApp_Image_2021-10-20_at_9_33_53_PM_(6)1.jpeg', 'ini adalah narasi', 12, 0),
(3, 'ini adalah judul', 'WhatsApp_Image_2021-12-15_at_1_27_19_PM2.jpeg', 'ini adalah narasi', 10, 0),
(4, 'ini adalah judul', 'WhatsApp_Image_2021-12-15_at_1_28_47_PM2.jpeg', 'ini adalah narasi', 10, 0),
(5, 'aaa', 'bench_2.jpg', 'ini adalah narasi', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_arsip_kearsitekturan`
--

CREATE TABLE `tb_arsip_kearsitekturan` (
  `idp` int(11) NOT NULL,
  `unit_kerja` varchar(255) NOT NULL,
  `pencipta_kode_instansi` varchar(255) NOT NULL,
  `no_kerja` int(11) NOT NULL,
  `arsitek_perusahaan` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `nama_bangunan` varchar(255) NOT NULL,
  `tipe_bangunan` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `skala` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `tingkat_perkembangan` varchar(255) NOT NULL,
  `kondisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_arsip_kearsitekturan`
--

INSERT INTO `tb_arsip_kearsitekturan` (`idp`, `unit_kerja`, `pencipta_kode_instansi`, `no_kerja`, `arsitek_perusahaan`, `tanggal`, `lokasi`, `nama_bangunan`, `tipe_bangunan`, `keterangan`, `skala`, `satuan`, `tingkat_perkembangan`, `kondisi`) VALUES
(1, 'Bagian Perencana UNS', 'Bagian Perencana UNS', 18, '-', '2006', 'UNS', 'Perencanaan Rehap Kanopi Gedung I (Ruang Sidang)', '0', '--', '1:100', '1 buku', 'Lichtdruck/ Blueprin', 'Baik'),
(2, 'uns', '123', 123, '123', '123', 'surakarta', 'bangunan', '1234', '1234', '1234', '1234', '1234', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tb_arsip_publik`
--

CREATE TABLE `tb_arsip_publik` (
  `id` int(11) NOT NULL,
  `judul_arsip` varchar(255) NOT NULL,
  `tgl_publikasi_arsip` date NOT NULL,
  `unit_kerja` varchar(255) NOT NULL,
  `file_arsip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_arsip_publik`
--

INSERT INTO `tb_arsip_publik` (`id`, `judul_arsip`, `tgl_publikasi_arsip`, `unit_kerja`, `file_arsip`) VALUES
(1, 'aaa', '2021-04-13', 'aaa', '20_21-GAMEDEV-TI-ABCD-UAS_(1).pdf'),
(2, 'Peraturan Rektor Universitas Sebelas Maret Nomor 1 tahun 2019 tentang Pedoman Kerjasama Universitas Sebelas Maret', '0000-00-00', 'Universitas Sebelas Maret', 'RESUME_nur_aisyah_sholihah.pdf'),
(3, 'cc', '2021-06-26', 'yuenes yes', 'CV.pdf'),
(4, 'coba 1', '2021-06-26', 'uns', '3x4_terbaru.pdf'),
(5, 'dd', '2021-06-10', 'uns', 'cv_upt.pdf'),
(6, 'ff', '2021-06-19', 'Universitas Sebelas Maret', 'hyperloop_method.pdf'),
(7, 'gg', '2021-06-03', 'Universitas Sebelas Maret', 'romi-se-uml-apr2020.pdf'),
(8, 'hh', '2021-06-04', 'uns', 'M3119068-TI_C-Nur_Aisyah_Sholihah-_A-BTS_Router1.pdf'),
(9, 'rrr', '2021-06-11', 'Universitas Sebelas Maret', 'Preview1.pdf'),
(10, 'surat', '2021-06-26', 'yuenes yes', 'NLP1.pdf'),
(11, 'coba 1r3', '2021-06-12', 'jzk', 'SOAL_UTS_Praktikum_Anapersis1.pdf'),
(1, 'aaa', '2021-04-13', 'aaa', '20_21-GAMEDEV-TI-ABCD-UAS_(1).pdf'),
(2, 'Peraturan Rektor Universitas Sebelas Maret Nomor 1 tahun 2019 tentang Pedoman Kerjasama Universitas Sebelas Maret', '0000-00-00', 'Universitas Sebelas Maret', 'RESUME_nur_aisyah_sholihah.pdf'),
(3, 'cc', '2021-06-26', 'yuenes yes', 'CV.pdf'),
(4, 'coba 1', '2021-06-26', 'uns', '3x4_terbaru.pdf'),
(5, 'dd', '2021-06-10', 'uns', 'cv_upt.pdf'),
(6, 'ff', '2021-06-19', 'Universitas Sebelas Maret', 'hyperloop_method.pdf'),
(7, 'gg', '2021-06-03', 'Universitas Sebelas Maret', 'romi-se-uml-apr2020.pdf'),
(8, 'hh', '2021-06-04', 'uns', 'M3119068-TI_C-Nur_Aisyah_Sholihah-_A-BTS_Router1.pdf'),
(9, 'rrr', '2021-06-11', 'Universitas Sebelas Maret', 'Preview1.pdf'),
(10, 'surat', '2021-06-26', 'yuenes yes', 'NLP1.pdf'),
(11, 'coba 1r3', '2021-06-12', 'jzk', 'SOAL_UTS_Praktikum_Anapersis1.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_arsip_tekstual`
--

CREATE TABLE `tb_arsip_tekstual` (
  `id_arsip_tekstual` int(11) NOT NULL,
  `unit_kerja` varchar(255) NOT NULL,
  `kode_klasifikasi` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `isi_informasi` text NOT NULL,
  `masalah` varchar(255) NOT NULL,
  `retensi_aktif` varchar(255) NOT NULL,
  `retensi_inaktif` varchar(255) NOT NULL,
  `file_url` varchar(255) NOT NULL,
  `watermark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_arsip_tekstual`
--

INSERT INTO `tb_arsip_tekstual` (`id_arsip_tekstual`, `unit_kerja`, `kode_klasifikasi`, `tanggal`, `isi_informasi`, `masalah`, `retensi_aktif`, `retensi_inaktif`, `file_url`, `watermark`) VALUES
(8, 'Universitas Sebelas Maret', 'HK.08.00', '14 Agustus 2008', 'Sertifikat Akreditasi oleh BAN-PT RI No. 018/BAN-PT/Ak-XI/S1/VIII/2008 menyatakan Program Studi Arsitektur, Universitas Sebelas Maret (UNS), Surakarta terakreditasi A, Berlaku 5 (lima) tahun, sejak 14 Agustus 2008 sampai dengan 14 Agustus 2013', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', 'a3fee-pedoman-kerjasama-nomor-1-tahun-2019-dikompresi_reduce_(1)2.pdf', ''),
(9, 'Universitas Sebelas Maret', 'HK.08.00', '3 Januari 2018', 'SK BAN-PT RI No. 160/SK/BAN-PT/Akred/S/I/2018 Tentang Status Akreditasi dan Peringkat Terakreditasi Program Studi Sastra Indonesia dan Program Sarjana Universitas Sebelas Maret ditetapkan sebagai berikut:a. Status Akreditasi            : Terakreditasib. Peringkat Terakreditasi : A dengan Nilai 364', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '784fd-sk-s1-sastra-indonesia.pdf', ''),
(10, 'Universitas Sebelas Maret', 'HK.08.00', '3 Januari 2018', 'Sertifikat Akreditasi oleh BAN-PT RI No. 160/BAN-PT/Akred/S/I/2018 menyatakan Program Studi Sastra Indonesia, Universitas Sebelas Maret (UNS), Surakarta terakreditasi A, Berlaku 5 (lima) tahun, sejak 3 Januari 2018 sampai dengan 3 Januari 2023', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '66a3d-sertifikat-akreditasi-s1-sastra-indonesia.pdf', ''),
(11, 'Universitas Sebelas Maret', 'HK.08.00', '17 Februari 2011', 'Sertifikat Akreditasi oleh BAN-PT RI No. 047/BAN-PT/Ak-XIII/S1/II/2011 menyatakan Program Studi Pendidikan Teknik Masin, Universitas Sebelas Maret (UNS), Surakarta terakreditasi A, Berlaku 5 (lima) tahun, sejak 17 Februari 2011 sampai dengan 17 Februari 2016', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', 'd31ee-ptm-201126092018151529.pdf', ''),
(12, 'Universitas Sebelas Maret', 'HK.08.00', '28 Juli 2011', 'Sertifikat Akreditasi oleh BAN-PT RI No. 016/BAN-PT/Ak-XIV/S1/VII/2011 menyatakan Program Studi Pendidikan Ekonomi, Universitas Sebelas Maret (UNS), Surakarta terakreditasi A, Berlaku 5 (lima) tahun, sejak 28 Juli 2011 sampai dengan 28 Juli 2016', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '', ''),
(13, 'Universitas Sebelas Maret', 'HK.08.00', '12 Januari 2008', 'Sertifikat Akreditasi oleh BAN-PT RI No. 032/BAN-PT/Ak-X/S1/I/2008 menyatakan Program Studi Pendidikan Seni Rupa, Universitas Sebelas Maret (UNS), Surakarta terakreditasi B, Berlaku 5 (lima) tahun, sejak 12 Januari 2008 sampai dengan 12 Januari 2013', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '28847-pend-senirupa-2008_001.pdf', ''),
(14, 'Universitas Sebelas Maret', 'HK.08.00', '5 Juni 2009', 'Sertifikat Akreditasi oleh BAN-PT RI No. 013/BAN-PT/Ak-XII/S1/VI/2009 menyatakan Program Studi Pendidikan Pancasila dan Kewarganegaraan, Universitas Sebelas Maret (UNS), Surakarta terakreditasi B, Berlaku 5 (lima) tahun, sejak 5 Juni 2009 sampai dengan 5 Juni 2014', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '', ''),
(15, 'Universitas Sebelas Maret', 'HK.08.00', '8 Oktober 2010', 'Sertifikat Akreditasi oleh BAN-PT RI No. 020/BAN-PT/Ak-XIII/S1/X/2010 menyatakan Program Studi Pendidikan Kepelatihan Olahraga, Universitas Sebelas Maret (UNS), Surakarta terakreditasi A, Berlaku 5 (lima) tahun, sejak 8 Oktober 2010 sampai dengan 8 Oktober 2015', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '', ''),
(16, 'Universitas Sebelas Maret', 'HK.08.00', '19 Oktober 2013', 'Sertifikat Akreditasi oleh BAN-PT RI No. 211/SK/BAN-PT/Ak-XVI/S/X/2013 menyatakan Program Studi Sarjana Bimbingan dan Konseling, Universitas Sebelas Maret (UNS), Surakarta terakreditasi B, Berlaku 5 (lima) tahun, sejak 19 Oktober 2013 sampai dengan 19 Oktober 2018', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '9b785-s1-bk-2013.pdf', ''),
(17, 'Universitas Sebelas Maret', 'HK.08.00', '12 April 2008', 'Sertifikat Akreditasi oleh BAN-PT RI No. 048/BAN-PT/Ak-I/Inst/IV/2008 menyatakan Program Studi Pendidikan Sejarah, Universitas Sebelas Maret (UNS), Surakarta terakreditasi B, Berlaku 5 (lima) tahun, sejak 12 April 2008 sampai dengan 12 April 2013', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '', ''),
(18, 'Universitas Sebelas Maret', 'HK.08.00', '17-Sep-10', 'Sertifikat Akreditasi oleh BAN-PT RI No. 018/BAN-PT/Ak-XIII/S1/IX/2010 menyatakan Program Studi Pendidikan Jasmani, Kesehatan dan Rekreasi, Universitas Sebelas Maret (UNS), Surakarta terakreditasi A, Berlaku 5 (lima) tahun, sejak 17 September 2010 sampai dengan 17 September 2015', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '', ''),
(20, 'Universitas Sebelas Maret', 'HK.08.00', '6 Januari 2012', 'Sertifikat Akreditasi oleh BAN-PT RI No. 048/BAN-PT/Ak-XIV/S1/I/2012 menyatakan Program Studi Pendidikan Sosiologi Antropologi, Universitas Sebelas Maret (UNS), Surakarta terakreditasi B, Berlaku 5 (lima) tahun, sejak 6 Januari 2012 sampai dengan 6 Januari 2017', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '', ''),
(21, 'Universitas Sebelas Maret', 'HK.08.00', '12 Januari 2008', 'Sertifikat Akreditasi oleh BAN-PT RI No. 032/BAN-PT/Ak-X/S1/I/2008 menyatakan Program Studi Pendidikan Sejarah, Universitas Sebelas Maret (UNS), Surakarta terakreditasi B, Berlaku 5 (lima) tahun, sejak 12 Januari 2008 sampai dengan 12 Januari 2013', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '219a7-akreditasi-pend-sejarah-2008_001.pdf', ''),
(22, 'Universitas Sebelas Maret', 'HK.08.00', '2 Oktober 2018', 'Surat Keterangan Akreditasi Program Studi Pendidikan Guru Sekolah Dasar (PGSD) Program Sarjana Univeristas Sebelas Maret Nomor 13676/UN27/AK/2018', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '66118-akreditasi-pgsd-sebelum-14-juli-2011.pdf', ''),
(23, 'Universitas Sebelas Maret', 'HK.08.00', '3 Oktober 2018', 'Surat Keterangan Akreditasi Institusi Universitas Sebelas Maret Nomor 13751/UN27/AK/2018', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', 'd5d45-akreditasi-uns-sebelum-12-april-2008.pdf', ''),
(24, 'Universitas Sebelas Maret', 'HK.08.00', '19 Oktober 2013', 'Sertifikat Akreditasi BAN PT RI berdasarkan keputusan BAN-PT No.211/SK/BAN-PT/Ak-XVI/S/X/2013 menyatakan bahwa Program Studi Sarjana Bimbingan dan Konseling, Universitas Sebelas Maret, Surakarta terakreditasi B', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '4c3dd-s1-bk-2013.pdf', ''),
(25, 'Universitas Sebelas Maret', 'HK.08.00', '8 Januari 2010', 'Keputusan Badan Akreditasi Nasional Perguruan Tinggi Nomor : 040/BAN-PT/Ak-XII/S1/I/20I0 tentang Status, Peringkat, dan Hasil Akreditasi Program Sarjana di Perguruan Tinggi Tanggal: 8 Januari 2010', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '7007f-sk-akreditasi-pbi-2010.pdf', ''),
(26, 'Universitas Sebelas Maret', 'HK.08.00', '16 Januari 2014', 'Keputusan Badan Akreditasi Nasional Perguruan Tinggi No.016/SK/BAN-PT/Akred/PT/I/2014 tentang Nilai dan Peringkat Akreditasi Institusi Perguruan Tinggi Badan Akreditasi Nasional Perguruan Tinggi menyatakan bahwa Universitas Sebelas Maret, Surakarta terakreditasi dengan Nilai dengan Nilai 372 Peringkat A (sangat baik)', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', 'adde0-sk-akreditasi-uns-a-2014.pdf', ''),
(27, 'Universitas Sebelas Maret', 'HK.08.00', '17-Sep-10', 'Sertifikat Akreditasi BAN PT RI berdasarkan keputusan BAN-PT No.018/SK/BAN-PT/Ak-XIII/S1/IX/2018 menyatakan bahwa Program Studi Sarjana Pendidikan Jasmani, Kesehatan dan Rekreasi, Universitas Sebelas Maret, Surakarta terakreditasi A', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '', ''),
(28, 'Universitas Sebelas Maret', 'HK.08.00', '17 Juli 2018', 'Sertifikat Akreditasi berdasarkan keputusan BAN-PT No.142/SK/BAN_PT/Akred/PT/VII/2018 bahwa Universitas Sebelas MAret terakreditasi A', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', 'a20bc-akreditasi-uns-2018.pdf', ''),
(29, 'Universitas Sebelas Maret', 'HK.08.00', '16 Januari 2014', 'Sertifikat Akreditasi berdasarkan keputusan BAN-PT N0.16/SK/BAN_PT/Akred/PT/I/2014 bahwa Universitas Sebelas MAret terakreditasi A', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '4b3b7-akreditasi-uns-2014.pdf', ''),
(30, 'Universitas Sebelas Maret', 'HK.08.00', '22-Nov-13', 'Keputusan Badan Akreditasi Nasional Perguruan Tinggi Nomor 237/SK/BAN-PT/Ak-XVI/S/XI/2013 tentang NILAI DAN PERINGKAT AKREDITASI PROGRAM STUDI PADA PROGRAM SARJANA', 'Akreditasi Perguruan Tinggi', 'selama masih berlaku', '2 tahun', '96e7e-s1-akuntansi-2013.pdf', ''),
(31, 'Universitas Sebelas Maret', 'HK.08.00', '29 Agustus 2008', 'Keputusan Badan Akreditasi Nasional Perguruan Tinggi No,or 020/BAN-PT/Ak-XI/S1/VIII/2008 tentang Status, Peringkat, dan Hasil Akreditasi Program Sarjana di Perguruan Tinggi', 'Akreditasi Perguruan Tinggi', 'Selama masih berlaku', '2 tahun', 'ca8d2-s1-akuntansi-2008.pdf', ''),
(32, 'Bagian TU,RT,HTL', 'HK.00.15', '4 Juni 2015', 'Peraturan Rektor UNS no. 734A/UN27/HK/2015 tentang Pengesahan dan Pemberlakuan Falsafah Visi, Misi dan Tujuan Universitas Sebelas Maret', 'Keputusan Rektor', ' 1 Tahun setelah tidak berlaku', '4 Tahun', '1a2a3-peraturan-rektor-no.-734a.pdf', ''),
(33, 'Universitas Sebelas Maret', '', '22 Desember 2017', 'Organisasi dan Tata Kerja berdasarkan Peraturan Menteri Riset, Teknologi, dan Pendidikan Tinggi Republik Indonesia Nomor 73 Tahun 2017', '', '', '', '8d2b2-peraturan-menristekdikti-no-73-tahun-2017-tentang-otk-uns.pdf', ''),
(34, 'Badan Layanan Umum (BLU)', '', '22 Desember 2017', 'Berdasarkan Keputusan Menteri Keuangan Republik Indonesia Nomor 52/KMK.05/2009 Salinan Keputusan Menteri Keuangan', '', '', '', '', ''),
(35, 'SENAT UNS', '', '1982', 'Sejarah Perubahan Nama UNS', '', '', '', 'c2a20-6.pdf', ''),
(36, 'SENAT UNS', '', '1977', 'Riwayat Berdirinya UNS Tahun 1977', '', '', '', 'b4a35-5-c.pdf', ''),
(37, 'SENAT UNS', '', '1976-1998', 'Surat Keputusan Rektor UNS  tentang Pemberhentian dan PengangkatanAnggota Komisi Senat Periode 1976-1998', '', '', '', '52fc1-3.pdf', ''),
(38, 'Bagian Pendidikan Kantor Pusat', 'PP.09', '4 Nopember 1992', 'Surat dari Dirjen Dikti tentang penjeleasan tentang tindak lanjut SK Dirjen Dikti No.400a (pembentukan prodi pendidikan jasmani sekolah dasar) dan 400b (pembentukan prodi pendidikan guru kelas sekolah dasar)', 'Administrasi program studi ', '1 Tahun', '4 Tahun', '10122-77.pdf', ''),
(39, 'Bagian Pendidikan Kantor Pusat', 'HK.00.18', '11 Pebruari 2010', 'Surat Edaran Rektor tentang penyelenggaraan mata kuliah umum (MKU) pendidikan pancasila dan kewarganegaraan', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', 'bc960-41.pdf', ''),
(40, 'Bagian Pendidikan Kantor Pusat', 'HK.00.18', '2009', 'Surat Edaran Rektor tentang perbaikan kualitas layanan akademik', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', 'ee099-40.pdf', ''),
(41, 'Bagian Pendidikan Kantor Pusat', 'HK.00.18', '15-Sep-92', 'Pengumuman Rektor UNS tentang ketentuan foto untuk ijazah (foto untuk ijazah tidak memakai tutup kepala) sedangkan untuk kartu mahasiswa boleh memakai jilbab', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', '42477-39.pdf', ''),
(42, 'Bagian Pendidikan Kantor Pusat', 'HK.00.17', '29 Juli 2006', 'Surat Edaran Rektor UNS tentang ketentuan atau kriteria pemberian keringanan SPP/BPI bagi mahasiswa UNS yang terkena bencana gempa bumi', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', 'b51c9-38.pdf', ''),
(43, 'Bagian Pendidikan Kantor Pusat', 'HK.00.13', '5 Januari 2010', 'Surat Edaran Dikti tentang penyelenggaraan perkuliahan pendidikan pancasila di Perguruan Tinggi', 'Surat Edaran Dikti', '1 Tahun', '4 Tahun', 'd595d-12.pdf', ''),
(44, 'Bagian Pendidikan Kantor Pusat', 'HK.00.13', '7 Agustus 1986', 'Surat Edaran dari Kepala BAKN No.08/SE/1986 tentang pengesahan salinan atau Fotocopy ijazah/STTB/tanda lulus/Surat Keterangan Pengganti atau dokumen lainnya yang berpenghargaan sama dengan ijazah/STTB/tanda lulus', 'Surat Edaran BAKN', '1 Tahun', '4 Tahun', '52299-11.pdf', ''),
(45, 'Bagian Pendidikan Kantor Pusat', 'HK.00.10', '2 Juni 2006', 'SK Dikti No.43/Dikti/Kep/2006 tentang Rambu-rambu pelaksanaan kelompok mata kuliah pengembangan kepribadian di perguruan tinggi dan SK Dikti No.44/Dikti/Kep/2006 Rambu-rambu pelaksanaan kelompok mata kuliah berkehidupan bermasyarakat di Perguruan Tinggi', 'SK Dikti', '1 Tahun', '4 Tahun', 'bb974-10.pdf', ''),
(46, 'Bagian Pendidikan Kantor Pusat', 'HK.00.05', '26 Januari 1998', 'SK Mendikbud RI No.013/U/1998 tentang program pembentukan kemampuan mengajar', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '118e6-9.pdf', ''),
(47, 'Bagian Pendidikan Kantor Pusat', 'HK.00.05', '1 Desember 1994', 'SK Mendikbud RI No.0318/U/1994 tentang pengadaan dan penyetaraan Diploma III Guru Sekolah Menengah Umum Tingkat Pertama', 'Keputusan Menteri', '1 Tahun', '4 Tahun', 'f1887-7.pdf', ''),
(48, 'Bagian Pendidikan Kantor Pusat', 'HK.00.05', '19 Maret 1994', 'SK Mendikbud RI No.056/U/1994 tentang Pedoman Penyusunan Kurikulum Pendidikan Tinggi dan Penilaian Hasil Belajar Mengajar', 'Keputusan Menteri', '1 Tahun', '4 Tahun', 'd01a6-6.pdf', ''),
(49, 'Bagian Pendidikan Kantor Pusat', 'HK.00.05', '24 Pebruari 1993', 'SK Mendikbud RI No.17/D/O/1993 tentang kurikulum yang berlaku secara nasional pendidikan tinggi program sarjana bidang ilmu hukum pada Fakultas Hukum', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '619e7-5.pdf', ''),
(50, 'Bagian Pendidikan Kantor Pusat', 'HK.00.05', '5 April 1984', 'Keputusan Mendikbud RI No.0171/O/1984 tentang Penataan Laboratorium / studio pada jurusan di lingkungan universitas / Institut Negeri', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '83b1c-4.pdf', ''),
(51, 'Bagian Pendidikan Kantor Pusat', 'HK.00.05', '5 Maret 1983', 'Keputusan Mendikbud RI No.0141/O/1983 tentang Organisasi dan Tata Kerja UNS', 'Keputusan Menteri', '1 Tahun', '4 Tahun', 'c6e04-3.pdf', ''),
(52, 'Bagian Pendidikan Kantor Pusat', 'HK.00.05', '26 Juni 1982', 'Keputusan Mendikbud RI No.0211/U/1982 tentang Program Pendidikan Tinggi di Lingkungan Depdikbud', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '9ad11-2.pdf', ''),
(53, 'Bagian Pendidikan Kantor Pusat', 'HK.00.05', '8 Juni 1979', 'Keputusan Mendikbud No.0214/U/1979 tentang jenjang program pendidikan tinggi dan program akta mengajar dalam lingkungan Depdikbud', 'Keputusan Menteri', '1 Tahun', '4 Tahun', 'a510e-1.pdf', ''),
(54, 'Bagian Pendidikan', 'HM.06', '2010', 'Surat dari Kepala Biro Administrasi Akademik tentang pemberitahuan wisuda secara On Line', 'Penerbitan, Publikasi & Dokumentasi', '1 Tahun', '-', '3e287-535.pdf', ''),
(55, 'Bagian Pendidikan', 'OT.00.00', '17 Pebruari 2010', 'Surat Edaran No. 170/D/T/2010 tentang Perubahan Perguruan Tinggi Menjadi Badan Hukum Pendidikan', 'Tata Kerja Organisasi', '1 tahun setelah di perbaharui', '4 Tahun', '238a2-533.pdf', ''),
(56, 'Bagian Pendidikan', 'OT.00', '25 Agustus 2004', 'Keputusan Mendiknas No. 112/O/2004 tentang Statuta UNS', 'Statuta', 'Selama masih berlaku', '2 Tahun', '9dd93-531-c.pdf', ''),
(57, 'Bagian Pendidikan', 'OT.00', '1996-1997', 'Berkas tentang Fakultas MIPA UNS :  1) SK. Mendikbud No. 0297/O/1996 tentang Pendirian F.MIPA UNS;          2) SK. Rektor UNS No. 312/PT40.H/I/ 1996 tentang Pembentukan/ Pengangkatan Tim Persiapan F.MIPA UNS;                      3) SK. Rektor UNS No. 110/J27/KP/ 1997 tentang Aluh Tugas Tenaga Pengajar Tetap di Lingkungan UNS ke F.MIPA UNS         4) SK. Rektor UNS No. 125/J27/PP/ 1997 tentang Perpindahan Prodi Matematika dari Fakultas Teknik ke F.MIPA UNS;             5) SK. Rektor UNS No. 126/J27/PP/ 1997 tentang Pembakuan Warna Pokok F.MIPA UNS', 'Tata Kerja Organisasi', '1 tahun setelah di perbaharui', '4 Tahun', '88f22-530.pdf', ''),
(58, 'Bagian Pendidikan', 'HK.06.00', '2008-2009', 'Kumpulan surat tentang perpanjangan ijin penyelenggaraan prodi tahun 2008-2009 :                                                  1) No. 4594/D/T/2008 : Prodi S2 Ilmu Gizi;                                                      2) No. 4595/D/T/2008 : S2 Akuntansi; 3) No. 4596/D/T/2008 : S2 Adm. Publik;4) No. 4597/D/T/2008 : S2 Pendidikan Sejarah;                                                5) No. 4598/D/T/2008 : D3 Perpustakaan;                                      6) No. 4599/D/T/2008 : D3 Bahasa Mandarin;                                            7) No. 306/D/T/2009 : Pedndidikan Profesi Akuntansi;', 'Perijinan', '1 Tahun setelah tidak berlaku', '4 Tahun', '85845-529.pdf', ''),
(59, 'Bagian Pendidikan', 'HK.06.00', '26 Desember 2006', 'Surat tentang ijin penyelenggaraan Prodi Hiperkes & Keselamatan Kerja (D3) UNS tahun 2006', 'Perijinan', '1 Tahun setelah tidak berlaku', '4 Tahun', '81224-528.pdf', ''),
(60, 'Bagian Pendidikan', 'HK.00.19', '1994', 'Surat Edaran tentang Petunjuk Pelaksanaan Pemantauan Hasil Belajar dan Peningkatan Diri Sebagai Kelengkapan Pelaksanaan SK Rektor No. 03/PT40/I/1987 tanggal 12 Januari 1987 Pasal 25 Ayat c dan 26', 'Pedoman Rektor', '1 Tahun', '4 Tahun', 'daed3-520-c.pdf', ''),
(61, 'Bagian Pendidikan', 'HK.00.18', '2009', 'Surat Edaran  Rektor UNS No. 8828/ H27/PP/2009 tentang Integrasi Sistim SPMB UNS', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', '65d76-519.pdf', ''),
(62, 'Bagian Pendidikan', 'HK.00.18', '18 Juni 2009', 'Surat Edaran  Rektor UNS No. 4683/ H27/PP/2009 tentang Pendelegasian Penandatanganan SK di Tingkat Fakultas Cukup Dengan SK. Dekan', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', 'bf8d5-518.pdf', ''),
(63, 'Bagian Pendidikan', 'HK.00.18', '18 Maret 2009', 'Surat Edaran  Rektor UNS No. 2570/ J27/PP/2009 tentang Peningkatan Suasana Akademik di Lingkungan UNS Melalui Optimalisasi e-Journal', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', '4fee3-517.pdf', ''),
(65, 'Bagian Pendidikan', 'HK.00.18', '31 Januari 2007', 'SK. Dekan Fakultas Kedokteran UNS tentang Pembentukan Tim Pengelola Pendidikan Klinik Fakultas Kedokteran UNS', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', '7e684-515.pdf', ''),
(66, 'Bagian Pendidikan', 'HK.00.18', '29 Juli 2006', 'Surat Edaran  Rektor UNS No. 5702a/ J27/KU/2006  tentang Pemberian Keringanan SPP &/ BPI Bagi Mahasiswa UNS Yang Terkena Bencana Gempa Bumi', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', 'a9be9-514.pdf', ''),
(67, 'Bagian Pendidikan', 'HK.00.18', '2005', 'Surat Edaran  Rektor UNS No. 6357/ J27/PP/2005  tentang Penyelenggaraan MKU Bahasa Inggris Bagi Mahasiswa Program S1 Reguler TA 2005/2006', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', '324dc-513.pdf', ''),
(68, 'Bagian Pendidikan', 'HK.00.18', '27 Juni 2005', '1) Surat Edaran  Rektor UNS No. 2941/ J27/PP/2005 tentang Kualifikasi  Tenaga Akademik;                                2) Surat No. 4247/J27/PP/2005 tentang Penjelasan Edaran Rektor No. 2941/J27/PP/2005', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', '01d96-512.pdf', ''),
(69, 'Bagian Pendidikan', 'HK.00.18', '13 Desember 2005', 'Surat Edaran  Rektor UNS  tentang Mahasiswa Reguler Mulai Angkatan 2002 Wajib Memiliki Skor Toefl 450', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', '26b86-511.pdf', ''),
(70, 'Bagian Pendidikan', 'HK.00.18', '6 Juni 2005', 'Surat Edaran  Rektor UNS No. 2941/ J27/PP/2005 tentang Standar Kualifikasi Pendidikan Minimium Tenaga Akademik', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', '65cdf-510.pdf', ''),
(71, 'Bagian Pendidikan', 'HK.00.18', '26 Agustus 1993', 'Surat Edaran dari Pembantu Rektor I UNS No. 8156/PT.40.HI/I/1993 tentang Petunjuk Pelaksanaan Pemantauan Hasil Belajar & Peringatan Dini Sebagai Kelengkapan Pelaksanaan SK. Rektor No. 177/PT.40.H/I/1992 tanggal 7 Oktober 1992 Pasal 27 & 28', 'Surat Edaran PR I', '1 Tahun', '4 Tahun', '407cb-509.pdf', ''),
(72, 'Bagian Pendidikan', 'HK.00.13', '12-Sep-02', 'Surat Edaran Dirjen Dikti tentang Pedoman Photo Berjilbab/Berkerudung Untuk Kelengkapan Administrasi Akademik', 'Surat Edaran Dirjen', '1 Tahun', '4 Tahun', 'e07f8-423.pdf', ''),
(73, 'Bagian Pendidikan', 'HK.00.10', '30 Mei 1995', 'Surat Edaran Dirjen Dikti No. 1241/D/T/1995 tentang Pedoman Pembukaan Program Ekstensi di PTN', 'Surat Edaran Dirjen', '1 Tahun', '4 Tahun', '6ddba-422.pdf', ''),
(74, 'Bagian Pendidikan', 'HK.00.10', '2 April 2007', 'SK. Dikti No. 68/Dikti/Kep/2007 tentang Penataan dan Penetapan Kembali Ijin Penyelenggaraan Prodi Pada UNS', 'Keputusan Dirjen', '1 Tahun', '4 Tahun', '2fa49-421.pdf', ''),
(75, 'Bagian Pendidikan', 'HK.00.10', '18 Juli 2002', 'SK. Dikti No. 38/Dikti/Kep/2002 tentang Rambu-Rambu Pelaksanaan Mata Kuliah Pengembangan Kepribadian  di Perguruan Tinggi', 'Keputusan Dirjen', '1 Tahun', '4 Tahun', '77dcb-420.pdf', ''),
(76, 'Bagian Pendidikan', 'HK.00.10', '3 Juli 2002', 'SK. Dikti No. 34/Dikti/Kep/2002 tentang Perubahan dan Peraturan Tambahan Kep.Dirjen Dikti No.08/Dikti/Kep/2002 tentang Petunjuk Teknis Keputusan Mendiknas  No. 184/U/2001 tentang Pedoman Pengawasan Pengendalian dan Pembinaan Program Diploma, Sarjana, dan Pascasarjana di Perguruan Tinggi', 'Keputusan Dirjen', '1 Tahun', '4 Tahun', '81c84-419.pdf', ''),
(77, 'Bagian Pendidikan', 'HK.00.10', '5 Juni 2002', 'SK. Dikti No. 28/Dikti/Kep/2002 tentang Penyelenggaraan Program Reguler dan Non Reguler di PTN', 'Keputusan Dirjen', '1 Tahun', '4 Tahun', '0c77e-418.pdf', ''),
(78, 'Bagian Pendidikan', 'HK.00.10', '6 Pebruari 2002', 'SK. Dikti No. 08/Dikti/Kep/2002 tentang Petunjuk Teknis Kepmendiknas No. 184/U/2001 tentang Pedoman Pengawasan Pengendalian dan Pembinaan Program Diploma, Sarjana, dan Pascasarjana di Perguruan Tinggi', 'Keputusan Dirjen', '1 Tahun', '4 Tahun', '8b056-417.pdf', ''),
(79, 'Bagian Pendidikan', 'HK.00.10', '30 April 2001', 'SK. Dikti No. 108/Dikti/Kep/2001 tentang Pedoman Pembukaan Prodi Dan/Atau Jurusan Berdasarkan Kepmendiknas No. 234/U/2000 tentang Pendirian Perguruan Tinggi', 'Keputusan Dirjen', '1 Tahun', '4 Tahun', '412ff-416.pdf', ''),
(80, 'Bagian Pendidikan', 'HK.00.10', '5 Desember 1997', 'SK. Dikti No. 446/Dikti/Kep/1997 tentang Pembentukan Prodi S1 Produksi Ternak Pada Fakultas Pertanian UNS', 'Keputusan Dirjen', '1 Tahun', '4 Tahun', 'aff37-415.pdf', ''),
(81, 'Bagian Pendidikan', 'HK.00.10', '31 Juli 1996', 'SK. Dikti No. 403/Dikti/Kep/1996 tentang Pembukaan Program Ekstensi Dalam Prodi Matematika Pada Fakultas Teknik UNS', 'Keputusan Dirjen', '1 Tahun', '4 Tahun', '7fc6e-414.pdf', ''),
(82, 'Bagian Pendidikan', 'HK.00.10', '24 Juni 1996', 'SK. Dikti No. 199/Dikti/Kep/1996 tentang Penyelenggaraan Program Ekstensi di Perguruan Tinggi', 'Keputusan Dirjen', '1 Tahun', '4 Tahun', 'befb3-413.pdf', ''),
(83, 'Bagian Pendidikan', 'HK.00.10', '20 Agustus 1992', 'SK. Dikti No. 4006/Dikti/Kep/1992 tentang Pembentukan Prodi PGSD pada 31 Lembaga Pendidikan Tenaga Kependidikan (LPTK) Negeri', 'Keputusan Dirjen', '1 Tahun', '4 Tahun', 'f28e4-412.pdf', ''),
(84, 'Bagian Pendidikan', 'HK.00.08', '18 Maret 2009', 'Surat Edaran Rektor UNS No. 2570/H27/PP/2009 tentang Peningkatan Suasana Akademik di Lingkungan UNS Melalui Optimalisasi      e-Journal', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', 'c52cf-411.pdf', ''),
(85, 'Bagian Pendidikan', 'HK.00.05', '2002', 'SK. Menpan RI No. 207/M.PAN/7/2002 tentang Perubahan Nama Fakultas Sastra Menjadi Fakultas Sastra dan Seni Rupa', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '07b76-407.pdf', ''),
(86, 'Bagian Pendidikan', 'HK.00.05', '13 Agustus 2002', 'SK. Mendiknas No. 156/O/2002 tentang Perubahan atas Kepmendikbud No. 0201/O/1995 tentang Organisasi dan Tata Kerja UNS ', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '3ab2e-406.pdf', ''),
(87, 'Bagian Pendidikan', 'HK.00.05', '2 April 2002', 'SK. Mendiknas No. 045/U/2002 tentang Kurikulum Inti Pendidikan Tinggi ', 'Keputusan Menteri', '1 Tahun', '4 Tahun', 'e18b4-405.pdf', ''),
(88, 'Bagian Pendidikan', 'HK.00.05', '23 Nopember 2001', 'SK. Mendiknas No. 184/U/2001 tentang Pedoman Pengawasan Pengendalian dan Pembinaan Program Diploma, Sarjana dan Pascasarjana di Perguruan Tinggi ', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '89c63-404.pdf', ''),
(89, 'Bagian Pendidikan', 'HK.00.05', '21 Nopember 2001', 'SK. Mendiknas No. 178/U/2001 tentang Gelar dan Lulusan Perguruan Tinggi ', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '6392c-403-c.pdf', ''),
(90, 'Bagian Pendidikan', 'HK.00.05', '2 Juli 2001', 'SK. Mendiknas No. 107/U/2001 tentang Penyelenggaraan Program Pendidikan Tinggi Jarak Jauh', 'Keputusan Menteri', '1 Tahun', '4 Tahun', 'e8e4e-402.pdf', ''),
(91, 'Bagian Pendidikan', 'HK.00.05', '20 Desember 2000', 'SK. Mendikbud No. 232/U/2000 tentang Pedoman Penyusunan Kurikulum Pendidikan Tinggi & Penilaian Hasil Belajar Mahasiswa', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '58100-401.pdf', ''),
(92, 'Bagian Pendidikan', 'HK.00.05', '1998', 'Sk. Mendikbud No. 87/D/O/1998 tentang Rincian Tugas Bagian dan Sub Bagian di Lingkungan UNS', 'Keputusan Menteri', '1 Tahun', '4 Tahun', 'e0dc2-399-c.pdf', ''),
(93, 'Bagian Pendidikan', 'HK.00.05', '1995', 'SK. Mendikbud No. 201/O/1995 tentang Organisasi dan Tata Kerja UNS', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '9782f-397-c.pdf', ''),
(94, 'Bagian Pendidikan', 'HK.00.05', '1995', 'Keputusan Mendikbud RI No. 0223/U/1995 tentang Kurikulum Yang Berlaku Secara Nasional Program Sarjana  Ilmu Sosial & Ilmu Politik', 'Keputusan Menteri', '1 Tahun', '4 Tahun', 'b4deb-396-c.pdf', ''),
(95, 'Bagian Pendidikan', 'HK.00.05', '1995', 'Keputusan Mendikbud RI No. 0219/U/1995 tentang Kurikulum Yang Berlaku Secara Nasional Program Sarjana Matematika dan Ilmu Pengetahuan Alam', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '4474a-395-c.pdf', ''),
(96, 'Bagian Pendidikan', 'HK.00.05', '1995', 'SK. Mendikbud No. 0218/U/1995 tentang Kurikulum Yang Berlaku Secara Nasional Program Sarjana Ilmu Teknik', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '70d2d-394-c.pdf', ''),
(97, 'Bagian Pendidikan', 'HK.00.05', '1 Desember 1994', 'SK. Mendikbud No. 0318/U/1994 tentang Pengadaan dan Penyetaraan DIII Guru Sekolah Menengah Umum Tk. Pertama', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '3ed35-388.pdf', ''),
(98, 'Bagian Pendidikan', 'HK.00.05', '1 Desember 1994', 'SK. Mendikbud No. 0318/U/1994 tentang Pengadaan dan Penyetaraan DIII Guru Sekolah Menengah Umum Tk. Pertama', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '8926c-387.pdf', ''),
(99, 'Bagian Pendidikan', 'HK.00.05', '9 Pebruari 1993', 'SK. Mendikbud No. 036/U/1993 tentang Gelar dan Sebutan Lulusan Perguruan Tinggi', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '5f339-386.pdf', ''),
(100, 'Bagian Pendidikan', 'HK.00.05', '30 Desember 1989', 'SK. Mendikbud No. 0354/O/1989 tentang Pengadaan dan Penyetaraan Guru SD', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '294ae-385.pdf', ''),
(101, 'Bagian Pendidikan', 'HK.00', '14 Mei 1977', 'Bendel tentang pelantikan Rektor tanggal 14 Mei 1977 : 1) Kep.Mendikbud No.25537/C/1/77 tentang pemberhentian Sdr. Parmanto, MA sebagai pejabat sementara Rektor Universitas Negeri Surakarta Sebelas Maret; 2) Kepres No.51/M tahun 1977 tentang pemberhentian GPH. Haryo Mataram, SH dan pengangkatan Brigjen TNI Dr. Prakosa sebagai Rektor UNS; 3) Berita acara pengambilan sumpah; 4) Naskah serah terima; 5) Pidato sambutan Mendikbud', 'Peraturan', '1 Tahun', '4 Tahun', 'f0105-379-c.pdf', ''),
(102, 'Bagian Pendidikan', 'PP.09.05', '2004-2005', 'Bendel tentang kelas jauh : 1) Rencana penyelenggaraan D2 PGSD di Kab. Cilacap; 2) Surat pernyataan penyelenggaraan prodi S2 di Kab.Banjarnegara (Teknologi Pendidikan); 3) Laporan penyelenggaraan kelas pararel maahasiswa S2 Ilmu Hukum di Gorontalo; 4) Penyelenggaraan D2 PGSD UNS di Kabupaten Tegal; 5) Program teledukasi prodi Sosiologi Konsentrasi Penelitian & Pemberdayaan Masyarakat; 6) SK Mendiknas No.107/U/2001 tentang penyelenggaraan program pendidikan tinggi jarak jauh; 7) Penyelenggaraan perkuliahan D2 PGSD Pemalang; 8) Penyelenggaraan perkuliahan Prodi Magister Ilmu Hukum Kelas Solo III; 9) Penyelenggaraan perkuliahan Prodi DII (Guru Kelas) & DIII Kanwil Depag Jabar', 'Administrasi program studi Jarak Jauh', '1 Tahun', '4 Tahun', 'e9d25-375.pdf', ''),
(103, 'Bagian Pendidikan', 'PP.09.02', '7 Pebruari 2002', 'Surat dari Rektor UNS tentang ijin penyelenggaraan pendidikan extention untuk prodi Teknik Industri, Teknik Mesin dan Teknik Kimia pada Fakultas Teknik UNS', 'Administrasi program studi Extention', '1 Tahun', '4 Tahun', '9c9d4-374.pdf', ''),
(104, 'Bagian Pendidikan', 'PP.09.02', '2010', 'Berkas tentang pembukaan Minat Utama Pendidikan Bahasa & Sastra Daerah/Jawa pada Prodi Pendidikan Bahasa Indonesia S2 Prpgram PPS UNS', 'Administrasi program studi S2', '1 Tahun', '4 Tahun', 'dd8f6-373.pdf', ''),
(105, 'Bagian Pendidikan', 'PP.09.02', '2010', 'Kumpulan surat ijin penyelenggaraan program studi S2 pada UNS :              1. No. 2431/D/T/K-N/2010 tentang ijin Prodi  Ilmu Linguistik                                     2. No. 5341/H27/PP/2010 tentang ijin Prodi Minat Utama pada Program S2 Pendidikan Bahasa Indonesia                                  3. No. 5814/H27/PP/2010 tentang ijin Prodi Minat Utama pada program S2 Penyuluhan Pembangunan       ', 'Administrasi program studi S2', '1 Tahun', '4 Tahun', '6dd89-372.pdf', ''),
(106, 'Bagian Pendidikan', 'PP.09.02', '2007-2009', 'Kumpulan surat ijin penyelenggaraan program studi S2 pada UNS :              1. No. 1916/D/T/2009 tentang ijin Prodi  Kajian Budaya2. No. 4594/D/T/2008 tentang ijin Prodi Ilmu Gizi                                                3. No. 1323/D/T/K-N/2009 tentang ijin Prodi Penyuluhan & Komunikasi Pembangunan Pertanian          ', 'Administrasi program studi S2', '1 Tahun', '4 Tahun', '84b56-371.pdf', ''),
(107, 'Bagian Pendidikan', 'PP.09.02', '13 Juli 2006', 'Surat  No. 5314/J27/PP/2006 tentang ijin penyelenggaraan Minat Utama Pendidikan Profesi Kesehatan, Pelayanan Profesi Kedokteran, Ilmu Biomedik pada Prodi Magister Kedokteran Keluarga Program Pascasarjana  UNS', 'Administrasi program studi S2', '1 Tahun', '4 Tahun', 'c8b62-370.pdf', ''),
(108, 'Bagian Pendidikan', 'PP.09.02', '31 Desember 2001', 'Surat  No. 11439/J27/ PP/2001 tentang ijin penyelenggaraan Minat Utama Manajemen Pembangunan Masyarakat (MPM) dan Minat Utama Ilmu Penyuluhan Pembangunan (IPP) Program Pascasarjana  UNS', 'Administrasi program studi S2', '1 Tahun', '4 Tahun', '80609-368.pdf', ''),
(109, 'Bagian Pendidikan', 'PP.09.01', '7 Pebruari 2002', 'Surat ijin penyelenggaraan pendidikan ekstensi untuk Prodi Teknik Industri, teknik Mesin, Teknik Kimia pada Fakultas teknik UNS', 'Administrasi program studi S1', '1 Tahun', '4 Tahun', 'ee9f8-365.pdf', ''),
(110, 'Bagian Pendidikan', 'PP.09.00', '5 Agustus 2010', 'Surat dari Dirjen Dikti tentang perubahan nama Prodi Bisnis Internasional menjadi Manajemen Perdagangan jenjang DIII', 'Administrasi program studi diploma DIII', '1 Tahun', '4 Tahun', 'a28f6-364.pdf', ''),
(111, 'Bagian Pendidikan', 'PP.09', '20 Juli 2010', 'Surat dari Dirjen Dikti tentang pemberitahuan mekanisme pengajuan pembukaan prodi baru', 'Administrasi program studi', '1 Tahun', '4 Tahun', 'e782e-361.pdf', ''),
(112, 'Bagian Pendidikan', 'PP.09', '6-Sep-07', 'Surat Dikti No.2254/D2.5/2007 tentang prosedur perpanjangan ijin prodi', 'Administrasi program studi', '1 Tahun', '4 Tahun', '5f594-360.pdf', ''),
(113, 'Bagian Pendidikan', 'DT 00 01', '2002', 'Pedoman pembukaan dan penyelenggaraan program studi kedokteran', 'Program studi', '1 Tahun', '4 Tahun', '7c2bc-1.pdf', ''),
(114, 'Sub Bagian TU ', 'TU.04', '30 Mei 2007', 'Surat tentang pemberlakuan jalur satu arah di lingkungan kampus UNS mulai 1 Juni 2007 ', 'Pengamanan', '2 Tahun', '-', '60add-124.pdf', ''),
(115, 'Sub Bagian TU ', 'TU.04', '17 Oktober 2005', 'Surat edaran tentang peraturan jalur satu arah di Kampus Kentingan', 'Pengamanan', '2 Tahun', '-', '7dd9f-123.pdf', ''),
(116, 'Sub Bagian TU ', 'TU.03.05', '18 Juni 2007', 'Surat tentang ketentuan-ketentuan penggunaan fasilitas asrama mahasiswa UNS', 'Asrama Mahasiswa', '1 Tahun', '2 Tahun', 'd1740-122.pdf', ''),
(117, 'Sub Bagian TU ', 'TU.03.00', '24-Nov-11', 'Surat tentang pedoman penggunaan kendaraan dinas Nopol AD 9513 AA (bus AC) UNS No.9346/H27/LK/2008', 'Kendaraan Dinas', '1 Tahun', '2 Tahun', 'd15ef-121.pdf', ''),
(118, 'Sub Bagian TU ', 'HK.00.19', '2005', 'Surat tentang petunjuk teknis tentang pedoman penggunaan/ pemakaian dan peminjaman kendaraan dinas kantor pusat UNS sebagai perbaikan petunjuk teknis No.7367/J27/LK/2001 dan pelaksanaan keputusan Rektor UNS No.50/J27/LK/ 2014', 'Juknis Kendaraan dinas', '1 Tahun', '4 Tahun', '446a1-20.pdf', ''),
(119, 'Sub Bagian TU ', 'HK.00.08', '11-Sep-08', 'Surat edaran Rektor UNS No.7317/H27/PP/2008 tentang ketentuan mengikuti study lanjut baik dalam negeri maupun luar negeri', 'Surat Edaran Rektor', '1 Tahun', '4 Tahun', 'f3884-16.pdf', ''),
(120, 'Sub Bagian TU ', 'PP.03.00', '2003', 'Surat tentang pembakuan ijazah, akta dan transkrip akademik UNS yang terbit perlu dilengkapi dengan paraf PD I di depan nama Dekan serta paraf Asdir I di depan nama Direktur PPS', 'Ijazah', '1 Tahun', '2 Tahun', '66926-53.pdf', ''),
(121, 'Sub Bagian TU ', 'PP.02.03', '2004', 'Surat tentang himbauan untuk menerapkan kebijakan sharring resourches terhadap sarana dan prasarana pendidikan antar prodi/ jurusan di dalam fakultas maupun antar fakultas dalam lingkungan UNS khususnya peralatan lab/fasilitas pendidikan', 'Ketentuan Pemakaian Laboratorium', '1 Tahun', '2 Tahun', '03cea-52.pdf', ''),
(122, 'Sub Bagian TU ', 'PP.00.05', '25-Sep-03', 'Surat tentang pemberitahuan kepada Dekan untuk menunjang program penghijauan Kampus UNS dianjurkan setiap wisudawan diwajibkan membawa 1 jenis pohon bibit tanaman (lampiran tidak ada)', 'Administrasi Kelulusan', '1 Tahun', '2 Tahun', '0305e-46.pdf', ''),
(123, 'Sub Bagian TU ', 'PP.00.01', '25 April 2003', 'Surat dari Rektor UNS yang ditujukan kepada para Dekan di lingkungan UNS mengenai ijin penyelenggaraan SPMB jalur swadana tahun 2003', 'Penerimaan Mahasiswa Baru', '1 Tahun', '2 Tahun', '8a9cf-41.pdf', ''),
(124, 'Sub Bagian TU ', 'DL.01', '22 Maret 2003', 'Surat tentang kebijakan agar semua kegiatan Diklat yang diselenggarakan oleh unit kerja di lingkungan UNS berada di bawah koordinasi PUSDIKLAT termasuk penyelenggaraan pendidikan bidang teknologi informasi.', 'Penyelenggaraan Diklat', '1 Tahun', '2 Tahun', '1cb79-40.pdf', ''),
(125, 'Sub Bagian TU ', 'PP.09.02', '31 Desember 2001', 'Surat tentang ijin penyelenggaraan minat utama Manajemen Pembangunan Masyarakat (MPM) dan minat utama Ilmu Penyuluhan Pembangunan (IPP) Program Pascasarjana UNS', 'Administrasi Program Studi S2', '1 Tahun', '4 Tahun', '9e5ba-57.pdf', ''),
(126, 'Sub Bagian TU ', 'PP.09', '7 Januari 1998', 'Surat tentang dasar-dasar pertimbangan usulan pembukaan Fakultas Seni Rupa UNS', 'Program Pengembangan Fakultas', '1 tahun setelah ditetapkan', '4 Tahun', '37992-50.pdf', ''),
(127, 'Sub Bagian TU ', 'OT.00.00', '1 Maret 1999', 'Surat pernyataan tentang pendirian Unit Penelitian dan Pengabdian Pada Masyarakat', 'Tata Kerja Organisasi', '1 Tahun', '4 Tahun', '1f860-19.pdf', ''),
(128, 'Sub Bagian TU ', 'HK.00.19', '11 Oktober 2001', 'Petujuk teknis pelaksanaan Keputusan Rektor UNS No. 50/J27/LK/2000 tentang Pedoman Penggunaan/Pemakaian dan Peminjaman Kendaraan Dinas Unit Kerja Kantor Pusat UNS', 'Juknis Kendaraan Dinas', '1 Tahun', '4 Tahun', 'cb88a-11.pdf', ''),
(129, 'Sub Bagian TU ', 'HK.00.18', '2-Sep-99', 'Surat Edaran Rektor UNS No.10988/J27 /KM/1999 tentang Pedoman Penyelenggaraan OSKAP dan Pembentukan Komisi Disiplin Pelaksanaan OSKAP', 'Surat Edaran', '1 Tahun', '4 Tahun', 'f192f-10.pdf', ''),
(130, 'Sub Bagian TU ', 'HK.00.18', 'Sep-98', 'Surat Edaran No. 9100/J27/PP/1998 tentang Penagguhan Penyelenggaraan KKN Bagi Mahasiswa UNS Tahun 1998/1999', 'Surat Edaran', '1 Tahun', '4 Tahun', '2daeb-8.pdf', ''),
(131, 'Sub Bagian TU ', 'KP.02.02', '30 Januari 2001', 'Surat pernyataan pelantikan a.n. Drs. Totok Sarsito, SU, MA', 'Pengangkatan Dalam Jabatan Struktural', '1 tahun setelah SK terbit', '2 Tahun', '39574-2.pdf', ''),
(132, 'Bagian TU,RT,HTL', 'TU.05', '2005', 'Berkas tentang jalur satu arah di kampus kentingan', 'Keamanan dan Ketertiban', '2 Tahun', '-', '14409-11.pdf', ''),
(133, 'Bagian TU,RT,HTL', 'TU.05', '12 Pebruari 2009', 'Surat dari Pembantu Rektor II UNS tentang instruksi menjaga ketertiban lingkungan antara lain pemasangan spanduk, baliho (sarana publikasi) dilingkungan UNS', 'Ketertiban', '1 Tahun', '-', 'cf382-7.pdf', ''),
(134, 'Bagian TU,RT,HTL', 'TU.03', '12 Juli 2005', 'Surat dari Rektor UNS tentang upaya untuk penghematan energi dilingkungan UNS', 'Adm. Penggunaan Fasilitas Kantor', '1 Tahun', '-', '55092-6.pdf', ''),
(135, 'Bagian TU,RT,HTL', 'HK.00.19', '24-Nov-08', 'Pedoman penggunaan kendaraan dinas Nopol AD 9513 AA (Bus AC) UNS Nomor 9346/H27/LK/2008', 'Pedoman Penggunaan Kendaraan', '1 Tahun', '4 Tahun', '9caf3-5.pdf', ''),
(136, 'Bagian TU,RT,HTL', 'HK.00.19', '1 Desember 2005', 'Petunjuk Teknis Nomor 8517A/J27/LK/2005 tentang pedoman penggunaan/pemakaian dan peminjaman kendaraan dinas Kantor Pusat UNS sebagai perbaikan petunjuk teknis Nomor 7367/J27/LK/2001 dan pelaksanaan Keputusan Rektor UNS Nomor 50/J27/LK/2000', 'Juknis Rektor Kendaraan Dinas', '1 Tahun', '4 Tahun', 'aedf3-4.pdf', ''),
(137, 'Bagian TU,RT,HTL', 'HK.00.19', '26 Mei 2001', 'Peraturan/Tata Tertib bagi Fotografer yang memotret di Lingkungan UNS', 'Pedoman Fotografer', '1 Tahun', '4 Tahun', 'c21eb-3.pdf', ''),
(138, 'Sub Bagian TU ', 'HM.00', '1998-2000', 'Bendel tentang Yayasan UNS', 'Hubungan Antar Lembaga', '1 Tahun', '4 Tahun', 'b3ab0-31.pdf', ''),
(139, 'Sub Bagian TU ', 'KP.02.02', '20 April 1999', 'Surat pernyataan menduduki jabatan sebagai Rektor UNS a.n. Prof. Drs. Haris Mudjiman, MA, Ph.D', 'Pengangkatan Dalam Jabatan Struktural', '1 tahun Setelah SK terbit', '2 Tahun', 'c85d3-1.pdf', ''),
(140, 'Sub Bagian HTL', 'OT.01', '15 Desember 2007', 'Surat tentang pemberitahuan kepada seluruh staf tentang ketentuan jam kerja dengan konsekwensi bahwa bantuan uang transport diberikan apabila presensi datang tidak lebih dari pukul 07.30 WIB dan waktu pulang paling awal pukul 14.00 WIB untuk hari Senin s/d Kamis, pukul 11.00 WIB untuk hari Jum&#39;at dan pukul 12.30 WIB untuk hari Sabtu ', 'Prosedur Kerja', '1 Tahun', '2 Tahun', 'aa1e3-9.pdf', ''),
(141, 'Sub Bagian HTL', 'HK.06.00', '1997-2007', 'Kumpulan surat tentang ijin penyelenggaraan program-program studi baru di lingkungan UNS', 'Perijinan', 's/d ijin diperbaharui', '2 Tahun', '6b3cd-8.pdf', ''),
(142, 'Sub Bagian HTL', 'HK.00.18', '5 Oktober 2001', 'Bendel tentang Surat Edaran No. 7218/J27/LK/2001 tentang Menjaga Ketertiban, Kebersihan dan Keamanan Kampus (bagi pedagang kaki lima/asongan)', 'Surat Edaran', '1 Tahun', '4 Tahun', '9f350-3.pdf', ''),
(143, 'Sub Bagian HTL', 'OT.02', '2011', 'Memorandum akhir jabatan Pembantu Rektor II periode tahun 2007-2011', 'Evaluasi dan Laporan Kinerja', '1 Tahun', '4 Tahun', '5ddd4-7-c.pdf', ''),
(144, 'Sub Bagian HTL', 'OT.02', '2007', 'Memorandum akhir jabatan Pembantu Rektor II periode tahun 2003-2007', 'Evaluasi dan Laporan Kinerja', '1 Tahun', '4 Tahun', '514a5-6-c.pdf', ''),
(145, 'Sub Bagian HTL', 'HK.00.19', 'Januari 1998', 'Petunjuk teknis penyelenggaraan program S1 ekstensi UNS tahun 1998', 'Juknis', '1 Tahun setelah diperbaharui', '4 Tahun', '9d2ea-3-c.pdf', ''),
(146, 'Sub Bagian HTL', 'HK.00.19', 'Februari 1991', 'Buku pedoman UNS tahun 1990/1991', 'Pedoman', '1 Tahun setelah diperbaharui', '4 Tahun', '5ca0d-2-c.pdf', ''),
(147, 'Sub Bagian TU Kantor Pusat', 'PP.00', '4 Mei 1995', 'Surat tentang perubahan NIM yaitu bagi mahasiswa program transfer, reguler angkatan tahun 1992 FKIP dari 10 digit menjadi 8 digit', 'Penerimaan Mahasiswa Baru', '1 Tahun', '2 Tahun', 'e44a6-26.pdf', ''),
(148, 'Sub Bagian TU Kantor Pusat', 'TU.03.05', '6 April 1995', 'Surat perintah Rektor tentang aturan pengelolaan kerumahtanggaan Rumah Dinas Rektor', 'Administrasi Penggunaan Fasilitas Kantor', '1 Tahun', '-', '7e047-24.pdf', ''),
(149, 'Sub Bagian TU Kantor Pusat', 'KP.02.02', '1 Desember 1995', 'Surat pernyataan pelantikan a.n. Ir. Djoko Koentjoro mulai 10 Nopember 1995 telah diangkat dalam jabatan pj Dekan Fakultas Teknik UNS dan dilantik pada tanggal 27 Nopember 1995', 'Pengangkatan Dalam Jabatan Struktural', '1 Tahun', '2 Tahun', '5224b-10.pdf', ''),
(150, 'Sub Bagian TU Kantor Pusat', 'KP.02.02', '1 Desember 1995', 'Surat pernyataan pelantikan a.n. Soenaryo, SH mulai 10 Nopember 1995 telah diangkat dalam jabatan pj Dekan Fakultas Hukum UNS dan dilantik pada tanggal 27 Nopember 1995', 'Pengangkatan Dalam Jabatan Struktural', '1 Tahun', '2 Tahun', 'cdc39-9.pdf', ''),
(151, 'Sub Bagian TU Kantor Pusat', 'KP.02.02', '1 Desember 1995', 'Surat pernyataan pelantikan a.n. Drs. Edy Sudadi mulai 10 Nopember 1995 telah diangkat dalam jabatan pj Dekan Fakultas Sastra UNS dan dilantik pada tanggal 27 Nopember 1995', 'Pengangkatan Dalam Jabatan Struktural', '1 Tahun', '2 Tahun', '85179-8.pdf', ''),
(152, 'Sub Bagian TU Kantor Pusat', 'KP.02.02', '1 Desember 1995 ', 'Surat pernyataan pelantikan a.n. Soedjarwo mulai 10 Nopember 1995 telah diangkat dalam jabatan pj Dekan Fakultas KIP UNS dan dilantik pada tanggal 27 Nopember 1995', 'Pengangkatan Dalam Jabatan Struktural', '1 Tahun', '2 Tahun', '0215a-7.pdf', ''),
(153, 'Sub Bagian TU Kantor Pusat', 'KP.02.02', '1 Desember 1995', 'Surat pernyataan pelantikan a.n. Drs. Kasiman Tjilik Suwito mulai 10 Nopember 1995 telah diangkat dalam jabatan pj Dekan Fakultas Ekonomi UNS dan dilantik pada tanggal 27 Nopember 1995', 'Pengangkatan Dalam Jabatan Struktural', '1 Tahun', '2 Tahun', '96fdb-6.pdf', ''),
(154, 'Sub Bagian TU Kantor Pusat', 'KP.02.02', '1 Desember 1995', 'Surat pernyataan pelantikan a.n. Ir. Zainal Djauhari Fatawi, M.S. mulai 10 Nopember 1995 telah diangkat dalam jabatan pj Dekan Fakultas Pertanian UNS dan dilantik pada tanggal 27 Nopember 1995', 'Pengangkatan Dalam Jabatan Struktural', '1 Tahun', '2 Tahun', '492eb-5.pdf', ''),
(155, 'Sub Bagian TU Kantor Pusat', 'KP.02.02', '1 Desember 1995', 'Surat pernyataan pelantikan a.n. dr. Suroto, DSS mulai 10 Nopember 1995 telah diangkat dalam jabatan pj Dekan Fakultas Kedokteran UNS dan dilantik pada tanggal 27 Nopember 1995', 'Pengangkatan Dalam Jabatan Struktural', '1 Tahun', '2 Tahun', 'f2a45-4.pdf', ''),
(156, 'Sub Bagian TU Kantor Pusat', 'KP.02.02', '1 Juli 1995', 'Surat tentang pernyataan pelantikan PR I yaitu dr. Ambar Mudigdo, DSPA beserta tunjangan jabatan, PR II yaitu Drs. Bahtiar Effendi, AK beserta tunjangan jabatannya serta Drs. Suparnadi sebagai PR III UNS', 'Pengangkatan Dalam Jabatan Struktural', '1 Tahun', '2 Tahun', 'ec9b6-2.pdf', ''),
(157, 'Bagian RT', 'OT.00.00', '30 Maret 1978', 'Surat akta dari notaris/pejabat pembuat akta tanah a.n. Maria Theresia Budisantoso, SH tentang Perubahan dan Pembaharuan Anggaran Dasar Yayasan Pembina UNS Surakarta', 'Struktur Organisasi', '1 Tahun', '4 Tahun', 'a6da9-15.pdf', ''),
(158, 'Bagian RT', 'OT.00', '6 Juli 1988', 'Berita Acara Serah Terima Pengurus Yayasan UNS', 'Organisasi', '1 Tahun', '2 Tahun', 'a6d99-14.pdf', ''),
(159, 'Bagian RT', 'HK.00.05', '27 Februari 2009', 'SK Mendiknas RI No. 52/KMK.05/2009 tentang Penetapan UNS Surakarta Pada Depdiknas Sebagai Instansi Pemerintah Yang Menerapkan Pengelolaan Keuangan Badan Layanan Umum', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '24659-2.pdf', ''),
(160, 'Bagian RT', 'HK.00.05', '2005', 'SK Mendiknas RI No. 014/M/2005 tentang Penghapusan Kendaraan Bermotor Dari Daftar Inventaris Sebagai Kekayaan/Milik Negara di Lingkungan UNS', 'Keputusan Menteri', '1 Tahun', '4 Tahun', '32b07-1.pdf', ''),
(161, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Desember 2009', 'SK Rektor UNS No.766/H27/KL/2009 tentang Anggaran Rumah Tangga Senat Fakultas MIPA Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '52336-368.pdf', ''),
(162, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Desember 2009', 'SK Rektor UNS No.765/H27/KL/2009 tentang Anggaran Rumah Tangga Senat Fakultas Teknik Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '39c7d-367.pdf', ''),
(163, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Desember 2009', 'SK Rektor UNS No.757/H27/KP/2009 tentang Pengangkatan Kembali Pejabat Struktural Eselon III a (Kepala UPT Perpustakaan ) Universitas sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '44605-358.pdf', ''),
(164, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Desember 2009', 'SK Rektor UNS No.756/H27/KL/2009 tentang Anggaran Rumah Tangga Senat Fakultas Pertanian Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b3949-356.pdf', ''),
(165, 'Bagian TU,RT,HTL', 'HK.00.15', '24 Nopember 2009', 'SK Rektor UNS No.702/H27/KP/2009 tentang Pemberhentian dan Pengangkatan Sekretaris Lembaga Pengembangan Pendidikan (LPP) (Antar Waktu) Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '66d78-325.pdf', ''),
(166, 'Bagian TU,RT,HTL', 'HK.00.15', '12 Nopember 2009', 'SK Rektor UNS No.662/H27/KP/2007 tentang Pengangkatan Prof.Dr.Baedhiwi, M.Si Sebagai Anggota Senat Universitas dan Anggota Senat  Fakultas KIP Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'dbeb7-314.pdf', ''),
(167, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Oktober 2009', 'SK Rektor UNS No.640/H27/KP/2009 tentang Pengangkatan Yang melaksanakan Tugas (YMT) Kepala Biro Administerasi Umum dan Keuangan Universitas sebelas Maret tahun 2009', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '4dc2d-299.pdf', ''),
(168, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Oktober 2009', 'SK Rektor UNS No.632/H27/KP/2009 tentang Penetapan Penerima Tunjangan Profesi Dosen Universitas Sebelas Maret tahun 2009', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '14716-296.pdf', ''),
(169, 'Bagian TU,RT,HTL', 'HK.00.15', '12 Oktober 2009', 'SK Rektor UNS No.624/H27/KP/2009 tentang Pemberhentian dan Pengangkatan Kepala Pusat Penelitian dan Pengembangan Konstitusi HAM (P3KHAM) Antar Waktu dilingkungan Lembaga Penelitian dan Pengembangan Kepada Masyarakat (LPPM) Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '5361e-293.pdf', ''),
(170, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Oktober 2009', 'SK Rektor UNS No.614/H27/HK.KM/2009 tentang Pembentukan Career Development Center ( CDC ) Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a760e-290.pdf', ''),
(171, 'Bagian TU,RT,HTL', 'HK.00.15', '24 Agustus 2009', 'SK Rektor UNS No.576/H27/KM/2009 tentang Pemberian Penghargaan Mahasiswa Berprestasi tahun 2009', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '67b71-269.pdf', ''),
(172, 'Bagian TU,RT,HTL', 'HK.00.15', '24 Agustus 2009', 'SK Rektor UNS No.574/H27/KP/2009 tentang Pemberhentian dan Pengangkatan Sekretaris (Antar Waktu) Unit Pelaksana Teknis Pelayanan dan Pengembangan Bahasa ( UPT P2B) Universitas Sebelas Maret Periode Masa Jabatan 2009-2012', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '3484a-268.pdf', ''),
(173, 'Bagian TU,RT,HTL', 'HK.00.15', '11 Agustus 2009', 'SK Rektor UNS No.553/H27/PP/2009 tentang Pembelajaran Berbasis Kompetisi dalam Sistem Kredit Semester Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'bca24-258.pdf', ''),
(174, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Juli 2009', 'SK Rektor UNS No.523A/H27/KU/2009 tentang Bagan Akun Badan Layanan Umum Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '57bf3-232.pdf', ''),
(175, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Juli 2009', 'SK Rektor UNS No.522A/H27/KU/2009 tentang Kebijakan Akuntansi Badan Layanan Umum Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'cd991-230-c.pdf', ''),
(176, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Juni 2009', 'SK Rektor UNS No.519/H27/KM/2009 tentang Pemberian Beasiswa UNS Bagi Mahasiswa Baru Jalur PMDK Universitas Sebelas Maret tahun 2009 /2010', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '9179d-226.pdf', ''),
(177, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Juni 2009', 'SK Rektor UNS No.518A/H27/KU/2009 tentang Jurnal Standar Badan Layanan Umum Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'da9db-225.pdf', ''),
(178, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Juni 2009', 'SK Rektor UNS No.518/H27/KP/2009 tentang Pemenang Seleksi Arsiparis Berprestasi Universitas Sebelas Maret tahun 2009 ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '8b3a9-224.pdf', ''),
(179, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Juni 2009', 'SK Rektor UNS No.517A/H27/KU/2009 tentang Ketentuan Peraihan Dana DIPA BLU Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '212c0-223.pdf', ''),
(180, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Juni 2009', 'SK Rektor UNS No.508/H27/KP/2009 tentang Penetapan Penerima Tunjangan Kehormatan Profesor Universitas sebelas Maret Tahun 2009', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c282f-216.pdf', ''),
(181, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Juni 2009', 'SK Rektor UNS No.507/H27/KP/2009 tentang Penetapan Penerima Tunjangan Profesi Dosen Universitas sebelas Maret Tahun 2009', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'de5dd-215.pdf', ''),
(182, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Juni 2009', 'SK Rektor UNS No.498/H27/KP/2009 tentang Dewan Kehormatan akode Etik Dosen Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '2cbca-211.pdf', ''),
(183, 'Bagian TU,RT,HTL', 'HK.00.15', '4 Mei 2009', 'SK Rektor UNS No.395/H27/KP/2009 tentang Pemberhentian dan Pengangkatan Tim Pengelola dan Tim Pelaksana UNS Medical Center Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '4cde9-155.pdf', '');
INSERT INTO `tb_arsip_tekstual` (`id_arsip_tekstual`, `unit_kerja`, `kode_klasifikasi`, `tanggal`, `isi_informasi`, `masalah`, `retensi_aktif`, `retensi_inaktif`, `file_url`, `watermark`) VALUES
(184, 'Bagian TU,RT,HTL', 'HK.00.15', '24 April 2009', 'SK Rektor UNS No.377/H27/HK.KM/2009 tentang Pemberian Uang Lelah Pembuatan Aransmen dan Royalti Lagu dalam Rangka Persiapan dan Mengikuti Kompetisi Paduan Suara Mahasiswa  A VOYAGE OF SONGS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ab70b-147.pdf', ''),
(185, 'Bagian TU,RT,HTL', 'HK.00.15', '24 April 2009', 'SK Rektor UNS No.376/H27/HK.KM/2009 tentang Pengangkatan Pelatih dan Pengiring Paduan Suara Mahasiswa UNS dalam Rangka Persiapan dan Mengikuti Kompetisi Paduan Suara Mahasiswa  A VOYAGE OF SONGS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '4004b-146.pdf', ''),
(186, 'Bagian TU,RT,HTL', 'HK.00.15', '2009', 'SK Rektor UNS No.361/H27/KM/2007 tentang Pemberian Beasiswa Lanjutan Tecnological And Profesional Skills Develoment Sector Project Iss-TPSDP dari Departemen Nasional Bagi Mahasiswa Universitas Sebelas Maret tahun 2005 (BACTH IV)', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '08c51-138.pdf', ''),
(187, 'Bagian TU,RT,HTL', 'HK.00.15', '14 April 2009', 'SK Rektor UNS No.256/H27/KP/2009 tentang Pemberhentian dan Pengangkatan Personil, Koordinator Penelitian dan Pengabdian Kepada Masyarakat ( KPPMF ) Pada LPPM Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '1d606-132.pdf', ''),
(188, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Maret', 'SK Rektor UNS No.215/H27/KM/2009 tentang Pengangkatan Pengurus Dewan Mahasiswa Universitas Sebelas Maret Periode 2009', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '31e91-110.pdf', ''),
(189, 'Bagian TU,RT,HTL', 'HK.00.15', '25 Maret 2009', 'SK Rektor UNS No.205/H27/KP/2009 tentang Pemberhentian dan Pengangkatan Tim Kantor Jaminan Mutu Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '8f818-106.pdf', ''),
(190, 'Bagian TU,RT,HTL', 'HK.00.15', '10 Maret 2009', 'SK Rektor UNS No.181/H27/KP/2009 tentang Pemberhentian dan Pengangkatan Sekretaris Pusat Pengembangan Sistem Pembelajaran (PPSP) Pada Pengembangan Pendidikan (LPP) Antar Waktu Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '80432-96.pdf', ''),
(191, 'Bagian TU,RT,HTL', 'HK.00.15', '11 Maret 2009', 'SK Rektor UNS No.172/H27/HK/2009 tentang Pemberian Tanda Jasa dan Penghargaan Adi Widya Bhakti Dharma Universitas Sebelas Maret Kepada Sdr.Mayor Jederal (Purn) Mardiyanto', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '7d8f6-91.pdf', ''),
(192, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Pebruari 2009', 'SK Rektor UNS No.149A/H27/KM/2009 tentang Beasiswa Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'e7e72-86.pdf', ''),
(193, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Pebruari 2009', 'SK Rektor UNS No.128/H27/PP/2009 tentang Hasil Akreditasi Pusat-Pusat Studi di Lingkungan LPPM Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'f041d-77.pdf', ''),
(194, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Pebruari 2009', 'SK Rektor UNS No.93/H27/KP/2009 tentang Pengangkatan Tim Persiapan Badan Hukum Pendidikan ( BHP ) Universitas Sebelas Maret tahun 2009', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c50c1-51.pdf', ''),
(195, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Pebruari 2009', 'SK Rektor UNS No.83A/H27/KP/2009 tentang Pemberhentian dan Pengangkatan Tim Pengelola Kantor Humas Dan Kerjasama Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '1c306-49.pdf', ''),
(196, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Pebruari 2009', 'SK Rektor UNS No.84/H27/KP/2009 tentang Pembentukan Tim Pengelola Kegiatan Pelaksana Indonesia-Managing Higher Education For Relevance And Efficiency (I-Mhere) B.2.a Universitas sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '85892-47.pdf', ''),
(197, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Pebruari 2009', 'SK Rektor UNS No.83A/H27/KP/2009 tentang Pengangkatan Tim Pengelola International Office Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '917c8-46.pdf', ''),
(198, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Januari 2009', 'SK Rektor UNS No.80/J27/HK.KM/2007 tentang Pemberian Penghargaan Mahasiswa Berprestasi  tahun 2008', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '09c90-43.pdf', ''),
(199, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Januari 2009', 'SK Rektor UNS No.77/H27/KP/2009 tentang Pembentukan dan Pengangkatan Task Force/Tim Ad-Hoc Perancangan dan Pengelolaan Sistem Akuntansi Universitas Sebelas M', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '85f75-41.pdf', ''),
(200, 'Bagian TU,RT,HTL', 'HK.00.15', '27 Januari 2009', 'SK Rektor UNS No.71/H27/KP/2009 tentang Pengangkatan Sekretaris Pusat Studi Keuangan Sektor Publik dan Tax Center di lingkungan LPPM Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'dee0b-37.pdf', ''),
(201, 'Bagian TU,RT,HTL', 'HK.00.15', '27 Januari 2009', 'SK Rektor UNS No.70/H27/KP/2009 tentang Pengangkatan Kepala Pusat Studi Keuangan Sektor Publik dan Tax Center di lingkungan LPPM Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b07ef-36.pdf', ''),
(202, 'Bagian TU,RT,HTL', 'HK.00.15', '15 Januari 2009', 'SK Rektor UNS No.49/H27/PP/2009 tentang Asistensi Mahasiswa di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'd5759-26.pdf', ''),
(203, 'Bagian TU,RT,HTL', 'HK.00.15', '9 Januari 2009', 'SK Rektor UNS No.35/H27/KU/2009 tentang Pedoman Tarip Periksa Pasien untuk Pelayanan Kesehatan di UNS Medical Center Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'd2e54-17.pdf', ''),
(204, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Januari 2009', 'SK Rektor UNS No.20a/H27/KP/2009 tentang Pembentukan Tim Pelaksana Policy Study dalam Rangka Kegiatan Indonesia - Managing Higher Education For Relevance And Efficiency (I-Mhere)B.2.a Universitas Sebelas Maret Sumber dana WB Committed DRK tahun 2009', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '92d5d-15.pdf', ''),
(205, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Januari 2009', 'SK Rektor UNS No.19a/H27/KP/2009 tentang Pembentukan Tim Pelaksana Policy Study dalam Rangka Kegiatan Indonesia - Managing Higher Education For Relevance And Efficiency (I-Mhere)B.2.a Universitas Sebelas Maret Sumber dana Uncommitted DRK tahun 2009', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '55489-14.pdf', ''),
(206, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Januari 2009', 'SK Rektor UNS No.15/H27/KP/2009 tentang Tim Persiapan dan Pelaksanaan Pembangunan Rumah Susun Sederhana yang disewakan (RUSUNAWA) Asrama Mahasiswa Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '5c4f9-13.pdf', ''),
(207, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Januari 2009', 'SK Rektor UNS No.16/H27/KP/2009 tentang Tim Pengendalian Pemanfaatan Lahan dan Bangunan Kampus  Universitas Sebelas Maret  Tahun Anggaran 2009', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'e11bc-12.pdf', ''),
(208, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Januari 2009', 'SK Rektor UNS No.12A/H27/KP/2009 tentang Pengangkatan Panitia Persiapan Perencanaan Pendirian Rumah Sakit Pendidikan Fakultas Kedokteran Universitas sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '81571-9.pdf', ''),
(209, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Desember 2008', 'Surat Peraturan  Rektor UNS nomor : 931A/H27/KP/2008 Tentang Komisi Advokasi Mahasiswa ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '24c94-372.pdf', ''),
(210, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Desember 2008', 'Surat Peraturan  Rektor UNS nomor : 930A/H27/KP/2008 Tentang kode Etik Dosen UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '17cc8-371.pdf', ''),
(211, 'Bagian TU,RT,HTL', 'HK.00.15', '24 Desember 2008', 'Surat Keputusan Rektor UNS nomor : 917/H27/KP/2008 Tentang Pemberhentian Dan Pengangkatan Sekretaris Pusat studi Di Lingkungan Lembaga Penelitian Dan Pengabdian Kepada Masyarakat (LPPM) UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '76aff-369.pdf', ''),
(212, 'Bagian TU,RT,HTL', 'HK.00.15', '2008', 'Surat Keputusan Rektor UNS nomor : 913/H27/HK.KM/2008 Tentang Pemberian Penghargaan Mahasiswa Berprestasi Tahun 2008', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '45700-368.pdf', ''),
(213, 'Bagian TU,RT,HTL', 'HK.00.15', '11 Desember 2008', 'Surat Keputusan Rektor UNS nomor : 893/H27/PP/2008 Tentang Pendirian Jurnal Akademika', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '90f61-359.pdf', ''),
(214, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Desember 2008', 'Surat Keputusan Rektor UNS nomor : 849A/H27/OT/2008 Tentang Perubahan Struktur Organisasi Unit Pelaksana Teknis Pelayanan Dan Pengembangan Bahasa (UPTP2B) UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'e4638-330.pdf', ''),
(215, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Desember 2008', 'Surat Keputusan Rektor UNS nomor : 848A/H27/KP/2008 Tentang Pemberhentian Dan Pengangkatan Tim Pengelola Unit Pelaksana Teknis Pelayanan Dan Pengembangan Bahasa (UPTP2B) Periode Masa Jabatan 2008-2012 UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b5532-328.pdf', ''),
(216, 'Bagian TU,RT,HTL', 'HK.00.15', '27-Nov-08', 'Surat Peraturan Rektor UNS nomor : 838/H27/KP/2008 Tentang Anggaran Rumah Tangga Senat UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '9802a-321.pdf', ''),
(217, 'Bagian TU,RT,HTL', 'HK.00.15', '27-Nov-08', 'Surat Keputusan Rektor UNS nomor : 836/H27/KP/2008 Tentang Pemberhentian Dan Pengangkatan Kembali Kepala Pusat Studi Di Lingkungan  Lembaga Penelitian Dan Pengabdian Kepada Masyarakat (LPPM) UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'cd782-320.pdf', ''),
(218, 'Bagian TU,RT,HTL', 'HK.00.15', '2008', 'Surat Keputusan Rektor UNS nomor : 835/H27/KP/2008 Tentang Pemberhentian Dan Pengangkatan Kembali Sekretaris   Lembaga Penelitian Dan Pengabdian Kepada Masyarakat UNS Periode Masa Jabatan 2008-2012', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'd9fba-319.pdf', ''),
(219, 'Bagian TU,RT,HTL', 'HK.00.15', '13-Nov-08', 'Surat Keputusan Rektor UNS nomor : 819/H27/KP/2008 Tentang Pemberhentian Dan Pengangkatan Kembali Kepala Divisi Laboratorium Pengujian Pada UPT Laboratorium Pusat MIPA UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '1d2c6-311.pdf', ''),
(220, 'Bagian TU,RT,HTL', 'HK.00.15', '11-Nov-08', 'Surat Keputusan Rektor UNS nomor : 816/H27/KP/2008 Tentang  Pengangkatan Kembali  Pejabat Struktural Eselon II a (Kepala Biro Administrasi Kemahasiswaan)  UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'e0525-307.pdf', ''),
(221, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Oktober 2008', 'Surat Keputusan Rektor UNS nomor : 800/H27/KP/2008 Tentang  Pengangkatan Kembali Kepala Dan Sekretaris Unit Pelaksana eknis Pelayanan Dan Pengembangan Bahasa (UPTP2B) Periode Masa Jabatan 2008-2012 UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a699a-301.pdf', ''),
(222, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Oktober 2008', 'Surat Keputusan Rektor UNS nomor : 799/H27/KP/2008 Tentang  Perpanjangan Masa Tugas Sekretaris LPPM UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '65021-300.pdf', ''),
(223, 'Bagian TU,RT,HTL', 'HK.00.15', '2008', 'Surat Keputusan Rektor UNS nomor : 798/H27/HK/2008 Tentang  Pengangkatan Pengelola Program Hibah Kompetensi Teknologi Informasi Dan Komunikasi Tahun 2008 Inherent K-1 UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'e875e-299.pdf', ''),
(224, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Oktober 2008', 'Surat Keputusan Rektor UNS nomor : 780/H27/KP/2008 Tentang Pemberhentian Dan Pengangkatan Kembali Ketua  Lembaga Penelitian Dan Pengabdian Kepada Masyarakat Sebagai Pejabat Struktural Eselon II b  UNS Periode Masa Jabatan 2008-2012', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '300ca-289.pdf', ''),
(225, 'Bagian TU,RT,HTL', 'HK.00.15', '8 Oktober 2008', 'Surat Keputusan Rektor UNS nomor : 757/H27/HK.KM/2008 Tentang Pembentukan Unit Kegiatan Mahasiswa Student English Forum (SEF) Dan Pengangkatan Pembina Dan Pengurus Periode 2008/2009', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'eda04-287.pdf', ''),
(226, 'Bagian TU,RT,HTL', 'HK.00.15', '30-Sep-08', 'Peraturan  Rektor UNS nomor : 751A/H27/KP/2008 Tentang Pedoman Penyusunan Anggaran Rumah Tangga Senat Fakultas Di Lingkungan UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '3286b-282.pdf', ''),
(227, 'Bagian TU,RT,HTL', 'HK.00.15', '11-Sep-08', 'Surat Keputusan Rektor UNS nomor : 730/H27/KP/2008 Tentang Pemberhentian Sekretaris Pusat Penelitian Dan Pengembangan Biodiversutas Dan Bioteknologi (P3BB) Pada Lembaga Penelitian Dan Pengabdian Kepada Masyarakat UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'de723-275.pdf', ''),
(228, 'Bagian TU,RT,HTL', 'HK.00.15', '11 Januari 2008', 'Surat Keputusan Rektor UNS nomor : 729/H27/KP/2008 Tentang Pemberhentian Kepala Pusat Penelitian Dan Pengembangan Gender (P3G) Pada Lembaga Penelitian Dan Pengabdian Kepada Masyarakat UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a9af8-274.pdf', ''),
(229, 'Bagian TU,RT,HTL', 'HK.00.15', '2008', 'Surat Keputusan Rektor UNS nomor : 722/H27/HK.KM/2008 Tentang Pemberian Penghargaan Mahasiswa Berprestasi Tahun 2008', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'dabd1-273.pdf', ''),
(230, 'Bagian TU,RT,HTL', 'HK.00.15', '10-Sep-08', 'Surat Keputusan Rektor UNS nomor : 721A/H27/KP/2008 Tentang  Pengangkatan Tim Pengelola Dan Tim Pelaksana UNS Medical Center UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '68851-272.pdf', ''),
(231, 'Bagian TU,RT,HTL', 'HK.00.15', '9-Sep-08', 'Surat Keputusan Rektor UNS nomor : 701/H27/KP/2008 Tentang Pemberhentian Kepala Pusat Penelitian Dan Pengembangan Hak Atas Kekayaan Intelektual (P3 HKI) Pada Lembaga Penelitian Dan Pengabdian Kepada Masyarakat UNS  ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '34a7c-267.pdf', ''),
(232, 'Bagian TU,RT,HTL', 'HK.00.15', '21 Agustus 2008', 'Peraturan  Rektor UNS nomor : 656/H27/KL/2008 Tentang Pedoman Penyusunan Anggaran Rumah Tangga Senat Fakultas Di Lingkungan UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '737a4-250.pdf', ''),
(233, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Agustus 2008', 'Surat Keputusan Rektor UNS nomor : 646/H27/KP/2008 Tentang Pemberhentian Kepala Pusat Pengembangan Kewirausahaan (PPKwu) Pada Lembaga Penelitian Dan Pengabdian Kepada Masyarakat UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b094d-245.pdf', ''),
(234, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Juli 2008', 'Surat Keputusan Rektor UNS nomor:598/H27/PP/2008 Tentang  Pemberian Penghargaan Bagi dosen Berprestasi UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a46e7-220.pdf', ''),
(235, 'Bagian TU,RT,HTL', 'HK.00.15', '2008', 'Surat Keputusan Rektor UNS Nomor : 579/H27/KP/2008 Tentang Pemberhentian Ketua Lembaga Pengembangan Pendidikan Sebagai Pejabat Struktural Eselon II b Dan Pengangkatan Ketua Lembaga Pengembangan Pendidikan UNS Periode 2008-2011   ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '386f0-213.pdf', ''),
(236, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Juli 2008', 'Surat Keputusan Rektor UNS nomor : 578/H27/KP/2008 Tentang Pengangkatan Tim Persiapan Penyusunan Metode Time Higher Education Suplement (THES) UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b91d3-211.pdf', ''),
(237, 'Bagian TU,RT,HTL', 'HK.00.15', '26 Juni 2008', 'Surat Keputusan Rektor UNS nomor : 561A/H27/KP/2008 Tentang Pemberdayaan Alumni UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '28b0f-197.pdf', ''),
(238, 'Bagian TU,RT,HTL', 'HK.00.15', '26 Juni 2008', 'Surat Keputusan Rektor UNS nomor : 560A/H27/PP/2008 Tentang Penghargaan Kepada mahasiswa Berprestasi ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '7e643-195.pdf', ''),
(239, 'Bagian TU,RT,HTL', 'HK.00.15', '19 Juni 2008', 'Surat Keputusan Rektor UNS nomor : 559A/H27/PP/2008 Tentang Komisi Disiplin Mahasiswa UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '5eb0f-194.pdf', ''),
(240, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Juni 2008', 'Surat Keputusan Rektor UNS nomor : 542B/H27/KP/2008 Tentang Pengangkatan Prof .Drs. Anton Sukarno MPd. Sebagai guru Besar Emeritus Pada Fakultas Keguruan Dan Ilmu Pendidikan UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c2438-186.pdf', ''),
(241, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Mei 2008', 'Surat Keputusan Rektor UNS nomor : 511/H27/PP/2008 Tentang Penggabungan Dan Perubahan Nama Program Studi Pada Fakultas Pertanian UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '39505-168.pdf', ''),
(242, 'Bagian TU,RT,HTL', 'HK.00.15', '12 Mei 2008', 'Surat Keputusan Rektor UNS nomor : 309/H27/HK.KM/2008 Tentang Pengangkatan Pengurus Badan Eksekutif Mahasiswa UNS Periode 2008/2009 ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '35b98-155.pdf', ''),
(243, 'Bagian TU,RT,HTL', 'HK.00.15', '2008', 'Surat Keputusan Rektor UNS nomor : 302/H27/LK/2008 Tentang Pembentukan Tim Penertiban Barang Milik Negara (BMN) Di Lingkungan UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '14803-149.pdf', ''),
(244, 'Bagian TU,RT,HTL', 'HK.00.15', '7 Mei 2008', 'Surat Keputusan Rektor UNS nomor : 299/H27HK.KM/2008 Tentang Pelaksanaan Orientasi Studin Mahasiswa Baru (OSMARU) UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '6243a-147.pdf', ''),
(245, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Mei 2008', 'Surat Keputusan Rektor UNS nomor : 297/J27/KP/2008 Tentang Pemberhentian Dan Pengangkatan Sekretaris,Kordinator Dan Anggota Tim Satuan Pengawas Intern (SPI) UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ce460-144.pdf', ''),
(246, 'Bagian TU,RT,HTL', 'HK.00.15', '24 April 2008', 'Surat Keputusan Rektor UNS nomor : 288/H27/KP/2008 Tentang   Pemberhentian Kepala Pusat Penelitian Dan Pengembangan Pariwisata Pada Lembaga Penelitian Dan Pengabdian Kepada Masyarakat (PUSPARI LPPM) UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '9d6cf-139.pdf', ''),
(247, 'Bagian TU,RT,HTL', 'HK.00.15', '12 April 2008', 'Surat Keputusan Rektor UNS nomor : 245/H27/KP/2008 Tentang Pengangkatan Tim Keprotokolan UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '3bf27-113.pdf', ''),
(248, 'Bagian TU,RT,HTL', 'HK.00.15', '10 April 2008', 'Surat Keputusan Rektor UNS nomor : 198/H27/KP/2008 Tentang Pengangkatan Tim Penasehat pada UPT Perpustakaan UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '44964-111.pdf', ''),
(249, 'Bagian TU,RT,HTL', 'HK.00.15', '2008', 'Surat Keputusan Rektor UNS nomor : 192/H27/KP/2008 Tentang Pengangkatan Kembali Ketua TIM Satuan Pengendali Intern ( SPI) UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b58a6-109.pdf', ''),
(250, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Maret 2008', 'Surat Keputusan Rektor UNS nomor : 102A/H27/KP/2008 Tentang Pengangkatan Prof.DR.Kunardi Harjoprawiro,M,Pd. Sebagai guru besar emeritus UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '9891a-80.pdf', ''),
(251, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Maret 2008', 'Surat Keputusan Rektor UNS nomor : 101 B/H27/KP/2008 Tentang Pembentukan tim pelaksana policy study dalam rangka kegiatan Indonesia-Magang Higher Education for Relevance and EfficiensI (I-MHERE) B.2.a UNS Tahun 2008', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '2cea0-78.pdf', ''),
(252, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Maret 2008', 'Surat Keputusan Rektor UNS nomor : 101A/H27/KP/2008 Tentang Pengangkatan Prof.DR.TOMAS SOEMARNO,M,Pd. Sebagai guru besar emeritus UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '79e92-77.pdf', ''),
(253, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Maret 2008', 'Surat Keputusan Rektor UNS nomor : 97/H27/PP/2008 Tentang Pembentukan tim pelaksana policy study dalam rangka kegiatan Indonesia-Magang Higher Education for Relevance and EfficiensI (I-MHERE) B.2.a UNS Tahun 2008', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '27208-76.pdf', ''),
(254, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Maret 2008', 'Surat Keputusan Rektor UNS nomor : 97/H27/PP/2008 Tentang Perpanjangan Masa Tugas sub project management unit (SPMU) Technological and profesional skills development sector project (TPSDP) batch III UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '40ebb-75.pdf', ''),
(255, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Februari 2008', 'Surat Keputusan Rektor UNS nomor : 90/H27/KM/2008 Tentang Pemberian Beasiswa Lanjutan Teknological and Professional Skills Development Sector Project (TPSDP) Dari Departemen Pendidikan NasionalBagi Mahasiswa UNS Tahun 2005 (BACTH IV)', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c718e-74.pdf', ''),
(256, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Februari 2008', 'Surat Keputusan Rektor UNS nomor : 89/H27/KM/2008 Tentang Pemberian Beasiswa Lanjutan Teknological and Professional Skills Development Sector Project (TPSDP) Dari Departemen Pendidikan Nasional Bagi Mahasiswa UNS Tahun 2004 (BACTH III)', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '9b7af-73.pdf', ''),
(257, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Februari 2008', 'Surat Keputusan Rektor UNS nomor : 88/H27/KP/2008 Tentang Pengangkatan Tim Persiapan UNS Menjadi (BLU) Tahun 2008', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '0bfd8-72.pdf', ''),
(258, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Februari 2008', 'Surat Keputusan Rektor UNS nomor : 84/H27/KP/2008 Tentang Pengangkatan Tim Penilai Kinerja Fakultas UNS Tahun 2008', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '686f3-68.pdf', ''),
(259, 'Bagian TU,RT,HTL', 'HK.00.15', '2008', 'Surat Keputusan Rektor UNS nomor : 69/H27/HK.KM/2008 Tentang Pemberian Penghargaan Mahasiswa Berprestasi Tahun 2007', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '48f76-60.pdf', ''),
(260, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Januari 2008', 'Surat Keputusan Rektor UNS nomor : 47/H27/KP/2008 Tentang Pemberhentian Dan Pengangkatan Kepala UPT Laboratorium Pusat MIPA UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c7e66-47.pdf', ''),
(261, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Januari 2008', 'Surat Keputusan Rektor UNS nomor : 46/H27/KP/2008 Tentang Pemberhentian Dan Pengangkatan Sekretaris Lembaga Pengembangan Pendidikan UNS Periode 2008-20012 ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '80344-46.pdf', ''),
(262, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Januari 2008', 'Surat Keputusan Rektor UNS nomor : 45/H27/KP/2008 Tentang Pemberhentian Dan Pengangkatan Ketua TIM Satuan Pengendali Intern(SPI) UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'cf26a-44.pdf', ''),
(263, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Januari 2008', 'Surat Keputusan Rektor UNS nomor : 43/H27/KP/2008 Tentang Pemberhentian Dan Pengangkatan Kepala Dan Sekretaris Pusat Di Lingkungan Lembaga Pengembangan Pendidikan (LPP) UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '62dd7-41.pdf', ''),
(264, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Januari 2008', 'Surat Keputusan Rektor UNS nomor : 42/H27/KP/2008 Tentang Pemberhentian Dan Pengangkatan Asisten Direktur Program Pascasarjana UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c2796-40.pdf', ''),
(265, 'Bagian TU,RT,HTL', 'HK.00.15', '2008', 'Surat Keputusan Rektor UNS nomor : 30/H27/KP/2008 Tentang Pemberhentian Dan Pengangkatan TIM Konservasi Energi UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'acec7-34.pdf', ''),
(266, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Januari 2008', 'Surat Keputusan Rektor UNS nomor : 29/H27/KP/2008 Tentang Pemberhentian Dan Pengangkatan Antar Waktu Sekretaris Pusat Penelitian Kependudukan Pada Lembaga Penelitian Dan Pengabdian Kepada Masyarakat (PPK-LPPM)  ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '129e5-32.pdf', ''),
(267, 'Bagian TU,RT,HTL', 'HK.00.15', '9 Januari 2008', 'Surat Keputusan Rektor UNS nomor : 17A/H27/KP/2008 Tentang Pengangkatan TIM Pengelola Kegiatan Pelaksana Indonesia-Managing Higher Education for Relevance and Efficiency (I-MHERE) B.2 a UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '8707c-20.pdf', ''),
(268, 'Bagian TU,RT,HTL', 'HK.00.15', '9 Januari 2008', 'Surat Keputusan Rektor UNS nomor : 17/H27/KP/2008 Tentang Pengangkatan Direktur UNS Medical Center UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '83697-19.pdf', ''),
(269, 'Bagian TU,RT,HTL', 'HK.00.15', '8 Januari 2008', 'Surat Keputusan Rektor UNS nomor : 16A/H27/KP/2008 Tentang Pengangkatan TIM Taskforce dan TIM Pendukung Kantor Humas Dan Kerjasama UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'e2ebe-17.pdf', ''),
(270, 'Bagian TU,RT,HTL', 'HK.00.15', '8 Januari 2008', 'Surat Keputusan Rektor UNS nomor : 15B/H27/KP/2008 Tentang Perbaikan Surat Keputusan Rektor UNS Nomor : 4A/H27/KP/2008 Tentang Pemberhentian dan Pengangkatan TIM Pengelola Kantor Humas Dan Kerjasama UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '9ef91-15.pdf', ''),
(271, 'Bagian TU,RT,HTL', 'HK.00.15', '2008', 'Surat Keputusan Rektor UNS nomor : 14A/H27/KP/2008 Tentang Pengangkatan TIM Pengendalian Penataan Pemanfaatan Lahan dan Bangunan Kampus UNS Tahun Anggaran 2008  ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b350d-12.pdf', ''),
(272, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Januari 2008', 'Surat Keputusan Rektor UNS nomor : 10A/H27/KP/2008 Tentang Pengangkatan dan Pelaksanaan Pembangunan Rumah Susun Sederhana Yang di Sewakan (Rusunawa) /Asrama Mahasiswa UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '017d2-10.pdf', ''),
(273, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Januari 2008', 'Peraturan Rektor UNS nomor : 2 /H27/KP/2008 Tentang Sistem Perencanaan Program dan Penganggaran Tahunan UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '3cfad-3.pdf', ''),
(274, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Januari 2008', 'Surat keputusan Rektor UNS nomor : 1A/H27/2008 tentang  Perpanjangan Masa Tugas Asisten Direktur ,Ketua dan Sekretaris,Program Studi Program Pascasarjana UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c0dfa-2.pdf', ''),
(275, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Januari 2008', 'Surat keputusan Rektor UNS nomor : 1/H27/KL/2008 tentang Pedoman Kerjasama UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '5c980-1.pdf', ''),
(276, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Desember 2007', 'SK Rektor UNS No. 829/J27/KP/2007 tentang Kaidah, Norma dan Tata Tertib Kehidupan tenaga Kependidikan dan Pendidik di Lingkungan UNS.', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'da9db-415.pdf', ''),
(277, 'Bagian TU,RT,HTL', 'HK.00.15', '29 Desember 2007', 'SK Rektor UNS No.828/H27/KM/2007 tentang Tata Tertib Kehidupan Mahasiswa Di Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'd83ef-413.pdf', ''),
(278, 'Bagian TU,RT,HTL', 'HK.00.15', '29 Desember 2007', 'SK Rektor UNS No.825/H27/KP/2007 tentang Tata Cara dan Petunjuk Teknis Penilaian Angka Kredit Jabatan dan Pangkat Dosen Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'e3988-410-c.pdf', ''),
(279, 'Bagian TU,RT,HTL', 'HK.00.15', '24 Nopember 2007', 'SK Rektor UNS No.705/H27/KP/2007 tentang Pendelegasian Wewenang Rektor Universitas Sebelas Maret Kepada Pembantu Rektor dilingkungan  Universitas sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '88724-364.pdf', ''),
(280, 'Bagian TU,RT,HTL', 'HK.00.15', '24 Nopember 2007', 'SK Rektor UNS No.703/H27/HK/2007 tentang Peraturan Universitas sebelas Maret No.755/J27/HK/2005 tanggal 30 Desmber 2005 tentang Pedoman Penyusunan Anggaran Rumah Tangga Senat fakultas dilingkungan Universitas sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '0d90f-363.pdf', ''),
(281, 'Bagian TU,RT,HTL', 'HK.00.15', '24 Nopember 2007', 'SK Rektor UNS No.702/H27/KP/2007 tentang Perpanjangan Masa Tugas Direktur Program Pascasarjjana Universitas sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'cd208-362.pdf', ''),
(282, 'Bagian TU,RT,HTL', 'HK.00.15', '9 Nopember 2007', 'SK Rektor UNS No.689A/H27/KP/2007 tentang Pemberhentian dr.Budiyanti Wiboworini dan Pengangkatan Dr.Ir.Kusnandar,M.Si. Selaku Anggota Tim Task Force Program Hibah Kompetisi (PHK) Berbasis Institusi Tingkat Universitas sebelas Maret tahun 2008', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b1d15-356.pdf', ''),
(283, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Nopember 2007', 'SK Rektor UNS No.679B/H27/KP/2007 tentang Tim Penilai Kinerja Fakultas,Lembaga dan Program Pascasarjana di lingkungan Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '06feb-345.pdf', ''),
(284, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Nopember 2007', 'SK Rektor UNS No.679/H27/KP/2007 tentang Pemberhentian dan Pengangkatan Koordinator Penelitian dan Pengabdian Kepada masysarakat Fakultas (KPPMF) Teknik (antar waktu) bagi Lembaga Penelitian dan Pengabdian Kepada masysarakat Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'af657-344.pdf', ''),
(285, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Oktober 2007', 'SK Rektor UNS No.678/H27/KP/2007 tentang Pengangkatan Tim Task Force Program Hibah Kompetisi (PHK) Berbasis Institusi Tingkat Universitas sebelas Maret tahun 2008', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'b2807-339.pdf', ''),
(286, 'Bagian TU,RT,HTL', 'HK.00.15', '11 Oktober 2007', 'SK Rektor UNS No.669/H27/PP/2007 tentang Perbaikan Peraturan Rektor No.459/J27/PP/2007 tentang Peraturan Sistim Kredit Semester Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '75281-336.pdf', ''),
(287, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Oktober 2007', 'SK Rektor UNS No.649A/H27/KP/2007 tentang Pengangkatan Prof.Dr.SoeharnoTS,SU Sebagai Guru Besar Emeritus Fakultas Ekonomi Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'bb871-326.pdf', ''),
(288, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Oktober 2007', 'SK Rektor UNS No.647A/H27/KP/2007 tentang Pengangkatan Prof.Dr.Soenarwan Sebagai Guru Besar Emeritus Fakultas Keguruan Dan Ilmu Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '3c493-325.pdf', ''),
(289, 'Bagian TU,RT,HTL', 'HK.00.15', '27-Sep-07', 'SK Rektor UNS No.644/H27/HK.KM/2007 tentang Pemberian Penghargaan Mahasiswa Berprestasi Olah Raga dalam cabang Pencak silat Kejuaraan Panasonic Antar Perti ke II Tahun 2007 di Universitas Wijaya Kusuma Surabaya', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '59e0b-321.pdf', ''),
(290, 'Bagian TU,RT,HTL', 'HK.00.15', '17-Sep-07', 'SK Rektor UNS No.639A/H27/KP/2007 tentang Penyelenggaraan Program Pascasarjana Pada Fakultas Hukum, Ekonomi, Sastra dan Senirupa, FISIP dan Fakultas Teknik Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '8b303-318.pdf', ''),
(291, 'Bagian TU,RT,HTL', 'HK.00.15', '13-Sep-07', 'SK Rektor UNS No.624/H27/KP/2007 tentang Pendelegasian Wewenang Rektor UNS Kepada Pembantu Rektor di Lingkungan Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e510c-309.pdf', ''),
(292, 'Bagian TU,RT,HTL', 'HK.00.15', '13-Sep-07', 'SK Rektor UNS No.623/H27/KP/2007 tentang Pengangkatan Yang Melaksanakan Tugas (YMT) Ketua Lembaga Penelitian dan Pengabdian Kepada Masysrakat Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'f0774-308.pdf', ''),
(293, 'Bagian TU,RT,HTL', 'HK.00.15', '7-Sep-07', 'SK Rektor UNS No.618A/H27/KP/2007 tentang Pengangkatan Tim Kepakaran (Peer Group) pada Pusat Studi Dilingkungan Lembaga Penelitian dan Pengabdian Kepada Masysrakat Universitas sebelas Maret Periode 2007', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'c3442-307.pdf', ''),
(294, 'Bagian TU,RT,HTL', 'HK.00.15', '4-Sep-07', 'SK Rektor UNS No.609A/H27/KP/2007 tentang Pembentukan Bagian Orthopaedi dan Traumatologi Fakultas Kedokteran Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'b108e-298.pdf', ''),
(295, 'Bagian TU,RT,HTL', 'HK.00.15', '1-Sep-07', 'SK Rektor UNS No.606A/J27/KP/2007 tentang Pengangkatan Prof.Dr.Sri Jutmini Sebagai Guru Besar Emiritus Fakultas Keguruan Dan Ilmu Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '78bf0-296.pdf', ''),
(296, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Agustus 2007', 'SK Rektor UNS No.599A/H27/KU/2007 tentang Pedoman Tarif Uang Lelah Pengemudi Kendaraan Dinas Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '5e009-288.pdf', ''),
(297, 'Bagian TU,RT,HTL', 'HK.00.15', '14 Agustus 2007', 'SK Rektor UNS No.578/J27/KM/2007 tentang Pemberian Penghargaan Unit Kegiatan Mahasiswa Cabang Inkai', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '82b89-277.pdf', ''),
(298, 'Bagian TU,RT,HTL', 'HK.00.15', '14 Agustus 2007', 'SK Rektor UNS No.574/J27/HK.PP/2007 tentang Penetapan Anggota Tim Asistensi Kelayakan Pengukuhan Guru Besar Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '00f14-276.pdf', ''),
(299, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Agustus 2007', 'SK Rektor UNS No.573/J27/KP/2007 tentang Pemberian Penghargaan Prestasi Mahasiswa dan Pembimbing', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'eb201-275.pdf', ''),
(300, 'Bagian TU,RT,HTL', 'HK.00.15', '10 Agustus 2007', 'SK Rektor UNS No.567A/H27/KP/2007 tentang Pemberhentian dan Pengangkatan Direktur dan Sekretaris Pusat Pengembangan Akuntansi (PPA)  pada Fakultas Ekonomi Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '469f2-262.pdf', ''),
(301, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Agustus 2007', 'SK Rektor UNS No.543/H27/HK.PP/2007 tentang Pedoman Penyelenggaraan Pendidikan Program Diploma Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '4c8f3-239.pdf', ''),
(302, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Agustus 2007', 'SK Rektor UNS No.542/H27/KP/2007 tentang Kewajiban Menempuh Test Of Englsh For International Communication (TOEIC) bagi Mahasiswa Program D III dan D IV Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '2b68e-238.pdf', ''),
(303, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Juli 2007', 'SK Rektor UNS No.539D/H27/KP/2007 tentang Pemberhentian dan Pengangkatan Koordinator Bidang Pada  UPT Mata Kuliah Umum Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'd72da-236.pdf', ''),
(304, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Juli 2007', 'SK Rektor UNS No.529/J27/HK.KM/2007 tentang Pembentukan dan Pengangkatan Tim Pelaksana Unit Pengembangan Program Coop (Cooperative Academic Education) Tahun 2007', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '8b016-229.pdf', ''),
(305, 'Bagian TU,RT,HTL', 'HK.00.15', '20 Juli 2007', 'SK Rektor UNS No.517/H27/KP/2007 tentang Pengangkatan Kembali Kepala dan sekretaris UPT Komputer Universitas sebelas MaretTim', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'd15a7-225.pdf', ''),
(306, 'Bagian TU,RT,HTL', 'HK.00.15', '14 Juli 2007', 'SK Rektor UNS No.506/J27/KP/2007 tentang Pengelola Spormart M Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'c2e8b-220.pdf', ''),
(307, 'Bagian TU,RT,HTL', 'HK.00.15', '14 Juli 2007', 'SK Rektor UNS No.505/J27/OT/2007 tentang Pembentukan Showroom Olah Raga (Spormart M) Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '921c4-219.pdf', ''),
(308, 'Bagian TU,RT,HTL', 'HK.00.15', '25 Juni 2007', 'SK Rektor UNS No.463/J27/KP/2007 tentang Pengangkatan Tim Monitoring dan Evaluasi Internal Universitas sebelas Maret tahun 2007', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '2d091-208.pdf', ''),
(309, 'Bagian TU,RT,HTL', 'HK.00.15', '25 Juni 2007', 'SK Rektor UNS No.462/H27/KP/2007 tentang Pemberhentian dan Pengangkatan Kepala dan Sekretaris UPT Mata Kuliah Umum (MKU) Fakultas Lingkungan Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '6dff5-207.pdf', ''),
(310, 'Bagian TU,RT,HTL', 'HK.00.15', '21 Juni 2007', 'SK Rektor UNS No.459/J27/PP/2007 tentang Peraturan Sistem Kredit Semester  Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '5cb14-203.pdf', ''),
(311, 'Bagian TU,RT,HTL', 'HK.00.15', '21 Juni 2007', 'SK Rektor UNS No.458/J27/PP/2007 tentang Pedoman Penyelenggaraan Pendidikan Program Diploma  Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '7faab-202.pdf', ''),
(312, 'Bagian TU,RT,HTL', 'HK.00.15', '20 Juni 2007', 'SK Rektor UNS No.455/J27/KP/2007 tentang Pembentukan Tim Pengelola Kegiatan Pelaksana Indonesia-Managing Higher Education For Relevance And Efficiency (I-Mhere)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '38851-200.pdf', ''),
(313, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Juni 2007', 'SK Rektor UNS No.415/J27/KU/2007 tentang Pemberia Tunjangan Jabatan Bagi Pegawai Negeri Sipil Yang Menjabat Tugas Tambahan sebagai Pembantu Rektor Iv Perode Masa Jabatan 2007-2011 Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'dbd68-187.pdf', ''),
(314, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Mei 2007', 'SK Rektor UNS No.390/J27/LK/2007 tentang Penggunaan Kendaraan Dinas Untuk Rektor dan Pembantu Rektor Universitas sebelas Maret Periode Masa Jabatan 2007-2011', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'b4b76-175.pdf', ''),
(315, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Mei 2007', 'SK Rektor UNS No.387/J27/KP/2007 tentang Pengangkatan Kembali Pejabat Struktural Eselon II a (Kepala  Biro Administrasi Umum dan keuangan) Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '27665-172.pdf', ''),
(316, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Mei 2007', 'SK Rektor UNS No.384/J27/KP/2007 tentang Pengangkatan Kembali Pejabat Struktural Eselon II a (Kepala  Biro Administrasi Umum dan keuangan) Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '75721-169.pdf', ''),
(317, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Mei 2007', 'SK Rektor UNS No.383/H27/KP/2007 tentang Pengangkatan Tim Persiapan dan Pelaksanaan Pembangunn Rumah Susun Sederhana Yang Disewakan (RUSUNAWA) Asrama Mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'd71d5-168.pdf', ''),
(318, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Mei 2007', 'SK Rektor UNS No.381/H27/PP/2007 tentang Pengangkatan Tim Sistim Mutu Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '4838a-166.pdf', ''),
(319, 'Bagian TU,RT,HTL', 'HK.00.15', '26 Mei 2007', 'SK Rektor UNS No.367/H27/KP/2007 tentang Pengangkatan Tim Pengelola Hutan Konservasi Wonosemar', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '862ca-159.pdf', ''),
(320, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Mei 2007', 'SK Rektor UNS No.356/H27/KP/2007 tentang Pemberhentian dan Pengangkatan Pembantu Rektor dan Dekan Fakultas di Lingkungan UNS Sebagai Anggota Senat Universitas Sebelas Maret Periode 2007 - 2011', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '43139-158.pdf', ''),
(321, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Mei 2007', 'SK Rektor UNS No.316/H27/KP/07 ttg Pemberh dan Pengang Dekan Fak di Lingk UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'c22c4-143.pdf', ''),
(322, 'Bagian TU,RT,HTL', 'HK.00.15', '12 Mei 2007', 'SK Rektor UNS  No.309/J27/KP/07 ttg Pemberh & Pengang Ka Komisi Senat  PriOde 03 - 07', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'a44c3-138.pdf', ''),
(323, 'Bagian TU,RT,HTL', 'HK.00.15', '30 April 2007', 'SK Rektor UNS No.287A/J27/KP/2007 tentang Pemberhentian dan Pengangkatan Pejabat Koordinator Bidang pada UPT Mata Kuliah Umum ( MKU )  Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '27183-132.pdf', ''),
(324, 'Bagian TU,RT,HTL', 'HK.00.15', '30 April 2007', 'SK Rektor UNS No.286/J27/KP/2007 tentang Pemberhentian dan Pengangkatan Pejabat dan Sekretaris UPT Mata Kuliah Umum ( MKU )  Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '1149e-130.pdf', ''),
(325, 'Bagian TU,RT,HTL', 'HK.00.15', '30 April 2007', 'SK Rektor UNS No.285B/J27/KP/2007 tentang Perpanjangan Masa Tugas Tim Pengelola Lembaga Pengembangan Pendidikan Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '35eed-129.pdf', ''),
(326, 'Bagian TU,RT,HTL', 'HK.00.15', '30 April 2007', 'SK Rektor UNS No.285A/J27/KP/2007 tentang Pengangkatan Pejabat Tim Pengelola Lembaga Pengembangan Pendidikan Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '061c5-128.pdf', ''),
(327, 'Bagian TU,RT,HTL', 'HK.00.15', '28 April 2007', 'SK Rektor UNS No.282/J27/HK.KM/2007 tentang Pemberian Penghargaan Mahasiswa Berprestasi Olah Raga dalam cabang Taekwondo dalam Kegiatan Raider Cup Kejuaraan Nasional Taekwondo Militer dan Mahasiswa tanggal 16-18 Maret 2007 di Makodam IV / Diponegogo Semarang', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '2837d-125.pdf', ''),
(328, 'Bagian TU,RT,HTL', 'HK.00.15', '20 April 2007', 'SK Rektor UNS No.281/J27/HK.KP/2007 tentang Penetapan Jabatan Pembantu Rektor IV Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '1915c-124.pdf', ''),
(329, 'Bagian TU,RT,HTL', 'HK.00.15', '27 April 2007', 'SK Rektor UNS No.280/J27/KP/2007 tentang Penetapan Anggota Senat Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '3b881-123.pdf', ''),
(330, 'Bagian TU,RT,HTL', 'HK.00.15', '27 April 2007', 'SK Rektor UNS No.279/J27/KP/2007 tentang Pemberhentian dan Pengangkatan Kepala dan Sekretaris Pusat pada lembaga Penelitian dan Pengabdian Kepada Masyarakat Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '1756f-122.pdf', ''),
(331, 'Bagian TU,RT,HTL', 'HK.00.15', '27 April 2007', 'SK Rektor UNS No.278/J27/KP/2007 tentang Pemberhentian dan Pengangkatan Pembantu Rektor Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '298ef-121.pdf', ''),
(332, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Mei 2007', 'SK Rektor UNS No.239A/H27/KP/2007 tentang Pemberhentian dan Pengangkatan Direktur UNS Medical Center', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '98949-113.pdf', ''),
(333, 'Bagian TU,RT,HTL', 'HK.00.15', '10 April 2007', 'SK Rektor UNS No.239/J27/HK.KP/2007 tentang Tata Cara Pemilihan Calon Pimpinan dan Pembantu Pimpinan Program Pascasarjana,Lembaga Program Studi Pascasarjana,Serta Pusat Lembaga', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'cadba-112.pdf', ''),
(334, 'Bagian TU,RT,HTL', 'HK.00.15', '29 Maret 2007', 'SK Rektor UNS No.238/J27/HK.KP/2007 tentang Pencabutan Keputusan Rektor No.445A/J27/KP/2006 tanggal 1 September 2006 tentang Pengangkatan Prof.DR.Sri Jutmini Sebagai Guru Besar Emeritus pada Fakultas Keguruan dan ilmu pendidikan Universitas sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'b0abc-111.pdf', ''),
(335, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Maret 2007', 'SK Rektor UNS No.224D/J27/KP/2007 tentang Perpanjangan Masa Tugas Sekretaris senat Universitas sebelas maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '97d62-100.pdf', ''),
(336, 'Bagian TU,RT,HTL', 'HK.00.15', '27 Maret 2007', 'SK Rektor UNS No.209/J27/HK.KM/2007 tentang Pengangkatan Pengurus Badan Eksekutif Mahasiswa ( BEM) Universitas sebelas Maret Periode 2007/2008', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '95018-91.pdf', ''),
(337, 'Bagian TU,RT,HTL', 'HK.00.15', '27 Maret 2007', 'SK Rektor UNS No.208/J27/KM/2007 tentang Pedoman Persyaratan Penguji Beasiswa Bagi Mahasiswa Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e6e57-89.pdf', ''),
(338, 'Bagian TU,RT,HTL', 'HK.00.15', '26 Maret 2007', 'SK Rektor UNS No.202/J27/HK.KM/2007 tentang Pengangkatan Pengurus Dewan Mahasiswa Universitas Sebelas Maret Periode 2007', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'bc777-85.pdf', ''),
(339, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Maret 2007', 'SK Rektor UNS No.200/J27/KP/2007 tentang Pengangkatan Sekretaris UPT Pusat Komputer Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'bb9ee-83.pdf', ''),
(340, 'Bagian TU,RT,HTL', 'HK.00.15', '20 Pebruari 2007', 'SK Rektor UNS No.171/J27/KP/2007 tentang Pengangkatan Anggota Dewan Penyantun  Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'f2f4f-66.pdf', ''),
(341, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Maret 2007', 'SK Rektor UNS No.169/J27/HK.KM/2007 tentang Pemberian Penghargaan Mahasiswa Berprestasi Olah Raga dalam cabang Pencak silat Antar Perguruan Tinggi Tingkat Nasional di Universitas Andalas Padang Tahun 2006', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '167ce-65.pdf', ''),
(342, 'Bagian TU,RT,HTL', 'HK.00.15', '24 Pebruari 2007', 'SK Rektor UNS No.162a/J27/KP/2007 tentang Perbaikan Surat Keputusan Rektor No.789/J27/KP/2007 tentang pengangkatan kembali Pejabat Struktural Eselon III a (Kepala UPT Perpustakaan) Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '4f166-63.pdf', ''),
(343, 'Bagian TU,RT,HTL', 'HK.00.15', '17 Pebruari 2007', 'SK Rektor UNS No.150A/J27/HK/2007 tentang Pedoman Pembinaan Mahasiswa Universitas sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '34d5e-58.pdf', ''),
(344, 'Bagian TU,RT,HTL', 'HK.00.15', '6 Pebruari 2007', 'SK Rektor UNS No.112/J27/KP/2007 tentang Pemberhentian danPengangkatan Tim Pengelola Pusat Di Lingkungan Lembaga Pengembangan Pendidikan (LPP)  Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '0439a-56.pdf', ''),
(345, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Pebruari 2007', 'SK Rektor UNS No.106/J27/KP/2007 tentang Pemberian Penghargaan Mahasiswa Berprestasi Olah Raga dalam cabang Pencak silat pada The 13th Asean University Games di Vietnam tahun 2006', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '5963a-53.pdf', ''),
(346, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Pebruari 2007', 'SK Rektor UNS No.105a/J27/KP/2007 tentang Pembentukan Tim Pelaksana Policy Study dalam Rangka Kegiatan Indonesia - Managing Higher Education For Relevance And Efficiency (I-Mhere)B.2.a Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ca763-52.pdf', ''),
(347, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Maret 2007', 'SK Rektor UNS No.75b/J27/KP/2007 tentang Penetapan Pejabat Dekan Fakultas di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '39ad3-36.pdf', ''),
(348, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Maret 2007', 'SK Rektor UNS No.75a/J27/KP/2007 tentang Penetapan Pejabat Pembantu Rektor di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '6eae7-35.pdf', ''),
(349, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Desember 2006', 'SK Rektor No.869/J27/KP/2006 tentang pendirian dan pengangkatan pengelola jurnal international Issue In Social And Environmental Accounting (ISEA) Fakultas Ekonomi Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '470c6-375.pdf', ''),
(350, 'Bagian TU,RT,HTL', 'HK.00.15', '29 Desember 2006', 'SK Rektor No.868/J27/KP/2006 tentang pendirian dan pengangkatan pengelola Indonesian Center For Social And Environmental Accounting Research and Development (ICSEARD) Fakultas Ekonomi Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '7f85b-374.pdf', ''),
(351, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Desember 2006', 'SK Rektor No.852/J27/KP/2006 tentang perpanjangan masa tugas ketua dan sekretaris UPT Mata Kuliah Umum (MKU) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e1581-364.pdf', ''),
(352, 'Bagian TU,RT,HTL', 'HK.00.15', '19 Desember 2006', 'SK Rektor No.805/J27/KP/2006 tentang pengangkatan yang melaksanakan tugas (YMT) Pembantu Dekan II FKIP Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '53656-359.pdf', '');
INSERT INTO `tb_arsip_tekstual` (`id_arsip_tekstual`, `unit_kerja`, `kode_klasifikasi`, `tanggal`, `isi_informasi`, `masalah`, `retensi_aktif`, `retensi_inaktif`, `file_url`, `watermark`) VALUES
(353, 'Bagian TU,RT,HTL', 'HK.00.15', '19 Desember 2006', 'SK Rektor No.804/J27/HK.KM/2006 tentang pembentukan dan pengangkatan pengelola unit informasi dan media kemahasiswaan dan alumni Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '610e5-358.pdf', ''),
(354, 'Bagian TU,RT,HTL', 'HK.00.15', '11 Desember 2006', 'SK Rektor No.761/J27/HK.KM/2006 tentang pemberian beasiswa unggulan aktivis mahasiswa dari Departemen Pendidikan Nasional bagi mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '84693-340.pdf', ''),
(355, 'Bagian TU,RT,HTL', 'HK.00.15', '9 Desember 2006', 'SK Rektor No.753/J27/HK.KM/2006 tentang pemberian beasiswa korban gempa dari Departemen Pendidikan Nasional tahun 2006 bagi mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'a00a8-335.pdf', ''),
(356, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Desember 2006', 'SK Rektor No.752/J27/PP/2006 tentang pengangkatan yang melaksanakan tugas (YMT) Direktur Program Pascasarjana Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '44e1e-334.pdf', ''),
(357, 'Bagian TU,RT,HTL', 'HK.00.15', '6 Desember 2006', 'SK Rektor No.735B/J27/KU/2006 tentang dana pendamping proyek HEI-IU IMHERE Universitas Sebelas Maret tahun 2006', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'da310-331.pdf', ''),
(358, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Desember 2006', 'SK Rektor No.723/J27/KP/2006 tentang pemberhentian dan pengangkatan pejabat struktural eselon Iia (Kepala Biro) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '82a49-328.pdf', ''),
(359, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Desember 2006', 'SK Rektor No.718/J27/KP/2006 tentang penanggung jawab program subsidi rintisan pendidikan jarak jauh (PJJ)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'df13f-326.pdf', ''),
(360, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Nopember 2006', 'SK Rektor No.713/J27.PP/2006 tentang penyelenggaraan kelompok mata kuliah umum di Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '31be1-323.pdf', ''),
(361, 'Bagian TU,RT,HTL', 'HK.00.15', '25 Nopember 2006', 'SK Rektor No.710/J27/KP/2006 tentang pemberhentian kepala biro administrasi perencanaan dan sistem informasi Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '603a3-322.pdf', ''),
(362, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Nopember 2006', 'SK Rektor No.703/J27/HK.KM/2006 tentang pengangkatan pengurus dewan mahasiswa Universitas Sebelas Maret periode 2006', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'ac3d9-318.pdf', ''),
(363, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Nopember 2006', 'SK Rektor No.696/J27/KP/2006 tentang perpanjangan masa tugas dekan di lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '23dda-314.pdf', ''),
(364, 'Bagian TU,RT,HTL', 'HK.00.15', '21 Nopember 2006', 'SK Rektor No.695/J27/OT/2006 tentang perubahan struktur organisasi unit pelaksana teknis pelayanan dan pengembangan bahasa (UPT P2B) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'd3f1c-313.pdf', ''),
(365, 'Bagian TU,RT,HTL', 'HK.00.15', '2006', 'SK Rektor No.686/J27/KP/2006 tentang pemberian gelar doktor kehormatan (Doktor Honoris Causa) oleh Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '52c18-312.pdf', ''),
(366, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Nopember 2006', 'SK Rektor No.643A/J27/KP/2006 tentang pemberhentian dan pengangakatan tim pengelola Kantor Humas dan Kerjasama Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '74bbd-307.pdf', ''),
(367, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Oktober 2006', 'SK Rektor No.642A/J27/KP/2006 tentang pengangkatan Prof.Dra.Nurul Muchlisah,MS sebagai guru besar emeritus pada Fakultas Matematika dan Ilmu Pengetahuan Alam Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(368, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Oktober 2006', 'SK Rektor No.639A/J27/OT/2006 tentang perubahan struktur organisasi Kantor Humas dan Kerjasama Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'bb156-303.pdf', ''),
(369, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Oktober 2006', 'SK Rektor No.636/J27/KP/2006 tentang pengangkatan keanggotaan tim persiapan dan pelaksanaan pembangunan rumah susun sederhana yang disewakan (RUSUNAWA)/ asrama mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '1eafb-301.pdf', ''),
(370, 'Bagian TU,RT,HTL', 'HK.00.15', '19 Oktober 2006', 'SK Rektor No.629/J27/KP/2006 tentang pembentukan tim Task Force Pengembangan Hutan Lindung Wonosemar', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '576f8-294.pdf', ''),
(371, 'Bagian TU,RT,HTL', 'HK.00.15', '6 Oktober 2006', 'SK Rektor No.542/J27/PP/2006 tentang pemandirian program pendidikan dokter spesialis anestesiologi dan reanimasi (Sp) pada Fakultas Kedokteran Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '065ba-270.pdf', ''),
(372, 'Bagian TU,RT,HTL', 'HK.00.15', '4 Oktober 2006', 'SK Rektor No.540/J27/HK.KM/2006 tentang pemberian penghargaan prestasi mahasiswa dalam invitasi olah raga dan seni', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '078bc-268.pdf', ''),
(373, 'Bagian TU,RT,HTL', 'HK.00.15', '29-Sep-06', 'SK Rektor No.534/J27/KP/2006 tentang pembentukan tim pengelola UNS I-MHERE Project tahun 2006', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '04a37-265.pdf', ''),
(374, 'Bagian TU,RT,HTL', 'HK.00.15', '15-Sep-06', 'SK Rektor No.504/J27/PP/2006 tentang pembentukan laboratorium sosiologi pendidikan pada Fakultas Keguruan dan Ilmu Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '83ae2-257.pdf', ''),
(375, 'Bagian TU,RT,HTL', 'HK.00.15', '1-Sep-06', 'SK Rektor No.445A/J27/KP/2006 tentang pengangkatan Prof.DR.Sri Jutmini sebagai guru besar emeritus pada Fakultas Keguruan dan Ilmu Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '159d6-249.pdf', ''),
(376, 'Bagian TU,RT,HTL', 'HK.00.15', '2006', 'SK Rektor No.433/J27/LK/2006 tentang pengangkatan tim persiapan dan pelaksanaan pembangunan UNS Center Surakarta', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '175bc-243.pdf', ''),
(377, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Juni 2006', 'SK Rektor No.427/J27/PP/2006 tentang pengangkatan tim co-promotor tesis Ph.D bagi staf pengajar Universitas Sebelas Maret yang studi lanjut S3 di Universitas Utara Malaysia', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'c5eb5-240.pdf', ''),
(378, 'Bagian TU,RT,HTL', 'HK.00.15', '18 Juni 2006', 'SK Rektor No.426/H27/PP/2006 tentang pemberian penghargaan bagi dosen berprestasi Universitas Sebelas Maret tahun 2007', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'd3b01-239.pdf', ''),
(379, 'Bagian TU,RT,HTL', 'HK.00.15', '15 Agustus 2006', 'SK Rektor No.417/J27/HK.PP/2006 tentang pengesahan dan pemberlakuan falsafah, misi dan tujuan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'b9424-235.pdf', ''),
(380, 'Bagian TU,RT,HTL', 'HK.00.15', '10 Agustus 2006', 'SK Rektor No.415/J27/HK.KM/2006 tentang pemberian penghargaan prestasi mahasiswa dan pembimbing', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '5b199-233.pdf', ''),
(381, 'Bagian TU,RT,HTL', 'HK.00.15', '9 Agustus 2006', 'SK Rektor No.413/J27/KP/2006 tentang pembentukan bagian kardiologi dan kedokteran vaskular Fakultas Kedokteran Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '225fb-232.pdf', ''),
(382, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Agustus 2006', 'SK Rektor No.400A/J27/KP/2006 tentang pengangkatan tim persiapan dan pelaksanaan pembangunan rumah susun sederhana yang disewakan (RUSUNAWA)/ asrama mahasiswa Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '20966-224.pdf', ''),
(383, 'Bagian TU,RT,HTL', 'HK.00.15', '27 Juli 2006', 'SK Rektor No.394/J27/KP/2006 tentang pemberhentian kepala dan sekretaris pusat pengembangan dan pengkajian sistem jaminan mutu (P3SJM) Lembaga Pengembangan Pendidikan dan Pengangkatan Kepala dan Sekretaris Kantor Jaminan Mutu Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e6ecf-219.pdf', ''),
(384, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Juli 2006', 'SK Rektor No.388/J27/KP/2006 tentang pelaksanaan orientasi studi mahasiswa baru Universitas Sebelas Maret periode 2006', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'c93fa-215.pdf', ''),
(385, 'Bagian TU,RT,HTL', 'HK.00.15', '20 Juli 2006', 'SK Rektor No.386/J27/KP/2006 tentang pengangkatan sebagai dosen luar biasa dengan status guru besar Universitas Sebelas Maret semester Februari - Juli 2006', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '19125-213.pdf', ''),
(386, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Juli 2006', 'SK Rektor No.372/J27/PP/2006 tentang kebijakan program Combined Magister Kesehatan dan Dokter Spesialis', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'ee48c-202.pdf', ''),
(387, 'Bagian TU,RT,HTL', 'HK.00.15', '19-Sep-06', 'SK Rektor No.371A/J27/PP/2006 tentang pembentukan Kantor Jaminan Mutu sebagai pengganti pusat pengembangan dan pengkajian sistem jaminan mutu-Lembaga Pengembangan Pendidikan Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'd20e2-201.pdf', ''),
(388, 'Bagian TU,RT,HTL', 'HK.00.15', '12 Juli 2006', 'SK Rektor No.369/J27/PP/2006 tentang pemberian penghargaan bagi dosen berprestasi Universitas Sebelas Maret tahun 2006', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '01ee1-199.pdf', ''),
(389, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Juli 2006', 'SK Rektor No.355D/J27/KP/2006 tentang pengangkatan Prof.DR.Sudiro Satoto sebagai Guru Besar Emeritus pada Fakultas sastra dan Seni Rupa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e7c74-189.pdf', ''),
(390, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Juni 2006', 'SK Rektor No.321/J27/HK.KP/2006 tentang tata cara pemilihan calon Rektor, Pembantu Rektor, Dekan, Pembantu Dekan, Ketua dan Sekretaris jurusan/ bagian, Ketua dan Sekretaris program studi di lingkungan Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '6eb20-166.pdf', ''),
(391, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Mei 2006', 'SK No.298/J27/KP/2006 tentang pengangkatan kembali pejabat struktural eselon Iia (Kepala Biro Administrasi Akademik) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '35494-155.pdf', ''),
(392, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Mei 2006', 'SK Rektor No.297/J27/KP/2006 tentang pengangkatan kembali pejabat struktural eselon Iia (Kepala Biro Administrasi Perencanaan dan Sistem Informasi) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '5af43-154.pdf', ''),
(393, 'Bagian TU,RT,HTL', 'HK.00.15', '20 Mei 2006', 'SK Rektor No.285/J27/HK/KM/2006 tentang pemberhentian dan pengangkatan ketua UPKPM serta pemberian honorarium tim UPKPM Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'a8a96-145.pdf', ''),
(394, 'Bagian TU,RT,HTL', 'HK.00.15', '17 Mei 2006', 'SK Rektor No.275/J27/PP/2006 tentang pemberian penghargaan bagi dosen berprestasi Universitas Sebelas Maret tahun 2006', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '81602-138.pdf', ''),
(395, 'Bagian TU,RT,HTL', 'HK.00.15', '19-Sep-06', 'SK Rektor No.371A/J27/PP/2006 tentang pembentukan Kantor Jaminan Mutu sebagai pengganti pusat pengembangan dan pengkajian sistem jaminan mutu-Lembaga Pengembangan Pendidikan Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '8b55e-134.pdf', ''),
(396, 'Bagian TU,RT,HTL', 'HK.00.15', '1 April 2006', 'SK Rektor No.268/J27/KP/2006 tentang pemberhentian dan pengangkatan tim pengelola kantor humas dan kerjasama Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '27515-130.pdf', ''),
(397, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Mei 2006', 'SK Rektor No.259A/J27/KP/2006 tentang pengangkatan tim persiapan dan pelaksanaan pembangunan rumah susun sederhana yang disewakan asrama mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '9f6ac-126.pdf', ''),
(398, 'Bagian TU,RT,HTL', 'HK.00.15', '30 April 2006', 'SK Rektor No.258A/J27/KP/2006 tentang perpanjangan masa tugas tim pengelola Lembaga Pengembangan Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '9f18c-123.pdf', ''),
(399, 'Bagian TU,RT,HTL', 'HK.00.15', '26 April 2006', 'SK Rektor No.258/J27/PP/2006 tentang perubahan status program studi menjadi jurusan/ program studi di Fakultas Pertanian', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '02b74-122.pdf', ''),
(400, 'Bagian TU,RT,HTL', 'HK.00.15', '26 April 2006', 'SK Rektor No.257/J27/PP/2006 tentang perubahan status program studi menjadi jurusan/ program studi di Fakultas Teknik', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '60f3b-121.pdf', ''),
(401, 'Bagian TU,RT,HTL', 'HK.00.15', '29 Maret 2006', 'SK Rektor No.211/J27/KP/2006 tentang pengangkatan tim satuan pengawas intern (SPI) Universitas Sebelas Maret', 'Keputusan Rektor1', '1 tahun setelah tidak berlaku', '4 tahun', '02b74-84.pdf', ''),
(402, 'Bagian TU,RT,HTL', 'HK.00.15', '29 Maret 2006', 'SK Rektor No.197/J27/KP/2006 tentang pengangkatan kembali pejabat struktural eselon Iia (Kepala Biro Administrasi Umum dan Keuangan) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '2ddcd-79.pdf', ''),
(403, 'Bagian TU,RT,HTL', 'HK.00.15', '2006', 'SK Rektor No.196/J27/KP/2006 tentang pembentukan tim penyusun penjelasan visi Universitas Sebelas Maret tentang nilai-nilai luhur budaya jawa', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'add4a-78.pdf', ''),
(404, 'Bagian TU,RT,HTL', 'HK.00.15', '29 Maret 2006', 'SK Rektor No.195/J27/KP/2006 tentang pemberhentian dan pengangkatan kepala dan sekretaris pusat pada lembaga penelitian dan pengabdian kepada masyarakat Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '6d20b-77.pdf', ''),
(405, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Maret 2006', 'SK Rektor No.180/J27/PP/2006 tentang struktur organisasi satuan pengawas intern (SPI) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'c4c59-72.pdf', ''),
(406, 'Bagian TU,RT,HTL', 'HK.00.15', '18 Maret 2006', 'SK Rektor No.172/J27/KP/2006 tentang pengangkatan Prof.Drs.Sutarno,M.Sc,Ph,D sebagai anggota senat universitas dan anggota senat fakultas Matematika dan Ilmu Pengetahuan Alam Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '2b151-68.pdf', ''),
(407, 'Bagian TU,RT,HTL', 'HK.00.15', '7 Maret 2006', 'SK Rektor No.143/J27/PP/2006 tentang ketentuan pelaksanaan seleksi penerimaan mahasiswa baru strata 0 dan strata 1 Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '178d9-51.pdf', ''),
(408, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Maret 2006', 'SK Rektor No.135/J27/KU/2006 tentang peraturan pengelolaan dana penerimaan negara bukan pajak (PNBP) untuk layanan pendidikan kebahasaan pada UPT P2B Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '8fe18-48.pdf', ''),
(409, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Februari 2006', 'SK Rektor No.120/J27/HK/KM/2006 tentang pemberhentian dan pengangkatan Ketua UPLPM Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '0f7d9-37.pdf', ''),
(410, 'Bagian TU,RT,HTL', 'HK.00.15', '6 Februari 2006', 'SK Rektor No.98/J27/KP/2006 tentang perpanjangan masa tugas tim pengelola pusat Lembaga Pengembangan Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '71900-21.pdf', ''),
(411, 'Bagian TU,RT,HTL', 'HK.00.15', '25 Januari 2005', 'SK Rektor No.30/J27/KP/2006 tentang pengangkatan penanggung jawab penyelenggaraan kegiatan dan usaha pendidikan tinggi Universitas Sebelas Maret tahun anggaran 2005 dengan kode kegiatan 4282', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '4527c-14.pdf', ''),
(412, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Januari 2005', 'SK Rektor No.27/J27/KP/2006 tentang pemberhentian dan pengangkatan tim penataan dan pengendalian pemanfaatan lahan/ bangunan kampus Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '4f0ff-13.pdf', ''),
(413, 'Bagian TU,RT,HTL', 'HK.00.15', '2006', 'SK Rektor No.3A/J27/LK/2006 tentang pembentukan tim konservasi energi Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '5b00f-4.pdf', ''),
(414, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Desember 2005', 'SK Rektor UNS No.795/J27/HK/2005 tentang Pemberhentian DR. Drajat Tri Kartono ,M.Si., dari Anggota Senat Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '84014-379.pdf', ''),
(415, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Desember 2005', 'SK Rektor UNS No.787/J27/KP/2005 tentang Pemberhentian dan Pengangkatan Sekretaris Senat Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '4e581-372.pdf', ''),
(416, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Desember 2005', 'SK Rektor UNS No.786/J27/KP/2005 tentang Pengangkatan Ketua Lembaga Penelitian dan Pengabdian Kepada Masyarakatdan Sebagai Pejabat struktural n 1/b Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '88c84-371.pdf', ''),
(417, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Desember 2005', 'SK Rektor UNS No.785/J27/KP/2005 tentang Pemberhentian Ketua Lembaga Penelitian dan Pengabdian Kepada Masyarakatdan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '2724c-370.pdf', ''),
(418, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Desember 2005', 'SK Rektor UNS No.761/J27/PP/2005 tentang Tugas dan wewenang Pengelola UPT Laboratorium Pusat Mipa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '5d710-356.pdf', ''),
(419, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Desember 2005', 'SK Rektor UNS No.755/J27/HK/2005 tentang Pedoman Penyusunan Anggaran ruman Tangga Senat Fakultas di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '9fb22-353-c.pdf', ''),
(420, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Desember 2005', 'SK Rektor UNS No.754/J27/HK/2005 tentang Petunjuk Pelaksanaan Ekuivalensi Waktu Mengajar Penuh (EWMP) Bagi Tenaga Pengajar di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '7ff97-352-c.pdf', ''),
(421, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Desember 2005', 'SK Rektor UNS No.753/J27/HK/2005 tentang Jati Diri dan Tata Upacara Baku Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '77238-351-c.pdf', ''),
(422, 'Bagian TU,RT,HTL', 'HK.00.15', '20 Desember 2005', 'SK Rektor UNS No.749/J27/KM/2005 tentang Pemberian Uang Saku Unit Kegiatan Mahasiswa ( UKM ) Sebelas Maret Periode tahun 2005/2006', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e3479-348.pdf', ''),
(423, 'Bagian TU,RT,HTL', 'HK.00.15', '12 Desember 2005', 'SK Rektor UNS No.732A/J27/KP/2005 tentang  Pengangkatan Yang Melaksanakan Tugas (YMT) Kepala UPT P2 B Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e0385-345.pdf', ''),
(424, 'Bagian TU,RT,HTL', 'HK.00.15', '10 Desember 2005', 'SK Rektor UNS No.732/J27/KP/2005 tentang Pedoman Pelaksanaan Pengangkatan, Pemindahan, dan Pemberhentian Pejabat Struktural, Non Edukatif  di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'ec89e-344.pdf', ''),
(425, 'Bagian TU,RT,HTL', 'HK.00.15', '9 Desember 2005', 'SK Rektor UNS No.728/J27/KP/2005 tentang Pelaksana Tugas Pembantu Rektor Bidang Administrasi Umum dan Keuangan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e3863-341.pdf', ''),
(426, 'Bagian TU,RT,HTL', 'HK.00.15', '6 Desember 2005', 'SK Rektor UNS No.721/J27/PP/2005 tentang Pembentukan Forum Konsultatif Stakeholder Olahraga (FKSO) Fakultas KIP Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '82915-334.pdf', ''),
(427, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Desember 2005', 'SK Rektor UNS No.717A/J27/KP/2005 tentang PePemberhentian Tim Satuan Pengawas Intern (SPI) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '676ae-330.pdf', ''),
(428, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Nopember 2005', 'SK Rektor UNS No.712A/J27/KP/2005 tentang Perpanjangan Masa Tugas Tim Pengelola Lembaga Pengembangan Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '63919-329.pdf', ''),
(429, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Nopember 2005', 'SK Rektor UNS No.695/J27/PP/2005 tentang Pemandirian Program Pendidikan Dokter Spesialis Ilmu Kesehatan THT Bedah Kepala dan Leher (SP1) Fakultas Kedokteran Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '95dc7-324.pdf', ''),
(430, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Nopember 2005', 'SK Rektor UNS No.693/J27/KP/2005 tentang Pedoman Pelaksanaan Perpindahan (Rotasi) Pegawai Negeri Sipil Tenaga administrasi/Teknisi/Fungsional Non Dosen Non Pejabat Struktural di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e6b8b-323.pdf', ''),
(431, 'Bagian TU,RT,HTL', 'HK.00.15', '15 Nopember 2005', 'SK Rektor UNS No.687A/J27/LK/2005 tentang Pengangkatan Tim Studi Kelayakan UNS Center Di Kampus Pabelan', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'f0b0d-319.pdf', ''),
(432, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Nopember 2005', 'SK Rektor UNS No.687/J27/PP/2005 tentang Pemandirian Program Pendidikan Dokter Spesialis Ilmu Kesehatan Anak (SP1) Fakultas Kedokteran Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '88324-318.pdf', ''),
(433, 'Bagian TU,RT,HTL', 'HK.00.15', '15 Nopember 2005', 'SK Rektor UNS No.686/J27/KM/2005 tentang Pemberian Pembebasan Pembayaran SPP Bagi Mahasiswa  Universitas Sebelas Maret yang Berprestasi Tingkat Nasional Tahun Akademik 2005/2006', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '19955-317.pdf', ''),
(434, 'Bagian TU,RT,HTL', 'HK.00.15', '15 Nopember 2005', 'SK Rektor UNS No.684/J27/KP/2005 tentang Pembukaan Minat Utama Pengelolaan Sumber Daya Air (PSDA)) Program Studi Ilmu lingkungan  Program Pascasarjana Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '0199b-316.pdf', ''),
(435, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Oktober 2005', 'SK Rektor UNS No.658/J27/KP/2005 tentang Pengangkatan Kembali Sdr.Amiek Sumindriyatmi, SH sebagai Staf Ahli rektor Bidang hukum Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '45ec7-295.pdf', ''),
(436, 'Bagian TU,RT,HTL', 'HK.00.15', '26-Sep-05', 'SK Rektor UNS No.558/J27/KP/2005 tentang Pengangkatan Prof.Dr. Ibrahim Nuhriawangsa ,SpKJ,Sp.S Sebagai Guru Besar Emiretus Fakultas Kedokteran Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '6f88a-257.pdf', ''),
(437, 'Bagian TU,RT,HTL', 'HK.00.15', '1-Sep-05', 'SK Rektor UNS No.508A/J27/KP/2005 tentang Pengangkatan Prof.Dr. Ibrahim Nuhriawangsa ,SpKJ,Sp.S Sebagai Guru Besar Emiretus Fakultas Kedokteran Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '72170-240.pdf', ''),
(438, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Agustus 2005', 'SK Rektor UNS No.494/J27/KM/2005 tentang Pemberian Pembebasan Pembayaran SPP Bagi Mahasiswa  Universitas Sebelas Maret yang Berprestasi Tingkat Nasional Tahun Akademik 2005/2006', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '30a86-231.pdf', ''),
(439, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Agustus 2005', 'SK Rektor UNS No.487A/J27/KM/2005 tentang Tata tertib Kehidupan Mahasiswa di  Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e70cb-227.pdf', ''),
(440, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Agustus 2005', 'SK Rektor UNS No.485/J27/KM/2005 tentang Pemberian Pembebasan Pembayaran SPP Bagi Mahasiswa  Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'dfeed-226.pdf', ''),
(441, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Agustus 2005', 'SK Rektor UNS No.479B/J27/KM/2005 tentang Pengaturan Pelaksanaan Orientasi Studi Mahasiswa baru Non reguler   Universitas Sebelas Maret Tahun 2005', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '1d612-222.pdf', ''),
(442, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Agustus 2005', 'SK Rektor UNS No.479/J27/KP/2005 tentang Pembebasan dan Pengangkatan Sementara Kepala Kantor Humas dan Kerjasama  Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '24d22-221.pdf', ''),
(443, 'Bagian TU,RT,HTL', 'HK.00.15', '11 Agustus 2005', 'SK Rektor UNS No.475/J27/PP/2005 tentang Peraturan Sistim Kredit semester Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '6ae8e-217.pdf', ''),
(444, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Agustus 2005', 'SK Rektor UNS No.468/J27/KM/2005 tentang Pemberian Pembebasan Uang SPP dan Lab Bagi Mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '4b3ab-210.pdf', ''),
(445, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Agustus 2005', 'SK Rektor UNS No.464/J27/KM/2005 tentang Pengaturan Pelaksanaan Orientasi Studi Mahasiswa Baru Universitas sebelas Maret tahun 2005', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '8e451-207.pdf', ''),
(446, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Juli 2005', 'SK Rektor UNS No.455/OT/KP/2005 tentang Perubahan Struktur Organisasi pada Unit Pelaksana Teknis (UPT) Laboratorium Pusat Mipa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '31103-201.pdf', ''),
(447, 'Bagian TU,RT,HTL', 'HK.00.15', '18 Juli 2005', 'SK Rektor UNS No.442/J27/KM/2005 tentang Struktur Organisasi, Tugas Susunan Pengurus dan Pelaksana Operasional Badan Koordinasi Pelaksana Emergency SAR Universitas Sebelas Maret (Bakorlak SAR UNS) Tahun 2005/2009', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '704a8-194.pdf', ''),
(448, 'Bagian TU,RT,HTL', 'HK.00.15', '15 Juli 2005', 'SK Rektor UNS No.439/J27/KM/2005 tentang Pemberian Keringanan/Pembebasan SPP bagi Mahasiswa Universitas Sebelas Maret Semester Gasal tahun Akademik 2005 - 2006', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '43df9-189.pdf', ''),
(449, 'Bagian TU,RT,HTL', 'HK.00.15', '14 Juli 2005', 'SK Rektor UNS No.435/J27/KU/2005 tentang Pedoman Pengembalian Biaya Pendidikan dan Biaya Lain-Lain Bagi mahasiswa Program S1 Non Reguler S0/Diploma di Lingkungan Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '93d1a-187.pdf', ''),
(450, 'Bagian TU,RT,HTL', 'HK.00.15', '8 Juli 2005', 'SK Rektor UNS No.430/J27/PR/2005 tentang Hasil Evaluasi Program SP4 Kompetisi Batch 1 Tahun Ke Dua Dan Batch  II Tahun Pertama Universitas Sebelas Maret Tahun 2005', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '95539-182.pdf', ''),
(451, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Juni 2005', 'SK Rektor UNS No.424/J27/PP/2005 tentang Pedoman Perkuliahan Metedologi Penelitian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '5cf14-180.pdf', ''),
(452, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Juni 2005', 'SK Rektor UNS No.402/J27/KP/2005 tentang Pembentukan Struktur Organisasi Unit Koordinasi Pelaksanaan Program Hibah Kompetisi dan Tim Monitoring Evaluasi Internal Universitas Sebelas Maret Tahun 2005', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '90482-165.pdf', ''),
(453, 'Bagian TU,RT,HTL', 'HK.00.15', '7 Juni 2005', 'SK Rektor UNS No.388/J27/KP/2005 tentang  Pengangkatan Tim Pengelola Pusat Lembaga Pengembangan Pendidikan  Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '9024c-153.pdf', ''),
(454, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Juni 2005', 'SK Rektor UNS No.382/J27/KP/2005 tentang Pemberhentian dan Pengangkatan Tim Pengelola Lembaga Pengembangan Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '89f5b-149.pdf', ''),
(455, 'Bagian TU,RT,HTL', 'HK.00.15', '27 Mei 2005', 'SK Rektor UNS No.373/J27/PP/2005 tentang Pedoman Pelaksanaan Kegiatan Magang Mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '01168-140.pdf', ''),
(456, 'Bagian TU,RT,HTL', 'HK.00.15', '27 Mei 2005', 'SK Rektor UNS No.369/J27/LK/2005 tentang Peraturan Pengelolaan/Penggunaan Sarana dan Prasarana di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e3b03-139.pdf', ''),
(457, 'Bagian TU,RT,HTL', 'HK.00.15', '20 Mei 2005', 'SK Rektor UNS No.357/J27/KP/2005 tentang Pengangkatan Kembali Sdr.Amiek Sumindriyatmi, SH sebagai Staf Ahli rektor Bidang hukum Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '363c5-134.pdf', ''),
(458, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Mei 2005', 'SK Rektor UNS No.347/J27/KP/2005 tentang Pengangkatan SeKretaris UPT Penerbitan dan Percetakan  Universitas Sebelas Maret (UNS Press)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '359c9-130.pdf', ''),
(459, 'Bagian TU,RT,HTL', 'HK.00.15', '7 April 2005', 'SK Rektor UNS No.335/J27/KP/2005 tentang Kode Etik Penelitian dan Penulisan Karya Ilmiah di Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '4f02d-123.pdf', ''),
(460, 'Bagian TU,RT,HTL', 'HK.00.15', '16 April 2005', 'SK Rektor UNS No.263/J27/PP/2005 tentang Pemberian Penghargaan Bagi Dosen Berprestasi Universitas Sebelas Maret Semester tahun -2005', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e1a26-93.pdf', ''),
(461, 'Bagian TU,RT,HTL', 'HK.00.15', '2 April 2005', 'SK Rektor UNS No.259/J27/KM/2005 tentang Perubahan Tarif Beasiswa BBM dan Beasiswa PPA Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '836dd-90.pdf', ''),
(462, 'Bagian TU,RT,HTL', 'HK.00.15', '1 April 2005', 'SK Rektor UNS No.249/J27/KM/2005 tentang Pemberian Keringanan Pembebasan SPP bagi Mahasiswa Universitas Sebelas Maret Semester Gasal tahun Akademik 2005-2006', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '18325-86.pdf', ''),
(463, 'Bagian TU,RT,HTL', 'HK.00.15', '29 Maret 2005', 'SK Rektor UNS No.244/J27/KP/2005 tentang Perubahan Fungsi dan kedudukan Koordinator Penelitian Fakultas (KPF) dan  Koordinator Pengabdian Kepada Masyarakat Fakultas (KPMF) menjadi Koordinator Pengabdian Kepada Masyarakat (KPPMF) pada LPPM Universitas Sebelas Maret,', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e0d00-81.pdf', ''),
(464, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Maret 2005', 'SK Rektor UNS No.208/J27/KP/2005 tentang Pengangkatan Prof.Dr.M. Furqon Hidayatulloh,M.pD Sebagai Anggota Senat Universitas dan Anggota Senat Fakultas KIP Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '49f2f-70.pdf', ''),
(465, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Pebruari 2005', 'SK Rektor UNS No.172B/J27/KP/2005 tentang  Pemberhentian dan Pengangkatan Kepala dan Sekretaris Pusat dilingkungan LPPM Universitas Sebelas Maret Periode 2001 - 2005', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '533e9-48.pdf', ''),
(466, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Pebruari 2005', 'SK Rektor UNS No.167/J27/KM/2005 tentang Pengangkatan Pengurus Dewan Mahasiswa Universitas Sebelas Maret Periode 2005/2006', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'cb7ab-41.pdf', ''),
(467, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Pebruari 2005', 'SK Rektor UNS No.166/J27/KL/2005 tentang Anggaran Rumah Tangga Senat Universitas Sebelas Maret.(40 tahun 2005)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '23846-40.pdf', ''),
(468, 'Bagian TU,RT,HTL', 'HK.00.15', '18 Pebruari 2005', 'SK Rektor UNS No.140/J27/KU/2005 tentang Honorarium Kepala dan Koordinator Humas dan Kerjasama Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '25983-38.pdf', ''),
(469, 'Bagian TU,RT,HTL', 'HK.00.15', '19 Pebruari 2005', 'SK Rektor UNS No.131/J27/KP/2005 tentang Pengangkatan Prof.Dr.Ir.Sholahuddin, MS. Sebagai Anggota Senat Universitas dan Anggota Senat Fakultas Pertanian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'cd7c9-37.pdf', ''),
(470, 'Bagian TU,RT,HTL', 'HK.00.15', '12 Pebruari 2005', 'SK Rektor UNS No.111/J27/KM/2005 tentang Pemberian Pembebasan SPP bagi Mahasiswa Universitas Sebelas Maret yang berprestasi Tingkat nasional/Internasional tahun Akademik 2004/2005', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e62cf-28.pdf', ''),
(471, 'Bagian TU,RT,HTL', 'HK.00.15', '8 Januari 2005', 'SK Rektor UNS No.7/J27/KP/2005 tentang Struktur Organisasi dan Personalia Satuan Pengawas Intern ( SPI) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'a0fd1-7.pdf', ''),
(472, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Januari 2005', 'SK Rektor UNS No.2E/J27/KP/2005 tentang  Pemberhentian dan Pengangkatan Ketua Komisi Senat Universitas Sebelas Maret Periode 2003-2007', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '7b353-4.pdf', ''),
(473, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Desember 2004', 'SK Rektor No.803/J27/KM/2004 tentang pemberian keringanan/ pembebasan SPP Program S1 Reguler bagi mahasiswa Universitas Sebelas Maret tahun akademik 2004/ 2005', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '8727b-348.pdf', ''),
(474, 'Bagian TU,RT,HTL', 'HK.00.15', '21 Desember 2004', 'SK Rektor No.798/J27/KM/2004 tentang pemberian keringanan/ pembebasan SPP dan BPI program S1 Reguler bagi mahasiswa Universitas Sebelas Maret tahun akademik 2004/ 2005', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'eac07-344.pdf', ''),
(475, 'Bagian TU,RT,HTL', 'HK.00.15', '20 Desember 2004', 'SK Rektor No.796/J27/KP/2004 tentang pengangkatan yang melaksanakan tugas (YMT) Kepala  Biro Administrasi Umum dan Keuangan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '81857-343.pdf', ''),
(476, 'Bagian TU,RT,HTL', 'HK.00.15', '15 Desember 2004', 'SK Rektor No.785/J27/KP/2004 tentang pedoman pelaksanaan pendidikan lanjut bagi pegawai negeri sipil tenaga administrasi/ teknisi/ fungsional non dosen di lingkungan Universitasp', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '94472-335.pdf', ''),
(477, 'Bagian TU,RT,HTL', 'HK.00.15', '15 Desember 2004', 'SK Rektor No.784A/J27/KP/2004 tentang pengangkatan tim perancang desain tata ulang dan pengembangan panggung auditorium/ ruang sidang senat II dan III Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'db43f-334.pdf', ''),
(478, 'Bagian TU,RT,HTL', 'HK.00.15', '20 Desember 2004', 'SK Rektor No.782/J27/KP/2004 tentang pengangkatan Prof.DR.Ravik Karsidi,MS sebagai anggota senat Universitas dan anggota senat fakultas Keguruan dan Ilmu Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '28703-333.pdf', ''),
(479, 'Bagian TU,RT,HTL', 'HK.00.15', '6 Desember 2004', 'SK Rektor No.751/J27/KP/2004 tentang revisi keputusan Rektor Universitas sebelas Maret Nomor 645/J27/KP/2004 tentang pemberhentian dan pengangkatan kepala unit pelaksana teknis pelayanan dan pengmebangan bahasa (UPT P2B) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '401b4-313.pdf', ''),
(480, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Desember 2004', 'SK Rektor No.750/J27/KP/2004 tentang pengangkatan konsultan pada unit pelaksana teknis pelayanan dan pengembangan bahasa (UPT P2B) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'c7253-312.pdf', ''),
(481, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Desember 2004', 'SK Rektor No.749/J27/KP/2004 tentang pemberhentian dan pengangkatan tim pengelola serta pembaharuan struktur organisasi unit pelaksana teknis pelayanan dan pengembangan bahasa (UPT P2B) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '17831-311.pdf', ''),
(482, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Nopember 2004', 'SK Rektor No.745/J27/KP/2004 tentang pemberhentian dan pengangkatan sekretaris UPT Laboratorium pusat MIPA Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e72fa-310.pdf', ''),
(483, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Nopember 2004', 'SK rektor No.685/J27/KP.2004 tentang pemberhentian pejabat struktural eselon IIa (Kepala Biro Administrasi Kemahasiswaan) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '2375f-306.pdf', ''),
(484, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Nopember 2004', 'SK Rektor No.651/J27/KP/2004 tentang pemberhentian Ketua dan Sekretaris Lembaga Penelitian, Ketua dan sekretaris Lembaga Pengabdian Kepada Masyarakat serta pengangkatan Ketua dan Sekretaris pada Lembaga Penelitian dan Pengabdian kepada Masyarakat Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'bfad7-282.pdf', ''),
(485, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Nopember 2004', 'SK Rektor No.650/J27/KP/2004 tentang pengangkatan tim pengelola Kantor Humas dan Kerjasama Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'b8fe1-281.pdf', ''),
(486, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Oktober 2004', 'SK Rektor No.649A/J27/KP/2004 tentang pembentukan Lembaga Penelitian dan Pengabdian Kepada Masyarakat Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '04ca3-280..pdf', ''),
(487, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Oktober 2004', 'SK Rektor No.649/J27/KL/2004 tentang pembentukan Kantor Humas dan Kerjasama Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '731ec-279.pdf', ''),
(488, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Nopember 2004', 'SK Rektor No.645/J27/KP/2004 tentang pemberhentian dan pengangkatan Kepala Unit Pelaksana Teknis Pelayanan dan Pengembangan Bahasa (UPT P2B) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'e4915-277.pdf', ''),
(489, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Oktober 2004', 'SK Rektor No.618/J27/KP/2004 tentang pengangkatan kembali Sdr.Rachmadi,SH sebagai staf ahli Rektor bidang hukum Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '2f956-262.pdf', ''),
(490, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Oktober 2004', 'SK Rektor No.617/J27/KP/2004 tentang pengangkatan kembali Sdr.Amiek Suminriyatmi,SH sebagai staf ahli Rektor bidang hukum Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '5db8f-260.pdf', ''),
(491, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Oktober 2004', 'SK Rektor No.616/J27/KP/2004 tentang pemberhentian staf ahli Rektor Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '01407-261.pdf', ''),
(492, 'Bagian TU,RT,HTL', 'HK.00.15', '6 Oktober 2004', 'SK Rektor No.607?j27/KP/2004 tentang perubahan masa jabatan pengelola program studi magister manajemen Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '87315-256.pdf', ''),
(493, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Oktober 2004', 'SK Rekor No.600/J27/KM/2004 tentang pemberian beasiswa penanggulangan akibat kerusuhan dari Departemen Pendidikan Nasional tahun 2004 bagi mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '7ae6d-252.pdf', ''),
(494, 'Bagian TU,RT,HTL', 'HK.00.15', '2004', 'SK rektor No.578/J27/KP/2004 tentang pedoman penataan dan pemanfaatan lahan serta bangunan kampus Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '408c1-243.pdf', ''),
(495, 'Bagian TU,RT,HTL', 'HK.00.15', '21-Sep-04', 'SK Rektor No.571/J27/KP/2004 tentang reorganisasi Lembaga Pengembangan Pendidikan Univeristas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '91fe1-239.pdf', ''),
(496, 'Bagian TU,RT,HTL', 'HK.00.15', '18-Sep-04', 'SK rektor No.568/J27/PP/2004 pembukaan dan pengangkatan koordinator minat utama teknologi pendidikan bidang kedokteran pada program studi teknologi pendidikan program pascasarjana Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '00ebb-237.pdf', ''),
(497, 'Bagian TU,RT,HTL', 'HK.00.15', '13-Sep-04', 'SK Rektor No.560/J27/KP/2004 tentang perubahan pasal 11 ayat 6 surat keputusan rektor No.231a/J27/KP/2004 tentang masa jabatan pimpinan program studi pascasarjana Universitas sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '31f4d-234.pdf', ''),
(498, 'Bagian TU,RT,HTL', 'HK.00.15', '13-Sep-04', 'SK Rektor No.559/J27/PP/2004 tentang status dan pedoman kuliah kerja pemberdayaan masyarakat (KKPM) mahasiswa Universitas Sebelas Maret Surakarta', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '660bd-233.pdf', ''),
(499, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Agustus 2004', 'SK Rektor No.547/J27/KP/2004 tentang pengangkatan anggota senat Universitas Sebelas Maret jabtan guru besar emeritus', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'a4a91-225.pdf', ''),
(500, 'Bagian TU,RT,HTL', 'HK.00.15', '6-Sep-04', 'SK Rektor No.632/J27/KP/2002 tentang pengangkatan sdr.Prof.Drs.Haryono Darmowisastro sebagai guru besar emiritus pada Fakultas Keguruan dan Ilmu Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'f06f4-224.pdf', ''),
(501, 'Bagian TU,RT,HTL', 'HK.00.15', '21 Agustus 2004', 'SK Rektor No.517/J27/KU/2004 tentang pedoman pengembalian biaya pendidikan dan biaya lain-lain bagi mahasiswa program pascasarjana, S1 Non Reguler, S0/ Diploma di lingkungan UNS yang mengundurkan diri dari statusnya sebagai mahasiswa, ijin selang dan yang mendapatkan keringanan/ pembebasan SPP', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'afb49-209.pdf', ''),
(502, 'Bagian TU,RT,HTL', 'HK.00.15', '18 Agustus 2004', 'SK Rektor No.510/J27/KM/2004 tentang pengaturan pelaksanaan orientasi studi mahasiswa baru tahun 2004 Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '500ba-206.pdf', ''),
(503, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Agustus 2004', 'SK Rektor No.500/J27/KP/2004 tentang pemberhentian dan pengangkatan tim perancang desain penataan sarana lingkungan dan pintu gerbang masuk kampus Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'ec8ca-197.pdf', ''),
(504, 'Bagian TU,RT,HTL', 'HK.00.15', '26Juli 2004', 'SK Rektor No.486/J27/PP/2004 tentang pemberian penghargaan bagi dosen berprestasi Universitas Sebelas Maret tahun 2004', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '0b48b-193.pdf', ''),
(505, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Juli 2004', 'SK rektor No.407B/J27/KU/2004 tentang penunjukan bank persepsi untuk Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'cec42-165.pdf', ''),
(506, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Juni 2004', 'SK Rektor No.388/J27/LK/2004 tentang pembentukan tim konservasi energi Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'b71f8-152.pdf', ''),
(507, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Juni 2004', 'SK Rektor No.348/J27/KM/2004 tentang pemberian keringanan/ pembebasan SPP bagi mahasiswa Universitas Sebelas Maret tahun akademik 2004/ 2006', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '38242-136.pdf', ''),
(508, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Mei 2004', 'SK Rektor No.307/J27/KP/2004 tentang pemberhentian dan pengangkatan sekretaris pusat pendidikan dan layanan masyarakat (PPLM) pada Lembaga Pengabdian Kepada Masyarakat Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'c7fb3-119.pdf', ''),
(509, 'Bagian TU,RT,HTL', 'HK.00.15', '11 Mei 2004', 'SK Rektor No.296/J27/KP/2004 tentang pengangkatan kembali staf ahli Rektor Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'a1a62-110.pdf', ''),
(510, 'Bagian TU,RT,HTL', 'HK.00.15', '6 April 2004', 'SK Rektor No.237/J27/KU/2004 tentang pedoman penyelenggaraan asuransi kesehatan Rektor Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '96796-74.pdf', ''),
(511, 'Bagian TU,RT,HTL', 'HK.00.15', '3 April 2004', 'SK Rektor No.235/J27/KM/2004 tentang perubahan lampiran surat keputusan Rektor tentang pedoman penyelenggaraan dana kasih plus nomor 335/J27/KM/2003 tanggal 10 Juni 2003', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '019c5-73.pdf', ''),
(512, 'Bagian TU,RT,HTL', 'HK.00.15', '1 April 2004', 'SK Rektor No.231a/J27/KP/2004 tentang organisasi dan tata kerja program pascasarjana Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '9403c-69.pdf', ''),
(513, 'Bagian TU,RT,HTL', 'HK.00.15', '1 April 2004', 'SK Rektor No.226A/J27/KP/2004 tentang pengangkatan kembali Sdr.Rachmadi,SH sebagai staf ahli bidang hukum Univesitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '67c43-67.pdf', ''),
(514, 'Bagian TU,RT,HTL', 'HK.00.15', '1 April 2004', 'SK Rektor No.224A/J27/KU/2004 tentang pedoman pengelolaan keuangan dan tarif biaya kegiatan UNS Medical Center', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'd5c5d-66.pdf', ''),
(515, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Maret 2004', 'SK Rektor No.200/J27/KP/2004 tentang pembentukan struktur organisasi dan tim pengelola program kompetisi pola SP4 dan institusional Suport System (ISS) Universitas Sebelas Maret tahun2004', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '44577-55.pdf', ''),
(516, 'Bagian TU,RT,HTL', 'HK.00.15', '18 Maret 2004', 'SK Rektor No.199/J27/PP/2004 tentang pengangkatan deputy II bidang seleksi penerimaan mahasiswa baru (SPMB) Nasional dan SPMB Swadana tahunakademik 2004/ 2005', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '4d9a7-54.pdf', ''),
(517, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Maret 2004', 'SK Rektor No.194/J27/PP/2004 tentang pengangkatan deputy III Bidang Seleksi Penerimaan Mahasiswa Baru (SPMB) program diploma tahun akademik 2004/ 2005', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '56a77-50.pdf', ''),
(518, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Maret 2004', 'SK Rektor No.191/J27/PP/2004 tentang pengangkatan deputy IV bidang seleksi penerimaan mahasiswa baru (SPMB) program non reguler tahun akademik 2004/2005', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'ad1ff-47.pdf', ''),
(519, 'Bagian TU,RT,HTL', 'HK.00.15', '20 Februari 2004', 'SK Rektor No.172/J27/KM/2004 tentang pemberian pembebasan SPP bagi mahasiswa UNS yang berprestasi tingkat nasional tahun akademik 2003/ 2004', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '5295d-35.pdf', ''),
(520, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Februari 2004', 'SK Rektor No.165/J27/KP/2004 tentang pengangkatan Sdr.Prof.Drs.Soedarminto sebagai guru besar emeritus pada Fakultas Keguruan dan Ilmu Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '3c83e-29.pdf', ''),
(521, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Februari 2004', 'SK Rektor No.164/J27/KP/2004 tentang pengangkatan sdr.Prof.Drs.Daryono Sutoyo sebagai guru besar emeritus pada Fakultas Keguruan dan Ilmu Pendidikan', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '0c0a6-28.pdf', ''),
(522, 'Bagian TU,RT,HTL', 'HK.00.15', '18 Februari 2004', 'SK Rektor No.123/J27/KP/2004 tentang struktural organisasi Fakultas Pertanian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '436ac-22.pdf', ''),
(523, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Februari 2004', 'SK Rektor No.92/J27/KU/2004 tentang kelanjutan asuransi pegawai negeri sipil non edukatif di lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '46056-18.pdf', '');
INSERT INTO `tb_arsip_tekstual` (`id_arsip_tekstual`, `unit_kerja`, `kode_klasifikasi`, `tanggal`, `isi_informasi`, `masalah`, `retensi_aktif`, `retensi_inaktif`, `file_url`, `watermark`) VALUES
(524, 'Bagian TU,RT,HTL', 'HK.00.15', 'Februari 2004', 'SK Rektor No.89/J27/KM/2004 tentang pedoman penyelenggaraan kampanye partai politik peserta pemilu 2004 di Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '296d7-16.pdf', ''),
(525, 'Bagian TU,RT,HTL', 'HK.00.15', '10 Februari 2004', 'SK Rektor No.83/J27/KP/2004 tentang pemberhentian dan pengangkatan kepala dan sekretaris pusat penelitian dan pengembangan bio teknologi dan bio diversitas pada lembaga penelitian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '0a529-13.pdf', ''),
(526, 'Bagian TU,RT,HTL', 'HK.00.15', '7 Februari 2004', 'SK Rektor No.81/J27/KP/2004 tentang pemberhentian dan pengangkatan dewan penyatun Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '30eaa-12.pdf', ''),
(527, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Februari 2004', 'SK Rektor No.78/J27/KP/2004 tentang pembentukan/ pengangkatan timperancang desain pintu gerbang masuk kampus Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'a6431-11.pdf', ''),
(528, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Februari 2004', 'SK Rektor No.76/J27/KM/2004 tentang pemberian pembebasan SPP bagi mahasiswa UNS yang berprestasi tingkat nasional tahun akademik 2003/ 2004', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '7a3be-10.pdf', ''),
(529, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Februari 2004', 'SK Rektor No.61/J27/KM/2004 tentang penggunaan dana kasih plus untuk bantuan misi kesenian dan budaya Universitas Sebelas maret ke Eropa tahun 2004', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'd6418-7.pdf', ''),
(530, 'Bagian TU,RT,HTL', 'HK.00.15', '9 Januari 2004', 'SK Rektor No.12/J27/KP/2004 tentang pengangkatan kembali staf ahli bidang hukum Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'd1937-2x.pdf', ''),
(531, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Desember 2003', 'SK Rektor UNS No.844/J27/KP/2003 tentang Pemberhentian dan pengangkatan Koordinator Bidang Matakuliah pada UPT MKU Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '0031f-387.pdf', ''),
(532, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Desember 2003', 'SK Rektor UNS No.819/J27/KP/2003 tentang Pemberhentian dan pengangkatan Kepala Pusat Penelitian dan Pengembangan Hak Atas kekayaan Intelektual pada Lembaga Penelitian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'dcc4a-369.pdf', ''),
(533, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Desember 2003', 'SK Rektor UNS No.770/J27/KP/2003 tentang Pembentukan/Pengangkatan Tim Persiapan Universitas Menjadi PT BHMN', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'd65a3-343.pdf', ''),
(534, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Desember 2003', 'SK Rektor UNS No.768/J27/KU/2003 tentang Asuransi Pegawai Negeri Sipil Non Edukatif dan Pegawai Honorer di lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '44193-342.pdf', ''),
(535, 'Bagian TU,RT,HTL', 'HK.00.15', '15 Nopember 2003', 'SK Rektor UNS No.738/J27/KM/2003 tentang Perubahan/Perbaikan edoman Persyaratan Pengajuan Permohonan Beasiswa bagi Mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'a22f9-327.pdf', ''),
(536, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Nopember 2003', 'SK Rektor UNS No.735/J27/KP/2003 tentang Pemberhentian dan pengangkatan Sekretaris Pusat Penelitian dan Pengembangan Gender (P3G) dan Sekretaris Pusat Penelitian Kependudukan (PPK) pada Lebaga Penelitian Universitas Sebelas Maret Pejabat Struktural Eselon IIIa ( Kepala Bagian )  di lingkungan Universitas sebelas maret,', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '1a4db-325.pdf', ''),
(537, 'Bagian TU,RT,HTL', 'HK.00.15', '14 Oktober 2003', 'SK Rektor UNS No.604/J27/PP/2003 tentang Tugas dan Wewenang Pengelola UPT Laboratorium Pusat Mipa Universitas sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '18a53-269.pdf', ''),
(538, 'Bagian TU,RT,HTL', 'HK.00.15', '30-Sep-03', 'SK Rektor UNS No.543/J27/KP/2003 tentang Pemberhentian dan pengangkatan Ketua Dan Sekretaris UPT Mata Kuliah Umum (MKU) Universitas sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '146ce-248.pdf', ''),
(539, 'Bagian TU,RT,HTL', 'HK.00.15', '29-Sep-03', 'SK Rektor UNS No.540/J27/PP/2003 tentang Pedomas Perbantuan Pegawai Negeri Sipil Universitas Sebelas Maret kepada Perguruan Tinggi Swasta (PTS)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '86b9f-247.pdf', ''),
(540, 'Bagian TU,RT,HTL', 'HK.00.15', '13-Sep-03', 'SK Rektor UNS No.509/J27 KU/2003 tentang Pedoman Pengelolaan dana Penerimaan Negara Bukan Pajak (PNBP) dan pembiayaan program perluasan daya tampung (PPDT) Fakultas Kedokteran Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '805a7-233.pdf', ''),
(541, 'Bagian TU,RT,HTL', 'HK.00.15', '8-Sep-03', 'SK Rektor UNS No.501/J27/KP/2003 tentang Penyempurnaan Struktur Organisasi dan Pengelola UPT Laboratorium Pusat Mipa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '29f87-231.pdf', ''),
(542, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Agustus 2003', 'SK Rektor UNS No.465/J27/KP/2003 tentang Tata Cara Menyampaikan Pertimbangan dan atau Persetujuan usul kenaikan Jabatan atau Pangkat Dosen di Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'd87bb-205.pdf', ''),
(543, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Agustus 2003', 'SK Rektor UNS No.464/J27/KM/2003 tentang Pelaksanaan kegiatan Mahasiswa yang melibatkan Mahasiswa baru tahun 2003 Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '3d56d-204.pdf', ''),
(544, 'Bagian TU,RT,HTL', 'HK.00.15', '9 Agustus 2003', 'SK Rektor UNS No.463/J27/KP/2003 tentang Pengangkatan Sebagai Anggota Komisi Senat Universitas Sebelas Maret Periode Rektor 2003-2007', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '0dcd0-203.pdf', ''),
(545, 'Bagian TU,RT,HTL', 'HK.00.15', '26 Agustus 2003', 'SK Rektor UNS No.462/J27/KP/2003 tentang Tata Kerja Dewan Kehormatan  Kode etk Dosen Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '12033-202.pdf', ''),
(546, 'Bagian TU,RT,HTL', 'HK.00.15', '26 Agustus 2003', 'SK Rektor UNS No.461/J27/KP/2003 tentang Satuan Pengawas Intern Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'a9766-201.pdf', ''),
(547, 'Bagian TU,RT,HTL', 'HK.00.15', '21 Agustus 2003', 'SK Rektor UNS No.460/J27/KP/2003 tentang Perbaikan Lampiran II SK Rektor No135/J27/KP/2003 tgl.21 Maret 2003 tentang Pemberhentian Anggota Senat Universitas Sebelas Maret Periode Rektor 1999-2003 dan Pengangkatan sebagai Anggota Senat UNS Periode Rektor 2003-2007', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '3aabd-200.pdf', ''),
(548, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Agustus 2003', 'SK Rektor UNS No.436/J27/KM/2003 tentang Pengaturan Pelaksanaan Orientasi Studi Mahasiswa Baru tahun 2003 Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '9c85a-193.pdf', ''),
(549, 'Bagian TU,RT,HTL', 'HK.00.15', '12 Agustus 2003', 'SK Rektor UNS No.435/J27/KU/2003 tentang Pedoman Pengembalian Beaya Pendidikan bagi Mahasiswa Program Pascasarjana, S1 Reguler, S1 Ekstensi, S0/Diploma di lingkungan UNS yang mengundurkan diri dari Statusnya sebagai mahasiswa dan yang mendapatkan keringanan Pembebasan SPP', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '66041-192.pdf', ''),
(550, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Agustus 2003', 'SK Rektor UNS No.412/J27/KP/2003 tentang Pemberhentian dan pengangkatan Kepala Unit Pelaksana Teknis (UPT) Komputer Universitas sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '2a1f4-185.pdf', ''),
(551, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Agustus 2003', 'SK Rektor UNS No.411/J27/KP/2003 tentang Pengangkatan Kepala dan Sekretaris Pusat Pengembangan Kewirausahaan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'c3c7a-184.pdf', ''),
(552, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Agustus 2003', 'SK Rektor UNS No.410/J27/KP/2003 tentang Pengangkatan Kepala dan Sekretaris Pusat Penelitian dan Pengembangan Hak atas Kekayaan Intelektual dan pusat penelitian dan Pengembangan Bio Teknologi dan Bio Diversitas pada lembaga Penelitian   Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '2ccc9-183.pdf', ''),
(553, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Juli 2003', 'SK Rektor UNS No. 391/J27/KP/2003 tentang Pedoman Pelaksanaan Ujian Kenaikan Pangkat Penyesuaian Ijazah PNS tenaga Administrasi /tenaga fungsional Non Dosen di lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'a59d8-167.pdf', ''),
(554, 'Bagian TU,RT,HTL', 'HK.00.15', '14 Juli 2003', 'SK Rektor UNS No.379/J27/KM/2003 tentang Pemberian Beasiswa Penanggulangan akibat kerusakan dari Depdiknas RI tahun 2003 bagi Mahasiswa  Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'da607-162.pdf', ''),
(555, 'Bagian TU,RT,HTL', 'HK.00.15', '4 Juli 2003', 'SK Rektor UNS No.370/J27.KU/2003 tentang Penunjukan Bank Persepsi Untuk Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'c73b8-157.pdf', ''),
(556, 'Bagian TU,RT,HTL', 'HK.00.15', '25 Juni 2003', 'SK Rektor UNS No.357/J27/KP/2003 tentang Pengangkatan.DR.Drajat Tri Kartono,M.Si YMT ketua lembaga pengabdian kepada Masyarakat Sebagai anggota senat Universitas dan anggota senat Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '48b40-152.pdf', ''),
(557, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Juni 2003', 'SK Rektor UNS No.349/J27/KP/2003 tentang Pemberhentian dan pengangkatan Ketua Dan Sekretaris Unit konsultasi otonomi daerah (UKOD) pada LPPM  Universitas sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '7a9fd-147.pdf', ''),
(558, 'Bagian TU,RT,HTL', 'HK.00.15', '12 Juni 2003', 'SK Rektor UNS No.342/J27/KM/2003 tentang Pemberian keringanan/pembebasan SPP bagi Mahasiswa Universitas Sebelas Maret Tahun akademik 2003/2004', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '5469b-143.pdf', ''),
(559, 'Bagian TU,RT,HTL', 'HK.00.15', '9 Juni 2003', 'SK Rektor UNS No.336/J27/KP/2003 tentang Pendirian Pusat penelitian dan pengembangan biro teknologi dan BIO Diversitas lembaga penelitian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '5922f-140.pdf', ''),
(560, 'Bagian TU,RT,HTL', 'HK.00.15', '10 Juni 2003', 'SK Rektor UNS No.335/J27/KM/2003 tentang Pedoman Penggunaan Dana Kasih Plus', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'ace11-139.pdf', ''),
(561, 'Bagian TU,RT,HTL', 'HK.00.15', '26 Mei 2003', 'SK Rektor UNS No.311/J27/KP/2003 tentang Pembentukan Tim Konservasi Energi di lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '3f571-129.pdf', ''),
(562, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Mei 2003', 'SK Rektor UNS No.28/J27/KP/2003 tentang Pengangkatan yang melaksanakan tugas (YMT) Sekretaris Lembaga Pengabdian Kepada Masyarakat Universitas sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '98335-117.pdf', ''),
(563, 'Bagian TU,RT,HTL', 'HK.00.15', '12 Mei 2003', 'SK Rektor UNS No.270/J27/KP/2003 tentang Pengangkatan Staf Ahli Rektor dan Pemberhentian Staf Ahli Rektor/Pembantu Rektor,Tim Perencana dan Pengembangan Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '9021b-108.pdf', ''),
(564, 'Bagian TU,RT,HTL', 'HK.00.15', '9 Mei 2003', 'SK Rektor UNS No.263/J27/KP/2003 tentang Dana Kontribusi PPDT Fakultas Kedokteran Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'bf839-104.pdf', ''),
(565, 'Bagian TU,RT,HTL', 'HK.00.15', '8 Mei 2003', 'SK Rektor UNS No.261/J27/KP/2003 tentang Pemberhentian dan pengangkatan asekretaris Pusat Penelitian dan pengembangan Gender (P3G) di lembaga Penelitian Universitas sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'cbc99-102.pdf', ''),
(566, 'Bagian TU,RT,HTL', 'HK.00.15', '30 April 2003', 'SK Rektor UNS No.232/J27/KP/2003 tentang Pemberhentian Ketua dan Pengangkatan (YMT) Ketua Lembaga Pengabdian Kepada Masyarakat Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '1f321-90.pdf', ''),
(567, 'Bagian TU,RT,HTL', 'HK.00.15', '19 April 2003', 'SK Rektor UNS No.206/J27/PP/2003 tentang Reorganisasi dan Pengintegrasian Pusat Penelitian dan Pengembangan Sistim belajar mandiri (Puslitbangjari) Lembaga Penelitian Universitas Sebelas Maret dan pemberhentian pengelolanya', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '5bc50-82.pdf', ''),
(568, 'Bagian TU,RT,HTL', 'HK.00.15', '12 April 2003', 'SK Rektor UNS No.177/J27/LK/2003 tentang Ketentuan Atas Bangunan Kantor POS di lahan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '851d5-74.pdf', ''),
(569, 'Bagian TU,RT,HTL', 'HK.00.15', '12 April 2003', 'SK Rektor UNS No.174/J27/LK/2003 tentang Ketentuan Atas Bangunan Koperasi Pegawai Negeri Republik Indonesia di lahan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', '59b25-71.pdf', ''),
(570, 'Bagian TU,RT,HTL', 'HK.00.15', '1 April 2003', 'SK Rektor UNS No.158A/J27/PP/2003 tentang Pengangkatan DR.Ravik Karsidi,MS sebagai penasehat kepanitiaan penerimaan Mahasiswa Baru Universitas Sebelas Maret melalui jalur penelusuran minat dan kemampuan (PMDK) tahun akademik 2003/2004', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'd8af8-55.pdf', ''),
(571, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Maret 2003', 'SK Rektor UNS No.151/J27/KP/2003 tentang Pemberhentian dan pengangkatan Pembantu Rektor I Universitas sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 tahun', 'a66f1-51.pdf', ''),
(572, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Maret 2003', 'SK Rektor UNS No.138/J27/HK/2003 tentang Pencabutan SK Rektor No.19/J27/HK/2002 tanggal 19 Januari 2002 tentang pembukaan program pendidikan teknologi informasi Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '03c8b-42.pdf', ''),
(573, 'Bagian TU,RT,HTL', 'HK.00.15', '21 Maret 2003', 'SK Rektor UNS No.135/J27/KP/2003 tentang Pemberhentian anggota senat Universitas Sebelas Maret periode Rektor 1999-2003 dan Pengangkatan sebagai anggota senat Universitas Sebelas Maret periode Rektor 2003-2007', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'dc1cd-41.pdf', ''),
(574, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Maret 2003', 'SK Rektor UNS No.124/J27/KP/2003 tentang Pengangkatan yang melaksanakan tugas (YMT) Pembantu Rektor III Universitas Sebelas maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c9d2a-37.pdf', ''),
(575, 'Bagian TU,RT,HTL', 'HK.00.15', '14 Pebruari 2003', 'SK Rektor UNS No.90/J27/KP/2003 tentang Pemberhetian dan pengangkatan ketua senat Fakultas matematika dan ilmu pengetauan alam Universitas Sebelas Maret periode 1999 - 2003', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b1cf4-22.pdf', ''),
(576, 'Bagian TU,RT,HTL', 'HK.00.15', '11 Pebruari 2003', 'SK Rektor UNS No.88/J27/PP/2003 tentang Pembakuan ijazah,Akta dan transkrip akademik Universitas sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'dea07-21.pdf', ''),
(577, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Januari 2003', 'SK Rektor UNS No.68/J27/KP/2003 tentang Pengangkatan Kembali Staf ahli hukum Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '8601b-18.pdf', ''),
(578, 'Bagian TU,RT,HTL', 'HK.00.15', '20 Januari 2003', 'SK Rektor UNS No.35/J27/LK/2003 tentang Kegiatan Sustainability dan maintenance pasca development for undergraduate education ( DUK) Project', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '37db6-12.pdf', ''),
(579, 'Bagian TU,RT,HTL', 'HK.00.15', '6 Januari 2003', 'SK Rektor UNS No.3/J27/KM/2003 tentang Pemberhentian pembebasan SPP bagi mahasiswa Universitas Sebelas maret yang berprestasi tingkat nasional tahun akademik 2002/2003', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '0450e-9.pdf', ''),
(580, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Januari 2003', 'SK Rektor UNS No.I.f/J27/KP/2003 tentang Pengalihan dan pengintegrasian pusat Pengembangan hak atas kelayakan intelektual (P3HAKI) dari lembaga  pengembangan kewirausahaan (LPKwu)  ke lembaga penelitian Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'e6f11-7.pdf', ''),
(581, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Januari 2003', 'SK Rektor UNS No.I.e/J27/KP/2003 tentang Pengalihan dan pengintegrasian pusat Pengembangan kewirausahaan mahasiswa (LPKM) ke UPT Mata kuliah umum Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'bbbd6-6.pdf', ''),
(582, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Januari 2003', 'SK Rektor UNS No.I.d/J27/KP/2003 tentang Pengalihan dan pengintegrasian pusat pengembangan bisnis (pusbangnis) di lingkungan lembaga Pengembangan kewirausahaan(LPKwu) ke lembaga pengabdian kepada masyarakat Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c9be4-5.pdf', ''),
(583, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Januari 2003', 'SK Rektor UNS No.I.c/J27/KP/2003 tentang Susunan organisasi dan personalia pejabat dilingkungan LPIU DUE-like Project Universitas Sebelas Maret tahun anggaran 2003', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '6eafc-3.pdf', ''),
(584, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Januari 2003', 'SK Rektor UNS No.I.b/J27/PP/2003 tentang Reorganisasi dan pengintegrasian pusat-pusat pengembangan di lingkungan lembaga Pengembangan kewirausahaan(LPKwu) Universitas Sebelas Maret dan pemverhentian tim pengelolanya', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ad970-2.pdf', ''),
(585, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Januari 2003', 'SK Rektor UNS No.I.A/J27/PP/2003 tentang Pembubaran unit pelaksana teknis program pengalaman lapangan (UPT.PPL) Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '6860b-1.pdf', ''),
(586, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Nopember 2002', 'SK Rektor No.767/J27/KP/2002 tentang pemberhentian dan pengangkatan dekan di lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'dbfb3-292.pdf', ''),
(587, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Nopember 2002', 'SK Rektor No.759/J27/KP/2002 tentang pembentukan lembaga pengembangan pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b5a2f-284.pdf', ''),
(588, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Nopember 2002', 'SK Rektor No.753/J27/KL/2002 tentang anggaran rumah tangga senat Fakultas Keguruan dan Ilmu Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ed290-280.pdf', ''),
(589, 'Bagian TU,RT,HTL', 'HK.00.15', '29 Oktober 2002', 'SK Rektor No.723/J27/KP/2002 tentang penyempurnaan organisasi personalia pejabat di lingkungan LPIU DUE-Like Project Universitas Sebelas Maret ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '8d79d-267.pdf', ''),
(590, 'Bagian TU,RT,HTL', 'HK.00.15', '21 Oktober 2002', 'SK rektor No.704/J27/KP/2002 tentang penunjukan UPT Laboratorium MIPA Pusat UNS sebagai Laboratorium penguji beserta pengangkatan personil pengelolanya', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '1804a-254.pdf', ''),
(591, 'Bagian TU,RT,HTL', 'HK.00.15', '15 Oktober 2002', 'SK Rektor No.682/J27/PP/2002 tentang pedoman penyelenggaraan program Doktor (S3) Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b8e0e-250.pdf', ''),
(592, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Oktober 2002', 'SK Rektor No.670/J27/KP/2002 tentang pemberhentian dan pengangkatan Ketua Unit pengelolaan daerah aliran sungai dan ekosistem (UPDASE) pada Lembaga Pengabdian Kepada Masyarakat Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c3158-244.pdf', ''),
(593, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Oktober 2002', 'SK Rektor No.665/J27/KU/2002 tentang perbaikan lampiran keputusan Rektor No.88A/J27/KU/2002 tentang pedoman pengelolaan keuangan UNS Medical Center', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ecb5a-243.pdf', ''),
(594, 'Bagian TU,RT,HTL', 'HK.00.15', '16-Sep-02', 'SK Rektor No.641/J27/KP/2002 tentang pengangkatan Prof.Drs.Haryono Darmowisastro/ guru besar Emeritus sebagai anggota senat universitas dan anggota senat Fakultas Keguruan dan Ilmu Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '4c99f-228.pdf', ''),
(595, 'Bagian TU,RT,HTL', 'HK.00.15', '6-Sep-02', 'SK Rektor No.632/J27/KP/2002 tentang pengangkatan sdr.Prof.Drs.Haryono Darmowisastro sebagai guru besar emiritus pada Fakultas Keguruan dan Ilmu Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '3a7df-224.pdf', ''),
(596, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Agustus 2002', 'SK Rektor No.630/J27/KP/2002 tentang penyempurnaan organisasi dan penggantian personalia pejabat di lingkungan LPIU DUE-Like Project Universitas Sebelas Maret berdasarkan surat keputusan Rektor No.54/J27/KP/2002 tanggal 11 Februari 2002', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '8bd9b-222.pdf', ''),
(597, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Agustus 2002', 'SK Rektor No.386/J27/KM/2002 tentang pemberian beasiswa penanggulangan akibat kerusuhan dari Departemen Pendidikan Nasional RI tahun 2002 bagi mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '38d52-214.pdf', ''),
(598, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Agustus 2002', 'SK Rektor No.385/J27/KM/2002 tentang perubahan/ perbaikan pedoman penyelenggaraan dana kasih UNS dan asuransi kecelakaan mahasiswa dari Asuransi jasaraharja putera', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'aa898-213.pdf', ''),
(599, 'Bagian TU,RT,HTL', 'HK.00.15', '7 Agustus 2002', 'SK Rektor No.364/J27/KM/2002 tentang rambu-rambu pelaksanaan orientasi studi mahasiswa baru tahun 2002 Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '7d103-200.pdf', ''),
(600, 'Bagian TU,RT,HTL', 'HK.00.15', '5 Agustus 2002', 'SK Rektor No.362/J27/KP/2002 tentang perubahan dan pembukaan laboratorium di lingkungan program studi agronomi pada jurusan budidaya pertanian Fakultas Pertanian Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '6e136-198.pdf', ''),
(601, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Agustus 2002', 'SK Rektor No.359/J27/KP/2002 tentang pemindahan pengelolaan laboratorium statistik pada Fakultas Pertanian Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '864ea-195.pdf', ''),
(602, 'Bagian TU,RT,HTL', 'HK.00.15', '6 Juli 2002', 'SK Rektor No.329/J27/KP/2002 tentang tata cara pelaksanaan pemilihan calon Rektor dan pembantu Rektor Universitas Sebelas Maret calon Dekan Pembantu Dekan, Ketua Jurusan/ bagian, Sekretaris Jurusan/ Bagian, KetuaProgram Studi dan Sekretaris Program Studi di lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '62f05-169.pdf', ''),
(603, 'Bagian TU,RT,HTL', 'HK.00.15', '10 Juli 2002', 'SK Rektor No.328A/J27/KP/2002 tentang pengangkatan yang melakasanakan tugas (YMT) Pembantu Rektor III Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ed364-168.pdf', ''),
(604, 'Bagian TU,RT,HTL', 'HK.00.15', '3 Juli 2002', 'SK Rektor No.323/J27/KM/2002 tentang pemberian pembebasan SPP bagi mahasiswa Universitas Sebelas Maret yang berprestasi tingkat nasional tahun akademik 2002/ 2003  ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'e7ea1-164.pdf', ''),
(605, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Juli 2002', 'SK Rektor No.315/J27/KP/2002 tentang pemberhentian dan pengangkatan Kepala Unit Pelaksana Teknis (UPT) Komputer Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'd6fe7-156.pdf', ''),
(606, 'Bagian TU,RT,HTL', 'HK.00.15', '24 Juni 2002', 'SK Rektor No.310/J27/KM/2002 tentang pemberian keringanan/ pembebasan SPP bagi mahasiswa Universitas Sebelas Maret Tahun akademik 2002/ 2003  ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c3fdc-155.pdf', ''),
(607, 'Bagian TU,RT,HTL', 'HK.00.15', '20 Juni 2002', 'SK rektor No.303/J27/KP/2002 tentang pemberhentian dan pengangkatan sekretaris pusat penelitian kependudukan (PPK) pada Lembaga Penelitian Universitas Sebelas  Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '88e28-154.pdf', ''),
(608, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Juni 2002', 'SK Rektor No.261/J27/KP/2002 tentang pemberhentian dan pengangkatan pejabat struktural eselon Iia (Kepala Biro) di lingkungnan Universitas Sebelas Maret tahun 2002', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'e64fa-129.pdf', ''),
(609, 'Bagian TU,RT,HTL', 'HK.00.15', '2002', 'SK Rektor No.224/J27/PM/2002 tentang pedoman penyelenggaraan pengabdian pada masyarakat di lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '6c175-112-c.pdf', ''),
(610, 'Bagian TU,RT,HTL', 'HK.00.15', '20 April 2002', 'SK Rektor No.200/J27/KP/2002 tentang pedoman rencana tata kampus dan bangunan di Kampus Kentingan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '5b36d-100.pdf', ''),
(611, 'Bagian TU,RT,HTL', 'HK.00.15', '17 April 2002', 'SK Rektor No.178/J27/PG/2002 tentang pedoman penyelenggaraan penelitian di lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '6d29e-98.pdf', ''),
(612, 'Bagian TU,RT,HTL', 'HK.00.15', '17 April 2002', 'SK Rektor No.176/J27/KP/2002 tentang pemberhentian dan pengangkatan Kepala UPT Penerbitan dan Pencetakan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '47551-97.pdf', ''),
(613, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Maret 2002', 'SK Rektor No.115/J27/KP/2002 tentang pengangkatan kembali Kepala Biro Adminsitrasi Umum dan Keuangan Universitas Sebelas Maret periode 2002-2006', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '8c2bf-60.pdf', ''),
(614, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Maret 2002', 'SK Rektor No.109/J27/KP/2002 tentang pengangkatan kepala pusat pengembangan dan pelayanan hak atas kekayaan intelektual (P3HAKI) pada lembaga pengembangan kewirausahaan (LPKwu) Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '8a980-57.pdf', ''),
(615, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Maret 2002', 'SK Rektor No.108/J27/KP/2002 tentang pemberhentian dan pengangkatan sekretaris unit konsultasi otonomi daerah (UKOD) pada lembaga pengabdian kepada masyarakat Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '17004-56.pdf', ''),
(616, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Maret 2002', 'SK Rektor No.98/J27/KU/2002 tentang pelaksanaan program sistem informasi keuangan (SIKBU) Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'e9e63-52.pdf', ''),
(617, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Maret 2002', 'SK Rektor No.76/J27/KP/2002 tentang pengangkatan Dr.Ir.Sholahuddin,MS sebagai anggota senat universitas wakil Fakultas Pertanian Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '68c1a-45.pdf', ''),
(618, 'Bagian TU,RT,HTL', 'HK.00.15', '6 Maret 2002', 'SK Rektor No.74/J27/KM/2002 tentang penggunaan dana kasih untuk pembangunan sekretariat unit kegiatan mahasiswa', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ed448-44.pdf', ''),
(619, 'Bagian TU,RT,HTL', 'HK.00.15', '4 Maret 2002', 'SK Rektor No.70/J27/KP/2002 tentang pemberhentian dan pengangkatan sekretaris pusat teledukasi pada lembaga pengabdian kepada masyarakat Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '615af-40.pdf', ''),
(620, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Maret 2002', 'SK rektor No.68A/J27/KP/2002 tentang pendirian UNS Medical Center', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'bcb2a-38.pdf', ''),
(621, 'Bagian TU,RT,HTL', 'HK.00.15', '13 Februari 2002', 'SK Rektor No.61/J27/PP/2002 tentang organisasi dan tata kerja pengelolaan program pascasarjana Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '508c7-32.pdf', ''),
(622, 'Bagian TU,RT,HTL', 'HK.00.15', '11 Februari 2002', 'SK Rektor No.54/J27/KP/2002 tentang penyempurnaan organisasi dan penggantian personalia pejabat di lingkungan LPIU DUE-Like Project Universitas Sebelas Maret berdasarkan surat keputusan Rektor No.79/J27/PP/2001 tanggal 7 Maret 2001', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'bb7c0-30.pdf', ''),
(623, 'Bagian TU,RT,HTL', 'HK.00.15', '29 Januari 2002', 'SK Rektor No.30/J27/KP/2002 tentang peraturan pegawai honorer Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '9e9ff-21.pdf', ''),
(624, 'Bagian TU,RT,HTL', 'HK.00.15', '19 Januari 2002', 'SK Rektor No.19/J27/HK/2002 tentang pembukaan program pendidikan teknologi informasi Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '4e07e-15.pdf', ''),
(625, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Januari 2002', 'SK Rektor No.1/J27/PP/2002 tentang ijin penyelenggaraan program studi penelitian dan pemberdayaan masyarakat (S1) pada Fakultas Ilmu Sosial dan Ilmu Politik UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '0527e-1.pdf', ''),
(626, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Desember 2001', 'SK Rektor UNS No.630/J27/KP/2001 tentang Pedoman Pelaksanaan Perpindahan (Rotasi) Pegawai Negeri Sipil Tenaga Administrasi/Teknisi/Fungsional Non Dosen dan Non Pejabat Struktural di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '8827c-291.pdf', ''),
(627, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Desember 2001', 'SK Rektor UNS No.627/J27/KP/2001 tentang Pemberhentian dan Pengangkatan Kepala UPT Perpustakaan  Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a7217-290.pdf', ''),
(628, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Desember 2001', 'SK Rektor UNS No.552/J27/PP/2001 tentang Peresmian Pemakaian Sebutan Profesi Dokter Lulusan Fakultas Kedokteran Universitas Sebelas maret Tanggal 22 Desember 2001 Tahun Akademik 2001/2002', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '41e92-289.pdf', ''),
(629, 'Bagian TU,RT,HTL', 'HK.00.15', '21 Nopember 2001', 'SK Rektor UNS No.498/J27/KM/2001 tentang Penggunaan Dana Kasih Pembangunan Sekretariat Unit Kegiatan Mahasiswa', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'f14af-270.pdf', ''),
(630, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Oktober 2001', 'SK Rektor UNS No.404/J27/PP/2001 tentang Pendirian Pusat Pendidikan Dan Pelatihan (PUSDIKLAT) Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c1257-219.pdf', ''),
(631, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Oktober 2001', 'SK Rektor UNS No.403A/J27/KP/2001 tentang Pengangkatan Ketua Lembagaa Penelitian (Pejabat Struktural Eselon Lb) Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '0e76c-218.pdf', ''),
(632, 'Bagian TU,RT,HTL', 'HK.00.15', '28-Sep-01', 'SK Rektor UNS No.400/J27/PP/2001 tentang Organisasi dan TataKerja Pengelolaan Program Pascasarjana Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '4e282-214.pdf', ''),
(633, 'Bagian TU,RT,HTL', 'HK.00.15', '27-Sep-01', 'SK Rektor UNS No.389/J27/PP/2001 tentang Kewajiban Menempuh Test Of Englih As A Foreign Language (TOEFEL) Bagi Mahasiswa Program Sarjana Reguler Universitas Sebelas maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '494cd-207.pdf', ''),
(634, 'Bagian TU,RT,HTL', 'HK.00.15', '22-Sep-01', 'SK Rektor UNS No.388/J27/PP/2001 tentang Pedoman Pelaksanaan Pendidikan Lanjut Bagi Tenaga Administrasi di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c71f5-206.pdf', ''),
(635, 'Bagian TU,RT,HTL', 'HK.00.15', '26-Sep-01', 'SK Rektor UNS No.386/J27/PP/2001 tentang Perubahan dan Pembukaan Laboratorium di Lingkungan Program Studi Ilmu Tanah Pada Jurusan Budidaya Pertanian Fakultas Peretanian Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a0541-204.pdf', ''),
(636, 'Bagian TU,RT,HTL', 'HK.00.15', '25-Sep-01', 'SK Rektor UNS No.378/J27/PP/2001 tentang Organisasi dan TataKerja Pengelolaan Program Pascasarjana Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '412ed-200.pdf', ''),
(637, 'Bagian TU,RT,HTL', 'HK.00.15', '27-Sep-01', 'SK Rektor UNS No.355/J27/KP/2001 tentang Pemberhentian dang Pengangkatan Ariadhie Nur Sasongko, SH', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '3028f-179.pdf', ''),
(638, 'Bagian TU,RT,HTL', 'HK.00.15', '15-Sep-01', 'SK Rektor UNS No.343/J27/KP/2001 tentang Pengangkatan Kembali Staf Ahli Bidang Hukum Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '1a761-175.pdf', ''),
(639, 'Bagian TU,RT,HTL', 'HK.00.15', '8 Agustus 2001', 'SK Rektor UNS No.296/J27/KM/2001 tentang Rambu-Rambu Pelaksanaan Orientasi Studi Mahasiswa Baru tahun 2001 Universitas Sebelas maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '24e04-151.pdf', ''),
(640, 'Bagian TU,RT,HTL', 'HK.00.15', '4 Agustus 2001', 'SK Rektor UNS No.292/J27/PP/2001 tentang Pembukaan dan Penyelenggaraan Program S 1 Ekstensi Program Studi Sosiologi Pada Fakultas Ilmu Sosial dan Ilmu politik Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'aaccb-150.pdf', ''),
(641, 'Bagian TU,RT,HTL', 'HK.00.15', '25 Juli 2001', 'SK Rektor UNS No.284/J27/KM/2001 tentang Pembubaran UPT Pembinaan Olah Raga Dan Seni Mahasiswa Serta Pengangkatan Personil/Panitia Ad Hoc Pengelola Pembinaan Olah Raga dan Seni Mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '1063a-148.pdf', ''),
(642, 'Bagian TU,RT,HTL', 'HK.00.15', '19 Juli 2001', 'SK Rektor UNS No.278/J27/KM/2001 tentang Pemberian Keringanan/Pembebasan SPP Bagi Mahasiswa  Universitas Sebelas Maret Tahun Akademik 2001/2002', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ed6ab-143.pdf', ''),
(643, 'Bagian TU,RT,HTL', 'HK.00.15', '17 Juli 2001', 'SK Rektor UNS No.277/J27/KM/2001 tentang Unit Kegiatan Mahasiswa Korp Mahasiswa Siaga Universitas Sebelas maret Periode 2001-2002', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'bc50d-142.pdf', ''),
(644, 'Bagian TU,RT,HTL', 'HK.00.15', '20 Juni 2001', 'SK Rektor UNS No.255/J27/KM/2001 tentang Perubahan/Perbaikan Pedoman Penyelenggaraan Dana Kasih UNS dan Asuransi Kecelakaan Mahasiswa dari Asuransi Jasaraharja Putera', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '8dbe9-132.pdf', ''),
(645, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Juni 2001', 'SK Rektor UNS No.251/J27/KM/2001 tentang Perubahan/Perbaikan Pedoman Persyaratan Pengajuan Permohonan Beasiswa Universitas Sebelas maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b77e4-128.pdf', ''),
(646, 'Bagian TU,RT,HTL', 'HK.00.15', '11 Juni 2001', 'SK Rektor UNS No.239/J27/KM/2001 tentang Pemberian Beasiswa Mahasiswa Timor Timur Dari Departemen Pendidikan Nasional Republik Indonesia Tahun 2001 Yang Berada di Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a877e-124.pdf', ''),
(647, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Mei 2001', 'SK Rektor UNS No.221/J27/KM/2001 tentang Pemberian Beasiswa PenanggulanganAkibat Kerusuhan Dari Departemen Pendidikan Nasional Republik Indonesia Tahun 2001 Mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '46dc5-112.pdf', ''),
(648, 'Bagian TU,RT,HTL', 'HK.00.15', '26 Mei 2001', 'SK Rektor UNS No.220/J27/KP/2001 tentang Penyempurnaan SK Rektor No85/J27/KP/1999 Tgl 1 April 1999 tentang Pemberhentian dan Pengangkatan Pengelola Unit Pelaksana Teknis (UPT) Pelayanan dan Pengembangan Bahasa Universitas Sebelas Maret Beserta Penetapan Struktural Organisasinya', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'f3488-111.pdf', ''),
(649, 'Bagian TU,RT,HTL', 'HK.00.15', '2 Mei 2001', 'SK Rektor UNS No.190/J27/KP/2001 tentang Pembentukan/Pengangkatan Tim Pelaksana Peninjauan Kembali Rencana Tata Kampus(Site Engineering)dan Tataguna Bangunan Dalam Rangka Pengemnbangan Bangunan Fisik Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '1f5f0-98.pdf', ''),
(650, 'Bagian TU,RT,HTL', 'HK.00.15', '12 April 2001', 'SK Rektor UNS No.132/J27/PP/2001 tentang Pembukaan Minat Utama Pada Program Studi S2 Linguistik Pada Program Pascasarjana Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '9a383-76.pdf', ''),
(651, 'Bagian TU,RT,HTL', 'HK.00.15', '9 April 2001', 'SK Rektor UNS No.131/J27/KM/2001 tentang Penggunaan Dana  Kasih Untuk Kegiatan Mahasiswa', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '02b1e-75.pdf', ''),
(652, 'Bagian TU,RT,HTL', 'HK.00.15', '15 Maret 2001', 'SK Rektor UNS No.88A/J27/KM/2001 tentang Pengangkatan Sekretaris Pusat Pelaksana Teknis (PPT) Komputer  Universitas Sebelas maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'db8df-42.pdf', ''),
(653, 'Bagian TU,RT,HTL', 'HK.00.15', '7 Maret 2001', 'SK Rektor UNS No.79/J27/KP/2001 tentang Penyempurnaan Organisasi dan Penggantian Personalia Pejabat di Lingkungan LPIU Due Like Project Universitas Sebelas Maret Berdasarkan Surat Keputusan Rektor No.127/J27/PP/2000 tanggal 1 April 2000', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '7a2a6-36.pdf', ''),
(654, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Pebruari 2001', 'SK Rektor UNS No.77A/J27/KP/2001  tentang  Pengangkatan Koordinator dan Sekretaris Tim Ahli Pengabdian Masyarakat, Ketua dan Sekretaris Unit Kegiatan Pada Lembaga Pengabdian Kepada Masyarakat Universitas Sebelas Maret Periode 2001 - 2005', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '38e0d-35.pdf', ''),
(655, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Pebruari 2001', 'SK Rektor UNS No.71/J27/KP/2001  tentang  Pemberhentian dan Pengangkatan Kepala dan Sekretaris Pusat Penelitian dan Pusat Studi Pada Lembaga PenelitianUnit Universitas Sebelas Maret Periode Pebruari 2001 - 2005', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'e438a-30.pdf', ''),
(656, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Pebruari 2001', 'SK Rektor UNS No.70/J27/KP/2001  tentang  Pemberhentian Ketua dan Sekretaris Unit Pelaksana Kegiatan (UPK) dan Pengangkatan Kepala dan Sekretaris Pusat Kegiatan pada Lembaga Pengabdian Kepada Masyarakat Universitas Sebelas Maret Periode Pebruari 2001 - 2005', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '95b9a-29.pdf', ''),
(657, 'Bagian TU,RT,HTL', 'HK.00.15', '28 Pebruari 2001', 'SK Rektor UNS No.68/J27/KP/2001  tentang  Pengangkatan Pembantu Dekan III Fakultas Ilmu Sosial dan Ilmu Politik Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '68dd0-28.pdf', ''),
(658, 'Bagian TU,RT,HTL', 'HK.00.15', '22 Pebruari 2001', 'SK Rektor UNS No.63/J27/KM/2001 tentang Persyaratan Pemberian Keringanan/Pembebasan SPP Bagi Mahasiswa Reguler Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'd06b8-25.pdf', ''),
(659, 'Bagian TU,RT,HTL', 'HK.00.15', '14 Pebruari 2001', 'SK Rektor UNS No.58/J27/PP/2001 tentang Akreditasi Lokal Jurnal Ilmiah Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '1d6aa-24.pdf', ''),
(660, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Pebruari 2001', 'SK Rektor UNS No.45/J27/KP/2001  tentang  Kode Etik Dosen Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '83093-17.pdf', ''),
(661, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Pebruari 2001', 'SK Rektor UNS No.46A/J27/KP/2001 tentang Pembakuan dan Penetapan Kembali Status Pusat Penelitian dan Pengembangan Pariwisata (PUSPARI) Lembaga Penelitian Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'f1165-16.pdf', ''),
(662, 'Bagian TU,RT,HTL', 'HK.00.15', '4 Januari 2001', 'SK Rektor UNS No.2/J27/KP/2001  tentang  Pengangkatan Staf Ahli Proyek Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b258f-2.pdf', ''),
(663, 'Bagian TU,RT,HTL', 'HK.00.15', '4 Januari 2001', 'SK Rektor UNS No.1/J27/KP/2001  tentang  Pemberhentian dan Pengangkatan Pembantu Rektor III Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a9b84-1.pdf', ''),
(664, 'Bagian TU,RT,HTL', 'HK.00.15', '30 Desember 2000', 'SK Rektor UNS No.572/J27/KP / 2000 tentang  Pedoman Pelaksanaan Pengangkatan, Pemindahan dan Pemberhentian Pejabat Struktural Non Edukatif di Lingkungan UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '769fd-199.pdf', ''),
(665, 'Bagian TU,RT,HTL', 'HK.00.15', '7 Oktober 2000', 'SK Rektor UNS No.540/J27/KP / 2000 tentang  Pemberian Tanda Jasa dan Penghargaan Kepada Perorangan, Badan atau Lembaga Oleh UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '2f4e4-187.pdf', ''),
(666, 'Bagian TU,RT,HTL', 'HK.00.15', '23 Nopember 2000', 'SK Rektor UNS No.537/J27/KP / 2000 tentang  Pembaharuan Struktur dan Susunan Keanggotaan Badan Pengurus Yayasan UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '40b32-186.pdf', ''),
(667, 'Bagian TU,RT,HTL', 'HK.00.15', '17 Nopember 2000', 'SK Rektor UNS No.520/J27/PP / 2000 tentang  Pencabutan SK Rektor No.12/PT.10/KU/86 Tanggal 8 Maret 1986 tentang Penerbitan dan Penjualan Buku Pegangan Kuliah (BPK) Mahasiswa UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a9565-176.pdf', ''),
(668, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Nopember 2000', 'SK Rektor UNS No.511D/J27/KP / 2000 tentang Pemberhentian dan Pengangkatan Sekretaris  LPPM UNS a.n. Drs. Joko Winarno, M.Si', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ab7e7-172.pdf', ''),
(669, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Nopember 2000', 'SK Rektor UNS No.511C/J27/KP / 2000 tentang Pemberhentian dan Pengangkatan Sekretaris  LPPM UNS a.n. Ir. Darsono, M.Si', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '7da2d-171.pdf', ''),
(670, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Nopember 2000', 'SK Rektor UNS No.511B/J27/KP / 2000 tentang Pengangkatan Kembali Sebagai Ketua Lembaga Penelitian UNS a.n. Dr.R.Karsidi, M.S', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '52b84-170.pdf', ''),
(671, 'Bagian TU,RT,HTL', 'HK.00.15', '1 Nopember 2000', 'SK Rektor UNS No.511A/J27/KP / 2000 tentang Pengangkatan Kembali Sebagai Ketua Lembaga Penelitian UNS a.n. Dr.dr.Santoso, M.S', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '86667-169.pdf', ''),
(672, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Oktober 2000', 'SK Rektor UNS No.502/J27/KM / 2000 tentang  Pendirian Perguruan Seni Beladiri Indonesia Tarung Derajat AA Boxer dan SK Pengurus Periode Ke I 2000/2001 UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a4570-166.pdf', ''),
(673, 'Bagian TU,RT,HTL', 'HK.00.15', '2-Sep-00', 'SK Rektor UNS No.369/J27/KP / 2000 tentang Pengangkatan Sdr. Prof.Drs. Sukiyo Sebagai Guru Besar Emeritus Pada FKIP UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'da44f-121.pdf', ''),
(674, 'Bagian TU,RT,HTL', 'HK.00.15', '1-Sep-00', 'SK Rektor UNS No.368/J27/KL / 2000 tentang Perbaikan Keputusan Rektor No.157/J27/KL/2000 tentang Anggaran Rymah Tangga Senat FKIP UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '58d26-120.pdf', ''),
(675, 'Bagian TU,RT,HTL', 'HK.00.15', '29 Agustus 2000', 'SK Rektor UNS No.360/J27/KM / 2000 tentang Rambu-Rambu Pelaksanaan Orientasi Studi Mahasiswa Baru Tahun 2000/2001 UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '95c1d-118.pdf', ''),
(676, 'Bagian TU,RT,HTL', 'HK.00.15', '2000', 'SK Rektor UNS No.337/J27/KM / 2000 tentang Pendirian Perguruan Seni Beladiri Indonesia Tapak Suci dan SK Pengurus Periode Ke I 2000/2001 UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '9ea78-117.pdf', ''),
(677, 'Bagian TU,RT,HTL', 'HK.00.15', '10 Agustus 2000', 'SK Rektor UNS No.313/J27/KM / 2000 tentang Pemberian Beasiswa Timor-Timur Dari Depdiknas RI Tahun 2000 Yang Berada Di UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a9278-105.pdf', ''),
(678, 'Bagian TU,RT,HTL', 'HK.00.15', '19 Juli 2000', 'SK Rektor UNS No.285/J27/KP / 2000 tentang Struktur Organisasi UPT Perpustakaan UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'bf590-89.pdf', ''),
(679, 'Bagian TU,RT,HTL', 'HK.00.15', '19 Juli 2000', 'SK Rektor UNS No.284/J27/KM / 2000 tentang Pemberian Keringanan /Pembebasan SPP  Bagi Mahasiswa UNS Tahun Akademik 2000/2001', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ebe52-88.pdf', ''),
(680, 'Bagian TU,RT,HTL', 'HK.00.15', '27 Juni 2000', 'SK Rektor UNS No.235/J27/KM / 2000 tentang Pemberian Beasiswa Penaggulangan Akibat Kerusuhan Dari Depdiknas RI Tahun 2000 Bagi Mahasiswa UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'd2961-79.pdf', ''),
(681, 'Bagian TU,RT,HTL', 'HK.00.15', '17 Juni 2000', 'SK Rektor UNS No.217/J27/KM / 2000 tentang Pelaksanaan Orientasi Studi Pada Mahasiswa Baru UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '230b6-70.pdf', ''),
(682, 'Bagian TU,RT,HTL', 'HK.00.15', '16 Mei 2000', 'SK Rektor UNS No.179/J27/LK / 2000 tentang Tarif Beaya dan Pemeliharaan/Perawatan Serta Daya Tampung Rumah Negara : Mess Sebagai Kelengkapan Keputusan Rektor No.284A/J27/LK/1997 tentang Persyaratan Penghunian Rumah Negara : Mess  UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b4411-59.pdf', ''),
(683, 'Bagian TU,RT,HTL', 'HK.00.15', '10 Mei 2000', 'SK Rektor UNS No.166/J27/PP / 2000 tentang Revisi Lampiran SK Rektor No. 277/PT.40.H/I/1995 Tanggal 12 Agustus 1995 tentang Pedoman Penyelenggaraan Program Ekstensi Di Lingkungan  UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '993b2-57.pdf', ''),
(684, 'Bagian TU,RT,HTL', 'HK.00.15', '1 April 2000', 'SK Rektor UNS No.96/J27/KP /2000 tentang Pengangkatan Staf Ahli Proyek UNS ', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '37079-35.pdf', ''),
(685, 'Bagian TU,RT,HTL', 'HK.00.15', '29 Maret 2000', 'SK Rektor UNS No.92/J27/LK /2000 tentang Perbaikan Pertama SK Rektor Nomor 275/J27/LK/1997 tentang Penetapan Status Rumah Negara  Di Lingkungan UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '92d16-33.pdf', ''),
(686, 'Bagian TU,RT,HTL', 'HK.00.15', '31 Maret 2000', 'SK Rektor UNS No.91/J27/KP /2000 tentang Pedoman Pelaksanaan Pemberdayaan Jurusan Di Lingkungan UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ea0c6-32.pdf', ''),
(687, 'Bagian TU,RT,HTL', 'HK.00.15', '17 Maret 2000', 'SK Rektor UNS No.73/J27/KP /2000 tentang Pemberhentian dan Pengangkatan Ketua LPPM UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '795e2-30.pdf', ''),
(688, 'Bagian TU,RT,HTL', 'HK.00.15', '9 Februari 2000', 'SK Rektor UNS No.71/J27/PP/2000 tentang Pemberian Beasiswa Penaggulangan Darurat Timor-Timur Dari Depdiknas RI Tahun 1999/2000 Bagi Mahasiswa Timor-Timur Di UNS Surakarta', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '0904a-29.pdf', ''),
(689, 'Bagian TU,RT,HTL', 'Keputusan Rektor', '16 Februari 2000', 'SK Rektor UNS No.50/J27/LK /2000 tentang Pedoman Penggunaan/ Pemakaian dan peminjaman Kendaraan Dinas UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'df628-26.pdf', ''),
(690, 'Bagian TU,RT,HTL', 'HK.00.15', '15 Februari 2000', 'SK Rektor UNS No.48/J27/PP /2000 tentang Penerapan Perubahan Nama Depdikbud Menjadi Depdiknas Beserta Implikasinya Di Lingkungan UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '76c77-25.pdf', ''),
(691, 'Bagian TU,RT,HTL', 'HK.00.15', '9 Februari 2000', 'SK Rektor UNS No. 40/J27/PP /2000 tentang Struktur Organisasi dan Tim Pengelola Program Pendidikan Teknisi Ahli FKIP UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'e8bf3-22.pdf', '');
INSERT INTO `tb_arsip_tekstual` (`id_arsip_tekstual`, `unit_kerja`, `kode_klasifikasi`, `tanggal`, `isi_informasi`, `masalah`, `retensi_aktif`, `retensi_inaktif`, `file_url`, `watermark`) VALUES
(692, 'Bagian TU,RT,HTL', 'HK.00.15', '2000', 'SK Rektor UNS No.29/J27/LK/2000 tentang Pedoman Pemberian Ijin Mendirikan dan Menggunakan Bangunan Bukan Bangunan UNS (Kantin) Sebagai Tindak Lanjut Ketetapan Rektor UNS No. 170/J27/LK/1998 Khususnya Pasal 7 Tentang Aturan Peralihan', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ca391-19.pdf', ''),
(693, 'Bagian TU,RT,HTL', 'HK.00.15', '2000', 'SK Rektor UNS No.28/J27/PP /2000 tentang Pedoman Penyelenggaraan Pendidikan Sistem Ganda (PSG) Bagi Siswa SMK di UNS ', 'Keputusan Rektor', '1 Tahun aetelah tidak berlaku', '4 Tahun', '7e872-18.pdf', ''),
(694, 'Bagian TU, RT, HTL', 'HK.00.15', '28 Desember 1999', 'SK Rektor UNS No.493/J27/KU/1999 tentang Penunjukan Bank Persepsi Untuk Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'aabac-252.pdf', ''),
(695, 'Bagian TU, RT, HTL', 'HK.00.15', '22 Desember 1999', 'SK Rektor UNS No.483/J27/PP/1999 tentang Program Penerimaan Mahasiswa Baru Universitas Sebelas Maret Melalui Jalur Penelusuran Minat dan Kemampuan (PMDK) tahun Akademik 2000/2001 ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'a40eb-250.pdf', ''),
(696, 'Bagian TU, RT, HTL', 'HK.00.15', '15 Desember 1999', 'SK Rektor UNS No.475/J27/PP/1999 tentang Pemberhentian dan Pengangkatan Pengelola Lembaga Pengembangan Kewirausahaan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'ef8d3-247.pdf', ''),
(697, 'Bagian TU, RT, HTL', 'HK.00.15', '15 Desember 1999', 'SK Rektor UNS No.474/J27/PP/1999 tentang Struktur Organisasi Lembaga Pengembangan Kewirausahaan Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'dc4dd-246.pdf', ''),
(698, 'Bagian TU, RT, HTL', 'HK.00.15', '15 Desember 1999', 'SK Rektor UNS No.473/J27/KP/1999 tentang Penggantian Jabatan Pembantu Direktur Bidang Administrasi Umum dan Keuangan Program Studi Magister Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '447f1-245.pdf', ''),
(699, 'Bagian TU, RT, HTL', 'HK.00.15', '8 Desember 1999', 'SK Rektor UNS No.464/J27/KP/1999 tentang Pengangkatan Pengelola Program Pascasarjana Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'a129d-243.pdf', ''),
(700, 'Bagian TU, RT, HTL', 'HK.00.15', '8 Desember 1999', 'SK Rektor UNS No.463/J27/KP/1999 tentang Pembentukan Program Pascasarjana Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '073f9-242.pdf', ''),
(701, 'Bagian TU, RT, HTL', 'HK.00.15', '5 Nopember 1999', 'SK Rektor UNS No.397/J27/KP/1999 tentang Pemberhentian dan Pengangkatan Pejabat Pengelola LPIU DUE Project Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '46527-202.pdf', ''),
(702, 'Bagian TU, RT, HTL', 'HK.00.15', '30 Oktober 1999', 'SK Rektor UNS No.379/J27/KP/1999 tentang Pengangkatan Asisten Pembantu Rektor III Dalam Bidang Kemahasiswaan Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '04a4f-187.pdf', ''),
(703, 'Bagian TU, RT, HTL', 'HK.00.15', '20 Oktober 1999', 'SK Rektor UNS No.364/J27/KP/1999 tentang Pengangkatan Tim Total Quality Management Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'cb996-177.pdf', ''),
(704, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Oktober 1999', 'SK Rektor UNS No.337A/J27/KP/1999 tentang Pengangkatan Anggota Bidang Akreditasi Pada Tim Satuan Pengawas Intern (SPI)  Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '565f2-156.pdf', ''),
(705, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Oktober 1999', 'SK Rektor UNS No.336B/J27/KP/1999 tentang Pengangkatan pengurus UPT Mata Kuliah Umum (MKU) Universitas Sebelas Maret Periode 1999-2003', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'cb84b-154.pdf', ''),
(706, 'Bagian TU, RT, HTL', 'HK.00.15', '28-Sep-99', 'SK Rektor UNS No.335/J27/PP/1999 tentang Organisasi dan Tata Kerja Pascasarjana Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '06be7-153.pdf', ''),
(707, 'Bagian TU, RT, HTL', 'HK.00.15', '27-Sep-99', 'SK Rektor UNS No.333/J27/KM/1999 tentang Perubahan/Perbaikan Pedoman Persyaratan Pengajuan Permohonan Beasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '658a6-152.pdf', ''),
(708, 'Bagian TU,RT,HTL', 'HK.00.15', '30-Sep-99', 'SK Rektor UNS No.326/J27/KP/1999 tentang Pemberhentian dan Pengangkatan  Pembantu Rektor I Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'c114d-147.pdf', ''),
(709, 'Bagian TU, RT, HTL', 'HK.00.15', '30-Sep-99', 'SK Rektor UNS No.327/J27/KP/1999 tentang Pemberhentian dan Pengangkatan  Pembantu Rektor II Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '97a5a-146.pdf', ''),
(710, 'Bagian TU, RT, HTL', 'HK.00.15', '30-Sep-99', 'SK Rektor UNS No.328/J27/KP/1999 tentang Pengangkatan kembali Sebagai Pembantu Rektor III Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'c92c2-145.pdf', ''),
(711, 'Bagian TU, RT, HTL', 'HK.00.15', '15-Sep-99', 'SK Rektor UNS No.315/J27/KP/1999 tentang Pemberhentian dan Pengangkatan Sekretaris Pusat Studi Lingkungan Hidup Pada lembaga Penelitian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0567d-138.pdf', ''),
(712, 'Bagian TU, RT, HTL', 'HK.00.15', '15-Sep-99', 'SK Rektor UNS No.314/J27/KP/1999 tentang Pembentukan Badan Pertimbangan Jabatan dan Kepangkatan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '49534-137.pdf', ''),
(713, 'Bagian TU, RT, HTL', 'HK.00.15', '14-Sep-99', 'SK Rektor UNS No.313/J27/KP/1999 tentang Satuan Pengaman Bukan Pegawai negeri Sipil Di Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '71007-136.pdf', ''),
(714, 'Bagian TU, RT, HTL', 'HK.00.15', '31 Agustus 1999', 'SK Rektor UNS No.305/J27/KM/1999 tentang Penggunaan Dana Kasih Untuk Kegiatan Mahasiswa', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '6282c-131.pdf', ''),
(715, 'Bagian TU, RT, HTL', 'HK.00.15', '1-Sep-99', 'SK Rektor UNS No.304/J27/OT/1999 tentang Pembentukan Unit Pelaksana eknis Mata Kuliah Umum Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'a2336-130.pdf', ''),
(716, 'Bagian TU, RT, HTL', 'HK.00.15', '27 Agustus 1999', 'SK Rektor UNS No.298/J27/PP/1999 tentang Penetapan Calon Yang Diterima Sebagai Mahasiswa Baru Pelimpahan Program Pendidikan Keahlian Teknik (PPKT) Ke Program S-1 Ektensi Fakultas Teknik Universitas Sebelas Maret Tahun 1999/2000', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '78e27-128.pdf', ''),
(717, 'Bagian TU, RT, HTL', 'HK.00.15', '26 Agustus 1999', 'SK Rektor UNS No.297/J27/KP/1999 tentang Pemberhentian dan Pengangkatan Komandan dan Staf Resimen Mahasiswa Mahadipa Satuan 905  Universitas Sebelas Maret Periode 1999/2000', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b6b7c-127.pdf', ''),
(718, 'Bagian TU, RT, HTL', 'HK.00.15', '25 Agustus 1999', 'SK Rektor UNS No.296/J27/KP/1999 tentang Penetapan Calon Yang Diterima Sebagai Mahasiswa Baru Pelimpahan PPKT Undip. Semarang dan IPKI BLKI Surakarta Ke D III Fakultas Teknik Universitas Sebelas Maret Tahun 1999/2000', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '4587b-126.pdf', ''),
(719, 'Bagian TU, RT, HTL', 'HK.00.15', '19 Agustus 1999', 'SK Rektor UNS No.285/J27/KP/1999 tentang Pengangkatan Kembali Staf Ahli Bidang Hukum Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '55e83-123.pdf', ''),
(720, 'Bagian TU, RT, HTL', 'HK.00.15', '4 Agustus 1999', 'SK Rektor UNS No.247/J27/KM/1999 tentang Pedoman Penyelenggaraan Orientasi Studi dan Keakrapan Bagi Mahasiswa Baru Dalam Linngkungan Universitas Sebelas Maret Masabakti Tahun  1999/2000', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'f0150-114.pdf', ''),
(721, 'Bagian TU, RT, HTL', 'HK.00.15', '31 Juli 1999', 'SK Rektor UNS No.246/J27/KM/1999 tentang Pemberian Keringanan/Pembebasan SPP Bagi Mahasiswa Universitas Sebelas Maret Tahun Akademik 1999/2000', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '54a2f-113.pdf', ''),
(722, 'Bagian TU, RT, HTL', 'HK.00.15', '11 Juni 1999', 'SK Rektor UNS No.182/J27/KM/1999 tentang Perubahan/Perbaikan Pedoman Penyelenggaraan Dana Kasih UNS dan asuransi Kecelakaan Mahasiswa dari Asuransi Jasaraharja Putera', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'd07c1-72.pdf', ''),
(723, 'Bagian TU, RT, HTL', 'HK.00.15', '8 Juni 1999', 'SK Rektor UNS No.175/J27/KP/1999 tentang  Pemberhentian dan Pengangkatan Kepala Pusat Penelitian dan Pengembangan Pariwisata (PUSPARI) pada Lembaga Penelitian Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '7da06-66.pdf', ''),
(724, 'Bagian TU, RT, HTL', 'HK.00.15', '29 Mei 1999', 'SK Rektor UNS No.163/J27/KP/1999 tentang  Pemberhentian dan Pengangkatan Kepala Pusat Penelitian dan Pengembangan Belajar Mandiri pada Lembaga Penelitian Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '131e0-59.pdf', ''),
(725, 'Bagian TU, RT, HTL', 'HK.00.15', '29 Mei 1999', 'SK Rektor UNS No.162/J27/PP/1999 tentang Pengembangan Bagian Dari 3 Bagian Menjadi 7 Bagian di Fakultas Hukum Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'aed92-58.pdf', ''),
(726, 'Bagian TU, RT, HTL', 'HK.00.15', '28 Mei 1999', 'SK Rektor UNS No.158A/J27/KP/1999 tentang Pemberhentian YMT.Pembantu Dekan di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'e4385-57.pdf', ''),
(727, 'Bagian TU, RT, HTL', 'HK.00.15', '29 April 1999', 'SK Rektor UNS No.112/J27/PP/1999 tentang  Pengangkatan Pejabat Pengelola LPIU Due Like Project Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'd5e6e-38.pdf', ''),
(728, 'Bagian TU, RT, HTL', 'HK.00.15', '28 April 1999', 'SK Rektor UNS No.111/J27/KP/1999 tentang Perubahan/Perbaikan SK Rektor No.71/PT.40.H/C/1989 tentang Pedoman Tatacara Penilaian Angka Kredit Jabatan Tenaga Pengajar Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'a002d-37-c.pdf', ''),
(729, 'Bagian TU, RT, HTL', 'HK.00.15', '15 April 1999', 'SK Rektor UNS No.96/J27/KP/1999 tentang Pemberhentian yang melaksanakan tugas (YMT) dan pengangkatan kembali kepala UPT penerbitan dan pencetakan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'edfc9-27.pdf', ''),
(730, 'Bagian TU, RT, HTL', 'HK.00.15', '20 Maret 1999', 'SK Rektor UNS No.74/J27/KM/1999 tentang Pendirian Unit Kegiatan Pengembangan Penalaran dan Pengabdian Mahasiswa (UKP3M) Universitas Sebelas Maret Masa Bakti 1999/2000', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b3e7c-16.pdf', ''),
(731, 'Bagian TU, RT, HTL', 'HK.00.15', '9 Pebruari 1999', 'SK Rektor UNS No.30/J27/PP/1999 tentang Struktur Organisasi dan Pengelola Program Pendidikan Teknisi Ahli Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'af4c3-4.pdf', ''),
(732, 'Bagian TU, RT, HTL', 'HK.00.15', '28 Nopember 1998', 'SK Rektor UNS No. 390/J27/KP/     1998 tentang Pemberhentian YMT PD I Fakultas Ekonomi dan YMT PD II Fakultas Teknik UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '96e55-227.pdf', ''),
(733, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Nopember 1998', 'SK Rektor UNS No. 353/J27/PP/     1998 tentang Program Penerimaan Mahasiswa Baru UNS Melalui Jalur PMDK Tahun Akademik 1999/2000', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'df6be-210.pdf', ''),
(734, 'Bagian TU, RT, HTL', 'HK.00.15', '26-Sep-98', 'SK Rektor UNS No. 305/J27/KP/     1998 tentang Prosedur Kegiatan Penanggulangan Pengangguran Pekerja Terampil Di Pusat Pengembangan Bisnis-Lembaga Pengembangan Kewirausahaan (PBB-LPKwu UNS)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '91dc5-179.pdf', ''),
(735, 'Bagian TU, RT, HTL', 'HK.00.15', '18-Sep-98', 'SK Rektor UNS No. 298A/J27/KP/     1998 tentang Pengangkatan Kembali Staf Ahli Bidang Hukum UNS ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b913f-175.pdf', ''),
(736, 'Bagian TU, RT, HTL', 'HK.00.15', '1-Sep-98', 'SK Rektor UNS No. 285/J27/KP/     1998 tentang Pemberhentian dan Pengangkatan YMT Sekretaris Senat UNS ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '320c5-170.pdf', ''),
(737, 'Bagian TU, RT, HTL', 'HK.00.15', '13 Agustus 1998', 'SK Rektor UNS No. 262/J27/KP / 1998 tentang Pencabutan SK Rektor No.153/PT.40.H/O/1994 tentang Ijin Pendirian Institut Pendidikan Kewirausahaan dan Kejuruan Indinesia (IPKKI) Oleh Yayasan Alumni Penerima Beasiswa Supersemar UNS dan No. 144/PT40.H/D/1994 tentang Penggunaan Areal Tanah/Lahan Untuk Pembangunan Gedung Institut Pendidikan Kewirausahaan dan Kejuruan Indinesia (IPKKI) Oleh Yayasan Alumni Penerima Beasiswa Supersemar UNS Dengan Sistem Build Operation Transfer (BOT)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '7c495-154.pdf', ''),
(738, 'Bagian TU, RT, HTL', 'HK.00.15', '27 Juli 1998', 'SK Rektor UNS No. 237/J27/KP / 1998 tentang Pengangkatan Kelompok Kerja Konsorsium Program Pendidikan Guru Model Kualifikasi Dengan Sistem Belajar Mandiri (PGMKSBM) UNS Untuk Program Studi D3 Guru Mata Pelajaran IPA Madrasah Tsanawiyah Basic Lulusan D2', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'aaddb-139.pdf', ''),
(739, 'Bagian TU, RT, HTL', 'HK.00.15', '27 Juli 1998', 'SK Rektor UNS No. 237/J27/KP / 1998 tentang Pengangkatan Kelompok Kerja Konsorsium Program Pendidikan Guru Model Kualifikasi Dengan Sistem Belajar Mandiri (PGMKSBM) UNS Untuk Program Studi D3 Guru Mata Pelajaran IPA Madrasah Tsanawiyah Basic Lulusan SLTA', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '14d25-138.pdf', ''),
(740, 'Bagian TU, RT, HTL', 'HK.00.15', '27 Juli 1998', 'SK Rektor UNS No. 237/J27/KP / 1998 tentang Pengangkatan Kelompok Kerja Konsorsium Program Pendidikan Guru Model Kualifikasi Dengan Sistem Belajar Mandiri (PGMKSBM) UNS Untuk Program Studi D2 Guru Kelas Madrasah Ibtidaiyah', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '9982c-137.pdf', ''),
(741, 'Bagian TU, RT, HTL', 'HK.00.15', '7 Juli 1998', 'SK Rektor UNS No. 218/J27/KM / 1998 tentang Pedoman Penyelenggaraan Orientasi Studi dan Keakraban Bagi Mahasiswa Baru Dalam Lingkungan UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '2e468-125.pdf', ''),
(742, 'Bagian TU, RT, HTL', 'HK.00.15', '30 Juni 1998', 'SK Rektor UNS No. 206/J27/HK/     1998 tentang Pembentukan Pusat Pengembangan dan Pelayanan Hukum Hak Atas Kekayaan Intelektual Pada Lembaga Pengembangan Kewirausahaan UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '40ebf-119.pdf', ''),
(743, 'Bagian TU, RT, HTL', 'HK.00.15', '9 Juni 1998', 'SK Rektor UNS No. 178/J27/KM/     1998 tentang Unit Kegiatan Mahasiswa Bulu Tangkis UNS ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '27197-104.pdf', ''),
(744, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Juni 1998', 'SK Rektor UNS No. 170/J27/LK / 1998 tentang Bangunan Bukan Bangunan UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'bc814-98.pdf', ''),
(745, 'Bagian TU, RT, HTL', 'HK.00.15', '30 Mei 1998', 'SK Rektor UNS No. 148A/J27/KP / 1998 tentang Pendirian dan Pengangkatan Pengelola Pusat Pengkajian Politik dan Pemberdayaan Masyarakat Pada Lembaga Penelitian UNS ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '38900-84.pdf', ''),
(746, 'Bagian TU, RT, HTL', 'HK.00.15', '1998', 'SK Rektor UNS No. 129/J27/KM / 1998 tentang Unit Kegiatan Mahasiswa Perguruan Beladiri Kung Fu &quot;Ular Emas&quot; UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '304f0-78.pdf', ''),
(747, 'Bagian TU, RT, HTL', 'HK.00.15', '12 Mei 1998', 'SK Rektor UNS No. 123/J27/PP /1998 tentang Sistem Belajar dan Penilaian Program Strata 1 (S1) di Lingkungan UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0e6e9-75.pdf', ''),
(748, 'Bagian TU, RT, HTL', 'HK.00.15', '15 April 1998', 'SK Rektor UNS No. 101/J27/KP / 1998 tentang Pedoman Penyusunan Anggaran Rumah Tangga Senat Fakultas Di Lingkungan UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '43e7a-62.pdf', ''),
(749, 'Bagian TU, RT, HTL', 'HK.00.15', '15 April 1998', 'SK Rektor UNS No. 98/J27/KP /1998 tentang Anggaran Rumah Tangga Senat  UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '385aa-61.pdf', ''),
(750, 'Bagian TU, RT, HTL', 'HK.00.15', '28 April 1998', 'SK Rektor UNS No. 83/J27/LK /1998 tentang Pemanfaatan Lahan dan Bangunan Milik UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'f2f8b-54.pdf', ''),
(751, 'Bagian TU, RT, HTL', 'HK.00.15', '2 April 1998', 'SK Rektor UNS No. 81/J27/KP /1998 tentang Perubahan Nama Pusat Studi Pengembangan Pariwisata Menjadi Pusat Penelitian Pengembangan Pariwisata (PUSPARI) Lembaga penelitian UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'ab200-53.pdf', ''),
(752, 'Bagian TU, RT, HTL', 'HK.00.15', '28 Maret 1998', 'SK Rektor UNS No. 80/J27/KP /1998 tentang Tata Cara Pelaksanaan Pemilihan Calon Dekan, Pembantu Dekan, Pimpinan Jurusan/Bagian, dan Program Studi Di Lingkungan UNS (Periode Dekan 1998-2001)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '17b33-51.pdf', ''),
(753, 'Bagian TU, RT, HTL', 'HK.00.15', '28 Maret 1998', 'SK Rektor UNS No. 79/J27/KP /1998 tentang Tata Cara Pelaksanaan Pemilihan Calon Rektor dan Pembantu Rektor UNS (Periode Rektor 1999-2002)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b70b5-50.pdf', ''),
(754, 'Bagian TU, RT, HTL', 'HK.00.15', '31 Maret 1998', 'SK Rektor UNS No. 47 /J27/ KP / 1998 tentang Pemberhentian dan Pengangkatan Kepala Biro Administrasi Umum dan Keuangan   UNS Untuk Masa Jabatan Tahun 1998-2002', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b98d8-30.pdf', ''),
(755, 'Bagian TU, RT, HTL', 'HK.00.15', 'Januari 1998', 'SK Rektor UNS No. 5/J27/PP /1998 tentang Pusat Studi Pengembangan Pariwisata (PUSPARI) Lembaga Penelitian UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'd8a51-4.pdf', ''),
(756, 'Bagian TU, RT, HTL', 'HK.00.15', '14 Nopember 1997', 'SK Rektor UNS No.400/J27/KP/1997 tentang Pengangkatan Staf Ahli Pembantu Rektor I Universitas Sebelas Maret Dalam Bidang Kerjasama Luar Negeri', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b0e6f-215.pdf', ''),
(757, 'Bagian TU, RT, HTL', 'HK.00.15', '17 Nopember 1997', 'SK Rektor UNS No.395/J27/KU/1997 tentang Pembebasan Pembayaran SPP Mahasiswa Berprestasi Tingkat Asia Tenggara (Sea Games) tahun 1997 di Jakarta', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'daffe-210.pdf', ''),
(758, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Nopember 1997', 'SK Rektor UNS No.375/J27/PP/1997 tentang Program Penerimaan Mahasiswa Baru Universitas Sebelas maret Melalui Jalur Penelusuran Minat dan Kemampuan (PMDK) Tahun Akademik 1998/1999', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0500c-197.pdf', ''),
(759, 'Bagian TU, RT, HTL', 'HK.00.15', '16 Oktober 1997', 'SK Rektor UNS No.362/J27/KP/1997 tentang  Pemberhentian dan Pengangkatan Yang Melaksanakan Tugas Ketua Lembaga Pengabdian Kepada Masyarakat Universitas Sebelas Maret Periode tahun 1997 - 2000', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0cb3e-190.pdf', ''),
(760, 'Bagian TU, RT, HTL', 'HK.00.15', '16 Oktober 1997', 'SK Rektor UNS No.361/J27/KP/1997 tentang  Pemberhentian dan Pengangkatan Yang Melaksanakan Tugas Ketua Lembaga Penelitian   Universitas Sebelas Maret Periode tahun 1997 - 2000', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'c903e-189.pdf', ''),
(761, 'Bagian TU, RT, HTL', 'HK.00.15', '16 Oktober 1997', 'SK Rektor UNS No.360/J27/KP/1997 tentang Pengangkatan Sdr.H.Moekiyo.Bc.Hk. Pensiunan Pegawai Negeri Sipil Sebagai Pelaksana Harian Tugas Kepala Biro Adm.Umum dan Keuangan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '6641f-188.pdf', ''),
(762, 'Bagian TU, RT, HTL', 'HK.00.15', '11 Oktober 1997', 'SK Rektor UNS No.349/J27/LK/1997 tentang Pembentukan Tim Urusan Rumah Negara', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '9567b-179.pdf', ''),
(763, 'Bagian TU, RT, HTL', 'HK.00.15', '13 Agustus 1997', 'SK Rektor UNS No.281/J27/KM/1997 tentang Pembentukan Komisi Disiplin Pelaksanaan Ospek Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '09522-167.pdf', ''),
(764, 'Bagian TU, RT, HTL', 'HK.00.15', '27 Agustus 1997', 'SK Rektor UNS No.280/J27/KP/1997 tentang Pengangkatan Staf Ahli Pembantu Rektor III Dalam idang Kemahasiswaan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '11a90-166.pdf', ''),
(765, 'Bagian TU, RT, HTL', 'HK.00.15', '26 Agustus 1997', 'SK Rektor UNS No.276/J27/LK/1997 tentang Persyaratan Mendapatkan Surat Izin Penghunian Rumah Negara di Lingkungan Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'e923f-163.pdf', ''),
(766, 'Bagian TU, RT, HTL', 'HK.00.15', '26 Agustus 1997', 'SK Rektor UNS No.275/J27/LK/1997 tentang Penetapan Status Rumah Negara di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '3c6f3-162.pdf', ''),
(767, 'Bagian TU, RT, HTL', 'HK.00.15', '26 Agustus 1997', 'SK Rektor UNS No.274/J27/LK/1997 tentang Rumah Bukan Rumah Negara di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '8df0d-161.pdf', ''),
(768, 'Bagian TU, RT, HTL', 'HK.00.15', '26 Agustus 1997', 'SK Rektor UNS No.273/J27/LK/1997 tentang Pengadaan, Penghunian dan Pengelolaan Rumah Negara di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '6aa3c-160.pdf', ''),
(769, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Juni 1997', 'SK Rektor UNS No.271/J27/KP/1997 tentang Pemberhentian dan Pengangkatan Koordinar dan Anggota Satuan Pengawas Intern ( SPI)  Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b8240-158.pdf', ''),
(770, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Juli 1997', 'SK Rektor UNS No.270/J27/KP/1997 tentang Pengangkatan Tim Persiapan Pendirian Program-Program Pascasarjana di Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '7ef7c-157.pdf', ''),
(771, 'Bagian TU, RT, HTL', 'HK.00.15', '18 Agustus 1997', 'SK Rektor UNS No.269/J27/KP/1997 tentang Susunan Pengelola UPT Laboratorium MIPA Pusat Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0dced-156.pdf', ''),
(772, 'Bagian TU, RT, HTL', 'HK.00.15', '11 Agustus 1997', 'SK Rektor UNS No.254/J27/KP/1997 tentang Perubahan Nama UPT Laboratorium Pusat UNS Menjadi UPT Laboratorium MIPA Pusat Universitas Sebelas maret dan Penetapan Fungsinya', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '4039b-146.pdf', ''),
(773, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Agustus 1997', 'SK Rektor UNS No.231/J27.KP/1997 tentang Yang Melaksanakan Tugas Kepala Unit Pelaksana Teknis Penerbitan dan Percetakan  Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '8e8a3-133.pdf', ''),
(774, 'Bagian TU, RT, HTL', 'HK.00.15', '22 Juli 1997', 'SK Rektor UNS No.227/J27/PG/1997 tentang Pendirian dan Pengelolaan Pusat Penelitian dan Pengembangan Keolahragaan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '16e8d-130.pdf', ''),
(775, 'Bagian TU, RT, HTL', 'HK.00.15', '22 Juli 1997', 'SK Rektor UNS No.226/J27.PP/1997 tentang Pembukaan Penyelenggaraan Program Studi Diploma III Akuntansi Pada Fakultas Ekonomi Universitas Sebelas Maret Tahun Akademik 1997/1998', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'eb705-129.pdf', ''),
(776, 'Bagian TU, RT, HTL', 'HK.00.15', '11 Juli 1997', 'SK Rektor UNS No.213/J27/KM/1997 tentang Pemberian Keringanan/Pembebasan SPP Bagi Mahasiswa Universitas Sebelas Maret tahun Akademik 1997/1998', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '86bc0-126.pdf', ''),
(777, 'Bagian TU, RT, HTL', 'HK.00.15', '7 Juli 1997', 'SK Rektor UNS No.208/J27/PP/1997 tentang Susunan Pengelola Lembaga Pengembangan Kewirausahaan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '332d5-124.pdf', ''),
(778, 'Bagian TU, RT, HTL', 'HK.00.15', '7 Juli 1997', 'SK Rektor UNS No.207/J27/PP/1997 tentang Pendirian Lembaga Pengembangan Kewirausahaan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'baa4f-123.pdf', ''),
(779, 'Bagian TU, RT, HTL', 'HK.00.15', '28 Juni 1997', 'SK Rektor UNS No.198/J27/PP/1997 tentang Pendirian Pusat Pengembangan Teknologi Kedokteran (PPTK) Fakultas Kedokteran Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '4e8a2-118.pdf', ''),
(780, 'Bagian TU, RT, HTL', 'HK.00.15', '16 Juni 1997', 'SK Rektor UNS No.186/J27/KP/1997 tentang Pengaturan Beban Mengajar Dosen-Dosen MIPA di Fakultas MIPA dan Pendidikan MIPA FKIP Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'cf5e0-113.pdf', ''),
(781, 'Bagian TU, RT, HTL', 'HK.00.15', '30 Mei 1997', 'SK Rektor UNS No.165/J27/KM/1997 tentang Panitia Pembangunan Vihara Budha Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '01520-97.pdf', ''),
(782, 'Bagian TU, RT, HTL', 'HK.00.15', '27 Mei 1997', 'SK Rektor UNS No.161/J27/KM/1997 tentang Pendirian Unit Pelaksana Teknis Pembinaan Olah Raga dan Kesenian Mahasiswa (PORSIMA) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '695c3-95.pdf', ''),
(783, 'Bagian TU, RT, HTL', 'HK.00.15', '24 Mei 1997', 'SK Rektor UNS No.155/J27/KU/1997 tentang Pemberian Bantuan Beaya Pendidikan Program Pascasarjana', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'bf84d-91.pdf', ''),
(784, 'Bagian TU, RT, HTL', 'HK.00.15', '17 Mei 1997', 'SK Rektor UNS No.146/J27/KM/1997 tentang Pemberhentian/Pengangkatan Komandan dan Staf Resimen Mahasiswa Mahadipa Satuan 905 Universitas Sebelas Maret Periode 1997/1998', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'df769-85.pdf', ''),
(785, 'Bagian TU, RT, HTL', 'HK.00.15', '6 Mei 1997', 'SK Rektor UNS No.128/J27.PP/1997 tentang Pembukaan/Penyelenggaraan Program S-1 Extensi Program Studi Ilmu tanah Fakultas Pertanian Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '30d3b-69.pdf', ''),
(786, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Mei 1997', 'SK Rektor UNS No.125/J27/PP/1997 tentang Perpindahan Program Studi Matematika dari Fakultas Teknik ke Fakultas Matematika dan Ilmu Pengetahuan Alam Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'dacf6-68.pdf', ''),
(787, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Mei 1997', 'SK Rektor UNS No.110/J27/KP/1997 tentang Alih Tugas Tenaga Pengajar Tetap di Lingkungan Universitas Sebelas Maret ke Fakultas Matematika dan Ilmu Pengetahuan Alam Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '7b3a0-60.pdf', ''),
(788, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Mei 1997', 'SK Rektor UNS No.109/J27/KP/1997 tentang Pengangkatan Yang Melaksanakan Tugas Pembantu Dekan I dan II Fakultas Matematika dan Ilmu Pengetahuan Alam Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '220cc-59.pdf', ''),
(789, 'Bagian TU, RT, HTL', 'HK.00.15', '22 April 1997', 'SK Rektor UNS No.98/J27.KM/1997 tentang Skorsing Sebagai Mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '25741-55.pdf', ''),
(790, 'Bagian TU, RT, HTL', 'HK.00.15', '12 April 1997', 'SK Rektor UNS No.79/J27.PP/1997 tentang Skorsing Mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '6c885-44.pdf', ''),
(791, 'Bagian TU, RT, HTL', 'HK.00.15', '11 April 1997', 'SK Rektor UNS No.77/J27.PP/1997 tentang Penyelenggaraan Program Pendidikan Keahlian ISIP Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '78cfb-43.pdf', ''),
(792, 'Bagian TU, RT, HTL', 'HK.00.15', '26 Maret 1997', 'SK Rektor UNS No.75/PT.40.H/B/1997 tentang Pedoman Pelaksanaan Pengelolaan Daftar Rencana Kerja (DRK) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '82dcf-42.pdf', ''),
(793, 'Bagian TU, RT, HTL', 'HK.00.15', '19 Maret 1997', 'SK Rektor UNS No.64/PT.40.H/I/1997 tentang Pengangkatan Ketua dan Sekretaris Persiapan Pendirian Program Pendidikan Dokter Spesialis I (PPDS I) Program Studi Ilmu Kesehatan Anak Fakultas Kedokteran Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '30702-39.pdf', ''),
(794, 'Bagian TU, RT, HTL', 'HK.00.15', '19 Maret 1997', 'SK Rektor UNS No.63/PT.40.H/I/1997 tentangPengangkatan Ketua dan Sekretaris Persiapan Pendirian Program Pendidikan Dokter Spesialis I (PPDS I) Program Studi Ilmu Penyakit Syaraf  Fakultas edokteran Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'f2bea-38.pdf', ''),
(795, 'Bagian TU, RT, HTL', 'HK.00.15', '21 Pebruari 1997', 'SK Rektor UNS No.40/PT.40.H/C/1997 tentang Badan Pertimbangan Jabatan dan Kepangkatan Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'a7296-20.pdf', ''),
(796, 'Bagian TU, RT, HTL', 'HK.00.15', '3 Pebruari 1997', 'SK Rektor UNS No.24/PT.40/H/I/1997 tentang Pemecatan sebagai Mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'e9893-16.pdf', ''),
(797, 'Bagian TU, RT, HTL', 'HK.00.15', '15 Pebruari 1997', 'SK Rektor UNS No.32/PT.40.H/O/1997 tentang Pedoman/Persyaratan Pengajuan Permohonan Beasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '63b49-12.pdf', ''),
(798, 'Bagian TU, RT, HTL', 'HK.00.15', '13 Januari 1996', 'SK Rektor UNS No.31/PT.40.H/I/1997 tentang Penyelenggaraan Program Pendidikan Keahlian Fakultas Sastra Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '70326-11.pdf', ''),
(799, 'Bagian TU, RT, HTL', 'HK.00.15', '30 Januari 1997', 'SK Rektor UNS No.20/PT.40.H/I/1997 tentang Pedoman Penyelenggaraan Program Semester Pendek Bagi Mahasiswa Program S-1 pada Fakultas Sastra Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '044b2-9.pdf', ''),
(800, 'Bagian TU, RT, HTL', 'HK.00.15', '21 Nopember 1996', 'SK Rektor UNS No.376/PT.40.H/C/1996 tentang Pengembangan Struktur Organisasi Unit Pelaksana Teknis Perpustakaan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'f3981-241.pdf', ''),
(801, 'Bagian TU, RT, HTL', 'HK.00.15', '9 Nopember 1996', 'SK Rektor UNS No.358/PT.40.H/I/1996 tentang Penetapan Kurikulum Yang Berlaku Bagi Mahasiswa di Fakultas Ilmu Sosial dan Fakultas Teknik (Sebagai Kelengkapan SK Rektor No.398/PT.40.H/I/1995) Universitas  Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '3c3a4-223.pdf', ''),
(802, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Nopember 1996', 'SK Rektor UNS No.199/PT.40.H/C/1996 tentang Pengangkatan  Staf Ahli Bidang Hukum  Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'ca7d6-216.pdf', ''),
(803, 'Bagian TU, RT, HTL', 'HK.00.15', '21 Oktober 1996', 'SK Rektor UNS No.33/PT.40.H/U/1996 tentang Pembentukan Bisnis Inkubator Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0b4d4-208.pdf', ''),
(804, 'Bagian TU, RT, HTL', 'HK.00.15', '22 Oktober 1996', 'SK Rektor UNS No.336/PT.40.H/B/1996 tentang Pendirian Pusat Pengembangan Teknologi Kedokteran Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'e059d-206.pdf', ''),
(805, 'Bagian TU, RT, HTL', 'HK.00.15', '9-Sep-96', 'SK Rektor UNS No.262/PT.40.H/I/1996 tentang Penyelenggaraan Program Pendidikan Keahlian Teknik Fakultas Teknik Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '70183-154.pdf', ''),
(806, 'Bagian TU, RT, HTL', 'HK.00.15', '9-Sep-96', 'SK Rektor UNS No.261/PT.40.H/I/1996 tentang Pembentukan Komisi Disiplin Pelaksana Ospek Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'cf5b0-153.pdf', ''),
(807, 'Bagian TU, RT, HTL', 'HK.00.15', '16 Agustus 1995', 'SK Rektor UNS No.252/PT.40.H/U/1996 tentang Pengangkatan Pejabat Pengelola LPIU Project Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '22037-147.pdf', ''),
(808, 'Bagian TU, RT, HTL', 'HK.00.15', '27 Agustus 1996', 'SK Rektor UNS No.244/PT.40.H/I/1996 tentang Penyelenggaraan Program Pendidikan Keahlian Hukum Fakultas Hukum Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'ed10d-142.pdf', ''),
(809, 'Bagian TU, RT, HTL', 'HK.00.15', '20 Mei 1996', 'SK Rektor UNS No.237/PT.40.H/I/1996 tentang Pendirian Pusat Pengembangan Kewirausahaan  Universitas Sebelas Mare', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'bfd90-137.pdf', ''),
(810, 'Bagian TU, RT, HTL', 'HK.00.15', '12 Agustus 1996', 'SK Rektor UNS No.227/PT.40.H/C/1996 tentang Penetapan Kejuaraan Pemilihan Pegawai Teladan Golongan I dan II Universitas Sebelas Maret Tahun 1996', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '6c267-131.pdf', ''),
(811, 'Bagian TU, RT, HTL', 'HK.00.15', '12 Agustus 1996', 'SK Rektor UNS No.225/PT.40.H/  /1996 tentang Pemantapan Penyelenggaraan Orientasi Studi dan Pengenalan Kampus (Ospek) Serta Perkenalan/Keakraban Bagi Mahasiswa Baru Dalam Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'ea327-129.pdf', ''),
(812, 'Bagian TU, RT, HTL', 'HK.00.15', '9 Agustus 1996', 'SK Rektor UNS No.209/PT.40.H/O/1996 tentang Perubahan / Perbaikan Pedoman Penyelenggaraan dana Kasih Asuransi Kecelakaan Mahasiswa Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '120aa-118.pdf', ''),
(813, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Agustus 1996', 'SK Rektor UNS No.199/PT.40.H/C/1996 tentang Pengangkatan  Staf Ahli Bidang Hukum  Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '57adf-114.pdf', ''),
(814, 'Bagian TU, RT, HTL', 'HK.00.15', '3 Juli 1996', 'SK Rektor UNS No.193/PT.40.H/C/1996 tentang Pemberhentian dan Pengangkatan Pembantu Dekan Fakultasdi Lingkungan   Universitas Sebelas Maret Tahun 1996/1999', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0c814-110.pdf', ''),
(815, 'Bagian TU, RT, HTL', 'HK.00.15', '24 Juni 1996', 'SK Rektor UNS No.153/PT.40/I/1996 tentang Tata Tertib dan Ketentuan Pokok Sponsor Dalam Rangka Kegiatan Kemahasiswaan di Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'bc493-105.pdf', ''),
(816, 'Bagian TU, RT, HTL', 'HK.00.15', '20 Mei 1996', 'SK Rektor UNS No.119/PT.40.H/I/1996 tentang Pedoman Penyelenggaraan Upacara Wisuda Lulusan Program Pendidikan Akademik, dan Program Pendidikan Profesional Serta Upacara Pelantikan lulusan Program Pendidikan Profesi Baik Reguler Maupun Extension di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '8b9ee-82.pdf', ''),
(817, 'Bagian TU, RT, HTL', 'HK.00.15', '31 Mei 1996', 'SK Rektor UNS No.115/PT40.H/C/1996 tentang Pemberhentian Ketua dan Sekretaris Unit Pelaksana Teknis Laboratorium Pusat Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '05123-78.pdf', ''),
(818, 'Bagian TU, RT, HTL', 'HK.00.15', '24 Pebruari 1996', 'SK Rektor UNS No.44/PT.40.H/C/1996 tentang Penunjukan Yang Melaksanakan Tugas Rektor Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '64817-34.pdf', ''),
(819, 'Bagian TU, RT, HTL', 'HK.00.15', '15 Januari 1996', 'SK Rektor UNS No.07/PT.46.H/1996 tentang Yang Melaksanakan Tugas Pembantu Dekan I Fakultas Kedokteran Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '33341-5.pdf', ''),
(820, 'Bagian TU, RT, HTL', 'HK.00.15', '31 Oktober 1995', 'SK Rektor UNS No.359/PT.40.H/I/1995 tentang Pendirian dan pengangkatan Tim Pengelola Unit Rekayasa teknologi Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '6e10a-236.pdf', ''),
(821, 'Bagian TU, RT, HTL', 'HK.00.15', '16 Oktober 1995', 'SK Rektor UNS No.351/PT.40.H/C/1995 tentang Tatacara Pemilihan Calon Pembantu Dekan Universitas sebelas Maret Periode 1995-1998', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '80e38-230.pdf', ''),
(822, 'Bagian TU, RT, HTL', 'HK.00.15', '4 Oktober 1995', 'SK Rektor UNS No.326/PT.40.H/I/1995 tentang Perpindahan Mahasiswa Program S 1 dan program Diploma dalam lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'c46d4-209.pdf', ''),
(823, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Oktober 1995', 'SK Rektor UNS No.323/PT.40.H/B/1995 tentang Pengangkatan Koordonator pelaksana dan pelaksana administrasi akademik program extension di lingkungan Universitas Sebelas Maret tahun 1995/1996', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '904e4-206.pdf', ''),
(824, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Oktober 1995', 'SK Rektor UNS No.322/PT.40.H/C/1995 tentang Pemberhentian dan Pengangkatan Sekretaris dan pejabat Pusat Penelitian/Pusat-pusat studi di lingkungan lembaga penelitian Universitas sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '2f38b-205.pdf', ''),
(825, 'Bagian TU, RT, HTL', 'HK.00.15', '28-Sep-95', 'SK Rektor UNS No.319/PT.40.H/I/1995 tentang Status dan pedoman Kuliah kerja nyata (KKN) Mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '74458-202.pdf', ''),
(826, 'Bagian TU, RT, HTL', 'HK.00.15', '27-Sep-95', 'SK Rektor UNS No.316/PT.40.H/I/1995 tentang Pengangkatan ketua dan sekretaris persiapan pendirianprogram pendidikan Dokter Spesialis I (PPDS I) Ilmu Obstetri Gynekologi Fakultas Kedokteran Universitas Sebelas Maret ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'd7d5d-199.pdf', ''),
(827, 'Bagian TU, RT, HTL', 'HK.00.15', '22-Sep-95', 'SK Rektor UNS No.312/PT.40.H/O/1995 tentang Penggantian nama Korps Drum Band Universitas Sebelas Maret menjadi Marching Band Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '414ba-195.pdf', ''),
(828, 'Bagian TU, RT, HTL', 'HK.00.15', '20-Sep-95', 'SK Rektor UNS No.302/PT.40.h/U/1995 tentang Satuan Pengawasan Intern Universitas', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '2b10f-189.pdf', ''),
(829, 'Bagian TU, RT, HTL', 'HK.00.15', '11-Sep-95', 'SK Rektor UNS No.300/PT.40.H/C/1995 tentang Pengangkatan ketua dan sekretaris unit pelaksana teknis pada laboratorium pusat Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'a6dff-187.pdf', ''),
(830, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Agustus 1995', 'SK Rektor UNS No.287/PT.40.H/N/1995 tentang Perbaikan Surat Keputusan Rektor No.111/PT.40.H/N/1993 tentang Pedoman penyelenggaraan penelitian di lingkungan Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '2c85a-182-c.pdf', ''),
(831, 'Bagian TU, RT, HTL', 'HK.00.15', '29 Agustus 1995', 'SK Rektor UNS No.285/PT.40.H/I/1995 tentang Peraturan perpindahan Mahasiswa dari Perguruan Tinggi Negeri lain ke Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '94345-181.pdf', ''),
(832, 'Bagian TU, RT, HTL', 'HK.00.15', '15 Agustus 1995', 'SK Rektor UNS No.280/PT.40.H/C/1995 tentang Penetapan kejuaraan pemilihan Pegawai Teladan golongan I dan II Universitas sebelas maret tahun 1995', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b0603-177.pdf', ''),
(833, 'Bagian TU, RT, HTL', 'HK.00.15', '12 Agustus 1995', 'SK Rektor UNS No.277/PT.40.H/I/1995 tentang Pedoman Penyelenggaraan Program Extension di lingkungan Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'df63c-174.pdf', ''),
(834, 'Bagian TU, RT, HTL', 'HK.00.15', '11 Juli 1995', 'SK Rektor UNS No.230/PT.40.H/U/1995 tentang Pendirian dan pengangkatan pengelola pusat pengkajian dan pengembangan kepariwisataan (PUSPARI) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'dfc2f-149.pdf', ''),
(835, 'Bagian TU, RT, HTL', 'HK.00.15', '10 Juli 1995', 'SK Rektor UNS No.225/PT.40.H/I/1995 tentang Pembukaan Program Pendidikan Teknisi Ahli (PTA) Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0c6cf-145.pdf', ''),
(836, 'Bagian TU, RT, HTL', 'HK.00.15', '29 Juni 1995', 'SK Rektor UNS No.205/PT.40.H/C/1995 tentang Pembentukan Struktur Organisasi dan Tata Kerja Unit Pelaksana teknis Penerbitan dan percetakan Universitas sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b6a42-134.pdf', ''),
(837, 'Bagian TU, RT, HTL', 'HK.00.15', '19 Juni 1995', 'SK Rektor UNS No.193/PT.40.H/I/1995 tentang Tatacara Pemilihan Calon Dekan Fakultas Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '3478a-125.pdf', ''),
(838, 'Bagian TU, RT, HTL', 'HK.00.15', '17 Juni 1995', 'SK Rektor UNS No.189/PT.40.H/C/1995 tentang Penugasan Dekan Fakultas Ekonomi dan dekan Fakultas Ilmu Sosial dan Ilmu politik Universitas sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'd1d5d-122.pdf', ''),
(839, 'Bagian TU, RT, HTL', 'HK.00.15', '9 Juni 1995', 'SK Rektor UNS No.181/PT.40.H/E/1995 tentang Pembaharuan Badan pengurus Yayasan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b8f93-119.pdf', ''),
(840, 'Bagian TU, RT, HTL', 'HK.00.15', '25 April 1995', 'SK Rektor UNS No.133/PT.40.H/C/1995 tentang Penunjukan yang Melaksanakan Tugas Dekan Fakultas Kedokteran Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'c76d0-90.pdf', ''),
(841, 'Bagian TU, RT, HTL', 'HK.00.15', '25 April 1995', 'SK Rektor UNS No.132/PT.40.H/C/1995 tentang Penunjukan yang Melaksanakan Tugas Dekan Fakultas Ekonomi Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'a3461-89.pdf', ''),
(842, 'Bagian TU, RT, HTL', 'HK.00.15', '10 April 1995', 'SK Rektor UNS No.117/PT.40.H/C/1995 tentang Pengangkatan Dr. Hardjono Sastrohamidjojo sebagai Konsultan Bidang Basic Sciences di Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '22ab5-77.pdf', ''),
(843, 'Bagian TU, RT, HTL', 'HK.00.15', '29 Maret 1995', 'SK Rektor UNS No.110/PT.40.H/I/1995 tentang Pembukaan/Penyelenggaraan Program S-1 Extension Fakultas pertanian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '6e61b-71.pdf', ''),
(844, 'Bagian TU, RT, HTL', 'HK.00.15', '10 Pebruari 1995', 'SK Rektor UNS No.64/PT.40.H/C/1995 tentang Tata cara penyampaian pertimbangan calon Pembantu Rektor Universitas Sebelas maret periode 1995/1999', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '90e96-48.pdf', ''),
(845, 'Bagian TU, RT, HTL', 'HK.00.15', '17 Januari 1995', 'SK Rektor UNS No.59/PT.40.H/I/1995 tentang Pembentukan/Pengangkatan Tim Pengelola Sistim Informasi Manajemen Perguruan Tinggi Universitas Sebelas maret (SIM.PT-UNS ) Tahun 1995', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'bdb31-45.pdf', ''),
(846, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Pebruari 1995', 'SK Rektor UNS No.56/PT.40.H/C/1995 tentang Pengangkatan Anggota Dewan Penyantun Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'c3192-42.pdf', ''),
(847, 'Bagian TU, RT, HTL', 'HK.00.15', '24 Januari 1995', 'SK Rektor UNS No.47/PT.40.H/I/1995 tentang Kriteria Mahasiswa Putus Kuliah/Drop Out (DO) Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '2b121-37.pdf', ''),
(848, 'Bagian TU, RT, HTL', 'HK.00.15', '4 Januari 1995', 'SK Rektor UNS No.13/PT.40.H/O/1995 tentang Pemberian Pembebasan SPP Bagi Mahasiswa yang Berprestasi Tingkat Internasional dalam Kejuaraan Pencak silat Mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'd21d7-9.pdf', ''),
(849, 'Bagian TU, RT, HTL', 'HK.00.15', '23 Desember 1994', 'SK Rektor UNS No.341/PT.40.H/I/1994 tentang Pemberhentian dan Pengangkatan Pejabat-Pejabat Pada UnitPelaksana Kegiatan di Lingkungan Lembaga Pengabdian kepada Masyarakat Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'd281f-135.pdf', ''),
(850, 'Bagian TU, RT, HTL', 'HK.00.15', '15 Desember 1994', 'SK Rektor UNS No.335/PT.40.H/I/1994 tentang Pemberhentian dan Pengangkatan Sekretaris Lembaga Pengabdian kepada Masyarakat Universitas sebelas Maret Periode tahun 1994/1995', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'a351a-129.pdf', ''),
(851, 'Bagian TU, RT, HTL', 'HK.00.15', '15 Desember 1994', 'SK Rektor UNS No.334/PT.40.H/I/1994 tentang Pemberhentian dan Pengangkatan Pejabat-Pejabat pada Pelaksana Kegiatan di Lembaga Pengabdian kepada Masyarakat Universitas sebelas Maret Periode tahun 1994/1995', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '1d401-128.pdf', ''),
(852, 'Bagian TU, RT, HTL', 'HK.00.15', '24 Nopember 1994', 'SK Rektor UNS No.317/PT.40/I/1994 tentang Pengangkatan Pengelola dan Dosen Pembimbing Khusus Mahasiswa Asing Program Dharmasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '062f1-119.pdf', ''),
(853, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Nopember 1994', 'SK Rektor UNS No.308/PT.40.H/I/1994 tentang Pengangkatan Panitia Persiapan pendirian Program Pendidikan Dokter Spesialis I    (PPDS I) 14 Program Studi Fakultas Kedokteran Universitas Sebels Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '1bffe-118.pdf', ''),
(854, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Nopember 1994', 'SK Rektor UNS No.306/PT.40.H/I/1994 tentang Pengangkatan ketua dan sekretaris Persiapan pendirian Program Pendidikan Dokter Spesialis I    (PPDS I) Program Studi Psikiatri Fakultas Kedokteran Universitas Sebels Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '904bb-117.pdf', ''),
(855, 'Bagian TU, RT, HTL', 'HK.00.15', '1-Nov-94', 'SK Rektor UNS No.298/PT.40.H/I/1994 tentang Persiapan Pendirian Program Pendidikan Dokter Spesialis I    (PPDS I) 14 Program Studi Fakultas Kedokteran Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'de846-113.pdf', ''),
(856, 'Bagian TU, RT, HTL', 'HK.00.15', '28 Oktober 1994', 'SK Rektor UNS No.294/PT.40.H/I/1994 tentang Peraturan sistim kredit semester Program kepaniteraan Klinik Fakultas Kedokteran Universtas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'c2e5a-111.pdf', ''),
(857, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Oktober 1994', 'SK Rektor UNS No.263/PT.40.H/O/1994 tentang Pelatih Marching Band Universitas Sebelas Maret Periode 1993/1994', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'd026c-92.pdf', ''),
(858, 'Bagian TU, RT, HTL', 'HK.00.15', '28-Sep-94', 'SK Rektor UNS No.254/PT.40.H/O/1994 tentang Pembentukan UKM Teater Kampus Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '7ba31-88.pdf', ''),
(859, 'Bagian TU, RT, HTL', 'HK.00.15', '8-Sep-94', 'SK Rektor UNS No.234/PT.40.H/I/1994 tentang Pemberhentian dan Pengangkatan Unit Pelaksana Kegiatan Kuliah Kerja Nyata di Lembaga Pengabdian Kepada Masyarakat Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'dc8f2-72.pdf', ''),
(860, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Mei 1994', 'SK Rektor UNS No.196/PT.40.H/C/1994 tentang Pembentukan/Pengangkatan Panitia Ad Hoc Senat Universitas Sebelas Maret dalam rangka tindak lanjut Statuta UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'a7055-64.pdf', ''),
(861, 'Bagian TU, RT, HTL', 'HK.00.15', '1-Sep-94', 'SK Rektor UNS No.193/PT.40.H/C/1994 tentang Tata tertib Kehidupan Tenaga Kependidikan dan Tenaga Administrasi Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '5ce5f-61.pdf', ''),
(862, 'Bagian TU, RT, HTL', 'HK.00.15', '29 Juli 1994', 'SK Rektor UNS No.153/PT.40.H/O/1994 tentang Ijin Pendirian Institut Pendidikan Kewirausahaan dan Kejuruan Indonesia (IPKKI) Oleh Yayasan Alumni Penerima Beasiswa Supersemar Universitas Sebelas Maret (YAPBS)-UNS)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '81db6-32.pdf', '');
INSERT INTO `tb_arsip_tekstual` (`id_arsip_tekstual`, `unit_kerja`, `kode_klasifikasi`, `tanggal`, `isi_informasi`, `masalah`, `retensi_aktif`, `retensi_inaktif`, `file_url`, `watermark`) VALUES
(863, 'Bagian TU, RT, HTL', 'HK.00.15', '18 Juli 1994', 'SK Rektor UNS No.144/PT.40.H/D/1994 tentang Penggunaan Areal Tanah/Lahan Untuk Pembangunan Gedung Institut Pendidikan Kewirausahaan dan Kejuruan Indonesia (IPKKI) Oleh Yayasan Alumni Penerima Beasiswa Supersemar Universitas Sebelas Maret (YAPES)-UNS Dengan Sistim Build Operation Transfer (BOT)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '3b3dd-29.pdf', ''),
(864, 'Bagian TU, RT, HTL', 'HK.00.15', '12 Juli 1994', 'SK Rektor UNS No.137/PT.40.H/I/1994 tentang Pendirian/Pembukaan Pusat Pelatihan Penyuntingan Bahasa (P3B) Fakultas Sastra Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'efda3-23.pdf', ''),
(865, 'Bagian TU, RT, HTL', 'HK.00.15', '21 Juni 1994', 'SK Rektor UNS No.127/PT.40.H/C/1994 tentang Perbaikan Lampiran Surat Keputusan Rektor No.100/PT.40.H/C/94 Tanggal 3 Maret 1994 tentang Pemberhentian dan Pengangkatan Dewan Penyantun Pada Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '71bce-19.pdf', ''),
(866, 'Bagian TU, RT, HTL', 'HK.00.15', '18 Juni 1994', 'SK Rektor UNS No.124/PT.40.H/C/1994 tentang Pemberhentian yang Melaksanakan Tugas Rektor Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'aee71-17.pdf', ''),
(867, 'Bagian TU, RT, HTL', 'HK.00.15', '3 Mei 1994', 'SK Rektor No.100/PT.40.H/C/1994 tentang Pemberhentian dan Pengangkatan Dewan Penyantun pada Universitas Sebelas Mare', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '07d72-13.pdf', ''),
(868, 'Bagian TU, RT, HTL', 'HK.00.15', '25 April 1993', 'SK Rektor UNS No.96/PT.40.H/I/1994 tentang Pemberhentian Dan Pengangkatan Pejabat Pusat Studi Kependudukan di Lembaga Penelitian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b8e9a-10.pdf', ''),
(869, 'Bagian TU, RT, HTL', 'HK.00.15', '31 Desember 1993', 'SK. Rektor No. 317/PT40.H/I/93 tentang Peraturan Perpustakaan UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'bcf99-202.pdf', ''),
(870, 'Bagian TU, RT, HTL', 'HK.00.15', '1-Nov-93', 'SK Rektor No.258/PT40.H/I/1993 tentang Tata Tertib Kehidupan Mahasiswa UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'cbafd-159.pdf', ''),
(871, 'Bagian TU, RT, HTL', 'HK.00.15', '1993', 'SK Rektor No.252/PT40.H/I/1993 tentang Pembukaan/Penyelenggaraan Program Penetapan Guru SLTP Setara D-III Melalui Sistem Belajar Tatap Muka Program Studi Matematika Dan IPA Tahun 1993/1994 Di FKIP UNS Tahap I', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'dade5-153.pdf', ''),
(872, 'Bagian TU, RT, HTL', 'HK.00.15', '1November 1993', 'SK Rektor No.2251/PT40.H/I/1993 tentang Tata Cara Pemilihan Dan Pembentukan Badan Perwakilan Mahasiswa Fakultas (BPMF), Senat Mahasiswa Fakultas (SMF) Dan Himpunan Mahasiswa Jurusan (HMJ) Di Lingkungan UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'd291d-152.pdf', ''),
(873, 'Bagian TU, RT, HTL', 'HK.00.15', '1-Nov-93', 'SK Rektor No.250/PT40.H/I/1993 tentang Peraturan Bagi Mahasiswa UNS Yang Akan Mengikuti UMPTN', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '4eaf3-151.pdf', ''),
(874, 'Bagian TU, RT, HTL', 'HK.00.15', '18 Oktober 1993', 'SK Rektor No.243/PT40.H/I/1993 tentang Kriteria Predikat &quot;Lulus Dengan Pujian/Cum Laude&quot; Bagi Mahasiswa Yang Telah Menyelesaikan Studi Tingkat Sarjana/S1', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '760a2-147.pdf', ''),
(875, 'Bagian TU, RT, HTL', 'HK.00.15', '18 Oktober 1993', 'SK Rektor No.240/PT40.H/I/1993 tentang Pengangkatan Pengurus Pusat Kajian Ekonomi Fakultas Ekonomi UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '3621b-146.pdf', ''),
(876, 'Bagian TU, RT, HTL', 'HK.00.15', '18 Oktober 1993', 'SK Rektor No.239/PT40.H/I/1993 tentang Pengangkatan Pengurus Pusat Pelatihan Ekonomi Fakultas Ekonomi UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b00da-145.pdf', ''),
(877, 'Bagian TU, RT, HTL', 'HK.00.15', '16 Oktober 1993', 'SK Rektor No.238/PT40.H/O/1993 tentang Perubahan Persyaratan Beasiswa T.I.D UNS Tahun 1993/1994', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '6edfa-144.pdf', ''),
(878, 'Bagian TU, RT, HTL', 'HK.00.15', '12 Oktober 1993', 'SK Rektor No.234/PT40.H/I/1993 tentang Program Penerimaan Mahasiswa Baru UNS Melalui Jalur Penelusuran Minat Dan Kemampuan (PMDK) Tahun Akademik 1994/1995', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '62159-141.pdf', ''),
(879, 'Bagian TU, RT, HTL', 'HK.00.15', '4 Oktober 1993', 'SK Rektor No.223/PT40.H/I/1993 tentang Pembentukan Tim Pengelola FEE Kelembagaan Yang Berkaitan Denagn Pembentukan Ketenagaan UNS Kepada PTS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '985fa-133.pdf', ''),
(880, 'Bagian TU, RT, HTL', 'HK.00.15', 'Juli 1993', 'SK Rektor No.169/PT40.H/I/1993 tentang Pendirian/Pembukaan Pusat Pelatiahan Ekonomi Fakultas Ekonomi UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b37a2-112.pdf', ''),
(881, 'Bagian TU, RT, HTL', 'HK.00.15', '10 Agustus 1993', 'SK Rektor No.168/PT40.H/I/1993 tentang Pendirian/Pembukaan Pusat Pengkajian Ekonomi Fakultas Ekonomi UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '55d50-111.pdf', ''),
(882, 'Bagian TU, RT, HTL', 'HK.00.15', '31 Juli 1993', 'SK Rektor No.157/PT40.H/C/1993 tentang Pembentukan Satuan Pengawas Intern Pelaksana Pembangunan/Pemeliharaan Bangunan-Bangunan DI Lingkungan UNS Dana DIP P2T Dan DIP OPF Tahun Anggaran 1993/1994', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0e931-107.pdf', ''),
(883, 'Bagian TU, RT, HTL', 'HK.00.15', '23 Juli 1993', 'SK Rektor No.156/PT40.H/I/1993 tentang Pencabutan SK Rektor No. 27/PT40.H/I/1985 Dan Penetapan Penggunaan Gelar Dan Sambutan Lulusan Pendidikan Akademik Dan Pendidikan Profesional Dari UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '571c3-106.pdf', ''),
(884, 'Bagian TU, RT, HTL', 'HK.00.15', '10 Juni 1993', 'SK Rektor No.116/PT40.H/C/1993 tentang Pemberhentian Yang Melaksanakan Tugas Pembantu Dekan I dan III Fakultas Teknik UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '95c2c-75.pdf', ''),
(885, 'Bagian TU, RT, HTL', 'HK.00.15', '9 Juni 1993', 'SK Rektor No.114/PT40.H/I/1993 tentang Pemberhentian Dan Pengangkatan Kepala Unit Pelaksana Teknis Pelayanan Dan Pengembangan Bahasa UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '2ce0f-73.pdf', ''),
(886, 'Bagian TU, RT, HTL', 'HK.00.15', '3 Juni 1993', 'SK Rektor No 111/PT40.H/C/1993 tentang Pedoman Penyelenggaraan Penelitaian Di Lingkungan UNS (No.70)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '430ee-70-c.pdf', ''),
(887, 'Bagian TU, RT, HTL', 'HK.00.15', '3 Juni 1993', 'SK Rektor No.110/PT40.H/D/1993 tentang Peraturan Penempatan/Penggunaan Rumah Jabatan Dan Rumah Instansi UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '031dc-69.pdf', ''),
(888, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Mei 1993', 'SK Rektor No.105/PT40.H/C/1993 tentang Penunjukan Yang Melaksanakan Tugas Pembantu Dekan II Fakultas Ilmu Sosial Dan Ilmu Politik UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '67f4d-65.pdf', ''),
(889, 'Bagian TU, RT, HTL', 'HK.00.15', '19 Mei 1993', 'SK Rektor No.102/PT40.H/I/1993 tentang Pembentukan Badan Pengelola &quot;Wana Sebelas Maret&quot; UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '5e669-63.pdf', ''),
(890, 'Bagian TU, RT, HTL', 'HK.00.15', '16 Januari 1993', 'SK Rektor No.12/PT40..H/I/1993 tentang Pembentukan/ Pengangkatan Tim Pelaksana Program Pengembangan Ketrampilan Dasar Teknik Instruksional (PEKERTI) bagi Para Dosen UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '07372-11.pdf', ''),
(891, 'Bagian TU, RT, HTL', 'HK.00.15', '8 Desember 1992', 'SK Rektor UNS No.222/PT.40.H/O/1992 tentang Pendirian lembaga bimbingan belajar dan lembaga pendidikan profesi manajemen (LPPM) KMA PBS Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '23994-116.pdf', ''),
(892, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Desember 1992', 'SK Rektor UNS No.216/PT.40.H/I/1992 tentang Pengangkatan Pejabat Pusat Studi Pengembangan Pendidikan Luar Sekolah Lembaga Penelitian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '995b6-113.pdf', ''),
(893, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Desember 1992', 'SK Rektor UNS No.215/PT.40.H/I/1992 tentang Pendirian Pusat Studi Pengembangan Pendidikan Luar Sekolah', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '97a54-112.pdf', ''),
(894, 'Bagian TU, RT, HTL', 'HK.00.15', '28 Nopember 1992', 'SK Rektor UNS No.211/PT.40.H/C/1992 tentang Penunjukan yang melaksanakan tugas Dekan Fakultas Ilmu Sosial dan Ilmu Politik Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '8c3b6-110.pdf', ''),
(895, 'Bagian TU, RT, HTL', 'HK.00.15', '26 Nopember 1992', 'SK Rektor UNS No.210/PT.40.H/I/1992 tentang Program Penerimaan Mahasiswa Baru Universitas Sebelas Maret melalui jalur penelusuran minat dan kemampuan (PMDK) tahun akademik 1993/1994', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'd63a6-109.pdf', ''),
(896, 'Bagian TU, RT, HTL', 'HK.00.15', '1992', 'SK Rektor UNS No.190/PT.40.H/O/1992 tentang Tata cara pemilihan dan pembentukan badan perwakilan Mahasiswa Fakultas (BPMF) senat Mahasiswa Fakultas (SMF) dan himpunan mahasiswa jurusan (HMJ) di lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '6c8f4-97.pdf', ''),
(897, 'Bagian TU, RT, HTL', 'HK.00.15', '7 Oktober 1992', 'SK Rektor UNS No.177/PT.40.H/I/1992 tentang Peraturan Sistim Kredit Semester Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'db21f-92.pdf', ''),
(898, 'Bagian TU, RT, HTL', 'HK.00.15', '26-Sep-92', 'SK Rektor UNS NO.173/PT.40.H/O/1992 tentang Unit Kegiatan Mahasiswa (UKM) bela diri tenaga dalam satria Nusantara Universitas Sebelas Mare', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '9cd8c-90.pdf', ''),
(899, 'Bagian TU, RT, HTL', 'HK.00.15', '19-Sep-92', 'SK Rektor UNS No.171/PT.40.H/I/1992 tentang Tata aliran pemutakhiran data dan pelayanan informasi dalam rangka pengelolaan administrasi akademik,ketenagaan,sarana/prasarana penelitian dan pengabdian pada masyarakat di Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '5cb80-89.pdf', ''),
(900, 'Bagian TU, RT, HTL', 'HK.00.15', '6 Agustus 1992', 'SK Rektor UNS No.132/PT.40.H/I/1992 tentang Perubahan Redaksi Ijazah Akta Kependidikan', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'bb017-76.pdf', ''),
(901, 'Bagian TU, RT, HTL', 'HK.00.15', '13 Juli 1992', 'SK Rektor UNS No.117/PT.40.H/C/1992 tentang Penunjukan Yang Melaksanakan Tugas Dekan Fakultas Ekonomi Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'e3dcb-65.pdf', ''),
(902, 'Bagian TU, RT, HTL', 'HK.00.15', '8 Juli 1992', 'SK Rektor UNS No.116/PT.40.H/C/1992 tentang Penugasan kembali dr.Soejarsono sebagai Pembantu Dekan I Fakultas Kedokteran Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b1766-64.pdf', ''),
(903, 'Bagian TU, RT, HTL', 'HK.00.15', '8 Juni 1992', 'SK Rektor UNS No.98/PT.40.H/I/1992 tentang Peraturan Sistim Kredit Semester Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b818a-54.pdf', ''),
(904, 'Bagian TU, RT, HTL', 'HK.00.15', '5 Mei 1992', 'SK Rektor UNS No.67/PT.40.H/I/1992 tentang Pembentukan Unit Pelaksana Teknis Pelayanan dan Pengembangan Bahasa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '2cfba-35.pdf', ''),
(905, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Mei 1992', 'SK Rektor UNS No.65/PT.40.H/C/1992 tentang Penunjukan Yang Melaksanakan Tugas Pembantu Dekan I Fakultas Kedokteran Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'e6f14-34.pdf', ''),
(906, 'Bagian TU, RT, HTL', 'HK.00.15', '4 Mei 1992', 'SK Rektor UNS No.64/PT.40.H/B/1992 tentang Pengelolaan Dana Dari Masyarakat Bukan SPP', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0e614-33.pdf', ''),
(907, 'Bagian TU, RT, HTL', 'HK.00.15', '8 April 1992', 'SK Rektor UNS No.53/PT.40.H/I/1992 tentang Pedoman Bantuan Dosen Universitas Sebelas Maret Kepada Perguruan Tinggi Swasta (PTS)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '48f03-25.pdf', ''),
(908, 'Bagian TU, RT, HTL', 'HK.00.15', '2 April 1992', 'SK Rektor UNS No.50/PT.40.H/I/1992 tentang Larangan menjadi mahasiswa di dua Fakultas dalam lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '48072-22.pdf', ''),
(909, 'Bagian TU, RT, HTL', 'HK.00.15', '27 Maret 1992', 'SK Rektor UNS No.48/PT.40.H/C/1992 tentang Penunjukan yang melaksanakan tugas Pembantu Dekan I Fakultas Sastra Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '03d5b-20.pdf', ''),
(910, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Januari 1992', 'SK Rektor UNS No.05/PT.40.H/C/1992 tentang Penghentian dan Pengangkatan Kepala Pusat Penelitian dan Pengembangan Belajar Mandiri (PUSLITBANGJARI) di Lembaga Penelitian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '4fd04-1.pdf', ''),
(911, 'Bagian TU, RT, HTL', 'HK.00.15', '7 Desember 1991', 'SK Rektor Nomor 272/PT40.H/C/91 tentang Pemberhentian dan Pengangkatan yang Melaksanakan Tugas Ketua Lembaga Penelitian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '1df86-173.pdf', ''),
(912, 'Bagian TU, RT, HTL', 'HK.00.15', '20-Nov-91', 'SK Rektor Nomor 261/PT40.H/I/1991 tentang Penunjukan Pejabat Sementara Dekan Fakultas Sastra Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '71125-164.pdf', ''),
(913, 'Bagian TU, RT, HTL', 'HK.00.15', '16 Oktober 1991', 'SK Rektor Nomor 215/PT40.H/I/91 tentang Program Peneriman Mahasiswa Baru Universitas Sebelas Maret melalui Jalur Penelusuran Minat dan Kemampuan (PMDK) Tahun Akademik 1992/1993', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '7d56e-129.pdf', ''),
(914, 'Bagian TU, RT, HTL', 'HK.00.15', '16 Agustus 1991', 'SK Rektor Nomor 184/PT.40/H/O/1991 tentang Perubahan/Perbaikan Pedoman Penyelenggaraan Dana Kasih dan Asuransi Kecelakaan Mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '7c7bf-122.pdf', ''),
(915, 'Bagian TU, RT, HTL', 'HK.00.15', '13 Agustus 1991', 'SK Rektor Nomor 179/PT40.H/I/1991 tentang Pemberhentian dan Pengangkatan Pejabat Pusat Pusat Penelitian/Pusat Pusat Studi di Lingkungan Kelembagaan Penelitian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '16855-119.pdf', ''),
(916, 'Bagian TU, RT, HTL', 'HK.00.15', '13 Agustus 1991', 'SK Rektor Nomor 178/PT40.H/I/91 tentang Pemberhentian Kepala Pusat Pengabdian pada Masyarakat dan Pengangkatan Pimpinan Lembaga Pengabdian pada Masyarakat Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '17157-118.pdf', ''),
(917, 'Bagian TU, RT, HTL', 'HK.00.15', '7 Agustus 1991', 'SK Rektor Nomor 174/PT40.H/I/1991 tentang Pembentukan Lembaga Pengabdian pada Masyarakat Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'a6d88-114.pdf', ''),
(918, 'Bagian TU, RT, HTL', 'HK.00.15', '6 Agustus 1991', 'SK Rektor Nomor 171/PT40.H/C/91 tentang Penetapan Kejuaraan Pemilihan Pegawai Teladan Golongan I dan II Universitas Sebelas Maret Tahun 1991', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0db43-111.pdf', ''),
(919, 'Bagian TU, RT, HTL', 'HK.00.15', '23 Juli 1991', 'SK Rektor Nomor 162/PT40.H/I/91 tentang Penetapan Dosen Teladan Tingkat Universitas di Universitas Sebelas Maret Tahun 1991', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'eb803-106.pdf', ''),
(920, 'Bagian TU, RT, HTL', 'HK.00.15', '20 Juli 1991', 'SK Rektor Nomor 158/PT40.H/I/1991 tentang Pemberhentian Kepala Pusat Penelitian dan Pengangkatan Pimpinan Lembaga Penelitian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'c9fab-104.pdf', ''),
(921, 'Bagian TU, RT, HTL', 'HK.00.15', '12 Juli 1991', 'SK Rektor Nomor 157/PT40.H/I/1991 tentang Pendirian Lembaga Penelitian Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '89797-103.pdf', ''),
(922, 'Bagian TU, RT, HTL', 'HK.00.15', '20 Juli 1991', 'SK Rektor No. 150/PT40.H/I/1991 tentang Pemberhentian Kepala Pusat Penelitian dan Pengangkatan Pimpinan Lembaga Penelitian UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '80a6e-99.pdf', ''),
(923, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Mei 1991', 'SK Rektor No. 102/PT40.H/I/1991 tentang Penawaran Semua Mata Kuliah Dan Pengembangan Program Kekhususan Pada Fakultas Hukum UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '641fe-75.pdf', ''),
(924, 'Bagian TU, RT, HTL', 'HK.00.15', '19 Maret 1991', 'SK Rektor No. 86/PT40.H/C/1991 tentang Pencabutan Yang Melaksanakan Tugas Pembantu Dekan II Pada Fakultas Kedokteran UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'be36b-62.pdf', ''),
(925, 'Bagian TU, RT, HTL', 'HK.00.15', '13 Maret 1991', 'SK Rektor No. 82/PT40.H/O/1991 tentang Perubahan/Perbaikan Pedoman Penyelenggaraan Dana Kasih Mahasiswa UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '21166-59.pdf', ''),
(926, 'Bagian TU, RT, HTL', 'HK.00.15', '31 Januari 1990', 'SK Rektor No. 17/PT40.H/I/1991 tentang Senat Mahasiswa UNS dan Anggota Senat Mahasiswa UNS Periode 1991-1992', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '4686c-8.pdf', ''),
(927, 'Bagian TU, RT, HTL', 'HK.00.15', '28 Nopember 1990', 'SK Rektor UNS No. 251/PT.40.H/I/ 1990 tentang Persyaratan Peserta KKN Bagi Mahasiswa di Lingkungan UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'd153f-167.pdf', ''),
(928, 'Bagian TU, RT, HTL', 'HK.00.15', '20 Nopember 1990', 'SK Rektor UNS No. 243/PT.40.H/C/ 1990 tentang  Penunjukan YMT PD II Pada Fakultas Kedokteran UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '99faf-165.pdf', ''),
(929, 'Bagian TU, RT, HTL', 'HK.00.15', '27 Agustus 1990', 'SK Rektor UNS No. 191/PT.40.H/C/ 1990 tentang  Pembentukan Organisasi dan Personalia Penyelenggara Program DII PGSD FKIP UNS Tahun Anggaran 1990/1991', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '918ad-133.pdf', ''),
(930, 'Bagian TU, RT, HTL', 'HK.00.15', '20 Agustus 1990', 'SK Rektor UNS No.164/PT.40.H/I/ 1990 tentang Penetapan Mahasiswa Berprestasi Tingkat UNS Tahun 1990', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '94452-109.pdf', ''),
(931, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Juli 1990', 'Ralat SK Rektor UNS No. 98/ PT.40. H/B/1990 tanggal 15 Juni 1990 tentang Penetapan Besarnya Uang SPP dan Uang Kerja Praktek/ Lapangan/Pengalaman Lapangan dan Beban Lain Mahasiswa UNS Tahun 1990/1991', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '1a703-106.pdf', ''),
(932, 'Bagian TU, RT, HTL', 'HK.00.15', '13 Agustus 1990', 'SK Rektor UNS No. 158/PT.40.H/I/ 1990 tentang Pembentukan Pusat Studi Kependudukan UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '061b5-105.pdf', ''),
(933, 'Bagian TU, RT, HTL', 'HK.00.15', '13 Agustus 1990', 'SK Rektor UNS No. 157/PT.40.H/I/ 1990 tentang Pembentukan Pusat Studi Lingkungan Hidup UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b8e71-104.pdf', ''),
(934, 'Bagian TU, RT, HTL', 'HK.00.15', '7 Juli 1990', 'SK Rektor UNS No. 122/PT.40.H/I / 1990 tentang Penetapan Dosen Teladan Tingkat UNS Tahun 1990', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b8f50-89.pdf', ''),
(935, 'Bagian TU, RT, HTL', 'HK.00.15', '5 Juli 1990', 'SK Rektor UNS No. 121/PT.40.H/I / 1990 tentang Pengangkatan Dewan Redaksi Buletin UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'c2a4c-88.pdf', ''),
(936, 'Bagian TU, RT, HTL', 'HK.00.15', '1-Sep-90', 'SK Rektor UNS No. 91/PT.40.H/D / 1990 tentang Thesis S2, Desertasi S3, Penelitian Mandiri Tenaga Edukatif dari DPP', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '433a4-66.pdf', ''),
(937, 'Bagian TU, RT, HTL', 'HK.00.15', '18 April 1990', 'SK Rektor UNS No. 72/PT.40.H/C/ 1990 tentang Bebas Tugas Menjelang Pensiun Sdr. Drs. Jacob Sulistyo Pembina Tk I (Gol.IV/b) Ka Biro Adm. Umum', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'e2627-52.pdf', ''),
(938, 'Bagian TU, RT, HTL', 'HK.00.15', '11 April 1990', 'SK Rektor UNS No. 71/PT.40.H/I/ 1990 tentang Sistem Belajar dan Penilaian Program Strata 1 (S1) Di Lingkungan UNS (Sebagai perbaikan/perubahan terhadap lampiran SK Rektor UNS No. 03/PT.40.H/I/1987 tanggal 12 Januari 1987 Bab VII pasal 21 s/d 27)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'a1504-51.pdf', ''),
(939, 'Bagian TU, RT, HTL', 'HK.00.15', '11 April 1990', 'SK Rektor UNS No. 69/PT.40.H/I/ 1990 tentang Peraturan Penyelenggaraan Mata Kuliah Pilihan Pada Program Strata (S1) UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '27ade-49.pdf', ''),
(940, 'Bagian TU, RT, HTL', 'HK.00.15', '4 April 1990', 'SK Rektor UNS No. 66/PT.40.H/C/ 1990 tentang Pembentukan dan Pengangkatan Personalia Tim Local Project Implementation Unit (LPIU) UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0e476-46.pdf', ''),
(941, 'Bagian TU, RT, HTL', 'HK.00.15', '21 Maret 1990', 'SK Rektor UNS No. 64/PT.40.H/C/ 1990 tentang Pemberhentian dan Penunjukan YMT PD III Fakultas Teknik UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '9ea08-44.pdf', ''),
(942, 'Bagian TU, RT, HTL', 'HK.00.15', '21 Maret 1990', 'SK Rektor UNS No. 63/PT.40.H/C/ 1990 tentang Pemberhentian dan Penunjukan YMT PD II Fakultas Teknik UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '1fe70-43.pdf', ''),
(943, 'Bagian TU, RT, HTL', 'HK.00.15', '21 Maret 1990', 'SK Rektor UNS No. 62/PT.40.H/C / 1990 tentang Penunjukan YMT PD I Fakultas Teknik UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '72349-42.pdf', ''),
(944, 'Bagian TU, RT, HTL', 'HK.00.15', '17 Februari 1990', 'SK Rektor UNS No. 55/PT.40.H/O / 1990 tentang Pembentukan/ Pengangkatan Pengurus Unit Kegiatan Kerohanian Islam UNS Periode 1989-1990', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '4527a-37.pdf', ''),
(945, 'Bagian TU, RT, HTL', 'HK.00.15', '29 Januari 1990', 'SK Rektor UNS No. 37/PT.40.H/I / 1990 tentang Pemberhentian dan Pengangkatan Kepala Seksi Di Lingkungan Pusat Penelitian dan Pengembangan Sistem Belajar Mandiri UNS ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '2ceec-33.pdf', ''),
(946, 'Bagian TU, RT, HTL', 'HK.00.15', '9 Desember 1989', 'SK Rektor UNS No.223/PT.40.H/C/1989 tentang Pengangkatan Kepala Unit Pelaksana Teknis Penerbitan dan Pencetakan Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '18827-133.pdf', ''),
(947, 'Bagian TU, RT, HTL', 'HK.00.15', '7 Oktober 1989', 'SK Rektor UNS No.190/PT.40.H/I/1989 tentang Pembentukan unit pelayanan dan pengembangan bahasa universitas Sebelas Maret dan pengangkatan tim pengelola unit pelayanan dan pengembangan bahasa Universitas Sebelas maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '51129-112.pdf', ''),
(948, 'Bagian TU, RT, HTL', 'HK.00.15', '3 Oktober 1989', 'SK Rektor UNS No.188/PT.40.H/I/1989 tentang Pengangkatan ketua seksi dan konsultas di pusat studi kependudukan dan lingkungan hidup (PSKLH) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b71de-111.pdf', ''),
(949, 'Bagian TU, RT, HTL', 'HK.00.15', '28-Sep-89', 'SK Rektor UNS No.183/PT.40.H/C/1989 tentang Pengangkatan dan Pemberhentian Keanggotaan Senat Universitas Sebelas Maret Karena Jabatan', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '3ae5a-108.pdf', ''),
(950, 'Bagian TU, RT, HTL', 'HK.00.15', '1-Sep-89', 'SK Rektor UNS No.174/PT.40.H/D/1989 tentang Petunjuk Pelasanaan Pengadaan Perlengkapan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '01123-103.pdf', ''),
(951, 'Bagian TU, RT, HTL', 'HK.00.15', 'Agustus 1989', 'SK Rektor UNS No.172/PT.40.H/B/1989 tentang Pedoman Pelaksanaan Pengelolaan SPP dan DPP Universitas Sebelas Maret. (1989 No.101)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'ef5c4-101-c.pdf', ''),
(952, 'Bagian TU, RT, HTL', 'HK.00.15', '28 Agustus 1989', 'SK Rektor UNS No.166/PT.40.H/I/1989 tentang Peraturan Tata Cara Pemilihan Calon Pembantu Dekan Fakultas, Jurusan,dqan Program Studi di lingkungan Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '85330-99.pdf', ''),
(953, 'Bagian TU, RT, HTL', 'HK.00.15', '14 Agustus 1989', 'SK Rektor UNS No.152/PT.40.H/I/1989 tentang Penetapan Dosen Teladan Tingkat Universitas di Universitas Sebelas Maret tahun 1989', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'a1dbd-90.pdf', ''),
(954, 'Bagian TU, RT, HTL', 'HK.00.15', '4 Agustus 1989', 'SK Rektor UNS No.144/PT.40.H/I/1989 tentang Persyaratan Indek Prestasi Komulatif Bagi Calon Tenaga Pengajar di Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '85e47-88.pdf', ''),
(955, 'Bagian TU, RT, HTL', 'HK.00.15', '24 Juli 1989', 'SK Rektor UNS No.135/PT.40.H/I/1989 tentang Penataran P-4 pola pendukung 100 jam bagi Mahasiswa baru tahun 1989 Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '9f4a3-84.pdf', ''),
(956, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Agustus 1989', 'SK Rektor UNS No.130/PT.40.H/I/1989 tentang Pedoman Tata Tertib Penataran P-4 Pola Pendukung 100 Jam bagi Mahasiswa Baru tahun 1989 Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '60711-83.pdf', ''),
(957, 'Bagian TU, RT, HTL', 'HK.00.15', '22 Juli 1989', 'SK Rektor UNS No.128/PT.40.H/I/1989 tentang Pembentukan Tim Dosen Mata kuliah Dasar Umum (MKDU) Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'cc264-82.pdf', ''),
(958, 'Bagian TU, RT, HTL', 'HK.00.15', '6 Juli 1989', 'SK Rektor UNS No.121/PT.40.H/I/1989 tentang Penyempurnaan susunan organisasi pusat penelitian dan pengembangan sistim belajar mandiri (PUSLITBANGJARI)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'e8545-79.pdf', ''),
(959, 'Bagian TU, RT, HTL', 'HK.00.15', '22 April 1988', 'SK Rektor UNS No.69/PT.40.H/C/1989 tentang Peraturan Tatacara Pemilihan Calon Pimpinan Fakultas (Dekan) di lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'f153f-48.pdf', ''),
(960, 'Bagian TU, RT, HTL', 'HK.00.15', '15 Februari 1988', 'SK Rektor UNS N0.21/PT40.H/I/1989 tengtang Petunjuk Teknis Pelaksanaan Ekivalensi Waktu Mengajar Penug (EWMP) bagi tenaga pengajar di lingkungan Universitas sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'd4800-14.pdf', ''),
(961, 'Bagian TU, RT, HTL', 'HK.00.15', '31 Oktober 1988', 'SK Rektor UNS No. 165/PT.40.H/I/ 1988 tentang Pembukaan Program Pendidikan Akta Mengajar III dan IV Di FKIP UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '8eb8d-101.pdf', ''),
(962, 'Bagian TU, RT, HTL', 'HK.00.15', '8 Oktober 1988', 'SK Rektor UNS No. 149/PT.40.H/O/ 1988 tentang Pembentukan Unit Kegiatan Bola Basket Serta Pengangkatan Pengurus UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '90aec-87.pdf', ''),
(963, 'Bagian TU, RT, HTL', 'HK.00.15', '26-Sep-88', 'SK Rektor UNS No. 143/PT.40.H/O/ 1988 tentang Perubahan/Perbaikan Pedoman Penyelenggaraan Dana Kasih Mahasiswa UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '00717-83.pdf', ''),
(964, 'Bagian TU, RT, HTL', 'HK.00.15', '1988', 'SK Rektor UNS No. 92/PT.40.H/O/ 1988 tentang Tata Tertib Kehidupan Mahasiswa UNS (Merupakan Perubahan SK Rektor No. 125/PT40/ H/A/1987 )', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'dac8f-64.pdf', ''),
(965, 'Bagian TU, RT, HTL', 'HK.00.15', '11 Juli 1988', 'SK Rektor UNS No. 90/PT.40.H/I/ 1988 tentang Pengangkatan Badan Pembina Koperasi Mahasiswa (KOPMA) UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '31b85-62.pdf', ''),
(966, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Juni 1988', 'SK Rektor UNS No. 72/PT.40.H/E/ 1988 tentang Pembaharuan Badan Pengurus Yayasan UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'ba4c1-54.pdf', ''),
(967, 'Bagian TU, RT, HTL', 'HK.00.15', '25 April 1988', 'SK Rektor UNS No. 38/PT.40.H/N/ 1988 tentang Perbaikan Terhadap Lampiran Keputusan Rektor UNS Nomor 14/PT.40.H.N/1987 Tanggal 11 Pebruari 1987 Tentang Pedoman Penelitian Mandiri UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '622d0-28.pdf', ''),
(968, 'Bagian TU, RT, HTL', 'HK.00.15', '3 Maret 1988', 'SK Rektor UNS No. 18/PT.40.H/E/ 1988 tentang Penyempurnaan Susunan Organisasi/Pengelola Badan Koordinasi Pelaksana Emergency UNS (Bakorlak Emergency UNS) ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '23643-11.pdf', ''),
(969, 'Bagian TU, RT, HTL', 'HK.00.15', '29 Februari 1988', 'SK Rektor UNS No. 13/PT.40.H/C/ 1988 tentang Penunjukan Kepala Laboratorium Kedokteran Kehakiman Pada Fakultas Kedokteran UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '038f9-6.pdf', ''),
(970, 'Bagian TU, RT, HTL', 'HK.00.15', '7 Januari 1988', 'SK Rektor UNS No. 02/PT.40.H/I/ 1988 tentang Kriteria/Persyaratan Mahasiswa Pindahan Dari Perguruan Tinggi Negeri Lain Ke UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '13057-2.pdf', ''),
(971, 'Bagian TU, RT, HTL', 'HK.00.15', '12 Nopember 1987', 'SK Rektor UNS NO. 216/PT40.H/C/1987 tentang Penujukan yang Melaksanakan Tugas (YMT) Pembantu Dekan I Fakultas Hukum UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0ff8e-26.pdf', ''),
(972, 'Bagian TU, RT, HTL', 'HK.00.15', '12 Nopember 1987', 'SK Rektor UNS NO. 210/PT40.H/C/1987 tentang Pengangkatan Kepala Pusat Pada Pusat Studi Kependudukan dan Lingkungan Hidup UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '8720e-24.pdf', ''),
(973, 'Bagian TU, RT, HTL', 'HK.00.15', '5-Sep-87', 'SK Rektor UNS NO. 209/PT40.H/C/1987 tentang Pemberhentian Kepala dan Wakil Kepala Pusat Penelitian dan Pengembangan Sistem Belajar Mandiri (PUSLITBANGJARI) dan Pengangkatan Kepala Pusat Penelitian dan Pengembangan Sistem Belajar Mandiri (PUSLITBANGJARI) UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '5714b-23.pdf', ''),
(974, 'Bagian TU, RT, HTL', 'HK.00.15', '1-Sep-87', 'SK Rektor UNS NO. 208/PT40.H/I/1987 tentang Pemberhentian dan Penunjukan yang Melaksanakan Tugas Kepala Pusat Penelitian UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0cba3-22.pdf', ''),
(975, 'Bagian TU, RT, HTL', 'HK.00.15', '21 Oktober 1987', 'SK Rektor UNS NO. 202/PT40.H/I/1987 tentang Susunan Organisasi Pusat Penelitian dan Pengembangan Sistem Belajar Mandiri (PUSLITBANGJARI) UNS ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '9ade6-19.pdf', ''),
(976, 'Bagian TU, RT, HTL', 'HK.00.15', '21 Oktober 1987', 'SK Rektor UNS NO. 201/PT40.H/I/1987 tentang Pembentukan Pusat Studi Kependududkan dan Lingkungan Hidup UNS ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '1876b-18.pdf', ''),
(977, 'Bagian TU, RT, HTL', 'HK.00.15', '13 Oktober 1987', 'SK Rektor UNS NO. 196/PT40.H/I/1987 tentang Penunjukan Yang Melaksanakan Tugas (YMT) Dekan Fakultas Ilmu Sosial dan Ilmu Politik UNS ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b558a-16.pdf', ''),
(978, 'Bagian TU, RT, HTL', 'HK.00.15', '8 Oktober 1987', 'SK Rektor UNS NO. 193/PT40.H/I/1987 tentang Perubahan Pengelompokan Laboratorium Dalam Jurusan Yang terdapat Di Fakultas Kedokteran Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'cff26-13.pdf', ''),
(979, 'Bagian TU,RT,HTL', 'HK.00.15', '21 Mei 1987', 'SK Rektor UNS NO. 82/PT40.H/C/1987 tentang Pengangkatan Prof. Dr. G. Budihardjo Guru Besar Golongan IV/D Pada Fakultas Pertanian, Sebagai Anggota Senat Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '3c565-8.pdf', ''),
(980, 'Bagian TU, RT, HTL', 'HK.00.15', '21 Mei 1987', 'SK Rektor UNS NO. 81/PT40.H/C/1987 tentang Pengangkatan Prof Dr. H. M. Saleh Muntasir Guru Besar Golongan IV/D Pada Fakultas Keguruan dan Ilmu Pendidikan, Sebagai Anggota Senat Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'ebdfe-7.pdf', ''),
(981, 'Bagian TU, RT, HTL', 'HK.00.15', '30 Maret 1987', 'SK Rektor UNS NO. 57/PT40.H/I/1987 tentang Pembaharuan Kurikulum Program Studi Fakultas Keguruan dan Ilmu Pendidikan. (1987 No.6)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '6579c-6-c.pdf', ''),
(982, 'Bagian TU, RT, HTL', 'HK.00.15', '20 Maret 1987', 'SK Rektor UNS NO. 42/PT40.H/C/1987 tentang Pembentukan Kelompok Program Studi Pada Pusat Pengabdian Pada Masyarakat ', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '0dfed-1.pdf', ''),
(983, 'Bagian TU, RT, HTL', 'HK.00.15', '23-Sep-86', 'SK Rektor UNS No. 155/PT.40/ C/ 1986 tentang Pembentukan dan Pengangkatan Anggota Badan Konsultasi dan Bantuan Hukum (BKBH) Fakultas Hukum UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '493b7-81.pdf', ''),
(984, 'Bagian TU, RT, HTL', 'HK.00.15', '19 Juli 1986', 'SK Rektor UNS No. 115/PT.40/KP/ 1986 tentang Penunjukan YMT Kepala Pusat Penelitian', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b1e4e-67.pdf', ''),
(985, 'Bagian TU, RT, HTL', 'HK.00.15', '20 Mei1986', 'SK Rektor UNS No. 85/PT.40/I/1986 tentang Pembentukan Program Spesialisasi Minat Bidang Studi Produksi Ternak Pada Jurusan Budidaya Pertanian Fakultas Pertanian UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '97041-58.pdf', ''),
(986, 'Bagian TU, RT, HTL', 'HK.00.15', '20 Mei 1986', 'SK Rektor UNS No. 84/PT.40/I/1986 tentang Penetapan Beaya Khusus SIPENMARU Tahun 1986 di PUML-44 Solo', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '068cf-57.pdf', ''),
(987, 'Bagian TU, RT, HTL', 'HK.00.15', '19 April 1986', 'SK Rektor UNS No. 66/PT.40/I/ 1986 tentang Kurikulum Program Studi Fakultas Kedokteran UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '4f520-48.pdf', ''),
(988, 'Bagian TU, RT, HTL', 'HK.00.15', '18 Februari 1986', 'SK Rektor UNS No. 55/PT.40/KP/ 1986 tentang Pengangkatan Prof. Drs. Mulyono W.S Sebagai YMT. Sekretaris Senat UNS', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '83866-39.pdf', ''),
(989, 'Bagian TU, RT, HTL', 'HK.00.15', '21 Oktober 1985', 'SK Rektor UNS No.168/PT.40/I/1985 tentang Pengangkatan sebagai Dosen/Asisten Dosen Luar Biasa di Fakultas Sastra Universitas Sebelas Maret tahun akademik 1985/1986', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '77229-87.pdf', ''),
(990, 'Bagian TU, RT, HTL', 'HK.00.15', '26 Oktober 1985', 'SK Rektor UNS No.152/PT.40/KP/1985 tentang Penunjukan Pimpinan untuk Kegiatan Rintisan/Penyelenggaraan Pendidikan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '49f61-79.pdf', ''),
(991, 'Bagian TU, RT, HTL', 'HK.00.15', '13 Agustus 1985', 'SK Rektor UNS No.117/PT.40/X/1985 tentang Pengangkatan Bendahara Dana Kasih dan Pers Mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'de6b9-70.pdf', ''),
(992, 'Bagian TU, RT, HTL', 'HK.00.15', '27 April 1985', 'SK Rektor UNS No.90/PT.40/I/1985 tentang Pengangkatan Dosen pembimbing akademik dan pembantu pembimbing akademik Fakultas Ekonomi Universitas Sebelas Maret semester Januari-Juni 1985', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'b4f10-62.pdf', ''),
(993, 'Bagian TU, RT, HTL', 'HK.00.15', '27 Juni 1985', 'SK Rektor UNS No.82/PT.40/KP/1985 tentang Pemberian tambahan mata kuliah bagi para Dosen/Asisten Dosen Tetap di Fakultas Keguruan dan Ilmu Pendidikan Universitas Sebelas Maret semester Januari-Juni 1985', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '5d31c-60.pdf', ''),
(994, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Juni 1985', 'SK Rektor UNS No.74/PT.40/KU/1985 tentang Ketetapan Katagori pungtan SPP Mahasiswa Universitas Sebelas Maret tahun kuliah 1985/1986', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '9276f-51.pdf', ''),
(995, 'Bagian TU, RT, HTL', 'HK.00.15', '12 Juni 1985', 'SK Rektor UNS No.71/PT.40/I/1985 tentang Bantuan Tenaga Akademik Universitas Sebelas Maret Surakarta kepada Perguruan Tinggi Swasta (PTS)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '8593d-48.pdf', ''),
(996, 'Bagian TU, RT, HTL', 'HK.00.15', '29 April 1985', 'SK Rektor UNS No.61/PT.40/KP/1985 tentang Penunjukan Yang Melaksanakan Tugas Rektor (YMT)', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '21c48-47.pdf', ''),
(997, 'Bagian TU, RT, HTL', 'HK.00.15', '22 April 1985', 'SK Rektor UNS No.53/PT.40/I/1985 tentang Pembentukan Senat Fakultas pada Fakultas Keguruan dan Ilmu Pendidikan beserta personalianya', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'f1bb1-41.pdf', ''),
(998, 'Bagian TU, RT, HTL', 'HK.00.15', '16 Pebruari 1985', 'SK Rektor UNS No.27/PT.40/I/1985 tentang Penggunaan Ijazah lulusan Program Strata Nol(S.0), Strata satu (S.I) Dokter dan Akta I,II,III dan IV Kependidikan di lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', '63665-22.pdf', ''),
(999, 'Bagian TU, RT, HTL', 'HK.00.15', '5 Pebruari 1985', 'SK Rektor UNS No.tentang Kriteria/persyaratan Mahasiswa pindahan dari Perguruan Tinggi Negeri lain ke Universitas Sebelas Maret', 'Keputusan Rektor', '1 tahun setelah tidak berlaku', '4 Tahun', 'f0ede-12.pdf', ''),
(1000, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Desember 1984', 'SK Rektor UNS No.178/PT.40/I/1984 Tentang Kriteria dan Predikat Kelulusan Untuk Lulusan Ujian Program Strata I (S-I) Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '4afaf-97.pdf', ''),
(1001, 'Bagian TU, RT, HTL', 'HK.00.15', '31 Oktober 1984', 'SK Rektor UNS No.163/PT.40/I/1984 tentang Pengangkatan Guru Besar di Lingkungan Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ed50e-89.pdf', ''),
(1002, 'Bagian TU, RT, HTL', 'HK.00.15', '30 Oktober 1984', 'SK Rektor UNS No.162/PT.40/KU/1984 tentang Penetapan Katagori Pungutan SPP Mahasiswa UNS tahun Kuliah 1984/1985', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '8f00a-88.pdf', ''),
(1003, 'Bagian TU, RT, HTL', 'HK.00.15', '9 Oktober 1984', 'SK Rektor UNS No.149/PT.40/I/1984 tentang Kurikulum Program Studi Fakultas Sastra Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '29427-82.pdf', ''),
(1004, 'Bagian TU, RT, HTL', 'HK.00.15', '11-Sep-84', 'SK Rektor UNS No.140/PT.40/I/1984 tentang Pembentukan Pusat Penelitian dan Pengembangan Sistim Belajar Mandiri (Puslitbangjari) Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c0174-78.pdf', ''),
(1005, 'Bagian TU, RT, HTL', 'HK.00.15', '23 Agustus 1984', 'SK Rektor UNS No.138/PT.40/I/1984 tentang Kurikulum Program Studi  Fakultas Pertanian Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a704d-76.pdf', ''),
(1006, 'Bagian TU, RT, HTL', 'HK.00.15', '21 Agustus 1984', 'SK Rektor UNS No.135/PT.40/X/1984 tentang Unit Pelaksana Proyek Pembangunan Asrama Mahasiswa Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '054e4-73.pdf', ''),
(1007, 'Bagian TU, RT, HTL', 'HK.00.15', '5 Juli 1984', 'SK Rektor UNS No.114/PT.40/I/1984 tentang Kurikulum Program Studi Fakultas Ekonomi Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'addd6-69.pdf', ''),
(1008, 'Bagian TU, RT, HTL', 'HK.00.15', '1984', 'SK Rektor UNS No.102/PT.40/I/1984 tentang Kurikulum Program Studi Fakultas Teknik Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '93a94-61.pdf', ''),
(1009, 'Bagian TU, RT, HTL', 'HK.00.15', '1984', 'SK Rektor UNS No.64/PT.40/I/1984 tentang Kurikulum Program Studi Fakultas Ilmu Sosial dan Ilmu Politik Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a81b5-38.pdf', ''),
(1010, 'Bagian TU, RT, HTL', 'HK.00.15', '1984', 'SK Rektor UNS No.62/PT.40/I/1984 tentang Kurikulum Program Studi Fakultas Hukum Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '4146a-36.pdf', ''),
(1011, 'Bagian TU, RT, HTL', 'HK.00.15', '29 Maret 1984', 'SK Rektor UNS No.49/PT.40/I/1984 tentang Mahasiswa selang', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'd6981-26.pdf', ''),
(1012, 'Bagian TU, RT, HTL', 'HK.00.15', '6 Maret 1984', 'SK Rektor UNS No.40/PT.40/I/1984 tentang Pencabutan kedudukan dan Pemberhentian Wakil Ketua Senat a.n. Drs. Haryono Darmowisastro, Drs. SoeponoHadi Koesumo, dan Drs Soepiarto', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '6f5c4-21.pdf', ''),
(1013, 'Bagian TU, RT, HTL', 'HK.00.15', '1984', 'SK Rektor UNS No.33/PT.40/I/1984 tentang Pembentukan Komisi-Komisi Senat Universitas dan Pengangkatan Anggota-Anggota Komisi', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '5e9a8-20.pdf', ''),
(1014, 'Bagian TU, RT, HTL', 'HK.00.15', '26 Januari 1984', 'SK Rektor UNS No.28/PT.40/X/1984 tentang Pemberhentian dan Pengangkatan Pejabat Resimen Mahasiswa Mahadipa Batalyon 4 Universitas Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '6e53c-17.pdf', ''),
(1015, 'Bagian TU, RT, HTL', 'HK.00.15', '1983', 'SK Rektor No. 207/PT.40/G/1983 tentang Pembentukan dan Pengangkatan Personalia Kelompok Program Studi pada Pusat Penelitian UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'a491d-143.pdf', ''),
(1016, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Oktober 1983', 'SK Rektor No. 189/PT40/G/83 tentang Pemberhentian pejabat pada upt dan balai dalam lingkungan UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'aa4b2-132.pdf', ''),
(1017, 'Bagian TU, RT, HTL', 'HK.00.15', '5 Nopember 1983', 'SK Rektor No. 187/PT.40/G/1983 tentang Pemberhentian dan pengangkatan koordinator seksi perencanaan dan informasi unit pelaksana teknis pendidikan anak oleh masyarakat, orang tua dan guru (UPT-PAMONG) UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'ec5cd-130.pdf', ''),
(1018, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Oktober 1983', 'SK Rektor No. 183/PT40/G/83 tentang Pencabutan keputusan rektor No. 91/PT40/G/81. Tentang pembentukan Unit Pelaksana Teknis Pusat Komputer dan Pengelolaan data. Pusat penerbitan dan percetakan, dan Balai Perencanaan dan Pengembangan pada UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '77988-126.pdf', ''),
(1019, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Nopember 1983', 'SK Rektor No. 180/PT40/A/83 tentang Pembentukan buletin penelitian &quot;sumbangsih&quot; cakrawala penelitian UNS dan susunan pengurusnya', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '06d9c-124.pdf', ''),
(1020, 'Bagian TU, RT, HTL', 'HK.00.15', '12-Sep-83', 'SK Rektor No. 153/PT40/G/83 tentang Pemberhentian Pembantu Dekan I Fakultas Hukum UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'dd92b-103.pdf', ''),
(1021, 'Bagian TU, RT, HTL', 'HK.00.15', '16 Agustus 1983', 'SK Rektor No. 139/PT.40/A/1983 tentang Peresmian mahasiswa baru UNS tahun akademi 1983-1984', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'db2eb-95.pdf', ''),
(1022, 'Bagian TU, RT, HTL', 'HK.00.15', '30 Juli 1983', 'SK Rektor No. 125/PT.40/A/1983 tentang Dosen teladan I,II, dan III tingkat Fakultas dan Universitas dalam rangka hari Pendidikan Nasional tahun 1983 UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'f255b-86.pdf', ''),
(1023, 'Bagian TU, RT, HTL', 'HK.00.15', '28 Juli 1983', 'SK Rektor No. 121/PT40/G/83 tentang Penunjukan PT. Panca Karya Jaya sebagai developer pembangunan perumahan dosen dan karyawan UNS tahapan ke III', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'a1401-82.pdf', ''),
(1024, 'Bagian TU, RT, HTL', 'HK.00.15', '27 Juli 1983', 'SK Rektor No. 119/PT40/D/83 tentang Tata cara pemilihan, pembentukan badan perwakilan mahasiswa (BPM), senat mahasiswa (SEMA) dan himpunan jurusan (HIMSAN) di lingkungan UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '87024-80.pdf', ''),
(1025, 'Bagian TU, RT, HTL', 'HK.00.15', '9 Juli 1983', 'SK Rektor No. 113/PT.40/A/1983 tentang Juara I,II,III pemilihan pegawai dan mahasiswa teladan dalam rangka hari pendidikan nasional tahun 1983 UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '0656a-77.pdf', ''),
(1026, 'Bagian TU, RT, HTL', 'HK.00.15', '15 Juni 1983', 'SK Rektor No. 98/PT40/G/83 tentang Pengangkatan wakil kepala dan penanggung jawab bidang pengajaran SMA UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'e8fb5-66.pdf', ''),
(1027, 'Bagian TU, RT, HTL', 'HK.00.15', '29 April 1983', 'SK Rektor No. 83/PT.40/A/83 tentang pembakuan bentuk dan pemberian sertifikat akta mengajar IV UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '20266-59.pdf', ''),
(1028, 'Bagian TU, RT, HTL', 'HK.00.15', '28 April 1983', 'SK Rektor No. 79/PT.40/A/83 tentang Peraturan sistem kredit semester untuk program strata 1 (S1) UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'd3b2a-58.pdf', ''),
(1029, 'Bagian TU, RT, HTL', 'HK.00.15', '31 Maret 1983', 'SK Rektor No. 70/PT40/G/83 tentang Pemberhentian pimpinan fakultas keguruan dan ilmu pendidikan peralihan UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '5bedc-53.pdf', ''),
(1030, 'Bagian TU, RT, HTL', 'HK.00.15', '2 April 1983', 'SK Rektor No. 69/PT.40/A/83 tentang Pemberhentian personalia pada lembaga penelitian UNS dan Pengangkatan pesonalia pada pusat penelitian UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '6860e-52.pdf', ''),
(1031, 'Bagian TU, RT, HTL', 'HK.00.15', '2 April 1983', 'SK Rektor No. 68/PT.40/E/83 tentang Pembentukan pusat penelitian UNS dan struktur organisasinya', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '95edf-51.pdf', ''),
(1032, 'Bagian TU, RT, HTL', 'HK.00.15', '2 April 1983', 'SK Rektor No. 67/PT.40/A/83 tentang Perubahan nama fakultas dan lembaga dalam lingkungan UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '9ad16-50.pdf', ''),
(1033, 'Bagian TU, RT, HTL', 'HK.00.15', '29 Maret 1983', 'SK Rektor No.66/PT40/A/83 tentang Struktur organisasi unit pelaksana teknis pendidikan anak oleh masyrakat, orang tua dan guru (UPT Pamong) UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '045a7-49.pdf', ''),
(1034, 'Bagian TU, RT, HTL', 'HK.00.15', '22 Maret 1983', 'SK Rektor No. 64/PT40/G/83 tentang Peraturan penggunaan pakaian seragam', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '7dde9-47.pdf', ''),
(1035, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Februari 1983', 'SK Rektor No. 37/PT.40/A/1983 tentang Syarat-syarat dan prosedur pengajuan permohonan dan atau Pengambilan ijazah sarjana lulusan UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '6626e-29.pdf', ''),
(1036, 'Bagian TU, RT, HTL', 'HK.00.15', '24 Januari 1983', 'SK Rektor No. 19/PT40/I/83 tentang Penyerahan pengelolaan gedung guest house UNS kepada yayasan UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'a2c3c-14.pdf', ''),
(1037, 'Bagian TU, RT, HTL', 'HK.00.15', '24 Januari 1983', 'SK Rektor No. 17/PT40/I/83 tentang Penyerahan pengelolaan panggung argo budoyo UNS kepada yayasan UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '3736b-13.pdf', ''),
(1038, 'Bagian TU, RT, HTL', 'HK.00.15', '24 Januari 1983', 'SK Rektor No. 16/PT40/I/83 tentang Penyerahan pengelolaan gedung auditorium UNS kepada yayasan UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'd8c65-12.pdf', ''),
(1039, 'Bagian TU, RT, HTL', 'HK.00.15', '31 Desember 1982', 'SK Rektor No. 208/PT40/G/82 tentang Pengangkatan pimpinan fakultas keguruan dan ilmu pendidikan peralihan UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '46ece-163.pdf', ''),
(1040, 'Bagian TU, RT, HTL', 'HK.00.15', '31 Desember 1982', 'SK Rektor No. 207/PT40/G/82 tentang Penyatuan fakultas ilmu pendidikan dan fakultas keguruan menjadi fakultas keguruan dan ilmu pendidikan (FKIP) UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '591dd-162.pdf', ''),
(1041, 'Bagian TU, RT, HTL', 'HK.00.15', '27 Desember 1982', 'SK Rektor No. 201/PT40/D/82 tentang Pembentukan pusat pengabdian pada masyarakat UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'e7232-156.pdf', ''),
(1042, 'Bagian TU, RT, HTL', 'HK.00.15', '1 Januari 1983', 'SK Rektor No. 199/PT40/G/82 tentang Pemberhentian dan pengangkatan beberapa pimpinan unit pelaksana teknis pendidikan anak oleh masyarakat, orang tua dan guru (upt pamong) UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '5e477-154.pdf', ''),
(1043, 'Bagian TU, RT, HTL', 'HK.00.15', '24 Desember 1982', 'SK Rektor No. 198/PT40/G/82 tentang Penunjukan Setiono, SH pembantu dekan I fakultas hukum UNS yang melaksanakan tugas dekan fakultas hukum UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'a3984-153.pdf', '');
INSERT INTO `tb_arsip_tekstual` (`id_arsip_tekstual`, `unit_kerja`, `kode_klasifikasi`, `tanggal`, `isi_informasi`, `masalah`, `retensi_aktif`, `retensi_inaktif`, `file_url`, `watermark`) VALUES
(1044, 'Bagian TU, RT, HTL', 'HK.00.15', '8 Nopember 1982', 'SK Rektor No. 163/PT40/G/82 tentang Pemberhentian dengan hormat kolonel,cdh. Drs. Herdi sumeri sebagai pembantu rektor II UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'bd871-125.pdf', ''),
(1045, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Nopember 1982', 'SK Rektor No.161/PT40/G/82 tentang Pengangkatan tim perumus penyatuan fakultas ilmu pendidikan dan fakultas keguruan UNS menjadi fakultas keguruan dan ilmu pendidikan UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'a2b87-123.pdf', ''),
(1046, 'Bagian TU, RT, HTL', 'HK.00.15', '22 Oktober 1982', 'SK Rektor No. 155/PT40/G/82 tentang Penunjukan pembantu rektor III dan Sdr. Hidayat Sudhiharto untuk menanda tangani permohonan kredit mahasiswa indonesia (kmi)', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '1fcc9-118.pdf', ''),
(1047, 'Bagian TU, RT, HTL', 'HK.00.15', '20 Oktober 1982', 'SK Rektor No. 151/PT40/G/82 tentang Pemberhentian Ir. Supratoyo sebagai dekan fakultas pertanian UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'db3c6-115.pdf', ''),
(1048, 'Bagian TU, RT, HTL', 'HK.00.15', '30-Sep-82', 'SK Rektor No. 137/PT40/G/82 tentang Pengangkatan panitia persiapan pembukaan/pendirian fakultas matematika dan ilmu pengetahuan alam UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '094e0-105.pdf', ''),
(1049, 'Bagian TU, RT, HTL', 'HK.00.15', '15-Sep-82', 'SK Rektor No. 132/PT40/G/82 tentang Penunjukan Ir. Toeranto Soegiatmo, sebagai pembantu dekan fakultas pertanian UNS yang melaksanakan tugas dekan fakultas-fakultas pertanian UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'ebff4-101.pdf', ''),
(1050, 'Bagian TU, RT, HTL', 'HK.00.15', '8-Sep-82', 'SK Rektor No. 117/PT40/G/82 tentang Pembakuan bentuk dan pemberian piagam penghargaan', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '09c8f-88.pdf', ''),
(1051, 'Bagian TU, RT, HTL', 'HK.00.15', '7-Sep-82', 'SK Rektor No. 116/PT40/A/82 tentang Mahasiswa yang tidak dapat melanjutkan study di UNS tahun akademis 1982/1983', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '895ce-87.pdf', ''),
(1052, 'Bagian TU, RT, HTL', 'HK.00.15', '19 Mei 1982', 'SK Rektor No. 77/PT40/G/82 tentang Penugasan Sdr Drs. Pramono ke LRC UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '779c4-58.pdf', ''),
(1053, 'Bagian TU, RT, HTL', 'HK.00.15', '19 Mei 1982', 'SK Rektor No. 76/PT40/G/82 tentang Penugasan Sdr. Dra. Siti Mardiyati ke NTR UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '48b4f-57.pdf', ''),
(1054, 'Bagian TU, RT, HTL', 'HK.00.15', '19 Mei 1982', 'SK Rektor No. 75/PT40/G/82 tentang Penugasan Sdr F X Parmudji Widyoatmojo, SH ke UPT Pamong', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '5a9c1-56.pdf', ''),
(1055, 'Bagian TU, RT, HTL', 'HK.00.15', '19 Mei 1982', 'SK Rektor No. 74/PT40/G/82 tentang Penugasan Sdr. Soekasno, SH. Ke UPT Perpustakaan UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', 'b83b3-55.pdf', ''),
(1056, 'Bagian TU, RT, HTL', 'HK.00.15', '19 Mei 1982', 'SK Rektor No. 73/PT40/G/82 tentang Penugasan Sdr. F.M. Moedjijono, SH. Ke UPT Perpustakaan UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '8b715-54.pdf', ''),
(1057, 'Bagian TU, RT, HTL', 'HK.00.15', '19 Mei 1982', 'SK Rektor no. 72/PT40/G/82 tentang Penugasan Sdr Umar S Kusumoharyono, SH ke Lembaga Penelitian UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '1f877-53.pdf', ''),
(1058, 'Bagian TU, RT, HTL', 'HK.00.15', '19 Mei 1982', 'SK Rektor No. 71/PT40/G/82 tentang Penugasan Sdr Prabowo Utomo, SH ke Bagian Binwa UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '0c7d6-52.pdf', ''),
(1059, 'Bagian TU, RT, HTL', 'HK.00.15', '1 April 1982', 'SK Rektor No. 50/PT40/H/82 tentang Pembeayaan telepon dilingkungan UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '841c7-38.pdf', ''),
(1060, 'Bagian TU, RT, HTL', 'HK.00.15', '1 April 1982', 'SK Rektor No. 49/PT40/G/82 tentang Pemberhentian drs. Saroyo Purnomosidi sebagai yang diperbantukan pada pembantu rektor III UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '5026a-37.pdf', ''),
(1061, 'Bagian TU, RT, HTL', 'HK.00.15', '22 Januari 1982', 'SK Rektor No. 17/PT40/G/82 tentang Penugasan kembali sdr. Prayitno, SH sebagai dekan fakultas hukum UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '063b2-8.pdf', ''),
(1062, 'Bagian TU, RT, HTL', 'HK.00.15', '5 Januari 1982', 'SK Rektor No. 02/PT40/G/82 tentang Pemberhentian dan peningkatan kepala biro administrasi akademik dan kemahasiswaan UNS', 'Keputusan Rektor', '1 Tahun', '4 Tahun', '7c1c8-1.pdf', ''),
(1063, 'Bagian TU, RT, HTL', 'HK.00.15', '18 Nopember 1981', 'SK Rektor UNS No. 227/PT.40 /G/ 1981 tentang Menugaskan Kembali Sdr. Prayitno, SH Sebagai Dekan Fakultas Hukum UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '9c5d9-177.pdf', ''),
(1064, 'Bagian TU, RT, HTL', 'HK.00.15', '11 Nopember 1981', 'SK Rektor UNS No. 226/PT.40 /C/ 1981 tentang Perubahan Lampiran SK Rektor No. 168/PT40/O/80 perihal Pedoman Pelaksanaan KKN UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c6d98-176.pdf', ''),
(1065, 'Bagian TU, RT, HTL', 'HK.00.15', '5-Sep-81', 'SK Rektor UNS No. 191/PT.40 /G/ 1981 tentang Pemberhentian Drs Boorhan Respati dan Menunjuk Drs. Soenaryo Wreksosuhardjo Melaksanakan Pekerjaan Ketua Lembaga Penelitian', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '555b4-151.pdf', ''),
(1066, 'Bagian TU, RT, HTL', 'HK.00.15', '24 Agustus 1981', 'SK Rektor UNS No. 179/PT.40 /G/ 1981 tentang Penugasan Setiono, SH Pembantu Dekan I dan Ny. Amiek Sumindriyatmi, SH Pembantu Dekan II Fakultas Hukum UNS Ditunjuk Sebagai YMT Dekan Fakultas Hukum UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c4530-140.pdf', ''),
(1067, 'Bagian TU, RT, HTL', 'HK.00.15', '26 Juni 1981', 'SK Rektor UNS No. 153/PT.40 /A/ 1981 tentang Pedoman Pengenalan Program Studi Mahasiswa UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b7f8d-118.pdf', ''),
(1068, 'Bagian TU, RT, HTL', 'HK.00.15', '22 Juni 1981', 'SK Rektor UNS No. 151/PT.40 /G/ 1981 tentang Perbantuan Drs. Saroyo Purnomosidi Pada PR III', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '7accd-116.pdf', ''),
(1069, 'Bagian TU, RT, HTL', 'HK.00.15', '30 Juni 1981', 'SK Rektor UNS No. 130/PT.40 /A/ 1981 tentang Mahasiswa Selang', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '3f754-98.pdf', ''),
(1070, 'Bagian TU, RT, HTL', 'HK.00.15', '16 Mei 1981', 'SK Rektor UNS No. 108/PT.40 /B/ 1981 tentang Pembentukan Unit Kegiatan Penelitian Mahasiswa UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '1e5dc-79.pdf', ''),
(1071, 'Bagian TU, RT, HTL', 'HK.00.15', '16 Mei 1981', 'SK Rektor UNS No. 107/PT.40 /B/ 1981 tentang Pembentukan Unit Kegiatan Spiritual Mahasiswa UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '38abb-78.pdf', ''),
(1072, 'Bagian TU, RT, HTL', 'HK.00.15', '30 April 1981', 'SK Rektor UNS No. 92/PT.40 /G/ 1981 tentang Pengangkatan Para  UPT dan Balai Perencanaan Dalam Lingkungan UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '8d46a-66.pdf', ''),
(1073, 'Bagian TU, RT, HTL', 'HK.00.15', '30 April 1981', 'SK Rektor UNS No. 91/PT.40 /G/ 1981 tentang Pembentukan UPT Pusat Komputer dan Pengolahan Data, Pusat Penerbitan dan Percetakan dan Balai Perencanaan dan Pengembangan Pada UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'daa09-65.pdf', ''),
(1074, 'Bagian TU, RT, HTL', 'HK.00.15', '30 April 1981', 'SK Rektor UNS No. 86/PT.40 /G/ 1981 tentang Pemberhentian Dengan Hormat PR IV UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '549b2-60.pdf', ''),
(1075, 'Bagian TU, RT, HTL', 'HK.00.15', '28 April 1981', 'SK Rektor UNS No. 81/PT.40 /C/ 1981 tentang Badan Koordinasi Kesenian Tradisional Mahasiswa UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '91fb1-56.pdf', ''),
(1076, 'Bagian TU, RT, HTL', 'HK.00.15', '2 Februari 1981', 'SK Rektor UNS No. 67/PT.40 /A/ 1981 tentang Pengesahan Ijazah Sementara/Tanda Lulus Ujian Sarjana/Sarjana Muda Dari IKIP Surakarta/STO Surakarta Yang Tergabung Dalam UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ea67b-45.pdf', ''),
(1077, 'Bagian TU, RT, HTL', 'HK.00.15', '7 April 1981', 'SK Rektor UNS No. 66/PT.40 /D/ 1981 tentang Pembentukan Pengurus KOMPA UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '23899-44.pdf', ''),
(1078, 'Bagian TU, RT, HTL', 'HK.00.15', '7 April 1981', 'SK Rektor UNS No. 65/PT.40 /D/ 1981 tentang Struktur Organisasi KOMPA UNS', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '7e084-43.pdf', ''),
(1079, 'Bagian TU, RT, HTL', 'HK.00.15', '5 Agustus 1976', 'SK Rektor UNS No. 3452/P/034/76 tentang Pengangkatan dan Pelaksanaan Penerbitan Majalah/Buletin Universitas Negeri Surakarta Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '5bdca-8.pdf', ''),
(1080, 'Bagian TU, RT, HTL', 'HK.00.15', '3 Agustus 1976', 'SK Rektor UNS No.3433/P/000/76 tentang Pengangkatan GPH.Djojokoesoemo, SH sebagai Staf Ahli Universitas Negeri Sebelas Maret', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', '3dcbd-7.pdf', ''),
(1081, 'Bagian TU, RT, HTL', 'HK.00.15', '20 Juli 1976', 'SK Rektor UNS No. 3291/P/601/76 tentang Penetapan Uang Dana Kuliah Universitas Negeri Surakarta Sebelas Maret Tahun Akademik 1976', 'Keputusan Rektor', '1 Tahun setelah tidak berlaku', '4 Tahun', 'c92c7-1.pdf', ''),
(1082, 'Bagian TU, RT, HTL', 'OT.00', '1977 dan 1992', 'Statuta Universitas Sebelas Maret Tahun 1977 dan 1992', 'Statuta', 'Selama Masih Berlaku', '2 Tahun', '65b04-35-per-uu-permanen.pdf', ''),
(1083, 'Bagian TU, RT, HTL', 'HK.00.10', '20 Juli 1999', 'SK Dirjen Dikti No.345/Dikti/Kep/1999 tentang Pembentukan Prodi S2 Pendidikan Kependudukan dan Lingkungan Hidup UNS', 'Keputusan Dirjen', '1 Tahun setelah tidak berlaku', '4 Tahun', 'bc550-34-per-uu-permanen.pdf', ''),
(1084, 'Bagian TU, RT, HTL', 'HK.00.10', '27 April 1999', 'SK Dirjen Dikti No.134/Dikti/Kep/1999 tentang Pembentukan Prodi Obstetri dan Ginekologi pada Program Pendidikan Dokter Spesialis I UNS', 'Keputusan Dirjen', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a691a-33-per-uu-permanen.pdf', ''),
(1085, 'Bagian TU, RT, HTL', 'HK.00.10', '13 April 1999', 'SK Dirjen Dikti No.125/Dikti/Kep/1999 dan SK Dirjen Dikti No.128/Dikti/Kep/1999 tentang Pembentukan Prodi DIII Bahasa Inggris pada Fakultas Sastra UNS', 'Keputusan Dirjen', '1 Tahun setelah tidak berlaku', '4 Tahun', '25065-32-per-uu-permanen.pdf', ''),
(1086, 'Bagian TU, RT, HTL', 'HK.00.10', '1 Maret 1999', 'SK Dirjen Dikti No.41/Dikti/Kep/1999 tentang Pembentukan Prodi DIII Usaha Perjalanan Wisata pada Fakultas Sastra UNS', 'Keputusan Dirjen', '1 Tahun setelah tidak berlaku', '4 Tahun', 'ac615-31-per-uu-permanen.pdf', ''),
(1087, 'Bagian TU, RT, HTL', 'HK.00.10', '18 Februari 1999', 'SK Dirjen Dikti No.33/Dikti/Kep/1999 tentang Pembentukan Prodi DIII Teknik Mesin dan Teknik Sipil UNS', 'Keputusan Dirjen', '1 Tahun setelah tidak berlaku', '4 Tahun', '02f73-30-per-uu-permanen.pdf', ''),
(1088, 'Bagian TU, RT, HTL', 'HK.00.10', '11 Juni 1998', 'SK Dirjen Dikti No.161/Dikti/Kep/1998 tentang Pembentukan Prodi S2 Ilmu Lingkungan di UNS', 'Keputusan Dirjen', '1 Tahun setelah tidak berlaku', '4 Tahun', '794a9-29-per-uu-permanen.pdf', ''),
(1089, 'Bagian TU, RT, HTL', 'HK.00.10', '3 Maret 1998', 'SK Dirjen Dikti No.66/Dikti/Kep/1998 tentang Pembentukan Jurusan Sosiologi pada FISIP UNS', 'Keputusan Dirjen', '1 Tahun setelah tidak berlaku', '4 Tahun', '64d4d-28-per-uu-permanen.pdf', ''),
(1090, 'Bagian TU, RT, HTL', 'HK.00.10', '27 Februari 1998', 'SK Dirjen Dikti No. 53/Dikti/Kep/1998 tentang Pembentukan Program-Program Studi S1 Teknik Industri, Teknik Mesin dan Teknik Kimia pada Fakultas Teknik UNS', 'Keputusan Dirjen', '1 Tahun setelah tidak berlaku', '4 Tahun', 'e2c04-27-per-uu-permanen.pdf', ''),
(1091, 'Bagian TU, RT, HTL', 'HK.00.10', '29 Oktober 1997', 'SK Dirjen Dikti No. 414/Dik/Kep/1997 tentang Pembentukan Prodi S2 Linguistik di UNS', 'Keputusan Dirjen', '1 Tahun setelah tidak berlaku', '4 Tahun', '86ef8-26-per-uu-permanen.pdf', ''),
(1092, 'Bagian TU, RT, HTL', 'HK.00.10', '1997', 'SK Dirjen Dikti No.345/Dikti/Kep/1997 tentang Pembentukan Prodi DIII Akuntansi pada Fakultas Ekonomi UNS', 'Keputusan Dirjen', '1 Tahun setelah tidak berlaku', '4 Tahun', '7fea5-25-per-uu-permanen.pdf', ''),
(1093, 'Bagian TU, RT, HTL', 'HK.00.05', '13 Januari 2010', 'Peraturan Mendiknas RI No. 1 Tahun 2010 tentang Perubahan Penggunan Nama Depdiknas menjadi Kementerian Pendidikan Nasional', 'Keputusan Menteri', '1 Tahun setelah tidak berlaku', '4 Tahun', '27660-24-per-uu-permanen.pdf', ''),
(1094, 'Bagian TU, RT, HTL', 'HK.00.05', '22 Desember 1999', 'SK Mendikbud RI No. 304/U/1999 tentang Perubahan Penggunaan Nama Dedikbud menjadi Depdiknas', 'Keputusan Menteri', '1 Tahun setelah tidak berlaku', '4 Tahun', 'bbfe6-21-per-uu-permanen.pdf', ''),
(1095, 'Bagian TU, RT, HTL', 'HK.00.05', '1 Oktober 1996', 'SK Mendikbud RI No. 0297/O/1996 tentang Pendirian Fakultas MIPA UNS', 'Keputusan Menteri', '1 Tahun setelah tidak berlaku', '4 Tahun', '53af5-17-per-uu-permanen.pdf', ''),
(1096, 'Bagian TU, RT, HTL', 'HK.00.05', '22 Mei 1995', 'SK Mendikbud RI No. 28592/A2.1.2/C/1995 tentang Pemberhentian dan Pengangkatan Pembantu Rektor UNS', 'Keputusan Menteri', '1 Tahun setelah tidak berlaku', '4 Tahun', 'b7ed5-16-per-uu-permanen.pdf', ''),
(1097, 'Bagian TU, RT, HTL', 'HK.00.05', '8 Desember 1983', 'SK Mendikbud RI No.0555/O/1983 tentang Jenis dan Jumlah Jurusan pada Fakultas di Lingkungan UNS', 'Keputusan Menteri', '1 Tahun setelah tidak berlaku', '4 Tahun', '25f28-13-per-uu-permanen.pdf', ''),
(1098, 'Bagian TU, RT, HTL', 'HK.00.05', '29 Maret 1980', 'SK Mendikbud RI No. 0119/P/1980 tentang Pembentukan Dewan Penyantun pada Universitas Negeri Surakarta Sebelas Maret', 'Keputusan Menteri', '1 Tahun setelah tidak berlaku', '4 Tahun', '23eb6-12-per-uu-permanen.pdf', ''),
(1099, 'Bagian TU, RT, HTL', 'HK.00.05', '10 Mei 1977', 'SK Mendikbud RI No. 25537/C/1/1977 tentang Pemberhentian Parmanto, MA sebagai Pejabat Sementara Rektor Universitas Negeri Surakarta Sebelas Maret', 'Keputusan Menteri', '1 Tahun setelah tidak berlaku', '4 Tahun', '042dd-11-per-uu-permanen.pdf', ''),
(1100, 'Bagian TU, RT, HTL', 'HK.00.05', '7 Mei 1977', 'SK Mendikbud RI No. 588/C/DPK/1977 tentang Pemberhentian Brigjen. TNI GPH. Haryo Mataram, SH sebagai Rektor Universitas Negeri Surakarta Sebelas Maret dan Pengangkatan Pembantu Rektor I Universitas Negeri Surakarta Sebelas Maret', 'Keputusan Menteri', '1 Tahun setelah tidak berlaku', '4 Tahun', '200a7-10-per-uu-permanen.pdf', ''),
(1101, 'Bagian TU, RT, HTL', 'HK.00.05', '8 Maret 1976', 'SK Mendikbud RI No. 03/C/Depk/1976 tentang Pemberhentian Dengan Hormat Pimpinan IKIP, STO dan mengangkat Pimpinan Universitas Negeri Surakarta Sebelas Maret', 'Keputusan Menteri', '1 Tahun setelah tidak berlaku', '4 Tahun', '7042d-9-per-uu-permanen.pdf', ''),
(1102, 'Bagian TU, RT, HTL', 'HK.00.05', '29 Januari 1976', 'SK Mendikbud RI No. 027/P/1976 tentang Perubahan Keputusan Mendikbud RI No. 001/P/1976 tentang Pembentukan Panitia Persiapan Penegerian UGS di Surakarta', 'Keputusan Menteri', '1 Tahun setelah tidak berlaku', '4 Tahun', 'efaf0-8-per-uu-permanen.pdf', ''),
(1103, 'Bagian TU, RT, HTL', 'HK.00.05', '16 Mei 1975', 'SK Mendikbud RI No. 047/P/1976 tentang Panitia Penyelenggaraan Peresmian Universitas Negeri Surakarta Sebelas Maret', 'Keputusan Menteri', '1 Tahun setelah tidak berlaku', '4 Tahun', 'd3b26-7-per-uu-permanen.pdf', ''),
(1104, 'Bagian TU, RT, HTL', 'HK.00.03', '7-Sep-76', 'Keputusan Presiden RI No. 55 Tahun 1982 tentang Susunan Organisasi Universitas Sebelas Maret', 'Peraturan/Keputusan Presiden', '1 Tahun setelah tidak berlaku', '4 Tahun', 'd9772-6-per-uu-permanen.pdf', ''),
(1105, 'Bagian TU, RT, HTL', 'HK.04.03', '8 Maret 1976', 'Keputusan Presiden RI No. 10 Tahun 1976 tentang Pendirian Universitas Negeri Surakarta Sebelas Maret', 'Peraturan/Keputusan Presiden', '1 Tahun setelah tidak berlaku', '4 Tahun', 'a14d6-naskah-pendirian-universitas-sebelas-maret.pdf', ''),
(1106, 'Bagian TU, RT, HTL', 'HK.00.02', '1999', 'Peraturan Pemerintah RI No. 60 tahun 1999 tentang Pendidikan Tinggi dan Peraturan Pemerintah RI No. 61 Tahun 1999 tentang penetapan Perguruan Tinggi Negeri sebagai Badan Hukum', 'Statuta', 'Selama Masih Berlaku', '2 Tahun', '513eb-4-per-uu-permanen.pdf', ''),
(1107, 'Bagian TU, RT, HTL', 'KP.02.02', '1995', 'Bendel tentang pengangkatan Prof. Drs. Haris Mudjiman, MA, Ph.D sebagai Rektor UNS', 'Pengangkatan Dalam Jabatan Struktural', '1 Tahun setelah SK terbit', '2 Tahun', '86642-3-per-uu-permanen.pdf', ''),
(1108, 'Bagian TU, RT, HTL', 'KP.02.02', '13 Nopember 1990', 'Bendel tentang pemberhentian dan pengangkatan Prof. Dr. Koento Wibisono Siswomihardjo sebagai Rektor UNS', 'Pengangkatan Dalam Jabatan Struktural', '1 Tahun setelah SK terbit', '2 Tahun', '9457c-2-per-uu-permanen.pdf', ''),
(1109, 'Bagian TU, RT, HTL', 'KP.02.02', '1983', 'Bendel tentang pengangkatan pegawai bulanan disamping pensiun tahun ke I a.n. Brigjen TNI dr. Prakosa. Dilengkapi surat pernyataan melaksanakan tugas, naskah serah terima', 'Pengangkatan Dalam Jabatan Struktural', '1 Tahun setelah SK terbit', '2 Tahun', '0b768-1-per-uu-permanen.pdf', ''),
(1110, 'Bagian TU, RT, HTL', 'HK.00.05', '22 Februari 1977', 'SK Mendikbud RI No. 042/O/1997 tentang Olahraga ke dalam Universitas/Institut Keguruan dan Ilmu Pendidikan Negeri', 'Keputusan Menteri', '1 Tahun setelah tidak berlaku', '4 Tahun', '1a283-1-mendikbud.pdf', ''),
(1111, ' Bagian TU, RT, HTL', 'OT.00 Organisasi', '1977 dan 1992', 'Statuta Universitas Sebelas Maret tahun 1977 dan 1992', 'Statuta', 'Selama masih berlaku', '2 tahun', '', ''),
(1112, ' Bagian TU, RT, HTL', 'HK.00.10 Peraturan/ Keputusan Eselon I', '20 Juli 1999', 'SK Dirjen Dikti No.345/Dikti/Kep/ 1999  tentang Pembentukan Prodi S2 Pendidikan Kependudukan dan Lingkungan Hidup UNS', 'Keputusan Dirjen', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1113, ' Bagian TU, RT, HTL', 'HK.00.10 Peraturan/ Keputusan Eselon I', '27 April 1999', 'SK Dirjen Dikti No.134/Dikti/Kep/ 1999  tentang Pembentukan Prodi Obstetri dan Ginekologi Pada Program Pendidikan Dokter Spesialis I UNS', 'Keputusan Dirjen', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1114, ' Bagian TU, RT, HTL', 'HK.00.10 Peraturan/ Keputusan Eselon I', '13 April 1999', 'SK Dirjen Dikti No.125/Dikti/Kep/ 1999 dan SK Dirjen Dikti No. 128/Dikti/Kep/1999 tentang Pembentukan Prodi DIII Bahasa Inggris Pada Fakultas Sastra UNS', 'Keputusan Dirjen', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1115, ' Bagian TU, RT, HTL', 'HK.00.10 Peraturan/ Keputusan Eselon I', '1 Maret 1999', 'SK Dirjen Dikti No.41/Dikti/Kep/ 1999 tentang Pembentukan Prodi DIII Usaha Perjalanan Wisata Pada Fakultas Sastra UNS', 'Keputusan Dirjen', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1116, ' Bagian TU, RT, HTL', 'HK.00.10 Peraturan/ Keputusan Eselon I', '18 Februari 1999', 'SK Dirjen Dikti No.33/Dikti/Kep/ 1999 tentang Pembentukan Prodi DIII Teknik Mesin dan Prodi Teknik Sipil UNS', 'Keputusan Dirjen', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1117, ' Bagian TU, RT, HTL', 'HK.00.10 Peraturan/ Keputusan Eselon I', '11 Juni 1998', 'SK Dirjen Dikti No.161/Dikti/Kep/ 1998 tentang Pembentukan Prodi S2 Ilmu Lingkungan Di UNS', 'Keputusan Dirjen', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1118, ' Bagian TU, RT, HTL', 'HK.00.10 Peraturan/ Keputusan Eselon I', '3 Maret 1998', 'SK Dirjen Dikti No.66/Dikti/Kep/1998 tentang Pembentukan Jurusan Sosiologi Pada FISIP UNS', 'Keputusan Dirjen', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1119, ' Bagian TU, RT, HTL', 'HK.00.10 Peraturan/ Keputusan Eselon I', '27 Februari 1998', 'SK Dirjen Dikti No.53/Dikti/Kep/1998 tentang Pembentukan Program-Program Studi S1 Teknik Industri, Teknik Mesin dan Teknik Kimia Pada Fakultas Teknik UNS', 'Keputusan Dirjen', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1120, ' Bagian TU, RT, HTL', 'HK.00.10 Peraturan/ Keputusan Eselon I', '29 Oktober 1997', 'SK Dirjen Dikti No.414/Dik/Kep/1997 tentang Pembentukan Prodi S2 Linguistik di UNS', 'Keputusan Dirjen', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1121, ' Bagian TU, RT, HTL', 'HK.00.10 Peraturan/ Keputusan Eselon I', '1997', 'SK Dirjen Dikti No.345/Dikti/Kep/ 1997 tentang Pembentukan Prodi DIII Akuntansi Pada Fakultas Ekonomi UNS', 'Keputusan Dirjen', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1122, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '13 Januari 2010', 'Peraturan Mendiknas RI No. 1 Tahun 2010 tentang Perubahan Penggunaan Nama Depdiknas Menjadi Kementerian Pendidikan Nasional', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1123, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '29 Januari 2003', 'SK Mendikbud RI No. 10/MPN.A4/ KP/2003 tentang Penunjukan Prof. Drs. Haris Mudjiman, MA,Ph.D Bertindak Sebagai Pejabat Rektor UNS Selama Belum Ditetapkannya Rektor UNS Yang Definitif', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1124, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '13 Agustus 2002', 'SK Mendikbud RI No.156/O/2002 tentang Perubahan Atas Keputusan Mendikbud No. 0201/O/1995 tentang Organisasi dan Tata Kerja UNS', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1125, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '22 Desember 1999', 'SK Mendikbud RI No. 304/U/1999 tentang Perubahan Penggunaan Nama Dedikbud Menjadi Depdiknas', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1126, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '15 April 1997', 'SK Mendikbud RI No. 42350/A2.1.2 /KP/1997 tentang Pengangkatan Drs. Muslih Sebagai Pejabat Pembantu Dekan III Fakultas MIPA UNS', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1127, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '15 April 1997', 'SK Mendikbud RI No. 42349/A2.1.2/ KP/1997 tentang Pengangkatan Soetomo Darso Wiratmo, M.Sc sebagai Pejabat Dekan Fakultas MIPA UNS', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1128, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '1997', 'SK Mendikbud RI No.103/Jat/KP/ 1997 tentang Pemberhentian dan Pengangkatan Kepala Sub Bagian di Lingkungan UNS', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1129, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '1 Oktober 1996', 'SK Mendikbud RI No.0297/O/1996 tentang Pendirian Fakultas MIPA UNS', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1130, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '22 Mei 1995', 'SK Mendikbud RI No.28592/A2.1.2 / C/1995/ tentangPemberhentian dan Pengangkatan Pembentu Rektor UNS', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1131, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '19,931,995', 'SK Mendikbud RI No. 019/O/1993 tentang Organisasi dan Tata Kerja UNS serta SK Mendikbud RI No. 0201/O/1995 tentang Organisasi dan Tata Kerja UNS', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1132, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '18 Nopember 1985', 'SK Mendikbud RI  No. 0558/O/ 1985, tentang Perincian Tugas Bagian, Sub Bagian dan Urusan di Lingkugan UNS', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1133, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '8 Desember 1983', 'SK Mendikbud RI No. 0555/O/1983 tentang Jenis dan Jumlah Jurusan Pada Fakultas di lingkungan UNS', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1134, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '29 Maret 1980', 'SK Mendikbud RI No. 0119/P/1980 tentang Pembentukan Dewan Penyantun Pada  Universitas Negeri Surakarta Sebelas Maret', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1135, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '10 Mei 1977', 'SK Mendikbud RI No. 25537/C/ 1/ 1977 tentang Pemberhentian Parmanto, MA Sebagai Pejabat Sementara Rektor Universitas Negeri Surakarta Sebelas Maret', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1136, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '7 Mei 1977', 'SK Mendikbud RI No.588/C/DPK /1977 tentang Pemberhentian Brigjen. TNI GPH. Haryo Mataram, SH sebagai Rektor  Universitas Negeri Surakarta Sebelas Maret dan Pengangkatan Pembentu Rektor I  Universitas Negeri Surakarta Sebelas Maret Sebagai Pejabat Sementara', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1137, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '8 Maret 1976', 'SK Mendikbud RI No. 03/C/Depk / 1976 tentang Pemberhentian Dengan Hormat Pimpinan IKIP, STO dan Mengangkat Pimpinan Universitas Negeri Surakarta Sebelas Maret', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1138, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '29 Januari 1976', 'SK Mendikbud RI No. 027/P/1976 tentang Perubahan Keputusan Mendikbud RI No. 001/P/1976 tentang Pembentukan Panitia Persiapan Penegerian UGS di Surakarta', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1139, ' Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '16 Mei 1975', 'SK Mendikbud RI No. 047/P/1976 tentang Panitia Penyelenggaraan Peresmian Universitas Negeri Surakarta Sebelas Maret', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1140, ' Bagian TU, RT, HTL', 'HK.00.03 Peraturan/ Keputusan Presiden', '7-Sep-76', 'Keputusan Presiden RI No. 55 Tahun 1982 tentang Susunan Organisasi Universitas  Sebelas Maret', 'Peraturan/ Keputusan Presiden', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1141, ' Bagian TU, RT, HTL', 'HK.00.02 Peraturan Pemerintah', '1999', 'Peraturan Pemerintah RI No. 60 tahun 1999 tentang Pendidikan Tinggi dan Peraturan Pemerintah RI No. 61 Tahun 1999 tentang Penetapan Perguruan Tinggi Negeri Sebagai Badan Hukum', 'Statuta', 'Selama masih berlaku', '2 tahun', '', ''),
(1142, ' Bagian TU, RT, HTL', 'KP.02.02 Pengangkatan Dalam Jabatan Struktural', '1995', 'Bendel tentang pengangkatan Prof. Drs. Haris Mudjiman, MA, Ph.D sebagai Rektor UNS', 'Pengangkatan Dalam Jabatan Struktural', '1 tahun setelah SK terbit', '2 tahun', '', ''),
(1143, ' Bagian TU, RT, HTL', 'KP.02.02 Pengangkatan Dalam Jabatan Struktural', '13 Nopember 1990', 'Bendel tentang pemberhentian dan pengangkatan Prof. Dr. Koento Wibisono Siswomihardjo sebagai Rektor UNS', 'Pengangkatan Dalam Jabatan Struktural', '1 tahun setelah SK terbit', '2 tahun', '', ''),
(1144, ' Bagian TU, RT, HTL', 'KP.02.02 Pengangkatan Dalam Jabatan Struktural', '1983', 'Bendel tentang pengangkatan pegawai bulanan dismping pensiun tahun ke I a.n. Brigjen TNI dr. Prakosa. Dilengkapi surat pernyataan melaksanakan tugas, naskah serah terima', 'Pengangkatan Dalam Jabatan Struktural', '1 tahun setelah SK terbit', '2 tahun', '', ''),
(1145, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '11 Juni 1999 ', 'SK Mendikbud RI No. 129/U/1999 tentang Perubahan Atas Keputusan Mendikbud RI Nomor 0310/U/1999 tentang Kurikulum Yang Berlaku Secara Nasional Program Sarjana Ilmu Kesehatan', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1146, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '9 Agustus 1987', 'SK Mendikbud RI No. 0207/U/P/ 1987 tentang Pelaksanaan Pendidikan Doktor Di Perguruan Tinggi', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1147, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '21 Januari 1986', 'SK Mendikbud RI No. 0847/O/1986 tentang Pemberian Wewenang Kepada Rektor Universitas/Institut dan Ketua Akademi Negeri Pengelola Beasiswa Peningkatan Prestasi Akademik (Bidang Langka/Ilmu Murni) Pada Masing-Masing Perguruan Tinggi Negeri Untuk Atas Nama Mendikbud Menandatangani Keputusan Mendikbud Tentang Pelaksanaan Pemberian Beasiswa Peningkatan Prestasi Akademik (Bidang Langka/Ilmu Murni) Proyek Peningkatan/Pengembangan Perguruan Tinggi Mulai Tahun Anggaran 1986/1987', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1148, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '11 Nopember 1985', 'SK Mendikbud RI No. 0528/P/1985 tentang Tata Cara Mendapatkan Surat Keterangan Belum Pernah Membeli Kendaraan dan Pengawasan Pelaksanaan Pelunasan Kredit', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1149, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '29 Agustus 1985', 'SK Mendikbud RI No. 65700/C/ KI.2 / 1985 tentang Tpenetapan Kembali Pengangkatan Kepala Perpustakaan Di Lingkungan UNS di Surakarta Dalam Jabatan Struktural Eselon IIIa (a.n. Suwondo Atmodjahnawi, SH)', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1150, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '11 Juli 1985', 'SK Mendikbud RI No. 0302a/H/1985 tentang Ketentuan Wajib Lapor di Negara Yang Bersangkutan Bagi Pelajar, Mahasiswa dan Sarjana Indonesia Yang Belajar di Luar Negeri', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1151, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '23 Maret 1985', 'SK Mendikbud RI No. 0157/P/1985 tentang Pemberian Beasiswa Kepada Mahasiswa Asal Timor-Timur', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1152, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '11 Maret 1985', 'SK Mendikbud RI No. 0112/O/1985 tentang Perubahan Keputusan Mendikbud No. 0555/O/1983 dan 0570/O/1983 (Jurusan Ilmu Kedokteran Dasar Umum menjadi Jurusan Ilmu Kedokteran Dasar UNS)', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1153, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '11 Maret 1985', 'SK Mendikbud RI No. 0108/U/1985 tentang Tata Cara Pemilihan Calon Ketua dan Sekretaris Jurusan Di Lingkungan Universitas Negeri', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1154, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '11 Januari 1985', 'SK Mendikbud RI No. 1/U/1985 tentang Pengembangan Minat Keprofesian', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1155, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '17 Nopember 1984', 'SK Mendikbud RI No. 0554/U/1984 tentang Tanggal Penyelenggaraan Dies Natalis Universitas/Institut Negeri Di Lingkungan Depdikbud', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1156, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '4 Oktober 1984', 'SK Mendikbud RI No. 0446/U/1984 tentang Pembakuan Judicium Lulusan Ujian Pada Universitas / Institut Negeri Di Lingkungan Depdikbud', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1157, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '17-Sep-84', 'SK Mendikbud RI No. 0422/U/1984 tentang Pemberian Wewenang Kepada Pejabat Tertentu Di Lingkungan Depdikbud Untuk Mengesahkan Salinan atau Fotokopi Ijazah/Surat Tanda Tamat Belajar dan Surat Keterangan Pengganti Atau Dokumen Lainnya Yang Berpenghargaan Sama Dengan Ijazah/Surat Tanda Tamat Belajar', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1158, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '5-Sep-84', 'SK Mendikbud RI No. 0419/U/1984 tentang Pedoman Tata Cara Penerimaan Tamu Asing Di Lingkungan Depdikbud', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1159, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '13 Juli 1984', 'SK Mendikbud RI No. 0305/O/1984 tentang Tata Cara Pemilihan Calon Ketua Lembaga/Sekretaris Lembaga /Kepala Pusat/Kepala Balai Penelitian dan Calon Ketua Lembaga /Sekretaris Lembaga/Kepala Pusat/ Kepala Balai Pengabdian Pada Masyarakat di Lingkungan Universitas/Institut Negeri', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1160, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '5 April 1984', 'SK Mendikbud RI  No. 0171/O/ 1984, tentang Penataan Laboratorium/Studio Pada Jurusan di Lingkungan/Institut Negeri', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1161, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '22 Maret 1984', 'Keputusan Bersama Mendikbud dan Menteri  Koperasi RI  No. 0158/P/ 1984 No. 51/M/KPTS/III/1984, tentang Pola Dasar Pembinaan Pendidikan Perkoperasian ', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1162, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '31 Juli 1984', 'SK Mendikbud RI No. 5/U/1984 tentang Pendidikan Perkoperasian', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1163, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '22 Agustus 1983', 'SK Mendikbud RI No. 79259/C/ 1/ 1983 tentang Pengangkatan Kabag Perencanaan, Kabag Registrasi dan Statistik, Kabag Kemahasiswaan, Kabag Umum dan Perlengkapan, Kabag Kepegawaian, Kabag Keuangan dan Kabag TU FP di Lingkungan UNS', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1164, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '21 Oktober 1983', 'SK Mendikbud RI No. 0456/U/1983 tentang Ujian Masuk Perguruan Tinggi Negeri  Di Lingkungan Universitas/ Institut Negeri', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1165, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '22 Desember 1980', 'SK Mendikbud RI No. 0282/O/1980 tentang Tata Cara Pemilihan Calon  Dekan Di Lingkungan Universitas/ Institut Negeri', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1166, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '22 Desember 1980', 'SK Mendikbud RI No. 0281/O/1980 tentang Tata Cara Pemilihan Calon Pembantu Rektor/Pembantu Dekan Di Lingkungan Universitas/Institut Negeri', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1167, 'Bagian TU, RT, HTL', 'HK.00.05 Peraturan/Keputusan Menteri', '19 Desember 1980', 'SK Mendikbud RI No. 0277/O/1980 tentang Surat Tanda Tamat Belajar Pendidikan Guru Sekolah Lanjutan Pertama Mempunyai Nilai atau Memperoleh Penghargaan Yang Sama Dengan Ijazah Program Diploma I atau Program Akta I', 'Keputusan Menteri', '1 tahun setelah tidak berlaku', '4 tahun', '', ''),
(1175, 'a', 'a', 'a', 'a', 'a', 'a', 'a', '3_hosting1.pdf', '1'),
(1176, 'b', 'b', 'b', 'b', 'b', 'b', 'b', '5_Bensin_ais_11.pdf', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_arsip_video`
--

CREATE TABLE `tb_arsip_video` (
  `id_arsip_video` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `narasi` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `grup` int(11) NOT NULL,
  `tahun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_arsip_video`
--

INSERT INTO `tb_arsip_video` (`id_arsip_video`, `judul`, `narasi`, `video`, `grup`, `tahun`) VALUES
(1, 'video 1', 'ini adalah narasi', 'WhatsApp_Video_2021-12-23_at_9_28_15_AM.mp4', 6, 0),
(2, 'ini video 2', 'ini adalah narasi', 'WhatsApp_Video_2021-12-23_at_9_28_14_AM.mp4', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_artikel`
--

CREATE TABLE `tb_artikel` (
  `id_artikel` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `jenis_artikel` varchar(255) NOT NULL,
  `tgl_publikasi_artikel` date NOT NULL,
  `judul_artikel` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_artikel`
--

INSERT INTO `tb_artikel` (`id_artikel`, `gambar`, `jenis_artikel`, `tgl_publikasi_artikel`, `judul_artikel`, `author`, `isi`) VALUES
(2, '001-ANRI_UNS_Sepakati_MoU_Aplikasi_SIKS2.png', 'berita', '2015-06-30', '	 ANRI – UNS Sepakati MoU Aplikasi SIKS', 'admin', '<p>Arsip Nasional Republik Indonesia (ANRI) dan Universitas Sebelas Maret (UNS) Surakarta sepakati nota kesepahaman aplikasi Sistem Informasi Kearsipan Statis (SIKS), Selasa (30/6/2015). Berlangsung di ruang sidang IV Kantor Pusat dr. Prakosa, penyerahan aplikasi SIKS ini langsung diserahkan Sekretaris Utama ANRI, Gina Masudah Husni kepada Wakil Rektor IV UNS Surakarta, Widodo Muktiyo.</p>\r\n\r\n<p>Aplikasi Sistem Informasi Kearsipan Statis (SIKS) merupakan aplikasi yang dikembangkan ANRI untuk membantu menangani pengelolaan arsip statis di lingkungan lembaga kearsipan serta menyajikannya untuk dapat diakses oleh masyarakat.<br />\r\n<br />\r\nAplikasi SIKS memungkinkan data statis yang dimiliki UNS dapat diakses umum. UNS juga menjadi bagian dari jaringan kearsipan nasional. Sehingga masyarakat umum dapat melilihat perkembangan UNS dilihat dari kearsipannya. Sebagai aset publik, arsip harus disajikan untuk masyarakat dan institusi yang memilikinya wajib membagi kepada masyarakat.<br />\r\n<br />\r\nJenis-jenis arsip yang dimiliki perguruan tinggi antara lain; pengembangan kelembagaan, program dan evaluasi, kerjasama antar lembaga, registrasi mahasiswa, kurikulum, tugas akhir, penetapan kelulusan, ijazah dan transkrip, data alumni, prestasi mahasiswa, dan berkas perorangan mahasiswa.<br />\r\n<br />\r\nMenurut Tasdik Pramono, pengembang aplikasi SIKS , arsip-arsip statis yang dimiliki sebuah institusi kebanyakan tidak tertata dan tidak terurus. Dengan aplikasi SIKS ini, arsiparis terbantu untuk menata arsip statis sehingga mudah dicari kembali bila suatu saat dibutuhkan. Tasdik menambahkan, prinsip dasar aplikasi ini seperti mesin pencari google, dengan mengetikkan kata kunci, pencari data dapat mengakses dengan cepat. Penggunaan aplikasi SIKS ini juga turut membantu melestarikan arsip statis yang bersifat selamanya karena pencari data tidak perlu memegang langsung arsip statis tersebut, cukup arsip statis berupa soft data yang tersimpan di SIKS. [] (nana.red.uns.ac.id)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>sumber: uns.ac.id</em></p>\r\n'),
(3, '002-UPT_Kearsipan_UNS_Dapat_Penghargaan_LKPT_Terbaik_II1.jpg', 'berita', '2015-08-17', 'UPT Kearsipan UNS Dapat Penghargaan LKPT Terbaik II', 'admin', '<p>Unit Pelaksana Teknis (UPT) Kearsipan Universitas Sebelas Maret (UNS) Surakarta mendapat penghargaan terbaik kedua kategori Lembaga Kearsipan Perguruan Tinggi (LKPT) oleh Arsip Nasional Republik Indonesia, Senin (17/8/2015). Penganugerahan ini merupakan salah satu agenda rutin yang diselenggarakan Arsip Nasional Republik Indonesia dalam rangka memperingati Hari Ulang Tahun ke-70 Proklamasi Kemerdekaan Republik Indonesia. Bertempat di Hotel Red Top Jakarta, Mohamad Yamin menerima piagam penghargaan tersebut yang diserahkan langsung oleh Kepala Arsip Nasional Republik Indonesia (ANRI), Mustari Irawan.</p>\r\n\r\n<p>Adapun penilaian lembaga kearsipan perguruan tinggi berdasarkan pada enam indikator yakni Norma, Standar Pedoman dan Kriteria (NSPK), Pengelolaan Arsip Inaktif, Kelembagaan, Sarana dan Prasarana, Sumber daya manusia, serta pembinaan kearsipan. Setelah lolos seleksi administrasi, LKPT terpilih melakukan presentasi di depan para dewan penguji. UPT Kearsipan UNS berhasil meraih terbaik II setelah Universitas Gajah Mada dan mengalahkan Universitas Udayana sebagai terbaik III. Selain kategori Lembaga Kearsipan Perguruan Tinggi, ANRI juga memberikan penghargaan kepada kepada unit kearsipan, Lembaga Kearsipan Daerah (LKD) terbaik serta arsiparis teladan tingkat nasional.</p>\r\n\r\n<p>Yani Maryudiasti, Arsiparis UPT Kearsipan UNS menuturkan, UPT yang yang baru diresmikan 3 Juni 2015 ini memiliki keunggulan pada khazanah kearsipannya. UPT Kearsipan UNS menyimpan dan mengelola foto-foto dokumentasi sejak UNS berdiri, dokumen-dokumen penting bahkan rancang bangun yang ada di UNS.</p>\r\n\r\n<p><em>sumber:&nbsp;<a href=\"http://uns.ac.id/id/uns-update/upt-kearsipan-uns-dapat-penghargaan-lkpt-terbaik-ii.html\" target=\"_blank\">http://uns.ac.id/id/uns-update/upt-kearsipan-uns-dapat-penghargaan-lkpt-terbaik-ii.html</a></em></p>\r\n'),
(4, '003-Sosialisasi_Peraturan_Rektor_Nomor_21_Tahun_2017_tentang_Penyelenggaran_Kearsipan1.jpg', 'berita', '2017-08-29', 'Sosialisasi Peraturan Rektor Nomor 21 Tahun 2017 tentang Penyelenggaran Kearsipan', 'admin', '<p>Unit Pelaksana Teknis (UPT) Kearsipan Universitas Sebelas Maret telah melakukan sebuah kegiatan &ldquo;Sosialisasi Peraturan Rektor Nomor 21 Tahun 2017 tentang Penyelenggaran Kearsipan&rdquo; bertempat di Ruang Madukara UNS INN, Selasa (29/08/2017). Pada kesempatan ini, UPT Kearsipan UNS telah melahirkan sebuah pedoman kearsipan sebagai dasar hukum terciptanya pengelolaan arsip yang lebih baik dan benar, dimana sosialisasi Peraturan Rektor merupakan Program Kerja UPT Kearsipan UNS. Peraturan Rektor No. 21 Tahun 2017 tentang Penyelenggaraan Kearsipan akan di sosialisasikan dalam rentang waktu 6 (enam) bulan terhitung mulai tanggal 11 September sampai dengan 28 Februari 2018, maka dapat diimplementasikan Peraturan tersebut, diantaranya; Membentuk Organisasi Unit Kearsipan 2; Memberdayakan sumber daya pendukung kearsipan seperti: menunjuk pengolah arsip, menyediakan anggaran untuk kegiatan kearsipan, menyediakan sarana dan prasarana untuk kegiatan kearsipan; Melakukan Pembinaan Kearsipan; Melakukan Pengelolaan Arsip Dinamis: vital, aktif, dan inaktif; Melakukan Penyerahan Arsip Statis ke UPT Kearsipan. Banyak hal yang melatarbelakangi terciptanya Peraturan Rektor seperti tersebut diatas, salah satunya ialah kurangnya tenaga ahli atau arsiparis di UNS sendiri yang menimbulkan pengelolaan kearsipan yang masih belum terpusat. Produk Peraturan Rektor No. 21 tahun 2017 juga mendapatkan bantuan dan pembekalan dari ANRI (Arsip Nasional Republik Indonesia).</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Prinsip kearsipan yang diusung pada Peraturan Rektor No. 21 tahun 2017 ialah Keterbukaan Informasi Publik (KIP).&nbsp;<strong>Keterbukaan Informasi Publik</strong>&nbsp;adalah salah satu produk hukum&nbsp;<a href=\"https://id.wikipedia.org/wiki/Indonesia\" title=\"Indonesia\">Indonesia</a>&nbsp;yang dikeluarkan dalam tahun 2008 dan diundangkan pada tanggal&nbsp;<a href=\"https://id.wikipedia.org/wiki/30_April\" title=\"30 April\">30 April</a>&nbsp;<a href=\"https://id.wikipedia.org/wiki/2008\" title=\"2008\">2008</a>&nbsp;dan mulai berlaku dua tahun setelah diundangkan menurut&nbsp;<strong>Undang-Undang No. 14 tahun 2008.&nbsp;</strong>Undang-undang yang terdiri dari 64 pasal ini pada intinya memberikan kewajiban kepada setiap&nbsp;<a href=\"https://id.wikipedia.org/wiki/Badan_Publik\" title=\"Badan Publik\">Badan Publik</a>&nbsp;untuk membuka akses bagi setiap pemohon&nbsp;<a href=\"https://id.wikipedia.org/wiki/Informasi_publik\" title=\"Informasi publik\">informasi publik</a>&nbsp;untuk mendapatkan informasi publik, kecuali beberapa informasi tertentu. Dalam materi dengan tema &ldquo;Profesionalisme dan Eksistensi Arsiparis dalam Rangka Pengelolaan Arsip Perguruan Tinggi untuk mendukung Tertib Administrasi&rdquo;, Muhammad Sumitro, S.H., MAP, Direktur SDM dan Sertifikasi ANRI, memaparkan bahwa objek dari Undang-undang diatur secara tegas untuk Perguruan Tinggi. Arsiparis sebagai tenaga ahli kearsipan perlu memiliki tingkat kemampuan yang dapat mendorong kemajuan nilai guna arsip itu sendiri. Namun jika dilihat dari tingkat kebutuhannya, sampai saat ini arsiparis di lingkungan UNS hanya terdapat 17 orang saja, hal inilah yang mendasari minimnya SDM pada bidang kearsipan. Namun dalam pencarian tenaga ahli juga banyak hambatan. Kategori inpassing kearsipan terdiri dari 2 bagian; kategori keterampilan (D3) dan keterampilan keahlian (D4 dan S1). Hal ini untuk menyiapkan profesionalisme profesi kearsipan dalam pengelolaan arsip Perguruan Tinggi. Kegiatan yang mendukung aktivitas administrasi, dapat digunakan untuk membantu proses pengadministrasian dengan baik dan terstruktur.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pengawasan Kearsipan di Lingkungan Universitas Sebelas Maret dilakukan oleh Satuan Pengawas Internal (SPI) UNS.&nbsp;<strong>Pengawasan kearsipan&nbsp;</strong>adalah proses kegiatan dalam menilai kesesuaian antara prinsip, kaidah dan standar kearsipan dengan penyelenggaraan kearsipan. Menurut Drs. Wahyu Nurharjadmo, M.Si, Sekretaris Satuan Pengawas Internal UNS, Pengorganisasian Kearsipan dapat dilakukan bersama-sama antara SPI (Satuan Pengawas Internal) dan UPT Kearsipan. Pelaksanaan pengawasan kearsipan meliputi perencanaan pengawasan kearsipan, audit kearsipan, penilaian hasil pengawasan kearsipan, monitoring hasil pengawasan kearsipan. Peraturan Rektor UNS No. 21 tahun 2017 tentang pedoman penyelenggaraan kearsipan, belum diatur secara khusus tentang pengawasan kearsipan sehingga belum ada payung hukumnya dalam penyelenggaraan kearsipan. Bagian anggota tim pengawas terdiri dari pejabat fungsional arsiparis dan pejabat fungsional di bidang pengawasan atau audit.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Penyelenggaraan Kearsipan selanjutnya dibagi menjadi beberapa tahapan yaitu, perencanaan, pelaksanaan, pengendalian, dan hasil. UPT Kearsipan UNS selaku Lembaga Keasipan Perguruan Tinggi merupakan pusat terkumpulnya arsip dari setiap kegiatan penyelenggaraan kearsipan di Universitas Sebelas Maret. Tahapan penyelenggaran kearsipan memiliki aturan-aturan yang harus dipatuhi untuk menjaga keotentikan (keaslian) arsip. Hal ini karena arsip merupakan informasi yang tidak dapat dipisahkan. Menurut Drs. Joko Sugiyatno, Kepala UPT Kearsipan Universitas Sebelas Maret, Penyelenggaraan Kearsipan juga meliputi kebijakan, tanpa bantuan dan kerja sama pimpinan tertinggi semua itu tidak akan tersinergi dan terlaksana. Setiap penyelenggaraan kearsipan juga memerlukan pedoman sebagai landasan hukum, hal ini terdapat pada Norma, Standar Pedoman dan Kriteria (NSPK). Maka dari itu terbentuklah sebuah kerjasama (MoU) antara Pusat Arsip UNS dengan ANRI, tentang SIKD (Sistem Informasi Kearsipan Dinamis) dan SIKS (Sistem Informasi Kearsipan Statis) pada tahun 2013 saat UPT Kearsipan belum didirikan. Seluruh kegiatan penyelenggaraan kearsipan harus bersinergi dengan tiap-tiap unit pencipta dan pengolah di lingkungan Universitas Sebelas Maret. Arsip Perguruan Tinggi merupakan bagian dari Arsip Negara berkaitan dengan keberadaan dan kelangsungan organisasi di lingkungan UNS yang harus dijaga keutuhan, keamanan, dan keselamatannya. Terjaganya sistem kearsipan dalam sebuah instansi harus diiringi dengan Sistem Klasifikasi Keamanan Akses Arsip (SKKAA) yang baik dan benar sehingga untuk ke depannya mengacu pada regulasi-regulasi. Sehingga lahirlah motto dari UPT kearsipan yaitu &ldquo;Arsip yang Terjaga adalah Pondasi Organisasi yang Kokoh.&rdquo;</p>\r\n'),
(5, '004-Sosialisasi_Peraturan_Rektor_tentang_Pedoman_Pengelolaan_Arsip_Dinamis_No__04,_05,_dan_06_Tahun_20181.jpg', 'berita', '2019-09-13', 'Sosialisasi Peraturan Rektor tentang Pedoman Pengelolaan Arsip Dinamis No. 04, 05, dan 06 Tahun 2018', 'admin', '<p>Kamis, 13/09/2018 bertempat di Ruang Madukoro UNS Inn UPT Kearsipan Universitas Sebelas Maret menyelenggarakan acara Sosialisasi Peraturan Rektor tentang Pedoman Pengelolaan Arsip Dinamis. acara tersebut dihadiri kepala bagian di masing-masing unit kerja dan peserta sosialisasi yang merupakan arsiparis, pengelola arsip/petugas arsip dan pengentry surat di unit kerja lingkungan Universitas Sebelas Maret. Sosialisasi Peraturan Rektor tentang Pedoman Pengelolaan Arsip Dinamis mengundang narasumber dari Arsip Nasional Republik Indonesia (ANRI) Dra. Sulistyowati, M.M selaku Kepala Subdirektorat Kearsipan Pusat III. tujuan acara sosialisasi untuk&nbsp; memberikan wawasan mengenai kedudukan serta peranan kearsipan Perguruan Tinggi Negeri. Penerapan kearsipan yang sesuai aturan dan kaidah harus dimulai sejak dini serta&nbsp; diterapkan pada tempat kerja untuk keberlangsungan hidup lembaga.&nbsp;</p>\r\n\r\n<p>Sosialisasi Peraturan Rektor mendatangkan tiga orang pemateri yang memberikan informasi dan gambaran tentang Peraturan Rektor&nbsp; tentang Pedoman Pengelolaan Arsip Dinamis yang meliputi Peraturan Rektor No 03 Tahun 2018 tentang Pedoman Pengelolaan Arsip Dinamis Aktif, Peraturan Rektor No 04 Tahun 2018 tentang Pedoman Pengelolaan Arsip Dinamis Inaktif dan Peraturan Rektor No 05 Tahun 2018 tentang Pedoman Penyusutan Arsip. tiga pemateri tersebut merupakan arsiparis-arsiparis yang berkompeten di bidang kearsipan di Universitas Sebelas Maret adalah Puji Arya Yanti, A.Md., Yani Maryudiasti, S. Sos., Nike Sri Nunarni, S. Mn. diharapkan peserta mampu menerapkan peraturan rektor tersebut di unit kerja.</p>\r\n'),
(6, '005-Kunjungan_Kearsipan_Badan_Ekonomi_Kreatif_(Bekraf)1.jpg', 'berita', '2018-08-24', 'Kunjungan Kearsipan Badan Ekonomi Kreatif (Bekraf)', 'admin', '<p>Pada tanggal 24 Agusutus 2018, UPT Kearsipan menerima kunjungan kearsipan dari Badan Ekonomi Kreatif (Bekraf) dan diterima langsung oleh Kepala UPT Kearsipan Universitas Sebelas Maret Bapak Drs. Joko Sugiatno. kunjungan tersebut dimaksudkan untuk peningkatan wawasan dalam bidang karsipan dan penguatan lembaga, mengingat Bekraf merupakan lembaga yang baru dan berdiri di era kepemimpinan Presiden RI Joko Widodo.</p>\r\n'),
(7, '006-Pelatihan_Pengelolaan_Teknis_Kearsipan_2018_Angkatan_2_(dua)1.jpg', 'berita', '2018-07-25', 'Pelatihan Pengelolaan Teknis Kearsipan 2018 Angkatan 2 (dua)', 'admin', '<p>Pada hari selasa s.d. rabu tanggal 24 s.d. 25 Juli 2018 telah dilaksanakan Pelatihan Pengelolaan Teknis Kearsipan 2018 pada angkatan II (dua) yang melibatkan beberapa unit kerja yang ada, baik di Fakultas maupun di Kantor Pusat Universitas Sebelas Maret sebanyak 30 peserta. Sesuai Peraturan Rektor nomor 21 tahun 2017 tentang Penyelenggaraan Kearsipan di Universitas Sebelas Maret, maka UPT Kerasipan UNS beserta UPSDM &amp; Remunerasi menyelenggarakan pelatihan teknis kearsipan untuk pengentry surat masuk/keluar, petugas persuratan/tata usaha, dan staf pengadministrasi prodi berupa Tata Naskah Dinas yang diampu oleh Ana Fitri Andriani, S.Sos., M.I.Kom, Pola Klasifikasi &amp; Jadwal Retensi Arsip diampu oleh Nike Sri Sunarni, S.Mn, Pengelolaan Arsip Dinamis Aktif diampu oleh Puji Arya Yanti, A.Md pada hari pertama pelaksanaan bimtek kearsipan, dan dilanjutkan materi Penyusutan Arsip oleh Yani Maryudiasti, S.Sos pada hari kedua.</p>\r\n\r\n<p>Pelatihan Pengelolaan Teknis Kearsipan 2018 diharapkan mampu memberikan pemahaman mengenai kearsipan di lingkungan unit kerja masing-masing peserta bimtek, terlebih lagi dengan adanya bimtek ini sebagai instrument aplikasi&nbsp;<em>E-Office&nbsp;</em>SIKD (Sistem Informasi Kearsipan Dinamis) Universitas Sebelas Maret.&nbsp;</p>\r\n\r\n<p>Selanjutnya akan diteruskan dengan angkatan ketiga pada tanggal 31 Juli s.d. 1 Agustus 2018.</p>\r\n'),
(8, '007-Pembukaan_Pelatihan_Pengelolaan_Teknis_Kearsipan_UNS_20181.png', 'berita', '2018-07-10', 'Pembukaan Pelatihan Pengelolaan Teknis Kearsipan UNS 2018', 'admin', '<p>Pada hari ini Selasa, 10 Juli 2018 bertempat di Ruang Werkudara UPT Perpustakaan UNS telah diselenggarakan Pembukaan Pelatihan Pengelolaan Teknis Kearsipan Universitas Sebelas Maret Tahun 2018 &nbsp;yang dihadiri oleh para pejabat, pimpinan dan Kepala Bagian Tata Usaha disetiap Bagian/Unit Kerja lainnya di Universitas Sebelas Maret dan diikuti 30 peserta Angkatan 1 diantaranya terdiri dari pengentry surat masuk/keluar, petugas persuratan/tata usaha, dan Staf Administrasi Prodi. Acara dilanjutkan menuju ruang Nakula lantai II UPT Perpustakaan UNS.</p>\r\n\r\n<p>Acara ini dibuka langsung oleh Wakil Rektor Bidang Umum dan Keuangan Bapak Dr. Mohammad Jamin, S.H., M. Hum. Beliau menyampaikan bahwa Pelatihan Pengelolaan Teknis Kearsipan saat ini dalam rangka memberi bekal kepada pelaksana administrasi, untuk lebih memahami dan terampil dalam pengelolaan arsip dinamis, sesuai dengan norma/nilai, standar, kriteria, dan prosedur pengelolaan arsip. Juga mengingatkan kepada Kepala Bagian/Kasubbag/Ketua Lembaga atas peran dan tanggungjawabnya dalam pengelolaan arsip dinamis.</p>\r\n\r\n<p>Pelatihan Pengelolaan Teknis Kearsipan Universitas Sebelas Maret Tahun 2018 diselenggarakan oleh UPSDM &amp; Remunerasi sebagai penanggungjawab dan UPT Kearsipan sebagai pelaksana. Kegiatan ini berlangsung selama dua hari berturut-turut, untuk Angkatan 1 pada hari Selasa s.d. Rabu tanggal 10 s.d. 11 Juli 2018. Direncanakan ada 4 angkatan dan masing-masing angkatan 30 peserta.</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(9, '008-Peluncuran_e-Office_SIKD_Universitas_Sebelas_Maret1.jpg', 'berita', '2018-09-25', 'Peluncuran e-Office SIKD Universitas Sebelas Maret', 'admin', '<p>25 September 2018, bertempat di Ruang Indraprasta UNS Inn Hotel telah terselenggara acara peluncuran e-Office SIKD Universitas Sebelas Maret. Dihadiri oleh Kepala Deputi Bidang Pembinaan Kearsipan Arsip Nasional Republik Indonesia Dr. Andi Kasman,. S.E., M.M, Wakil Rektor Bidang Umum dan Keuangan Universitas Sebelas Maret Dr. Mohammad Jamin, S.H., M.Hum, dan Pranata Muda Komputer Pusat Data dan Informasi Arsip Nasional Republik Indonesia Tasdik Eko Pramono S. Kom, M.T. acara ini juga dihadiri para pejabat pengambil keputusan di lingkungan UNS, diantaranya adalah Senat, Wakil rektor, Dekan dan Wk. Dekan, Kepala Biro, Kepala UPT, Lembaga, Pascasarjana, RS, Kepala Bagian, Kasubbag KU, Arsiparis dan tamu undangan lainnya sejumlah 100 orang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SIKD,&nbsp; merupakan Sistem Pengolahan Arsip berbasis Teknologi Informasi yang dikembangkan oleh ANRI,&nbsp; dirancang untuk menangani pengelolaan arsip dinamis maupun korespondensi (persuratan). Aplikasi ini adalah&nbsp;<em>web based application&nbsp;</em>dan bersifat&nbsp;<em>multi user</em>. Dengan mengadopsi aplikasi tersebut maka &nbsp;aplikasi&nbsp;<em>E-Office</em>&nbsp;SIKD UNS dimaksudkan untuk melakukan pengelolaan urusan persuratan secara elektronik (<em>E-Office</em>) dengan menerapkan kaidah kearsipan. diluncurkan secara resmi dengan menekan tombol oleh Rektor yang diwakili Wakil Rektor Bidang Umum dan Keuangan Universitas Sebelas Maret didampingi oleh Kepala Deputi Bidang Pembinaan Kearsipan Arsip Nasional Republik Indonesia.</p>\r\n\r\n<p>Proses persiapan&nbsp;<em>e-office</em>&nbsp;SIKD UNS yang cukup panjang, terutama pendalaman 4 pilar utama konten SIKD yaitu Tata Naskah Dinas, Pola Klasifikasi Arsip, Jadwal Retensi Arsip dan Sistem Keamanan dan Hak Akses Arsip. dimulai dari audiensi UPT Kearsipan UNS dengan Rektor di awal tahun 2017, mempersiapkan pengembangan SIKD dengan intensif, melalui kajian-kajian, komunikasi dan kunjungan ke unit-unit dan koordinasi terutama Bagian Umum UNS, UPT TIK UNS dan UPSDM Renumerasi untuk menyamakan persepsi dan bersinergi dalam pelaksanaannya. dan untuk pemantapan rancangan Aplikasi&nbsp;<em>E-Office&nbsp;</em>SIKD UNS, UPT Kearsipan melakukan helpdesk ke ANRI.</p>\r\n\r\n<p>Tujuan dari penyelenggaraan Peluncuran E-Office SIKD UNS tahun 2018 ini, adalah mencanangkan penggunaan seluruh proses pengelolaan urusan persuratan secara elektronik (<em>E-Office</em>) dengan menerapkan kaidah kearsipan secara menyeluruh di lingkungan UNS . Dengan&nbsp;<em>E-Office</em>&nbsp;SIKD UNS akan mempermudah pekerjaan termasuk penemuan kembali, meningkatkan kualitas pelayanan, menyelamatkan bukti aktivitas organisasi dan lain-lainnya.</p>\r\n\r\n<p>Kebijakan&nbsp;<em>E-Office</em>&nbsp;SIKD UNS diharapkan dapat segera diimplementasikan. dengan diadakannya acara tersebut diharapkan 3 bulan ke depan merupakan masa transisi, sosialisasi dan pembelajaran para&nbsp;<em>users</em>, sehingga nanti pada awal tahun 2019, secara menyeluruh sudah dapat diimplementasikan.</p>\r\n\r\n<p><em>Users</em>&nbsp;/ pengguna dimaksud adalah :</p>\r\n\r\n<ol>\r\n	<li>Pejabat Struktural yaitu pejabat eselon 4 ke atas</li>\r\n	<li>Sekretaris</li>\r\n	<li>Pencatat surat</li>\r\n	<li>Pengelola surat</li>\r\n</ol>\r\n\r\n<p>Dengan demikian langkah selanjutnya yang diambil melakukan bimbingan teknis e-Office Sistem Informasi Kearsipan Dinamis Universitas Sebelas Maret dimulai dari jabatan tertinggi Rektor sampai jabatan terendah di lingkungan Universitas, Fakultas, Lembaga, UPT, Pascasarjana Universitas Sebelas Maret.</p>\r\n'),
(10, '009-Workshop_Pengembangan_SIKS_dalam_rangka_Pengelolaan_Arsip_Statis_di_Universitas_Sebelas_Maret1.jpg', 'berita', '2015-06-30', 'Workshop Pengembangan SIKS dalam rangka Pengelolaan Arsip Statis di Universitas Sebelas Maret', 'admin', '<p>Penyelenggaraan Workshop Pengembangan Aplikasi SIKS dilaksanakan dalam rangka pengenalan aplikasi berbasis web untuk pengelolaan arsip statis di UNS, dan sebagai tindak lanjut Memorandum of Understanding pada 30 Juni 2015 antara Arsip Nasional Republik Indonesia (ANRI) dengan Universitas Sebelas Maret (UNS) tentang Sistem Informasi Kearsipan Statis (SIKS) berbasis&nbsp;<em>web-based application.&nbsp;</em>Acara tersebut berlangsung di ruang Giripurna UNS Inn dengan mendatangkan narasumber Pranata Komputer Muda ANRI Tasdik Eko Pramono, S.Kom., MT dan peserta workshop yang meliputi arsiparis serta pengelola arsip pada unit kerja di lingkungan Universitas Sebelas Maret.</p>\r\n\r\n<p>UPT Kearsipan sebagai Lembaga Kearsipan Perguruan Tinggi Negeri di Universitas Sebelas Maret terus melakukan branding serta mengikuti perkembangan teknologi informasi kearsipan yang semakin terdepan sesuai dengan misinya yaitu untuk menyelamatkan arsip bernilai guna permanen/statis sebagai sumber informasi dan pengetahuan.</p>\r\n\r\n<p>Tujuan diadakan workshop tersebut untuk mengenal dan menggali lebih dalam tentang fungsi dari SIKS. Dengan Aplikasi SIKS UNS akan meningkatkan kualitas pelayanan, membantu menangani pengelolaan arsip statis di lingkungan lembaga kearsipan serta menyajikannya, sehingga nantinya data statis yang dimiliki dapat diakses oleh masyarakat.Penggunaan aplikasi SIKS ini juga turut membantu melestarikan arsip statis yang bersifat selamanya atau permanen.</p>\r\n\r\n<p>Workshop tersebut juga membahas tentang pedoman pengolahan arsip statis dan layanan arsip statis yang disampaikan oleh arsiparis-arsiparis Universitas Sebelas Maret yaitu Nike Sri Sunanrni, S. Mn dan Puji Arya Yanti, A. Md. dalam materi yang disampaikan bahwa Aplikasi SIKS ini mempunyai 4 pilar atau komponen pendukung yaitu akuisisi arsip, pengolahan arsip statis, preservasi, dan akses/layanan arsip statis. Meskipun tugas pengelolaan arsip statis berada sepenuhnya di UPT Kearsipan, namun peran unit kerja seperti Lembaga, Fakultas, UPT dll sangat dibutuhkan untuk andil dalam melaksanakan pengelolaan arsip statis di lingkungan Universitas Sebelas Maret.</p>\r\n\r\n<p>Mengingat 2 minggu yang lalu, pada tanggal 25 September 2018 Rektor uns secara resmi meluncurkan&nbsp;<em>e-Office</em>&nbsp;SIKD UNS. diharapkan SIKS UNS dapat diresmikan dan diterapkan di lingkungan Universitas Sebelas Maret pada tahun 2019 mendatang.</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(11, '010-Workshop_Sinkronisasi_Klasifikasi_Arsip,_Jadwal_Retensi_Arsip_dan_Sistem_Klasifikasi,_Keamanan_dan_Akses_Arsip1.jpg', 'berita', '2018-11-07', 'Workshop Sinkronisasi Klasifikasi Arsip, Jadwal Retensi Arsip dan Sistem Klasifikasi, Keamanan dan Akses Arsip', 'admin', '<p>Setiap perguruan tinggi yang tercipta selalu menciptakan arsip. arsip yang berguna bagi keberlangsungan perguruan tinggi negeri maupun swasta, hal ini tertuang dalam UU no 43 Tahun 2009 tentang Kearsipan. Universitas Sebelas Maret merupakan perguruan tinggi negeri dibawah Kementrian Riset, Teknologi dan Pendidikan Tinggi yang pada tahun 2012 UNS telah mengeluarkan pedoman penyelenggaraan kearsipan guna terciptanya penyelenggaraan kearsipan yang baik. selain itu UNS telah mengeluarkan pedoman Tata Naskah Dinas tahun 2016, Klasifikasi Arsip dan JRA tahun 2012.</p>\r\n\r\n<p>Dengan adanya revisi tentang Klasifikasi Arsip, JRA, dan SKKAA yang dibuat oleh Kemenristekdikti dan dikawal oleh ANRI maka terciptalah Peraturan Kmenristekdikti No 23 Tahun 2018 tentang Klasifikasi Arsip, JRA, dan SKKAA di lingkungan Kemenristekdikti dan lingkungan Perguruan Tinggi. setelah resmi keluar peraturan tersebut, UNS menanggapi dan langsung merespon adanya hal tersebut dan pada tanggal 7 November 2018 Universitas Sebelas Maret menyelenggarakan Workshop Sinkronisasi Klasifikasi Arsip, JRA dan SKKAA Universitas Sebelas Maret, dengan menghadirkan narasumber dari ANRI yaitu Dra. Sulistyowati, MM Kepala Subdirektorat III ANRI. workshop tersebut dilaksanakan pada Ruang Giripurna UNS Inn dengan 40 peserta yang merupakan arsiparis dan pengelola arsip di lingkungan Universitas Sebelas Maret.</p>\r\n\r\n<p>Tindak lanjut dari acara tersebut adalah membuat tim kecil untuk mengkaji ulang tentang peraturan tersebut agar sesuai dan dijalankan di lingkungan Universitas Sebelas Maret.</p>\r\n'),
(12, '011-Benchmarking_Kearsipan_Tahun_20181.jpg', 'berita', '2018-11-09', 'Benchmarking Kearsipan Tahun 2018', 'admin', '<p>Dalam penyelenggaraan kearsipan yang baik, setiap organisasi wajib mengelola dan merawat arsip dang mengembangkan sistem informasi kearsipan yang dijadikan sebagai sumber informasi sebagai upaya mudah dalam temu kembali. hal ini menjadikan landasan UPT Kearsipan Universitas Sebelas Maret sebagai Lembaga Kearsipan Perguruan Tinggi yang terus meningkatan&nbsp; dan tak pernah haus untuk mencari pengetahuan dan sharing tentang penyelenggaraan kearsipan untuk kebaikan lembaga.</p>\r\n\r\n<p>UPT Kearsipan melaksanakan kegiatan&nbsp;<em>benchmarking</em>&nbsp;pada tanggal 9 November 2018 ke Dinas perpustakaan dan Arsip Provinsi Jawa Timur dan Politeknik Negeri Malang. pembanding dalam melaksanakan kegiatan benchmarking di Dinas Perpustakaan dan Arsip Provinsi Jawa Timur untuk sharing tentang penciptaan arsip sampai ke akses arsip, dan tentang perawatan arsip dan akses arsip statis. sedangan kegiatan kedua dilaksanakan pada Politeknik Negeri Malang untuk sharing tentang sistem informasi kearsipan yaitu SIKD.</p>\r\n\r\n<p>Banyak yang didapatkan dari kegiatan&nbsp;<em>benchmarking</em>&nbsp;selain mendapatkan jawaban dari sharing tersebut, juga mendapatkan semangat untuk menciptakan penyelengaraan kearsipan yang lebih baik dan menunjang. dan diharapkan ilmu yang telah diperoleh dapat diterapkan di UPT Kearsipan Universitas Sebelas Maret.</p>\r\n'),
(13, '012-01-PENYERAHAN_ARSIP_STATIS_UNIT_KEARSIPAN_II_FEB_KE_UPT_KEARSIPAN_UNS.jpg', 'berita', '2021-06-09', 'PENYERAHAN ARSIP STATIS UNIT KEARSIPAN II FEB KE UPT KEARSIPAN UNS', 'admin', '<p>Sesuai Peraturan Rektor No. 21 Tahun 2017 tentang Penyelenggaraan Kearsipan Pasal 47 pengelolaan arsip statis di lingkungan Universitas dilaksanakan oleh Unit Kearsipan I atau Unit Pelaksana Teknis Kearsipan Universitas terhadap arsip statis yang diserahkan oleh Unit Kearsipan II di lingkungan Universitas dan civitas akademika. Prosedur akuisisi arsip statis dapat dilakukan dengan melakukan verifikasi arsip statis dan penerimaan arsip statis.</p>\r\n\r\n<p>Verifikasi dan persetujuan dari Kepala Unit Kearsipan I atau Unit Pelaksana Teknis Kearsipan Universitas agar dapat di akuisisi.</p>\r\n\r\n<p>Penerimaan arsip harus memperhatikan hal-hal sebagai berikut:</p>\r\n\r\n<ol>\r\n	<li>Arsip diterima dengan aman, tepat, lengkap, dan jelas terbaca;</li>\r\n	<li>Arsip dianggap sah diterima setelah sampai pada petugas penerima arsip yang berwenang;</li>\r\n	<li>Arsip dianggap sah diterima setelah sampai pada penerima yang berhak, dan penerimaan arsip itu harus didokumentasikan dengan cara registrasi oleh unit yang membawahi fungsi persuratan untuk kemudian ditindaklanjuti oleh unit kerja/unit pengolah/unit pencipta arsip; dan</li>\r\n	<li>Pendokumentasian penerimaan arsip dilakukan oleh arsiparis atau pengelola arsip atau pengadministrasi umum untuk dipelihara, disimpan, dan digunakan.</li>\r\n</ol>\r\n\r\n<p><img alt=\"\" src=\"/assets/ckfinder/userfiles/files/bench.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>Pada hari Jumat, 29 Maret 2019 telah dilakukan akuisisi dan penerimaan arsip statis di UPT Kearsipan UNS dari Unit Kearsipan II Fakultas Ekonomi dan Bisnis. Penyerahan secara langsung oleh Kepala Subbagian Keuangan dan Umum Fakultas Ekonomi dan Bisnis Bapak Hendri Prayitno, S.Sos beserta arsiparis FEB ibu Nike Sri Sunarni, S.Mn kepada Kepala UPT Kearsipan Bapak Drs. Joko Sugiyano. Prosedur penyerahan diawali dengan penandatanganan berita acara penyerahan arsip statis oleh kedua belah pihak. Setelah penandatanganan Berita Acara penyerahan arsip dilanjutkan dengan penyerahan daftar arsip statis dan fisik arsip dalam boks arsip. Arsip statis yang diserahkan berupa transkrip akademik mahasiswa pada kurun waktu tahun 1976 sampai 1986.</p>\r\n\r\n<p><img alt=\"\" src=\"/assets/ckfinder/userfiles/files/bench%202.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(14, '01-Pendirian_UPT_Kearsipan_UNS.jpg', 'tentang', '0000-00-00', 'Tentang UPT Kearsipan', 'admin', '<h1>Tentang UPT Kearsipan</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong>SEJARAH SINGKAT</strong></li>\r\n</ol>\r\n\r\n<p>UPT. Kearsipan pertama kali berdiri dengan nama Pusat Arsip Universitas Sebelas Maret. Pusat Arsip Universitas Sebelas Maret diresmikan pada hari Kamis, 3 Maret 2005 oleh Pembantu Rektor I UNS. Peresmian Pusat Arsip Universitas Sebelas Maret diselenggarakan sekaligus dalam rangka memperingati Dies Natalis XXIX UNS Tahun 2005. Pusat&nbsp; Arsip Universitas Sebelas Maret awal berdirinya menjadi salah satu tugas Sub Bagian Tata Usaha Bagian TU, RT, HTL Universitas Sebelas Maret. Tujuan pendirian Pusat Arsip Universitas Sebelas Maret pada saat itu adalah pengendalian dan pengawasan arsip, memudahkan penemuan kembali arsip, pengamanan arsip, efisiensi tempat dan sarana prasarana.</p>\r\n\r\n<p>Seiring dengan meningkatnya fungsi dan peran Pusat Arsip Universitas Sebelas Maret tidak hanya sebagai tulang punggung kelancaraan proses administrasi di Universitas Sebelas Maret tetapi juga berperan menyelamatkan arsip yang bernilai guna sejarah, maka Pusat Arsip Universitas Sebelas Maret, malalui Peraturan Menteri Pendidikan dan Kebudayaan RI No. 82 Tahun 2014 tanggal 20 Agustus 2014 tentang Organisasi dan Tata Kerja Universitas Sebelas Maret didirikanlah UPT. Kearsipan Universitas Sebelas Maret.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li value=\"2\"><strong>TUGAS</strong></li>\r\n</ol>\r\n\r\n<p>UPT. Kearsipan mempunyai tugas :</p>\r\n\r\n<ol>\r\n	<li>Melaksanakan penyelenggaraan kearsipan di lingkungan Universitas Sebelas Maret;</li>\r\n	<li>Melaksanakan pengelolaan arsip statis yang diterima dari lingkungan Universitas Sebelas Maret;</li>\r\n	<li>Melaksanakan pengelolaan arsip inaktif yang memiliki retensi sekurang-kurangnya 10 (sepuluh) tahun yang berasal dari lingkungan Universitas Sebelas Maret;</li>\r\n	<li>Melaksanakan pembinaan kearsipan di lingkungan Universitas Sebelas Maret;</li>\r\n	<li>Mengembangkan UPT. Kearsipan sebagai pusat pembelajaran dan informasi arsip.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li value=\"3\"><strong>FUNGSI</strong></li>\r\n</ol>\r\n\r\n<p>UPT. Kearsipan menyelenggarakan fungsi :</p>\r\n\r\n<ol>\r\n	<li>Pelaksanaan penyusunan rencana, program, dan anggaran;</li>\r\n	<li>Pelaksanaan pengelolaan arsip;</li>\r\n	<li>Pelaksanaan urusan tata usaha UPT;</li>\r\n	<li>Pelaksanaan pembinaan kearsipan.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li value=\"4\"><strong>KEDUDUKAN</strong></li>\r\n</ol>\r\n\r\n<p>UPT. Kearsipan dipimpin oleh seorang Kepala dan bertanggung jawab kepada Rektor dan dikoordinasikan oleh Wakil Rektor Bidang Umum dan Keuangan</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li value=\"5\"><strong>TUJUAN</strong></li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Memanfaatkan arsip seoptimal mungkin untuk keperluan organisasi;</li>\r\n	<li>Memudahkan pengamanan, pengendalian dan pengawasan arsip;</li>\r\n	<li>Mengurangi biaya penyimpanan, peralatan, pemeliharaan serta perawatan arsip;</li>\r\n	<li>Menyelamatkan arsip yang bernilaiguna sejarah;</li>\r\n	<li>Memudahkan penemuan kembali arsip.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li value=\"6\"><strong>SUMBER DAYA MANUSIA (SDM)</strong></li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Kepala;</li>\r\n	<li>Petugas Tata Usaha; dan</li>\r\n	<li>Kelompok Jabatan Fungsional.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li value=\"7\"><strong>KHAZANAH ARSIP</strong></li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Arsip konvensional (kertas)</li>\r\n</ol>\r\n\r\n<p>Berdasarkan&nbsp; perkembangan UNS, terdiri dari :</p>\r\n\r\n<ul>\r\n	<li>Universitas Gabungan Surakarta (UGS);</li>\r\n	<li>Universitas Negeri Surakarta Sebelas Maret;</li>\r\n	<li>Universitas Sebelas Maret;</li>\r\n	<li>Proyek-proyek terkait.</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li value=\"2\">Arsip Media Baru :</li>\r\n</ol>\r\n\r\n<p>Diantaranya :</p>\r\n\r\n<ul>\r\n	<li>Arsip foto, koleksi tahun 1972 s/d 2007</li>\r\n	<li>Kaset, koleksi tahun 1983 s/d 2006</li>\r\n	<li>Video, koleksi tahun 1982 s/d 2002</li>\r\n	<li>Kearsitekturan/rancang bangun</li>\r\n</ul>\r\n'),
(15, 'j.jpg', 'artikel', '2021-07-13', 'Prosedur Pengolahan Arsip', 'admin', '<p>Prosedur pengelolaan arsip menyangkut teknik dan tahap-tahap yang harus dilaksanakan dalam pelaksanaan kegiatan pengelolaan arsip. Prosedur pengelolaan arsip inaktif meliputi kegiatan pemindahan arsip inaktif, menentukan kapan arsip inaktif dapat dipindah, menentukan arsip yang akan dipindah, menyiapkan arsip yang akan dipindah serta&nbsp; menyiapkan ruang simpan arsip.</p>\r\n\r\n<p>Adapun penataan dan penyimpanan arsip inkatif dilakukan melalui prosedur sebagai berikut:</p>\r\n\r\n<p><strong>1. Arsip Tekstual / Arsip Kertas</strong></p>\r\n\r\n<p>Arsip tekstual&nbsp; atau arsip kertas yang disimpan di Pusat Arsip UNS adalah arsip-arsip yang frekuensi penggunaannya sudah menurun atau sering disebut arsip inaktif.<br />\r\nProsedur penyimpanan arsip inaktif haruslah dilaksanakan secara sistematis, berkesinambungan dan dilaksanakan secara tertib. Proses Pengolahan arsip inaktif meliputi tahap :</p>\r\n\r\n<p><em>a. Identifikasi Arsip</em></p>\r\n\r\n<p>Identifikasi dilakukan untuk mengetahui konteks arsip dan system penataannya (semasa aktifnya). Konteks arsip dapat diketahui melalui pemahaman tugas dan fungsi orgaisasi. Kegiatan yang dilakukan dalam identifikasi ini adalah mengelompokkan arsip berdasarkan kesamaan masalah bisa kesamaan kegiatan (rubriek), kesamaan urusan (dosier) dan kesamaan jenis (seri).</p>\r\n\r\n<p><em>b. Pendeskripsian</em></p>\r\n\r\n<p>Pengertian pendeskripsian arsip adalah pencatatan arsip berdasarkan ciri-ciri arsipnya. Kegiatan pendiskripsian ini menggunakan sarana berupa kartu fiches. Pendiskripsian arsip minimal terdiri dari 6 (enam) unsur yaitu bentuk redaksi, isi informasi, periode/kurun waktu arsip, volume/jumlah arsip, tingkat perkembangan/kealian, serta kondisi arsip. Disamping 6 unsur tersebut perlu ditambahkan lagi dengan beberapa keterangan yaitu kode inisial pelaksana dan unit kerja asal arsip.</p>\r\n\r\n<p><em>c. Pembungkusan Arsip</em></p>\r\n\r\n<p>Pelaksanaan kegiatan pembungkusan arsip bisa dilakukan dengan menggunakan kertas kraf atau kertas payung, hal ini bertujuan agar arsip-arsip tersebut lebih terawat dan tidak terkena debu. Pada sisi kanan atas ditulis kode inisial pelaksana dan nomor sementara berupa hasil pengerjaan.</p>\r\n\r\n<p><em>d. Manuver Fisches</em></p>\r\n\r\n<p>Setelah tahapan pediskripsian selesi dilaksanakan maka perlu penyusunan skema/bagan atau semacam klasifikasi arsip yang bertujuan unruk penyusunan kartu fisches/diskripsi. Dalam penyusunan kartu-kartu fisches setelah kartu dipilah berdasarkan masalah-masalah (klasifikasi arsip), kemudian diurutkan berdasarkan kurun waktunya mulai dari tahun yang tertua sampai dengan tahun yang termuda. Tahap ini disebut Manuver Fisches.</p>\r\n\r\n<p><em>e. Penomoran Difinitif</em></p>\r\n\r\n<p>Hasil penyusunan kartu deskripsi tersebut selanjutnya diberikan nomor urut 1, 2, 3, 4, dan seterusnya.</p>\r\n\r\n<p><em>f. Daftar Pertelaan Arsip</em></p>\r\n\r\n<p>Daftar Pertelaan Arsip (DPA) adalah daftar yang berisikan uraian arsip dan disusun berdasarkan hasil pendiskripsian arsip yang dilakukan pada tahap sebelumnya.</p>\r\n\r\n<p><em>g. Penataan Fisik Arsip</em></p>\r\n\r\n<p>Penataan fisik arsip dilakukan dengan memberikan nomor difinitif (nomor urut) sesuai dengan nomor urut yang tertera di DPA. Penulisan nomor difinitif dilakukan dikertas pembungkus dengan mencoret nomor sementara (berupa kode inisial dan nomor urut pengerjaan), kegiatan ini disebut dengan manuver fisik. Guna memudahkan penemuan kembali maka berkas yang telah diberi nomor definitif kedalam boks arsip secara lateral yaitu penataan berkas dari kiri ke kanan. Penempatan berkas-berkas dalam boks harus memperhatikan kapasitas boks (daya muat).</p>\r\n\r\n<p><em>h. Pelabelan Boks</em></p>\r\n\r\n<p>Pemberian label boks sangat diperlukan agar identitas nomor difinitif terlihat serta membantu dalam penemuan kembali.</p>\r\n\r\n<p><em>i. Penetapan Boks dalam Rak</em></p>\r\n\r\n<p>Tahap terakhir dari pelaksanaan penataan arsip yaitu menempatkan boks arsip yang telah diberi label, disimpan pada rak arsip sesuai dengan urutan nomor defifinifnya, disamping itu untuk mempermudah penemuan kembali, boks arsip perlu diberikan nomor urut dengan penempatan secara lateral.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Arsip Non Tekstual</strong></p>\r\n\r\n<p><em>a. Arsip Sound Recording</em></p>\r\n\r\n<p>Yaitu arsip yang informasinya terekam dalam sinyal dan suara dengan menggunakan teknik perekaman tertentu. Pengolahan arsip ini adalah sbb:</p>\r\n\r\n<p>1. Penerimaan</p>\r\n\r\n<p>&nbsp; &nbsp; Kaset-kaset yang diterima perlu dicek apakah sudah sesuai dengan daftar atau tidak</p>\r\n\r\n<p>2. Pelabelan</p>\r\n\r\n<p>&nbsp; &nbsp; Dilakukan terhadap pembungkus dan pada kasetnya, untuk menghindari tercampurnya kaset dengan pembungkus kaset lainnya</p>\r\n\r\n<p>3. Transkripsi</p>\r\n\r\n<p>&nbsp; &nbsp; Memudahkan isi informasi yang terdapat dalam kaset rekaman suara ke dalam tulisan secara apa adanya tanpa menambah atau mengurangi. Unsur-unsur transkripsi&nbsp;&nbsp; antara lain&nbsp; judul, topik, tempat, tanggal dan tahun peristiwa</p>\r\n\r\n<p>4. Indeks</p>\r\n\r\n<p>&nbsp; &nbsp; Yaitu ringkasan isi kaset secara garis besar</p>\r\n\r\n<p>5. Abstrasi</p>\r\n\r\n<p>&nbsp; &nbsp; Yaitu intisari rekaman secara garis besar dalam suatu paragraf.</p>\r\n\r\n<p>6. Penataan</p>\r\n\r\n<p>&nbsp; &nbsp; Penataan dalam rak kaset dan disusun berdasarkan tahun dan subyek</p>\r\n\r\n<p>7. Pembuatan Daftar</p>\r\n\r\n<p><em>b. Arsip Kearsitekturan</em></p>\r\n\r\n<p>Adalah arsip yang berupa gambar yang merupakan bentuk visual dari seorang arsitek. Pengolahan arsip kearsitekturan yaitu dengan membuat deskripsi atau gambaran secara terperinci tentang informasi yang terdapat dalam arsip kearsitekturan. Unsur-unsurnya meliputi pencipta, nomor kerja, nama arsitek, tanggal/bulan/tahun kearsitekturan dibuat, lokasi bangunan, nama bangunan, type bangunan, kode klasifikasi, keterangan, skala, satuan, tingkat perkembangan, kondisi fisik.Penyimpanan arsip kearsitektuaran ditempatkan pada laci kersitekturan dan diberi tanda untuk membedakan laci satu dengan lainnya berdasarkan subyek dengan urutan pengerjaannya nama instansi, subyek,judul/tahun. Penemuan kembali arsip dilakukan dengan membuat daftar yang memuat unsur-unsur diskripsi arsip kearsitekturan.</p>\r\n\r\n<p>c. Arsip Video</p>\r\n\r\n<p>Adalah arsip yang isi informasinya berupa citrak bergerak (terekam dalam rangkaian fotografik dan suara pada pita magnetik yang penciptaannya menggunakan media teknologi elektronik. Pengolahan arsip video dimulai dengan melakukan pengecekan data secara teknik Pendiskripsian terdiri dari unsur-unsur Nomor urut pengerjaan, Judul, Masa Putar, Tempat/Tgl/Th, Produksi, Mutu Suara, Asal Koleksi, Keterangan. Penemuan kembali arsip dilakukan dengan membuat daftar yang memuat unsur-unsur diskripsi arsip foto</p>\r\n'),
(16, '0000000001.jpg', 'regulasi', '2021-07-27', 'Regulasi', 'admin', '<p><strong>Tata kelola kearsipan Universitas Sebelas Maret mengacu pada kebijakan dan peraturan berikut:</strong></p>\r\n\r\n<p><strong>1.&nbsp;<a href=\"assets/ckfinder/userfiles/files/001-PERMENPAN_NOMOR_48_2014.pdf\">Permenpan Nomer 48 Tahun 2014 Tentang Jabatan Fungsional Arsiparis</a></strong></p>\r\n\r\n<p><strong>2.&nbsp;<a href=\"assets/ckfinder/userfiles/files/002-Perka_5_2016(3).pdf\">Peraturan Rektor UNS Nomor 510/UN27/TU/2012 Tentang Pedoman Pola Klasifikasi dan JRA di lingkungan UNS</a></strong></p>\r\n\r\n<p><strong>3.&nbsp;<a href=\"assets/ckfinder/userfiles/files/003-Peraturan_Pedoman_Penyelenggaraan_Arsip_2017.pdf\">Peraturan Pedoman Penyelenggaraan Arsip 2017</a></strong></p>\r\n\r\n<p><strong>4.&nbsp;<a href=\"assets/ckfinder/userfiles/files/004-Implementasi_Peraturan_Rektor_UNS_No_21_Tahun_2017_tentang_Penyelenggaraan_Kearsipan.pdf\">Implementasi Peraturan Rektor UNS No.21 Tahun 2017 tentang Penyelenggaraan Kearsipan</a></strong></p>\r\n\r\n<p><strong>5.&nbsp;<a href=\"assets/ckfinder/userfiles/files/005-Peraturan_Pedoman_Penyelenggaraan_Arsip_2017.pdf\">Peraturan Pedoman Penyelenggaraan Arsip 2017</a></strong></p>\r\n\r\n<p><strong>6.&nbsp;<a href=\"assets/ckfinder/userfiles/files/006-Pedoman_Akuisisi_Arsip_Statis.pdf\">Pedoman Akuisisi Arsip Statis</a></strong></p>\r\n\r\n<p><strong>7.&nbsp;<a href=\"assets/ckfinder/userfiles/files/007-Pedoman_Pengelolaan_Arsip_Dinamis_Aktif.pdf\">Pedoman Pengelolaan Arsip Dinamis Aktif</a></strong></p>\r\n\r\n<p><strong>8.&nbsp;<a href=\"assets/ckfinder/userfiles/files/008-Pedoman_Pengelolaan_Arsip_Dinamis_Inaktif.pdf\">Pedoman Pengelolaan Arsip Dinamis Inaktif</a></strong></p>\r\n\r\n<p><strong>9.&nbsp;<a href=\"assets/ckfinder/userfiles/files/009-Pedoman_Penyusutan_Arsip.pdf\">Pedoman Penyusutan Arsip</a></strong></p>\r\n\r\n<p><strong>10.&nbsp;<a href=\"assets/ckfinder/userfiles/files/010-Pedoman_Pengolahan_Arsip_Statis.pdf\"> Pedoman Pengolahan Arsip Statis</a></strong></p>\r\n\r\n<p><strong>11.&nbsp;<a href=\"assets/ckfinder/userfiles/files/011-Perek_UNS_nomor_6_th_2020_ttg_KA_UNS.pdf\">Perek No. 6 Tahun 2020 tentang Klasifikasi Arsip UNS</a></strong></p>\r\n\r\n<p><strong>12.&nbsp;<a href=\"assets/ckfinder/userfiles/files/012-Perek_UNS_nomor_7_th_2020_ttg_JRA_UNS.pdf\">Perek No. 7 Tahun 2020 tentang JRA UNS</a></strong></p>\r\n\r\n<p><strong>13.&nbsp;<a href=\"assets/ckfinder/userfiles/files/013-Perek_UNS_nomor_8_th_2020_ttg_SKKAAD_UNS.pdf\">Perek No. 8 Tahun 2020 tentang SKAAD UNS</a></strong></p>\r\n\r\n<p><strong>14.&nbsp;<a href=\"assets/ckfinder/userfiles/files/uran_Rektor_No_19_Tahun_2020.pdf\">Peraturan Rektor No. 19 Tahun 2020</a></strong></p>\r\n\r\n<p><strong>15.&nbsp;<a href=\"assets/ckfinder/userfiles/files/fikasi_Arsip_SUBSTANTIF.pdf\">Klasifikasi Arsip Substantif 2021</a></strong></p>\r\n\r\n<p><strong>16.&nbsp;<a href=\"assets/ckfinder/userfiles/files/016-Klasifikasi_Arsip_FASILITATIF.pdf\">Klasifikasi Arsip Fasilitatif 2021 </a></strong></p>\r\n\r\n<p><strong>Peraturan Kepala Arsip Nasional Republik Indonesia</strong></p>\r\n\r\n<p><strong>1.&nbsp;<a href=\"assets/ckfinder/userfiles/files/perka01_5_2016.pdf\">Perka No. 5 Tahun 2016</a></strong></p>\r\n\r\n<p><strong>2.&nbsp;<a href=\"assets/ckfinder/userfiles/files/perka02_6_2016.pdf\">Perka No. 6 Tahun 2016</a></strong></p>\r\n\r\n<p><strong>3.&nbsp;<a href=\"assets/ckfinder/userfiles/files/perka03_4_2017(1).zip\">Perka No 4 Tahun 2017</a></strong></p>\r\n\r\n<p><strong>4.&nbsp;<a href=\"assets/ckfinder/userfiles/files/perka04_6_2017.pdf\">Perka No. 6 Tahun 2017</a></strong></p>\r\n\r\n<p><strong>5.&nbsp;</strong><a href=\"#\">Perka No. 23 Tahun 2017</a></p>\r\n\r\n<p><strong>Peraturan Perundang Undangan Pusat</strong></p>\r\n\r\n<p>Undang-undang (UU)</p>\r\n\r\n<p>1.&nbsp;<a href=\"assets/ckfinder/userfiles/files/uu01-UU_43_2009.pdf\">UU No. 43 Tahun 2009</a></p>\r\n\r\n<p>Peraturan Pemerintah (PP)</p>\r\n\r\n<p>1.&nbsp;<a href=\"assets/ckfinder/userfiles/files/uu02-PP_28_2012.pdf\">PP No. 28 Tahun 2012</a></p>\r\n\r\n<p><strong>SKP</strong></p>\r\n\r\n<p><strong>1.&nbsp;<a href=\"assets/ckfinder/userfiles/files/skp01-Surat_Pernyataan_Melakukan_kegiatan_(SPMK)(1).docx\">Surat Pernyataan Melakukan kegiatan (SPMK)</a></strong></p>\r\n\r\n<p><strong>2.&nbsp;<a href=\"assets/ckfinder/userfiles/files/skp02-SKP_KOSONG_DIGUNAKAN_UNTUK_PENILAIAN_SKP_ARSIPARIS.xlsx\">SKP KOSONG DIGUNAKAN UNTUK PENILAIAN SKP ARSIPARIS</a></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(24, 'WhatsApp_Image_2021-10-20_at_9_33_53_PM.jpeg', 'artikel', '2021-10-21', 'Jokowi akan Resmikan Pabrik dan Jembatan di Kalsel', 'admin', '<p>EPUBLIKA.CO.ID, JAKARTA -- Presiden Joko Widodo (Jokowi) melakukan kunjungan kerja ke Provinsi Kalimantan Selatan (Kalsel) pada Kamis (21/10). Jokowi bersama rombongan lepas landas dengan menggunakan Pesawat Kepresidenan Indonesia-1 sekitar pukul 07.30 WIB melalui Pangkalan TNI AU Halim Perdanakusuma, Jakarta.</p>\r\n\r\n<p>Setibanya di Pangkalan TNI AU Syamsudin Noor, Kota Banjarbaru, Presiden akan langsung melanjutkan perjalanan menuju Kabupaten Tanah Bumbu, dengan menggunakan helikopter Super Puma TNI AU. Dikutip dari siaran resmi Istana, di Kabupaten Tanah Bumbu, Presiden diagendakan untuk meresmikan pabrik biodiesel.</p>\r\n\r\n<p>Usai peresmian pabrik biodiesel, Jokowi akan menuju Kota Banjarmasin, untuk meninjau kegiatan vaksinasi yang digelar di halaman RSUD Dr. H. Moch. Ansari Saleh. Selain meninjau, Presiden juga akan menyapa para peserta vaksinasi melalui konferensi video di beberapa kabupaten dan kota se-Provinsi Kalimantan Selatan.</p>\r\n\r\n<p><img alt=\"\" src=\"/assets/ckfinder/userfiles/files/WhatsApp%20Image%202021-10-20%20at%208_49_28%20PM%20(4).jpeg\" style=\"height:100px; width:103px\" /></p>\r\n\r\n<p>Sebelum kembali ke Jakarta, Presiden akan meninjau sekaligus meresmikan Jembatan Sei Alalak di Kota Banjarmasin.</p>\r\n\r\n<p>Turut mendampingi Presiden dalam penerbangan menuju ke Provinsi Kalimantan Selatan yakni Menteri Sekretaris Negara Pratikno, Menteri BUMN Erick Thohir, Kepala Sekretariat Presiden Heru Budi Hartono, Sekretaris Militer Presiden Marsda TNI M. Tonny Harjono, serta Komandan Paspampres Mayjen TNI Tri Budi Utomo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"/assets/ckfinder/userfiles/files/Cuecard_Print7.pdf\">download file ini</a></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_event`
--

CREATE TABLE `tb_event` (
  `id_event` int(11) NOT NULL,
  `tanggal_event` date NOT NULL,
  `nama_event` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `waktu` time NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_event`
--

INSERT INTO `tb_event` (`id_event`, `tanggal_event`, `nama_event`, `lokasi`, `waktu`, `time`) VALUES
(3, '2021-10-15', 'Event 2', 'Kantor Pusat', '07:00:00', ''),
(4, '2022-01-06', 'Workshop Pengolahan Arsip Dinamis', 'UNS INN', '10:20:11', ''),
(5, '2021-10-07', 'Event 4', 'Zoom Meeting', '14:18:00', ''),
(6, '2021-10-08', 'cek sistem', 'localhost', '15:11:00', ''),
(10, '2021-12-31', 'Webinar Evaluasi Arsiparis', 'Zoom Meetings: <a href=\'https://www.google.com\' target=\'_blank\'>LINK</a>', '11:42:00', ''),
(11, '2021-10-30', 'webinar', 'uns inn', '09:48:00', ''),
(12, '2021-12-28', 'Webinar', 'UPT Kearsipan UNS', '14:02:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_grup_album`
--

CREATE TABLE `tb_grup_album` (
  `id_grup_album` int(11) NOT NULL,
  `nama_grup_album` varchar(255) NOT NULL,
  `tahun_grup_album` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_grup_album`
--

INSERT INTO `tb_grup_album` (`id_grup_album`, `nama_grup_album`, `tahun_grup_album`) VALUES
(1, 'Pendirian UPT Kearsipan UNS', 2015),
(2, 'Foto Monitoring FIB 2018', 2018),
(8, 'Foto Monitoring FISIP 2018', 2018),
(9, 'Foto Monitoring UPT Perpustakaan 2018', 2018),
(10, 'Bimtek Kearsipan 2018 Angkatan 1', 2018),
(11, 'Bimtek Kearsipan 2018 Angkatan 2', 2018),
(12, 'Sosialisasi Peraturan Rektor tentang Pedoman Pengelolaan Arsip Dinamis', 2016),
(13, 'Bimtek Kearsipan 2018 Angkatan 3', 2018),
(14, 'Bimtek Kearsipan 2018 Angkatan 4', 2018),
(15, 'Kunjungan BeKraf', 2017),
(16, 'Peluncuran e-Office SIKD UNS', 2019),
(17, 'Workshop SIKS', 2016),
(18, 'Workshop KA, JRA dan SKKAA', 2019),
(19, 'Evaluasi Implementasi e-Office SIKD UNS', 2020),
(20, 'demo', 2021),
(25, 'Demo Desember', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `tb_grup_arsip_foto`
--

CREATE TABLE `tb_grup_arsip_foto` (
  `id_grup_arsip_foto` int(11) NOT NULL,
  `nama_grup_arsip_foto` varchar(255) NOT NULL,
  `tahun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_grup_arsip_foto`
--

INSERT INTO `tb_grup_arsip_foto` (`id_grup_arsip_foto`, `nama_grup_arsip_foto`, `tahun`) VALUES
(6, 'F1', 2021),
(9, 'TEKNIK', 1990),
(10, 'Space', 2020),
(12, 'pemandangan', 2002),
(13, 'tes', 2007);

-- --------------------------------------------------------

--
-- Table structure for table `tb_grup_arsip_video`
--

CREATE TABLE `tb_grup_arsip_video` (
  `id_grup_arsip_video` int(11) NOT NULL,
  `nama_grup_arsip_video` varchar(255) NOT NULL,
  `tahun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_grup_arsip_video`
--

INSERT INTO `tb_grup_arsip_video` (`id_grup_arsip_video`, `nama_grup_arsip_video`, `tahun`) VALUES
(6, 'reels', 2000),
(9, 'short movie', 1888),
(10, 'documentary', 576),
(11, 'UNS', 1960);

-- --------------------------------------------------------

--
-- Table structure for table `tb_khasanah`
--

CREATE TABLE `tb_khasanah` (
  `id_khasanah` int(11) NOT NULL,
  `nama_khasanah` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `parent_id` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_khasanah`
--

INSERT INTO `tb_khasanah` (`id_khasanah`, `nama_khasanah`, `tahun`, `parent_id`, `folder`) VALUES
(1, 'MIPA', '2021', '0', '1'),
(2, 'TEKNIK', '2020', '0', '1'),
(3, 'FH', '2000', '0', '1'),
(4, 'FISIP', '2005', '0', '1'),
(8, 'FK', '1999', '0', '1'),
(10, 'MATEMATIKA', '2020', '1', '1'),
(11, 'S1 FISIKA', '2021', '1', '1'),
(12, 'FKOR', '1000', '', '1'),
(15, 'FKOR', '00000', '', '1'),
(36, 'integral', '000', '10', '0'),
(40, 'S1 FARMASI', '2015', '1', '1'),
(41, 'S1 INFORMATIKA', '1999', '1', '1'),
(42, 'CHEM ENG', '20012', '2', '1'),
(43, 'TEKNIK MESIN', '2010', '2', '1'),
(44, 'FKOR', '2020', '0', '1'),
(46, 'SIPIL', '2021', '2', '1'),
(47, 'NUKLIR', '1990', '2', '1'),
(48, 'PWK', '2021', '2', '1'),
(50, 'S1 KIMIA', '2022', '1', '1'),
(51, 'S1 FISIKA', '2022', '1', '1'),
(53, 'SV', '2020', '0', '1'),
(54, 'TEKNIK INFORMATIKA', '2000', '53', '1'),
(55, 'FARMASI', '2001', '53', '1'),
(60, 'KEDOKTERAN', '2000', '8', '1'),
(61, 'K3', '2019', '8', '1'),
(62, 'VVV', '45', '4', '1'),
(63, 'kkk', '88', '4', '1'),
(71, 'FSRD', '2020', '0', '1'),
(72, 'FKIP', '2021', '0', '1'),
(73, 'vektor', '2000', '10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id_login`, `username`, `password`) VALUES
(1, 'ais', 'c870df65329c90310ca53a8391509feb'),
(3, 'luby', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
(4, 'admin', 'admin'),
(5, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profil`
--

CREATE TABLE `tb_profil` (
  `id_profil` int(11) NOT NULL,
  `id_atasan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `kontak` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profil` varchar(255) NOT NULL,
  `tugas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_profil`
--

INSERT INTO `tb_profil` (`id_profil`, `id_atasan`, `nama`, `jabatan`, `foto`, `kontak`, `email`, `profil`, `tugas`) VALUES
(7, 0, 'Yani Maryudiasti, S.Sos', 'KEPALA UPT KEARSIPAN', 'WhatsApp_Image_2021-12-15_at_1_28_47_PM.jpeg', '987654321', 'aa@gmail.com', '<ul>\r\n	<li>Wanita kelahiran Surakarta ini merupakan alumni Diploma 3 Kearsipan Universitas Diponegoro dan Sarjana Administrasi Negara Universitas Diponegoro. Sepanjang karier di UNS, Beliau pernah menjabat sebagai Ketua Unit Penjaminan Mutu Kearsipan (202', '<ul>\r\n	<li>Kepala mempunyai tugas:</li>\r\n	<li>Menghimpun dan mengkaji peraturan perundang-undangan dibidang kearsipan</li>\r\n	<li>Menyusun rencana dan program kerja</li>\r\n	<li>Mengkoordinasikan penyusunan rencana dan program kerja;</li>\r\n	<li>Merumuskan&lt'),
(8, 7, 'Amalie Willis', 'KOORDINATOR BIDANG', '81.jpg', '0', 'iu@google.com', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolo', '<ul>\r\n	<li>melaksanakan pengelolaan arsip statis dan pengelolaan arsip inaktif serta pembinaan kearsipan di lingkungan UNS.<br />\r\n	&nbsp;</li>\r\n</ul>\r\n'),
(9, 7, 'Okta Triswantara, S.IP', 'SUBKOORDINATOR TATA USAHA', '71.jpg', '987654321', 'iu@google.com', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolo', '<ul>\r\n	<li>melakukan urusan ketatausahaan dan kerumahtanggaan UPT Kearsipan</li>\r\n	<li>Subkoordinator Tata Usaha bertanggung jawab kepada Kepala UPT Kearsipan</li>\r\n</ul>\r\n'),
(11, 7, 'Ammara Avila', 'KELOMPOK JABATAN FUNGSIONAL ARSIPARIS', '51.jpg', '987654321', 'iu@google.com', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolo', '<ul>\r\n	<li>Pengelolaan arsip dinamis;</li>\r\n	<li>Pengelolaan arsip statis;</li>\r\n	<li>Pembinaan Kearsipan;</li>\r\n	<li>Pengolahan dan penyajian arsip menjadi informasi;</li>\r\n	<li>Tugas tambahan (Berdasarkan Peratran ANRI No. 23 Tahun 2017 tentang Perubaha'),
(12, 9, 'Deon Calvert', 'PRANATA KEARSIPAN', '711.jpg', '987654321', 'aa@gmail.com', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolo', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Pengelolaan Arsip Dinamis:</li>\r\n	<li>Menyeleksi dan membuat daftar arsip inaktif yang dipindahkan</li>\r\n	<li>Melaksanakan pemindahan arsip inaktif</li>\r\n	<li>Melakukan pemberkasan arsip terjaga Melakukan verifikasi dan menata&'),
(13, 9, 'Ryder Doyle', 'PENGOLAH DATA', '41.jpg', '1234567890', 'qwerty@mail.com', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolo', '<ul>\r\n	<li>Mengelola dan atau mengolah data dan informasi UPT Kearsipan, unit-unit, atau informasi dari luar sesuai ketentuan;</li>\r\n	<li>Melakukan perawatan, mengamankan system dan basis data kearsipan;</li>\r\n	<li>Melakukan pelayanan dan pengembangan sys'),
(14, 14, 'Simon Beasley', 'PENYUSUN ARSIP', '61.jpg', '2147483647', 'qwerty@mail.com', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolo', '<ul>\r\n	<li>Melakukan pelayanan arsip statis</li>\r\n	<li>Melakukan monitoring dan evaluasi (MONEV) sistem informasi kearsipan</li>\r\n	<li>Melakukan Penyimpanan dan Penataan Arsip setiap 100 nomor Melakukan penyusunan sarana bantu penemuan kembali arsip stati'),
(15, 9, 'Zidan Levy', 'PENGADMINISTRASI UMUM', 'bench.jpg', '987654321', 'ijek@ijek.com', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolo', '<ul>\r\n	<li>hhMenerima dan mencatat surat masuk melalui SIKD&nbsp;</li>\r\n	<li>Mendokumentasikan (scan dan upload) surat/dokumen melalui SIKD</li>\r\n	<li>Melayani peminjaman surat/dokumen</li>\r\n	<li>Melayani penggandaan atau foto copy</li>\r\n	<li>Membantu mel'),
(18, 7, '-', 'Unit Kearsipan II Biro/Fakultas/Lembaga', '4_4.jpg', '0', 'iu@google.com', '<p>-</p>\r\n', '<p>-</p>\r\n'),
(19, 9, 'Leonardo Lenny', 'PENYUSUN ARSIP', '22.jpg', '2147483647', 'qwerty@mail.com', '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survive', '<ul>\r\n	<li>&nbsp;</li>\r\n	<li>Melakukan pelayanan arsip statis</li>\r\n	<li>Melakukan monitoring dan evaluasi (MONEV) sistem informasi kearsipan</li>\r\n	<li>Melakukan Penyimpanan dan Penataan Arsip setiap 100 nomor Melakukan penyusunan sarana bantu penemuan k');

-- --------------------------------------------------------

--
-- Table structure for table `tb_regulasi`
--

CREATE TABLE `tb_regulasi` (
  `id_regulasi` int(11) NOT NULL,
  `judul_regulasi` varchar(255) NOT NULL,
  `file_regulasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_role`
--

INSERT INTO `tb_role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tes`
--

CREATE TABLE `tb_tes` (
  `id` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `institusi` varchar(255) NOT NULL,
  `fprofil` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  `update_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `email`, `nama`, `tgl_lahir`, `alamat`, `pekerjaan`, `institusi`, `fprofil`, `role_id`, `is_active`, `date_created`, `update_at`, `created_at`) VALUES
(30, 'ais26sholihah', '827ccb0eea8a706c4c34a16891f84e7b', 'ais26sholihah@gmail.com', 'aisyah', '0000-00-00', '', '', '', '', 0, 0, 0, '2021-10-12 09:20:50', '2021-10-12 09:20:50'),
(31, 'Diva', '', 'divacalta@student.uns.ac.id', 'Diva Calta Maharani', '0000-00-00', '', '', '', '', 0, 0, 0, '2021-10-12 16:10:15', '2021-10-12 16:10:15'),
(32, 'Aidah Mubattilah', '', 'aidahalkhumsaa@gmail.com', 'Aidah Mubattilah Al khumsaa', '0000-00-00', '', '', '', '', 0, 0, 0, '2021-10-12 19:07:08', '2021-10-12 19:07:08'),
(37, 'sholihahnaisyah', 'c870df65329c90310ca53a8391509feb', 'sholihahnaisyah@student.uns.ac.id', 'nur \'aisyah sholihah', '0000-00-00', '', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gii_OavzFI4EwnvC61WzLIsvM1I1nZVqAaTX6IW=s96-c', 0, 0, 0, '2021-10-12 20:16:04', '2021-10-12 20:16:04'),
(40, 'muehehe321', '202cb962ac59075b964b07152d234b70', 'muehehe321@gmail.com', 'muehehe muehehe', '0000-00-00', '', '', '', 'https://lh3.googleusercontent.com/a/AATXAJxWYfDkhrgSZoLAQ157XGNCu8V7P-RQYFrcEesC=s96-c', 0, 0, 0, '2021-12-22 04:26:02', '2021-12-22 04:26:02');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_profil`
-- (See below for the actual view)
--
CREATE TABLE `v_profil` (
`id_profil` int(11)
,`id_atasan` int(11)
,`nama` varchar(255)
,`jabatan` varchar(255)
,`foto` varchar(255)
,`kontak` varchar(128)
,`email` varchar(255)
,`profil` varchar(255)
,`tugas` varchar(255)
,`nama_atasan` text
);

-- --------------------------------------------------------

--
-- Structure for view `global_search`
--
DROP TABLE IF EXISTS `global_search`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `global_search`  AS SELECT `tb_artikel`.`id_artikel` AS `id`, `tb_artikel`.`jenis_artikel` AS `jenis`, `tb_artikel`.`gambar` AS `gambar`, `tb_artikel`.`judul_artikel` AS `judul`, `tb_artikel`.`isi` AS `isi` FROM `tb_artikel` ;

-- --------------------------------------------------------

--
-- Structure for view `v_profil`
--
DROP TABLE IF EXISTS `v_profil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_profil`  AS SELECT `a`.`id_profil` AS `id_profil`, `a`.`id_atasan` AS `id_atasan`, `a`.`nama` AS `nama`, `a`.`jabatan` AS `jabatan`, `a`.`foto` AS `foto`, `a`.`kontak` AS `kontak`, `a`.`email` AS `email`, `a`.`profil` AS `profil`, `a`.`tugas` AS `tugas`, (select concat(`tb_profil`.`nama`,' - ',`tb_profil`.`jabatan`) from `tb_profil` where `tb_profil`.`id_profil` = `a`.`id_atasan`) AS `nama_atasan` FROM `tb_profil` AS `a` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_administrator`
--
ALTER TABLE `tb_administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD PRIMARY KEY (`id_album`),
  ADD KEY `grup` (`grup`) USING BTREE,
  ADD KEY `tahun` (`tahun`),
  ADD KEY `tahun_2` (`tahun`);

--
-- Indexes for table `tb_arsip_foto`
--
ALTER TABLE `tb_arsip_foto`
  ADD PRIMARY KEY (`id_arsip_foto`),
  ADD KEY `grup_3` (`grup`),
  ADD KEY `grup_4` (`grup`),
  ADD KEY `grup_5` (`grup`),
  ADD KEY `grup` (`grup`) USING BTREE,
  ADD KEY `grup_2` (`grup`) USING BTREE,
  ADD KEY `tahun` (`tahun`);

--
-- Indexes for table `tb_arsip_kearsitekturan`
--
ALTER TABLE `tb_arsip_kearsitekturan`
  ADD PRIMARY KEY (`idp`);

--
-- Indexes for table `tb_arsip_tekstual`
--
ALTER TABLE `tb_arsip_tekstual`
  ADD PRIMARY KEY (`id_arsip_tekstual`);

--
-- Indexes for table `tb_arsip_video`
--
ALTER TABLE `tb_arsip_video`
  ADD PRIMARY KEY (`id_arsip_video`),
  ADD KEY `grup` (`grup`),
  ADD KEY `tahun` (`tahun`);

--
-- Indexes for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `tb_event`
--
ALTER TABLE `tb_event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `tb_grup_album`
--
ALTER TABLE `tb_grup_album`
  ADD PRIMARY KEY (`id_grup_album`);

--
-- Indexes for table `tb_grup_arsip_foto`
--
ALTER TABLE `tb_grup_arsip_foto`
  ADD PRIMARY KEY (`id_grup_arsip_foto`);

--
-- Indexes for table `tb_grup_arsip_video`
--
ALTER TABLE `tb_grup_arsip_video`
  ADD PRIMARY KEY (`id_grup_arsip_video`);

--
-- Indexes for table `tb_khasanah`
--
ALTER TABLE `tb_khasanah`
  ADD PRIMARY KEY (`id_khasanah`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `tb_regulasi`
--
ALTER TABLE `tb_regulasi`
  ADD PRIMARY KEY (`id_regulasi`);

--
-- Indexes for table `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tes`
--
ALTER TABLE `tb_tes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_administrator`
--
ALTER TABLE `tb_administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_album`
--
ALTER TABLE `tb_album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tb_arsip_foto`
--
ALTER TABLE `tb_arsip_foto`
  MODIFY `id_arsip_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_arsip_kearsitekturan`
--
ALTER TABLE `tb_arsip_kearsitekturan`
  MODIFY `idp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_arsip_tekstual`
--
ALTER TABLE `tb_arsip_tekstual`
  MODIFY `id_arsip_tekstual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1177;

--
-- AUTO_INCREMENT for table `tb_arsip_video`
--
ALTER TABLE `tb_arsip_video`
  MODIFY `id_arsip_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_event`
--
ALTER TABLE `tb_event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_grup_album`
--
ALTER TABLE `tb_grup_album`
  MODIFY `id_grup_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_grup_arsip_foto`
--
ALTER TABLE `tb_grup_arsip_foto`
  MODIFY `id_grup_arsip_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_grup_arsip_video`
--
ALTER TABLE `tb_grup_arsip_video`
  MODIFY `id_grup_arsip_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_khasanah`
--
ALTER TABLE `tb_khasanah`
  MODIFY `id_khasanah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_profil`
--
ALTER TABLE `tb_profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_regulasi`
--
ALTER TABLE `tb_regulasi`
  MODIFY `id_regulasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_tes`
--
ALTER TABLE `tb_tes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD CONSTRAINT `tb_album_ibfk_1` FOREIGN KEY (`grup`) REFERENCES `tb_grup_album` (`id_grup_album`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tb_arsip_foto`
--
ALTER TABLE `tb_arsip_foto`
  ADD CONSTRAINT `tb_arsip_foto_ibfk_1` FOREIGN KEY (`grup`) REFERENCES `tb_grup_arsip_foto` (`id_grup_arsip_foto`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
