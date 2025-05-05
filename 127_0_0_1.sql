-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 05 mai 2025 à 15:53
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"\",\"table\":\"Client\"},{\"db\":\"\",\"table\":\"Projection\"},{\"db\":\"\",\"table\":\"film\"},{\"db\":\"\",\"table\":\"projection\"},{\"db\":\"information_schema\",\"table\":\"CHECK_CONSTRAINTS\"},{\"db\":\"restaurant\",\"table\":\"commande_plats\"},{\"db\":\"restaurant\",\"table\":\"clients\"},{\"db\":\"dossier_medical\",\"table\":\"medecin\"},{\"db\":\"dossier_medical\",\"table\":\"patient\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-05-01 14:16:30', '{\"Console\\/Mode\":\"show\",\"lang\":\"fr\",\"Console\\/Height\":0}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données : `salary_informations_system`
--
CREATE DATABASE IF NOT EXISTS `salary_informations_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `salary_informations_system`;

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `Num_S` int(11) NOT NULL,
  `Label` varchar(255) NOT NULL,
  `Nom_du_manager` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `Num_E` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Position` varchar(255) NOT NULL,
  `Salaire` decimal(10,2) NOT NULL,
  `Department_Num_S` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `employe_projet`
--

CREATE TABLE `employe_projet` (
  `Employe_Num_E` int(11) NOT NULL,
  `Projet_Num_P` int(11) NOT NULL,
  `Role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `Num_P` int(11) NOT NULL,
  `Titre` varchar(255) NOT NULL,
  `Date_de_debut` date NOT NULL,
  `Date_fin` date NOT NULL,
  `Department_Num_S` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`Num_S`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`Num_E`),
  ADD KEY `Department_Num_S` (`Department_Num_S`);

--
-- Index pour la table `employe_projet`
--
ALTER TABLE `employe_projet`
  ADD PRIMARY KEY (`Employe_Num_E`,`Projet_Num_P`),
  ADD KEY `Projet_Num_P` (`Projet_Num_P`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`Num_P`),
  ADD KEY `Department_Num_S` (`Department_Num_S`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`Department_Num_S`) REFERENCES `departement` (`Num_S`);

--
-- Contraintes pour la table `employe_projet`
--
ALTER TABLE `employe_projet`
  ADD CONSTRAINT `employe_projet_ibfk_1` FOREIGN KEY (`Employe_Num_E`) REFERENCES `employe` (`Num_E`),
  ADD CONSTRAINT `employe_projet_ibfk_2` FOREIGN KEY (`Projet_Num_P`) REFERENCES `projet` (`Num_P`);

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`Department_Num_S`) REFERENCES `departement` (`Num_S`);
--
-- Base de données : `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de données : `tidiane_flix`
--
CREATE DATABASE IF NOT EXISTS `tidiane_flix` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tidiane_flix`;

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id_avis` int(11) NOT NULL,
  `note` int(11) DEFAULT NULL CHECK (`note` >= 1 and `note` <= 5),
  `commentaire` text DEFAULT NULL,
  `date_avis` date NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_film` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id_avis`, `note`, `commentaire`, `date_avis`, `id_client`, `id_film`) VALUES
(1, 5, 'Excellent film !', '2025-04-28', 1, 1),
(2, 4, 'Très bon mais un peu long.', '2025-04-28', 2, 2),
(3, 5, 'Chef-d’œuvre !', '2025-04-29', 3, 3),
(4, 3, 'Pas à mon goût.', '2025-04-30', 4, 4),
(5, 5, 'Très émouvant.', '2025-04-30', 5, 5),
(6, 4, 'Bonne histoire.', '2025-05-01', 6, 6),
(7, 2, 'Bof, scénario confus.', '2025-05-02', 7, 7),
(8, 4, 'Sympa pour un dimanche.', '2025-05-02', 8, 8),
(9, 5, 'Mon film préféré !', '2025-05-03', 9, 9),
(10, 3, 'Pas mal.', '2025-05-04', 10, 10);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telehone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `email`, `telehone`) VALUES
(1, 'Niang', 'Cheikh', 'cheikh1@mail.com', '771234567'),
(2, 'Fall', 'Tidiane', 'tidiane2@mail.com', '778765432'),
(3, 'Sow', 'Aminata', 'aminata3@mail.com', '770111222'),
(4, 'Ba', 'Mamadou', 'mamadou4@mail.com', '770222333'),
(5, 'Diop', 'Fatou', 'fatou5@mail.com', '770333444'),
(6, 'Gueye', 'Ousmane', 'ousmane6@mail.com', '770444555'),
(7, 'Ndiaye', 'Seynabou', 'seynabou7@mail.com', '770555666'),
(8, 'Sy', 'Ibrahima', 'ibrahima8@mail.com', '770666777'),
(9, 'Kane', 'Mame', 'mame9@mail.com', '770777888'),
(10, 'Faye', 'Lamine', 'lamine10@mail.com', '770888999'),
(11, 'Sarr', 'Ndèye', 'ndeye11@mail.com', '770999000'),
(12, 'Camara', 'Aliou', 'aliou12@mail.com', '771000111'),
(13, 'Barry', 'Mariama', 'mariama13@mail.com', '771111222'),
(14, 'Mbaye', 'Khady', 'khady14@mail.com', '771222333'),
(15, 'Diagne', 'Serigne', 'serigne15@mail.com', '771333444'),
(16, 'Thiam', 'Pape', 'pape16@mail.com', '771444555'),
(17, 'Fall', 'Coumba', 'coumba17@mail.com', '771555666'),
(18, 'Seck', 'Abdou', 'abdou18@mail.com', '771666777'),
(19, 'Niane', 'Aissatou', 'aissatou19@mail.com', '771777888'),
(20, 'Diallo', 'Boubacar', 'boubacar20@mail.com', '771888999');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id_film` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `date_sortie` date DEFAULT NULL,
  `duree_minutes` int(11) DEFAULT NULL CHECK (`duree_minutes` > 0),
  `realisateur` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_film`, `titre`, `genre`, `date_sortie`, `duree_minutes`, `realisateur`) VALUES
(1, 'Inception', 'Science-fiction', '2010-07-16', 148, 'Christopher Nolan'),
(2, 'Titanic', 'Drame', '1997-12-19', 195, 'James Cameron'),
(3, 'Avengers: Endgame', 'Action', '2019-04-26', 181, 'Anthony Russo'),
(4, 'Interstellar', 'Science-fiction', '2014-11-07', 169, 'Christopher Nolan'),
(5, 'The Matrix', 'Action', '1999-03-31', 136, 'Lana Wachowski'),
(6, 'Joker', 'Drame', '2019-10-04', 122, 'Todd Phillips'),
(7, 'Parasite', 'Thriller', '2019-05-30', 132, 'Bong Joon-ho'),
(8, 'The Godfather', 'Crime', '1972-03-24', 175, 'Francis Ford Coppola'),
(9, 'Pulp Fiction', 'Crime', '1994-10-14', 154, 'Quentin Tarantino'),
(10, 'Fight Club', 'Drame', '1999-10-15', 139, 'David Fincher'),
(11, 'Forrest Gump', 'Drame', '1994-07-06', 142, 'Robert Zemeckis'),
(12, 'The Dark Knight', 'Action', '2008-07-18', 152, 'Christopher Nolan'),
(13, 'Gladiator', 'Action', '2000-05-05', 155, 'Ridley Scott'),
(14, 'Black Panther', 'Action', '2018-02-16', 134, 'Ryan Coogler'),
(15, 'La La Land', 'Musical', '2016-12-09', 128, 'Damien Chazelle');

-- --------------------------------------------------------

--
-- Structure de la table `projection`
--

CREATE TABLE `projection` (
  `id_projection` int(11) NOT NULL,
  `date_projection` date NOT NULL,
  `heure` time NOT NULL,
  `id_film` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `projection`
--

INSERT INTO `projection` (`id_projection`, `date_projection`, `heure`, `id_film`, `id_salle`) VALUES
(1, '2025-05-01', '18:00:00', 1, 1),
(2, '2025-05-01', '21:00:00', 2, 2),
(3, '2025-05-02', '16:00:00', 3, 3),
(4, '2025-05-02', '19:30:00', 4, 1),
(5, '2025-05-03', '17:00:00', 5, 2),
(6, '2025-05-03', '20:00:00', 6, 3),
(7, '2025-05-04', '15:00:00', 7, 1),
(8, '2025-05-04', '18:30:00', 8, 2),
(9, '2025-05-05', '20:00:00', 9, 3),
(10, '2025-05-05', '14:00:00', 10, 1),
(11, '2025-05-06', '16:30:00', 11, 2),
(12, '2025-05-06', '19:00:00', 12, 3),
(13, '2025-05-07', '21:00:00', 13, 1),
(14, '2025-05-07', '17:30:00', 14, 2),
(15, '2025-05-08', '20:00:00', 15, 3),
(16, '2025-05-08', '18:00:00', 1, 1),
(17, '2025-05-09', '19:00:00', 2, 2),
(18, '2025-05-09', '15:00:00', 3, 3),
(19, '2025-05-10', '17:00:00', 4, 1),
(20, '2025-05-10', '20:00:00', 5, 2);

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id_salle` int(11) NOT NULL,
  `nom_salle` varchar(50) NOT NULL,
  `capacite` int(11) DEFAULT NULL CHECK (`capacite` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id_salle`, `nom_salle`, `capacite`) VALUES
(1, 'Salle 1', 120),
(2, 'Salle 2', 80),
(3, 'Salle 3', 150);

-- --------------------------------------------------------

--
-- Structure de la table `ticket`
--

CREATE TABLE `ticket` (
  `id_ticket` int(11) NOT NULL,
  `prix` decimal(6,2) DEFAULT NULL CHECK (`prix` > 0),
  `date_achat` date NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_projection` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ticket`
--

INSERT INTO `ticket` (`id_ticket`, `prix`, `date_achat`, `id_client`, `id_projection`) VALUES
(1, 3000.00, '2025-04-28', 1, 1),
(2, 3000.00, '2025-04-28', 1, 2),
(3, 3500.00, '2025-04-29', 2, 3),
(4, 3500.00, '2025-04-29', 3, 4),
(5, 3000.00, '2025-04-30', 4, 5),
(6, 4000.00, '2025-04-30', 5, 6),
(7, 4000.00, '2025-05-01', 6, 7),
(8, 3000.00, '2025-05-01', 7, 8),
(9, 3500.00, '2025-05-02', 8, 9),
(10, 3500.00, '2025-05-02', 9, 10),
(11, 3000.00, '2025-05-03', 10, 11),
(12, 3000.00, '2025-05-03', 11, 12),
(13, 4000.00, '2025-05-04', 12, 13),
(14, 3000.00, '2025-05-04', 13, 14),
(15, 3500.00, '2025-05-05', 14, 15),
(16, 3500.00, '2025-05-05', 15, 16),
(17, 3000.00, '2025-05-06', 16, 17),
(18, 4000.00, '2025-05-06', 17, 18),
(19, 3000.00, '2025-05-07', 18, 19),
(20, 4000.00, '2025-05-07', 19, 20),
(21, 3000.00, '2025-05-08', 20, 1),
(22, 3500.00, '2025-05-08', 1, 3),
(23, 3500.00, '2025-05-08', 2, 3),
(24, 4000.00, '2025-05-09', 3, 5),
(25, 4000.00, '2025-05-09', 4, 7),
(26, 4000.00, '2025-05-09', 5, 9),
(27, 3500.00, '2025-05-09', 6, 11),
(28, 3500.00, '2025-05-09', 7, 13),
(29, 3000.00, '2025-05-09', 8, 15),
(30, 3000.00, '2025-05-09', 9, 17);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id_avis`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_film` (`id_film`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`);

--
-- Index pour la table `projection`
--
ALTER TABLE `projection`
  ADD PRIMARY KEY (`id_projection`),
  ADD KEY `id_film` (`id_film`),
  ADD KEY `id_salle` (`id_salle`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id_salle`);

--
-- Index pour la table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id_ticket`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_projection` (`id_projection`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `avis_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `avis_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`);

--
-- Contraintes pour la table `projection`
--
ALTER TABLE `projection`
  ADD CONSTRAINT `projection_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`),
  ADD CONSTRAINT `projection_ibfk_2` FOREIGN KEY (`id_salle`) REFERENCES `salle` (`id_salle`);

--
-- Contraintes pour la table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`id_projection`) REFERENCES `projection` (`id_projection`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
