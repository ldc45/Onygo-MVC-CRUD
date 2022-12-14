-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 12 déc. 2022 à 16:22
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `onygo`
--

-- --------------------------------------------------------

--
-- Structure de la table `search`
--

CREATE TABLE `search` (
  `search_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ville_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `user_pseudo` varchar(100) NOT NULL,
  `user_prenom` varchar(100) NOT NULL,
  `user_nom` varchar(100) NOT NULL,
  `user_age` int(11) NOT NULL,
  `user_mdp` varchar(100) NOT NULL,
  `user_mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_user`, `user_pseudo`, `user_prenom`, `user_nom`, `user_age`, `user_mdp`, `user_mail`) VALUES
(3, 'uyiyiyuri', 'iryui', 'yuyrui', 8, 'oryoyouuy', 'ldc45@outlook.fr1'),
(8, '12345', 'Ludovic', 'AGESILAS', 17, '12345', 'ldc45@outlook.fr');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id_ville` int(11) NOT NULL,
  `ville_nom` varchar(100) NOT NULL,
  `ville_langue` varchar(100) NOT NULL,
  `ville_population` int(30) NOT NULL,
  `region` varchar(100) NOT NULL,
  `currencies_name` varchar(100) NOT NULL,
  `currencies_code` varchar(10) NOT NULL,
  `currencies_symbol` varchar(10) NOT NULL,
  `ville_latitude` double NOT NULL,
  `ville_longitude` double NOT NULL,
  `drapeau` varchar(100) NOT NULL,
  `alpha2code` varchar(10) NOT NULL,
  `iso639` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id_ville`, `ville_nom`, `ville_langue`, `ville_population`, `region`, `currencies_name`, `currencies_code`, `currencies_symbol`, `ville_latitude`, `ville_longitude`, `drapeau`, `alpha2code`, `iso639`) VALUES
(1, 'Kabul', 'Pashto', 40218234, 'Asia', 'Afghan afghani', 'AFN', '؋', 33, 65, 'https://upload.wikimedia.org/wikipedia/commons/5/5c/Flag_of_the_Taliban.svg', 'AF', 'ps'),
(2, 'Mariehamn', 'Swedish', 28875, 'Europe', 'Euro', 'EUR', '€', 60.116667, 19.9, 'https://flagcdn.com/ax.svg', 'AX', 'sv'),
(3, 'Tirana', 'Albanian', 2837743, 'Europe', 'Albanian lek', 'ALL', 'L', 41, 20, 'https://flagcdn.com/al.svg', 'AL', 'sq'),
(4, 'Algiers', 'Arabic', 44700000, 'Africa', 'Algerian dinar', 'DZD', 'د.ج', 28, 3, 'https://flagcdn.com/dz.svg', 'DZ', 'ar'),
(5, 'Pago Pago', 'English', 55197, 'Oceania', 'United States Dollar', 'USD', '$', -14.33333333, -170, 'https://flagcdn.com/as.svg', 'AS', 'en'),
(6, 'Andorra la Vella', 'Catalan', 77265, 'Europe', 'Euro', 'EUR', '€', 42.5, 1.5, 'https://flagcdn.com/ad.svg', 'AD', 'ca'),
(7, 'Luanda', 'Portuguese', 32866268, 'Africa', 'Angolan kwanza', 'AOA', 'Kz', -12.5, 18.5, 'https://flagcdn.com/ao.svg', 'AO', 'pt'),
(8, 'The Valley', 'English', 13452, 'Americas', 'East Caribbean dollar', 'XCD', '$', 18.25, -63.16666666, 'https://flagcdn.com/ai.svg', 'AI', 'en'),
(9, 'Saint John\'s', 'English', 97928, 'Americas', 'East Caribbean dollar', 'XCD', '$', 17.05, -61.8, 'https://flagcdn.com/ag.svg', 'AG', 'en'),
(10, 'Buenos Aires', 'Spanish', 45376763, 'Americas', 'Argentine peso', 'ARS', '$', -34, -64, 'https://flagcdn.com/ar.svg', 'AR', 'es'),
(11, 'Yerevan', 'Armenian', 2963234, 'Asia', 'Armenian dram', 'AMD', '֏', 40, 45, 'https://flagcdn.com/am.svg', 'AM', 'hy'),
(12, 'Oranjestad', 'Dutch', 106766, 'Americas', 'Aruban florin', 'AWG', 'ƒ', 12.5, -69.96666666, 'https://flagcdn.com/aw.svg', 'AW', 'nl'),
(13, 'Canberra', 'English', 25687041, 'Oceania', 'Australian dollar', 'AUD', '$', -27, 133, 'https://flagcdn.com/au.svg', 'AU', 'en'),
(14, 'Vienna', 'German', 8917205, 'Europe', 'Euro', 'EUR', '€', 47.33333333, 13.33333333, 'https://flagcdn.com/at.svg', 'AT', 'de'),
(15, 'Baku', 'Azerbaijani', 10110116, 'Asia', 'Azerbaijani manat', 'AZN', '₼', 40.5, 47.5, 'https://flagcdn.com/az.svg', 'AZ', 'az'),
(16, 'Nassau', 'English', 393248, 'Americas', 'Bahamian dollar', 'BSD', '$', 24.25, -76, 'https://flagcdn.com/bs.svg', 'BS', 'en'),
(17, 'Manama', 'Arabic', 1701583, 'Asia', 'Bahraini dinar', 'BHD', '.د.ب', 26, 50.55, 'https://flagcdn.com/bh.svg', 'BH', 'ar'),
(18, 'Dhaka', 'Bengali', 164689383, 'Asia', 'Bangladeshi taka', 'BDT', '৳', 24, 90, 'https://flagcdn.com/bd.svg', 'BD', 'bn'),
(19, 'Bridgetown', 'English', 287371, 'Americas', 'Barbadian dollar', 'BBD', '$', 13.16666666, -59.53333333, 'https://flagcdn.com/bb.svg', 'BB', 'en'),
(20, 'Minsk', 'Belarusian', 9398861, 'Europe', 'New Belarusian ruble', 'BYN', 'Br', 53, 28, 'https://flagcdn.com/by.svg', 'BY', 'be'),
(21, 'Brussels', 'Dutch', 11555997, 'Europe', 'Euro', 'EUR', '€', 50.83333333, 4, 'https://flagcdn.com/be.svg', 'BE', 'nl'),
(22, 'Belmopan', 'English', 397621, 'Americas', 'Belize dollar', 'BZD', '$', 17.25, -88.75, 'https://flagcdn.com/bz.svg', 'BZ', 'en'),
(23, 'Porto-Novo', 'French', 12123198, 'Africa', 'West African CFA franc', 'XOF', 'Fr', 9.5, 2.25, 'https://flagcdn.com/bj.svg', 'BJ', 'fr'),
(24, 'Hamilton', 'English', 63903, 'Americas', 'Bermudian dollar', 'BMD', '$', 32.33333333, -64.75, 'https://flagcdn.com/bm.svg', 'BM', 'en'),
(25, 'Thimphu', 'Dzongkha', 771612, 'Asia', 'Bhutanese ngultrum', 'BTN', 'Nu.', 27.5, 90.5, 'https://flagcdn.com/bt.svg', 'BT', 'dz'),
(26, 'Sucre', 'Spanish', 11673029, 'Americas', 'Bolivian boliviano', 'BOB', 'Bs.', -17, -65, 'https://flagcdn.com/bo.svg', 'BO', 'es'),
(27, 'Kralendijk', 'Dutch', 17408, 'Americas', 'United States dollar', 'USD', '$', 12.15, -68.266667, 'https://flagcdn.com/bq.svg', 'BQ', 'nl'),
(28, 'Sarajevo', 'Bosnian', 3280815, 'Europe', 'Bosnia and Herzegovina convertible mark', 'BAM', 'KM', 44, 18, 'https://flagcdn.com/ba.svg', 'BA', 'bs'),
(29, 'Gaborone', 'English', 2351625, 'Africa', 'Botswana pula', 'BWP', 'P', -22, 24, 'https://flagcdn.com/bw.svg', 'BW', 'en'),
(30, 'Brasília', 'Portuguese', 212559409, 'Americas', 'Brazilian real', 'BRL', 'R$', -10, -55, 'https://flagcdn.com/br.svg', 'BR', 'pt'),
(31, 'Diego Garcia', 'English', 3000, 'Africa', 'United States dollar', 'USD', '$', -6, 71.5, 'https://flagcdn.com/io.svg', 'IO', 'en'),
(32, 'Road Town', 'English', 30237, 'Americas', 'United States dollar', 'USD', '$', 18.431383, -64.62305, 'https://flagcdn.com/vg.svg', 'VG', 'en'),
(33, 'Charlotte Amalie', 'English', 106290, 'Americas', 'United States dollar', 'USD', '$', 18.34, -64.93, 'https://flagcdn.com/vi.svg', 'VI', 'en'),
(34, 'Bandar Seri Begawan', 'Malay', 437483, 'Asia', 'Brunei dollar', 'BND', '$', 4.5, 114.66666666, 'https://flagcdn.com/bn.svg', 'BN', 'ms'),
(35, 'Sofia', 'Bulgarian', 6927288, 'Europe', 'Bulgarian lev', 'BGN', 'лв', 43, 25, 'https://flagcdn.com/bg.svg', 'BG', 'bg'),
(36, 'Ouagadougou', 'French', 20903278, 'Africa', 'West African CFA franc', 'XOF', 'Fr', 13, -2, 'https://flagcdn.com/bf.svg', 'BF', 'fr'),
(37, 'Gitega', 'French', 11890781, 'Africa', 'Burundian franc', 'BIF', 'Fr', -3.5, 30, 'https://flagcdn.com/bi.svg', 'BI', 'fr'),
(38, 'Phnom Penh', 'Khmer', 16718971, 'Asia', 'Cambodian riel', 'KHR', '៛', 13, 105, 'https://flagcdn.com/kh.svg', 'KH', 'km'),
(39, 'Yaoundé', 'English', 26545864, 'Africa', 'Central African CFA franc', 'XAF', 'Fr', 6, 12, 'https://flagcdn.com/cm.svg', 'CM', 'en'),
(40, 'Ottawa', 'English', 38005238, 'Americas', 'Canadian dollar', 'CAD', '$', 60, -95, 'https://flagcdn.com/ca.svg', 'CA', 'en'),
(41, 'Praia', 'Portuguese', 555988, 'Africa', 'Cape Verdean escudo', 'CVE', 'Esc', 16, -24, 'https://flagcdn.com/cv.svg', 'CV', 'pt'),
(42, 'George Town', 'English', 65720, 'Americas', 'Cayman Islands dollar', 'KYD', '$', 19.5, -80.5, 'https://flagcdn.com/ky.svg', 'KY', 'en'),
(43, 'Bangui', 'French', 4829764, 'Africa', 'Central African CFA franc', 'XAF', 'Fr', 7, 21, 'https://flagcdn.com/cf.svg', 'CF', 'fr'),
(44, 'N\'Djamena', 'French', 16425859, 'Africa', 'Central African CFA franc', 'XAF', 'Fr', 15, 19, 'https://flagcdn.com/td.svg', 'TD', 'fr'),
(45, 'Santiago', 'Spanish', 19116209, 'Americas', 'Chilean peso', 'CLP', '$', -30, -71, 'https://flagcdn.com/cl.svg', 'CL', 'es'),
(46, 'Beijing', 'Chinese', 1402112000, 'Asia', 'Chinese yuan', 'CNY', '¥', 35, 105, 'https://flagcdn.com/cn.svg', 'CN', 'zh'),
(47, 'Flying Fish Cove', 'English', 2072, 'Oceania', 'Australian dollar', 'AUD', '$', -10.5, 105.66666666, 'https://flagcdn.com/cx.svg', 'CX', 'en'),
(48, 'West Island', 'English', 550, 'Oceania', 'Australian dollar', 'AUD', '$', -12.5, 96.83333333, 'https://flagcdn.com/cc.svg', 'CC', 'en'),
(49, 'Bogotá', 'Spanish', 50882884, 'Americas', 'Colombian peso', 'COP', '$', 4, -72, 'https://flagcdn.com/co.svg', 'CO', 'es'),
(50, 'Moroni', 'Arabic', 869595, 'Africa', 'Comorian franc', 'KMF', 'Fr', -12.16666666, 44.25, 'https://flagcdn.com/km.svg', 'KM', 'ar'),
(51, 'Brazzaville', 'French', 5518092, 'Africa', 'Central African CFA franc', 'XAF', 'Fr', -1, 15, 'https://flagcdn.com/cg.svg', 'CG', 'fr'),
(52, 'Kinshasa', 'French', 89561404, 'Africa', 'Congolese franc', 'CDF', 'Fr', 0, 25, 'https://flagcdn.com/cd.svg', 'CD', 'fr'),
(53, 'Avarua', 'English', 18100, 'Oceania', 'New Zealand dollar', 'NZD', '$', -21.23333333, -159.76666666, 'https://flagcdn.com/ck.svg', 'CK', 'en'),
(54, 'San José', 'Spanish', 5094114, 'Americas', 'Costa Rican colón', 'CRC', '₡', 10, -84, 'https://flagcdn.com/cr.svg', 'CR', 'es'),
(55, 'Zagreb', 'Croatian', 4047200, 'Europe', 'Croatian kuna', 'HRK', 'kn', 45.16666666, 15.5, 'https://flagcdn.com/hr.svg', 'HR', 'hr'),
(56, 'Havana', 'Spanish', 11326616, 'Americas', 'Cuban convertible peso', 'CUC', '$', 21.5, -80, 'https://flagcdn.com/cu.svg', 'CU', 'es'),
(57, 'Willemstad', 'Dutch', 155014, 'Americas', 'Netherlands Antillean guilder', 'ANG', 'ƒ', 12.116667, -68.933333, 'https://flagcdn.com/cw.svg', 'CW', 'nl'),
(58, 'Nicosia', 'Greek (modern)', 1207361, 'Europe', 'Euro', 'EUR', '€', 35, 33, 'https://flagcdn.com/cy.svg', 'CY', 'el'),
(59, 'Prague', 'Czech', 10698896, 'Europe', 'Czech koruna', 'CZK', 'Kč', 49.75, 15.5, 'https://flagcdn.com/cz.svg', 'CZ', 'cs'),
(60, 'Copenhagen', 'Danish', 5831404, 'Europe', 'Danish krone', 'DKK', 'kr', 56, 10, 'https://flagcdn.com/dk.svg', 'DK', 'da'),
(61, 'Djibouti', 'French', 988002, 'Africa', 'Djiboutian franc', 'DJF', 'Fr', 11.5, 43, 'https://flagcdn.com/dj.svg', 'DJ', 'fr'),
(62, 'Roseau', 'English', 71991, 'Americas', 'East Caribbean dollar', 'XCD', '$', 15.41666666, -61.33333333, 'https://flagcdn.com/dm.svg', 'DM', 'en'),
(63, 'Santo Domingo', 'Spanish', 10847904, 'Americas', 'Dominican peso', 'DOP', '$', 19, -70.66666666, 'https://flagcdn.com/do.svg', 'DO', 'es'),
(64, 'Quito', 'Spanish', 17643060, 'Americas', 'United States dollar', 'USD', '$', -2, -77.5, 'https://flagcdn.com/ec.svg', 'EC', 'es'),
(65, 'Cairo', 'Arabic', 102334403, 'Africa', 'Egyptian pound', 'EGP', '£', 27, 30, 'https://flagcdn.com/eg.svg', 'EG', 'ar'),
(66, 'San Salvador', 'Spanish', 6486201, 'Americas', 'United States dollar', 'USD', '$', 13.83333333, -88.91666666, 'https://flagcdn.com/sv.svg', 'SV', 'es'),
(67, 'Malabo', 'Spanish', 1402985, 'Africa', 'Central African CFA franc', 'XAF', 'Fr', 2, 10, 'https://flagcdn.com/gq.svg', 'GQ', 'es'),
(68, 'Asmara', 'Tigrinya', 5352000, 'Africa', 'Eritrean nakfa', 'ERN', 'Nfk', 15, 39, 'https://flagcdn.com/er.svg', 'ER', 'ti'),
(69, 'Tallinn', 'Estonian', 1331057, 'Europe', 'Euro', 'EUR', '€', 59, 26, 'https://flagcdn.com/ee.svg', 'EE', 'et'),
(70, 'Addis Ababa', 'Amharic', 114963583, 'Africa', 'Ethiopian birr', 'ETB', 'Br', 8, 38, 'https://flagcdn.com/et.svg', 'ET', 'am'),
(71, 'Stanley', 'English', 2563, 'Americas', 'Falkland Islands pound', 'FKP', '£', -51.75, -59, 'https://flagcdn.com/fk.svg', 'FK', 'en'),
(72, 'Tórshavn', 'Faroese', 48865, 'Europe', 'Danish krone', 'DKK', 'kr', 62, -7, 'https://flagcdn.com/fo.svg', 'FO', 'fo'),
(73, 'Suva', 'English', 896444, 'Oceania', 'Fijian dollar', 'FJD', '$', -18, 175, 'https://flagcdn.com/fj.svg', 'FJ', 'en'),
(74, 'Helsinki', 'Finnish', 5530719, 'Europe', 'Euro', 'EUR', '€', 64, 26, 'https://flagcdn.com/fi.svg', 'FI', 'fi'),
(75, 'Paris', 'French', 67391582, 'Europe', 'Euro', 'EUR', '€', 46, 2, 'https://flagcdn.com/fr.svg', 'FR', 'fr'),
(76, 'Cayenne', 'French', 254541, 'Americas', 'Euro', 'EUR', '€', 4, -53, 'https://flagcdn.com/gf.svg', 'GF', 'fr'),
(77, 'Papeetē', 'French', 280904, 'Oceania', 'CFP franc', 'XPF', 'Fr', -15, -140, 'https://flagcdn.com/pf.svg', 'PF', 'fr'),
(78, 'Port-aux-Français', 'French', 140, 'Africa', 'Euro', 'EUR', '€', -49.25, 69.167, 'https://flagcdn.com/tf.svg', 'TF', 'fr'),
(79, 'Libreville', 'French', 2225728, 'Africa', 'Central African CFA franc', 'XAF', 'Fr', -1, 11.75, 'https://flagcdn.com/ga.svg', 'GA', 'fr'),
(80, 'Banjul', 'English', 2416664, 'Africa', 'Gambian dalasi', 'GMD', 'D', 13.46666666, -16.56666666, 'https://flagcdn.com/gm.svg', 'GM', 'en'),
(81, 'Tbilisi', 'Georgian', 3714000, 'Asia', 'Georgian Lari', 'GEL', 'ლ', 42, 43.5, 'https://flagcdn.com/ge.svg', 'GE', 'ka'),
(82, 'Berlin', 'German', 83240525, 'Europe', 'Euro', 'EUR', '€', 51, 9, 'https://flagcdn.com/de.svg', 'DE', 'de'),
(83, 'Accra', 'English', 31072945, 'Africa', 'Ghanaian cedi', 'GHS', '₵', 8, -2, 'https://flagcdn.com/gh.svg', 'GH', 'en'),
(84, 'Gibraltar', 'English', 33691, 'Europe', 'Gibraltar pound', 'GIP', '£', 36.13333333, -5.35, 'https://flagcdn.com/gi.svg', 'GI', 'en'),
(85, 'Athens', 'Greek (modern)', 10715549, 'Europe', 'Euro', 'EUR', '€', 39, 22, 'https://flagcdn.com/gr.svg', 'GR', 'el'),
(86, 'Nuuk', 'Kalaallisut', 56367, 'Americas', 'Danish krone', 'DKK', 'kr', 72, -40, 'https://flagcdn.com/gl.svg', 'GL', 'kl'),
(87, 'St. George\'s', 'English', 112519, 'Americas', 'East Caribbean dollar', 'XCD', '$', 12.11666666, -61.66666666, 'https://flagcdn.com/gd.svg', 'GD', 'en'),
(88, 'Basse-Terre', 'French', 400132, 'Americas', 'Euro', 'EUR', '€', 16.25, -61.583333, 'https://flagcdn.com/gp.svg', 'GP', 'fr'),
(89, 'Hagåtña', 'English', 168783, 'Oceania', 'United States dollar', 'USD', '$', 13.46666666, 144.78333333, 'https://flagcdn.com/gu.svg', 'GU', 'en'),
(90, 'Guatemala City', 'Spanish', 16858333, 'Americas', 'Guatemalan quetzal', 'GTQ', 'Q', 15.5, -90.25, 'https://flagcdn.com/gt.svg', 'GT', 'es'),
(91, 'St. Peter Port', 'English', 62999, 'Europe', 'British pound', 'GBP', '£', 49.46666666, -2.58333333, 'https://flagcdn.com/gg.svg', 'GG', 'en'),
(92, 'Conakry', 'French', 13132792, 'Africa', 'Guinean franc', 'GNF', 'Fr', 11, -10, 'https://flagcdn.com/gn.svg', 'GN', 'fr'),
(93, 'Bissau', 'Portuguese', 1967998, 'Africa', 'West African CFA franc', 'XOF', 'Fr', 12, -15, 'https://flagcdn.com/gw.svg', 'GW', 'pt'),
(94, 'Georgetown', 'English', 786559, 'Americas', 'Guyanese dollar', 'GYD', '$', 5, -59, 'https://flagcdn.com/gy.svg', 'GY', 'en'),
(95, 'Port-au-Prince', 'French', 11402533, 'Americas', 'Haitian gourde', 'HTG', 'G', 19, -72.41666666, 'https://flagcdn.com/ht.svg', 'HT', 'fr'),
(96, 'Vatican City', 'Latin', 451, 'Europe', 'Euro', 'EUR', '€', 41.9, 12.45, 'https://flagcdn.com/va.svg', 'VA', 'la'),
(97, 'Tegucigalpa', 'Spanish', 9904608, 'Americas', 'Honduran lempira', 'HNL', 'L', 15, -86.5, 'https://flagcdn.com/hn.svg', 'HN', 'es'),
(98, 'Budapest', 'Hungarian', 9749763, 'Europe', 'Hungarian forint', 'HUF', 'Ft', 47, 20, 'https://flagcdn.com/hu.svg', 'HU', 'hu'),
(99, 'City of Victoria', 'English', 7481800, 'Asia', 'Hong Kong dollar', 'HKD', '$', 22.25, 114.16666666, 'https://flagcdn.com/hk.svg', 'HK', 'en'),
(100, 'Reykjavík', 'Icelandic', 366425, 'Europe', 'Icelandic króna', 'ISK', 'kr', 65, -18, 'https://flagcdn.com/is.svg', 'IS', 'is'),
(101, 'New Delhi', 'Hindi', 1380004385, 'Asia', 'Indian rupee', 'INR', '₹', 20, 77, 'https://flagcdn.com/in.svg', 'IN', 'hi'),
(102, 'Jakarta', 'Indonesian', 273523621, 'Asia', 'Indonesian rupiah', 'IDR', 'Rp', -5, 120, 'https://flagcdn.com/id.svg', 'ID', 'id'),
(103, 'Yamoussoukro', 'French', 26378275, 'Africa', 'West African CFA franc', 'XOF', 'Fr', 8, -5, 'https://flagcdn.com/ci.svg', 'CI', 'fr'),
(104, 'Tehran', 'Persian (Farsi)', 83992953, 'Asia', 'Iranian rial', 'IRR', '﷼', 32, 53, 'https://flagcdn.com/ir.svg', 'IR', 'fa'),
(105, 'Baghdad', 'Arabic', 40222503, 'Asia', 'Iraqi dinar', 'IQD', 'ع.د', 33, 44, 'https://flagcdn.com/iq.svg', 'IQ', 'ar'),
(106, 'Dublin', 'Irish', 4994724, 'Europe', 'Euro', 'EUR', '€', 53, -8, 'https://flagcdn.com/ie.svg', 'IE', 'ga'),
(107, 'Douglas', 'English', 85032, 'Europe', 'British pound', 'GBP', '£', 54.25, -4.5, 'https://flagcdn.com/im.svg', 'IM', 'en'),
(108, 'Jerusalem', 'Hebrew (modern)', 9216900, 'Asia', 'Israeli new shekel', 'ILS', '₪', 31.5, 34.75, 'https://flagcdn.com/il.svg', 'IL', 'he'),
(109, 'Rome', 'Italian', 59554023, 'Europe', 'Euro', 'EUR', '€', 42.83333333, 12.83333333, 'https://flagcdn.com/it.svg', 'IT', 'it'),
(110, 'Kingston', 'English', 2961161, 'Americas', 'Jamaican dollar', 'JMD', '$', 18.25, -77.5, 'https://flagcdn.com/jm.svg', 'JM', 'en'),
(111, 'Tokyo', 'Japanese', 125836021, 'Asia', 'Japanese yen', 'JPY', '¥', 36, 138, 'https://flagcdn.com/jp.svg', 'JP', 'ja'),
(112, 'Saint Helier', 'English', 100800, 'Europe', 'British pound', 'GBP', '£', 49.25, -2.16666666, 'https://flagcdn.com/je.svg', 'JE', 'en'),
(113, 'Amman', 'Arabic', 10203140, 'Asia', 'Jordanian dinar', 'JOD', 'د.ا', 31, 36, 'https://flagcdn.com/jo.svg', 'JO', 'ar'),
(114, 'Nur-Sultan', 'Kazakh', 18754440, 'Asia', 'Kazakhstani tenge', 'KZT', '₸', 48, 68, 'https://flagcdn.com/kz.svg', 'KZ', 'kk'),
(115, 'Nairobi', 'English', 53771300, 'Africa', 'Kenyan shilling', 'KES', 'Sh', 1, 38, 'https://flagcdn.com/ke.svg', 'KE', 'en'),
(116, 'South Tarawa', 'English', 119446, 'Oceania', 'Australian dollar', 'AUD', '$', 1.41666666, 173, 'https://flagcdn.com/ki.svg', 'KI', 'en'),
(117, 'Kuwait City', 'Arabic', 4270563, 'Asia', 'Kuwaiti dinar', 'KWD', 'د.ك', 29.5, 45.75, 'https://flagcdn.com/kw.svg', 'KW', 'ar'),
(118, 'Bishkek', 'Kyrgyz', 6591600, 'Asia', 'Kyrgyzstani som', 'KGS', 'с', 41, 75, 'https://flagcdn.com/kg.svg', 'KG', 'ky'),
(119, 'Vientiane', 'Lao', 7275556, 'Asia', 'Lao kip', 'LAK', '₭', 18, 105, 'https://flagcdn.com/la.svg', 'LA', 'lo'),
(120, 'Riga', 'Latvian', 1901548, 'Europe', 'Euro', 'EUR', '€', 57, 25, 'https://flagcdn.com/lv.svg', 'LV', 'lv'),
(121, 'Beirut', 'Arabic', 6825442, 'Asia', 'Lebanese pound', 'LBP', 'ل.ل', 33.83333333, 35.83333333, 'https://flagcdn.com/lb.svg', 'LB', 'ar'),
(122, 'Maseru', 'English', 2142252, 'Africa', 'Lesotho loti', 'LSL', 'L', -29.5, 28.5, 'https://flagcdn.com/ls.svg', 'LS', 'en'),
(123, 'Monrovia', 'English', 5057677, 'Africa', 'Liberian dollar', 'LRD', '$', 6.5, -9.5, 'https://flagcdn.com/lr.svg', 'LR', 'en'),
(124, 'Tripoli', 'Arabic', 6871287, 'Africa', 'Libyan dinar', 'LYD', 'ل.د', 25, 17, 'https://flagcdn.com/ly.svg', 'LY', 'ar'),
(125, 'Vaduz', 'German', 38137, 'Europe', 'Swiss franc', 'CHF', 'Fr', 47.26666666, 9.53333333, 'https://flagcdn.com/li.svg', 'LI', 'de'),
(126, 'Vilnius', 'Lithuanian', 2794700, 'Europe', 'Euro', 'EUR', '€', 56, 24, 'https://flagcdn.com/lt.svg', 'LT', 'lt'),
(127, 'Luxembourg', 'French', 632275, 'Europe', 'Euro', 'EUR', '€', 49.75, 6.16666666, 'https://flagcdn.com/lu.svg', 'LU', 'fr'),
(128, 'Skopje', 'Macedonian', 2083380, 'Europe', 'Macedonian denar', 'MKD', 'ден', 41.83333333, 22, 'https://flagcdn.com/mk.svg', 'MK', 'mk'),
(129, 'Antananarivo', 'French', 27691019, 'Africa', 'Malagasy ariary', 'MGA', 'Ar', -20, 47, 'https://flagcdn.com/mg.svg', 'MG', 'fr'),
(130, 'Lilongwe', 'English', 19129955, 'Africa', 'Malawian kwacha', 'MWK', 'MK', -13.5, 34, 'https://flagcdn.com/mw.svg', 'MW', 'en'),
(131, 'Kuala Lumpur', 'Malaysian', 32365998, 'Asia', 'Malaysian ringgit', 'MYR', 'RM', 2.5, 112.5, 'https://flagcdn.com/my.svg', 'MY', 'ms'),
(132, 'Malé', 'Divehi', 540542, 'Asia', 'Maldivian rufiyaa', 'MVR', '.ރ', 3.25, 73, 'https://flagcdn.com/mv.svg', 'MV', 'dv'),
(133, 'Bamako', 'French', 20250834, 'Africa', 'West African CFA franc', 'XOF', 'Fr', 17, -4, 'https://flagcdn.com/ml.svg', 'ML', 'fr'),
(134, 'Valletta', 'Maltese', 525285, 'Europe', 'Euro', 'EUR', '€', 35.83333333, 14.58333333, 'https://flagcdn.com/mt.svg', 'MT', 'mt'),
(135, 'Majuro', 'English', 59194, 'Oceania', 'United States dollar', 'USD', '$', 9, 168, 'https://flagcdn.com/mh.svg', 'MH', 'en'),
(136, 'Fort-de-France', 'French', 378243, 'Americas', 'Euro', 'EUR', '€', 14.666667, -61, 'https://flagcdn.com/mq.svg', 'MQ', 'fr'),
(137, 'Nouakchott', 'Arabic', 4649660, 'Africa', 'Mauritanian ouguiya', 'MRO', 'UM', 20, -12, 'https://flagcdn.com/mr.svg', 'MR', 'ar'),
(138, 'Port Louis', 'English', 1265740, 'Africa', 'Mauritian rupee', 'MUR', '₨', -20.28333333, 57.55, 'https://flagcdn.com/mu.svg', 'MU', 'en'),
(139, 'Mamoudzou', 'French', 226915, 'Africa', 'Euro', 'EUR', '€', -12.83333333, 45.16666666, 'https://flagcdn.com/yt.svg', 'YT', 'fr'),
(140, 'Mexico City', 'Spanish', 128932753, 'Americas', 'Mexican peso', 'MXN', '$', 23, -102, 'https://flagcdn.com/mx.svg', 'MX', 'es'),
(141, 'Palikir', 'English', 115021, 'Oceania', 'United States dollar', 'USD', '$', 6.91666666, 158.25, 'https://flagcdn.com/fm.svg', 'FM', 'en'),
(142, 'Chișinău', 'Romanian', 2617820, 'Europe', 'Moldovan leu', 'MDL', 'L', 47, 29, 'https://flagcdn.com/md.svg', 'MD', 'ro'),
(143, 'Monaco', 'French', 39244, 'Europe', 'Euro', 'EUR', '€', 43.73333333, 7.4, 'https://flagcdn.com/mc.svg', 'MC', 'fr'),
(144, 'Ulan Bator', 'Mongolian', 3278292, 'Asia', 'Mongolian tögrög', 'MNT', '₮', 46, 105, 'https://flagcdn.com/mn.svg', 'MN', 'mn'),
(145, 'Podgorica', 'Serbian', 621718, 'Europe', 'Euro', 'EUR', '€', 42.5, 19.3, 'https://flagcdn.com/me.svg', 'ME', 'sr'),
(146, 'Plymouth', 'English', 4922, 'Americas', 'East Caribbean dollar', 'XCD', '$', 16.75, -62.2, 'https://flagcdn.com/ms.svg', 'MS', 'en'),
(147, 'Rabat', 'Arabic', 36910558, 'Africa', 'Moroccan dirham', 'MAD', 'د.م.', 32, -5, 'https://flagcdn.com/ma.svg', 'MA', 'ar'),
(148, 'Maputo', 'Portuguese', 31255435, 'Africa', 'Mozambican metical', 'MZN', 'MT', -18.25, 35, 'https://flagcdn.com/mz.svg', 'MZ', 'pt'),
(149, 'Naypyidaw', 'Burmese', 54409794, 'Asia', 'Burmese kyat', 'MMK', 'Ks', 22, 98, 'https://flagcdn.com/mm.svg', 'MM', 'my'),
(150, 'Windhoek', 'English', 2540916, 'Africa', 'Namibian dollar', 'NAD', '$', -22, 17, 'https://flagcdn.com/na.svg', 'NA', 'en'),
(151, 'Yaren', 'English', 10834, 'Oceania', 'Australian dollar', 'AUD', '$', -0.53333333, 166.91666666, 'https://flagcdn.com/nr.svg', 'NR', 'en'),
(152, 'Kathmandu', 'Nepali', 29136808, 'Asia', 'Nepalese rupee', 'NPR', '₨', 28, 84, 'https://flagcdn.com/np.svg', 'NP', 'ne'),
(153, 'Amsterdam', 'Dutch', 17441139, 'Europe', 'Euro', 'EUR', '€', 52.5, 5.75, 'https://flagcdn.com/nl.svg', 'NL', 'nl'),
(154, 'Nouméa', 'French', 271960, 'Oceania', 'CFP franc', 'XPF', 'Fr', -21.5, 165.5, 'https://flagcdn.com/nc.svg', 'NC', 'fr'),
(155, 'Wellington', 'English', 5084300, 'Oceania', 'New Zealand dollar', 'NZD', '$', -41, 174, 'https://flagcdn.com/nz.svg', 'NZ', 'en'),
(156, 'Managua', 'Spanish', 6624554, 'Americas', 'Nicaraguan córdoba', 'NIO', 'C$', 13, -85, 'https://flagcdn.com/ni.svg', 'NI', 'es'),
(157, 'Niamey', 'French', 24206636, 'Africa', 'West African CFA franc', 'XOF', 'Fr', 16, 8, 'https://flagcdn.com/ne.svg', 'NE', 'fr'),
(158, 'Abuja', 'English', 206139587, 'Africa', 'Nigerian naira', 'NGN', '₦', 10, 8, 'https://flagcdn.com/ng.svg', 'NG', 'en'),
(159, 'Alofi', 'English', 1470, 'Oceania', 'New Zealand dollar', 'NZD', '$', -19.03333333, -169.86666666, 'https://flagcdn.com/nu.svg', 'NU', 'en'),
(160, 'Kingston', 'English', 2302, 'Oceania', 'Australian dollar', 'AUD', '$', -29.03333333, 167.95, 'https://flagcdn.com/nf.svg', 'NF', 'en'),
(161, 'Pyongyang', 'Korean', 25778815, 'Asia', 'North Korean won', 'KPW', '₩', 40, 127, 'https://flagcdn.com/kp.svg', 'KP', 'ko'),
(162, 'Saipan', 'English', 57557, 'Oceania', 'United States dollar', 'USD', '$', 15.2, 145.75, 'https://flagcdn.com/mp.svg', 'MP', 'en'),
(163, 'Oslo', 'Norwegian', 5379475, 'Europe', 'Norwegian krone', 'NOK', 'kr', 62, 10, 'https://flagcdn.com/no.svg', 'NO', 'no'),
(164, 'Muscat', 'Arabic', 5106622, 'Asia', 'Omani rial', 'OMR', 'ر.ع.', 21, 57, 'https://flagcdn.com/om.svg', 'OM', 'ar'),
(165, 'Islamabad', 'Urdu', 220892331, 'Asia', 'Pakistani rupee', 'PKR', '₨', 30, 70, 'https://flagcdn.com/pk.svg', 'PK', 'ur'),
(166, 'Ngerulmud', 'English', 18092, 'Oceania', 'United States dollar', 'USD', '$', 7.5, 134.5, 'https://flagcdn.com/pw.svg', 'PW', 'en'),
(167, 'Ramallah', 'Arabic', 4803269, 'Asia', 'Egyptian pound', 'EGP', 'E£', 31.9, 35.2, 'https://flagcdn.com/ps.svg', 'PS', 'ar'),
(168, 'Panama City', 'Spanish', 4314768, 'Americas', 'Panamanian balboa', 'PAB', 'B/.', 9, -80, 'https://flagcdn.com/pa.svg', 'PA', 'es'),
(169, 'Port Moresby', 'English', 8947027, 'Oceania', 'Papua New Guinean kina', 'PGK', 'K', -6, 147, 'https://flagcdn.com/pg.svg', 'PG', 'en'),
(170, 'Asunción', 'Spanish', 7132530, 'Americas', 'Paraguayan guaraní', 'PYG', '₲', -23, -58, 'https://flagcdn.com/py.svg', 'PY', 'es'),
(171, 'Lima', 'Spanish', 32971846, 'Americas', 'Peruvian sol', 'PEN', 'S/.', -10, -76, 'https://flagcdn.com/pe.svg', 'PE', 'es'),
(172, 'Manila', 'English', 109581085, 'Asia', 'Philippine peso', 'PHP', '₱', 13, 122, 'https://flagcdn.com/ph.svg', 'PH', 'en'),
(173, 'Adamstown', 'English', 56, 'Oceania', 'New Zealand dollar', 'NZD', '$', -25.06666666, -130.1, 'https://flagcdn.com/pn.svg', 'PN', 'en'),
(174, 'Warsaw', 'Polish', 37950802, 'Europe', 'Polish złoty', 'PLN', 'zł', 52, 20, 'https://flagcdn.com/pl.svg', 'PL', 'pl'),
(175, 'Lisbon', 'Portuguese', 10305564, 'Europe', 'Euro', 'EUR', '€', 39.5, -8, 'https://flagcdn.com/pt.svg', 'PT', 'pt'),
(176, 'San Juan', 'Spanish', 3194034, 'Americas', 'United States dollar', 'USD', '$', 18.25, -66.5, 'https://flagcdn.com/pr.svg', 'PR', 'es'),
(177, 'Doha', 'Arabic', 2881060, 'Asia', 'Qatari riyal', 'QAR', 'ر.ق', 25.5, 51.25, 'https://flagcdn.com/qa.svg', 'QA', 'ar'),
(178, 'Pristina', 'Albanian', 1775378, 'Europe', 'Euro', 'EUR', '€', 42.666667, 21.166667, 'https://flagcdn.com/xk.svg', 'XK', 'sq'),
(179, 'Saint-Denis', 'French', 840974, 'Africa', 'Euro', 'EUR', '€', -21.15, 55.5, 'https://flagcdn.com/re.svg', 'RE', 'fr'),
(180, 'Bucharest', 'Romanian', 19286123, 'Europe', 'Romanian leu', 'RON', 'lei', 46, 25, 'https://flagcdn.com/ro.svg', 'RO', 'ro'),
(181, 'Moscow', 'Russian', 144104080, 'Europe', 'Russian ruble', 'RUB', '₽', 60, 100, 'https://flagcdn.com/ru.svg', 'RU', 'ru'),
(182, 'Kigali', 'Kinyarwanda', 12952209, 'Africa', 'Rwandan franc', 'RWF', 'Fr', -2, 30, 'https://flagcdn.com/rw.svg', 'RW', 'rw'),
(183, 'Gustavia', 'French', 9417, 'Americas', 'Euro', 'EUR', '€', 18.5, -63.41666666, 'https://flagcdn.com/bl.svg', 'BL', 'fr'),
(184, 'Jamestown', 'English', 4255, 'Africa', 'Saint Helena pound', 'SHP', '£', -15.95, -5.7, 'https://flagcdn.com/sh.svg', 'SH', 'en'),
(185, 'Basseterre', 'English', 53192, 'Americas', 'East Caribbean dollar', 'XCD', '$', 17.33333333, -62.75, 'https://flagcdn.com/kn.svg', 'KN', 'en'),
(186, 'Castries', 'English', 183629, 'Americas', 'East Caribbean dollar', 'XCD', '$', 13.88333333, -60.96666666, 'https://flagcdn.com/lc.svg', 'LC', 'en'),
(187, 'Marigot', 'English', 38659, 'Americas', 'Euro', 'EUR', '€', 18.08333333, -63.95, 'https://flagcdn.com/mf.svg', 'MF', 'en'),
(188, 'Saint-Pierre', 'French', 6069, 'Americas', 'Euro', 'EUR', '€', 46.83333333, -56.33333333, 'https://flagcdn.com/pm.svg', 'PM', 'fr'),
(189, 'Kingstown', 'English', 110947, 'Americas', 'East Caribbean dollar', 'XCD', '$', 13.25, -61.2, 'https://flagcdn.com/vc.svg', 'VC', 'en'),
(190, 'Apia', 'Samoan', 198410, 'Oceania', 'Samoan tālā', 'WST', 'T', -13.58333333, -172.33333333, 'https://flagcdn.com/ws.svg', 'WS', 'sm'),
(191, 'City of San Marino', 'Italian', 33938, 'Europe', 'Euro', 'EUR', '€', 43.76666666, 12.41666666, 'https://flagcdn.com/sm.svg', 'SM', 'it'),
(192, 'São Tomé', 'Portuguese', 219161, 'Africa', 'São Tomé and Príncipe dobra', 'STD', 'Db', 1, 7, 'https://flagcdn.com/st.svg', 'ST', 'pt'),
(193, 'Riyadh', 'Arabic', 34813867, 'Asia', 'Saudi riyal', 'SAR', 'ر.س', 25, 45, 'https://flagcdn.com/sa.svg', 'SA', 'ar'),
(194, 'Dakar', 'French', 16743930, 'Africa', 'West African CFA franc', 'XOF', 'Fr', 14, -14, 'https://flagcdn.com/sn.svg', 'SN', 'fr'),
(195, 'Belgrade', 'Serbian', 6908224, 'Europe', 'Serbian dinar', 'RSD', 'дин.', 44, 21, 'https://flagcdn.com/rs.svg', 'RS', 'sr'),
(196, 'Victoria', 'French', 98462, 'Africa', 'Seychellois rupee', 'SCR', '₨', -4.58333333, 55.66666666, 'https://flagcdn.com/sc.svg', 'SC', 'fr'),
(197, 'Freetown', 'English', 7976985, 'Africa', 'Sierra Leonean leone', 'SLL', 'Le', 8.5, -11.5, 'https://flagcdn.com/sl.svg', 'SL', 'en'),
(198, 'Singapore', 'English', 5685807, 'Asia', 'Singapore dollar', 'SGD', '$', 1.36666666, 103.8, 'https://flagcdn.com/sg.svg', 'SG', 'en'),
(199, 'Philipsburg', 'Dutch', 40812, 'Americas', 'Netherlands Antillean guilder', 'ANG', 'ƒ', 18.033333, -63.05, 'https://flagcdn.com/sx.svg', 'SX', 'nl'),
(200, 'Bratislava', 'Slovak', 5458827, 'Europe', 'Euro', 'EUR', '€', 48.66666666, 19.5, 'https://flagcdn.com/sk.svg', 'SK', 'sk'),
(201, 'Ljubljana', 'Slovene', 2100126, 'Europe', 'Euro', 'EUR', '€', 46.11666666, 14.81666666, 'https://flagcdn.com/si.svg', 'SI', 'sl'),
(202, 'Honiara', 'English', 686878, 'Oceania', 'Solomon Islands dollar', 'SBD', '$', -8, 159, 'https://flagcdn.com/sb.svg', 'SB', 'en'),
(203, 'Mogadishu', 'Somali', 15893219, 'Africa', 'Somali shilling', 'SOS', 'Sh', 10, 49, 'https://flagcdn.com/so.svg', 'SO', 'so'),
(204, 'Pretoria', 'Afrikaans', 59308690, 'Africa', 'South African rand', 'ZAR', 'R', -29, 24, 'https://flagcdn.com/za.svg', 'ZA', 'af'),
(205, 'King Edward Point', 'English', 30, 'Americas', 'Falkland Islands Pound', 'FKP', '£', -54.5, -37, 'https://flagcdn.com/gs.svg', 'GS', 'en'),
(206, 'Seoul', 'Korean', 51780579, 'Asia', 'South Korean won', 'KRW', '₩', 37, 127.5, 'https://flagcdn.com/kr.svg', 'KR', 'ko'),
(207, 'Madrid', 'Spanish', 47351567, 'Europe', 'Euro', 'EUR', '€', 40, -4, 'https://flagcdn.com/es.svg', 'ES', 'es'),
(208, 'Sri Jayawardenepura Kotte', 'Sinhalese', 21919000, 'Asia', 'Sri Lankan rupee', 'LKR', 'Rs', 7, 81, 'https://flagcdn.com/lk.svg', 'LK', 'si'),
(209, 'Khartoum', 'Arabic', 43849269, 'Africa', 'Sudanese pound', 'SDG', 'ج.س.', 15, 30, 'https://flagcdn.com/sd.svg', 'SD', 'ar'),
(210, 'Juba', 'English', 11193729, 'Africa', 'South Sudanese pound', 'SSP', '£', 7, 30, 'https://flagcdn.com/ss.svg', 'SS', 'en'),
(211, 'Paramaribo', 'Dutch', 586634, 'Americas', 'Surinamese dollar', 'SRD', '$', 4, -56, 'https://flagcdn.com/sr.svg', 'SR', 'nl'),
(212, 'Longyearbyen', 'Norwegian', 2562, 'Europe', 'Norwegian krone', 'NOK', 'kr', 78, 20, 'https://flagcdn.com/sj.svg', 'SJ', 'no'),
(213, 'Mbabane', 'English', 1160164, 'Africa', 'Swazi lilangeni', 'SZL', 'L', -26.5, 31.5, 'https://flagcdn.com/sz.svg', 'SZ', 'en'),
(214, 'Stockholm', 'Swedish', 10353442, 'Europe', 'Swedish krona', 'SEK', 'kr', 62, 15, 'https://flagcdn.com/se.svg', 'SE', 'sv'),
(215, 'Bern', 'German', 8636896, 'Europe', 'Swiss franc', 'CHF', 'Fr', 47, 8, 'https://flagcdn.com/ch.svg', 'CH', 'de'),
(216, 'Damascus', 'Arabic', 17500657, 'Asia', 'Syrian pound', 'SYP', '£', 35, 38, 'https://flagcdn.com/sy.svg', 'SY', 'ar'),
(217, 'Taipei', 'Chinese', 23503349, 'Asia', 'New Taiwan dollar', 'TWD', '$', 23.5, 121, 'https://flagcdn.com/tw.svg', 'TW', 'zh'),
(218, 'Dushanbe', 'Tajik', 9537642, 'Asia', 'Tajikistani somoni', 'TJS', 'ЅМ', 39, 71, 'https://flagcdn.com/tj.svg', 'TJ', 'tg'),
(219, 'Dodoma', 'Swahili', 59734213, 'Africa', 'Tanzanian shilling', 'TZS', 'Sh', -6, 35, 'https://flagcdn.com/tz.svg', 'TZ', 'sw'),
(220, 'Bangkok', 'Thai', 69799978, 'Asia', 'Thai baht', 'THB', '฿', 15, 100, 'https://flagcdn.com/th.svg', 'TH', 'th'),
(221, 'Dili', 'Portuguese', 1318442, 'Asia', 'United States Dollar', 'USD', '$', -8.83333333, 125.91666666, 'https://flagcdn.com/tl.svg', 'TL', 'pt'),
(222, 'Lomé', 'French', 8278737, 'Africa', 'West African CFA franc', 'XOF', 'Fr', 8, 1.16666666, 'https://flagcdn.com/tg.svg', 'TG', 'fr'),
(223, 'Fakaofo', 'English', 1411, 'Oceania', 'New Zealand dollar', 'NZD', '$', -9, -172, 'https://flagcdn.com/tk.svg', 'TK', 'en'),
(224, 'Nuku\'alofa', 'English', 105697, 'Oceania', 'Tongan paʻanga', 'TOP', 'T$', -20, -175, 'https://flagcdn.com/to.svg', 'TO', 'en'),
(225, 'Port of Spain', 'English', 1399491, 'Americas', 'Trinidad and Tobago dollar', 'TTD', '$', 11, -61, 'https://flagcdn.com/tt.svg', 'TT', 'en'),
(226, 'Tunis', 'Arabic', 11818618, 'Africa', 'Tunisian dinar', 'TND', 'د.ت', 34, 9, 'https://flagcdn.com/tn.svg', 'TN', 'ar'),
(227, 'Ankara', 'Turkish', 84339067, 'Asia', 'Turkish lira', 'TRY', '₺', 39, 35, 'https://flagcdn.com/tr.svg', 'TR', 'tr'),
(228, 'Ashgabat', 'Turkmen', 6031187, 'Asia', 'Turkmenistan manat', 'TMT', 'm', 40, 60, 'https://flagcdn.com/tm.svg', 'TM', 'tk'),
(229, 'Cockburn Town', 'English', 38718, 'Americas', 'United States dollar', 'USD', '$', 21.75, -71.58333333, 'https://flagcdn.com/tc.svg', 'TC', 'en'),
(230, 'Funafuti', 'English', 11792, 'Oceania', 'Australian dollar', 'AUD', '$', -8, 178, 'https://flagcdn.com/tv.svg', 'TV', 'en'),
(231, 'Kampala', 'English', 45741000, 'Africa', 'Ugandan shilling', 'UGX', 'Sh', 1, 32, 'https://flagcdn.com/ug.svg', 'UG', 'en'),
(232, 'Kyiv', 'Ukrainian', 44134693, 'Europe', 'Ukrainian hryvnia', 'UAH', '₴', 49, 32, 'https://flagcdn.com/ua.svg', 'UA', 'uk'),
(233, 'Abu Dhabi', 'Arabic', 9890400, 'Asia', 'United Arab Emirates dirham', 'AED', 'د.إ', 24, 54, 'https://flagcdn.com/ae.svg', 'AE', 'ar'),
(234, 'London', 'English', 67215293, 'Europe', 'British pound', 'GBP', '£', 54, -2, 'https://flagcdn.com/gb.svg', 'GB', 'en'),
(235, 'Washington, D.C.', 'English', 329484123, 'Americas', 'United States dollar', 'USD', '$', 38, -97, 'https://flagcdn.com/us.svg', 'US', 'en'),
(236, 'Montevideo', 'Spanish', 3473727, 'Americas', 'Uruguayan peso', 'UYU', '$', -33, -56, 'https://flagcdn.com/uy.svg', 'UY', 'es'),
(237, 'Tashkent', 'Uzbek', 34232050, 'Asia', 'Uzbekistani so\'m', 'UZS', 'so\'m', 41, 64, 'https://flagcdn.com/uz.svg', 'UZ', 'uz'),
(238, 'Port Vila', 'Bislama', 307150, 'Oceania', 'Vanuatu vatu', 'VUV', 'Vt', -16, 167, 'https://flagcdn.com/vu.svg', 'VU', 'bi'),
(239, 'Caracas', 'Spanish', 28435943, 'Americas', 'Venezuelan bolívar', 'VEF', 'Bs S', 8, -66, 'https://flagcdn.com/ve.svg', 'VE', 'es'),
(240, 'Hanoi', 'Vietnamese', 97338583, 'Asia', 'Vietnamese đồng', 'VND', '₫', 16.16666666, 107.83333333, 'https://flagcdn.com/vn.svg', 'VN', 'vi'),
(241, 'Mata-Utu', 'French', 11750, 'Oceania', 'CFP franc', 'XPF', 'Fr', -13.3, -176.2, 'https://flagcdn.com/wf.svg', 'WF', 'fr'),
(242, 'El Aaiún', 'Spanish', 510713, 'Africa', 'Moroccan dirham', 'MAD', 'د.م.', 24.5, -13, 'https://flagcdn.com/eh.svg', 'EH', 'es'),
(243, 'Sana\'a', 'Arabic', 29825968, 'Asia', 'Yemeni rial', 'YER', '﷼', 15, 48, 'https://flagcdn.com/ye.svg', 'YE', 'ar'),
(244, 'Lusaka', 'English', 18383956, 'Africa', 'Zambian kwacha', 'ZMW', 'ZK', -15, 30, 'https://flagcdn.com/zm.svg', 'ZM', 'en'),
(245, 'Harare', 'English', 14862927, 'Africa', 'Zambian kwacha', 'ZMW', 'K', -20, 30, 'https://flagcdn.com/zw.svg', 'ZW', 'en');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `search`
--
ALTER TABLE `search`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ville_id` (`ville_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id_ville`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id_ville` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `search`
--
ALTER TABLE `search`
  ADD CONSTRAINT `search_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `search_ibfk_2` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id_ville`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
