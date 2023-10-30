﻿--
-- Script was generated by Devart dbForge Studio for MySQL, Version 8.0.40.0
-- Product Home Page: http://www.devart.com/dbforge/mysql/studio
-- Script date 30/10/2023 15:38:03
-- Target server version: 5.5.5-10.1.40-MariaDB
-- Target connection string: User Id=root;Host=localhost;Database=test;Character Set=utf8
--



SET NAMES 'utf8';
USE alquiler_portatiles;
--
-- Delete data from the table 'aplicaciones_instaladas'
--
TRUNCATE TABLE aplicaciones_instaladas;
--
-- Delete data from the table 'alumnos'
--
TRUNCATE TABLE alumnos;
--
-- Delete data from the table 'portatiles'
--
DELETE FROM portatiles;
--
-- Delete data from the table 'ratones'
--
DELETE FROM ratones;
--
-- Delete data from the table 'cargadores'
--
DELETE FROM cargadores;
--
-- Delete data from the table 'almacenes'
--
DELETE FROM almacenes;

--
-- Inserting data into table almacenes
--
INSERT INTO almacenes(id_almacen, aula, capacidad) VALUES
(1, '804I', 3),
(2, '613A', 53),
(3, '228N', 7),
(4, '330M', 7),
(5, '634W', 42),
(6, '300Q', 48),
(7, '022Q', 36),
(8, '747N', 56),
(9, '029S', 44),
(10, '963Q', 1),
(11, '217L', 55),
(12, '874S', 5),
(13, '872V', 4),
(14, '208U', 23),
(15, '115A', 35),
(16, '438T', 13),
(17, '167F', 24),
(18, '341U', 45),
(19, '140H', 10),
(20, '109F', 23),
(21, '345L', 31),
(22, '970D', 55),
(23, '733U', 25),
(24, '095B', 57),
(25, '881J', 38),
(26, '126V', 1),
(27, '687D', 4),
(28, '945D', 15),
(29, '983E', 20),
(30, '182F', 53);

--
-- Inserting data into table cargadores
--
INSERT INTO cargadores(id_cargador, codigo, potencia, estado_alquiler, id_almacen) VALUES
(1, '318W', 826, 'Averiado', 20),
(2, '277S', 228, 'Disponible', 10),
(3, '678W', 822, 'Alquilado', 1),
(4, '704U', 561, 'Averiado', 8),
(5, '244H', 967, 'Alquilado', 25),
(6, '154D', 31, 'Disponible', 25),
(7, '355G', 491, 'Averiado', 7),
(8, '395X', 197, 'Disponible', 5),
(9, '123W', 443, 'Alquilado', 29),
(10, '604A', 783, 'Alquilado', 14),
(11, '941B', 583, 'Averiado', 21),
(12, '442M', 936, 'Disponible', 26),
(13, '415A', 542, 'Alquilado', 23),
(14, '440J', 903, 'Averiado', 21),
(15, '587C', 916, 'Disponible', 11),
(16, '017G', 757, 'Alquilado', 21),
(17, '694L', 897, 'Averiado', 1),
(18, '259B', 130, 'Disponible', 2),
(19, '977T', 351, 'Disponible', 20),
(20, '375Z', 294, 'Averiado', 12),
(21, '152I', 930, 'Alquilado', 18),
(22, '465D', 247, 'Alquilado', 21),
(23, '415V', 853, 'Averiado', 8),
(24, '249T', 609, 'Disponible', 24),
(25, '813A', 890, 'Disponible', 7),
(26, '417I', 203, 'Averiado', 14),
(27, '651M', 967, 'Alquilado', 24),
(28, '171I', 49, 'Disponible', 16),
(29, '342D', 67, 'Alquilado', 29),
(30, '895W', 846, 'Averiado', 27);

--
-- Inserting data into table ratones
--
INSERT INTO ratones(id_raton, codigo, marca, modelo, tipo_conector, estado_alquiler, id_almacen) VALUES
(1, '917S', 'Trust', 'M20', 'PS/2', 'Averiado', 15),
(2, '143X', 'Equip', 'X700', 'USB', 'Alquilado', 25),
(3, '442L', 'Subblim', 'Basics', 'USB', 'Disponible', 14),
(4, '919Z', 'Hama', 'Mist', 'USB', 'Averiado', 1),
(5, '518H', 'NGS', 'M90', 'PS/2', 'Disponible', 8),
(6, '552M', 'HP', 'Crew', 'USB', 'Alquilado', 25),
(7, '383I', 'Logitech', 'Easy Delta', 'USB', 'Averiado', 19),
(8, '970A', 'NGS', 'Tick', 'USB', 'Alquilado', 22),
(9, '772B', 'Logitech', 'Easy Delta', 'PS/2', 'Disponible', 25),
(10, '626P', 'Subblim', 'M8000', 'PS/2', 'Averiado', 13),
(11, '434Q', 'HP', 'Mist', 'PS/2', 'Disponible', 27),
(12, '410B', 'Trust', 'Mist', 'USB', 'Alquilado', 14),
(13, '475Q', 'Hama', 'Flame', 'USB', 'Alquilado', 11),
(14, '735R', 'Equip', 'Tick', 'PS/2', 'Averiado', 18),
(15, '851E', 'Hama', 'Basics', 'PS/2', 'Disponible', 10),
(16, '935I', 'Equip', 'Flame', 'USB', 'Alquilado', 6),
(17, '335O', 'Subblim', 'Easy Delta', 'PS/2', 'Averiado', 22),
(18, '461Y', 'NGS', 'Flame', 'PS/2', 'Disponible', 4),
(19, '515V', 'Trust', 'Crew', 'USB', 'Alquilado', 16),
(20, '448H', 'HP', 'MC-400', 'PS/2', 'Averiado', 3),
(21, '558P', 'Logitech', 'Basics', 'USB', 'Disponible', 3),
(22, '857O', 'HP', 'Flame', 'USB', 'Disponible', 26),
(23, '626H', 'Logitech', 'M50', 'USB', 'Alquilado', 19),
(24, '348J', 'Equip', 'Mist', 'USB', 'Averiado', 6),
(25, '016A', 'Subblim', 'M10', 'USB', 'Disponible', 12),
(26, '720H', 'Hama', 'X600', 'USB', 'Alquilado', 12),
(27, '190C', 'NGS', 'Tick', 'PS/2', 'Averiado', 4),
(28, '602V', 'Trust', 'M30', 'PS/2', 'Averiado', 17),
(29, '636K', 'NGS', 'Mist', 'PS/2', 'Disponible', 6),
(30, '059N', 'Trust', 'MC-200', 'USB', 'Alquilado', 26);

--
-- Inserting data into table portatiles
--
INSERT INTO portatiles(id_portatil, codigo, marca, modelo, procesador, memoria_ram, dispositivo_almacenamiento, capacidad_almacenamiento, estado_alquiler, id_cargador, id_raton, id_almacen) VALUES
(1, '687V', 'Vant', 'Neo', 'Intel I7 Gen 15', 6, 'NVMe', 7668, 'Alquilado', 25, 13, 3),
(2, '519K', 'Asus', 'Go Start', 'Intel I9 Gen 6', 128, 'SSD', 569, 'Averiado', 2, 23, 8),
(3, '882R', 'Samsung', 'TravelMate X7 S685', 'Intel Pentium', 8, 'HDD', 2294, 'Disponible', 3, 13, 20),
(4, '381W', 'Acer', 'LT100E', 'Intel I9 Gen 19', 4, 'SSD', 6166, 'Alquilado', 6, 19, 5),
(5, '062G', 'Toshiba', 'Netbook', 'AMD Ryzen 9 7366', 64, 'NVMe', 5247, 'Disponible', 2, 18, 28),
(6, '233L', 'Thomson', 'Galaxy Book3', 'Intel I5 Gen 4', 8, 'HDD', 6658, 'Averiado', 18, 28, 26),
(7, '916O', 'Dell', 'Akoya G35063 MD61255', 'Intel I7 Gen 9', 48, 'NVMe', 7393, 'Alquilado', 25, 18, 29),
(8, '352V', 'Realme', 'Galaxy Book5', 'AMD Ryzen 9 4264', 8, 'HDD', 1592, 'Disponible', 15, 6, 27),
(9, '974Z', 'Alurin', 'Extensa 15 EX215-50', 'AMD Ryzen 7 4539', 12, 'SSD', 3545, 'Averiado', 11, 8, 19),
(10, '973G', 'Razer', 'Aspire 3 A315-145P-120J', 'AMD Athlon', 48, 'NVMe', 3167, 'Averiado', 1, 11, 7),
(11, '227P', 'Huawei', 'NBB-86543XUSIM', 'Intel I7 Gen 19', 2, 'SSD', 4416, 'Alquilado', 15, 17, 10),
(12, '547H', 'Gigabyte', 'EliteBookm840 G3', 'Intel I7 Gen 9', 32, 'HDD', 1107, 'Disponible', 15, 30, 3),
(13, '267L', 'Denver', 'Akoya O80603 MD64708', 'Intel I3 Gen 16', 8, 'HDD', 2665, 'Averiado', 5, 12, 17),
(14, '346U', 'Medion', 'Modern 15 B56M-431EGBXES', 'Intel Celeron', 24, 'NVMe', 1497, 'Disponible', 22, 18, 18),
(15, '123W', 'Innjoo', 'Satellite', 'AMD Athlon', 32, 'SSD', 5389, 'Alquilado', 22, 20, 1),
(16, '885S', 'Primux', 'Ioxbook 91B', 'Intel I5 Gen 10', 48, 'NVMe', 4621, 'Averiado', 23, 7, 23),
(17, '202Q', 'HP', 'Voom Excellence', 'AMD Athlon', 48, 'HDD', 5444, 'Disponible', 29, 3, 5),
(18, '895T', 'Lenovo', 'Satellite', 'Intel Pentium', 2, 'SSD', 87, 'Alquilado', 22, 24, 14),
(19, '988N', 'MSI', 'U6 ZY-97ES265XC', 'AMD Ryzen 5 7944', 12, 'SSD', 6734, 'Disponible', 5, 3, 18),
(20, '122S', 'Microsoft', 'Vostro 8986', 'AMD Ryzen 5 3133', 4, 'HDD', 5265, 'Alquilado', 9, 22, 8),
(21, '757B', 'LG', 'Aspire 3 A315-270P-278A', 'AMD Athlon', 128, 'NVMe', 7591, 'Averiado', 2, 18, 16),
(22, '087H', 'OEM', 'Go Start', 'AMD Athlon', 2, 'NVMe', 378, 'Averiado', 3, 18, 16),
(23, '390I', 'Prixton', 'LT100E', 'Intel Pentium', 4, 'SSD', 78, 'Disponible', 28, 12, 1),
(24, '409G', 'Polaroid', 'Modern 15 B81M-031RXYXES', 'Intel Pentium', 12, 'HDD', 5737, 'Alquilado', 28, 27, 30),
(25, '642U', 'Asus', 'U2 RX-43ES248VH', 'Intel Celeron', 16, 'NVMe', 1514, 'Averiado', 2, 28, 9),
(26, '890R', 'Samsung', 'V34 G1 KRL', 'Intel Pentium', 2, 'SSD', 4020, 'Alquilado', 5, 23, 27),
(27, '809A', 'Toshiba', 'Akoya V08027 MD42288', 'AMD Ryzen 7 5485', 32, 'HDD', 842, 'Disponible', 5, 20, 7),
(28, '619Y', 'Huawei', 'V15 G1 WTW', 'Intel Pentium', 32, 'SSD', 4065, 'Averiado', 25, 28, 2),
(29, '107D', 'Vant', 'EliteBookm840 G3', 'AMD Ryzen 7 7657', 16, 'HDD', 4627, 'Disponible', 7, 20, 1),
(30, '008X', 'Acer', 'NBD-62528CKMCM', 'Intel Pentium', 6, 'NVMe', 836, 'Alquilado', 26, 10, 27);

--
-- Inserting data into table alumnos
--
INSERT INTO alumnos(id_alumno, dni, nombre, apellidos, curso, aula, turno, estado_matricula, id_portatil, id_cargador, id_raton) VALUES
(1, '1163886J', 'Craig', 'Baumann', 'Segundo curso de Servicios Administrativos', '311W', 'Tarde', 'No matriculado', 14, 3, 7),
(2, '1915168U', 'Sean', 'Renteria', 'Segundo curso de Administración y Finanzas', '379Q', 'Mañana', 'Matriculado', 30, 3, 8),
(3, '3386972T', 'Christie', 'Neeley', 'Segundo curso de Integración Social', '379V', 'Tarde', 'No matriculado', 11, 18, 27),
(4, '7220622J', 'Shemeka', 'Reyes', 'Segundo curso de Desarrollo de Aplicaciones Web', '586S', 'Mañana', 'Matriculado', 28, 12, 25),
(5, '8044479R', 'Leslie', 'Mathews', 'Segundo curso de Educación Infantil', '512M', 'Tarde', 'Matriculado', 4, 20, 1),
(6, '3067242Q', 'Steve', 'Keenan', 'Primer curso de Gestión Administrativa', '042N', 'Mañana', 'No matriculado', 4, 16, 28),
(7, '0950814K', 'Erasmo', 'Neely', 'Primer curso de Desarrollo de Aplicaciones Web', '332P', 'Tarde', 'No matriculado', 3, 10, 21),
(8, '6127746L', 'Edwin', 'Galindo', 'Segundo curso de Documentación y Administración Sanitarias', '070L', 'Mañana', 'Matriculado', 19, 28, 3),
(9, '6800911L', 'Moses', 'Cary', 'Primer curso de Desarrollo de Aplicaciones Multiplataforma', '962D', 'Tarde', 'No matriculado', 2, 29, 12),
(10, '7469211D', 'Clement', 'Reyna', 'Primer curso de Informática y Comunicaciones', '037B', 'Mañana', 'Matriculado', 30, 27, 21),
(11, '3036592Z', 'Candace', 'Mathis', 'Primer curso de Cuidados Auxiliares de Enfermería', '409V', 'Mañana', 'Matriculado', 8, 9, 14),
(12, '7292666K', 'Allen', 'Delacruz', 'Primer curso de Documentación y Administración Sanitarias', '141E', 'Tarde', 'No matriculado', 24, 13, 27),
(13, '4126036P', 'Kelley', 'Baumgartner', 'Segundo curso de Administración de Sistemas Informáticos en Red', '973W', 'Mañana', 'No matriculado', 11, 17, 8),
(14, '7619469V', 'Terrie', 'Casas', 'Primer curso de Sistemas Microinformáticos y Redes', '542E', 'Tarde', 'Matriculado', 27, 11, 11),
(15, '6676602N', 'Porter', 'Neff', 'Primer curso de Integración Social', '270V', 'Mañana', 'No matriculado', 29, 10, 12),
(16, '2408990Y', 'Monet', 'Keene', 'Segundo curso de Gestión Administrativa', '293E', 'Tarde', 'Matriculado', 23, 9, 23),
(17, '5771662H', 'Geraldo', 'Gallagher', 'Primer curso de Educación Infantil', '143B', 'Tarde', 'Matriculado', 26, 12, 25),
(18, '6936682M', 'Dallas', 'Bautista', 'Segundo curso de Sistemas Microinformáticos y Redes', '246N', 'Mañana', 'No matriculado', 18, 4, 24),
(19, '4958342A', 'Jacob', 'Case', 'Primer curso de Administración y Finanzas', '693P', 'Mañana', 'No matriculado', 23, 9, 23),
(20, '1449464L', 'Barb', 'Reynolds', 'Segundo curso de Desarrollo de Aplicaciones Multiplataforma', '440B', 'Tarde', 'Matriculado', 3, 4, 3),
(21, '3060736I', 'Abigail', 'Delagarza', 'Primer curso de Servicios Administrativos', '698D', 'Mañana', 'No matriculado', 28, 14, 14),
(22, '2670052J', 'Shan', 'Baxley', 'Primer curso de Administración de Sistemas Informáticos en Red', '979J', 'Tarde', 'Matriculado', 12, 10, 12),
(23, '9375012A', 'Leta', 'Casey', 'Segundo curso de Informática y Comunicaciones', '273S', 'Tarde', 'Matriculado', 26, 13, 12),
(24, '7135707C', 'Korey', 'Negrete', 'Segundo curso de Administración y Finanzas', '279G', 'Mañana', 'No matriculado', 27, 12, 13),
(25, '9649943R', 'Amiee', 'Reynoso', 'Segundo curso de Documentación y Administración Sanitarias', '507J', 'Mañana', 'No matriculado', 13, 25, 7),
(26, '2944816I', 'Lucy', 'Wagoner', 'Primer curso de Cuidados Auxiliares de Enfermería', '957Y', 'Tarde', 'Matriculado', 6, 24, 13),
(27, '5232383U', 'Arron', 'Gallant', 'Primer curso de Documentación y Administración Sanitarias', '495A', 'Tarde', 'Matriculado', 11, 12, 11),
(28, '9518182X', 'Dominga', 'Baxter', 'Segundo curso de Integración Social', '893M', 'Mañana', 'No matriculado', 17, 20, 10),
(29, '4208800N', 'Dylan', 'Cash', 'Segundo curso de Educación Infantil', '221T', 'Tarde', 'Matriculado', 17, 14, 27),
(30, '5292696E', 'Johnie', 'Delarosa', 'Segundo curso de Administración de Sistemas Informáticos en Red', '845S', 'Mañana', 'No matriculado', 12, 26, 27);

--
-- Inserting data into table aplicaciones_instaladas
--
INSERT INTO aplicaciones_instaladas(id_aplicacion, aplicacion, id_portatil) VALUES
(1, 'Word', 6),
(2, 'Photoshop', 20),
(3, 'Figma', 13),
(4, 'Audacity', 17),
(5, 'Visual Studio', 10),
(6, 'Edge', 14),
(7, 'Illustrator', 3),
(8, 'Git', 7),
(9, 'VLC', 4),
(10, 'Acrobat reader', 11),
(11, 'Xampp', 1),
(12, 'Dia', 8),
(13, 'WinRAR', 7),
(14, 'PowerPoint', 3),
(15, 'Eclipse', 23),
(16, 'Illustrator', 4),
(17, 'Unity', 12),
(18, 'Contasol', 9),
(19, 'Word', 5),
(20, 'Gimp', 21),
(21, 'PowerPoint', 2),
(22, 'VirtualBox', 24),
(23, 'WinRAR', 6),
(24, 'VLC', 5),
(25, 'Google Chrome', 18),
(26, 'Xampp', 2),
(27, 'dbForge', 15),
(28, 'Visual Studio Code', 19),
(29, 'Excel', 22),
(30, 'Notepad++', 16);