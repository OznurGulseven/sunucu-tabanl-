-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 20 May 2019, 12:08:27
-- Sunucu sürümü: 5.7.19
-- PHP Sürümü: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kdsodev`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilan`
--

DROP TABLE IF EXISTS `ilan`;
CREATE TABLE IF NOT EXISTS `ilan` (
  `ilanID` int(15) NOT NULL,
  `ilanFiyat` int(15) NOT NULL,
  `kimdenID` int(15) NOT NULL,
  `ilanTarih` date NOT NULL,
  `kategori` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `adres` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ilanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ilan`
--

INSERT INTO `ilan` (`ilanID`, `ilanFiyat`, `kimdenID`, `ilanTarih`, `kategori`, `adres`) VALUES
(1, 500, 1, '2019-05-02', 'satilik', 'buca'),
(2, 200, 2, '2019-05-03', 'satilik', 'bornova');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilandetay`
--

DROP TABLE IF EXISTS `ilandetay`;
CREATE TABLE IF NOT EXISTS `ilandetay` (
  `ilanDetayID` int(15) NOT NULL,
  `binaYasi` int(16) NOT NULL,
  `odaSayisi` int(16) NOT NULL,
  `binaKat` int(16) NOT NULL,
  PRIMARY KEY (`ilanDetayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ilandetay`
--

INSERT INTO `ilandetay` (`ilanDetayID`, `binaYasi`, `odaSayisi`, `binaKat`) VALUES
(1, 3, 4, 2),
(2, 5, 2, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE IF NOT EXISTS `kategori` (
  `kategoriID` int(15) NOT NULL,
  `kategoriAD` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`kategoriID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategoriID`, `kategoriAD`) VALUES
(1, 'satilik'),
(2, 'satilik');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kimden`
--

DROP TABLE IF EXISTS `kimden`;
CREATE TABLE IF NOT EXISTS `kimden` (
  `kimdenID` int(15) NOT NULL,
  `kimdenAD` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`kimdenID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kimden`
--

INSERT INTO `kimden` (`kimdenID`, `kimdenAD`) VALUES
(1, 'oznur'),
(2, 'selin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `özellik`
--

DROP TABLE IF EXISTS `özellik`;
CREATE TABLE IF NOT EXISTS `özellik` (
  `isitma` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `kuvet` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `asansor` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kapici` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `özellik`
--

INSERT INTO `özellik` (`isitma`, `kuvet`, `asansor`, `kapici`) VALUES
('kombi', 'var', 'var', 'yok'),
('klima', 'var', 'yok', 'var');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
