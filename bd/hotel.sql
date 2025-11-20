-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2025 at 03:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneno` varchar(50) DEFAULT NULL,
  `cdate` date NOT NULL DEFAULT curdate(),
  `approval` varchar(20) NOT NULL DEFAULT 'Not Allowed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `email`, `phoneno`, `cdate`, `approval`) VALUES
(1, 'Carlos Pérez', 'carlos.perez@gmail.com', '+591 69991234', '2025-10-15', 'Allowed'),
(2, 'María González', 'maria.gonzalez@outlook.com', '+34 678 901 234', '2025-10-20', 'Allowed'),
(3, 'John Davis', 'john.davis@gmail.com', '+1 555 9876543', '2025-11-01', 'Allowed'),
(4, 'Luisa Rojas', 'luisa.rojas@hotmail.com', '+591 72279876', '2025-11-05', 'Not Allowed'),
(5, 'Pedro Sánchez', 'pedro.sanchez@yahoo.com', '+56 9 1234 5678', '2025-11-10', 'Allowed'),
(6, 'Ana Martínez', 'ana.martinez@gmail.com', '+591 67788990', '2025-11-12', 'Allowed'),
(7, 'Thomas Weber', 'thomas.weber@gmx.de', '+49 151 23456789', '2025-11-15', 'Allowed'),
(8, 'Sofía Ramírez', 'sofia.ramirez@bolivia.bo', '+591 78881234', '2025-11-18', 'Allowed');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `usname` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `newsletterlog`
--

CREATE TABLE `newsletterlog` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `news` text NOT NULL,
  `sent_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletterlog`
--

INSERT INTO `newsletterlog` (`id`, `title`, `subject`, `news`, `sent_date`) VALUES
(1, 'Ofertas Especial Navidad 2025', '¡Vive la magia del Salar en Navidad con 20% OFF!', 'Estimado huésped...\n\nTe invitamos a celebrar Navidad y Año Nuevo en Luna de Sal con descuentos exclusivos...', '2025-11-10 14:30:00'),
(2, 'Tours Nocturnos 2026', 'Nuevos tours de estrellas en el Salar de Uyuni', 'Descubre la experiencia única de observar las estrellas en el salar más grande del mundo...\n\nReservas abiertas para temporada 2026.', '2025-11-18 10:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `title` varchar(10) DEFAULT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `troom` varchar(50) NOT NULL,
  `tbed` varchar(50) NOT NULL,
  `nroom` int(11) NOT NULL,
  `cin` date NOT NULL,
  `cout` date NOT NULL,
  `ttot` decimal(10,2) NOT NULL,
  `meal` varchar(50) NOT NULL,
  `mepr` decimal(10,2) NOT NULL,
  `btot` decimal(10,2) NOT NULL,
  `fintot` decimal(10,2) NOT NULL,
  `noofdays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `troom`, `tbed`, `nroom`, `cin`, `cout`, `ttot`, `meal`, `mepr`, `btot`, `fintot`, `noofdays`) VALUES
(1, 'Sr.', 'Juan Carlos', 'Mamani', 'Hab. Doble Sal', 'Cama King', 1, '2025-12-20', '2025-12-24', 480.00, 'Media Pensión', 120.00, 600.00, 600.00, 4),
(2, 'Sra.', 'María', 'Flores', 'Suite Luna', 'Cama King + Jacuzzi', 1, '2025-12-22', '2025-12-27', 1250.00, 'Pensión Completa', 250.00, 1500.00, 1500.00, 5),
(3, 'Sr.', 'Michael', 'Smith', 'Hab. Doble Sal', 'Cama Queen', 1, '2025-12-15', '2025-12-18', 360.00, 'Desayuno', 45.00, 405.00, 405.00, 3),
(4, 'Sra.', 'Sophie', 'Dubois', 'Suite Estrella', 'Cama King + Sala Privada', 1, '2026-01-10', '2026-01-15', 1750.00, 'Pensión Completa', 300.00, 2050.00, 2050.00, 5),
(5, 'Sr.', 'Carlos Andrés', 'López', 'Hab. Simple Sal', 'Cama Individual', 1, '2025-11-25', '2025-11-28', 240.00, 'Desayuno', 30.00, 270.00, 270.00, 3),
(7, 'Sr.', 'Peter', 'Müller', 'Suite Nupcial', 'Cama King + Baño de Sal', 1, '2026-02-14', '2026-02-18', 1400.00, 'Pensión Completa', 280.00, 1680.00, 1680.00, 4),
(8, 'Srta.', 'Laura', 'García', 'Hab. Doble Sal', 'Dos Camas Individuales', 1, '2025-12-18', '2025-12-21', 360.00, 'Desayuno', 45.00, 405.00, 405.00, 3),
(9, 'Sr.', 'Hiroshi', 'Tanaka', 'Suite Premium', 'Cama King + Comedor', 1, '2026-01-05', '2026-01-10', 2000.00, 'Pensión Completa', 350.00, 2350.00, 2350.00, 5),
(10, 'Sra.', 'Valentina', 'Rojas', 'Hab. Triple Sal', 'Tres Camas Individuales', 1, '2025-12-23', '2025-12-27', 720.00, 'Media Pensión', 180.00, 900.00, 900.00, 4),
(13, 'Sr.', 'Luis', 'Condori', 'Hab. Simple Sal', 'Cama Individual', 1, '2025-12-10', '2025-12-13', 240.00, 'Desayuno', 30.00, 270.00, 270.00, 3),
(15, 'Sr.', 'Roberto', 'Sánchez', 'Suite Familiar Sal', 'Cama King + 2 Individuales', 1, '2025-12-28', '2026-01-03', 1800.00, 'Pensión Completa', 360.00, 2160.00, 2160.00, 6),
(20, 'Sra.', 'Patricia', 'Vargas', 'Suite Nupcial', 'Cama King + Baño de Sal', 1, '2026-02-12', '2026-02-16', 1400.00, 'Pensión Completa', 280.00, 1680.00, 1680.00, 4);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `bedding` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `cusid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type`, `bedding`, `place`, `cusid`) VALUES
(1, 'Hab. Simple Sal', 'Cama Individual', 'Planta Baja - Vista Patio', NULL),
(2, 'Hab. Simple Sal', 'Cama Individual', 'Planta Baja - Vista Salar', NULL),
(3, 'Hab. Doble Sal', 'Cama Queen', 'Planta Baja - Vista Salar', NULL),
(4, 'Hab. Doble Sal', 'Cama King', 'Primera Planta - Vista Salar', NULL),
(5, 'Hab. Doble Sal', 'Dos Camas Individuales', 'Primera Planta - Vista Patio', NULL),
(6, 'Suite Luna', 'Cama King + Sofá Cama', 'Primera Planta - Vista Salar', NULL),
(7, 'Suite Luna', 'Cama King + Jacuzzi', 'Segunda Planta - Vista 360°', NULL),
(8, 'Suite Estrella', 'Cama King + Sala Privada', 'Segunda Planta - Vista Salar', NULL),
(9, 'Suite Familiar Sal', 'Cama King + 2 Individuales', 'Planta Baja - Acceso Directo', NULL),
(10, 'Hab. Triple Sal', 'Tres Camas Individuales', 'Primera Planta - Vista Patio', NULL),
(11, 'Hab. Doble Superior', 'Cama King', 'Segunda Planta - Balcón Privado', NULL),
(12, 'Hab. Simple Económica', 'Cama Individual', 'Planta Baja - Interior', NULL),
(13, 'Suite Nupcial', 'Cama King + Baño de Sal', 'Segunda Planta - Vista Salar', NULL),
(14, 'Hab. Doble Confort', 'Cama Queen', 'Primera Planta - Vista Salar', NULL),
(15, 'Suite Premium', 'Cama King + Comedor', 'Segunda Planta - Terraza Privada', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook` (
  `id` int(11) NOT NULL,
  `Title` varchar(10) DEFAULT NULL,
  `FName` varchar(100) NOT NULL,
  `LName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `National` varchar(50) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `TRoom` varchar(50) NOT NULL,
  `Bed` varchar(50) NOT NULL,
  `NRoom` int(11) NOT NULL,
  `Meal` varchar(50) NOT NULL,
  `cin` date NOT NULL,
  `cout` date NOT NULL,
  `stat` varchar(50) NOT NULL,
  `nodays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roombook`
--

INSERT INTO `roombook` (`id`, `Title`, `FName`, `LName`, `Email`, `National`, `Country`, `Phone`, `TRoom`, `Bed`, `NRoom`, `Meal`, `cin`, `cout`, `stat`, `nodays`) VALUES
(1, 'Sr.', 'Juan Carlos', 'Mamani', 'juan.mamani@gmail.com', 'Boliviana', 'Bolivia', '+591 70771234', 'Hab. Doble Sal', 'Cama King', 1, 'Media Pensión', '2025-12-20', '2025-12-24', 'Confirmed', 4),
(2, 'Sra.', 'María', 'Flores', 'mariaflores@hotmail.com', 'Argentina', 'Argentina', '+54 9 11 5678 1234', 'Suite Luna', 'Cama King + Jacuzzi', 1, 'Pensión Completa', '2025-12-22', '2025-12-27', 'Confirmed', 5),
(3, 'Sr.', 'Michael', 'Smith', 'michael.smith@gmail.com', 'Estadounidense', 'Estados Unidos', '+1 555 0123', 'Hab. Doble Sal', 'Cama Queen', 1, 'Desayuno', '2025-12-15', '2025-12-18', 'Confirmed', 3),
(4, 'Sra.', 'Sophie', 'Dubois', 'sophie.dubois@orange.fr', 'Francesa', 'Francia', '+33 6 12 34 56 78', 'Suite Estrella', 'Cama King + Sala Privada', 1, 'Pensión Completa', '2026-01-10', '2026-01-15', 'Confirmed', 5),
(5, 'Sr.', 'Carlos Andrés', 'López', 'carlos.lopez@yahoo.com', 'Colombiano', 'Colombia', '+57 300 1234567', 'Hab. Simple Sal', 'Cama Individual', 1, 'Desayuno', '2025-11-25', '2025-11-28', 'Confirmed', 3),
(6, 'Sra.', 'Ana', 'Quispe', 'ana.quispe@outlook.com', 'Boliviana', 'Bolivia', '+591 77771234', 'Hab. Doble Superior', 'Cama King', 1, 'Media Pensión', '2025-12-26', '2025-12-30', 'Pending', 4),
(7, 'Sr.', 'Peter', 'Müller', 'peter.mueller@gmx.de', 'Alemana', 'Alemania', '+49 176 12345678', 'Suite Nupcial', 'Cama King + Baño de Sal', 1, 'Pensión Completa', '2026-02-14', '2026-02-18', 'Confirmed', 4),
(8, 'Srta.', 'Laura', 'García', 'laura.garcia@gmail.com', 'Española', 'España', '+34 612 345 678', 'Hab. Doble Sal', 'Dos Camas Individuales', 1, 'Desayuno', '2025-12-18', '2025-12-21', 'Confirmed', 3),
(9, 'Sr.', 'Hiroshi', 'Tanaka', 'hiroshi.tanaka@gmail.com', 'Japonesa', 'Japón', '+81 90-1234-5678', 'Suite Premium', 'Cama King + Comedor', 1, 'Pensión Completa', '2026-01-05', '2026-01-10', 'Confirmed', 5),
(10, 'Sra.', 'Valentina', 'Rojas', 'valentina.rojas@bolivia.bo', 'Boliviana', 'Bolivia', '+591 69871234', 'Hab. Triple Sal', 'Tres Camas Individuales', 1, 'Media Pensión', '2025-12-23', '2025-12-27', 'Confirmed', 4),
(11, 'Sr.', 'David', 'Wilson', 'david.wilson@icloud.com', 'Británica', 'Reino Unido', '+44 7700 900123', 'Hab. Doble Sal', 'Cama Queen', 1, 'Desayuno', '2025-11-28', '2025-12-02', 'Confirmed', 4),
(12, 'Sra.', 'Camila', 'Torres', 'camila.torres@gmail.com', 'Chilena', 'Chile', '+56 9 8765 4321', 'Suite Luna', 'Cama King + Sofá Cama', 1, 'Pensión Completa', '2026-01-20', '2026-01-25', 'Pending', 5),
(13, 'Sr.', 'Luis', 'Condori', 'luis.condori@gmail.com', 'Boliviano', 'Bolivia', '+591 72271234', 'Hab. Simple Sal', 'Cama Individual', 1, 'Desayuno', '2025-12-10', '2025-12-13', 'Confirmed', 3),
(14, 'Srta.', 'Emma', 'Brown', 'emma.brown@gmail.com', 'Australiana', 'Australia', '+61 410 123 456', 'Hab. Doble Superior', 'Cama King', 1, 'Media Pensión', '2026-02-07', '2026-07-20', 'Confirmed', 5),
(15, 'Sr.', 'Roberto', 'Sánchez', 'roberto.sanchez@hotmail.com', 'Mexicano', 'México', '+52 1 55 1234 5678', 'Suite Familiar Sal', 'Cama King + 2 Individuales', 1, 'Pensión Completa', '2025-12-28', '2026-01-03', 'Confirmed', 6),
(16, 'Sra.', 'Isabella', 'Costa', 'isabella.costa@gmail.com', 'Brasileña', 'Brasil', '+55 11 98765-4321', 'Hab. Doble Sal', 'Cama Queen', 1, 'Desayuno', '2025-12-19', '2025-12-22', 'Confirmed', 3),
(17, 'Sr.', 'Jean', 'Pierre', 'jean.pierre@free.fr', 'Francesa', 'Francia', '+33 7 89 12 34 56', 'Suite Estrella', 'Cama King + Sala Privada', 1, 'Pensión Completa', '2026-03-01', '2026-03-06', 'Pending', 5),
(18, 'Srta.', 'Sofía', 'Huanca', 'sofia.huanca@outlook.com', 'Boliviana', 'Bolivia', '+591 65571234', 'Hab. Simple Económica', 'Cama Individual', 1, 'Desayuno', '2025-11-22', '2025-11-24', 'Confirmed', 2),
(19, 'Sr.', 'Alexander', 'Kim', 'alex.kim@gmail.com', 'Coreana', 'Corea del Sur', '+82 10-1234-5678', 'Hab. Doble Confort', 'Cama Queen', 1, 'Media Pensión', '2026-01-08', '2026-01-12', 'Confirmed', 4),
(20, 'Sra.', 'Patricia', 'Vargas', 'patricia.vargas@gmail.com', 'Peruana', 'Perú', '+51 987 654 321', 'Suite Nupcial', 'Cama King + Baño de Sal', 1, 'Pensión Completa', '2026-02-12', '2026-02-16', 'Confirmed', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
