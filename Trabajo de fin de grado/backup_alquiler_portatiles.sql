﻿--
-- Script was generated by Devart dbForge Studio for MySQL, Version 8.0.40.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 07/11/2023 11:55:52
-- Server version: 5.5.5-10.1.40-MariaDB
-- Client version: 4.1
--

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

DROP DATABASE IF EXISTS alquiler_portatiles;

CREATE DATABASE alquiler_portatiles
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Set default database
--
USE alquiler_portatiles;

--
-- Create table `almacenes`
--
CREATE TABLE almacenes (
  id_almacen int(11) NOT NULL AUTO_INCREMENT,
  aula varchar(4) DEFAULT NULL,
  capacidad int(4) DEFAULT NULL,
  PRIMARY KEY (id_almacen)
)
ENGINE = INNODB,
AUTO_INCREMENT = 31,
AVG_ROW_LENGTH = 546,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci;

--
-- Create index `uk_aula` on table `almacenes`
--
ALTER TABLE almacenes
ADD UNIQUE INDEX uk_aula (aula);

--
-- Create table `ratones`
--
CREATE TABLE ratones (
  id_raton int(11) NOT NULL AUTO_INCREMENT,
  codigo varchar(4) DEFAULT NULL,
  marca varchar(24) DEFAULT NULL,
  modelo varchar(24) DEFAULT NULL,
  tipo_conector varchar(8) DEFAULT NULL,
  estado_alquiler varchar(24) DEFAULT NULL,
  id_almacen int(11) DEFAULT NULL,
  PRIMARY KEY (id_raton)
)
ENGINE = INNODB,
AUTO_INCREMENT = 31,
AVG_ROW_LENGTH = 546,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci;

--
-- Create index `uk_codigo` on table `ratones`
--
ALTER TABLE ratones
ADD UNIQUE INDEX uk_codigo (codigo);

--
-- Create foreign key
--
ALTER TABLE ratones
ADD CONSTRAINT fk_ratones_almacenes FOREIGN KEY (id_almacen)
REFERENCES almacenes (id_almacen);

--
-- Create table `cargadores`
--
CREATE TABLE cargadores (
  id_cargador int(11) NOT NULL AUTO_INCREMENT,
  codigo varchar(4) DEFAULT NULL,
  potencia int(8) DEFAULT NULL,
  estado_alquiler varchar(24) DEFAULT NULL,
  id_almacen int(11) DEFAULT NULL,
  PRIMARY KEY (id_cargador)
)
ENGINE = INNODB,
AUTO_INCREMENT = 31,
AVG_ROW_LENGTH = 546,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci;

--
-- Create index `uk_codigo` on table `cargadores`
--
ALTER TABLE cargadores
ADD UNIQUE INDEX uk_codigo (codigo);

--
-- Create foreign key
--
ALTER TABLE cargadores
ADD CONSTRAINT fk_cargadores_almacenes FOREIGN KEY (id_almacen)
REFERENCES almacenes (id_almacen);

--
-- Create table `portatiles`
--
CREATE TABLE portatiles (
  id_portatil int(11) NOT NULL AUTO_INCREMENT,
  codigo varchar(4) DEFAULT NULL,
  marca varchar(24) DEFAULT NULL,
  modelo varchar(24) DEFAULT NULL,
  procesador varchar(24) DEFAULT NULL,
  memoria_ram int(4) DEFAULT NULL,
  dispositivo_almacenamiento varchar(24) DEFAULT NULL,
  capacidad_almacenamiento int(8) DEFAULT NULL,
  estado_alquiler varchar(24) DEFAULT NULL,
  id_cargador int(11) DEFAULT NULL,
  id_raton int(11) DEFAULT NULL,
  id_almacen int(11) DEFAULT NULL,
  PRIMARY KEY (id_portatil)
)
ENGINE = INNODB,
AUTO_INCREMENT = 31,
AVG_ROW_LENGTH = 546,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci;

--
-- Create index `uk_codigo` on table `portatiles`
--
ALTER TABLE portatiles
ADD UNIQUE INDEX uk_codigo (codigo);

--
-- Create foreign key
--
ALTER TABLE portatiles
ADD CONSTRAINT fk_portatiles_almacenes FOREIGN KEY (id_almacen)
REFERENCES almacenes (id_almacen);

--
-- Create foreign key
--
ALTER TABLE portatiles
ADD CONSTRAINT fk_portatiles_cargadores FOREIGN KEY (id_cargador)
REFERENCES cargadores (id_cargador);

--
-- Create foreign key
--
ALTER TABLE portatiles
ADD CONSTRAINT fk_portatiles_ratones FOREIGN KEY (id_raton)
REFERENCES ratones (id_raton);

--
-- Create table `aplicaciones_instaladas`
--
CREATE TABLE aplicaciones_instaladas (
  id_aplicacion int(11) NOT NULL AUTO_INCREMENT,
  aplicacion varchar(32) DEFAULT NULL,
  id_portatil int(11) DEFAULT NULL,
  PRIMARY KEY (id_aplicacion)
)
ENGINE = INNODB,
AUTO_INCREMENT = 31,
AVG_ROW_LENGTH = 546,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci;

--
-- Create index `uk_aplicacion_portatil` on table `aplicaciones_instaladas`
--
ALTER TABLE aplicaciones_instaladas
ADD UNIQUE INDEX uk_aplicacion_portatil (aplicacion, id_portatil);

--
-- Create foreign key
--
ALTER TABLE aplicaciones_instaladas
ADD CONSTRAINT fk_aplicaciones_portatiles FOREIGN KEY (id_portatil)
REFERENCES portatiles (id_portatil);

--
-- Create table `alumnos`
--
CREATE TABLE alumnos (
  id_alumno int(11) NOT NULL AUTO_INCREMENT,
  dni varchar(8) DEFAULT NULL,
  nombre varchar(24) DEFAULT NULL,
  apellidos varchar(48) DEFAULT NULL,
  curso varchar(96) DEFAULT NULL,
  aula varchar(4) DEFAULT NULL,
  turno varchar(8) DEFAULT NULL,
  estado_matricula varchar(16) DEFAULT NULL,
  id_portatil int(11) DEFAULT NULL,
  id_cargador int(11) DEFAULT NULL,
  id_raton int(11) DEFAULT NULL,
  PRIMARY KEY (id_alumno)
)
ENGINE = INNODB,
AUTO_INCREMENT = 31,
AVG_ROW_LENGTH = 546,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci;

--
-- Create index `uk_dni` on table `alumnos`
--
ALTER TABLE alumnos
ADD UNIQUE INDEX uk_dni (dni);

--
-- Create foreign key
--
ALTER TABLE alumnos
ADD CONSTRAINT fk_alumnos_cargadores FOREIGN KEY (id_cargador)
REFERENCES cargadores (id_cargador);

--
-- Create foreign key
--
ALTER TABLE alumnos
ADD CONSTRAINT fk_alumnos_portatiles FOREIGN KEY (id_portatil)
REFERENCES portatiles (id_portatil);

--
-- Create foreign key
--
ALTER TABLE alumnos
ADD CONSTRAINT fk_alumnos_ratones FOREIGN KEY (id_raton)
REFERENCES ratones (id_raton);

-- 
-- Dumping data for table almacenes
--
INSERT INTO almacenes VALUES
(1, '438T', 13),
(2, '881J', 38),
(3, '182F', 53),
(4, '872V', 4),
(5, '109F', 23),
(6, '126V', 1),
(7, '022Q', 36),
(8, '970D', 55),
(9, '747N', 56),
(10, '115A', 35),
(11, '345L', 31),
(12, '300Q', 48),
(13, '208U', 23),
(14, '167F', 24),
(15, '983E', 20),
(16, '963Q', 1),
(17, '095B', 57),
(18, '945D', 15),
(19, '330M', 7),
(20, '341U', 45),
(21, '687D', 4),
(22, '874S', 5),
(23, '733U', 25),
(24, '634W', 42),
(25, '217L', 55),
(26, '140H', 10),
(27, '804I', 3),
(28, '029S', 44),
(29, '228N', 7),
(30, '613A', 53);

-- 
-- Dumping data for table cargadores
--
INSERT INTO cargadores VALUES
(1, '652W', 12, 'Disponible', 20),
(2, '485Y', 640, 'Alquilado', 25),
(3, '854F', 713, 'Alquilado', 3),
(4, '551B', 989, 'Disponible', 15),
(5, '286F', 243, 'Disponible', 23),
(6, '622J', 938, 'Disponible', 26),
(7, '874C', 838, 'Alquilado', 25),
(8, '303C', 131, 'Alquilado', 18),
(9, '930O', 586, 'Disponible', 21),
(10, '338I', 748, 'Alquilado', 19),
(11, '211D', 677, 'Averiado', 29),
(12, '014R', 452, 'Averiado', 6),
(13, '544I', 545, 'Alquilado', 25),
(14, '156I', 717, 'Alquilado', 23),
(15, '986Z', 243, 'Averiado', 6),
(16, '501H', 741, 'Disponible', 3),
(17, '296U', 53, 'Averiado', 29),
(18, '060K', 251, 'Disponible', 17),
(19, '116M', 683, 'Averiado', 13),
(20, '726D', 835, 'Disponible', 19),
(21, '553C', 14, 'Averiado', 9),
(22, '922W', 828, 'Averiado', 12),
(23, '855K', 88, 'Alquilado', 14),
(24, '203F', 590, 'Averiado', 21),
(25, '439D', 675, 'Disponible', 4),
(26, '712J', 217, 'Disponible', 14),
(27, '602N', 983, 'Averiado', 22),
(28, '923K', 139, 'Alquilado', 22),
(29, '804B', 404, 'Alquilado', 30),
(30, '538U', 1000, 'Averiado', 18);

-- 
-- Dumping data for table ratones
--
INSERT INTO ratones VALUES
(1, '653T', 'Subblim', 'Easy Delta', 'PS/2', 'Disponible', 21),
(2, '619A', 'NGS', 'M30', 'USB', 'Alquilado', 29),
(3, '995K', 'Hama', 'M50', 'USB', 'Alquilado', 9),
(4, '090Z', 'Equip', 'X300', 'USB', 'Alquilado', 9),
(5, '660O', 'NGS', 'Basics', 'PS/2', 'Disponible', 27),
(6, '210H', 'HP', 'Tick', 'PS/2', 'Disponible', 13),
(7, '174P', 'Hama', 'Flame', 'USB', 'Disponible', 22),
(8, '607K', 'Logitech', 'Tick', 'USB', 'Averiado', 11),
(9, '127G', 'HP', 'M50', 'USB', 'Averiado', 29),
(10, '730R', 'Equip', 'M3000', 'PS/2', 'Averiado', 4),
(11, '688F', 'NGS', 'Business', 'USB', 'Averiado', 25),
(12, '564V', 'Trust', 'Crew', 'USB', 'Alquilado', 23),
(13, '066V', 'HP', 'Mist', 'PS/2', 'Disponible', 22),
(14, '424S', 'Subblim', 'Easy Delta', 'PS/2', 'Disponible', 7),
(15, '478C', 'HP', 'Flame', 'PS/2', 'Alquilado', 18),
(16, '033W', 'Logitech', 'Mist', 'PS/2', 'Alquilado', 22),
(17, '100Z', 'Trust', 'Easy Delta', 'PS/2', 'Averiado', 16),
(18, '381C', 'Trust', 'Flame', 'PS/2', 'Alquilado', 21),
(19, '553O', 'Logitech', 'X300', 'USB', 'Disponible', 13),
(20, '683X', 'Hama', 'Mist', 'USB', 'Alquilado', 4),
(21, '759G', 'NGS', 'X500', 'PS/2', 'Disponible', 21),
(22, '772Z', 'Logitech', 'M70', 'PS/2', 'Disponible', 22),
(23, '286N', 'Trust', 'Mist', 'USB', 'Alquilado', 21),
(24, '510F', 'Equip', 'M8000', 'PS/2', 'Alquilado', 23),
(25, '592I', 'NGS', 'MC-600', 'PS/2', 'Disponible', 17),
(26, '721L', 'Subblim', 'Business', 'USB', 'Averiado', 11),
(27, '905U', 'Equip', 'Easy Delta', 'PS/2', 'Averiado', 25),
(28, '581L', 'Subblim', 'Easy Delta', 'USB', 'Averiado', 2),
(29, '614Y', 'Hama', 'Basics', 'PS/2', 'Averiado', 2),
(30, '674Q', 'Trust', 'X800', 'USB', 'Averiado', 7);

-- 
-- Dumping data for table portatiles
--
INSERT INTO portatiles VALUES
(1, '017G', 'Primux', 'Galaxy Book6', 'Intel Celeron', 48, 'NVMe', 83, 'Averiado', 8, 16, 23),
(2, '813A', 'Asus', 'Galaxy Book4', 'AMD Athlon', 16, 'NVMe', 5593, 'Averiado', 17, 9, 30),
(3, '342D', 'Vant', 'EliteBookm840 G7', 'Intel Pentium', 16, 'HDD', 2786, 'Disponible', 23, 17, 7),
(4, '123W', 'Alurin', '15S-FK9478NS', 'Intel I5 Gen 16', 12, 'SSD', 4322, 'Averiado', 23, 23, 25),
(5, '977T', 'MSI', 'Go Start', 'AMD Ryzen 5 4323', 12, 'SSD', 2559, 'Disponible', 11, 25, 24),
(6, '171I', 'Huawei', 'Vivobook 3A8Q', 'Intel I5 Gen 5', 32, 'SSD', 1258, 'Averiado', 14, 29, 2),
(7, '895W', 'Acer', 'Akoya R40152 MD27315', 'AMD Ryzen 5 4177', 6, 'NVMe', 6968, 'Alquilado', 13, 14, 6),
(8, '249T', 'Polaroid', 'NBW-34757HMPHT', 'Intel Pentium', 12, 'HDD', 1621, 'Alquilado', 9, 14, 18),
(9, '651M', 'Toshiba', 'Extensa 15 EX215-20', 'Intel Celeron', 32, 'HDD', 6371, 'Disponible', 9, 15, 24),
(10, '941B', 'Huawei', 'Galaxy Book4', 'Intel Pentium', 2, 'SSD', 506, 'Alquilado', 8, 26, 10),
(11, '415V', 'Prixton', 'LT100E', 'Intel I9 Gen 6', 4, 'SSD', 3870, 'Disponible', 6, 14, 18),
(12, '417I', 'Samsung', 'Latitude 9822', 'AMD Athlon', 2, 'SSD', 513, 'Alquilado', 24, 29, 24),
(13, '604A', 'Razer', 'Netbook', 'Intel Pentium', 48, 'NVMe', 4520, 'Averiado', 24, 13, 27),
(14, '259B', 'Lenovo', 'Modern 15 B78M-413WUIXES', 'AMD Athlon', 2, 'SSD', 2326, 'Alquilado', 16, 25, 8),
(15, '704U', 'Acer', 'Modern 15 B44M-207WTRXES', 'Intel I3 Gen 10', 4, 'SSD', 710, 'Alquilado', 6, 19, 12),
(16, '440J', 'Medion', 'Akoya O08491 MD68518', 'Intel Celeron', 24, 'NVMe', 5809, 'Disponible', 8, 5, 8),
(17, '152I', 'LG', 'Netbook', 'Intel Pentium', 128, 'NVMe', 404, 'Averiado', 1, 24, 30),
(18, '678W', 'Samsung', 'Extensa 15 EX215-35', 'Intel I9 Gen 15', 8, 'HDD', 5439, 'Disponible', 19, 15, 29),
(19, '154D', 'Thomson', '15S-TC0577NS', 'Intel I9 Gen 6', 8, 'HDD', 4125, 'Averiado', 25, 15, 20),
(20, '375Z', 'Microsoft', 'EliteBookm840 G1', 'Intel I7 Gen 5', 4, 'HDD', 861, 'Alquilado', 18, 10, 28),
(21, '277S', 'Asus', 'V08 G7 JEM', 'AMD Athlon', 128, 'SSD', 4583, 'Averiado', 3, 30, 30),
(22, '465D', 'OEM', 'Aspire 3 A315-199P-677P', 'Intel I3 Gen 7', 2, 'NVMe', 80, 'Averiado', 8, 5, 29),
(23, '395X', 'Realme', 'ThinkPad B669', 'Intel Celeron', 8, 'HDD', 92, 'Disponible', 10, 26, 10),
(24, '415A', 'Denver', 'NBW-36248NLKHL', 'Intel Pentium', 8, 'HDD', 3470, 'Averiado', 12, 24, 24),
(25, '694L', 'HP', 'NBE-11992GAPSL', 'Intel Pentium', 48, 'HDD', 1982, 'Disponible', 19, 1, 15),
(26, '355G', 'Dell', 'Aspire 3 A315-472P-469P', 'AMD Athlon', 48, 'NVMe', 4413, 'Alquilado', 17, 18, 2),
(27, '442M', 'Gigabyte', 'Netbook', 'Intel I7 Gen 5', 32, 'HDD', 1795, 'Disponible', 22, 20, 10),
(28, '587C', 'Innjoo', 'Netbook', 'AMD Ryzen 3 7819', 32, 'SSD', 2130, 'Alquilado', 21, 11, 8),
(29, '244H', 'Toshiba', 'Galaxy Book1', 'Intel I9 Gen 17', 64, 'NVMe', 3647, 'Disponible', 25, 8, 30),
(30, '318W', 'Vant', 'Neo', 'Intel I7 Gen 17', 6, 'NVMe', 929, 'Alquilado', 11, 2, 2);

-- 
-- Dumping data for table aplicaciones_instaladas
--
INSERT INTO aplicaciones_instaladas VALUES
(26, 'Acrobat reader', 10),
(10, 'Audacity', 25),
(29, 'Contasol', 4),
(19, 'dbForge', 28),
(27, 'Dia', 23),
(15, 'Eclipse', 11),
(14, 'Edge', 16),
(20, 'Excel', 22),
(6, 'Figma', 24),
(13, 'Gimp', 17),
(11, 'Git', 26),
(1, 'Google Chrome', 14),
(28, 'Illustrator', 15),
(22, 'Illustrator', 18),
(17, 'Notepad++', 1),
(30, 'Photoshop', 20),
(18, 'PowerPoint', 18),
(3, 'PowerPoint', 21),
(12, 'Unity', 27),
(7, 'VirtualBox', 8),
(21, 'Visual Studio', 13),
(16, 'Visual Studio Code', 5),
(8, 'VLC', 15),
(25, 'VLC', 29),
(4, 'WinRAR', 19),
(24, 'WinRAR', 26),
(2, 'Word', 19),
(9, 'Word', 29),
(5, 'Xampp', 21),
(23, 'Xampp', 30);

-- 
-- Dumping data for table alumnos
--
INSERT INTO alumnos VALUES
(1, '4459285U', 'Jacob', 'Case', 'Primer curso de Administración y Finanzas', '939N', 'Mañana', 'No matriculado', 30, 4, 24),
(2, '2298749A', 'Arron', 'Gallant', 'Primer curso de Documentación y Administración Sanitarias', '671M', 'Tarde', 'Matriculado', 17, 11, 29),
(3, '2571398G', 'Leslie', 'Mathews', 'Segundo curso de Educación Infantil', '827Z', 'Tarde', 'Matriculado', 24, 3, 2),
(4, '9873445Y', 'Geraldo', 'Gallagher', 'Primer curso de Educación Infantil', '840G', 'Tarde', 'Matriculado', 22, 6, 13),
(5, '4177652D', 'Leta', 'Casey', 'Segundo curso de Informática y Comunicaciones', '989E', 'Tarde', 'Matriculado', 1, 11, 12),
(6, '1695363V', 'Dominga', 'Baxter', 'Segundo curso de Integración Social', '657V', 'Mañana', 'No matriculado', 12, 24, 28),
(7, '7516873N', 'Erasmo', 'Neely', 'Primer curso de Desarrollo de Aplicaciones Web', '352Q', 'Tarde', 'No matriculado', 18, 9, 12),
(8, '2299494T', 'Kelley', 'Baumgartner', 'Segundo curso de Administración de Sistemas Informáticos en Red', '895N', 'Mañana', 'No matriculado', 28, 11, 6),
(9, '6522190M', 'Craig', 'Baumann', 'Segundo curso de Servicios Administrativos', '868K', 'Tarde', 'No matriculado', 23, 25, 7),
(10, '7975849G', 'Steve', 'Keenan', 'Primer curso de Gestión Administrativa', '592O', 'Mañana', 'No matriculado', 25, 23, 14),
(11, '2093895F', 'Allen', 'Delacruz', 'Primer curso de Documentación y Administración Sanitarias', '498W', 'Tarde', 'No matriculado', 23, 21, 27),
(12, '6016045P', 'Terrie', 'Casas', 'Primer curso de Sistemas Microinformáticos y Redes', '046X', 'Tarde', 'Matriculado', 5, 19, 25),
(13, '6342972L', 'Sean', 'Renteria', 'Segundo curso de Administración y Finanzas', '802X', 'Mañana', 'Matriculado', 21, 20, 14),
(14, '8854102F', 'Edwin', 'Galindo', 'Segundo curso de Documentación y Administración Sanitarias', '809E', 'Mañana', 'Matriculado', 26, 24, 13),
(15, '7278927R', 'Korey', 'Negrete', 'Segundo curso de Administración y Finanzas', '694A', 'Mañana', 'No matriculado', 15, 10, 15),
(16, '1199932B', 'Porter', 'Neff', 'Primer curso de Integración Social', '112R', 'Mañana', 'No matriculado', 3, 22, 26),
(17, '9744689Y', 'Dallas', 'Bautista', 'Segundo curso de Sistemas Microinformáticos y Redes', '640K', 'Mañana', 'No matriculado', 21, 16, 29),
(18, '4433639P', 'Abigail', 'Delagarza', 'Primer curso de Servicios Administrativos', '616J', 'Mañana', 'No matriculado', 25, 2, 1),
(19, '2411546R', 'Lucy', 'Wagoner', 'Primer curso de Cuidados Auxiliares de Enfermería', '294U', 'Tarde', 'Matriculado', 15, 9, 23),
(20, '5861219F', 'Monet', 'Keene', 'Segundo curso de Gestión Administrativa', '952L', 'Tarde', 'Matriculado', 20, 20, 15),
(21, '0615084Z', 'Barb', 'Reynolds', 'Segundo curso de Desarrollo de Aplicaciones Multiplataforma', '007O', 'Tarde', 'Matriculado', 25, 30, 1),
(22, '8815713C', 'Candace', 'Mathis', 'Primer curso de Cuidados Auxiliares de Enfermería', '450Y', 'Mañana', 'Matriculado', 30, 11, 11),
(23, '8384933D', 'Amiee', 'Reynoso', 'Segundo curso de Documentación y Administración Sanitarias', '772F', 'Mañana', 'No matriculado', 15, 16, 23),
(24, '0358110I', 'Johnie', 'Delarosa', 'Segundo curso de Administración de Sistemas Informáticos en Red', '810S', 'Mañana', 'No matriculado', 10, 3, 20),
(25, '2325916F', 'Clement', 'Reyna', 'Primer curso de Informática y Comunicaciones', '432Q', 'Mañana', 'Matriculado', 27, 17, 3),
(26, '0920843E', 'Shan', 'Baxley', 'Primer curso de Administración de Sistemas Informáticos en Red', '223I', 'Tarde', 'Matriculado', 16, 18, 20),
(27, '9860377H', 'Dylan', 'Cash', 'Segundo curso de Educación Infantil', '046U', 'Tarde', 'Matriculado', 10, 6, 15),
(28, '9572698H', 'Moses', 'Cary', 'Primer curso de Desarrollo de Aplicaciones Multiplataforma', '196R', 'Tarde', 'No matriculado', 30, 18, 14),
(29, '9047045W', 'Christie', 'Neeley', 'Segundo curso de Integración Social', '629Q', 'Tarde', 'No matriculado', 26, 10, 27),
(30, '5459056Y', 'Shemeka', 'Reyes', 'Segundo curso de Desarrollo de Aplicaciones Web', '839T', 'Mañana', 'Matriculado', 30, 11, 30);

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;