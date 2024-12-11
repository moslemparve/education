-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2024 at 04:00 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eduping`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Acme Corporation', '2024-11-28 02:55:24', '2024-11-28 02:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `requirements` longtext COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `position`, `description`, `requirements`, `location`, `duration`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Id est et rerum tene', 'Quisquam quae tempor', 'Molestiae aute tenet', 'Et', 'Dolore sit aspernat', 'Dolor rerum mollitia', '1', '2024-11-30 02:24:16', '2024-12-04 03:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `account_id`, `organization_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 68, 'Zora', 'Abshire', 'trudie66@example.com', '877.767.4499', '12671 Botsford Falls Apt. 167', 'Zemlakbury', 'Texas', 'US', '13110-2377', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(2, 1, 25, 'Karli', 'Hand', 'rosa41@example.com', '877.933.5407', '26019 Graham Estates Suite 920', 'West Thomas', 'New Mexico', 'US', '70143', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(3, 1, 16, 'Jefferey', 'Langworth', 'uwitting@example.org', '844.817.9688', '8042 Kadin Dam', 'Mrazchester', 'Georgia', 'US', '21034-1654', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(4, 1, 93, 'Kade', 'Romaguera', 'blanche67@example.org', '800-377-0014', '344 Waters Stravenue', 'North Hudson', 'Georgia', 'US', '32527-0452', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(5, 1, 73, 'Autumn', 'Cronin', 'lueilwitz.hans@example.net', '1-888-612-7331', '337 Tressa Parkways', 'South Ashtynside', 'Georgia', 'US', '66194', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(6, 1, 76, 'Adela', 'Hackett', 'qluettgen@example.org', '(866) 948-3656', '4403 Dangelo Road Apt. 452', 'Port Kraig', 'Alabama', 'US', '91330-5474', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(7, 1, 89, 'Austin', 'Jacobson', 'mariano.huels@example.com', '(844) 589-7916', '582 Cronin Forges', 'North Stephen', 'Ohio', 'US', '18046', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(8, 1, 99, 'Audreanne', 'Sipes', 'trenton73@example.net', '844-807-9002', '983 Kirlin Flats Suite 515', 'West Mireillestad', 'Alaska', 'US', '85112', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(9, 1, 15, 'Melody', 'Grant', 'lloyd10@example.com', '(888) 383-5491', '7065 Norene Key', 'South Deeside', 'Florida', 'US', '87195', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(10, 1, 14, 'Waylon', 'Ryan', 'bethel51@example.com', '866.821.7919', '6793 Hagenes Route', 'North Alfreda', 'West Virginia', 'US', '87746', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(11, 1, 89, 'Eryn', 'Kilback', 'evert40@example.net', '1-888-356-0463', '624 Jordon Alley', 'South Floyd', 'California', 'US', '45149', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(12, 1, 81, 'Destinee', 'Hegmann', 'hmarks@example.com', '1-877-740-5546', '5332 Monserrat Overpass', 'Bashirianland', 'California', 'US', '84037-9078', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(13, 1, 14, 'Dahlia', 'Nienow', 'gwatsica@example.net', '877.402.9564', '525 Quigley Island', 'Port Genovevaport', 'Missouri', 'US', '78616', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(14, 1, 96, 'Tiffany', 'Heathcote', 'schneider.leta@example.org', '800-225-2925', '31135 Jeanie Underpass', 'Wuckertberg', 'Vermont', 'US', '68442', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(15, 1, 26, 'Toni', 'Koelpin', 'cassidy.quigley@example.com', '800.685.0959', '26567 Rex Cliffs Apt. 687', 'Nayeliton', 'New Jersey', 'US', '49348-1477', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(16, 1, 5, 'Michele', 'D\'Amore', 'myriam.mohr@example.com', '(855) 967-5781', '92215 Okuneva Mountain', 'West Carolanne', 'Utah', 'US', '65217-1037', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(17, 1, 1, 'Lula', 'Dibbert', 'gkshlerin@example.net', '877-912-5827', '5779 Fritsch Port Suite 317', 'Danykaborough', 'North Dakota', 'US', '70762-9106', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(18, 1, 64, 'Sonya', 'Wintheiser', 'jacynthe37@example.net', '1-866-729-9097', '139 Camden Cliffs Apt. 782', 'Jenkinshaven', 'Ohio', 'US', '65471', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(19, 1, 78, 'Devon', 'Dare', 'eulalia94@example.com', '1-855-554-7119', '1761 Reanna Station', 'West Eileen', 'New Hampshire', 'US', '26855', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(20, 1, 42, 'Terrence', 'Cronin', 'ujohnson@example.org', '855.352.9136', '2221 Kristoffer Vista Apt. 349', 'Eloytown', 'Hawaii', 'US', '36573', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(21, 1, 30, 'Bridget', 'Hauck', 'mia28@example.org', '866-810-7350', '77740 Beahan Lodge', 'Lake Arvid', 'Utah', 'US', '91195', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(22, 1, 15, 'Dejuan', 'Hills', 'oberbrunner.liliana@example.net', '(844) 629-4977', '2639 Enid Vista Suite 199', 'Hackettview', 'Ohio', 'US', '59791-2287', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(23, 1, 58, 'Carlos', 'Osinski', 'semard@example.com', '1-866-661-3043', '53755 Dickens River Suite 170', 'West Pamela', 'Mississippi', 'US', '10685', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(24, 1, 72, 'Dell', 'Hahn', 'stephany15@example.org', '(844) 709-0704', '6059 Gaylord Fork', 'Lake Daxside', 'Nebraska', 'US', '62379', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(25, 1, 53, 'Isabel', 'Waelchi', 'griffin.grady@example.org', '(855) 921-6176', '823 Trent Lodge Apt. 109', 'Port Alaynastad', 'Maryland', 'US', '84922', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(26, 1, 83, 'Anissa', 'Nikolaus', 'sreynolds@example.com', '(800) 409-8847', '672 Meagan Valley Suite 440', 'Port Joan', 'Vermont', 'US', '27513', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(27, 1, 83, 'Clifton', 'Weber', 'general.rempel@example.org', '(844) 457-0599', '280 Mayer Flat Apt. 667', 'Port Reynamouth', 'Michigan', 'US', '75227', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(28, 1, 96, 'Arielle', 'Terry', 'blick.jessika@example.org', '888-419-5844', '113 Hettinger Wall Apt. 994', 'Lake Kristoferborough', 'Delaware', 'US', '08639', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(29, 1, 98, 'Pearlie', 'Wisoky', 'kpagac@example.com', '877.263.4376', '64574 Graham Viaduct Apt. 657', 'Corwinchester', 'Wisconsin', 'US', '70573', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(30, 1, 20, 'Carmel', 'Spencer', 'kovacek.gabe@example.com', '(800) 783-1969', '58029 Cummings Port Apt. 113', 'North Lavernaville', 'Iowa', 'US', '48239', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(31, 1, 28, 'Geo', 'Koss', 'xhamill@example.org', '844-486-5838', '226 Christelle Knoll Suite 398', 'East Dulcefort', 'District of Columbia', 'US', '51075-9648', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(32, 1, 3, 'Luther', 'Ortiz', 'deborah.sipes@example.net', '855.930.7930', '679 Huels Street', 'South Donnaport', 'Connecticut', 'US', '33598', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(33, 1, 36, 'Jevon', 'Swaniawski', 'auer.earnest@example.org', '888.508.5920', '912 Danika Springs', 'Alfonsobury', 'Montana', 'US', '78557', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(34, 1, 59, 'Camron', 'Kris', 'eloise.kihn@example.net', '(888) 829-3877', '450 Thompson Wall Apt. 985', 'Port Chester', 'Missouri', 'US', '19338-3095', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(35, 1, 34, 'Ruthe', 'Breitenberg', 'cheyanne.olson@example.com', '844.644.8612', '58001 Heather Route', 'Blockfort', 'Florida', 'US', '55004', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(36, 1, 23, 'Madisyn', 'Treutel', 'feil.robb@example.org', '855.315.2040', '61324 Gust Station', 'Amaristad', 'South Dakota', 'US', '48740-8228', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(37, 1, 92, 'Gladyce', 'Nicolas', 'omclaughlin@example.net', '855.984.4044', '7445 Feeney Crossroad', 'Hesterfurt', 'Washington', 'US', '88510-0035', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(38, 1, 51, 'Nestor', 'Brakus', 'crystal.oconnell@example.com', '800.427.7042', '22442 Deon Mission', 'Myamouth', 'Alabama', 'US', '10916-6245', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(39, 1, 21, 'Shyanne', 'Lueilwitz', 'acummerata@example.net', '(888) 907-7806', '75873 Conn Ville Apt. 275', 'Mayertport', 'Ohio', 'US', '73348', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(40, 1, 41, 'Delfina', 'Schoen', 'florian30@example.org', '1-877-889-2752', '8722 Garnet Key', 'South Jamal', 'Maine', 'US', '93728', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(41, 1, 53, 'Bridie', 'Kozey', 'ritchie.julianne@example.net', '888.927.7568', '1104 Wunsch Harbor', 'Port Hectorstad', 'West Virginia', 'US', '34233-9716', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(42, 1, 71, 'Hugh', 'Pfannerstill', 'chilpert@example.com', '877.812.7200', '9430 Carter Mission', 'Jonesport', 'Colorado', 'US', '00679', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(43, 1, 85, 'Esteban', 'Blanda', 'shields.liza@example.org', '1-888-502-2981', '342 Justus Mission Apt. 716', 'New Javon', 'North Dakota', 'US', '53614-5571', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(44, 1, 48, 'Mackenzie', 'Blanda', 'rebeca.weimann@example.net', '(888) 695-3964', '6473 Rae Extensions', 'New Ariane', 'Montana', 'US', '89961', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(45, 1, 77, 'Alexys', 'Cummings', 'karley.larkin@example.org', '(800) 230-0540', '13429 Cruickshank Hollow Suite 155', 'Doloresside', 'New Hampshire', 'US', '34319-7671', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(46, 1, 47, 'Frieda', 'Deckow', 'predovic.chauncey@example.org', '(888) 310-6231', '603 Syble Vista', 'North Desiree', 'Rhode Island', 'US', '03467', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(47, 1, 77, 'Carmine', 'Reichel', 'ktorp@example.org', '877.562.2282', '77627 Juston Hills', 'Flaviestad', 'Nevada', 'US', '28286-5414', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(48, 1, 12, 'Helene', 'Lang', 'dashawn.mohr@example.org', '888-265-9093', '599 Nina Route Apt. 084', 'South Roslynchester', 'Nevada', 'US', '13509-9495', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(49, 1, 37, 'Jordane', 'Kautzer', 'shanny44@example.com', '(855) 727-2603', '7408 Quitzon Expressway', 'New Russelmouth', 'Arizona', 'US', '36366-7996', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(50, 1, 14, 'Maximo', 'Marks', 'balistreri.aliya@example.org', '(800) 467-9718', '77836 Christiansen Plains Suite 094', 'West Tatefurt', 'Michigan', 'US', '40528', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(51, 1, 53, 'Paxton', 'Zemlak', 'haven11@example.com', '844-610-6287', '832 Clarissa Trail', 'Johnstonfort', 'Oklahoma', 'US', '20860-8174', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(52, 1, 30, 'Gilbert', 'Schinner', 'broderick.hirthe@example.net', '877-677-1457', '31133 Mekhi Island Apt. 032', 'East Tyriqueburgh', 'South Dakota', 'US', '81435-8877', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(53, 1, 3, 'Dustin', 'Hoeger', 'peyton07@example.org', '(888) 524-6989', '6087 McGlynn Trail Suite 302', 'Lake Dillonhaven', 'New Hampshire', 'US', '64484', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(54, 1, 6, 'Glenna', 'Schamberger', 'madison.fadel@example.net', '(888) 491-2176', '12729 Altenwerth Springs Apt. 553', 'North Cristobal', 'Wyoming', 'US', '51097-4178', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(55, 1, 27, 'Camren', 'Stamm', 'bednar.brycen@example.com', '(866) 672-1018', '45311 Peyton Creek Apt. 046', 'Lake Melvin', 'Florida', 'US', '79889-7966', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(56, 1, 36, 'Gloria', 'Hill', 'qrenner@example.net', '877-466-7379', '918 Crist Greens Apt. 698', 'Binsburgh', 'Wyoming', 'US', '28287-3819', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(57, 1, 14, 'Rodrick', 'Bailey', 'eleanore.hilpert@example.net', '888-994-1387', '6042 Imogene Unions Apt. 806', 'West Jailyn', 'New Mexico', 'US', '31474', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(58, 1, 37, 'Devante', 'Bailey', 'rosalind20@example.org', '855-979-3690', '1190 Dortha Highway Apt. 153', 'Kulashaven', 'Washington', 'US', '23633-8965', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(59, 1, 10, 'Porter', 'VonRueden', 'bbahringer@example.net', '1-866-945-4436', '222 Tina Run Apt. 678', 'Port Uriahchester', 'Washington', 'US', '24218-7866', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(60, 1, 73, 'Dalton', 'Zulauf', 'lexus30@example.net', '866.252.2292', '805 Monte Centers', 'Bodefort', 'Nebraska', 'US', '57371-6679', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(61, 1, 73, 'Maybelle', 'Gislason', 'wolff.selmer@example.net', '800-273-4451', '195 Lavern Stravenue Suite 152', 'Verdaland', 'Pennsylvania', 'US', '91976', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(62, 1, 46, 'Gia', 'Gislason', 'asha.stark@example.com', '844.785.4750', '76810 Destin Forge Apt. 093', 'Huelsshire', 'Connecticut', 'US', '62255-8644', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(63, 1, 28, 'Alec', 'Wunsch', 'blanda.darion@example.net', '(866) 339-7848', '807 Wehner Extensions Apt. 312', 'Woodrowburgh', 'Iowa', 'US', '79902-8548', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(64, 1, 47, 'Lily', 'Goyette', 'reta.kihn@example.com', '1-877-320-0724', '794 Pagac Common Apt. 778', 'Murphyburgh', 'Montana', 'US', '70704-9497', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(65, 1, 98, 'Antonina', 'Johnston', 'isaiah62@example.org', '1-877-801-6584', '7096 Alexa Cape', 'Turnerstad', 'Louisiana', 'US', '05850-1400', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(66, 1, 77, 'Melvin', 'Ferry', 'osvaldo.fahey@example.com', '844.901.6635', '466 Gutkowski Forges', 'Lake Elliechester', 'Florida', 'US', '45824', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(67, 1, 69, 'Karl', 'Hettinger', 'enrico44@example.org', '1-844-368-9119', '474 Edmund Avenue Suite 779', 'Port Ignacio', 'Alabama', 'US', '81907-9835', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(68, 1, 58, 'Santa', 'Weimann', 'predovic.kip@example.org', '(800) 252-0469', '38735 Deontae Ports', 'Wizafurt', 'South Dakota', 'US', '03289', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(69, 1, 81, 'Tess', 'Zboncak', 'zrohan@example.com', '(844) 518-4976', '69596 Alisha Islands', 'Estrellabury', 'Maine', 'US', '55829-9875', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(70, 1, 54, 'Halie', 'Paucek', 'gladyce41@example.net', '1-866-427-1645', '839 Hailey Falls', 'New Derekside', 'Ohio', 'US', '50079-6915', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(71, 1, 91, 'Tristin', 'Crist', 'arnaldo87@example.net', '877.897.5196', '502 Providenci Plaza', 'Treverland', 'Delaware', 'US', '56021-0164', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(72, 1, 88, 'Ewell', 'Carter', 'priscilla39@example.net', '1-855-952-7204', '292 Johnson Summit Suite 369', 'Rosellaside', 'Rhode Island', 'US', '62393-3178', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(73, 1, 57, 'Gardner', 'Kunze', 'dibbert.laila@example.net', '(866) 418-5981', '5830 Lavern Light', 'North Jesus', 'Kansas', 'US', '11267', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(74, 1, 23, 'Wanda', 'Gislason', 'randy83@example.com', '877.229.1544', '3785 Herman Mills', 'South Delores', 'Florida', 'US', '36870-6008', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(75, 1, 75, 'Elvie', 'Kshlerin', 'gianni01@example.com', '1-800-407-2420', '34247 Blaise Gateway Suite 323', 'New Maryjaneburgh', 'West Virginia', 'US', '72025-8733', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(76, 1, 54, 'Chloe', 'Boehm', 'cletus.oconner@example.net', '888.508.3144', '78923 Blick Route', 'Orlandoport', 'Oregon', 'US', '20771-6871', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(77, 1, 11, 'Antonio', 'Kling', 'schmitt.ernestina@example.org', '800.458.2768', '9335 Billy Fort Apt. 759', 'Brendonbury', 'Kentucky', 'US', '70343-7537', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(78, 1, 9, 'Hayden', 'Bartoletti', 'faye.feeney@example.net', '888-386-6792', '8616 Stamm Hill Suite 532', 'East Arnoldland', 'Rhode Island', 'US', '62636-6993', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(79, 1, 40, 'Danika', 'Little', 'hammes.don@example.net', '800.838.5289', '1411 Mayert Place Apt. 038', 'West Luther', 'Indiana', 'US', '79550', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(80, 1, 14, 'Meda', 'Wyman', 'natalia85@example.com', '866-277-2171', '70679 Mertz Plains', 'West Edgarhaven', 'West Virginia', 'US', '03487', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(81, 1, 98, 'Ernie', 'Schultz', 'kirlin.nathaniel@example.org', '(866) 643-9893', '8864 Cristobal Station Apt. 574', 'South Theresiaberg', 'Georgia', 'US', '90465', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(82, 1, 95, 'Vito', 'Lockman', 'verna49@example.org', '844.567.1347', '116 Grimes Ville Suite 404', 'South Haroldmouth', 'Florida', 'US', '68309', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(83, 1, 88, 'Linnea', 'Bode', 'conn.justen@example.com', '866-937-2711', '8286 McCullough Roads Suite 723', 'Rathville', 'Illinois', 'US', '87024-5798', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(84, 1, 89, 'Bulah', 'Johns', 'cremin.ewell@example.com', '877.409.6631', '5083 Bins Hill Suite 566', 'Stanleyview', 'Minnesota', 'US', '52383-9339', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(85, 1, 55, 'Guadalupe', 'Doyle', 'graham.demond@example.org', '(855) 375-5052', '786 Miracle Meadows Apt. 006', 'North Willardborough', 'Alaska', 'US', '40821', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(86, 1, 65, 'Terry', 'Heathcote', 'trantow.kristian@example.net', '1-866-405-2388', '449 Kilback Vista', 'Enaberg', 'Kansas', 'US', '47815', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(87, 1, 40, 'Birdie', 'Bernier', 'schuppe.lydia@example.com', '(855) 936-2164', '64692 Toni Spring Suite 159', 'Gaylordborough', 'Oregon', 'US', '28876-5120', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(88, 1, 66, 'Hunter', 'Auer', 'cruickshank.matt@example.net', '866-886-1362', '8136 Feeney Branch Suite 348', 'Mannberg', 'Iowa', 'US', '90573-4540', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(89, 1, 87, 'Dax', 'Jerde', 'bartell.florida@example.com', '800.944.3004', '69635 Jacobi Station', 'Schimmelberg', 'Florida', 'US', '87221', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(90, 1, 52, 'Kelly', 'VonRueden', 'ritchie.rebecca@example.com', '1-877-813-6131', '701 Hyatt Viaduct Suite 087', 'New Green', 'Colorado', 'US', '22349', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(91, 1, 90, 'Kurtis', 'Batz', 'hamill.braden@example.com', '800-506-5033', '5051 Brakus Knoll Suite 684', 'Hettingerhaven', 'North Dakota', 'US', '39950', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(92, 1, 2, 'Dessie', 'Weissnat', 'stillman@example.org', '1-844-969-6899', '672 Treutel Road Suite 602', 'Marquismouth', 'Florida', 'US', '70640-0854', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(93, 1, 12, 'Jack', 'Zboncak', 'jakob62@example.com', '844-238-7632', '398 Kilback Squares', 'East Darrellchester', 'Connecticut', 'US', '94050', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(94, 1, 34, 'Noemy', 'Bauch', 'maxime45@example.com', '1-888-560-0864', '94601 Orn Extension', 'East Rettachester', 'Virginia', 'US', '66847-6860', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(95, 1, 8, 'Alfreda', 'Collier', 'ray.schiller@example.com', '1-844-974-5933', '11289 Adela Landing Suite 593', 'North Celine', 'Utah', 'US', '52620-6613', '2024-11-28 02:55:26', '2024-11-28 02:55:27', NULL),
(96, 1, 41, 'Fatima', 'Keeling', 'lakin.jayme@example.com', '(844) 357-6584', '378 Velva Streets', 'Lake Nealside', 'Arizona', 'US', '09370-2312', '2024-11-28 02:55:26', '2024-11-28 02:55:27', NULL),
(97, 1, 76, 'Marilou', 'Zieme', 'crooks.francesca@example.org', '844.581.8051', '153 Alana Motorway', 'West Talon', 'Connecticut', 'US', '25701', '2024-11-28 02:55:26', '2024-11-28 02:55:27', NULL),
(98, 1, 15, 'Vanessa', 'Wehner', 'nestor95@example.org', '877-592-8899', '2983 Stanton Passage Apt. 596', 'North Ramonaland', 'Oklahoma', 'US', '95170', '2024-11-28 02:55:26', '2024-11-28 02:55:27', NULL),
(99, 1, 68, 'Eldon', 'Volkman', 'trantow.maximus@example.org', '1-877-879-0366', '2820 Holly Lake', 'South Emiliafurt', 'California', 'US', '77017-9625', '2024-11-28 02:55:26', '2024-11-28 02:55:27', NULL),
(100, 1, 53, 'Carlee', 'Boehm', 'feil.krystel@example.org', '888.772.2867', '47515 Block Haven Suite 166', 'Ferryland', 'North Carolina', 'US', '78188', '2024-11-28 02:55:26', '2024-11-28 02:55:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `location`, `date`, `image`, `time`, `created_at`, `updated_at`) VALUES
(8, 'Quo facere vitae aut', 'Assumenda dignissimo', 'Aspernatur ipsum si', '2022-08-16', 'uploads/images/events/1733411819.jpg', '16:58', '2024-12-05 10:11:37', '2024-12-05 10:16:59'),
(9, 'Quo facere vitae aut', 'Assumenda dignissimo', 'Aspernatur ipsum si', '2022-08-16', 'uploads/images/events/1733411819.jpg', '16:58', '2024-12-05 10:11:37', '2024-12-05 10:16:59'),
(10, 'Quo facere vitae aut', 'Assumenda dignissimo', 'Aspernatur ipsum si', '2022-08-16', 'uploads/images/events/1733411819.jpg', '16:58', '2024-12-05 10:11:37', '2024-12-05 10:16:59'),
(11, 'Quo facere vitae aut', 'Assumenda dignissimo', 'Aspernatur ipsum si', '2022-08-16', 'uploads/images/events/1733411819.jpg', '16:58', '2024-12-05 10:11:37', '2024-12-05 10:16:59'),
(12, 'Quo facere vitae aut', 'Assumenda dignissimo', 'Aspernatur ipsum si', '2022-08-16', 'uploads/images/events/1733411819.jpg', '16:58', '2024-12-05 10:11:37', '2024-12-05 10:16:59'),
(13, 'Id qui nobis conseq', 'Quam in sapiente des', 'Adipisicing quibusda', '1976-06-15', 'uploads/images/events/1733928726.jpg', '02:40', '2024-12-11 09:52:06', '2024-12-11 09:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mappings`
--

CREATE TABLE `mappings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_student` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `principle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mappings`
--

INSERT INTO `mappings` (`id`, `name`, `address`, `lat`, `long`, `no_of_student`, `principle`, `contact`, `district`, `image`, `created_at`, `updated_at`) VALUES
(22, 'Quintessa Ryan', 'Asperiores explicabo', '35.304863', '75.5444217', '680', 'Quas est magna dolo', '664', 'Sunt rerum quia lau', 'uploads/images/mappings/1733929124.jpg', '2024-12-11 09:58:44', '2024-12-11 09:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from`, `designation`, `photo`, `detail`, `created_at`, `updated_at`) VALUES
(2, 'ali', 'Assistant Director', 'uploads/images/messages/1733382298.jpg', 'our mission is to go on and go on', '2024-12-05 02:04:58', '2024-12-05 02:04:58'),
(3, 'Hussain', 'Director Menager', 'uploads/images/messages/1733382744.png', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2024-12-05 02:12:24', '2024-12-05 02:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2020_01_01_000001_create_password_resets_table', 1),
(3, '2020_01_01_000002_create_failed_jobs_table', 1),
(4, '2020_01_01_000003_create_accounts_table', 1),
(5, '2020_01_01_000004_create_users_table', 1),
(6, '2020_01_01_000005_create_organizations_table', 1),
(7, '2020_01_01_000006_create_contacts_table', 1),
(8, '2024_04_02_000000_add_expires_at_to_personal_access_tokens_table', 1),
(9, '2024_04_02_000000_rename_password_resets_table', 1),
(10, '2024_11_28_101102_create_events_table', 2),
(11, '2024_11_28_120412_create_notices_table', 3),
(12, '2024_11_29_121341_create_careers_table', 4),
(13, '2024_11_29_122011_create_messages_table', 4),
(14, '2024_11_30_075114_create_mappings_table', 5),
(15, '2024_12_03_064642_create_settings_table', 6),
(16, '2024_12_05_121932_add_statistics_to_settings_table', 7),
(17, '2024_12_05_124026_create_news_table', 8),
(18, '2024_12_05_124828_add_image_to_news_table', 9),
(19, '2024_12_05_134448_create_sliders_table', 10),
(20, '2024_12_05_144058_add_about_to_settings_table', 11),
(21, '2024_12_05_150652_add_image_to_events_table', 12),
(22, '2024_12_09_132039_add_mission_vision_to_settings_table', 13),
(23, '2024_12_11_092437_add_columns_to_mappings_table', 14),
(24, '2024_12_11_105927_create_projects_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `details`, `image`, `created_at`, `updated_at`) VALUES
(2, 'test title news', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'uploads/images/news/1733404764.jpg', '2024-12-05 08:19:24', '2024-12-05 08:26:56'),
(3, 'Cupiditate modi expl', 'Minim sequi enim sed', 'uploads/images/news/1733928770.jpg', '2024-12-11 09:52:50', '2024-12-11 09:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `description`, `date`, `time`, `created_at`, `updated_at`) VALUES
(2, 'testete', 'tttttttttttttttttttt', '2024-11-28', '17:29', '2024-11-28 07:27:06', '2024-11-28 07:27:06'),
(3, 'hahahaha', 'Iusto voluptatem in', '2009-03-27', '11:27', '2024-11-29 07:13:08', '2024-11-29 07:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `account_id`, `name`, `email`, `phone`, `address`, `city`, `region`, `country`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Durgan, Zboncak and Greenfelder', 'ledner.monte@simonis.net', '800-424-5376', '5065 Moore Pike Apt. 865', 'Dietrichmouth', 'Wisconsin', 'US', '20815', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(2, 1, 'Hodkiewicz, Lesch and D\'Amore', 'kaleb44@treutel.info', '877.500.4558', '91700 Corkery Street Suite 168', 'Kshlerinport', 'North Carolina', 'US', '13244-8755', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(3, 1, 'Lind, Bogan and Heidenreich', 'feeney.vella@denesik.com', '1-888-778-4961', '735 Hessel Divide Suite 262', 'Port Virginia', 'Florida', 'US', '93888', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(4, 1, 'Grimes and Sons', 'selena69@schmitt.net', '855.624.7014', '95503 Olen Common', 'Port Arnoburgh', 'Ohio', 'US', '36524-2018', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(5, 1, 'Powlowski and Sons', 'mckenzie.carole@lakin.info', '(866) 392-3942', '556 Estefania Parks', 'Leonieville', 'Colorado', 'US', '51783-5080', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(6, 1, 'Kutch, Kovacek and Schuppe', 'alden.bruen@davis.com', '888.975.2142', '4137 Kuphal Path Apt. 031', 'Loyalmouth', 'Georgia', 'US', '09598-6173', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(7, 1, 'Haag LLC', 'smosciski@moore.com', '844-345-7365', '71437 Robel Estates', 'West Nealberg', 'California', 'US', '56607-6948', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(8, 1, 'Howe-Abshire', 'kathlyn24@white.org', '(855) 842-5584', '424 Kessler Crossroad Suite 515', 'Lyricmouth', 'Missouri', 'US', '14899-4655', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(9, 1, 'Ruecker-Gusikowski', 'benton82@doyle.info', '(866) 451-2548', '442 Witting Lights Apt. 188', 'South Aidan', 'Montana', 'US', '47368', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(10, 1, 'Gerlach PLC', 'xlind@bernier.com', '855.639.3288', '260 Mayer Pass', 'Tamiamouth', 'Rhode Island', 'US', '04005-4824', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(11, 1, 'Bergstrom, Mraz and Kuhn', 'kuhlman.thelma@barrows.net', '877-504-2193', '89519 Myriam Crossroad', 'Norvaltown', 'Utah', 'US', '88576-7468', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(12, 1, 'Sanford-Schimmel', 'ybecker@muller.net', '866-681-5054', '2724 Rath Burg', 'West Alfred', 'Maine', 'US', '24320-0205', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(13, 1, 'Nitzsche-Langworth', 'wunsch.lance@raynor.com', '866-713-7726', '417 Stroman Keys', 'Spencerville', 'Tennessee', 'US', '52459', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(14, 1, 'Kreiger, Hayes and Ruecker', 'gerhold.shyann@brekke.com', '1-855-726-7163', '1416 Caden Highway', 'Enaburgh', 'Alaska', 'US', '98383', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(15, 1, 'Sawayn PLC', 'mpollich@hagenes.com', '(844) 597-7394', '63034 Mckayla Haven', 'South Kacie', 'Kentucky', 'US', '39777-9278', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(16, 1, 'Lesch-Koss', 'johnston.arne@kunde.com', '1-844-692-5587', '5159 Douglas Oval Apt. 945', 'Cronaberg', 'Arizona', 'US', '28757', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(17, 1, 'Turner-Feil', 'lkirlin@reichel.net', '855-699-2973', '8029 Legros Wells', 'Ratkeville', 'Nebraska', 'US', '01006-4697', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(18, 1, 'Lindgren-Homenick', 'green.winnifred@volkman.com', '844.975.2762', '4054 Renner Turnpike Suite 482', 'Langberg', 'Colorado', 'US', '34978-0776', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(19, 1, 'Dickens-Armstrong', 'raleigh.damore@weissnat.org', '1-844-732-7929', '8109 Tre Islands', 'West Blancastad', 'Tennessee', 'US', '39351', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(20, 1, 'Bruen Ltd', 'szulauf@wiza.com', '800-242-8433', '88423 Kareem Terrace Suite 635', 'Port Lula', 'Illinois', 'US', '61996-1944', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(21, 1, 'Howe Ltd', 'lilyan30@bradtke.com', '1-855-503-5103', '358 Kyleigh Forge', 'Lake Trudie', 'Kentucky', 'US', '02748', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(22, 1, 'Harris Ltd', 'wgrady@hills.com', '1-844-739-6488', '19465 Providenci Motorway Suite 769', 'Kailynton', 'South Dakota', 'US', '63946', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(23, 1, 'Bashirian-Weimann', 'ahowe@nitzsche.com', '800-363-1889', '3636 Schoen Island', 'Lake Wilfredoside', 'New Jersey', 'US', '79403', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(24, 1, 'Luettgen, Greenfelder and Satterfield', 'luettgen.abdul@berge.com', '(866) 413-5821', '75482 Hodkiewicz Springs Suite 181', 'Saigeberg', 'Minnesota', 'US', '80361-8499', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(25, 1, 'Stamm Inc', 'hirthe.emile@stokes.net', '1-844-930-3739', '321 Ricardo Terrace', 'Schultzshire', 'North Dakota', 'US', '89851', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(26, 1, 'Deckow, Reichert and Rutherford', 'carissa56@jenkins.com', '888.667.8922', '81848 Braun Square Apt. 036', 'East Scottieport', 'Kentucky', 'US', '50606', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(27, 1, 'Harris-Toy', 'carter.arturo@quigley.com', '800.910.2628', '4934 Denesik River', 'Framiburgh', 'Maine', 'US', '91846', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(28, 1, 'Deckow Inc', 'ikoch@torp.biz', '(800) 376-0691', '82435 Vickie Port Suite 685', 'Austinville', 'California', 'US', '12073-8252', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(29, 1, 'Adams, Konopelski and Lemke', 'mgleichner@barton.info', '(888) 707-4228', '54649 Hadley Forest Apt. 324', 'East Megane', 'Missouri', 'US', '71573', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(30, 1, 'Rogahn, Schamberger and Mueller', 'carroll.bernhard@jakubowski.com', '855-608-5701', '25441 Carrie Forks', 'Cronaberg', 'Kansas', 'US', '00348', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(31, 1, 'Larson, Cummings and Lesch', 'retha81@thompson.net', '877-653-8154', '64933 Theo Ferry Suite 107', 'South Zachary', 'South Dakota', 'US', '29693', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(32, 1, 'Daniel and Sons', 'corkery.eda@langosh.info', '800-629-9811', '237 Jakubowski Brook Apt. 014', 'New Freedaport', 'Missouri', 'US', '92175', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(33, 1, 'Heathcote Inc', 'grady.nicole@gislason.com', '1-800-848-4064', '78993 Ferry Junction', 'Port Jedidiahview', 'Arkansas', 'US', '63065', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(34, 1, 'McCullough, Abernathy and Halvorson', 'donna87@hoeger.com', '1-866-213-6674', '2917 Bartell Manors', 'Josefafurt', 'Maryland', 'US', '52168-3254', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(35, 1, 'Rogahn, Grant and Rutherford', 'stacy93@muller.com', '855.874.2041', '596 Asa Views Suite 709', 'Port Marilou', 'Pennsylvania', 'US', '90012-3999', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(36, 1, 'Stokes-Hill', 'zkub@fadel.biz', '800.292.1822', '10220 Roma Extensions', 'New Thomas', 'South Dakota', 'US', '46448', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(37, 1, 'Homenick PLC', 'brandy.balistreri@koch.com', '800-636-1420', '529 Oberbrunner Island Suite 445', 'North Bridgetteport', 'Maryland', 'US', '06337-2753', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(38, 1, 'Nader Group', 'sonia51@ziemann.org', '888.980.2762', '385 Meggie Road', 'East Amber', 'New Jersey', 'US', '63732', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(39, 1, 'Price-Hudson', 'denesik.rod@stokes.com', '888.474.3073', '779 Hardy Ford', 'Lambertland', 'Nebraska', 'US', '26685', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(40, 1, 'Bruen, Hyatt and Hodkiewicz', 'gdurgan@wunsch.com', '800.306.4719', '11045 Sarah Throughway Suite 937', 'New Morton', 'Nevada', 'US', '34124', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(41, 1, 'Bins-Heidenreich', 'kertzmann.norberto@robel.com', '844.476.4418', '1242 Ken Crossing', 'Lake Eldora', 'Wisconsin', 'US', '74917', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(42, 1, 'Renner Group', 'ahaley@okeefe.biz', '800-513-5815', '17806 Quinten Curve', 'Beierstad', 'Utah', 'US', '43924', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(43, 1, 'Gerlach-Beahan', 'smayer@kulas.com', '844.367.5719', '5455 Mikel Mill Suite 525', 'New Willie', 'New York', 'US', '25711-4102', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(44, 1, 'Koss-Rath', 'keebler.oswald@barton.com', '888.886.3554', '23660 Kirlin Forks Suite 312', 'Boylefurt', 'Washington', 'US', '96763-5445', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(45, 1, 'Leuschke-Abernathy', 'volkman.gaylord@koss.com', '1-800-472-2793', '8996 Rosella Lake Apt. 177', 'West Shaun', 'Louisiana', 'US', '21824-3370', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(46, 1, 'Weber, Jacobson and Zulauf', 'mike33@predovic.net', '(800) 513-2554', '9350 Bauch Stravenue Suite 291', 'West Desiree', 'Texas', 'US', '21534-3045', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(47, 1, 'O\'Reilly, Flatley and Daniel', 'jannie.torphy@reilly.com', '877-742-1447', '36561 Roselyn Plains', 'Keltontown', 'Florida', 'US', '85947', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(48, 1, 'Moen-Block', 'ethelyn.white@damore.org', '1-888-951-4228', '798 Schuppe Road', 'South Ethyl', 'Missouri', 'US', '91298', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(49, 1, 'Donnelly-Rempel', 'crist.andres@hauck.com', '1-855-725-7161', '305 Donald Station', 'Zboncakstad', 'Michigan', 'US', '10477', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(50, 1, 'Kessler-Bauch', 'marcelo86@kuhn.com', '877.261.1891', '9068 Stone Trace Suite 961', 'Port Marcelinostad', 'Iowa', 'US', '29663', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(51, 1, 'Gerlach Group', 'zabshire@watsica.com', '800-461-6755', '76177 Simeon Rapids Apt. 031', 'South Jarodshire', 'Minnesota', 'US', '86723-0405', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(52, 1, 'Feeney, Gislason and Koss', 'ferry.alison@orn.net', '1-866-969-0661', '79908 Elda Parks Apt. 333', 'Lonzoborough', 'Pennsylvania', 'US', '16112-1967', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(53, 1, 'Blick LLC', 'watsica.rasheed@goyette.com', '(888) 874-0185', '498 Jordy Gateway Apt. 286', 'East Aubreyburgh', 'Michigan', 'US', '19927', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(54, 1, 'Sporer-Wyman', 'herminia.kerluke@kilback.com', '1-855-545-6600', '50700 Wolf Turnpike', 'West Edwinastad', 'Maryland', 'US', '76555-3023', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(55, 1, 'Rogahn-Mitchell', 'dolores22@raynor.info', '(855) 703-4755', '6665 Yoshiko Brooks', 'Flatleyton', 'Colorado', 'US', '73149-1814', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(56, 1, 'Emard-Wisozk', 'augusta42@green.org', '1-800-906-2761', '58015 Yasmeen Roads', 'New Amaya', 'Alaska', 'US', '68886', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(57, 1, 'Maggio, Reynolds and Mante', 'paucek.glenda@lubowitz.com', '855-465-9841', '2110 Aidan Junction', 'Pasqualemouth', 'Virginia', 'US', '14123-8731', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(58, 1, 'Larkin-Kuhn', 'vonrueden.juston@ledner.com', '(855) 522-9113', '76172 Grimes Causeway Apt. 130', 'McKenziefurt', 'Indiana', 'US', '90835-0691', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(59, 1, 'Fahey-Schimmel', 'flo.hessel@bins.com', '(888) 430-9617', '150 Wilmer Throughway Suite 767', 'Kerlukestad', 'Iowa', 'US', '36308-6759', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(60, 1, 'Adams Inc', 'kuphal.jaqueline@hagenes.com', '844-940-4231', '907 Grant Prairie', 'Port Danyka', 'South Dakota', 'US', '28519', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(61, 1, 'Windler, Hill and McGlynn', 'abshire.jessica@thiel.net', '1-800-566-8777', '79565 Emmitt Canyon Apt. 196', 'Bartonview', 'West Virginia', 'US', '92178', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(62, 1, 'King PLC', 'edwin23@runolfsson.info', '(866) 584-4251', '6300 Balistreri Brooks Suite 519', 'West Michel', 'Wyoming', 'US', '20420', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(63, 1, 'Rosenbaum LLC', 'jakubowski.oleta@gerhold.com', '(800) 987-4157', '44708 Johnson Drive Apt. 918', 'Port Francisca', 'New York', 'US', '68908-0345', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(64, 1, 'Okuneva, Bogan and Bayer', 'koss.laura@daugherty.com', '866.514.8595', '74884 Bernier Islands', 'Koeppview', 'District of Columbia', 'US', '73037', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(65, 1, 'Swift, Witting and Gutmann', 'kunze.heaven@schuppe.com', '855.268.1924', '674 Richmond Ports Suite 398', 'Dickensborough', 'Maryland', 'US', '95345', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(66, 1, 'Effertz LLC', 'hbatz@ernser.com', '855.518.7976', '1585 Dibbert Shoals Apt. 153', 'Kuphalshire', 'North Carolina', 'US', '20916-8386', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(67, 1, 'Wiegand, Schmitt and Hyatt', 'dandre87@crooks.com', '855-462-3067', '318 Ariane Vista Suite 152', 'Lake Constantin', 'Indiana', 'US', '45964', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(68, 1, 'O\'Connell Inc', 'zbahringer@volkman.info', '844.384.2379', '600 Tara Mountain Suite 526', 'East Gideonton', 'Indiana', 'US', '44079', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(69, 1, 'Spinka, Weimann and Hane', 'kkeeling@skiles.com', '855-250-7995', '57146 Ludie Field Apt. 690', 'South Assunta', 'Rhode Island', 'US', '29710', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(70, 1, 'Medhurst-Beatty', 'bert.abshire@roberts.org', '800.337.2637', '5532 Rollin Square', 'East Dixietown', 'Texas', 'US', '69625-0285', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(71, 1, 'Borer PLC', 'becker.mireille@runolfsdottir.info', '(800) 408-8204', '988 Koelpin Cliffs Apt. 610', 'Hilpertburgh', 'West Virginia', 'US', '89922-9577', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(72, 1, 'Crooks Group', 'payton.gottlieb@johnston.net', '1-888-730-2817', '72861 Julianne Freeway Apt. 652', 'Eloisastad', 'Montana', 'US', '76961', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(73, 1, 'Sporer, Towne and Rogahn', 'shields.audie@kulas.org', '(866) 338-4205', '68720 Stan Brooks Apt. 269', 'West Wyman', 'Arizona', 'US', '15686-6050', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(74, 1, 'Romaguera, Waters and Cassin', 'jaquelin56@stark.com', '1-844-565-5553', '85777 Sanford Estate Suite 555', 'Dandrebury', 'Missouri', 'US', '07281-3673', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(75, 1, 'Nikolaus, Murphy and Considine', 'kohler.demond@herzog.info', '877.678.9963', '994 Jaydon Stravenue', 'West Janestad', 'Ohio', 'US', '52625', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(76, 1, 'Vandervort-Ullrich', 'ondricka.dandre@lehner.biz', '1-800-218-7250', '415 Hansen Light Apt. 669', 'West Abdullah', 'California', 'US', '56878', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(77, 1, 'O\'Reilly, Hickle and Pacocha', 'beryl.becker@balistreri.com', '1-866-364-3381', '2071 Dibbert Loaf', 'Dietrichborough', 'Alaska', 'US', '34254', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(78, 1, 'Klein-Roob', 'sim56@fadel.com', '1-888-220-0525', '22314 Dannie Skyway', 'North Clovismouth', 'Alabama', 'US', '86240-5454', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(79, 1, 'Abernathy, Barton and Torphy', 'earnestine33@jerde.biz', '844-224-4883', '25642 Murazik Highway Apt. 076', 'Smithamchester', 'Arizona', 'US', '13573-4793', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(80, 1, 'Schaden Group', 'marcelina.heidenreich@russel.info', '800.664.7038', '8279 Horacio Ports', 'North Jaquelin', 'Idaho', 'US', '01018', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(81, 1, 'Lubowitz-Ziemann', 'wunsch.immanuel@schroeder.biz', '844-217-2418', '40728 Gay Point', 'Royalmouth', 'North Dakota', 'US', '92196-8353', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(82, 1, 'Mraz-Erdman', 'adickinson@farrell.com', '888.784.7954', '5650 Morissette Centers Apt. 403', 'Port Allie', 'Alaska', 'US', '62652-6105', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(83, 1, 'Moen-Schuster', 'freda.quigley@wolff.com', '866-923-8342', '8725 Predovic Rapid Apt. 312', 'Katrinestad', 'Delaware', 'US', '66490', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(84, 1, 'Simonis Group', 'skye15@glover.com', '877.371.0527', '47313 Hegmann Mountains Apt. 023', 'Bayerville', 'West Virginia', 'US', '80684-1465', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(85, 1, 'Rogahn and Sons', 'vince47@hegmann.com', '888-705-0470', '1555 Adolphus Skyway', 'Ludieton', 'Colorado', 'US', '39114', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(86, 1, 'Daugherty, Kshlerin and Welch', 'luettgen.susana@feeney.com', '844.729.8043', '99040 Delia Drive Apt. 000', 'East Sallyfort', 'South Dakota', 'US', '00754', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(87, 1, 'Satterfield, Marquardt and Welch', 'rosenbaum.jasper@strosin.net', '(888) 563-9309', '21809 Bergstrom Greens Apt. 010', 'Homenickville', 'Connecticut', 'US', '94670', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(88, 1, 'Kemmer-Rogahn', 'fred12@lubowitz.net', '1-844-568-9991', '31237 Herman Point Suite 390', 'New Graysonfurt', 'Wyoming', 'US', '69647-7950', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(89, 1, 'Kilback, Wehner and Morissette', 'sanford.don@reichert.com', '1-844-231-4731', '4653 Senger Camp Suite 123', 'Corenefurt', 'Virginia', 'US', '17177-5692', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(90, 1, 'Konopelski-Kihn', 'arne.mcdermott@sporer.com', '888.721.7713', '7165 Anderson Junction', 'West Darby', 'South Carolina', 'US', '36228-9251', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(91, 1, 'Kris, Borer and Durgan', 'zparisian@leuschke.com', '866.853.1143', '48096 Tiara Unions Apt. 030', 'Gutkowskihaven', 'New Jersey', 'US', '23748-0483', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(92, 1, 'Upton Ltd', 'rico.wuckert@keeling.net', '888-322-3415', '9698 Hilpert Mountain', 'Powlowskiton', 'Texas', 'US', '48816-2974', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(93, 1, 'Erdman Group', 'marcelina46@oconnell.org', '844.854.9694', '4586 Madeline Center', 'Port Aiyana', 'Arkansas', 'US', '85111-9994', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(94, 1, 'Ullrich and Sons', 'hfay@osinski.com', '(888) 463-5821', '14263 Dooley Way Apt. 821', 'Evelineport', 'Kansas', 'US', '65978-6412', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(95, 1, 'Blick Inc', 'dorothy22@torp.com', '855-905-2559', '508 Haleigh Corner', 'Earnestinehaven', 'West Virginia', 'US', '48460', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(96, 1, 'Lowe-Bins', 'ines41@kerluke.com', '1-855-317-4010', '1852 Connelly Crossing Suite 112', 'Aufderharstad', 'Connecticut', 'US', '46240', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(97, 1, 'Leannon, McClure and Block', 'onie.mohr@deckow.net', '1-800-985-7921', '41856 Rogahn Coves Apt. 862', 'Lake Leone', 'Nebraska', 'US', '51842', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(98, 1, 'Jast, Morar and Steuber', 'bradly.waters@rosenbaum.com', '1-855-673-3203', '55609 Daniel Bypass', 'East Sidton', 'Maryland', 'US', '75600-2869', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(99, 1, 'Boyer Ltd', 'krath@quigley.net', '(844) 696-6746', '59840 Shakira Roads', 'Lake Clintonchester', 'New Jersey', 'US', '57640', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL),
(100, 1, 'Kshlerin, Hane and Brakus', 'danielle.boehm@hermiston.biz', '1-888-513-1623', '5854 Ratke Roads Suite 324', 'East Kattie', 'Missouri', 'US', '15912-6360', '2024-11-28 02:55:26', '2024-11-28 02:55:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `file`, `created_at`, `updated_at`) VALUES
(8, 'Deserunt qui recusan', 'Aperiam molestiae do', 'uploads/files/projects/1733920507.pdf', '2024-12-11 07:28:25', '2024-12-11 07:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_media` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_vision` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `statistics` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `email`, `contact`, `address`, `social_media`, `about`, `mission_vision`, `created_at`, `updated_at`, `statistics`) VALUES
(6, 'uploads/images/logo/1733383155.png', 'moslemparve@gmail.com', '3435455025', 'hasan colony', '{\"facebook\":\"https:\\/\\/www.facebook.com\",\"instagram\":\"https:\\/\\/www.instagram.com.pk\",\"twitter\":\"https:\\/\\/www.twitter.com\"}', '{\"about\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\\r\\ncupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem\",\"image\":\"uploads\\/images\\/about\\/1733907565.jpg\"}', '{\"mission\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\\r\\n\\r\\ncupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem\",\"vision\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\\r\\n\\r\\ncupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem\",\"image\":\"uploads\\/images\\/mission_vision\\/1733752220.jpg\"}', '2024-12-03 04:01:16', '2024-12-11 03:59:25', '{\"total_school\":\"20\",\"total_student\":\"200\",\"total_teacher\":\"12\",\"total_staff\":\"250\"}');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(3, 'test slider 2', 'test slider 2', 'uploads/images/sliders/1733408463.jpg', '2024-12-05 09:21:03', '2024-12-05 09:21:03'),
(4, 'Molestiae proident', 'Laborum Dicta eaque', 'uploads/images/sliders/1733921917.png', '2024-12-11 07:58:37', '2024-12-11 07:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT 0,
  `photo_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `account_id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `owner`, `photo_path`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'John', 'Doe', 'johndoe@example.com', '2024-11-28 02:55:24', '$2y$12$TiU3pq4TzYwJ9VApZkeRmOomiYGvs4.Fub0f.ujbG0QbhNQMgP7hu', 1, NULL, 'QN4Q87CRI1Qj6nfRbqh0Zm1Fr7WqXwxUsYsSUeCUkwAV9YgBdrTfJtWRt3YH', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(2, 1, 'Austen', 'Abernathy', 'kuhlman.lorenza@example.net', '2024-11-28 02:55:25', '$2y$12$7A59oHhvMkCrWl/cEE1kSuvn1DEyrQg3GI.qv85MF6Tp3zdXSmynm', 0, NULL, 'nIhlDmr7cP', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(3, 1, 'Jadyn', 'Mills', 'tracey.balistreri@example.net', '2024-11-28 02:55:25', '$2y$12$7A59oHhvMkCrWl/cEE1kSuvn1DEyrQg3GI.qv85MF6Tp3zdXSmynm', 0, NULL, 'PgvCTYQLsz', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(4, 1, 'Hollis', 'Gleason', 'cassandre84@example.org', '2024-11-28 02:55:25', '$2y$12$7A59oHhvMkCrWl/cEE1kSuvn1DEyrQg3GI.qv85MF6Tp3zdXSmynm', 0, NULL, 'EfAZiPkZuu', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(5, 1, 'Theresa', 'Tremblay', 'sally67@example.net', '2024-11-28 02:55:25', '$2y$12$7A59oHhvMkCrWl/cEE1kSuvn1DEyrQg3GI.qv85MF6Tp3zdXSmynm', 0, NULL, 'zmLikVePs8', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL),
(6, 1, 'Kip', 'Pouros', 'micheal.davis@example.org', '2024-11-28 02:55:25', '$2y$12$7A59oHhvMkCrWl/cEE1kSuvn1DEyrQg3GI.qv85MF6Tp3zdXSmynm', 0, NULL, 'hiUbH7bZfu', '2024-11-28 02:55:25', '2024-11-28 02:55:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_account_id_index` (`account_id`),
  ADD KEY `contacts_organization_id_index` (`organization_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mappings`
--
ALTER TABLE `mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organizations_account_id_index` (`account_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_account_id_index` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mappings`
--
ALTER TABLE `mappings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
