-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql.fashion-finder.store
-- Generation Time: Nov 20, 2024 at 10:22 AM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 8.1.2-1ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashion_finder_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `bought`
--

CREATE TABLE `bought` (
  `BoughtID` int NOT NULL,
  `UserID` int NOT NULL,
  `itemUrl` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `itemTitle` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `itemSrc` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bought`
--

INSERT INTO `bought` (`BoughtID`, `UserID`, `itemUrl`, `itemTitle`, `itemSrc`) VALUES
(1, 2, 'https://www.hollisterco.com/shop/us/p/ultra-high-rise-vegan-leather-a-line-mini-skirt-54603833?categoryId=12645&faceout=model&seq=03&bvstate=pg:2/ct:r', 'Women\'s A-Line Mini Skirt | Women\'s Clearance | HollisterCo.com', 'https://img.hollisterco.com/is/image/anf/KIC_343-3112-0006-208_model1.jpg?policy=product-extra-large'),
(3, 2, 'https://www.everlane.com/collections/womens-tops', 'Women\'s Tops, Blouses & Shirts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ3QhtkUH_kEuw7BXuu8yJJCPPuOzgARfrAjzVHGb7hisGclgp&s'),
(4, 2, 'https://www.fanatics.com/college/lsu-tigers/lsu-tigers-nike-womens-air-zoom-week-zero-shoes-purple/gold/o-27+t-67647782+p-354030120448+z-9-1805913215', 'LSU Tigers Nike Women\'s Air Zoom Week Zero Shoes - Purple/Gold', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOh4UJBex5F0zeqDCpkEE0Lm4Ma4u5scC7_NNTPvykANpiluA&s'),
(5, 2, 'https://shop.lululemon.com/p/women-pants/Lightweight-Tennis-Mid-Rise-Track-Pants/_/prod11460296', 'Lightweight Tennis Mid-Rise Track Pant *Full Length | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCK8BtoAmJoXjDuZXqdGCWGtB6MUCAZanNzeVTJ0p4rBa-HhI-&s'),
(6, 2, 'https://huckberry.com/store/schott/category/p/88207-b-6-sheepskin-leather-bomber-jacket', 'Schott B-6 Sheepskin Leather Bomber Jacket - Black | Leather ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvmrm76kt2dhYF0dL-9BQXvzQzZZT9lWRRNeb6bR2efwZVcwo&s'),
(7, 2, 'https://shop.lululemon.com/p/women-tanks/Align-Cropped-Cami-Tank/_/prod11680178', 'lululemon Align™ Cropped Cami Tank Top *Light Support, A/B Cup ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqJteEDFmVCakORLf-IKbB3hqk9wKiLk4jEt2WE32joETCNrBH&s'),
(8, 2, 'https://www.everlane.com/collections/womens-tops', 'Women\'s Tops, Blouses & Shirts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYwr5ZM2O9n7JNu41qGRf7JMxv2A-OSxhlCoHzcag5IKeE7Yqg&s'),
(9, 2, 'https://www.everlane.com/collections/womens-tops', 'Women\'s Tops, Blouses & Shirts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYwr5ZM2O9n7JNu41qGRf7JMxv2A-OSxhlCoHzcag5IKeE7Yqg&s'),
(10, 2, 'https://www.everlane.com/products/womens-dream-tube-top-black', 'The Dream Tube Top Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS08DuSx830cDWfkD9BRM_P0RVV2wL_xOwErqXTXKTixQxwiVk&s'),
(11, 2, 'https://www.everlane.com/products/womens-dream-tube-top-black', 'The Dream Tube Top Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS08DuSx830cDWfkD9BRM_P0RVV2wL_xOwErqXTXKTixQxwiVk&s'),
(12, 2, 'https://www.everlane.com/collections/womens-linen-clothing/style/tops', 'Women\'s Tops | Linen – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl-mYjENpC7Wj6OAm9UURAVf6WUeHxpuoMMxHt_Bs0E38et2kq&s'),
(13, 2, 'https://shop.lululemon.com/p/shoes/Strongfeel-Womens-Training-Shoe/_/prod11210018', 'Women\'s Strongfeel Training Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVGplm1QgJlvm69y00dJsXCnpjfkzrH4TX2UczjrJIMnFEsxTr&s'),
(14, 2, 'https://www.fanatics.com/nfl/las-vegas-raiders/las-vegas-raiders-cuce-womens-cowboy-boots-cream/o-3572+t-14597125+p-5744662210608+z-9-4095904104', 'Las Vegas Raiders Cuce Women\'s Cowboy Boots - Cream', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYOc7yYj0wEIHt06xBMTKVU5KLhmv7MeAadXN009WwNavHPYc&s'),
(15, 2, 'https://www.fanatics.com/nfl/buffalo-bills/buffalo-bills-cuce-womens-cowboy-boots-cream/o-9194+t-69935790+p-579911979481+z-8-2655611865', 'Buffalo Bills Cuce Women\'s Cowboy Boots - Cream', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNAR5q_l3GE1da8L5STfXc7PUGdONkxA8uU6kE_jxHTi78nb2s&s'),
(16, 2, 'https://www.fanatics.com/nfl/philadelphia-eagles/philadelphia-eagles-cuce-womens-cowboy-boots-cream/o-8005+t-69047159+p-682288889527+z-8-1999680740', 'Philadelphia Eagles Cuce Women\'s Cowboy Boots - Cream', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnp9lWm-k4ew9IAv1Bg2u2jVy7BNYOHQjdpsjpC77diQ7GAeGA&s'),
(17, 2, 'https://www.everlane.com/products/womens-wooden-puffa-clog-dark-umber-suede', 'The Wooden Puffa Clog Dark Umber Suede – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt7rv-2_FkyRXytgFFNluLV51ah6azKZV8CvbnVy_kvXP5tAY&s'),
(18, 2, 'https://www.everlane.com/products/womens-gum-sole-chelsea-boot-lt-taupe', 'The Chelsea Boot Tobacco – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUOn_EhafXO9slux-J-fgh05u2DL_MyqZZEz9MPTg-s64W0kg&s'),
(19, 11, 'https://www.promgirl.com/products/nox-anabel-na-t1139-dress', 'Sweetheart Tight Long Strapless Formal Dress -PromGirl', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo9oCkRx5qNlF776wiClAIvxjHZOeQgE9KlkR5e1Zq0zaLV1c&s'),
(20, 1, 'https://www.promgirl.com/products/velvi-vel-darling-mini-dress', 'Short Scoop-Neck Short A-Line Grad Dress with Corset', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLTfBsVa_wOBuf7e1CohUGs564B6KQdQIjfdkBFn_OTLnte44&s'),
(21, 17, 'https://shop.lululemon.com/p/shoes/Blissfeel-2-Womens-Running-Shoe-MD/_/prod11530177', 'Women\'s Blissfeel 2 Running Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqKZiX8i3O3GgabWv4U-6_1NY33QAJ9kGKyaNjZwYcXbJpDXda&s'),
(22, 11, 'https://www.everlane.com/products/womens-40-hour-flat-dusty-lilac', 'The 40-Hour Flat Dusty Lilac – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLqNuIiCa_4uJqJ9dL7zWRUi8y7eojUwgkMSaw0REefHFzddc&s'),
(23, 11, 'https://www.fashionnova.com/products/cosmic-love-garter-bodystocking-neon-green', 'Cosmic Love Garter Bodystocking - Neon Green | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7rPP5dBTNfLDz0hCno7r1fs7jfApF4_JKEPfvxuQ-O7ONU1ap&s'),
(24, 11, 'https://www.fashionnova.com/products/love-being-latina-pj-short-set-pink', 'Love Being Latina PJ Short Set - Pink | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOqbnk9ygCmv7y0kdr3koSyBdsEmswFOObh6o0oNEzQVEIc1c&s'),
(25, 11, 'https://www.fashionnova.com/products/ava-velvet-burnout-micro-mini-skirt-black', 'Ava Velvet Burnout Micro Mini Skirt - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcNEWhpV6j8tcYajQV4b4lyFUFkUAwaVWfohfSu7ZZ2T3nGb4&s'),
(26, 11, 'https://www.fashionnova.com/products/raise-hell-baby-pj-romper-onesie-yellow', 'Raise Hell Baby PJ Romper Onesie - Yellow | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1B2iTLkz6b77b-AYXFoLOwpO49mgSl6ZOf_rGKuE_LphNFP_H&s'),
(27, 11, 'https://www.fashionnova.com/products/mind-your-business-pj-short-set-pink', 'Mind Your Business PJ Short Set - Pink | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8EmFYwccNaz5g_IpPnMkr7tIS-znyNGcJadzAZWjw68iQ574&s'),
(28, 11, 'https://www.fashionnova.com/products/love-fur-you-mules-black', 'Love Fur You Mules - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRARm5aKVLQLjEKxREG-jEb_Z3ItMHiTxXgoxVgGDYu9W4GLlAB&s'),
(29, 2, 'https://talentless.co/products/womens-wide-leg-boxing-pants', 'Talentless | Women\'s Wide Leg Boxing Pant', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_OYC2f8rBwymqR2kOAW8rAdwdw2Awbw5mlBt-axRR6ZEJ08Y&s'),
(30, 11, 'https://www.zappos.com/p/mens-ecco-sport-mx-slip-on-2-0/product/9782156', 'Men\'s ECCO Sport MX Slip-On 2.0 | Zappos.com', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2hDwvMUmVGznIaQ1Ww1CKo0NN7Y4LLJHnjrUZk1xfhGGm2Pg&s'),
(31, 25, 'https://www.shopbop.com/baggy-cargo-good-american/vp/v=1/1548889897.htm?os=false&breadcrumb=Shop+Women%27s%3EClothing%3EPants&folderID=13281&colorSin=2063431154&fm=other-shopbysize-viewall&ref_=SB_PLP_PDP_W_CLOTH_PANTS_13281_NB_51&switchToLanguage=zh', 'Good American Baggy Cargo Trousers | Shopbop', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw793mrZ1XIs7NAX669HAboP142p3UOkA13La8fR1w93Pe5ZI&s'),
(32, 26, 'https://www.everlane.com/products/womens-day-heel-bone', 'The Day Heel in Narrow Fit Bone Stacked – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThguUzisAFIFss8oaBQwDB5GwEytGkEG426BRZzgtXFQrTSSU&s'),
(33, 28, 'https://www.eloquii.com/products/the-365-suit-patch-pocket-blazer/1086368.html', 'Tailored 365 Suit Blazer for Effortless Elegance, Chicory Coffee ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5CNEFr1tR18pVIpAoFDY27DvoSVYMbEc4KT_i43I2WCHsZUaQ&s'),
(34, 28, 'https://www.hottopic.com/product/jujutsu-kaisen-chibi-satoru-gojo-wash-boyfriend-fit-girls-t-shirt/16048105.html', 'Jujutsu Kaisen Chibi Satoru Gojo Wash Boyfriend Fit Girls T-Shirt ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRarggYP8C8sS3Qth9Kj3ZssRSY52KwYPbGY06Z4F5UVoAjWKLX&s'),
(35, 28, 'https://www.fashionnova.com/products/cut-it-off-knee-high-boots-dark-denim', 'Cut It Off Knee High Boots - Dark Denim | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI4x76HLhpqLsG6vpEzADC2NRYWPZ1KcyAwUXsQtjsAwNWTKE&s'),
(36, 29, 'https://www.hottopic.com/product/trolls-3-band-together-brozone-group-girls-t-shirt/31810150.html', 'Trolls 3 Band Together Brozone Group Girls T-Shirt - BLACK | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgHVzlxL7hF0_XqYXKYwpqyCTl1Yl8e1g1GNMIzFloRd3A-7w&s'),
(37, 29, 'https://www.hottopic.com/product/trolls-3-band-together-brozone-group-girls-tank/31807385.html', 'Trolls 3 Band Together Brozone Group Girls Tank - BLACK | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH64gb9wBileAmvw4D-931XZC81AQeweQJGZFfgh-Q7wMut9g&s'),
(38, 29, 'https://www.hottopic.com/product/trolls-poppy-rock-star-boyfriend-fit-girls-t-shirt/31062801.html', 'Trolls Poppy Rock Star Boyfriend Fit Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyr-nRtq6LMMWv5mE1HOCJ55Ykyv9VgRdjK3nNN01otT-euUs2&s'),
(39, 31, 'https://www.hottopic.com/product/skull-star-fuzzy-patch-wide-leg-girls-lounge-pants/31554125.html', 'Skull Star Fuzzy Patch Wide Leg Girls Lounge Pants | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_KtoRMX3fg5RoOW4oTEnlyJ1sUvHoitdYPd1010A85feMn84I&s'),
(40, 31, 'https://www.prettylittlething.com/basic-roll-sleeve-white-crop-top.html', 'Basic Roll Sleeve White Crop Top | Tops | PrettyLittleThing', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJc5zrmXGAiOhSYDE225ElP7L5atx9NPYmcBg47s2VKpDk6L9M&s'),
(41, 1, 'https://www.nordstrom.com/browse/women/clothing/dresses/little-white-dress?filterByBrand=amanda-uprichard', 'Amanda Uprichard White Dresses | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL2YDKMgloHe2bXQdM5WXFBe-E38C6ZykwmeNdgi1EI-p3G65N&s'),
(42, 38, 'https://www.fashionnova.com/products/pup-mr-monopoly-dog-costume-black', 'Pup Mr. Monopoly Dog Costume - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRtWOROVScc1EkRBLL1tQC4gr67H6U0O4_LamBv2h1XmhhkVw&s'),
(43, 38, 'https://www.fashionnova.com/products/dark-evil-hatter-8-piece-costume-set-black', 'Dark Evil Hatter 8 Piece Costume Set - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeEGjHLlYtfUSLyftrgj7gbny5k6QNaDlQwqs4V9n91FdFf_56&s'),
(44, 2, 'https://www.hottopic.com/product/coraline-art-girls-jean-jacket/32049893.html', 'Coraline Art Girls Jean Jacket | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFwBFpPb800rigf6nMfhPM65kgIFChYZhcAAHgSwy6VrWgGgs&s'),
(45, 44, 'https://www.nordstrom.com/browse/women/clothing/coats-jackets/jean-jackets?filterByBrand=rails', 'Women\'s Rails Jean & Denim Jackets | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgOc4w89nB4VHm3nnFsBVP05IDA_Fs3TJM-lciJXjw-eLQYizn&s'),
(46, 44, 'https://www.promgirl.com/products/velvi-vel-tahlia-dress', 'High-Low White Graduation Dress with Lace Ruffle', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR597tghall0fyqIc0dbh2UakC29kFIPExRClM3-IN9dORkrzU&s'),
(47, 45, 'https://us.boohoo.com/tall-blazer-dress/TZZ95191.html', 'Tall Blazer Dress | boohoo USA', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdYC-kMwU_r4DC-QMqoZbqsCiuuh8Uswj2fZHCkbqT4Kh9OJM&s'),
(48, 31, 'https://www.hottopic.com/product/avatar-the-last-airbender-pink-character-girls-t-shirt/14500237.html', 'Avatar: The Last Airbender Pink Character Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHAnTB75ErZ2I4n40Mzc8rZlsLkYVt9IxW48mG0ZcuyvX8gCqB&s'),
(49, 31, 'https://www.fashionnova.com/products/nightmare-before-christmas-crew-neck-sweatshirt-black', 'Nightmare Before Christmas Light Up Sweatshirt - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSsaNW-8uJUqMmWIPsouXOJMxynWl3YliX5Bysy4rRYzXBHuI&s'),
(50, 11, 'https://www.nordstrom.com/browse/men/shoes/comfort?filterByBrand=clarks', 'Men\'s Clarks® Comfort Shoes | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG66a2sTMSmIG7PjWCba4Q2U_1MBLvNlx-0-7x47-CHlr4o4AS&s');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `CommentID` int NOT NULL,
  `PostID` int NOT NULL,
  `UserID` int NOT NULL,
  `CommentText` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `FavoritesID` int NOT NULL,
  `UserID` int NOT NULL,
  `itemUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `itemTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `itemSrc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`FavoritesID`, `UserID`, `itemUrl`, `itemTitle`, `itemSrc`) VALUES
(1, 2, 'https://shop.lululemon.com/p/hats/W-Fast-Paced-Wide-Band-Running-Visor/_/prod11380605', 'Women\'s Fast Paced Wide Band Running Visor | Women\'s Hats | lululemon', 'https://images.lululemon.com/is/image/lululemon/LW9FM9S_0001_3'),
(2, 2, 'https://www.everlane.com/collections/womens-tops', 'Women\'s Tops, Blouses & Shirts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2jDgus9qYOUWiqYgm8evK2rXzj4Ykhzh3seg3nmDIzQF1U5w2&s'),
(3, 2, 'https://www.fanatics.com/college/lsu-tigers/lsu-tigers-nike-womens-air-zoom-week-zero-shoes-purple/gold/o-27+t-67647782+p-354030120448+z-9-1805913215', 'LSU Tigers Nike Women\'s Air Zoom Week Zero Shoes - Purple/Gold', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOh4UJBex5F0zeqDCpkEE0Lm4Ma4u5scC7_NNTPvykANpiluA&s'),
(4, 2, 'https://shop.lululemon.com/p/women-pants/Lightweight-Tennis-Mid-Rise-Track-Pants/_/prod11460296', 'Lightweight Tennis Mid-Rise Track Pant *Full Length | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCK8BtoAmJoXjDuZXqdGCWGtB6MUCAZanNzeVTJ0p4rBa-HhI-&s'),
(5, 2, 'https://www.everlane.com/products/womens-linen-scoop-neck-tank-new-black', 'The Scoop Tank in Linen Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw723cT1gzA7jFtXIunktrohWv0AvRxw1yc7ns8ONOERvySCl8&s'),
(6, 2, 'https://shop.lululemon.com/p/women-tanks/Align-Cropped-Cami-Tank/_/prod11680178', 'lululemon Align™ Cropped Cami Tank Top *Light Support, A/B Cup ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqJteEDFmVCakORLf-IKbB3hqk9wKiLk4jEt2WE32joETCNrBH&s'),
(7, 2, 'https://www.everlane.com/collections/womens-tops', 'Women\'s Tops, Blouses & Shirts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYwr5ZM2O9n7JNu41qGRf7JMxv2A-OSxhlCoHzcag5IKeE7Yqg&s'),
(8, 2, 'https://www.everlane.com/collections/womens-tops', 'Women\'s Tops, Blouses & Shirts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYwr5ZM2O9n7JNu41qGRf7JMxv2A-OSxhlCoHzcag5IKeE7Yqg&s'),
(9, 2, 'https://www.everlane.com/products/womens-dream-tube-top-black', 'The Dream Tube Top Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS08DuSx830cDWfkD9BRM_P0RVV2wL_xOwErqXTXKTixQxwiVk&s'),
(10, 2, 'https://www.everlane.com/collections/womens-linen-clothing/style/tops', 'Women\'s Tops | Linen – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl-mYjENpC7Wj6OAm9UURAVf6WUeHxpuoMMxHt_Bs0E38et2kq&s'),
(11, 2, 'https://www.everlane.com/collections/womens-sale/style/tops', 'Women\'s Tops | Sale – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4WRE0vIX3y002XULWPEOoJtE5VjK_Cj8W45a3eWUEVKtinR0&s'),
(12, 2, 'https://www.ae.com/us/en/c/women/tops/tank-tops/cat380157', 'Women\'s Tank Tops: Cropped, Camisoles & More | American Eagle', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8Xc1oSQ1Ml2_ib8p3DcIBHy5kCAv1pS97QcEwDPjV_8OdPoc&s'),
(13, 2, 'https://shop.lululemon.com/p/shoes/Strongfeel-Womens-Training-Shoe/_/prod11210018', 'Women\'s Strongfeel Training Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVGplm1QgJlvm69y00dJsXCnpjfkzrH4TX2UczjrJIMnFEsxTr&s'),
(14, 2, 'https://shop.lululemon.com/p/shoes/Blissfeel-2-Womens-Running-Shoe-MD/_/prod11530177', 'Women\'s Blissfeel 2 Running Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7oekQ8RwSZGb9DvYBQCDdpOuazu3tSYsLVVakdTdoG6FrbDk&s'),
(15, 2, 'https://www.hottopic.com/product/peanuts-cowboy-snoopy-boyfriend-fit-girls-t-shirt/31220994.html', 'Peanuts Cowboy Snoopy Boyfriend Fit Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbtj56BuPlC-TjwBA8bl3j_mVBL9UVRejibPsV57KAUboNuQl2&s'),
(16, 2, 'https://www.fanatics.com/nfl/las-vegas-raiders/las-vegas-raiders-cuce-womens-cowboy-boots-cream/o-3572+t-14597125+p-5744662210608+z-9-4095904104', 'Las Vegas Raiders Cuce Women\'s Cowboy Boots - Cream', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYOc7yYj0wEIHt06xBMTKVU5KLhmv7MeAadXN009WwNavHPYc&s'),
(17, 2, 'https://www.everlane.com/collections/womens-mothers-day/style/womens-tops--blouses-and-shirts', 'Women\'s Tops, Blouses & Shirts | Mother\'s Day Gifts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZjfYaCzeybc24B2rbaqgUi8YZJd0QuLG0XVF-GAaNIDKlxgg&s'),
(18, 2, 'https://www.everlane.com/products/womens-gum-sole-chelsea-boot-lt-taupe', 'The Chelsea Boot Tobacco – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUOn_EhafXO9slux-J-fgh05u2DL_MyqZZEz9MPTg-s64W0kg&s'),
(19, 2, 'https://www.everlane.com/products/womens-wooden-puffa-clog-dark-umber-suede', 'The Wooden Puffa Clog Dark Umber Suede – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt7rv-2_FkyRXytgFFNluLV51ah6azKZV8CvbnVy_kvXP5tAY&s'),
(20, 1, 'https://www.promgirl.com/products/velvi-vel-darling-mini-dress', 'Short Scoop-Neck Short A-Line Grad Dress with Corset', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLTfBsVa_wOBuf7e1CohUGs564B6KQdQIjfdkBFn_OTLnte44&s'),
(21, 2, 'https://shop.lululemon.com/p/women-tanks/Wunder-Train-Racerback-Tank-MD/_/prod11450165', 'Wunder Train Racerback Tank Top *Light Support | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQAo36wYpx8axq5FUlpgc5VploB1BNQBVHTnLGz8fUHPe7U2g&s'),
(22, 11, 'https://www.fashionnova.com/products/mini-baddie-vibes-charm-bubble-slides-pink', 'Mini Baddie Vibes Charm Bubble Slides - Pink | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFbrjr_2ZhvIB-olPGKVxrwulQsTg0zH7jmtLXmpUKkk9fzSzH&s'),
(23, 11, 'https://www.fashionnova.com/products/you-belong-with-me-pumps-black', 'You Belong With Me Pumps - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEgqQkHJHdaRe-nI8BHNpOCi165turcyqVCN6QmlbCzoO3WH8&s'),
(24, 11, 'https://www.fashionnova.com/products/been-done-platform-loafers-black', 'Been Done Platform Loafers - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ49eSyaX1tOIiQPClBNfDsEW6KaqaCupX132eIqujGW1Sln1tA&s'),
(25, 11, 'https://www.nordstrom.com/s/franco-sarto-stevie-bootie-women/5743632', 'Franco Sarto Stevie Bootie (Women) | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg1RjJf1z_2Bgelsh4eJgS9svuhDF1em9Jj67cZAApuEhyGgo&s'),
(26, 28, 'https://www.hottopic.com/product/black-butler-cats-are-great-girls-t-shirt/10300275.html', 'Black Butler Cats Are Great Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyyCZhCSJnESoe3XXEBT_Ucf3iqlKq6u4EpykDI6h9Nj5Zz6g&s'),
(27, 30, 'https://www.prettylittlething.com/basic-roll-sleeve-white-crop-top.html', 'Basic Roll Sleeve White Crop Top | Tops | PrettyLittleThing', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJc5zrmXGAiOhSYDE225ElP7L5atx9NPYmcBg47s2VKpDk6L9M&s'),
(28, 30, 'https://www.fanatics.com/nfl/detroit-lions/detroit-lions-fanatics-womens-plus-size-racerback-tank-top-black/o-2494+t-70154631+p-460089826563+z-8-1952107696', 'Detroit Lions Fanatics Women\'s Plus Size Racerback Tank Top - Black', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfeUaBtUyWYzzipqGiQSuB-gLYenlBziabtMPZkUUMXW3eJZbV&s'),
(29, 31, 'https://www.fashionnova.com/products/the-archangel-short-sleeve-tee-brown', 'The Archangel Short Sleeve Tee - Brown | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzNNA6bi3nfTF9jXSljJ8V1lUXseLQoNaGd6qK3U4w4gsfcRy4&s'),
(30, 1, 'https://www.nordstrom.com/browse/women/clothing/dresses?filterByStyle=double-breasted', 'Women\'s Double Breasted Dresses | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjc9v1MMdPv7GWC17Gunq0Xy8raop75EZs6C03y89tWHn0-2c&s'),
(31, 38, 'https://www.fashionnova.com/products/dark-evil-hatter-8-piece-costume-set-black', 'Dark Evil Hatter 8 Piece Costume Set - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6maPKkUP89WefrzZuu8rn82wgmg4-3MygK48P5yfVEFszQ9X6&s'),
(32, 38, 'https://www.fashionnova.com/products/pup-mr-monopoly-dog-costume-black', 'Pup Mr. Monopoly Dog Costume - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRtWOROVScc1EkRBLL1tQC4gr67H6U0O4_LamBv2h1XmhhkVw&s'),
(33, 31, 'https://us.boohoo.com/premium-halterneck-crochet-crop-top-/GZZ02514.html', 'Premium Halter Crochet Crop Top | boohoo USA', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTObCN9IFPLAHxqMpXyyXkM9rtMbUAssep3RjjJG7M3cVkB38au&s'),
(34, 44, 'https://www.nordstrom.com/browse/women/clothing/coats-jackets/jean-jackets?filterByBrand=rails', 'Women\'s Rails Jean & Denim Jackets | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9sF9VkXUmXEljkoRFd3bpNoteiKt24nrnwQaiyUNPhrt1ur0&s'),
(35, 44, 'https://www.promgirl.com/products/velvi-vel-ace-dress', 'Ace One-Shoulder White Graduation Dress - PromGirl', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzR2SFNfanimv8M7XWmL_o5nJZUPpJvCEncslSIEtHPCnWGYXT&s'),
(36, 45, 'https://www.everlane.com/products/womens-oversized-blazer-greyherringbone', 'The Oversized Blazer in Wool Grey Herringbone – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd3HZUZXwEdbNPMkCPcxrLPIo_u1MWoqxhNdTWTORGHF-i_nY&s'),
(37, 31, 'https://www.pacsun.com/cyberpunk-edgerunners-t-shirt-0097602920012.html', 'Cyberpunk Edgerunners T-Shirt | PacSun', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDWqotqdPW8u22RfCQPH00gBTuLqjBwLcSl_4mBhxmQIwTXeA&s'),
(38, 31, 'https://www.hottopic.com/product/super-mario-princess-peach-collared-girls-sweatshirt/30625426.html', 'Super Mario Princess Peach Collared Girls Sweatshirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjP9KRQbi-x1XOy9oddU0fybVYamlX2H9TP7pZFC4q0n8QXqP1&s'),
(39, 31, 'https://www.hottopic.com/girls/hoodies-and-sweaters/pullovers-sweaters/', 'Pullover Sweaters: Cool & Cute Pullovers for Girls | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREfoUUphUqeanPzH4lVBdC50cAixlZB0bkmO8wEemVVsll_LCG&s'),
(40, 11, 'https://www.nordstrom.com/browse/men/shoes/dress?filterByFeature=arch-support', 'Men\'s Arch Support Dress Shoes | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7n5vOXKbXCGuitPlPEum2UNZRBDfguAkMqp6Jj6a8j74u0sN5&s'),
(41, 31, 'https://www.nordstrom.com/browse/women/clothing/sweatshirts-hoodies?filterByMaterial=corduroy', 'Women\'s Corduroy Sweatshirts & Hoodies | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYyNLM-OheP4_dgXNS8GcIklpxN8CFjB6bXOr2z3_RmCX10P8&s');

-- --------------------------------------------------------

--
-- Table structure for table `FollowingConnections`
--

CREATE TABLE `FollowingConnections` (
  `ConnectionID` int NOT NULL,
  `UserID` int NOT NULL,
  `FollowingID` int NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `FollowingConnections`
--

INSERT INTO `FollowingConnections` (`ConnectionID`, `UserID`, `FollowingID`, `Timestamp`) VALUES
(13, 1, 2, '2024-10-21 21:14:19'),
(14, 25, 17, '2024-10-21 23:09:48'),
(16, 17, 2, '2024-10-21 23:39:04'),
(24, 1, 17, '2024-10-24 23:18:57'),
(25, 1, 25, '2024-10-24 23:19:26'),
(27, 28, 17, '2024-10-27 00:35:29'),
(28, 28, 2, '2024-10-27 00:41:49'),
(29, 1, 28, '2024-10-27 17:00:43'),
(30, 29, 28, '2024-10-28 01:00:29'),
(31, 29, 17, '2024-10-28 01:01:06'),
(34, 1, 29, '2024-10-28 15:38:03'),
(35, 31, 29, '2024-10-28 16:09:42'),
(40, 11, 0, '2024-10-28 17:45:17'),
(45, 32, 1, '2024-10-30 01:32:55'),
(46, 36, 1, '2024-11-02 00:13:38'),
(47, 36, 2, '2024-11-02 00:13:41'),
(49, 2, 36, '2024-11-04 14:20:48'),
(50, 2, 25, '2024-11-04 14:27:56'),
(51, 33, 1, '2024-11-04 16:11:46'),
(52, 2, 38, '2024-11-05 00:10:20'),
(54, 2, 17, '2024-11-08 00:22:11'),
(55, 31, 17, '2024-11-08 17:43:13'),
(57, 11, 17, '2024-11-12 14:23:47'),
(58, 44, 1, '2024-11-12 16:00:18'),
(59, 44, 2, '2024-11-12 16:00:20'),
(60, 31, 44, '2024-11-12 16:36:42'),
(61, 45, 44, '2024-11-12 20:01:52'),
(63, 31, 45, '2024-11-15 04:13:09'),
(75, 2, 11, '2024-11-20 16:46:15'),
(76, 11, 45, '2024-11-20 17:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `likeTable`
--

CREATE TABLE `likeTable` (
  `LikeID` int NOT NULL,
  `PostID` int NOT NULL,
  `UserID` int NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likeTable`
--

INSERT INTO `likeTable` (`LikeID`, `PostID`, `UserID`, `Timestamp`) VALUES
(25, 54, 11, '2024-10-28 16:50:22'),
(27, 56, 11, '2024-10-28 16:54:30'),
(33, 56, 31, '2024-10-29 22:33:58'),
(62, 56, 2, '2024-10-30 01:30:23'),
(74, 63, 32, '2024-10-30 01:53:02'),
(80, 62, 31, '2024-10-30 02:01:55'),
(101, 63, 31, '2024-10-30 02:06:28'),
(142, 62, 1, '2024-10-30 15:41:16'),
(144, 50, 2, '2024-10-31 15:10:33'),
(145, 61, 36, '2024-11-02 00:13:34'),
(146, 55, 1, '2024-11-02 19:51:27'),
(154, 64, 2, '2024-11-06 16:04:54'),
(157, 50, 11, '2024-11-09 14:41:18'),
(204, 54, 17, '2024-11-11 16:48:39'),
(261, 67, 2, '2024-11-11 19:34:14'),
(327, 66, 11, '2024-11-12 14:19:13'),
(393, 70, 11, '2024-11-12 14:39:43'),
(410, 67, 11, '2024-11-12 14:42:30'),
(417, 71, 44, '2024-11-12 16:00:13'),
(418, 61, 44, '2024-11-12 16:00:17'),
(421, 72, 2, '2024-11-12 16:29:37'),
(427, 72, 11, '2024-11-12 16:34:29'),
(430, 71, 31, '2024-11-12 16:36:46'),
(431, 75, 45, '2024-11-12 18:00:21'),
(432, 71, 45, '2024-11-12 20:02:07'),
(434, 75, 2, '2024-11-13 16:14:56'),
(490, 75, 17, '2024-11-13 16:51:11'),
(510, 61, 2, '2024-11-16 22:52:42'),
(515, 77, 31, '2024-11-20 16:16:42'),
(516, 76, 31, '2024-11-20 16:19:26'),
(517, 72, 31, '2024-11-20 16:19:29'),
(520, 77, 2, '2024-11-20 16:23:25'),
(521, 76, 2, '2024-11-20 16:23:27');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `PostID` int NOT NULL,
  `UserID` int NOT NULL,
  `BoughtID` int DEFAULT NULL,
  `UserMedia` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Caption` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `MediaReference` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `LikeCount` int DEFAULT '0',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`PostID`, `UserID`, `BoughtID`, `UserMedia`, `Caption`, `MediaReference`, `LikeCount`, `Timestamp`) VALUES
(61, 1, 41, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL2YDKMgloHe2bXQdM5WXFBe-E38C6ZykwmeNdgi1EI-p3G65N&s', 'Guys I bought this for my graduation dress!', 'https://www.nordstrom.com/browse/women/clothing/dresses/little-white-dress?filterByBrand=amanda-uprichard', NULL, '2024-10-29 23:01:57'),
(71, 2, 44, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFwBFpPb800rigf6nMfhPM65kgIFChYZhcAAHgSwy6VrWgGgs&s', 'love this!', 'https://www.hottopic.com/product/coraline-art-girls-jean-jacket/32049893.html', 3, '2024-11-12 15:26:19'),
(72, 44, 46, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR597tghall0fyqIc0dbh2UakC29kFIPExRClM3-IN9dORkrzU&s', 'Just ordered this dress for graduation! Do we love it?', 'https://www.promgirl.com/products/velvi-vel-tahlia-dress', 3, '2024-11-12 16:02:21'),
(75, 31, 39, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_KtoRMX3fg5RoOW4oTEnlyJ1sUvHoitdYPd1010A85feMn84I&s', 'These pants are SO COOL and also look so comfy!! I just bought them!!!', 'https://www.hottopic.com/product/skull-star-fuzzy-patch-wide-leg-girls-lounge-pants/31554125.html', 3, '2024-11-12 16:37:47'),
(76, 45, 47, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdYC-kMwU_r4DC-QMqoZbqsCiuuh8Uswj2fZHCkbqT4Kh9OJM&s', 'love this!', 'https://us.boohoo.com/tall-blazer-dress/TZZ95191.html', -37, '2024-11-12 20:01:37'),
(77, 11, 30, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2hDwvMUmVGznIaQ1Ww1CKo0NN7Y4LLJHnjrUZk1xfhGGm2Pg&s', 'Cool shoes!', 'https://www.zappos.com/p/mens-ecco-sport-mx-slip-on-2-0/product/9782156', 2, '2024-11-18 16:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `suggestionNo` int NOT NULL,
  `userEmail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subjectLine` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`suggestionNo`, `userEmail`, `subjectLine`, `description`) VALUES
(1, '', 'addStore', 'nada'),
(2, '', 'addStore', 'nada'),
(3, '', 'addStore', 'April 25, 2024'),
(4, 'estellaemercado', 'addStore', 'add Shannen\'s etsy'),
(5, '', 'addStore', 'shannens etsy'),
(6, 'estellaemercado@gmail.com', 'reportBug', 'ur mom'),
(7, '', 'reportBug', 'my mom'),
(8, '', 'misc', 'im hungry'),
(9, '', 'featRequest', 'titties'),
(10, '', 'addStore', 'shannen\'s etsy pretty pls'),
(11, '', 'addStore', 'Your mom'),
(14, 'g.edwards0513@gmail.com', 'misc', 'Hey guys good job. More Garfield '),
(15, '', 'addStore', 'nyan cat'),
(16, '', 'addStore', 'fgfdgfgfgfgfdgfdgfdgfgfgfdgjkhjfjjfjfjfjfjjfjjjj'),
(17, 'urmom@urmom.com', 'featRequest', 'can you add me to the website I\'m very pretty and hot'),
(18, 'Gugtime@gmail.com', 'misc', 'I wish I could favorite the clothes'),
(19, '', 'misc', 'Mouse cursor is funny but can be hard to follow on certain backgrounds (like the pink header). Otherwise great job!'),
(20, '', 'misc', 'Mouse cursor is funny but can be hard to follow on certain backgrounds (like the pink header). Also, maybe make this suggestion box multi-line so we can see the entire message that we are writing. Otherwise great job!'),
(21, 'sdf', 'reportBug', 'fdf'),
(22, '', 'reportBug', 'the FF team is too hot');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int NOT NULL,
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `displayName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pictureName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profilePicture` longblob,
  `igLink` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tiktokLink` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tumblrLink` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `twitterLink` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fbLink` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `personalLink` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `email`, `displayName`, `password`, `bio`, `pictureName`, `profilePicture`, `igLink`, `tiktokLink`, `tumblrLink`, `twitterLink`, `fbLink`, `personalLink`) VALUES
(1, 'estellaemercado@gmail.com', 'Estella\'s Fashion Diary', '$2y$10$BV2TgTArHs0Olw0blbmYsevK6zcrf5qY3q8ohEsOuI6MsC0Mlc/IG', 'Too rad to be sad', NULL, 0x75706c6f6164732f312f494d475f323033307e70686f746f2e504e47, 'https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.pearsonr.html', NULL, NULL, NULL, NULL, 'https://www.fashion-finder.store/TEST/profile.php'),
(2, 'scawl432@live.kutztown.edu', 'shan', '$2y$10$ayTuP8cxScKA5BgBxNae8.GQIZ/yF4br8FRN3bttqhh7Vo.cIPTR6', 'hello', NULL, 0x75706c6f6164732f322f372e6a7067, 'https://www.pinterest.com', 'https://www.amazon.com/gp/homepage.html?opf_redir=1&ref_=navm_hdr_signin&_encoding=UTF8&', 'https://www.fashion-finder.store/TEST/profile.php', 'https://www.pinterest.com', 'https://www.pinterest.com', 'https://www.fashion-finder.store/TEST/profile.php'),
(3, 'fedotova0e0v@gmail.com', 'kate', '$2y$10$F0SFEQSVUi1WakeiNo5Jr.hF2nFE.DFU2IYo0dMTpPO12Hbu/Kpmq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'kate@prophetlogic.com', 'kate-pl', '$2y$10$OTI2BBBPEhqLJTkKSYL1G.G0Mqp8EgP0yZPa5djCkt813ow8oX.Fe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'efedo552@live.kutztown.edu', 'efedo552', '$2y$10$G7vx9d4IhLuTSXnw9gAAC.XGOABPcY3eWrHTaxRmiNmC0tgxNclIG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'poopy@head.com', 'ballz', '$2y$10$4EXqR/B6F6R3WsglQKs0EuLF5zR.ATq.5VWiBULblQcsHXJsw7JNe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'testtt@aol.co', 'testuser', '$2y$10$ei27U5.wLyKL3YTtrVcFF.5Vvdz1f1b3GOvzs2dJwzLpUi.VRTzbO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'email@mailk.com', 'testuserrrr', '$2y$10$zyn9Z/qQg3.hP1seicoRR.S3W7BMv.tT50KDwBsK7glvVe/5YF2Ii', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'evecollier3@gmail.com', 'Ebe', '$2y$10$GZYqEj5kea3a5P0x8NMBkugYav93uo8AhCl7WmvUAJSOjDPspiMsS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'fsfsdfsf@lnlnk.com', 'testuserrrrwww', '$2y$10$XLsRNQK9dNzvqIUhSrlB..lYGHrKrt97dZOS6BFAsI9KUfblIfmmu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'fsdfsdf@sfsd.com', 'haha', '$2y$10$VkILZ2TzyEpABi9oVZf4/O8afMEjKBkHVYTqRhznx493wa5/3QnNe', 'heheh', NULL, 0x75706c6f6164732f31312f41646f626553746f636b5f3634343837333435302e6a706567, 'https://instagra.com', 'https://TikTok.net', '', '', '', ''),
(12, 'fgfdgdfg@kvk.cdsfsd', 'hahahahahah', '$2y$10$3YBE3OSQE/Q61phrm267C.EGfGqcOtBxkPFVqGDxwcN.BNOOdLZjq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ecoll525@live.kutztown.edu', 'brick', '$2y$10$VOdXIOHh6EZ8RxXI/FnbkeATSBPrGuIcM4H3n4PqyaTUo8qnOcs/q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'evecollier716@gmail.com', 'I_Heart_KateShannenEstella', '$2y$10$4Q21BDwDp3Cj3vxYx3OG1O4oOuf9e7PHWw7wpvaOmUoBnFnQNuNpW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'shootingstarz716@gmail.com', 'boob', '$2y$10$rkV7shybmQ/87Mx4ZQGrXuIdweIaAbz.KQWMgBiqwVbDsP.zueZ6q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'fredfishie09@gmail.com', 'bob ross', '$2y$10$DiN1VxoIqtDLsKdVhx6bHe/4lgPFcfPmk5DtspBMH3D.JDqefM89W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '1234@gmail.com', '1234', '$2y$10$wzblEE7twStMN.Ki6vVw1uAa3SpoA/28Y9f5PIOoCYv68bzfca6wq', 'hello', NULL, 0x75706c6f6164732f31372f494d475f313731352e4a5047, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'ervinwoodwardm3393@gmail.com', 'LAHtgEXS', '$2y$10$tx/OlGe3TGJzuwT.7FjVrexjkG.n27pzKb5jFFpQRzB7pdsYnftdO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'selmaalimariam@gmail.com', 'tooth', '$2y$10$.eAo.1SRsJCzpdNMxN0dtOviMKaTBAifFWd/sJRQFmO0aM2m.wLmG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'scawl@lfjdlsf.com', '12344', '$2y$10$PN4GhycuzfABX6d8gVzfx.RW4SEn3vqb3encEQzMXh6m6qVL.pyf6', '', NULL, NULL, '', '', '', '', '', ''),
(21, 'kleibonillavz18@gmail.com', 'BWvUqMiuCIqKIHE', '$2y$10$XXxADojTm47g9PM/VwOH2eQWQnagEpjRFKpXp4gG9GGh.PmunbXpO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'no@gmail.com', 'hi', '$2y$10$EqrsYMHXpLNsTpT.o0LneeRfIGYPERx6ge/gvYikdSOMLbLjur12W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'abc@gmail.com', 'EEp', '$2y$10$5mhwQSIeoBAJVUwylmYczOPbL4KlWE3Voyqo4xoR0G3wViODKMfMC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'fulamial1231@gmail.com', 'aIOkSBBNvcJY', '$2y$10$kXky2sgnpU/qWRCZqKOsBOrjQPZ/gJAbt5Y3w/JR0WAnRdxI4XiLe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '1234@yahoo.com', 'kelsey', '$2y$10$CqqOWfaiKNrDGzDVy54XCek8P6J8ZpJdniZWdCFQiSAgUu0jDUCp2', 'picture', NULL, 0x75706c6f6164732f32352f537564735f5f536f6674776172655f546563685f54616c6b5f576974685f53637275625f4461646479735f456e67696e6565722e706e67, NULL, NULL, NULL, NULL, NULL, 'https://www.fashion-finder.store/TEST/profile.php'),
(26, 'katee@prophetlogic.com', 'kate.plg', '$2y$10$mKhNTX2YVzPeiXYYz84UEuRz2cHXTu3Ce9jQ8YlUjxcB9QfL1YcAW', 'Hi! I\'m Kate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://katefv.com'),
(27, 'spongebob@gmail.com', 'bobsponge', '$2y$10$f6PXbkJEInQGck7LckO8Ue2BspNqu5ETQTlGW3s1IIRVvjiKW5ODW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'camels@yahoo.com', 'beep', '$2y$10$fuc6248pHudy9PpBoYg02.0FDzOSZG18jD8FW294ktJyzlrjYMS7i', 'I LIKE ORANGES', NULL, 0x75706c6f6164732f32382f5061747269636b5f35414d2e474946, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'audreylayne09@gmail.com', 'branchfromtrollswithaDUI', '$2y$10$nwBM29a2ZyJH7eMfu7wzv.w2HpfYWit9dSc2JF4vLQQNRVKLV7e2G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '123@gmail.com', 'pancakes', '$2y$10$Fzx9e8hvVob3/ahMQ.FDGOh9fMimuwlSNGEf4V2VhhC39Y0.IidYu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'eve123@gmail.com', 'notEve', '$2y$10$SL.ZpJ.vxmsX8YWAwsNm2eljfiC9UlKLugVgYPkQ6HgZ1nE0UXdmq', 'I like cereal', NULL, 0x75706c6f6164732f33312f46726f73746564466c616b65732e4a5047, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'emerc079@live.kutztown.edu', 'Estella :)', '$2y$10$HFETX2f4AjFBVM3BgW9s3OrKCF2hAsOKYq.GISD/pIDVKtlmktRVO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '12345@yahoo.com', '12345', '$2y$10$nae0Yfxgxix9jlY1BATwK./YzV/467fQvZ9UCxW09Jz.D28rZ6G/G', 'hello', NULL, 0x75706c6f6164732f33332f494d475f383139312e6a7067, 'https://www.fashion-finder.store/TEST/profile.php', NULL, NULL, NULL, NULL, NULL),
(34, 'emilyhendershot33@gmail.com', 'Emily', '$2y$10$eCoGdnjzESaTummqMBMmluBfhxaXscEoEmCXWDRz1w75ao5F7hWyu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'nickruth03@gmail.com', 'FashionFella78', '$2y$10$0Pc5tG4eZ3UePy2AqxER8.J5MONvFvRnOrtTUKjm3pvvSFFqJuknq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'jmora678@live', 'urmom', '$2y$10$RwnvD.Tc.QU8pR37MxuVxO18wItW9OE6A919H3Az/Uc3xngMjNun6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'gugtime@gmail.com', 'Count.Gabula', '$2y$10$xaNcwQh/glDqpwfb.Md9ueMIcdaPElC2OJ1MNq37/UqjBDJSne00K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'zayninhenthorn@gmail.com', 'madz_attendance', '$2y$10$FIpVXbur/3cB6Ttd/PqZHO060hqEEo7.f2TLmyvHX24n1NB0qNZxK', 'we are the madz attendance', NULL, 0x75706c6f6164732f33382f6170706c6573617563652e706e67, NULL, NULL, NULL, NULL, NULL, 'https://madzattendance.org'),
(39, 'cmarberry197373@outlook.com', 'XDBfylyDMFH', '$2y$10$OERoykHfVjJ0o/.ZRyf.X.I3edmVxNMxf7uN15qz3uFXa.dedAlyK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'vikiryanin@gmail.com', 'mslGPVApJwOy', '$2y$10$0748CeRSG90oUDgvrUBrpOu0FfRNxJK1SBxX111pAoOJZx2PkU0Nu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'latoyajoycec@gmail.com', 'xMiUbUnnjH', '$2y$10$MLC.XGi3KgcS3m3Jf8r4wuGN0SrU4p46LRA/iPoH9NkwvEeqeTThG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'tuneweyhing@yahoo.com', 'hhtepNnNnkZ', '$2y$10$H6e8qXcQPmte/j.lM.PZveHxovKNmQH6nTxtF9O86toroSdtreuwS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'knealwt@gmail.com', 'IxsdxWuViQqVD', '$2y$10$99o0xbc993d0rxHsp6wsM.EVBThTjU/YOvbNv5BCleIQTvJdm8vOW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'jane.doe@gmail.com', 'jane', '$2y$10$9zG1.rAK4UevAmW.Ntvq8erSAB1On4kKsqDB/TZlqyuL9MiPV.YFS', 'I love pickles', NULL, 0x75706c6f6164732f34342f494d475f313833332e6a706567, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'fashionfinder@gmail.com', 'Fashion Finders', '$2y$10$7PP4Ly0DyolFiYcemWdVYegqwrJl.7QVCChZAl2GHozj2/9SSU6y2', 'Hello world', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'miauratirbai@yahoo.com', 'KdWaoRUydQlkVmg', '$2y$10$exPKr/BU0KjhCQG.DanKYewZqPGq4BIA7LK6Dq.cR1ScOj1iG5YHC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'vanklsbeeagront@yahoo.com', 'PaftuBMSKtCcNZ', '$2y$10$aWHU2co3WZqHixj3XLHq8uJV9Vt/UpJUpH5mIRrlf3ogpXMYJZFKO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'blakesivardzj2005@gmail.com', 'CXMOsOCkold', '$2y$10$sbzZf.WbYoRFlyoZINCkYOA3PjdH83cc2XpTNVkfwI5dRPPXXfYwe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendorNo` int NOT NULL,
  `vendorEmail` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `vendorStore` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `vendorComment` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `viewed`
--

CREATE TABLE `viewed` (
  `ViewedID` int NOT NULL,
  `UserID` int NOT NULL,
  `itemUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `itemTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `itemSrc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `viewed`
--

INSERT INTO `viewed` (`ViewedID`, `UserID`, `itemUrl`, `itemTitle`, `itemSrc`) VALUES
(94, 7, 'https://www.hottopic.com/product/invader-zim-gir-stripe-hi-top-sneakers/20033439.html', 'Invader Zim GIR Stripe Hi-Top Sneakers | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKjeJ8O5g5ZX7rC7e6KxUflOQmwhNgF0zmSJDMfDcuhMcQ3AE&s'),
(95, 7, 'https://www.hottopic.com/product/shrek-donkey-bestie-sneakers/20033471.html', 'Shrek Donkey Bestie Sneakers | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe1ZqSn5mclsPSpo8oVawOY9QehlGWisUTwdh9hfQ-lpRyZ3Y&s'),
(96, 7, 'https://www.hottopic.com/product/bluey-bingo-figural-hi-top-sneakers/31372775.html', 'Bluey & Bingo Figural Hi-Top Sneakers | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZuZDMLReuhHK3KVHUGWOEIg7NXtbmb_tcs9CpDCmHCUSzez4&s'),
(97, 7, 'https://www.hottopic.com/product/disney-winnie-the-pooh-fuzzy-tigger-pooh-slip-on-sneakers/20800187.html', 'Disney Winnie The Pooh Fuzzy Tigger & Pooh Slip-On Sneakers | Hot ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxUuY_mKTWGGAF3b44GkcvFZcSNWCJCwhSaxT0wQ0hKPFbyco&s'),
(98, 1, 'https://www.promgirl.com/products/promgirl-pg-23-pt8009-dress', 'Burgundy Red Sequin-Velvet Long Prom Dress - PromGirl', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgbfG73W4J9oc2HmiTZTscdC6ASS6_sXGL4XxNbRew6f-ZlaLH&s'),
(99, 2, 'https://www.fanatics.com/college/north-carolina-tar-heels/north-carolina-tar-heels-new-era-womens-script-9twenty-adjustable-hat-carolina-blue/o-27+t-34092739+p-68443344913556+z-9-4093146181', 'North Carolina Tar Heels New Era Women\'s Script 9TWENTY Adjustable ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuu2JrXMqN8AAjVD9CMUBqUs2KV-9spW2FUCUMCUAbVtpMgd1G&s'),
(100, 2, 'https://www.fanatics.com/college/north-carolina-tar-heels/north-carolina-tar-heels-league-collegiate-wear-2022-ncaa-mens-basketball-tournament-march-madness-final-four-relaxed-twill-adjustable-hat-navy/o-27+t-90653851+p-825388662394+z-9-2140864343', 'North Carolina Tar Heels League Collegiate Wear 2022 NCAA Men\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7aoK1-kSlW3LsWQttR3x3BJE5FWz964afOliMecFBVkGh_SYr&s'),
(101, 1, 'https://www.promgirl.com/products/nox-anabel-na-g1148-dress', 'Periwinkle Sheer-Bodice Lace Formal Dress - PromGirl', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU_uXiZno4VxtxVJRKhbWplBd0cr50AifbtqQtt5KcWZaLaqpO&s'),
(102, 9, 'https://www.everlane.com/products/mens-track-pant-black', 'The Track Pant Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_9AiTepKmI2PMX1NfLIxP_-gm4xNoKxjqvv4JStz2nqqjkPk4&s'),
(103, 11, 'https://shop.lululemon.com/p/shoes/Blissfeel-2-Womens-Running-Shoe-MD/_/prod11530177', 'Blissfeel 2 Women\'s Running Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0hniFLBtHAXQP-ueeTS5mww2uoPT7T36-Uh-UYnjiyWghKOM&s'),
(104, 12, 'https://shop.lululemon.com/p/shoes/Strongfeel-Womens-Training-Shoe/_/prod11210018', 'Women\'s Strongfeel Training Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVGplm1QgJlvm69y00dJsXCnpjfkzrH4TX2UczjrJIMnFEsxTr&s'),
(105, 12, 'https://shop.lululemon.com/p/shoes/Strongfeel-Womens-Training-Shoe/_/prod11210018', 'Women\'s Strongfeel Training Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVGplm1QgJlvm69y00dJsXCnpjfkzrH4TX2UczjrJIMnFEsxTr&s'),
(106, 12, 'https://shop.lululemon.com/p/shoes/Strongfeel-Womens-Training-Shoe/_/prod11210018', 'Women\'s Strongfeel Training Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVGplm1QgJlvm69y00dJsXCnpjfkzrH4TX2UczjrJIMnFEsxTr&s'),
(107, 11, 'https://www.everlane.com/products/womens-linen-wrap-skirt-new-black', 'The Linen Wrap Skirt Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNIAYe9I84xw6EcbZ3VUGZ4_ogu07uYhfpdCsyIHI4P8o1LdFg&s'),
(159, 2, 'https://shop.lululemon.com/p/mens-trousers/ABC-Classic-Fit-Trouser-32-Warpstreme/_/prod11500061', 'ABC Classic-Fit Trouser 32\"L *Warpstreme | Men\'s Trousers | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXSwWQVos9kcVvVBh6ErRMOd3Dq8OYt6Fa_4uUKqkqgL8u1e0&s'),
(160, 2, 'https://www.everlane.com/products/womens-linen-scoop-neck-tank-new-black', 'The Scoop Tank in Linen Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw723cT1gzA7jFtXIunktrohWv0AvRxw1yc7ns8ONOERvySCl8&s'),
(161, 2, 'https://huckberry.com/store/baracuta/category/p/84052-g9-harrington-jacket', 'Baracuta G9 Harrington Jacket - Army | Jackets | Huckberry', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5XPWC3Aj0w1vpSJjNloWQViZYuVPTeOgtCfIw1ykaYDrGGTA_&s'),
(162, 2, 'https://huckberry.com/store/schott/category/p/88207-b-6-sheepskin-leather-bomber-jacket', 'Schott B-6 Sheepskin Leather Bomber Jacket - Black | Leather ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvmrm76kt2dhYF0dL-9BQXvzQzZZT9lWRRNeb6bR2efwZVcwo&s'),
(163, 2, 'https://www.everlane.com/collections/womens-mothers-day/style/womens-tops--blouses-and-shirts', 'Women\'s Tops, Blouses & Shirts | Mother\'s Day Gifts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtOkifcqiKnos6zwZ4ijh9pIE77COq_Ph8Ic2boM8COB_MOLST&s'),
(164, 2, 'https://shop.lululemon.com/p/women-tanks/Align-Cropped-Cami-Tank/_/prod11680178', 'lululemon Align™ Cropped Cami Tank Top *Light Support, A/B Cup ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqJteEDFmVCakORLf-IKbB3hqk9wKiLk4jEt2WE32joETCNrBH&s'),
(165, 2, 'https://www.hottopic.com/product/pink-velour-strawberry-girls-lounge-pants/17062635.html', 'Pink Velour Strawberry Girls Lounge Pants | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToXVuaA5yeb0tcvEcIcjlMYIGEbOFI88wpqxCLoDLtZ2b0yb4u&s'),
(166, 2, 'https://www.hottopic.com/product/jumbo-skulls-sherpa-girls-lounge-pants-plus-size/18677377.html', 'Jumbo Skulls Sherpa Girls Lounge Pants Plus Size | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8LZee2ZwhfnbiJhF9gIHf_8Djsjhffs0EVOv8WmFXrgDpYtw&s'),
(167, 2, 'https://shop.lululemon.com/p/women-shorts/Hotty-Hot-Short-II/_/prod8551591', 'Hotty Hot Low-Rise Lined Short 2.5\" | Women\'s Shorts | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQy6GMF6l4nl2_6vHJe789cD4m41C5FAGbKDPppTwP6Al1mR0&s'),
(168, 2, 'https://www.promgirl.com/products/promgirl-pg-23-pt8006-dress', 'Hot Pink Long Prom Dress with Sheer Bodice - PromGirl', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPH4iP85-6JzsRPYuxaJO8yLSGWHERGXsDQtfs-3JeTrLnirxO&s'),
(169, 2, 'https://www.everlane.com/collections/womens-tops', 'Women\'s Tops, Blouses & Shirts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYwr5ZM2O9n7JNu41qGRf7JMxv2A-OSxhlCoHzcag5IKeE7Yqg&s'),
(170, 2, 'https://www.everlane.com/collections/womens-tops', 'Women\'s Tops, Blouses & Shirts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYwr5ZM2O9n7JNu41qGRf7JMxv2A-OSxhlCoHzcag5IKeE7Yqg&s'),
(171, 11, 'https://www.everlane.com/products/womens-rigid-way-high-jean-rich-indigo', 'The Rigid Way-High® Jean Rich Indigo – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiwEK46neWoUQEzb6d2GwzDrvWS6k1g7gZkDxSrpxHS7RR1qQ&s'),
(172, 11, 'https://www.everlane.com/products/womens-way-high-jean-wblk', 'The Way-High® Jean Washed Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-aFwQ4kLYA8G8ulhvSumirWiPeJGxfXvzV3WIwLw5sIpIgAZI&s'),
(173, 11, 'https://www.everlane.com/products/womens-way-high-jean-ecru', 'The Way-High® Jean Ecru – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyys8sXQlfLr6OvtiRRkob62H669tbT10OFn6gG_4mE8OCsuxA&s'),
(174, 11, 'https://www.ae.com/us/en/x/jeans?menu=cat4840004', 'Jeans for Men and Women | American Eagle', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9VA1-lf5jURleXRE_4n8X1X71NSP6-CJjFTES6zT68ySysf_W&s'),
(175, 11, 'https://www.everlane.com/products/womens-way-high-jean-long-wblk', 'The Way-High® Jean Washed Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHQ8wxDy8N5KVWgjQDhIdE3LqRCCffuiICTPooZVw1U7eIXgH7&s'),
(176, 11, 'https://www.everlane.com/products/womens-high-rise-straight-jean-ankle-lightbluewash', 'The Japanese Denim Cheeky Jean Sky Blue Wash – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcy3VgV735v6cuAu_0-DWA2TFYPocHXvhN0jTUqM8oU-7taOqr&s'),
(177, 2, 'https://shop.lululemon.com/p/shoes/Strongfeel-Womens-Training-Shoe/_/prod11210018', 'Women\'s Strongfeel Training Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVGplm1QgJlvm69y00dJsXCnpjfkzrH4TX2UczjrJIMnFEsxTr&s'),
(178, 2, 'https://www.everlane.com/products/womens-dream-tube-top-black', 'The Dream Tube Top Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS08DuSx830cDWfkD9BRM_P0RVV2wL_xOwErqXTXKTixQxwiVk&s'),
(179, 2, 'https://www.everlane.com/products/womens-dream-v-neck-tank-black', 'The Dream V-Neck Top Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsGo4PK617avKzPoD7Zv7AWabh01FRinG5ZQnfFt_AS_yzSoMU&s'),
(180, 2, 'https://www.everlane.com/products/womens-dream-tube-top-black', 'The Dream Tube Top Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS08DuSx830cDWfkD9BRM_P0RVV2wL_xOwErqXTXKTixQxwiVk&s'),
(181, 2, 'https://www.everlane.com/collections/womens-tops', 'Women\'s Tops, Blouses & Shirts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYwr5ZM2O9n7JNu41qGRf7JMxv2A-OSxhlCoHzcag5IKeE7Yqg&s'),
(182, 2, 'https://www.everlane.com/collections/womens-linen-clothing/style/tops', 'Women\'s Tops | Linen – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl-mYjENpC7Wj6OAm9UURAVf6WUeHxpuoMMxHt_Bs0E38et2kq&s'),
(183, 2, 'https://www.everlane.com/collections/womens-sale/style/tops', 'Women\'s Tops | Sale – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4WRE0vIX3y002XULWPEOoJtE5VjK_Cj8W45a3eWUEVKtinR0&s'),
(184, 2, 'https://shop.lululemon.com/p/women-tanks/Wundermost-Nulu-Scoop-Neck-Crop-Tank-MD/_/prod11720591', 'Wundermost Ultra-Soft Nulu Scoop-Neck Cropped Tank | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlHVuZLpVz-gSjM55GOlq5ijq9n2L9Iny09JlV66ath20zYIEj&s'),
(185, 2, 'https://www.ae.com/us/en/c/women/tops/tank-tops/cat380157', 'Women\'s Tank Tops: Cropped, Camisoles & More | American Eagle', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8Xc1oSQ1Ml2_ib8p3DcIBHy5kCAv1pS97QcEwDPjV_8OdPoc&s'),
(186, 2, 'https://www.everlane.com/collections/womens-tops', 'Women\'s Tops, Blouses & Shirts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2jDgus9qYOUWiqYgm8evK2rXzj4Ykhzh3seg3nmDIzQF1U5w2&s'),
(187, 2, 'https://shop.lululemon.com/p/shoes/Strongfeel-Womens-Training-Shoe/_/prod11210018', 'Women\'s Strongfeel Training Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVGplm1QgJlvm69y00dJsXCnpjfkzrH4TX2UczjrJIMnFEsxTr&s'),
(188, 2, 'https://shop.lululemon.com/p/shoes/Blissfeel-2-Womens-Running-Shoe-MD/_/prod11530177', 'Women\'s Blissfeel 2 Running Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7oekQ8RwSZGb9DvYBQCDdpOuazu3tSYsLVVakdTdoG6FrbDk&s'),
(189, 2, 'https://www.hottopic.com/product/peanuts-cowboy-snoopy-boyfriend-fit-girls-t-shirt/31220994.html', 'Peanuts Cowboy Snoopy Boyfriend Fit Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbtj56BuPlC-TjwBA8bl3j_mVBL9UVRejibPsV57KAUboNuQl2&s'),
(190, 2, 'https://www.fanatics.com/nfl/las-vegas-raiders/las-vegas-raiders-cuce-womens-cowboy-boots-cream/o-3572+t-14597125+p-5744662210608+z-9-4095904104', 'Las Vegas Raiders Cuce Women\'s Cowboy Boots - Cream', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYOc7yYj0wEIHt06xBMTKVU5KLhmv7MeAadXN009WwNavHPYc&s'),
(191, 2, 'https://www.fanatics.com/nfl/buffalo-bills/buffalo-bills-cuce-womens-cowboy-boots-cream/o-9194+t-69935790+p-579911979481+z-8-2655611865', 'Buffalo Bills Cuce Women\'s Cowboy Boots - Cream', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNAR5q_l3GE1da8L5STfXc7PUGdONkxA8uU6kE_jxHTi78nb2s&s'),
(192, 2, 'https://www.fanatics.com/nfl/philadelphia-eagles/philadelphia-eagles-cuce-womens-cowboy-boots-cream/o-8005+t-69047159+p-682288889527+z-8-1999680740', 'Philadelphia Eagles Cuce Women\'s Cowboy Boots - Cream', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnp9lWm-k4ew9IAv1Bg2u2jVy7BNYOHQjdpsjpC77diQ7GAeGA&s'),
(193, 2, 'https://www.everlane.com/collections/womens-tops', 'Women\'s Tops, Blouses & Shirts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ3QhtkUH_kEuw7BXuu8yJJCPPuOzgARfrAjzVHGb7hisGclgp&s'),
(194, 2, 'https://www.everlane.com/collections/womens-tops', 'Women\'s Tops, Blouses & Shirts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2jDgus9qYOUWiqYgm8evK2rXzj4Ykhzh3seg3nmDIzQF1U5w2&s'),
(195, 2, 'https://www.everlane.com/collections/womens-tops', 'Women\'s Tops, Blouses & Shirts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdTBXbEK4-XgazWAog9i3pyjc1YBAm-bWrRDNzOt84IwllNP4&s'),
(196, 2, 'https://www.everlane.com/collections/womens-tops', 'Women\'s Tops, Blouses & Shirts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYwr5ZM2O9n7JNu41qGRf7JMxv2A-OSxhlCoHzcag5IKeE7Yqg&s'),
(197, 2, 'https://www.everlane.com/collections/womens-mothers-day/style/womens-tops--blouses-and-shirts', 'Women\'s Tops, Blouses & Shirts | Mother\'s Day Gifts – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZjfYaCzeybc24B2rbaqgUi8YZJd0QuLG0XVF-GAaNIDKlxgg&s'),
(198, 2, 'https://www.everlane.com/products/womens-gum-sole-chelsea-boot-lt-taupe', 'The Chelsea Boot Tobacco – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUOn_EhafXO9slux-J-fgh05u2DL_MyqZZEz9MPTg-s64W0kg&s'),
(199, 2, 'https://www.everlane.com/products/womens-wooden-puffa-clog-dark-umber-suede', 'The Wooden Puffa Clog Dark Umber Suede – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt7rv-2_FkyRXytgFFNluLV51ah6azKZV8CvbnVy_kvXP5tAY&s'),
(200, 2, 'https://www.everlane.com/products/womens-gum-sole-chelsea-boot-lt-taupe', 'The Chelsea Boot Tobacco – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUOn_EhafXO9slux-J-fgh05u2DL_MyqZZEz9MPTg-s64W0kg&s'),
(201, 2, 'https://www.everlane.com/products/womens-wooden-puffa-clog-dark-umber-suede', 'The Wooden Puffa Clog Dark Umber Suede – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt7rv-2_FkyRXytgFFNluLV51ah6azKZV8CvbnVy_kvXP5tAY&s'),
(202, 2, 'https://www.dsw.com/product/billy-footwear-cs-high-top-sneaker---mens/557784', 'BILLY Footwear CS High-Top Sneaker - Men\'s - Free Shipping | DSW', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsIneqtdaod8di744gEh4yNJw89BoE-mjWaz4mFGBtXiXpl_GY&s'),
(203, 2, 'https://huckberry.com/store/flint-and-tinder/category/p/85294-cotton-short-sleeve-camp-shirt', 'Flint and Tinder Camp Collar Tipped Short Sleeve Shirt - Olive ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLcEqmeLnsvBzpzWyKabxmluGGM_ZjvLQmVTweUzrb6Y5s8WI&s'),
(204, 11, 'https://www.promgirl.com/products/promgirl-pg-23-pt8009-dress', 'Burgundy Red Sequin-Velvet Long Prom Dress - PromGirl', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgbfG73W4J9oc2HmiTZTscdC6ASS6_sXGL4XxNbRew6f-ZlaLH&s'),
(205, 11, 'https://www.promgirl.com/products/nox-anabel-na-t1139-dress', 'Sweetheart Tight Long Strapless Formal Dress -PromGirl', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo9oCkRx5qNlF776wiClAIvxjHZOeQgE9KlkR5e1Zq0zaLV1c&s'),
(206, 1, 'https://www.promgirl.com/products/velvi-vel-darling-mini-dress', 'Short Scoop-Neck Short A-Line Grad Dress with Corset', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLTfBsVa_wOBuf7e1CohUGs564B6KQdQIjfdkBFn_OTLnte44&s'),
(207, 1, 'https://www.everlane.com/products/womens-gauze-off-shoulder-dress-white', 'The Gauze Off-the-Shoulder Dress White – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_AQ6TWSrTQHhRwt2vsMrkfa55mVflCmByeVMPGiLjVnfXTXxi&s'),
(208, 1, 'https://www.promgirl.com/products/blondie-nites-bn-4864bn-dress', 'Long White Prom Dress with Blue Floral Print', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6tWuTGMb9poJAFeKpoMRDdu8d0vfHw4yXNt2kFU1v7jVl52rT&s'),
(209, 1, 'https://www.promgirl.com/products/velvi-vel-darling-mini-dress', 'Short Scoop-Neck Short A-Line Grad Dress with Corset', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLTfBsVa_wOBuf7e1CohUGs564B6KQdQIjfdkBFn_OTLnte44&s'),
(210, 16, 'https://shop.lululemon.com/p/mens-trousers/ABC-Pant-Classic-Utilitech-32/_/prod10080327', 'ABC Classic-Fit 5 Pocket Pant 32\"L *Utilitech | Men\'s Trousers ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHYZMSALbDMvAdc83FzkJjOX9FxZ3okYLJm9RQD6IuTCbfJpY&s'),
(211, 16, 'https://shop.lululemon.com/c/women/_/N-7vf', 'Women\'s Clothes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx1verYF_SIZwQMRKUimivAenXP0qpi376-NhRwntq0FiruT8n&s'),
(212, 16, 'https://shop.lululemon.com/c/women-bodysuits/_/N-8sj', 'Women\'s Bodysuits | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4_ldQW7DobZtL3ASVfNvB800g9KYx70Z2Y-_Pw9zlrC4MxD4&s'),
(213, 16, 'https://www.hottopic.com/product/blink-182-sunflower-face-logo-boyfriend-fit-girls-t-shirt/20652208.html', 'Blink-182 Sunflower Face Logo Boyfriend Fit Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnGT_rEQnY0VDyudpNUqLODCBGlovzpm0nNyOCpdUFRQDGTUs&s'),
(214, 16, 'https://www.fanatics.com/nfl/pittsburgh-steelers/-pittsburgh-steelers-gameday-couture-womens-victorious-vixen-t-shirt-white/o-3594+t-25608294+p-9188224995067+z-9-119522200', 'Pittsburgh Steelers Gameday Couture Women\'s Victorious Vixen T ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG3ZS1KKb1dkG5H4bwL0SsXM-rO8lJ-A6ptPRg3xveYAOZv-nr&s'),
(215, 16, 'https://www.fanatics.com/formula-1/red-bull-racing/sergio-perez-red-bull-racing-castore-womens-2023-driver-edition-t-shirt-navy/o-32652281+t-09864294+p-614698968+z-9-3884706982', 'Sergio Perez Red Bull Racing Castore Women\'s 2023 Driver Edition T ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqxe_GCcrlE1HnGmbSBfGgbQkJfAzPietgx8noc2xM9KGI9Ssc&s'),
(216, 16, 'https://www.zappos.com/c/womens-casual-shoe-guide', 'Women\'s Casual Shoe Guide: Top 15 Must-Have Shoes | Zappos.com', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBDgo0z3a33vli9wCRRSAe0EYXPyEhOhnr-noFZW_imra2kmQ&s'),
(217, 16, 'https://www.hottopic.com/product/thorn-fable-frog-sherpa-girls-hoodie/30653697.html', 'Thorn & Fable Frog Sherpa Girls Hoodie | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT1S8oU3MH3B6cm3m7I8ar2cpOQIa2luxZ8t4PBVjXNAfC8NQ&s'),
(218, 16, 'https://shop.lululemon.com/p/women-sports-bras/Energy-Bra-Long-Line/_/prod9030660', 'lululemon Energy Longline Bra *Medium Support, B–D Cups | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwyqdX7tYQhawuLYUVWTw-rTwnwFYQ7_MJNBpZEdzBPvdtvJA&s'),
(219, 16, 'https://shop.lululemon.com/c/women/_/N-7vf', 'Women\'s Clothes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6807xSpG0XVZZhXKf35TwldbF7q_c9IJv4n_jh4e2EhkTdxqX&s'),
(220, 16, 'https://shop.lululemon.com/p/women-sports-bras/Energy-Bra-Long-Line/_/prod9030660', 'lululemon Energy Longline Bra *Medium Support, B–D Cups | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwyqdX7tYQhawuLYUVWTw-rTwnwFYQ7_MJNBpZEdzBPvdtvJA&s'),
(221, 16, 'https://shop.lululemon.com/p/womens-leggings/Align-Pant-Full-Length-28/_/prod8780551', 'lululemon Align™ High-Rise Pant 28\" | Women\'s Leggings/Tights ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUKRlwmDPyHJ10Pdg7-CJP4dfHsGpoAZqQn9VDoEVD2oP4YBA&s'),
(222, 16, 'https://shop.lululemon.com/c/women/_/N-7vf', 'Women\'s Clothes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2Z9Zc2Ygwf8PH6vUAjOs3feT89ONRo0n7ypda7xyZtNEOXH0a&s'),
(223, 16, 'https://shop.lululemon.com/p/women-sports-bras/Energy-Bra-Long-Line/_/prod9030660', 'lululemon Energy Longline Bra *Medium Support, B–D Cups | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwyqdX7tYQhawuLYUVWTw-rTwnwFYQ7_MJNBpZEdzBPvdtvJA&s'),
(224, 16, 'https://shop.lululemon.com/p/womens-leggings/Align-Pant-Full-Length-28/_/prod8780551', 'lululemon Align™ High-Rise Pant 28\" | Women\'s Leggings/Tights ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUKRlwmDPyHJ10Pdg7-CJP4dfHsGpoAZqQn9VDoEVD2oP4YBA&s'),
(225, 16, 'https://shop.lululemon.com/p/women-tanks/Align-Tank/_/prod9600539', 'lululemon Align™ Tank Top *Light Support, A/B Cup | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHqeC7fwikIymMVWpZ-b5Ta688Rh4BM3vRZ5-YNYV4BgRlD70&s'),
(226, 16, 'https://shop.lululemon.com/p/women-pants/Wunder-Train-HR-Tight-25/_/prod9750562', 'Wunder Train High-Rise Tight 25\" | Women\'s Leggings/Tights | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_x-x_Y3ihY7zK234f0HInZfbUjS6WOOWxbhncsO8oqVt67WM&s'),
(227, 16, 'https://www.everlane.com/collections/womens-sale', 'Women\'s Sale – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFh7SwkClMyPRRrOMK1WSmmr-196so6Bijr2MESxGGXRY8OUU&s'),
(228, 16, 'https://shop.lululemon.com/p/women-sweaters-and-wraps/W-Alpaca-Wool-Blend-Cardigan-Sweater/_/prod11784418', 'Women\'s Alpaca Wool-Blend Cardigan Sweater | Women\'s Sweaters ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_hwh3v3y4Er9DqqJEctzqhUolTfKl2HZR7cGTQM3E2v2L9UYh&s'),
(229, 16, 'https://shop.lululemon.com/en-ca/p/womens-outerwear/Define-Jacket-Nulu/_/prod11020769', 'Define Jacket *Nulu | Women\'s Hoodies & Sweatshirts | lululemon Canada', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-iW0QnoXZi66L8F4Lx09xhZt8mtuGaqul8_z9qMag1OXJX4SG&s'),
(230, 16, 'https://shop.lululemon.com/p/womens-leggings/Wunder-Under-SmoothCover-HR-Tight-25/_/prod11570139?color=0001', 'Wunder Under SmoothCover High-Rise Tight 25\" | Women\'s Leggings ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoXmopHzm3cf-PbpOxABewjlGiu9sGzqb4OMdhHHbgGf5dfeWo&s'),
(231, 16, 'https://shop.lululemon.com/c/women-sports-bras/_/N-7vl', 'Women\'s Sports Bras | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStWDRu2FFHYEKishgT6Og2hBNF3bL964cb8lxaZtKPcyqOR5C9&s'),
(232, 16, 'https://shop.lululemon.com/p/womens-joggers/Dance-Studio-Jogger-29-MD/_/prod9090576', 'Dance Studio Mid-Rise Jogger *Full Length | Women\'s Joggers ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnoVvvleN9lXHKpEnTv4ZsHjkFu_Htk9uKITd8ZlGv8k0ACJg&s'),
(233, 16, 'https://shop.lululemon.com/p/womens-leggings/Wunder-Under-SmoothCover-HR-Tight-25/_/prod11570139?color=0001', 'Wunder Under SmoothCover High-Rise Tight 25\" | Women\'s Leggings ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoXmopHzm3cf-PbpOxABewjlGiu9sGzqb4OMdhHHbgGf5dfeWo&s'),
(234, 16, 'https://shop.lululemon.com/p/women-sports-bras/Flow-Y-Bra-Nulu/_/prod8910081', 'Flow Y Bra Nulu *Light Support, A–C Cups | Women\'s Bras | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH5d6FOIPQMg2CHf8AR7Wflh7aWrSg7KTNsAqPeixQJv5T08A7&s'),
(235, 16, 'https://shop.lululemon.com/c/women-sports-bras/_/N-7vl', 'Women\'s Sports Bras | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStWDRu2FFHYEKishgT6Og2hBNF3bL964cb8lxaZtKPcyqOR5C9&s'),
(236, 16, 'https://shop.lululemon.com/p/womens-leggings/Align-Pant-Full-Length-28/_/prod8780551', 'lululemon Align™ High-Rise Pant 28\" | Women\'s Leggings/Tights ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUKRlwmDPyHJ10Pdg7-CJP4dfHsGpoAZqQn9VDoEVD2oP4YBA&s'),
(237, 16, 'https://shop.lululemon.com/p/women-sports-bras/Energy-Bra-Long-Line/_/prod9030660', 'lululemon Energy Longline Bra *Medium Support, B–D Cups | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwyqdX7tYQhawuLYUVWTw-rTwnwFYQ7_MJNBpZEdzBPvdtvJA&s'),
(238, 16, 'https://shop.lululemon.com/p/womens-joggers/Dance-Studio-Jogger-29-MD/_/prod9090576', 'Dance Studio Mid-Rise Jogger *Full Length | Women\'s Joggers ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnoVvvleN9lXHKpEnTv4ZsHjkFu_Htk9uKITd8ZlGv8k0ACJg&s'),
(239, 16, 'https://shop.lululemon.com/p/women-sports-bras/Flow-Y-Bra-Nulu/_/prod8910081', 'Flow Y Bra Nulu *Light Support, A–C Cups | Women\'s Bras | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz-9cKVHrt3SOG29FTdd5vd_8XjvlIQwMVPzskZr38Ux6rVawT&s'),
(240, 16, 'https://www.everlane.com/collections/womens-sweaters', 'Women\'s Sweaters & Cardigans – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT3Ro0C25fQ-hVnpfW5nafgwxzKFl3pR2nCQqwdcqnNIzgkuE&s'),
(241, 16, 'https://shop.lululemon.com/en-ca/p/womens-outerwear/Define-Jacket-Nulu/_/prod11020769', 'Define Jacket *Nulu | Women\'s Hoodies & Sweatshirts | lululemon Canada', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-iW0QnoXZi66L8F4Lx09xhZt8mtuGaqul8_z9qMag1OXJX4SG&s'),
(242, 16, 'https://www.everlane.com/products/womens-oversized-blazer-greyherringbone', 'The Oversized Blazer in Wool Grey Herringbone – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_tgG9iek4-wtOJdcUFIgItD2yv5qk9mhyPqXWZz78W6n2RbU&s'),
(243, 16, 'https://shop.lululemon.com/p/women-sports-bras/Energy-Bra-Long-Line/_/prod9030660', 'lululemon Energy Longline Bra *Medium Support, B–D Cups | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwyqdX7tYQhawuLYUVWTw-rTwnwFYQ7_MJNBpZEdzBPvdtvJA&s'),
(244, 16, 'https://shop.lululemon.com/p/womens-leggings/Align-Pant-Full-Length-28/_/prod8780551', 'lululemon Align™ High-Rise Pant 28\" | Women\'s Leggings/Tights ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUKRlwmDPyHJ10Pdg7-CJP4dfHsGpoAZqQn9VDoEVD2oP4YBA&s'),
(245, 16, 'https://shop.lululemon.com/p/women-tanks/Align-Tank/_/prod9600539', 'lululemon Align™ Tank Top *Light Support, A/B Cup | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHqeC7fwikIymMVWpZ-b5Ta688Rh4BM3vRZ5-YNYV4BgRlD70&s'),
(246, 16, 'https://shop.lululemon.com/p/women-pants/Wunder-Train-HR-Tight-25/_/prod9750562', 'Wunder Train High-Rise Tight 25\" | Women\'s Leggings/Tights | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_x-x_Y3ihY7zK234f0HInZfbUjS6WOOWxbhncsO8oqVt67WM&s'),
(247, 16, 'https://shop.lululemon.com/en-ca/p/womens-outerwear/Define-Jacket-Nulu/_/prod11020769', 'Define Jacket *Nulu | Women\'s Hoodies & Sweatshirts | lululemon Canada', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-iW0QnoXZi66L8F4Lx09xhZt8mtuGaqul8_z9qMag1OXJX4SG&s'),
(248, 16, 'https://shop.lululemon.com/p/women-sports-bras/Flow-Y-Bra-Nulu/_/prod8910081', 'Flow Y Bra Nulu *Light Support, A–C Cups | Women\'s Bras | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH5d6FOIPQMg2CHf8AR7Wflh7aWrSg7KTNsAqPeixQJv5T08A7&s'),
(249, 16, 'https://shop.lululemon.com/p/women-pants/Groove-Pant-Flare-Nulu/_/prod9820425', 'Groove Nulu Super-High-Rise Flared Pant *Regular | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGMHJr_tgHTMJTkRHRgm2vlY2-WoF67NjdZ9Y1djmPlq0mKXpk&s'),
(250, 16, 'https://shop.lululemon.com/p/women-tanks/Align-Tank/_/prod9600539', 'lululemon Align™ Tank Top *Light Support, A/B Cup | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRptwUsixP5FOA8ZuYzwIIzTXZfy24Er-H0ON8HaXNEHIPOqt6v&s'),
(251, 16, 'https://shop.lululemon.com/p/women-tanks/Swiftly-Tech-RB-2-Race/_/prod9750460', 'Swiftly Tech Racerback Tank Top 2.0 *Waist Length | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4CnbuWGDKQ8p7t-rycjiPgxug8PIRtgygRWC09wRhtV1daTE&s'),
(252, 16, 'https://www.fanatics.com/nfl/green-bay-packers/green-bay-packers-g-iii-4her-by-carl-banks-womens-first-finish-medium-denim-full-button-jacket/o-3505+t-36265787+p-1311334499172+z-9-1701341274', 'Green Bay Packers G-III 4Her by Carl Banks Women\'s First Finish ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtGAuFr8aZEkOGt-3APYg6rQ8sCUPFVD1rj9fPbvTIvj3ieNI&s'),
(253, 16, 'https://shop.lululemon.com/p/womens-joggers/Dance-Studio-Jogger-29/_/prod9080134', 'Dance Studio Mid-Rise Jogger *Full Length | Women\'s Joggers ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY8AlSQVcJfQlqjhznrT8Gw4CEyAHTcy3DcT-EhQx0AYS2RlJD&s'),
(254, 16, 'https://shop.lululemon.com/p/women-tanks/Align-Tank/_/prod9600539', 'lululemon Align™ Tank Top *Light Support, A/B Cup | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzlu6U52-iaZK5dr2hAco4JFzqj3wdB5TfgharVWfo9XqZUOA&s'),
(255, 16, 'https://shop.lululemon.com/p/women-sports-bras/Align-V-Neck-Bra-CD-Cup/_/prod11440042', 'lululemon Align™ V-Neck Bra *Light Support, C/D Cup | Women\'s Bras ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFnoncSDwmFmvooRMbMx4k8EMEE2EqprqNYV2TyAfNYmfda9Fr&s'),
(256, 16, 'https://huckberry.com/store/finisterre/category/p/58965-women-s-litus-waterproof-jacket', 'Finisterre Women\'s Litus Waterproof Jacket - Sea Spray | For Her ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA5qiXBgWB20WbGkHS2GjbHMvAPXkXaL8t8IP32z-Su1W8rmo&s'),
(257, 16, 'https://shop.lululemon.com/p/women-pants/Groove-Pant-Flare-Nulu/_/prod9820425', 'Groove Nulu Super-High-Rise Flared Pant *Regular | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZuFHu66spvQGVr1jY-3KjszHzIRR5WIVMQaIXFp4_bQPzvoSb&s'),
(258, 16, 'https://www.ae.com/us/en/x/women-ae-sizes', 'Extended Sizes On Clothing for Women | American Eagle', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNcOqX4NRdn_jVuhCI3tXaK4wPf2ePo1vFlIWnKpqV4T8z_UI&s'),
(259, 16, 'https://shop.lululemon.com/p/women-sports-bras/Free-To-Be-Bra-Wild/_/prod2810229', 'Free to Be Bra - Wild *Light Support, A/B Cup | Women\'s Bras ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1lwVhH9RxkoX4p02z-kYx2rH_aXZLdrClBC8kzy7b_rAZ9ww&s'),
(260, 16, 'https://www.ae.com/us/en/x/women-ae-sizes', 'Extended Sizes On Clothing for Women | American Eagle', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNcOqX4NRdn_jVuhCI3tXaK4wPf2ePo1vFlIWnKpqV4T8z_UI&s'),
(261, 16, 'https://shop.lululemon.com/p/women-pants/Groove-Pant-Flare-Nulu/_/prod9820425', 'Groove Nulu Super-High-Rise Flared Pant *Regular | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZuFHu66spvQGVr1jY-3KjszHzIRR5WIVMQaIXFp4_bQPzvoSb&s'),
(262, 16, 'https://huckberry.com/store/shop/flint-and-tinder-all-american-jeans', 'Flint and Tinder: All-American Jeans Shop | Huckberry', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRjO95WiFhAbH7TnrSzbhKHBfQ8gmHfgfL5E9CAq8-cgrmRx-a&s'),
(263, 16, 'https://huckberry.com/store/flint-and-tinder/category/p/55138-type-3-sherpa-lined-trucker-jacket', 'Flint and Tinder Type 3 Sherpa-Lined Trucker Jacket - Denim ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYeL6sQH7SoVgnmM2pNMXVJd_1-dDma6u9JP9TMDlmWiuyib8&s'),
(264, 16, 'https://huckberry.com/store/flint-and-tinder/category/p/86131-classic-oxford-shirt', 'Flint and Tinder Classic Oxford - Washed Black | Long Sleeve ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvwO1EwmZ_GtEzZ1-l_OKlcvdOvi6tPXLTGMOUiqPCLR_dybU&s'),
(265, 16, 'https://huckberry.com/store/shop/flint-and-tinder-all-american-jeans', 'Flint and Tinder: All-American Jeans Shop | Huckberry', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRjO95WiFhAbH7TnrSzbhKHBfQ8gmHfgfL5E9CAq8-cgrmRx-a&s'),
(266, 16, 'https://www.ae.com/us/en/c/women/tops/hoodies-sweatshirts/cat90048', 'Women\'s Hoodies & Sweatshirts | American Eagle', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaD93NHJ0YCAsmUybX8UuL8a08ZfD17TIs-_f94XsB6zV8LFBS&s'),
(267, 16, 'https://www.fanatics.com/mlb/boston-red-sox/boston-red-sox-soft-as-a-grape-womens-plus-size-v-neck-jersey-t-shirt-navy/o-1209+t-36996342+p-4967658489+z-8-1322187387', 'Boston Red Sox Soft as a Grape Women\'s Plus Size V-Neck Jersey T ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJn16QymBOgtV72187zKJy1TBYZq_8CNZBu9lk7d58MAFtQhXT&s'),
(268, 16, 'https://www.fanatics.com/mlb/boston-red-sox/boston-red-sox-soft-as-a-grape-womens-plus-size-v-neck-jersey-t-shirt-navy/o-1209+t-36996342+p-4967658489+z-8-1322187387', 'Boston Red Sox Soft as a Grape Women\'s Plus Size V-Neck Jersey T ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6zbXeYOr3Gf6ujiymzaWW-p0HwhyxkSc1ux1r354AByVyUKs&s'),
(269, 16, 'https://www.fanatics.com/college/american-university-eagles/american-university-eagles-under-armour-womens-performance-t-shirt-navy/o-38+t-21135332+p-488378541669+z-9-31279454', 'American University Eagles Under Armour Women\'s Performance T ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqdwIbTdi4qBToMxKcuoKR5zRrERQuaVs4jf7LTWqIVrsRpVnB&s'),
(270, 16, 'https://www.zappos.com/p/mens-thorogood-american-heritage-8-waterproof-insulated/product/9935288', 'Men\'s Thorogood American Heritage 8\" Waterproof Insulated | Zappos.com', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzDWtXPuhnxWk4IgjzEDyzDVWWSJAjoXXoUS4FHUFPxCO0J59D&s'),
(271, 16, 'https://www.hottopic.com/product/american-horror-story-freak-show-poster-boyfriend-fit-girls-t-shirt/20748615.html', 'American Horror Story: Freak Show Poster Boyfriend Fit Girls T ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlcxVHEYtfWMRTiL2NK29_cUNWV8dMlbNQzyOuAKHx1TE68G0&s'),
(272, 16, 'https://huckberry.com/store/flint-and-tinder/category/p/88403-american-heavyweight-pocket-t-shirt', 'Flint and Tinder American Heavyweight Pocket T-Shirt - Burnt ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxhyLD_9UABu9af-7DSt1fK_CD7W9ehCGTpGM_YuMqiS0QdYgi&s'),
(273, 16, 'https://huckberry.com/store/flint-and-tinder/category/p/86186-american-heavyweight-pocket-t-shirt', 'Flint and Tinder American Heavyweight Pocket T-Shirt - Navy | T ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGRpHO5eJggnb_4M2s4CFFkcJsbW0psRE4VJki0qmg3CjE8ZIc&s'),
(274, 16, 'https://huckberry.com/store/flint-and-tinder/category/p/86186-american-heavyweight-pocket-t-shirt', 'Flint and Tinder American Heavyweight Pocket T-Shirt - Navy | T ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1qz6TL3v8MUVlHvGTZ_ju_SqXU0WDhqQx2ntFfCMDC5FVbYk&s'),
(275, 16, 'https://huckberry.com/store/gitman-vintage/category/p/77957-classic-oxford-shirt', 'Gitman Vintage Classic American Vintage Slim Oxford Shirt - Blue ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgeCOj6eMW1vcpZ1cmTd40O2JA9iL0ToWdpbLzgTydIu25Y-tU&s'),
(276, 16, 'https://huckberry.com/store/flint-and-tinder/category/p/86184-american-heavyweight-pocket-t-shirt', 'Flint and Tinder American Heavyweight Pocket T-Shirt - Army Green ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-L5TTXZ-972hTSbXDGpKp_r7ktFI0stRuisZP1-AZzcL_9os&s'),
(277, 16, 'https://huckberry.com/store/flint-and-tinder/category/p/86186-american-heavyweight-pocket-t-shirt', 'Flint and Tinder American Heavyweight Pocket T-Shirt - Navy | T ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx9XCutsbaJiNGt5rpFq1PgjDvj5fH8ef_ML1_TjF-e_jqXZNi&s'),
(278, 16, 'https://www.ae.com/us/en/c/men/tops/hoodies-sweatshirts/cat90020', 'Men\'s Sweatshirts & Hoodies | American Eagle', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyeRdw9VctibJFi_v3aYfrF-90tQypf8SPGHlJLIwG-JtuLgNG&s'),
(279, 16, 'https://huckberry.com/store/taylor-stitch/category/p/87415-the-jack-everyday-slim-oxford-shirt', 'Taylor Stitch The Jack Everyday Slim Oxford Shirt - Sunburn Stripe ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrtbTQSmqrdwQSd7YB9BDbCN8uc9uUA6LhyhAoYE6nuRnW6_w&s'),
(280, 16, 'https://www.ae.com/us/en/c/women/tops/hoodies-sweatshirts/cat90048', 'Women\'s Hoodies & Sweatshirts | American Eagle', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaD93NHJ0YCAsmUybX8UuL8a08ZfD17TIs-_f94XsB6zV8LFBS&s'),
(281, 16, 'https://www.hottopic.com/product/american-horror-story-the-lovers-boyfriend-fit-girls-t-shirt/20739764.html', 'American Horror Story The Lovers Boyfriend Fit Girls T-Shirt | Hot ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmHTZeHdEMBtWt4TinwdhAv_eIm3ueUakUVc46fZmljhgnKCMi&s'),
(282, 16, 'https://www.hottopic.com/product/peanuts-cowboy-snoopy-boyfriend-fit-girls-t-shirt/31220994.html', 'Peanuts Cowboy Snoopy Boyfriend Fit Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbtj56BuPlC-TjwBA8bl3j_mVBL9UVRejibPsV57KAUboNuQl2&s'),
(283, 16, 'https://www.everlane.com/products/womens-weekend-tank-bra-black', 'The Cotton Tank Bra Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWBjbuTkMLFxhc9OoEMXqvMgPBtTSst_3_esHDnlFdaXpPbIOJ&s'),
(284, 16, 'https://www.everlane.com/products/mens-organic-short-sleeve-oxford-shirt-white', 'The Organic Short Sleeve Oxford Shirt White – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjy-srvu-ODwDnms8QCO3zp_rfguaFrfYUldm8pj5Q36ZpBKg8&s'),
(285, 16, 'https://www.hottopic.com/product/pokemon-mew-espeon-tie-dye-boyfriend-fit-girls-t-shirt/31612902.html', 'Pokemon Mew & Espeon Tie-Dye Boyfriend Fit Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZjB7irZj1ksDuLbmxt3sHqm3VboCSKqrbgIPP0M4-fL9ge5g&s'),
(286, 16, 'https://www.everlane.com/products/womens-weekend-tank-bra-black', 'The Cotton Tank Bra Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWBjbuTkMLFxhc9OoEMXqvMgPBtTSst_3_esHDnlFdaXpPbIOJ&s'),
(287, 16, 'https://www.everlane.com/products/mens-linen-ss-shirt-trench-coat-khaki', 'The Classic Short-Sleeve Shirt in Linen Trench Coat Khaki – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQihfPwRVhA4vyaxtaLYZ4xFBJu5MSATpGCwDTroyIaZp7NyTPd&s'),
(288, 16, 'https://shop.lululemon.com/p/mens-trousers/Poplin-Relaxed-Fit-Pant-MD/_/prod11750267', 'Poplin Relaxed-Fit Pant | Men\'s Joggers | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHAVLUBKqEfNb0NcaIpr6yNXhelkxQyqCmkC78L7EFGJ4AxyrM&s'),
(289, 16, 'https://shop.lululemon.com/p/mens-polos/New-Venture-Short-Sleeve-Knit-Polo-Shirt/_/prod11750494', 'New Venture Short-Sleeve Knit Polo Shirt | Men\'s Polo Shirts ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgPrj1SL94DMOgwyvRbnPxS7O2uHPiZ4OzR3KV8WEP_0ADTIg&s'),
(290, 16, 'https://www.nordstrom.com/s/krystia-slingback-pointed-toe-kitten-heel-pump-women/7845040', 'Jewel Badgley Mischka Krystia Slingback Pointed Toe Kitten Heel ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_64uQs9FZFPM5KbJuDYhU7QtOXPjDLukZ8_U9Ge71SqT7faDI&s'),
(291, 16, 'https://www.nordstrom.com/s/franco-sarto-giselle-knee-high-boot-women/7460805', 'Franco Sarto Giselle Knee High Boot (Women) | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_FGVvW9JRtmFjrrIQxy3TlMcH1JOor0pKQ3qL-FDIMZ_CcIw&s'),
(292, 16, 'https://huckberry.com/store/marine-layer/category/p/86461-classic-stretch-selvage-long-sleeve-shirt', 'Marine Layer Classic Stretch Selvage Long Sleeve Shirt - Shadow ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm1pyi5TwR3LK6eRkFeuTPtr_Co8p90n8TSBOhJ_dQiwMchJM&s'),
(293, 16, 'https://huckberry.com/store/seager-co/category/p/85826-ranch-jacket', 'Seager Co. Ranch Jacket - Natural Canvas | Trucker Jackets | Huckberry', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZrRATJWyXAqQ51W1Ln2gLWuVuP8bl7Mh1Mg5OT0keTsanz7w&s'),
(294, 16, 'https://huckberry.com/store/marine-layer/category/p/78714-solid-selvage-shirt', 'Marine Layer Classic Stretch Selvage Long Sleeve Shirt - Vetiver ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC_zm4Izh_Qzp4XkyK6XLl318q_EQcEhMUC_GnuAk8o1zZKnQ&s'),
(295, 16, 'https://www.nordstrom.com/s/chinese-laundry-davinna-bootie-women/5312641', 'Chinese Laundry Davinna Bootie (Women) | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT09mZRqyXZ4Pdw0yzc5su4kBdmLH0iTcS1Ij-Lwr_lT0wkJ8Bz&s'),
(296, 16, 'https://www.fashionnova.com/products/nova-men-boxer-brief-3-pack-heather-combo', 'NovaMen Boxer Brief 3 Pack - Heather/Combo | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGea2XW4ATA5qRhChC3IIK-gLzkB07Hb3iP7KX_pb3iZkYaLY&s'),
(297, 16, 'https://www.fashionnova.com/collections/mens-graphics', 'Men\'s Graphic Shirts - Tees & Hoodies | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNU2RPSauZF0B7-JuNugIh10ZBB0m37ATOhDQydzPwJvkgSrQ&s'),
(298, 16, 'https://www.fashionnova.com/products/carmen-floral-maxi-gown-blush', 'Carmen Floral Maxi Gown - Blush | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFKrsXcqFl_kF5nRS8wQw6jK5Kau3a2Ong3hXjeRyRkhrpYoM&s'),
(299, 16, 'https://www.fashionnova.com/collections/mens-bottoms', 'Mens Bottoms - Shop All Mens Pants & Shorts | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlRdw1zQC3DgmehqfkfPM2GTymxRXXwIpYTKLy0Dh-ilj3hLg&s'),
(300, 16, 'https://www.fashionnova.com/collections/mens-graphics', 'Men\'s Graphic Shirts - Tees & Hoodies | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8vfQN79Oz_Hjon7FvrSj_oXZiRPwzzkvgCEuqjDP0wnkLg3rQ&s'),
(301, 16, 'https://www.fashionnova.com/collections/mens-graphics', 'Men\'s Graphic Shirts - Tees & Hoodies | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNU2RPSauZF0B7-JuNugIh10ZBB0m37ATOhDQydzPwJvkgSrQ&s'),
(302, 16, 'https://www.fashionnova.com/collections/mens-jeans', 'Men\'s Jeans - Stylish Jeans for Men | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS--FXrs_TUFXl2oNNySh60mOK0mE7fjD6KIUHigw1EhidJrgZs&s'),
(303, 16, 'https://www.fashionnova.com/collections/mens-graphics', 'Men\'s Graphic Shirts - Tees & Hoodies | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNU2RPSauZF0B7-JuNugIh10ZBB0m37ATOhDQydzPwJvkgSrQ&s'),
(304, 16, 'https://www.fashionnova.com/collections/mens-graphics', 'Men\'s Graphic Shirts - Tees & Hoodies | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8vfQN79Oz_Hjon7FvrSj_oXZiRPwzzkvgCEuqjDP0wnkLg3rQ&s'),
(305, 16, 'https://www.fashionnova.com/products/the-players-club-top-black', 'The Players Club Top - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi6uFpcciZtpkCvQDbXmhUCWakDjxKbt0-xX6ZThgB4yZHCnsz&s'),
(306, 16, 'https://www.fashionnova.com/products/mr-flame-3-piece-costume-red', 'Mr. Flame 3 Piece Costume - Red | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVZRD4Y0ge9Hk_sutlsD8Mq_pxFqTomCohHCMXyn6W-O6lMkhl&s'),
(307, 16, 'https://www.fashionnova.com/products/the-glass-slipper-transparent', 'The Glass Slipper - Transparent | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8GDKyCz12I3u49x5RDkNrFRRoHFzorPWg-tjbJL6yIHoDU6ZY&s'),
(308, 16, 'https://www.fashionnova.com/products/luxe-ultra-high-waist-skinny-jeans-black', 'Luxe Ultra High Waist Skinny Jeans - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSokkNw8G9yQ-yPytfgnbeEuaU91qtGraHe7WQV69HiNn88jSU&s'),
(309, 16, 'https://www.fashionnova.com/products/sweetest-heart-embellished-midi-dress-black', 'Sweetest Heart Embellished Midi Dress - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP0uhpBG3jXAjM42-Uy7V978IA1-UuI7rBuCif_joGY9yyR40&s'),
(310, 16, 'https://www.fashionnova.com/products/kinley-mini-dress-black', 'Kinley Mini Dress - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR28MEzSDqJ8IHgWvwZy1gYN38uXYkREE7aaN2GInjnO6U_JZ-H&s'),
(311, 16, 'https://www.fashionnova.com/products/runaway-ripped-mid-rise-stretch-denim-shorts-black', 'Runaway Ripped Mid Rise Stretch Denim Shorts - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9shkoWeFLDmG-YKtWBdrXapYmueHiib3pC_zKEYW_YAjjBU8&s'),
(312, 16, 'https://www.fashionnova.com/products/still-in-love-mini-dress-set-pink', 'Still In Love Mini Dress Set - Pink | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt8HvgBTuO-HntnNpUUhzpnzukPeE80_uEWQNKioQoFFveqAjJ&s'),
(313, 16, 'https://www.fashionnova.com/collections/mens-graphics', 'Men\'s Graphic Shirts - Tees & Hoodies | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNU2RPSauZF0B7-JuNugIh10ZBB0m37ATOhDQydzPwJvkgSrQ&s'),
(314, 16, 'https://www.fashionnova.com/products/elodie-floral-embroidered-gown-pink-combo', 'Elodie Floral Embroidered Gown - Pink/combo | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS7iRpRJ4D-ljKEcPiWAZXumdIqmXNdYK1EnbYojDWo_EqToY&s'),
(315, 16, 'https://www.fashionnova.com/products/see-you-looking-mesh-pants-black', 'See You Looking Mesh Pants - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3Sbe9etyznhSj231hnPy9j64YWPXFT9XNGnldUnXVJFdJx9Y&s'),
(316, 16, 'https://www.fashionnova.com/products/exclusive-tulle-mini-dress-white', 'Exclusive Tulle Mini Dress - White | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPIN5y5o3c1kFlSk5QzX-2edtWNumd-hnr6cdXIxE8YwzX-sGJ&s'),
(317, 16, 'https://www.fashionnova.com/products/staying-loyal-blouse-white', 'Staying Loyal Blouse - White | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsM8fSqRf55Q3ghqMoYfGq3mLmuVGJABxC6ToRFxEi9Bcx8oc2&s'),
(318, 16, 'https://www.fashionnova.com/products/still-in-love-mini-dress-set-pink', 'Still In Love Mini Dress Set - Pink | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt8HvgBTuO-HntnNpUUhzpnzukPeE80_uEWQNKioQoFFveqAjJ&s'),
(319, 16, 'https://www.fashionnova.com/products/needing-something-jeans-medium', 'Needing Something Jeans - Medium | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ09mqWiXrWLzvvRaYIzVIx6rW32tnEoWtlIvR_rr1RXQrDo4E&s'),
(320, 16, 'https://www.fashionnova.com/products/walk-behind-me-maxi-dress-wine', 'Walk Behind Me Maxi Dress - Wine | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQxTZPWbBykipwxysg0lsztFXGJPPFeNtijxU6Z9g6J0zHhgg&s'),
(321, 16, 'https://www.fashionnova.com/products/go-get-it-pant-set-olive-combo', 'Go Get It Short Set - Olive/combo | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH278IOnUi4ctWV_s2rbc3PJ7jfeiUvPBV6wtNGB4PhCjcj_E&s'),
(322, 16, 'https://www.fashionnova.com/products/wild-soul-sequin-maxi-dress-pink', 'Wild Soul Sequin Maxi Dress - Pink | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRkkwn15mFTm92O-B5oJ722yIqP3bX5_JTh3hG7OkYK61hCfDb&s'),
(323, 16, 'https://www.fashionnova.com/products/kennie-tinted-baggy-jeans-green', 'Kennie Tinted Baggy Jeans - Green | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlNc4Noa0_HXKhrkp2WMDPxE3MsvvtK1GLOUYh8y7Qg32sbSyA&s'),
(324, 16, 'https://www.fashionnova.com/products/origami-taffeta-gown-fuchsia', 'Origami Taffeta Gown - Fuchsia | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDRronKmrKi0KJq_MY8UidHdobmHECbUtEw5aw_B_ii6qDlFrA&s'),
(325, 16, 'https://www.fashionnova.com/products/walk-behind-me-printed-maxi-dress-pink', 'Walk Behind Me Maxi Dress - Pink | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRca0WCSviSvS9lBIDtCaykyj0FdWLxnQJrIUJl61Mp-vCgOx0&s'),
(326, 16, 'https://www.fashionnova.com/products/the-edwards-sequin-gown-black', 'The Edwards Sequin Gown - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWC28Rpy80yMDDJPQ4IaTM-yjHxHafEsx0Q8ZnTTHHD8aCQ5Vp&s'),
(327, 16, 'https://www.promgirl.com/products/lafemme-lf-32062-dress', 'Strappy-Back Long A-Line Prom Dress with Pockets', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUdtdoXwds9uqRodG4yTTxTmr0QN-D-iYzlO0WjER1pBYCiUMS&s'),
(328, 16, 'https://www.fashionnova.com/products/samantha-embellished-satin-gown-black', 'Samantha Embellished Satin Gown - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp-J_tRzlQ2k4qyjzCV3G-jjWQ94EJAjmsCSj1yKXdS-frCe5K&s'),
(329, 16, 'https://www.fashionnova.com/products/patricia-embellished-feather-gown-black', 'Patricia Embellished Feather Gown - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeKAiFWxJ87gjEYNfTkvwlHq-0PknkNB1U1kzo7qclfnrOWAj4&s'),
(330, 16, 'https://www.fashionnova.com/products/night-star-embellished-maxi-dress-black', 'Night Star Embellished Maxi Dress - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo2ODVme7E86a_4sdOqgBf-V6S2ib31zv2wlLJNPkFQ0AML3o&s'),
(331, 16, 'https://shop.lululemon.com/p/mens-polos/New-Venture-Short-Sleeve-Knit-Polo-Shirt/_/prod11750494', 'New Venture Short-Sleeve Knit Polo Shirt | Men\'s Polo Shirts ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgPrj1SL94DMOgwyvRbnPxS7O2uHPiZ4OzR3KV8WEP_0ADTIg&s'),
(332, 16, 'https://www.everlane.com/products/womens-oversized-blazer-greyherringbone', 'The Oversized Blazer in Wool Grey Herringbone – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQDu3crRZP2f4SWEzfaR176tTSTun-rH7yE2Gp6tE5266FSk0&s'),
(333, 16, 'https://www.fashionnova.com/products/the-celine-blazer-mustard', 'The Celine Blazer - Mustard | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqGyexB62WtKpo8JlVWIzGgT5H_J75MD1P58QZJGiZIsGkyPA&s'),
(334, 16, 'https://www.fashionnova.com/products/athena-blazer-pink', 'Athena Blazer - Pink | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUGyoIdwpyqnt7PWvzw-wsS8Zq4Z_wkROWfu5ETQuCurRtvfxE&s'),
(335, 16, 'https://www.everlane.com/products/womens-cloud-oversized-turtleneck-tigers-eye', 'The Cloud Oversized Turtleneck Tiger\'s Eye – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_kYmNIx0vBoi68CguFdCso_HjovdlaqSIfomZU3JsRKfgX1Oc&s');
INSERT INTO `viewed` (`ViewedID`, `UserID`, `itemUrl`, `itemTitle`, `itemSrc`) VALUES
(336, 16, 'https://shop.lululemon.com/p/mens-trousers/ABC-Pull-On-Pant-27/_/prod11250141', 'ABC Warpstreme Pull-On Pant *Regular | Men\'s Trousers | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRgC-2EUg2uSfoHl2B2KS4ZnjDbAaCQOFu43OZpqmJGNwXlxc&s'),
(337, 16, 'https://www.fashionnova.com/products/alexa-mini-blazer-dress-black', 'Alexa Mini Blazer Dress - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQqG6lXcFdfz6tQOzBTVO2rTd5j3ImDPutqyoSUei2N9dI8mPs&s'),
(338, 16, 'https://www.fashionnova.com/blogs/lookbooks/cardi-b-collection', 'Hydrogen | CARDI B COLLECTION article', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfN8EaiYzrlS0RBJb-2bbTjc-Y3aBLYTzj_SZ-TTGahvgEE5c&s'),
(339, 16, 'https://www.fashionnova.com/products/showing-what-i-got-sequin-mini-dress-black', 'Showing What I Got Sequin Mini Dress - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQUutj06sAwOi1m56E7VMENf5at-UZ6n3be_4jNzPIZFjTYoLo&s'),
(340, 16, 'https://www.everlane.com/products/womens-poplin-slip-dress-kalamata', 'The Poplin Slip Dress Kalamata – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQCUvM0CNxCNrNjpZztXfWxSTo2f_z0XqN_pCJVIeUUhFOpd5U&s'),
(341, 16, 'https://www.promgirl.com/products/primavera-pv-4019-dress', 'Backless Short Party Dress with Fringe - PromGirl', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZI1fIuMRZ3dgR4YewYf8cJtp5OZv0jM0zX_tJ--Hc2ttQRirJ&s'),
(342, 16, 'https://www.promgirl.com/products/atria-at-6545s-dress', 'Deep V-Neck Atria Short Tight Party Dress - PromGirl', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScsB5-hvbUyMuFWTc0I7foVbrpQEUVEiW2P8VQtqU92ZkqvctV&s'),
(343, 16, 'https://www.everlane.com/products/womens-twill-wide-leg-pant-tapenade', 'The Organic Wide-Leg Pant Tapenade – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8aEC0ukiUT051TnlPb2udd6lHUGf61Mk-SrzX0UPa5p134_Y&s'),
(344, 16, 'https://shop.lululemon.com/p/mens-trousers/Abc-Slim-5-Pocket-32/_/prod9390007', 'ABC Slim-Fit 5 Pocket Pant 32\"L *Warpstreme | Men\'s Trousers ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX18AWzOL_0DGfLTmCMN_bzMzrHU6xiR4cJQK-J74OJ9fbQfji&s'),
(345, 16, 'https://www.hottopic.com/product/marvel-deadpool-comic-guys-pajama-pants/11452462.html', 'Marvel Deadpool Comic Guys Pajama Pants | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtzaLAJ3e-61Sm7v2teL3hYL7HlKkXIpDwp3AsvxBuHs--QkJt&s'),
(346, 16, 'https://www.ae.com/us/en/c/men/tops/hoodies-sweatshirts/1yn0ldsZk8jo9m-filtered', 'American Eagle Outfitters', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmqP6cxZjbeB80JLT8LpAeytgi11-HWnv_YOm-uDe23ZG7TCs&s'),
(347, 16, 'https://www.everlane.com/products/womens-tencel-oversized-blazer-ash-brown', 'The Oversized Blazer in Buttersmooth Ash Brown – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7oU4pRg_AIsndixUw2-IlJkIuRczC-capLALSBME11Rn3lSw&s'),
(348, 16, 'https://www.eloquii.com/products/eloquii-elements-side-tie-shirt-dress/1084619.html', 'Side Tie Shirt Dress - ELOQUII Elements, Copper Tan | Eloquii', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2sVoGum9Phm9aiZbiX9yehZoqelvua5ux_V6nOZzNfZkojT0&s'),
(349, 16, 'https://www.eloquii.com/products/barkwood-x-eloquii-faux-suede-trench/1086358.html', 'Faux Suede Trench - Tailored Fit Coat, Collegiate Blue | Eloquii', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQebBap_KRKmKjAU9q81CgTvToVbnhPgM2d_UrFnhX8JlCrclV0&s'),
(350, 16, 'https://www.eloquii.com/products/off-the-shoulder-velvet-and-sequin-dress/1085695.html', 'Velvet & Sequin Off the Shoulder Midi Dress, Black Onyx | Eloquii', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_espLgE6-cKOq_QMZgi6-5Z2kQxu1Gy8XQOYfttsahMvVqWqu&s'),
(351, 16, 'https://www.eloquii.com/products/bridal-by-eloquii-halter-glitter-gown/1085552.html', 'Halter Glitter Gown with Fitted Bodice, Off White | Eloquii', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIGQk8CZ9ri034GQpdjdomIcYg2P5hJU7ylQh7DukcBE0SWhE&s'),
(352, 16, 'https://www.eloquii.com/products/sheer-panel-fitted-dress/1084719.html', 'Sheer Panel Fitted Mock Neck Dress, Black Onyx | Eloquii', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFjB2kAnr43MaRcGRjCXesqOu4gF5EUkCI8e56_GhVQjNgpB0&s'),
(353, 16, 'https://www.eloquii.com/products/asymmetrical-faux-leather-column-skirt/1086260.html', 'Asymmetrical Faux Leather Midi Skirt, Mosstone | Eloquii', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-0cXuxoDwP3wt58iy1CEvEzgBpioyNCYG6BUauLu7LqX1uEo&s'),
(354, 16, 'https://www.eloquii.com/products/the-365-suit-patch-pocket-blazer/1086368.html', 'Tailored 365 Suit Blazer for Effortless Elegance, Chicory Coffee ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5CNEFr1tR18pVIpAoFDY27DvoSVYMbEc4KT_i43I2WCHsZUaQ&s'),
(355, 16, 'https://shop.lululemon.com/p/mens-polos/New-Venture-Short-Sleeve-Knit-Polo-Shirt/_/prod11750494', 'New Venture Short-Sleeve Knit Polo Shirt | Men\'s Polo Shirts ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgPrj1SL94DMOgwyvRbnPxS7O2uHPiZ4OzR3KV8WEP_0ADTIg&s'),
(356, 16, 'https://www.everlane.com/products/womens-oversized-blazer-greyherringbone', 'The Oversized Blazer in Wool Grey Herringbone – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQDu3crRZP2f4SWEzfaR176tTSTun-rH7yE2Gp6tE5266FSk0&s'),
(357, 16, 'https://www.everlane.com/products/womens-dream-blazer-navy', 'The Dream Blazer Navy – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTErpOg1W8dTSXI_5KyvAZBR3FRgIXjSCK_hBxkjtcOXXuRpGs&s'),
(358, 16, 'https://shop.lululemon.com/p/men-pants/ABC-Pant-Classic-32/_/prod9000003', 'ABC Classic-Fit 5 Pocket Pant 32\"L *Warpstreme | Men\'s Trousers ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyt-efbxDH-JMY_DwqieN64FCRfSw1mWp3592hheTJ-1Z__TU&s'),
(359, 16, 'https://www.eloquii.com/products/sequin-pencil-skirt/1086251.html', 'Sequin Pull-On Pencil Skirt for Women, Aventurine | Eloquii', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdaUaPtG96q8aBAou7HjM0QFg52RpSjTs8UjuwgOexUPCqzw0F&s'),
(360, 16, 'https://www.everlane.com/products/womens-wool-oversized-blazer-gray-houndstooth', 'The Oversized Blazer in Wool Gray Houndstooth – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT16sRYIRAkplNsAxDSXA4mfpzfAEb86LDeDoCHsxzy1hRYh_I&s'),
(361, 16, 'https://www.fashionnova.com/products/the-celine-blazer-mustard', 'The Celine Blazer - Mustard | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqGyexB62WtKpo8JlVWIzGgT5H_J75MD1P58QZJGiZIsGkyPA&s'),
(362, 16, 'https://www.everlane.com/products/womens-cotton-merino-cable-turtleneck-sage-green', 'The Cotton Merino Cable Turtleneck Sage Green – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjoEB-aelvmhQgqO2NRhXMR_lPKW8dQ0s_tMF7uw74GcCN9pta&s'),
(363, 16, 'https://www.eloquii.com/products/neoprene-pencil-skirt/1086250.html', 'Neoprene Pencil Skirt with Elastic Waistband, Hand Painted Plaid ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0AREgECrwdwG7A98KdGtESOKMzBorjWhVj3vYyellF4ydLw&s'),
(364, 16, 'https://www.fashionnova.com/products/nina-embellished-blazer-white', 'Nina Embellished Blazer - White | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQltiTZpfrHkwcS0JI-tmuANIjqlbJI9lzdWEDEHAyLzfd5eP25&s'),
(365, 16, 'https://www.fashionnova.com/products/cordelia-embellished-blazer-black', 'Cordelia Embellished Blazer - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv2SipERx6HUtlEU4midDDNrmyrh0XPidYO_EHMFjU29G26UZ8&s'),
(366, 16, 'https://www.everlane.com/products/womens-cloud-oversized-turtleneck-tigers-eye', 'The Cloud Oversized Turtleneck Tiger\'s Eye – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_kYmNIx0vBoi68CguFdCso_HjovdlaqSIfomZU3JsRKfgX1Oc&s'),
(367, 16, 'https://www.fashionnova.com/products/morning-meeting-blazer-set-black', 'Morning Meeting Blazer Set - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6MkR9mJ4cLPJf_ukKuOWzVRZNnxSShwX3vD5fQYsXTWWs43M&s'),
(368, 16, 'https://www.eloquii.com/products/nipped-waist-blazer/1086380.html', 'Nipped Waist Blazer - Single Breasted, Shawl Collar, Black Onyx ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs2EGe9sTY9tuNjEPKeO4COruSof5JHSgQs6TPfyIknZlZhic&s'),
(369, 16, 'https://www.levi.com/US/en_US/clothing/women/jeans/loose/baggy-dad-womens-jeans/p/A34940013', 'Baggy Dad Women\'s Jeans - Medium Wash | Levi\'s® US', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ93UIFjpmUocomb-SEOH2txhDYOcsO_HNlzfZR4q_P87NXF_A&s'),
(370, 16, 'https://www.levi.com/US/en_US/clothing/men/jeans/slim/511-slim-fit-mens-jeans/p/045115242', '511™ Slim Fit Men\'s Jeans - Medium Wash | Levi\'s® US', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtTBHxrOYXmhI7cFaZGqFrSw9eRZFHsR9Jmppd1V4Lmgtm7pQ&s'),
(371, 16, 'https://huckberry.com/store/levi-s-commuter/category/p/40727-541-athletic-fit-jean', 'Levi\'s Commuter™ 541 Athletic Fit Jean - Indigo | undefined ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQogbFq2UoH7d9Dcx-PotDQKCXVQ0_jUvWO06DhzArR_EVMnzPr&s'),
(372, 16, 'https://huckberry.com/store/hiroshi-kato/category/p/86316-the-pen-slim-10-5oz-4-way-stretch-selvedge-denim-jeans', 'Hiroshi Kato The Pen Slim Stretch Selvedge Denim Jeans - Black Raw ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfcRJLNchjKJNhSAekBPmpLEnQQ9nzz2G4XC8_S68S8w-iJeQ&s'),
(373, 16, 'https://huckberry.com/store/rrl/category/p/81075-selvedge-slim-fit-denim-jean', 'RRL Selvedge Slim Fit Denim Jean - Bristow Wash | Jeans | Huckberry', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvUojgjFNTrqrrfP-vKmu9kKOGAhTR4CdQu57hZ-lFVJpwNWc&s'),
(374, 16, 'https://www.eloquii.com/products/wide-leg-distressed-jeans/1086194.html', 'Wide Leg Distressed Jeans - Relaxed Fit, Light Wash | Eloquii', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREMCfhdPGcaV2AtfxhlO7FhU8-7STK2maZoBLVZhqpK-lXPi_M&s'),
(375, 16, 'https://www.everlane.com/products/womens-way-high-jean-abyss-blue', 'The Way-High® Jean Abyss – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBlAE5LQW6Xy_AkJL9IKmoFI8OKlLcaZn_fTRod6CYYYtEZpFh&s'),
(376, 16, 'https://www.levi.com/US/en_US/clothing/men/jeans/slim/511-slim-fit-mens-jeans/p/045115546', '511™ Slim Fit Men\'s Jeans - Dark Wash | Levi\'s® US', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCInvXVvniyq_PDtCpWnK-S2UYzVsbvTCXe71gcmA0FNM3LKhV&s'),
(377, 16, 'https://www.everlane.com/products/womens-utility-barrel-jean-new-blue', 'The Utility Barrel Pant New Blue – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfE9OZ-2gZT9RFGqOSIL-4j9Ofmn218-Ct6WHdaJGNn-SLD6kn&s'),
(378, 16, 'https://huckberry.com/store/hiroshi-kato/category/p/86316-the-pen-slim-10-5oz-4-way-stretch-selvedge-denim-jeans', 'Hiroshi Kato The Pen Slim Stretch Selvedge Denim Jeans - Black Raw ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxRABUvTCjKXOQCEPV7fhGmq5RBijCRaX8YVL9M0N7o4k0_MQ&s'),
(379, 16, 'https://www.fashionnova.com/products/be-square-stacked-skinny-flare-jeans-light-blue', 'Be Square Stacked Skinny Flare Jeans - Light Blue | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl_AoE2WD6XYuiWee2wvZmNlKv8g3iEr-du7LS1sU04omKZB0&s'),
(380, 16, 'https://huckberry.com/store/hiroshi-kato/category/p/87296-the-hammer-10-5-oz-stretch-selvedge-denim-jeans', 'Hiroshi Kato The Hammer Straight Stretch Selvedge Denim Jeans ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaOPrDO4p2KQrGOcxpiOP-Q20cjg24J_I6jv8Jmtd6Kt2PZyS1&s'),
(381, 16, 'https://huckberry.com/store/flint-and-tinder/category/p/55175-rinse-jeans-straight', 'Flint and Tinder Rinse Jeans - Straight - Rinse | undefined ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLjBv4m9BNd6E5VRjcWdsX8DWezjj2QHD7P6kBFQVPnn9oIqf6&s'),
(382, 16, 'https://www.fashionnova.com/collections/jeans', 'Women\'s Jeans | Women\'s Sexy Jeans | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTynf71i0WWbe_IuYgdfW0cRvNyZckHtqTaYv5oKSASl_7eXfo&s'),
(383, 16, 'https://huckberry.com/store/rrl/category/p/78956-slim-fit-ridgecrest-selvedge-jean', 'RRL Slim Fit Selvedge Denim Jeans - Ridgecrest Wash | Jeans ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0PAPRgimuuogxd03dY1S6JFRIaXAqUY6qSVG7xTMlWH2Tp9E9&s'),
(384, 16, 'https://www.fashionnova.com/collections/jeans', 'Women\'s Jeans | Women\'s Sexy Jeans | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTynf71i0WWbe_IuYgdfW0cRvNyZckHtqTaYv5oKSASl_7eXfo&s'),
(385, 16, 'https://www.levi.com/US/en_US/clothing/women/jeans/straight/501-original-cropped-womens-jeans/p/362000225', '501® Original Cropped Women\'s Jeans - Medium Wash | Levi\'s® US', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFkuGQkItDNf6xuLh42m1uogH14CbYPKEVU09rJdArjytz-jI&s'),
(386, 16, 'https://www.fashionnova.com/products/amara-active-top-plum', 'Amara Active Top - Plum | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9XUyN8qIykfWp8GLjmQuy324PqrJ9-zBlWYL2hsOuIzj4A-4&s'),
(387, 16, 'https://www.hottopic.com/product/studio-ghibli-spirited-away-train-scene-tie-dye-boyfriend-fit-girls-t-shirt/31715104.html', 'Studio Ghibli Spirited Away Train Scene Tie-Dye Boyfriend Fit ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxuQk_rcbBA7T46idznSohGtGay0ffBaIDH6YsCWnw9REdHj2M&s'),
(388, 16, 'https://www.fashionnova.com/products/la-short-sleeve-tee-purple', 'LA Short Sleeve Tee - Purple | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzTBpprl76JOqIt1rUjKRhCuQr8kHZOimXmvDa_bitmX-Vtgs&s'),
(389, 16, 'https://www.levi.com/US/en_US/clothing/women/shirts-blouses-tops/graphic-ringer-rickie-t-shirt/p/A35190003', 'Graphic Ringer Rickie T-shirt - Purple | Levi\'s® US', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1bt-pMg118Rhl6gMTCXJgwmB2MoAYcFerEbzXk-kEX-yt6TY&s'),
(390, 16, 'https://www.levi.com/US/en_US/clothing/women/jeans/straight/candy-coated-ribcage-straight-ankle-womens-jeans/p/726930213', 'Candy Coated Ribcage Straight Ankle Women\'s Jeans - Purple ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNKyHevB_eagND55GD-APtNA2Od227kmJiUvf799QhDkYrLFA&s'),
(391, 16, 'https://huckberry.com/store/parker-dusseau/category/p/22435-commuter-dress-shirt', 'Parker Dusseau Commuter Dress Shirt - Charcoal | undefined | Huckberry', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3iQQhqkwmeD5pfnRkrrB0TMG_qXO839JQcoM9r4YaerRY595M&s'),
(392, 16, 'https://www.fashionnova.com/products/odette-mesh-top-purple-combo', 'Odette Mesh Top - Purple/combo | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRggMQdPnGnI5SzVTLQPdV2qzrPokTgxfAyXn2Tg2BCaQdvIzU&s'),
(393, 16, 'https://shop.lululemon.com/p/womens-outerwear/Scuba-Oversized-12-Zip-Hoodie-MD/_/prod10300103', 'Scuba Oversized Half-Zip Hoodie | Women\'s Hoodies & Sweatshirts ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9BkBGQEiHWNCjhcCrHdYkX4eDfQqf9AQL6lfjbau1rVE-eT4&s'),
(394, 16, 'https://www.levi.com/US/en_US/clothing/men/shirts/gold-tab-t-shirt/p/A37570032', 'Gold Tab™ T-shirt - Purple | Levi\'s® US', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDsQJkC1-Ht-yR0tr5JCuqnn4TD45ZivtpYDegnpAP3ACaYref&s'),
(395, 16, 'https://huckberry.com/store/3sixteen/category/p/84146-utility-flannel-shirt', '3sixteen Utility Flannel Shirt - Faded Lilac | Long Sleeve Shirts ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIN6cbLvZaUeQqhWTW7FcebsSAFB059KgdsDjflhW5IdLkEbUa&s'),
(396, 16, 'https://huckberry.com/store/parker-dusseau/category/p/22435-commuter-dress-shirt', 'Parker Dusseau Commuter Dress Shirt - Charcoal | undefined | Huckberry', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3iQQhqkwmeD5pfnRkrrB0TMG_qXO839JQcoM9r4YaerRY595M&s'),
(397, 16, 'https://huckberry.com/store/3sixteen/category/p/84146-utility-flannel-shirt', '3sixteen Utility Flannel Shirt - Faded Lilac | Long Sleeve Shirts ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr6UdHYEC-jz2uUuPu3zQZKI6bxiZr3Wzfh0b40rd2g2Uyxdd2&s'),
(398, 16, 'https://www.promgirl.com/blogs/fashion/2024-prom-dress-trends', 'What to Wear to Prom 2024: Top Prom Dress Styles', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT75IwjZqTSgtCXz1rA9sEDlDkzghdXSxPkrBfJTjdokkg85YM&s'),
(399, 16, 'https://shop.lululemon.com/p/men-ls-tops/Soft-Knit-Overshirt-French-Terry-MD/_/prod11660163', 'Soft Knit Overshirt *French Terry | Men\'s Long Sleeve Shirts ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6Vyi7YmGDO-f23ojXir2fEzf0NoSZHnQ_P06YBkT7vVas-Oc&s'),
(400, 16, 'https://www.levi.com/US/en_US/levis-x-ganni/levis-x-ganni-for-women/levis-x-ganni-western-shirt/p/A36110000', 'Levi\'s® X Ganni Western Shirt - Purple | Levi\'s® US', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI4CmEYpBAaMFBcS7jZ6zGE9XBv2bzkE0lmu2V3OisTEiix1k&s'),
(401, 16, 'https://www.levi.com/US/en_US/clothing/women/jeans/straight/501-90s-womens-colored-denim-jeans/p/A19590028', '501® \'90s Women\'s Colored Denim Jeans - Purple | Levi\'s® US', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYLT95gouVhKPeFPmsD4QhlGESsI-wF2xiLJUY8Bo-6Bc4pZ8&s'),
(402, 16, 'https://www.hottopic.com/product/lana-del-rey-violet-bent-backwards-over-the-grass-girls-t-shirt/17141207.html', 'Lana Del Rey Violet Bent Backwards Over The Grass Girls T-Shirt ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlI7u267o2CKL9zK2snT-aEe8v2sM3ue5Lcf4-a6L89ZmYCRc&s'),
(403, 16, 'https://www.hottopic.com/product/disney-pixar-elemental-lutz-girls-t-shirt/30554868.html', 'Disney Pixar Elemental Lutz Girls T-Shirt - PURPLE | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgsYlS5Y9hlW0ipcMmlLfItKdADW_RBR6gurHo13ccotP_FRV7&s'),
(404, 16, 'https://www.levi.com/US/en_US/clothing/women/shirts-blouses-tops/graphic-bardot-tank-top/p/A60380001', 'Graphic Bardot Tank Top - Purple | Levi\'s® US', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxdRTsTZv4aqlWf8WKi9qteqLltRgfwYyBWFpF9Lovpf7-yC_E&s'),
(405, 16, 'https://www.hottopic.com/product/cartoon-network-i-am-weasel-my-weasel-costume-girls-t-shirt/19929341.html', 'Cartoon Network I Am Weasel My Weasel Costume Girls T-Shirt ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAWzqpRn4ktGnVQzIFbpQxrUCg5XENiPNcg5Hn6cNzckrq9PKM&s'),
(406, 16, 'https://www.fashionnova.com/products/aria-sculpting-skinny-jeans-dark-wash', 'Aria Sculpting Skinny Jeans - Dark Wash | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVlci16sweSX-Lknu7yj2z7rcszA7fbVAeXwGwj2qVjw68rgL-&s'),
(407, 16, 'https://www.levi.com/US/en_US/clothing/men/overalls/red-tab-mens-overalls/p/791070016', 'Red Tab™ Men\'s Overalls - Medium Wash | Levi\'s® US', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVYmjFMqBTiS5azyDZqGYQi2YwEm2Qq-F9suz46OL3dH03dxF6&s'),
(408, 16, 'https://www.fashionnova.com/products/aria-sculpting-skinny-jeans-dark-wash', 'Aria Sculpting Skinny Jeans - Dark Wash | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVlci16sweSX-Lknu7yj2z7rcszA7fbVAeXwGwj2qVjw68rgL-&s'),
(409, 16, 'https://www.levi.com/US/en_US/clothing/women/outerwear/original-trucker-jacket/p/299450100', 'Original Trucker Jacket - Medium Wash | Levi\'s® US', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR18hIJMcxwb4K34gY0Q2ndKT8KFDUvD2f2L4_Zq43Kf1YTBMCw&s'),
(410, 16, 'https://www.shopcider.com/product/detail?pid=1006944&ciderListId=9&ciderListName=detail_1050414_product_together&moduleTitle=1&shopPage=1&businessTracking=eyJsaXN0VGl0bGUiOiJkZXRhaWxfMTA1MDQxNF9wcm9kdWN0X3RvZ2V0aGVyIiwibGlzdFR5cGUiOjksIm9yaWdpbmFsUHJpY2Ui', 'Woven Check Pattern Wide Leg Trousers For Daily Casual School', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_vrJD-HW8rEvUrh7qQDDEF4o8Svx0xNpqFZ6Mt0ZeIFHIZqbR&s'),
(411, 16, 'https://www.fashionnova.com/products/cider-high-rise-cargo-jogger-khaki', 'Cider Cargo Jogger - Khaki | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKGnR7JJCerUwNVj5megtQOGISRrf7x9NnBbnox1vJaqZNxhM&s'),
(412, 16, 'https://www.fashionnova.com/products/cider-high-rise-cargo-jogger-khaki', 'Cider Cargo Jogger - Khaki | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlNgtiqnNVxDip6C_5IYizm75eZpYdMESG6CVFOzPpzM1g5aU&s'),
(413, 16, 'https://www.fashionnova.com/products/cider-high-rise-cargo-jogger-khaki', 'Cider Cargo Jogger - Khaki | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Gw3Q3xAD2tBHhmrF1luHdT5v2h22wZJgfKiQXrVWX0hgFlVH&s'),
(414, 16, 'https://www.fanatics.com/nba/dallas-mavericks/dallas-mavericks-concepts-sport-womens-team-hoodie-and-pants-sleep-set-heather-blue/o-1381+t-81037381+p-83903309088+z-9-1140886636', 'Dallas Mavericks Concepts Sport Women\'s Team Hoodie & Pants ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGcuZP19NUA5JeD0Tl_SdzslGBsS0NC0dfiSK4DsovLakM8ys&s'),
(415, 16, 'https://www.everlane.com/products/womens-tencel-way-high-taper-pant-black', 'The Draper Tapered Pant in Buttersmooth Black – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLfmJHANLWtQSeu-Dehh3S7GzkAtlOm27m_qvDyGXs08rUBFSK&s'),
(416, 16, 'https://www.eloquii.com/products/wide-leg-leather-pants/1087016.html', 'High Rise Wide Leg Leather Pants, Potting Soil | Eloquii', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG7kw_281VY1LdoCA7pfayuaNbpHEr-35JhwIDz5gSEogbp5wb&s'),
(417, 16, 'https://www.fashionnova.com/products/on-the-hunt-cargo-flared-pants-camouflage', 'On The Hunt Cargo Flared Pants - Camouflage | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIYMLVZfCFP0dpermE_klqI4VQGnbPqH4Wwk4G_xuNvEYDieQ&s'),
(418, 17, 'https://shop.lululemon.com/p/shoes/Blissfeel-2-Womens-Running-Shoe-MD/_/prod11530177', 'Women\'s Blissfeel 2 Running Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqKZiX8i3O3GgabWv4U-6_1NY33QAJ9kGKyaNjZwYcXbJpDXda&s'),
(419, 11, 'https://www.everlane.com/products/womens-40-hour-flat-dusty-lilac', 'The 40-Hour Flat Dusty Lilac – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLqNuIiCa_4uJqJ9dL7zWRUi8y7eojUwgkMSaw0REefHFzddc&s'),
(420, 17, 'https://www.levi.com/US/en_US/deals/men/aviator-bomber-jacket-with-sherpa-collar/p/594910373', 'Aviator Bomber Jacket With Sherpa Collar - Brown | Levi\'s® US', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6yeDB8GEdXJ2VtqOyBn0xCMSbNCf0ojtkmZ0T3HEX25GeAp0&s'),
(421, 17, 'https://www.fashionnova.com/products/roadie-denim-bomber-jacket-black-wash', 'Roadie Denim Bomber Jacket - Black Wash | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHe7w-TANHNvCvU9av6tsRgDOwzIptloYctvRFGk3dV8CEr2A&s'),
(422, 17, 'https://www.levi.com/US/en_US/clothing/women/outerwear/90s-sherpa-trucker-jacket/p/A44350000', '90s Sherpa Trucker Jacket - Black | Levi\'s® US', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKkA_vWBHP8u4uGq2LKNsd4Lr0fM4XNMZ3JTmqKobULM7DzuE&s'),
(423, 17, 'https://www.fashionnova.com/products/your-diamond-quilted-puffer-jacket-black', 'Your Diamond Quilted Puffer Jacket - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQMmDBPDuVlZ6lIIpzoIu4Ab0SX3avYY2u3arvF0Lz2t35aTc&s'),
(424, 11, 'https://shop.lululemon.com/c/men-underwear/_/N-8rv', 'Men\'s Underwear | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3xvAirl8hluoYinm2rR-075qIIG2jdj1HlNM0aKOmjlFdph0&s'),
(425, 11, 'https://shop.lululemon.com/p/women-underwear/InvisiWear-MR-Thong-Underwear-3Pack/_/prod10520456', 'InvisiWear Mid-Rise Thong Underwear *3 Pack | Women\'s Underwear ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkPJ4swFnRAnhiXgS5Hk41DC1lcr2tg21MxJtbBjhCnrh8tzQ&s'),
(426, 11, 'https://shop.lululemon.com/p/women-underwear/UnderEase-MR-Thong-Underwear-5Pack/_/prod10520468', 'UnderEase Mid-Rise Thong Underwear *5 Pack | Women\'s Underwear ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGuH50y8Ra1LdwpXfjmncMG-NKafC9tW0Gj-vMmTnZ-ax29GY&s'),
(427, 11, 'https://www.fashionnova.com/en-mx/products/another-level-thong-3-pack-panties-nude-combo', 'Another Level Thong 3 Pack Panties - Nude/combo | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnErXbcYhLfJBKKuQjuImRg_8aupIA9mvnAu0oUUo6QAC-vsQ&s'),
(428, 11, 'https://shop.lululemon.com/p/women-underwear/Wundermost-Usoft-Nulu-High-Waist-Thong-MD/_/prod11710293', 'Wundermost Ultra-Soft Nulu High-Waist Thong Underwear | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsQIZ7fX2HIeDvCXd6jViSlrHQjRcYRrJMs0nYevlURfzlYdGt&s'),
(429, 11, 'https://www.fashionnova.com/en-mx/products/another-level-thong-3-pack-panties-nude-combo', 'Another Level Thong 3 Pack Panties - Nude/combo | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnErXbcYhLfJBKKuQjuImRg_8aupIA9mvnAu0oUUo6QAC-vsQ&s'),
(430, 11, 'https://www.everlane.com/products/womens-renew-thong-plum-grey', 'The Invisible Thong Plum Grey – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRloB8-rRKEi6FelePWTVAZPW1k7aBGdtlKS0kxj6dYxYj8YOwM&s'),
(431, 11, 'https://www.fashionnova.com/products/nova-microfiber-dipped-thong-panty-black', 'Nova Microfiber Dipped Thong Panty - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp6GTVXn4dH4pzv9q-jymn5MZ56bEfQm8poxLCa28vmMYlSKg&s'),
(432, 11, 'https://www.fashionnova.com/en-mx/products/another-level-thong-3-pack-panties-nude-combo', 'Another Level Thong 3 Pack Panties - Nude/combo | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnErXbcYhLfJBKKuQjuImRg_8aupIA9mvnAu0oUUo6QAC-vsQ&s'),
(433, 11, 'https://www.everlane.com/products/womens-stretch-rib-mockneck-tank-white', 'The Ribbed Mockneck Tank White – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvG6KjFltnDLgU1mpnOX3_ye-dUEuf-fvC2wBhOFRbSAfpbfYi&s'),
(434, 11, 'https://www.fashionnova.com/products/nova-microfiber-dipped-thong-panty-black', 'Nova Microfiber Dipped Thong Panty - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp6GTVXn4dH4pzv9q-jymn5MZ56bEfQm8poxLCa28vmMYlSKg&s'),
(435, 11, 'https://www.fashionnova.com/products/nova-microfiber-string-thong-panty-hot-pink', 'Nova Microfiber String Thong Panty - Hot Pink | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwqwaj9EXa4IDoVB9V7JOOE3EcjLeHcJQR9Z7ghg_Rk_cu0cw&s'),
(436, 11, 'https://shop.lululemon.com/p/women-underwear/InvisiWear-MR-Bikini-Underwear-5Pack/_/prod10520448', 'InvisiWear Mid-Rise Bikini Underwear *5 Pack | Women\'s Underwear ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaaigu9E7kcTaVZZ4jZSWyqUAhfWEMy-KPUDVbJUAq1_hpaYU&s'),
(437, 11, 'https://www.fashionnova.com/products/nova-microfiber-dipped-thong-panty-black', 'Nova Microfiber Dipped Thong Panty - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp6GTVXn4dH4pzv9q-jymn5MZ56bEfQm8poxLCa28vmMYlSKg&s'),
(438, 11, 'https://shop.lululemon.com/p/women-underwear/InvisiWear-MR-Bikini-Underwear-5Pack/_/prod10520448', 'InvisiWear Mid-Rise Bikini Underwear *5 Pack | Women\'s Underwear ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaaigu9E7kcTaVZZ4jZSWyqUAhfWEMy-KPUDVbJUAq1_hpaYU&s'),
(439, 11, 'https://shop.lululemon.com/p/women-underwear/Wundermost-Usoft-Nulu-High-Waist-Thong-MD/_/prod11710293', 'Wundermost Ultra-Soft Nulu High-Waist Thong Underwear | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsQIZ7fX2HIeDvCXd6jViSlrHQjRcYRrJMs0nYevlURfzlYdGt&s'),
(440, 11, 'https://www.fashionnova.com/en-mx/products/another-level-thong-3-pack-panties-nude-combo', 'Another Level Thong 3 Pack Panties - Nude/combo | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnErXbcYhLfJBKKuQjuImRg_8aupIA9mvnAu0oUUo6QAC-vsQ&s'),
(441, 11, 'https://shop.lululemon.com/en-ca/p/womens-t-shirts/Wundermost-Sft-Nulu-SS-Crew-Thng-Bdysuit/_/prod11570053', 'Wundermost Ultra-Soft Nulu Short-Sleeve Crew Thong Bodysuit ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlvO_iUa-7U5EBh-ZNViqskBgtzwWSI_syqMAMCU2zv-87JhHV&s'),
(442, 11, 'https://shop.lululemon.com/p/women-underwear/InvisiWear-MR-Lace-Thong-Underwear-3P-MD/_/prod11560213', 'InvisiWear Mid-Rise Thong Underwear Performance Lace *3 Pack ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLW9saF7FiyX2yayC-qni8hmJMXVe2yKfPNkU9Zemko8d8aII&s'),
(443, 11, 'https://www.eloquii.com/products/the-thong---mesh/1088089.html', 'The Thong - Mesh | Eloquii', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwLAWGZmfW_pviXKXyVg3NDSjzT9wQIC4hFuDpbp1bmMXNZJSv&s'),
(444, 11, 'https://www.fashionnova.com/products/secret-crush-thong-5-pack-panties-pink-combo', 'Secret Crush Thong 5 Pack Panties - Pink/combo | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyZAL5izz36iX5BKe_X-Px0kjXcK3xEZnFpyb3psVRvHoPA88&s'),
(445, 11, 'https://www.everlane.com/products/womens-thong-heathergrey', 'The Cotton Thong Heathered Grey – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx6QNSWHUdlmhuxzVXySTvMpDzL9xkJwcMDZn6DXF6pv6RcL0&s'),
(446, 11, 'https://shop.lululemon.com/p/women-underwear/Wundermost-Usoft-Nulu-High-Waist-Thong-MD/_/prod11710293', 'Wundermost Ultra-Soft Nulu High-Waist Thong Underwear | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsQIZ7fX2HIeDvCXd6jViSlrHQjRcYRrJMs0nYevlURfzlYdGt&s'),
(447, 11, 'https://shop.lululemon.com/en-ca/p/women-underwear/InvisiWear-Mid-Rise-Bikini-Underwear/_/prod10520234', 'InvisiWear Mid-Rise Bikini Underwear | Women\'s Underwear ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUGuCmU2dbjha6SXYtP2JiH6L89wfUPxQW-0WXLp6av3cloyTy&s'),
(448, 11, 'https://www.fashionnova.com/products/nova-microfiber-string-thong-panty-hot-pink', 'Nova Microfiber String Thong Panty - Hot Pink | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwqwaj9EXa4IDoVB9V7JOOE3EcjLeHcJQR9Z7ghg_Rk_cu0cw&s'),
(449, 11, 'https://shop.lululemon.com/en-ca/p/women-underwear/InvisiWear-Mid-Rise-Bikini-Underwear/_/prod10520234', 'InvisiWear Mid-Rise Bikini Underwear | Women\'s Underwear ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUGuCmU2dbjha6SXYtP2JiH6L89wfUPxQW-0WXLp6av3cloyTy&s'),
(450, 11, 'https://www.everlane.com/products/womens-renew-invisible-thong-darktan', 'The Invisible High-Rise Thong Dark Tan – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0Y7VucU9-qDJj0FhqHOPn3m3Xv7XyOhxEFPPkANa0A-JBWts&s'),
(451, 11, 'https://www.fashionnova.com/products/nova-microfiber-dipped-thong-panty-black', 'Nova Microfiber Dipped Thong Panty - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp6GTVXn4dH4pzv9q-jymn5MZ56bEfQm8poxLCa28vmMYlSKg&s'),
(452, 11, 'https://shop.lululemon.com/p/women-underwear/Wundermost-Usoft-Nulu-High-Waist-Thong-MD/_/prod11710293', 'Wundermost Ultra-Soft Nulu High-Waist Thong Underwear | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsQIZ7fX2HIeDvCXd6jViSlrHQjRcYRrJMs0nYevlURfzlYdGt&s'),
(453, 11, 'https://www.everlane.com/products/womens-renew-thong-plum-grey', 'The Invisible Thong Plum Grey – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRloB8-rRKEi6FelePWTVAZPW1k7aBGdtlKS0kxj6dYxYj8YOwM&s'),
(454, 11, 'https://www.eloquii.com/products/wide-leg-distressed-jeans/1086194.html', 'Wide Leg Distressed Jeans - Relaxed Fit, Light Wash | Eloquii', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREMCfhdPGcaV2AtfxhlO7FhU8-7STK2maZoBLVZhqpK-lXPi_M&s'),
(455, 11, 'https://shop.lululemon.com/p/women-underwear/UnderEase-MR-Thong-Underwear-5Pack/_/prod10520468', 'UnderEase Mid-Rise Thong Underwear *5 Pack | Women\'s Underwear ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGuH50y8Ra1LdwpXfjmncMG-NKafC9tW0Gj-vMmTnZ-ax29GY&s'),
(456, 11, 'https://www.fashionnova.com/products/for-eternity-bikini-light-blue', 'For Eternity Bikini - Light Blue | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXtm_heYKqigW6ndjGfWeMmttTAR0UX-krpqGknjbfaoD93_s&s'),
(457, 11, 'https://www.fashionnova.com/products/the-total-package-thong-5-pack-panties-light-blue', 'The Total Package Thong 5 Pack Panties - Light Blue | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRWQP6_jkjWAU60-jxWDw1UOKadbkxm8bmagl4OHBhwgBvo6k&s'),
(458, 11, 'https://www.fashionnova.com/products/for-eternity-bikini-light-blue', 'For Eternity Bikini - Light Blue | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXtm_heYKqigW6ndjGfWeMmttTAR0UX-krpqGknjbfaoD93_s&s'),
(459, 11, 'https://shop.lululemon.com/p/women-underwear/InvisiWear-MR-Thong-Underwear-3Pack/_/prod10520456', 'InvisiWear Mid-Rise Thong Underwear *3 Pack | Women\'s Underwear ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkPJ4swFnRAnhiXgS5Hk41DC1lcr2tg21MxJtbBjhCnrh8tzQ&s'),
(460, 11, 'https://www.everlane.com/products/womens-hipster-hthr-burnt-sugar', 'The Cotton Hipster Burnt Sugar – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKSY9kjsQyk9btsxtdU-HdbDgn1UrUOoPW-WBzvELekwe3GI8&s'),
(461, 11, 'https://www.fashionnova.com/products/the-total-package-thong-5-pack-panties-light-blue', 'The Total Package Thong 5 Pack Panties - Light Blue | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRWQP6_jkjWAU60-jxWDw1UOKadbkxm8bmagl4OHBhwgBvo6k&s'),
(462, 11, 'https://www.fashionnova.com/products/for-eternity-bikini-light-blue', 'For Eternity Bikini - Light Blue | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXtm_heYKqigW6ndjGfWeMmttTAR0UX-krpqGknjbfaoD93_s&s'),
(463, 11, 'https://www.everlane.com/products/womens-renew-thong-plum-grey', 'The Invisible Thong Plum Grey – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRloB8-rRKEi6FelePWTVAZPW1k7aBGdtlKS0kxj6dYxYj8YOwM&s'),
(464, 11, 'https://www.eloquii.com/products/the-thong---modal/1088090.html', 'The Thong - Modal | Eloquii', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz4tawf90Bm1lG5CsMOU2u5TTiyMAI3qIWfbnWsmbFNRBS9zBL&s'),
(465, 11, 'https://www.everlane.com/products/womens-renew-thong-plum-grey', 'The Invisible Thong Plum Grey – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRloB8-rRKEi6FelePWTVAZPW1k7aBGdtlKS0kxj6dYxYj8YOwM&s'),
(466, 11, 'https://www.fashionnova.com/en-cl/products/von-dutch-black-velvet-trucker-hat-black', 'Von Dutch Black Velvet Trucker Hat - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHL81rHeAHhyiGk8CmWF-cRbjUD_4KV5_beSu1AxyO082eL-w&s'),
(467, 11, 'https://www.fashionnova.com/products/horse-rides-at-the-beach-cowboy-hat-natural-combo', 'Horse Rides At The Beach Cowboy Hat - Natural/Combo | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCCQO3VyTwtSt9HwsbcpHBjmNsPwnL90-uVOM0glWDG5vvx2VO&s'),
(468, 11, 'https://www.fanatics.com/mlb/san-diego-padres/san-diego-padres-new-era-womens-color-pack-9twenty-adjustable-hat-purple/o-4510+t-70342204+p-0222890158971+z-9-4157478045', 'San Diego Padres New Era Women\'s Color Pack 9TWENTY Adjustable Hat ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuQHw0GgseT-DvOTKgQBrFR0RpB3ljQk2qKyzKUtzrzMThYEr_&s'),
(469, 11, 'https://www.fashionnova.com/products/cosmic-love-garter-bodystocking-neon-green', 'Cosmic Love Garter Bodystocking - Neon Green | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7rPP5dBTNfLDz0hCno7r1fs7jfApF4_JKEPfvxuQ-O7ONU1ap&s'),
(470, 11, 'https://www.fashionnova.com/products/love-being-latina-pj-short-set-pink', 'Love Being Latina PJ Short Set - Pink | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOqbnk9ygCmv7y0kdr3koSyBdsEmswFOObh6o0oNEzQVEIc1c&s'),
(471, 11, 'https://www.fashionnova.com/products/ava-velvet-burnout-micro-mini-skirt-black', 'Ava Velvet Burnout Micro Mini Skirt - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcNEWhpV6j8tcYajQV4b4lyFUFkUAwaVWfohfSu7ZZ2T3nGb4&s'),
(472, 11, 'https://www.fashionnova.com/products/raise-hell-baby-pj-romper-onesie-yellow', 'Raise Hell Baby PJ Romper Onesie - Yellow | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1B2iTLkz6b77b-AYXFoLOwpO49mgSl6ZOf_rGKuE_LphNFP_H&s'),
(473, 11, 'https://www.fashionnova.com/products/mind-your-business-pj-short-set-pink', 'Mind Your Business PJ Short Set - Pink | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8EmFYwccNaz5g_IpPnMkr7tIS-znyNGcJadzAZWjw68iQ574&s'),
(474, 11, 'https://shop.lululemon.com/p/shoes/Blissfeel-2-Womens-Running-Shoe-MD/_/prod11530177', 'Women\'s Blissfeel 2 Running Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqKZiX8i3O3GgabWv4U-6_1NY33QAJ9kGKyaNjZwYcXbJpDXda&s'),
(475, 11, 'https://shop.lululemon.com/p/shoes/Strongfeel-Womens-Training-Shoe/_/prod11210018', 'Women\'s Strongfeel Training Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTATRYvfk6v77CuGus3eMPnRcGLLGw9IXC0vVvCfjtldf9QOI4&s'),
(476, 11, 'https://www.fashionnova.com/products/been-done-platform-loafers-black', 'Been Done Platform Loafers - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4tKInnZgfbH0-WUjo6M3X9WVL7UrxfZ_N4HWIEeuLxwnn62Y&s'),
(477, 11, 'https://shop.lululemon.com/p/shoes/Strongfeel-Womens-Training-Shoe/_/prod11210018', 'Women\'s Strongfeel Training Shoe | Women\'s Shoes | lululemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTATRYvfk6v77CuGus3eMPnRcGLLGw9IXC0vVvCfjtldf9QOI4&s'),
(478, 11, 'https://www.fashionnova.com/products/love-fur-you-mules-black', 'Love Fur You Mules - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRARm5aKVLQLjEKxREG-jEb_Z3ItMHiTxXgoxVgGDYu9W4GLlAB&s'),
(479, 11, 'https://www.fashionnova.com/products/diana-glitter-maxi-dress-olive-1', 'Diana Glitter Maxi Dress - Olive | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0yjJEQO5LjspEGEgdqgewH3uVJ9A3kMeQJYao48zT0Y6sYzU&s'),
(480, 2, 'https://shop.lululemon.com/p/women-tanks/Wunder-Train-Racerback-Tank-MD/_/prod11450165', 'Wunder Train Racerback Tank Top *Light Support | Women\'s ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQAo36wYpx8axq5FUlpgc5VploB1BNQBVHTnLGz8fUHPe7U2g&s'),
(481, 2, 'https://www.fanatics.com/soccer-national-teams/soccer-equipment/-puma-king-top-tt-soccer-shoes-black/o-1467+t-10882974+p-49036029279+z-9-820179843', 'Puma King Top TT Soccer Shoes - Black', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGe2Y191ewzzTAfilzpEWf3NOY4baHpRh0qcGlBzqBaoLIQ6hE&s'),
(482, 2, 'https://www.hottopic.com/product/black-lace-up-girls-top/11418648.html', 'Black Lace-Up Girls Top | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDQweRnoGdf1b9hMp3AlatsmdOU0tqh5DYdDPNQD74PoedsM4V&s'),
(483, 2, 'https://talentless.co/products/womens-heavyweight-sweatpants', 'Talentless | Women\'s Heavyweight Sweatpants', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg7kS-StL_p3hi3i1XPwIUcdKu9fTcTCig5e32Fnhj3Sn-tZYj&s'),
(484, 2, 'https://www.fashionnova.com/products/fighter-ribbed-active-legging-in-infinity-seamless-white', 'Fighter Ribbed Active Legging In Infinity Seamless - White ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSdoP7dx7v9qskUzg9ks0G4bf5fPGTNYF3N0glhXlvIoH7mJrF&s'),
(485, 2, 'https://www.fashionnova.com/products/unforgettable-to-you-lace-skirt-set-purple', 'Unforgettable To You Lace Skirt Set - Purple | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL2GCHIsbFkQviSiI4_qflvZE6mEus1kP8DxpPD2QURm8qwRQ&s'),
(486, 2, 'https://talentless.co/products/womens-wide-leg-boxing-pants', 'Talentless | Women\'s Wide Leg Boxing Pant', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_OYC2f8rBwymqR2kOAW8rAdwdw2Awbw5mlBt-axRR6ZEJ08Y&s'),
(487, 11, 'https://www.zappos.com/p/mens-ecco-sport-mx-slip-on-2-0/product/9782156', 'Men\'s ECCO Sport MX Slip-On 2.0 | Zappos.com', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2hDwvMUmVGznIaQ1Ww1CKo0NN7Y4LLJHnjrUZk1xfhGGm2Pg&s'),
(488, 11, 'https://www.fashionnova.com/products/mini-baddie-vibes-charm-bubble-slides-pink', 'Mini Baddie Vibes Charm Bubble Slides - Pink | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFbrjr_2ZhvIB-olPGKVxrwulQsTg0zH7jmtLXmpUKkk9fzSzH&s'),
(489, 11, 'https://www.fashionnova.com/products/you-belong-with-me-pumps-black', 'You Belong With Me Pumps - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEgqQkHJHdaRe-nI8BHNpOCi165turcyqVCN6QmlbCzoO3WH8&s'),
(490, 11, 'https://www.promgirl.com/products/mac-duggal-mac-26643-dress', 'Short Orange Long-Sleeve Semi-Formal Dress - PromGirl', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYYV9DWWDjneeuvifWMLSXj5Ddv3yEBlKLxEolZ29i6B3ql2Dd&s'),
(491, 11, 'https://www.fashionnova.com/products/paisley-over-peace-sneakers-black', 'Paisley Over Peace Sneakers - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNsATQn2sJ8BJ90K5BeHrHouGGf3Q3b8_pv4qoaEIlWvwxt3I5&s'),
(492, 11, 'https://www.fashionnova.com/products/been-done-platform-loafers-black', 'Been Done Platform Loafers - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ49eSyaX1tOIiQPClBNfDsEW6KaqaCupX132eIqujGW1Sln1tA&s'),
(493, 11, 'https://www.shopbop.com/elsa-brush-alt-mat-stella/vp/v=1/1529455851.htm?os=false&breadcrumb=Shop+Women%27s%3EWhat%27s+New&folderID=13198&colorSin=2014266603&fm=other-shopbysize-viewall&ref_=SB_PLP_PDP_W_WHATS_13198_DB_67', 'Stella McCartney Elsa Lip Appliqué Kitten Heels | Shopbop', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjb4c_t5XN_P4vjTp5wMKLoBVM2I5BlRgAND6rKVWM1lhb7IY7&s'),
(494, 11, 'https://www.fanatics.com/college/notre-dame-fighting-irish/notre-dame-fighting-irish-under-armour-womens-hovr-sonic-3-running-shoe-green/o-27+t-45091011+p-365258443958+z-9-3251195265', 'Notre Dame Fighting Irish Under Armour Women\'s HOVR Sonic 3 ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmHqfbzDOK9MVDofQSXcSF22iMKTs3BcCs2WHx3YXJhytqxbB-&s'),
(495, 11, 'https://www.nordstrom.com/s/franco-sarto-stevie-bootie-women/5743632', 'Franco Sarto Stevie Bootie (Women) | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg1RjJf1z_2Bgelsh4eJgS9svuhDF1em9Jj67cZAApuEhyGgo&s'),
(496, 25, 'https://www.fashionnova.com/products/time-to-leave-cargo-trouser-sage', 'Time To Leave Cargo Trouser - Sage | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMp4SsIprz0KGmSdbRy3DteC6f9rVNz7ixF1Qk-3RqQtnM1is&s'),
(497, 25, 'https://talentless.co/products/womens-carpenter-sweatpants', 'Talentless | Women\'s Carpenter Sweatpants', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkut-FcqYVLQ5oALm0H7DMVg--tpAnCr7E_G9nyoavBjg9Me0&s'),
(498, 25, 'https://www.shopbop.com/baggy-cargo-good-american/vp/v=1/1548889897.htm?os=false&breadcrumb=Shop+Women%27s%3EClothing%3EPants&folderID=13281&colorSin=2063431154&fm=other-shopbysize-viewall&ref_=SB_PLP_PDP_W_CLOTH_PANTS_13281_NB_51&switchToLanguage=zh', 'Good American Baggy Cargo Trousers | Shopbop', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw793mrZ1XIs7NAX669HAboP142p3UOkA13La8fR1w93Pe5ZI&s'),
(499, 26, 'https://www.everlane.com/products/womens-day-heel-bone', 'The Day Heel in Narrow Fit Bone Stacked – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThguUzisAFIFss8oaBQwDB5GwEytGkEG426BRZzgtXFQrTSSU&s'),
(500, 25, 'https://www.everlane.com/products/womens-dream-blazer-navy', 'The Dream Blazer Navy – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTErpOg1W8dTSXI_5KyvAZBR3FRgIXjSCK_hBxkjtcOXXuRpGs&s'),
(501, 28, 'https://www.eloquii.com/products/the-365-suit-patch-pocket-blazer/1086368.html', 'Tailored 365 Suit Blazer for Effortless Elegance, Chicory Coffee ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5CNEFr1tR18pVIpAoFDY27DvoSVYMbEc4KT_i43I2WCHsZUaQ&s'),
(502, 28, 'https://www.fashionnova.com/products/kirby-graphic-t-shirt-black', 'Kirby Graphic T-Shirt - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsE0Dh1W6W5y-ECkFNjfaixyHo0CZcZudxcoSyKtyDiulxqiZJ&s'),
(503, 28, 'https://www.fanatics.com/blizzard-entertainment/overwatch/reinhardt-overwatch-j!nx-washed-pullover-hoodie-gray/o-32508020+t-10501345+p-038454442+z-9-499636107', 'Reinhardt Overwatch J!NX Washed Pullover Hoodie - Gray', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQJB7thpBmSbnTre-aH6Tuh0VtSCbW7yHqMud0yK83HMckeC0&s'),
(504, 28, 'https://www.fanatics.com/blizzard-entertainment/overwatch/ana-overwatch-j!nx-contrast-ultimate-full-zip-hoodie-cream/o-10496864+t-32057989+p-706232150+z-9-1071861194', 'Ana Overwatch J!NX Contrast Ultimate Full-Zip Hoodie - Cream', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-uMP4pmfKJ4NCK70g6lBQwROVPotzLAO7FmAUHDsxxInW20Cu&s'),
(505, 28, 'https://www.fanatics.com/blizzard-entertainment/overwatch/lucio-overwatch-toddler-lets-drop-the-beat-t-shirt-green/o-10385731+t-09384623+p-148432060+z-9-4080312397', 'Lucio Overwatch Toddler Let\'s Drop the Beat T-Shirt - Green', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsJlTuXayH8sUDx1oeyv7DlMuQRoS8XorBdlHAx_ZZZDeRIoKx&s'),
(506, 28, 'https://www.hottopic.com/product/her-universe-overwatch-d.va-girls-hooded-windbreaker/11582847.html', 'Her Universe Overwatch D.Va Girls Hooded Windbreaker | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4ZXIjJBWi63XdIW0V_y-Enc3kJoROCPRk8kikc4j6lbR_T_yI&s'),
(507, 28, 'https://www.fanatics.com/blizzard-entertainment/overwatch/moira-j!nx-overwatch-logo-t-shirt-charcoal/o-21612497+t-54160290+p-253944541+z-9-203175714', 'Moira J!NX Overwatch Logo T-Shirt - Charcoal', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYc1ovYFIhtp9s14P9PXbeUSAmRGKApA5LHtRY08M3G0CtRVk&s'),
(508, 28, 'https://www.hottopic.com/product/black-butler-cats-are-great-girls-t-shirt/10300275.html', 'Black Butler Cats Are Great Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyyCZhCSJnESoe3XXEBT_Ucf3iqlKq6u4EpykDI6h9Nj5Zz6g&s'),
(509, 28, 'https://www.hottopic.com/product/blur-parklife-boyfriend-fit-girls-t-shirt/31167176.html', 'Blur Parklife Boyfriend Fit Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS81XeEfTz6ZqQ1vYoXzPwP05LUu-y-9h6U8ICwPA-RIcnZUL0&s'),
(510, 28, 'https://www.hottopic.com/product/pokemon-pikachu-cosplay-girls-hoodie/10355527.html', 'Pokemon Pikachu Cosplay Girls Hoodie | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlmsd0mY_B35O_7MzaUebb70Md1AEwRqLTPfZdITXRxnycea4&s'),
(511, 28, 'https://www.hottopic.com/product/soul-eater-group-boyfriend-fit-girls-t-shirt/17574561.html', 'Soul Eater Group Boyfriend Fit Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmmOJS5CH4Mv8MF6ItAWc1WtVVDCY0EN5jXaDDtdW_dVodih3R&s'),
(512, 28, 'https://www.hottopic.com/product/hatsune-miku-blue-tie-dye-boyfriend-fit-girls-t-shirt/31960047.html', 'Hatsune Miku Blue Tie-Dye Boyfriend Fit Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJtI1W_oAfLatHpJNv7QCpqV7dWe4HvfwBmA1GwQ88xd76CvE&s'),
(513, 28, 'https://www.hottopic.com/product/hatsune-miku-kneeling-girls-baby-crop-t-shirt/15938635.html', 'Hatsune Miku Kneeling Girls Baby Crop T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxqHgmEAg9fNChtNW8Z3Ec9rb3mWu8cXZ-lDcK1JzFle6Ii1w&s'),
(514, 28, 'https://www.hottopic.com/product/jujutsu-kaisen-chibi-satoru-gojo-wash-boyfriend-fit-girls-t-shirt/16048105.html', 'Jujutsu Kaisen Chibi Satoru Gojo Wash Boyfriend Fit Girls T-Shirt ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRarggYP8C8sS3Qth9Kj3ZssRSY52KwYPbGY06Z4F5UVoAjWKLX&s'),
(515, 28, 'https://www.fashionnova.com/products/froot-loops-washed-tshirt-black-wash', 'Froot Loops Washed Tshirt - Black Wash | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_4om4CHgB67mKPB3ni15AYQwRmL3lvHtKumLt-GuXoGprs8g&s'),
(516, 28, 'https://www.hottopic.com/product/marvel-iron-man-collage-boyfriend-fit-girls-t-shirt/20098386.html', 'Marvel Iron Man Collage Boyfriend Fit Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbf33fTkFDwgqIF98QJjTLPWda8FaYQZR_-mqYIjvCpkNyHwI&s'),
(517, 28, 'https://www.prettylittlething.com/black-square-toe-mid-flare-block-heels-ankle-boots.html', 'Black Square Toe Mid Flare Block Heels Ankle Boots | PrettyLittleThing', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcja2sYfpOCA4jo-0GiILChZhwLbDJYaMlAIAOaLXWo2s6eBt2&s'),
(518, 28, 'https://www.torrid.com/product/lace-up-peep-toe-block-heel-boots-wide-width-wide-calf/10685017.html?cgid=shoes-boots', 'Plus Size - Lace Up Peep Toe Block Heel Boots (Wide Width & Wide ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkHkDpb7DPqSDtxUx2IH9dbb3kzMrf7IzUqPrq8h8-94StbIiL&s'),
(519, 28, 'https://www.torrid.com/product/black-canvas-high-top-sneaker-ww/13565023.html', 'Plus Size - Black Canvas High-Top Sneaker (WW) - Torrid', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQthPFNtuIBNpHtN4CeHexDJq7WtmV7EqO0XIh8ZWzMn00UBso&s'),
(520, 28, 'https://www.hottopic.com/product/skull-star-fuzzy-patch-wide-leg-girls-lounge-pants/31554125.html', 'Skull Star Fuzzy Patch Wide Leg Girls Lounge Pants | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_KtoRMX3fg5RoOW4oTEnlyJ1sUvHoitdYPd1010A85feMn84I&s'),
(521, 28, 'https://www.everlane.com/products/womens-baggy-jean-ricky', 'The OG Baggy Jean Ricky – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZlJkwNL9nWxrEjCG7W8-xuATGit5SLEmjhnUnqJ-9ADotGRk&s');
INSERT INTO `viewed` (`ViewedID`, `UserID`, `itemUrl`, `itemTitle`, `itemSrc`) VALUES
(522, 28, 'https://www.torrid.com/product/button-front-midi-dress---textured-stretch-rayon-floral-purple/16896823.html', 'Plus Size - Midi Textured Woven Button-Front Dress - Torrid', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7dc-lDA4lHp_L20u7ZWLVKd5nF2b5Xz_8fs6S2eJTQBNT1nDb&s'),
(523, 28, 'https://www.fashionnova.com/products/see-me-in-this-over-the-knee-boot-black', 'See Me In This Over The Knee Boot - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6Zh6A_OsyohX-EBLVPKWa0xyYE45KytODUrIXz3bhjoPUZQ8z&s'),
(524, 28, 'https://www.hottopic.com/product/monster-high-illustrated-panels-girls-boyfriend-fit-t-shirt/16623184.html', 'Monster High Illustrated Panels Girls Boyfriend Fit T-Shirt | Hot ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq0lea2qk48t8EyGiMJTB4kPnfVL17fxkr5C7mDiQODQANvmO_&s'),
(525, 28, 'https://www.fashionnova.com/products/kordyn-knee-high-overlay-boots-camouflage', 'Kordyn Knee High Overlay Boots - Camouflage | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS39FHdKqtu5M95mGdI8i3Fc9KMNoHqYfXrPOuR_gHA_L3b0AcC&s'),
(526, 28, 'https://www.fashionnova.com/products/cut-it-off-knee-high-boots-dark-denim', 'Cut It Off Knee High Boots - Dark Denim | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI4x76HLhpqLsG6vpEzADC2NRYWPZ1KcyAwUXsQtjsAwNWTKE&s'),
(527, 28, 'https://www.torrid.com/product/bodycon-cutout-mini-dress---stretch-satin-mauve/18323641.html?dwvar_18323641_color=MAUVE&cgid=NewNow_NewArrivals', 'Plus Size - Bodycon Cutout Mini Dress - Stretch Satin Mauve - Torrid', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8ynea2bL5mAzcH9prvN1QyQwkHbdMxsNQf7vYzt0u19569dmB&s'),
(528, 28, 'https://www.fashionnova.com/es-cl/pages/men', 'Fashion Nova Men | Men\'s Fashion Clothes | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKO9Lzs-41kq62TbQehVTp_wuUiWw0Ep-A_V-s71pMpAou3m4&s'),
(529, 28, 'https://us.shein.com/Vivienne-Westwood-women\'s-keychain-BLACK-82030103L0039N401-p-23675887-cat-1914.html', 'Women\'s & Men\'s Clothing, Shop Online Fashion | SHEIN', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBih-gHbT57HnRNskeAwJsT_-EPFIPk2ydmntXHYZpyvTSDyfa&s'),
(530, 28, 'https://www.fashionnova.com/products/mia-ruffle-maxi-dress-pink', 'Mia Ruffle Maxi Dress - Pink | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJBmm-aFk98PpknTJKtTgSdnJDqqoD5FFvMbjYf6vI67Qgvtw&s'),
(531, 28, 'https://us.shein.com/Marc-Jacobs-women\'s-shoulder-bag-GREY-M0014146088-p-23420637-cat-1764.html', 'Marc Jacobs Women\'s Shoulder Bag GREY M0014146088 | SHEIN USA', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjEZG-PZ6wNqqSoHPDPuvPU_M_OHG5oECQxspalchoFnOHyC8&s'),
(532, 28, 'https://us.shein.com/Diesel-women\'s-belt-SILVER-X09710P1660H0535-p-19870051-cat-1875.html', 'Women\'s & Men\'s Clothing, Shop Online Fashion | SHEIN', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKSgR8arRXimHCXjDFYE1xu-LTGMqbQHTK2W1PS09gVy5sAdM&s'),
(533, 28, 'https://www.fashionnova.com/products/queen-vibes-sequin-mermaid-gown-blue', 'Queen Vibes Sequin Mermaid Gown - Blue | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhK_KbZ9tKmf_LLhhSOf9zLfCLWwT05Ecg47xU8J4Ul0MOfm1E&s'),
(534, 28, 'https://www.fashionnova.com/products/infinite-and-beyond-6-piece-costume-set-green-combo', 'Infinite And Beyond 6 Piece Costume Set - Green/combo | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFmiIb8qiUupd5BGm82ukOmDE-jkieOy9sRLFNmGHQHwPHDI_A&s'),
(535, 28, 'https://www.eloquii.com/ca/', 'Affordable Plus Size Clothing & Fashion for Women | Catherines', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPf-9artsl_FLMEu3_ALty8DgIoEE_jFG-DlYXJZqhzbLTnYPd&s'),
(536, 28, 'https://www.nordstrom.com/s/avec-les-filles-oversize-leather-blazer/7880295?origin=category-personalizedsort&breadcrumb=Home%2FWomen%2FClothing%2FCoats%20%26%20Jackets&color=203', 'Avec Les Filles Oversize Leather Blazer | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiPabE3QJhlYlmg-bG61BTlr8YufJB99PlYxjjDyFax1oj-zMx&s'),
(537, 28, 'https://www.nordstrom.com/s/abeille-royale-refillable-honey-treatment-rich-cream/7946521', 'Guerlain Abeille Royale Refillable Honey Treatment Rich Cream ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjUkC0yiXl8Pb4Qq4UiPrMdNwEh7PV914gNiZnpjllOBtySPob&s'),
(538, 28, 'https://www.fanatics.com/nfl/green-bay-packers/green-bay-packers-nike-womens-nfl-crucial-catch-performance-t-shirt-anthracite/o-4627+t-14154610+p-26672010534+z-9-3200370051', 'Green Bay Packers Nike Women\'s NFL Crucial Catch Performance T ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMydIdtKnYgyZ_ExrMk-W8yfPoMA6tYN1VncwlSWHesRjqN54&s'),
(539, 28, 'https://www.fashionnova.com/products/floral-bodycon-cami-midi-dress-black', 'Floral Bodycon Cami Mini Dress - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHfI6UUvF6ReTY2_g5Xd8GTVjdW_CViRtOrDLw5UnosD5LOXM&s'),
(540, 28, 'https://www.express.com/clothing/women/denim-round-toe-ballet-flats/pro/00926531', 'Denim Round Toe Ballet Flats | Express', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUtU8HQ1LoSeaGDpBNUuP2GGVQQfGH-bt7hKXu7f8JVnvtNxTh&s'),
(541, 28, 'https://www.fanatics.com/nfl/green-bay-packers/green-bay-packers-nike-womens-nfl-crucial-catch-performance-t-shirt-anthracite/o-4627+t-14154610+p-26672010534+z-9-3200370051', 'Green Bay Packers Nike Women\'s NFL Crucial Catch Performance T ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMydIdtKnYgyZ_ExrMk-W8yfPoMA6tYN1VncwlSWHesRjqN54&s'),
(542, 28, 'https://www.fanatics.com/mlb/los-angeles-dodgers/freddie-freeman-los-angeles-dodgers-2024-mlb-postseason-moments-t-shirt-black/o-8910+t-70111033+p-80880550185+z-7-1287745703', 'Freddie Freeman Los Angeles Dodgers 2024 MLB Postseason Moments T ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRckqz089rdJAqpdodJiabmYXLj-pnBnEtrqBEdtdZlToV5ZlXq&s'),
(543, 28, 'https://www.fashionnova.com/products/express-your-feelings-sweater-top-black', 'Express Your Feelings Sweater Top - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ80TOgnt_YHPGeOvE_1xC_6Tvzeq_SJsXds_XgQWiczOFcaGG&s'),
(544, 28, 'https://www.fashionnova.com/products/express-your-feelings-sweater-top-black', 'Express Your Feelings Sweater Top - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj12e8QG7PnS7qENdu9qD5_rpPllnqQtS7b9eOyJkde9Xfs0g&s'),
(545, 29, 'https://www.hottopic.com/product/trolls-3-band-together-brozone-group-girls-t-shirt/31810150.html', 'Trolls 3 Band Together Brozone Group Girls T-Shirt - BLACK | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgHVzlxL7hF0_XqYXKYwpqyCTl1Yl8e1g1GNMIzFloRd3A-7w&s'),
(546, 29, 'https://www.hottopic.com/product/trolls-3-band-together-brozone-group-girls-tank/31807385.html', 'Trolls 3 Band Together Brozone Group Girls Tank - BLACK | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH64gb9wBileAmvw4D-931XZC81AQeweQJGZFfgh-Q7wMut9g&s'),
(547, 29, 'https://www.hottopic.com/product/trolls-poppy-rock-star-boyfriend-fit-girls-t-shirt/31062801.html', 'Trolls Poppy Rock Star Boyfriend Fit Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyr-nRtq6LMMWv5mE1HOCJ55Ykyv9VgRdjK3nNN01otT-euUs2&s'),
(548, 30, 'https://www.prettylittlething.com/basic-roll-sleeve-white-crop-top.html', 'Basic Roll Sleeve White Crop Top | Tops | PrettyLittleThing', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJc5zrmXGAiOhSYDE225ElP7L5atx9NPYmcBg47s2VKpDk6L9M&s'),
(549, 30, 'https://www.fanatics.com/nfl/detroit-lions/detroit-lions-fanatics-womens-plus-size-racerback-tank-top-black/o-2494+t-70154631+p-460089826563+z-8-1952107696', 'Detroit Lions Fanatics Women\'s Plus Size Racerback Tank Top - Black', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfeUaBtUyWYzzipqGiQSuB-gLYenlBziabtMPZkUUMXW3eJZbV&s'),
(550, 31, 'https://www.hottopic.com/product/skull-star-fuzzy-patch-wide-leg-girls-lounge-pants/31554125.html', 'Skull Star Fuzzy Patch Wide Leg Girls Lounge Pants | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_KtoRMX3fg5RoOW4oTEnlyJ1sUvHoitdYPd1010A85feMn84I&s'),
(551, 31, 'https://www.prettylittlething.com/basic-roll-sleeve-white-crop-top.html', 'Basic Roll Sleeve White Crop Top | Tops | PrettyLittleThing', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJc5zrmXGAiOhSYDE225ElP7L5atx9NPYmcBg47s2VKpDk6L9M&s'),
(552, 1, 'https://www.nordstrom.com/browse/women/clothing/dresses/little-white-dress?filterByBrand=amanda-uprichard', 'Amanda Uprichard White Dresses | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL2YDKMgloHe2bXQdM5WXFBe-E38C6ZykwmeNdgi1EI-p3G65N&s'),
(553, 1, 'https://www.nordstrom.com/browse/women/clothing?filterByBrand=amanda-uprichard', 'Women\'s Amanda Uprichard Clothing | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl947m9IsXgwjV3-quHsQALk9oR_9y7Ebhgyivsg1ndEoacKo&s'),
(554, 1, 'https://www.nordstrom.com/browse/women/clothing/dresses/little-white-dress?filterByBrand=amanda-uprichard', 'Amanda Uprichard White Dresses | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL2YDKMgloHe2bXQdM5WXFBe-E38C6ZykwmeNdgi1EI-p3G65N&s'),
(555, 31, 'https://www.nordstrom.com/browse/women/clothing/underwear-lingerie?filterByProductType=clothing_undershirts&page=2', 'Women\'s Undershirts Lingerie, Hosiery & Shapewear | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3RgdpW9GRl7SwZpE3VDsOAmeHB8PrXl994Zocf--jL9gt22A4&s'),
(556, 31, 'https://www.fashionnova.com/products/the-archangel-short-sleeve-tee-brown', 'The Archangel Short Sleeve Tee - Brown | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzNNA6bi3nfTF9jXSljJ8V1lUXseLQoNaGd6qK3U4w4gsfcRy4&s'),
(557, 33, 'https://www.express.com/womens-clothing/accessories/hats/cat1910056', 'Women\'s Hats - Beanie & Fashion Hats - Express', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuG9A0EDTY9R1RFcn2-3dolT0NVfgi9aJnsenx83t1_gdcb4SH&s'),
(558, 33, 'https://www.fanatics.com/mlb/los-angeles-dodgers/men-hats/o-7876+t-36335433+ga-90+d-860075+z-8-3792590645?pageNumber=2', 'Mens L.A. Dodgers Hats, Mens Dodgers Baseball Hats and Caps | Fanatics', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT94Deuca1ApqTyvwce7aRDiHsNBmiugwID128NGp_hNrjwS3_d&s'),
(559, 1, 'https://www.nordstrom.com/browse/women/clothing/dresses?filterByStyle=double-breasted', 'Women\'s Double Breasted Dresses | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjc9v1MMdPv7GWC17Gunq0Xy8raop75EZs6C03y89tWHn0-2c&s'),
(560, 1, 'https://www.nordstrom.com/browse/women/clothing/dresses/little-white-dress?filterByBrand=amanda-uprichard', 'Amanda Uprichard White Dresses | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL2YDKMgloHe2bXQdM5WXFBe-E38C6ZykwmeNdgi1EI-p3G65N&s'),
(561, 1, 'https://www.promgirl.com/products/velvi-vel-amy-dress', 'Cap-Sleeve Short White Amy Graduation Dress', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzQA4dAY_gANAGgr5NI4RAKV1pv6VxISkxLqxuPlkIGxamEeo&s'),
(562, 38, 'https://www.fashionnova.com/products/dark-evil-hatter-8-piece-costume-set-black', 'Dark Evil Hatter 8 Piece Costume Set - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6maPKkUP89WefrzZuu8rn82wgmg4-3MygK48P5yfVEFszQ9X6&s'),
(563, 38, 'https://www.fashionnova.com/products/pup-mr-monopoly-dog-costume-black', 'Pup Mr. Monopoly Dog Costume - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRtWOROVScc1EkRBLL1tQC4gr67H6U0O4_LamBv2h1XmhhkVw&s'),
(564, 38, 'https://www.fashionnova.com/products/dark-evil-hatter-8-piece-costume-set-black', 'Dark Evil Hatter 8 Piece Costume Set - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeEGjHLlYtfUSLyftrgj7gbny5k6QNaDlQwqs4V9n91FdFf_56&s'),
(565, 38, 'https://www.fashionnova.com/products/dark-evil-hatter-8-piece-costume-set-black', 'Dark Evil Hatter 8 Piece Costume Set - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6maPKkUP89WefrzZuu8rn82wgmg4-3MygK48P5yfVEFszQ9X6&s'),
(566, 38, 'https://www.fashionnova.com/products/pup-mr-monopoly-dog-costume-black', 'Pup Mr. Monopoly Dog Costume - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRtWOROVScc1EkRBLL1tQC4gr67H6U0O4_LamBv2h1XmhhkVw&s'),
(567, 31, 'https://us.boohoo.com/premium-halterneck-crochet-crop-top-/GZZ02514.html', 'Premium Halter Crochet Crop Top | boohoo USA', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTObCN9IFPLAHxqMpXyyXkM9rtMbUAssep3RjjJG7M3cVkB38au&s'),
(568, 2, 'https://www.nordstrom.com/browse/women/clothing/coats-jackets/jean-jackets?filterByBrand=madewell', 'Women\'s Madewell Jean & Denim Jackets | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTOKXRAycEsRO-oc1FYgu4IN_JhMnuHCBFBJr5bRQrOfWc3iA&s'),
(569, 2, 'https://www.nordstrom.com/browse/women/clothing/coats-jackets/jean-jackets?filterByBrand=topshop', 'Women\'s Topshop Jean & Denim Jackets | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw-SDrShbKxO5w12mjnZFmKuNQFt-vPw9wDhhIyto_jGKdWbs&s'),
(570, 2, 'https://www.nordstrom.com/browse/women/clothing/coats-jackets/jean-jackets?filterByBrand=joe-s', 'Women\'s Joe\'s Jean & Denim Jackets | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcy_TSvdTfQSWIVIYsy6yIUQSapVLNJ7y5dHRnVuOBWy1dS9E&s'),
(571, 2, 'https://www.express.com/clothing/women/denim-belted-trench-coat/pro/08814234', 'Denim Belted Trench Coat | Express', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEYtxh2qobTMLGXBnIiTyENBC45GKEL87swvL4TcIRXVZkGg&s'),
(572, 2, 'https://www.nordstrom.com/browse/women/clothing/coats-jackets/jean-jackets?filterByBrand=madewell', 'Women\'s Madewell Jean & Denim Jackets | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlWooFW4mqO89VOoZScOuSTSzgqXdwHdw6Og2T-QP__YfjXrsB&s'),
(573, 2, 'https://www.nordstrom.com/browse/women/clothing/coats-jackets/jean-jackets?filterByBrand=agolde', 'Women\'s AGOLDE Jean & Denim Jackets | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLICbKuQvihlnwd2zI4q5t1od5NQ_5Euid6JkVAvu5X-uJYZZ8&s'),
(574, 2, 'https://www.nordstrom.com/browse/women/clothing/coats-jackets/jean-jackets?filterByBrand=favorite-daughter', 'Women\'s Favorite Daughter Jean & Denim Jackets | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrAS_AARoH9scV_k9U1H6nVlwZqMUcBSzRStlU6pqkq5useG7n&s'),
(575, 2, 'https://www.hottopic.com/product/coraline-art-girls-jean-jacket/32049893.html', 'Coraline Art Girls Jean Jacket | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFwBFpPb800rigf6nMfhPM65kgIFChYZhcAAHgSwy6VrWgGgs&s'),
(576, 44, 'https://www.nordstrom.com/browse/women/clothing/coats-jackets/jean-jackets?filterByBrand=rails', 'Women\'s Rails Jean & Denim Jackets | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgOc4w89nB4VHm3nnFsBVP05IDA_Fs3TJM-lciJXjw-eLQYizn&s'),
(577, 44, 'https://www.promgirl.com/products/velvi-vel-ace-dress', 'Ace One-Shoulder White Graduation Dress - PromGirl', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzR2SFNfanimv8M7XWmL_o5nJZUPpJvCEncslSIEtHPCnWGYXT&s'),
(578, 44, 'https://www.promgirl.com/products/velvi-vel-tahlia-dress', 'High-Low White Graduation Dress with Lace Ruffle', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR597tghall0fyqIc0dbh2UakC29kFIPExRClM3-IN9dORkrzU&s'),
(579, 45, 'https://www.everlane.com/products/womens-oversized-blazer-greyherringbone', 'The Oversized Blazer in Wool Grey Herringbone – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd3HZUZXwEdbNPMkCPcxrLPIo_u1MWoqxhNdTWTORGHF-i_nY&s'),
(580, 45, 'https://us.boohoo.com/tall-blazer-dress/TZZ95191.html', 'Tall Blazer Dress | boohoo USA', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdYC-kMwU_r4DC-QMqoZbqsCiuuh8Uswj2fZHCkbqT4Kh9OJM&s'),
(581, 31, 'https://www.everlane.com/products/womens-oversized-blazer-greyherringbone', 'The Oversized Blazer in Wool Grey Herringbone – Everlane', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_tgG9iek4-wtOJdcUFIgItD2yv5qk9mhyPqXWZz78W6n2RbU&s'),
(582, 31, 'https://www.pacsun.com/cyberpunk-edgerunners-t-shirt-0097602920012.html', 'Cyberpunk Edgerunners T-Shirt | PacSun', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDWqotqdPW8u22RfCQPH00gBTuLqjBwLcSl_4mBhxmQIwTXeA&s'),
(583, 31, 'https://www.hottopic.com/product/super-mario-princess-peach-collared-girls-sweatshirt/30625426.html', 'Super Mario Princess Peach Collared Girls Sweatshirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjP9KRQbi-x1XOy9oddU0fybVYamlX2H9TP7pZFC4q0n8QXqP1&s'),
(584, 31, 'https://www.hottopic.com/product/black-white-damaged-teddy-bear-girls-crop-t-shirt/16916348.html', 'Black & White Damaged Teddy Bear Girls Crop T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTevcFDXj_38vui_jFOa3bbGcRXcZrxSKiC-DzlqxZNeuH4Eug&s'),
(585, 31, 'https://www.hottopic.com/product/avatar-the-last-airbender-pink-character-girls-t-shirt/14500237.html', 'Avatar: The Last Airbender Pink Character Girls T-Shirt | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHAnTB75ErZ2I4n40Mzc8rZlsLkYVt9IxW48mG0ZcuyvX8gCqB&s'),
(586, 31, 'https://www.hottopic.com/pop-culture/shop-by-license/golden-girls/', 'OFFICIAL Golden Girls Merchandise | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRabWN_o084sKukssvBQUivuN83WbLolzW4nzOQHN2eudyYmo4&s'),
(587, 31, 'https://www.hottopic.com/product/disney-the-aristocats-marie-ugly-christmas-girls-slouchy-sweatshirt/20207148.html', 'Disney The Aristocats Marie Ugly Christmas Girls Slouchy Sweatshirt', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_BuRCdLmW5iTsdn1gFZ_g9-41EFyZWbzoF-Nk3OpZ_xxylDA&s'),
(588, 31, 'https://us.boohoo.com/plus-reindeer-fairisle-christmas-v-neck-tank-top/BMM17929.html', 'Plus Reindeer Fairisle Christmas V-Neck Tank Top | boohoo USA', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrySuslMvUxf9CHADkc7j0KA-0u-C0q8VqJ8VqW0d3ypzKRRA&s'),
(589, 31, 'https://us.boohoo.com/plus-reindeer-fairisle-christmas-v-neck-tank-top/BMM17929.html', 'Plus Reindeer Fairisle Christmas V-Neck Tank Top | boohoo USA', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ8ji3Hqx1AC-HADqlmTYNqGMPYvftkpthK2TCkyXTc5nlWac&s'),
(590, 31, 'https://www.fashionnova.com/products/nightmare-before-christmas-crew-neck-sweatshirt-black', 'Nightmare Before Christmas Light Up Sweatshirt - Black | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSsaNW-8uJUqMmWIPsouXOJMxynWl3YliX5Bysy4rRYzXBHuI&s'),
(591, 31, 'https://www.fashionnova.com/products/love-christmas-sweater-pink-combo', 'Love Christmas Sweater - Pink/combo | Fashion Nova', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuVAvBWH9Ove0MI_sTSOVwvaT8rK-7ldvQuhXUPYmmLWIE1So&s'),
(592, 31, 'https://www.hottopic.com/girls/hoodies-and-sweaters/pullovers-sweaters/', 'Pullover Sweaters: Cool & Cute Pullovers for Girls | Hot Topic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREfoUUphUqeanPzH4lVBdC50cAixlZB0bkmO8wEemVVsll_LCG&s'),
(593, 11, 'https://www.nordstrom.com/browse/men/shoes/comfort?filterByBrand=clarks', 'Men\'s Clarks® Comfort Shoes | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG66a2sTMSmIG7PjWCba4Q2U_1MBLvNlx-0-7x47-CHlr4o4AS&s'),
(594, 11, 'https://www.nordstrom.com/browse/men/shoes/dress?filterByFeature=arch-support', 'Men\'s Arch Support Dress Shoes | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7n5vOXKbXCGuitPlPEum2UNZRBDfguAkMqp6Jj6a8j74u0sN5&s'),
(595, 31, 'https://www.nordstrom.com/browse/women/clothing/sweatshirts-hoodies?filterByMaterial=corduroy', 'Women\'s Corduroy Sweatshirts & Hoodies | Nordstrom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYyNLM-OheP4_dgXNS8GcIklpxN8CFjB6bXOr2z3_RmCX10P8&s');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bought`
--
ALTER TABLE `bought`
  ADD PRIMARY KEY (`BoughtID`),
  ADD KEY `FK_users_bought` (`UserID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `FK_post_comment` (`PostID`),
  ADD KEY `FK_users_comment` (`UserID`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`FavoritesID`),
  ADD KEY `FK_users_favorites` (`UserID`);

--
-- Indexes for table `FollowingConnections`
--
ALTER TABLE `FollowingConnections`
  ADD PRIMARY KEY (`ConnectionID`),
  ADD KEY `FK_users_followingConnections` (`UserID`);

--
-- Indexes for table `likeTable`
--
ALTER TABLE `likeTable`
  ADD PRIMARY KEY (`LikeID`),
  ADD KEY `FK_post_like` (`PostID`),
  ADD KEY `FK_users_like` (`UserID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`PostID`),
  ADD KEY `FK_users_post` (`UserID`),
  ADD KEY `FK_bought_post` (`BoughtID`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`suggestionNo`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendorNo`);

--
-- Indexes for table `viewed`
--
ALTER TABLE `viewed`
  ADD PRIMARY KEY (`ViewedID`),
  ADD KEY `FK_users_viewed` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bought`
--
ALTER TABLE `bought`
  MODIFY `BoughtID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `CommentID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `FavoritesID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `FollowingConnections`
--
ALTER TABLE `FollowingConnections`
  MODIFY `ConnectionID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `likeTable`
--
ALTER TABLE `likeTable`
  MODIFY `LikeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=599;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `PostID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `suggestionNo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendorNo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `viewed`
--
ALTER TABLE `viewed`
  MODIFY `ViewedID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=596;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bought`
--
ALTER TABLE `bought`
  ADD CONSTRAINT `FK_users_bought` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_post_comment` FOREIGN KEY (`PostID`) REFERENCES `post` (`PostID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_users_comment` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `FK_users_favorites` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `FollowingConnections`
--
ALTER TABLE `FollowingConnections`
  ADD CONSTRAINT `FK_users_followingConnections` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `likeTable`
--
ALTER TABLE `likeTable`
  ADD CONSTRAINT `FK_post_like` FOREIGN KEY (`PostID`) REFERENCES `post` (`PostID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_users_like` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_bought_post` FOREIGN KEY (`BoughtID`) REFERENCES `bought` (`BoughtID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_users_post` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `viewed`
--
ALTER TABLE `viewed`
  ADD CONSTRAINT `FK_users_viewed` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
