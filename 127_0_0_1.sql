-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2024 at 10:41 PM
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
-- Database: `360_stock_record`
--
CREATE DATABASE IF NOT EXISTS `360_stock_record` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `360_stock_record`;

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `box_no` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `model_no` varchar(255) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `buying_price` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `day_bought` date NOT NULL,
  `day_sold` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`box_no`, `item_name`, `model_no`, `selling_price`, `in_stock`, `sold`, `buying_price`, `profit`, `day_bought`, `day_sold`) VALUES
(1, 'complete', 'X657,KE5J,KE5K,IT P37', 1000, 1, 1, 750, -650, '0000-00-00', '2025-06-04'),
(2, 'complete', 'KF6,KF6i,X659', 1100, 2, 0, 800, 0, '0000-00-00', '0000-00-00'),
(3, 'complete', 'A04E,M04,', 1100, 1, 0, 800, 0, '0000-00-00', '0000-00-00'),
(4, 'complete', 'A03Core,M013', 1000, 3, 0, 800, 0, '0000-00-00', '0000-00-00'),
(5, 'complete', 'A12,M12,A02', 1000, 1, 0, 800, 0, '0000-00-00', '0000-00-00'),
(6, 'complete', 'KD6,LC7,LC8,KE6', 1000, 1, 1, 950, -850, '0000-00-00', '2025-06-04'),
(7, 'complete', 'CAMON-11,CAMON-11-PRO,CF7', 1000, 2, 1, 850, 150, '0000-00-00', '0000-00-00'),
(8, 'complete', 'A13,M33,M13', 1000, 0, 0, 0, 100, '0000-00-00', '2025-06-03'),
(9, 'complete', 'A03S,A02S', 1100, 2, 0, 800, 0, '0000-00-00', '0000-00-00'),
(10, 'complete', 'A10S', 1000, 1, 0, 800, 0, '0000-00-00', '0000-00-00'),
(11, 'complete', 'A05', 1200, 1, 0, 900, 0, '0000-00-00', '0000-00-00'),
(12, 'complete', 'A05S,', 0, 1, 0, 0, 0, '0000-00-00', '0000-00-00'),
(13, 'complete', 'IT-A56,IT-A56 PRO,RB8S,W6004', 1000, 2, 0, 800, 0, '0000-00-00', '0000-00-00'),
(14, 'touch', 'F1,SA6S,F2', 200, 2, 0, 0, 0, '0000-00-00', '0000-00-00'),
(15, 'complete', 'BC2,POP4', 0, 0, 0, 0, 0, '0000-00-00', '0000-00-00'),
(16, 'touch', 'BA2,IT-P33-PLUS,IT-A55', 0, 1, 0, 0, 0, '0000-00-00', '0000-00-00'),
(17, 'complete', 'X626,X627,CB7', 0, 0, 0, 0, 0, '0000-00-00', '0000-00-00'),
(18, 'complete', 'KF7,X689,X689C', 1200, 2, 0, 900, 0, '0000-00-00', '0000-00-00'),
(19, 'complete', 'RMI-C11,RMI-C12', 1100, 1, 1, 850, 250, '0000-00-00', '2024-11-20'),
(20, 'complete', 'OPPO-A1K,RMI-C2', 0, 1, 0, 0, 0, '0000-00-00', '0000-00-00'),
(21, 'touch', 'RAY-PRO', 200, 2, 0, 0, 0, '0000-00-00', '0000-00-00'),
(22, 'touch', 'RAY', 200, 2, 0, 0, 0, '0000-00-00', '0000-00-00'),
(23, 'touch', 'RAY-2', 200, 2, 0, 0, 0, '0000-00-00', '0000-00-00'),
(24, 'touch', 'B1G,B1C', 200, 1, 0, 0, 0, '0000-00-00', '0000-00-00'),
(25, 'touch', 'B1P', 200, 0, 0, 0, 0, '0000-00-00', '0000-00-00'),
(26, 'touch', 'B1F', 200, 0, 0, 0, 0, '0000-00-00', '0000-00-00'),
(27, 'PIN-LCD', '16-PIN', 200, 0, 0, 0, 0, '0000-00-00', '0000-00-00'),
(28, 'touch', 'RB8S,IT-A56,IT-A56-PRO', 200, 1, 0, 0, 0, '0000-00-00', '0000-00-00'),
(29, 'touch', 'IT-A14', 200, 0, 0, 0, 0, '0000-00-00', '0000-00-00'),
(30, 'touch', 'IT-A36', 200, 0, 0, 0, 0, '0000-00-00', '0000-00-00'),
(31, 'touch', 'IT-A33', 200, 2, 0, 0, 0, '0000-00-00', '0000-00-00'),
(32, 'touch', 'IT-A23,IT-A16,IT-A16-PRO', 200, 0, 0, 0, 0, '0000-00-00', '0000-00-00'),
(33, 'complete', 'NK-C22,NK-C32', 0, 1, 0, 0, 0, '0000-00-00', '0000-00-00'),
(34, 'complete', 'CG6', 0, 1, 0, 0, 0, '0000-00-00', '0000-00-00'),
(35, 'touch', 'LC6', 0, 2, 0, 0, 0, '0000-00-00', '0000-00-00'),
(36, 'complete', 'X609', 0, 2, 0, 0, 0, '0000-00-00', '0000-00-00'),
(37, 'complete', 'X557', 0, 1, 0, 0, 0, '0000-00-00', '0000-00-00'),
(38, 'complete', 'BD4', 0, 1, 0, 0, 0, '0000-00-00', '0000-00-00'),
(39, 'complete', 'RMI-NOTE-7,RMI-NOTE-7-PRO,RMI-NOTE-7-S', 0, 1, 0, 0, 0, '0000-00-00', '0000-00-00'),
(40, 'complete', 'KG5K,KG5J,KG5P', 1100, 2, 0, 900, 0, '0000-00-00', '0000-00-00'),
(41, 'complete', 'KC2,KC8,CC7,X650,CAMON-12', 1000, 4, 0, 750, 0, '0000-00-00', '0000-00-00'),
(42, 'complete', 'KA7', 0, 1, 0, 0, 0, '0000-00-00', '0000-00-00'),
(43, 'complete', 'X624,SPARK-3,KB7', 1000, 1, 1, 800, -700, '0000-00-00', '2025-06-03'),
(44, 'touch', 'RA6S,R6+', 0, 2, 0, 0, 0, '0000-00-00', '0000-00-00'),
(45, 'complete', 'A04S', 0, 2, 0, 0, 0, '0000-00-00', '0000-00-00'),
(46, 'complete', 'SM-J110', 0, 1, 0, 0, 0, '0000-00-00', '0000-00-00'),
(47, 'complete', 'CD6', 0, 2, 0, 0, 0, '0000-00-00', '0000-00-00'),
(48, 'PIN-LCD', '20-PIN MEDIUM', 150, 0, 0, 90, 0, '0000-00-00', '0000-00-00'),
(49, 'PIN-LCD', '24-PIN LARGE', 150, 0, 0, 90, 0, '0000-00-00', '0000-00-00'),
(50, 'PIN-LCD', '37-PIN MEDIUM', 250, 0, 0, 159, 0, '0000-00-00', '0000-00-00'),
(51, 'PIN-LCD', '37-PIN LARGE', 0, 0, 0, 0, 0, '0000-00-00', '0000-00-00'),
(52, 'PIN-LCD', 'NOKIA TA-1034', 180, 0, 0, 110, 0, '0000-00-00', '0000-00-00'),
(53, 'touch', 'IT-A16+,IT-A24,A510W', 0, 0, 0, 0, 0, '0000-00-00', '0000-00-00'),
(54, 'test item1', 'test-item1-model', 100, 470, 33, 800, -700, '2024-04-12', '2024-11-20'),
(97, 'PIN-LCD', '24-PIN MEDIUM', 250, 0, 0, 150, 0, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_records`
--

CREATE TABLE `sales_records` (
  `box_no` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `model_no` varchar(255) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `buying_price` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `day_bought` date NOT NULL,
  `day_sold` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_records`
--

INSERT INTO `sales_records` (`box_no`, `item_name`, `model_no`, `selling_price`, `in_stock`, `sold`, `buying_price`, `profit`, `day_bought`, `day_sold`) VALUES
(56, 'TEST ITEM1', 'test-item1-model', 100, 470, 33, 800, -700, '2024-04-12', '2024-11-20'),
(19, 'COMPLETE', 'RMI-C11,RMI-C12', 1100, 1, 1, 850, 250, '0000-00-00', '2025-06-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`box_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `box_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
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
-- Table structure for table `pma__central_columns`
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
-- Table structure for table `pma__column_info`
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
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', '360_stock_record', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"360_stock_record\",\"phpmyadmin\",\"test\",\"test-db\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
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
-- Table structure for table `pma__navigationhiding`
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
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"360_stock_record\",\"table\":\"records\"},{\"db\":\"360_stock_record\",\"table\":\"sales_records\"},{\"db\":\"360_stock_record\",\"table\":\"sales records\"},{\"db\":\"test-db\",\"table\":\"user_info\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
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
-- Table structure for table `pma__savedsearches`
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
-- Table structure for table `pma__table_coords`
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
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', '360_stock_record', 'records', '{\"sorted_col\":\"`box_no` DESC\"}', '2024-12-19 23:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
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
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-12-22 21:33:06', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `test-db`
--
CREATE DATABASE IF NOT EXISTS `test-db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test-db`;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gfg_username` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `first_name`, `last_name`, `gfg_username`) VALUES
(1, 'Rohit', 'Kumar', 'rohitk987'),
(2, 'Nisha', 'Jadhav', 'nishajadhav001'),
(3, 'Aayush', 'Joshi', 'geeky1aayush'),
(4, 'Shweta', 'Pawar', 'shwetap12gfg'),
(5, 'Julie', 'Dooley', 'julie@example.com'),
(6, 'Julie', 'Dooley', 'julie@example.com'),
(7, 'Julie', 'Dooley', 'julie@example.com'),
(8, 'Julie', 'Dooley', 'julie@example.com'),
(9, 'John', 'Doe', 'john@example.com'),
(10, 'John', 'Doe', 'john@example.com'),
(11, 'Mary', 'Moe', 'mary@example.com'),
(12, 'Julie', 'Dooley', 'julie@example.com'),
(13, 'John', 'Doe', 'john@example.com'),
(14, 'John', 'Doe', 'john@example.com'),
(15, 'Mary', 'Moe', 'mary@example.com'),
(16, 'Julie', 'Dooley', 'julie@example.com'),
(17, 'John', 'Doe', 'john@example.com'),
(18, 'John', 'Doe', 'john@example.com'),
(19, 'Mary', 'Moe', 'mary@example.com'),
(20, 'Julie', 'Dooley', 'julie@example.com'),
(21, 'John', 'Doe', 'john@example.com'),
(22, 'John', 'Doe', 'john@example.com'),
(23, 'Mary', 'Moe', 'mary@example.com'),
(24, 'Julie', 'Dooley', 'julie@example.com'),
(25, 'John', 'Doe', 'john@example.com'),
(26, 'John', 'Doe', 'john@example.com'),
(27, 'Mary', 'Moe', 'mary@example.com'),
(28, 'Julie', 'Dooley', 'julie@example.com'),
(29, 'John', 'Doe', 'john@example.com'),
(30, 'John', 'Doe', 'john@example.com'),
(31, 'Mary', 'Moe', 'mary@example.com'),
(32, 'Julie', 'Dooley', 'julie@example.com'),
(33, 'John', 'Doe', 'john@example.com'),
(34, 'John', 'Doe', 'john@example.com'),
(35, 'Mary', 'Moe', 'mary@example.com'),
(36, 'Julie', 'Dooley', 'julie@example.com'),
(37, 'John', 'Doe', 'john@example.com'),
(38, 'John', 'Doe', 'john@example.com'),
(39, 'Mary', 'Moe', 'mary@example.com'),
(40, 'Julie', 'Dooley', 'julie@example.com'),
(41, 'John', 'Doe', 'john@example.com'),
(42, 'John', 'Doe', 'john@example.com'),
(43, 'Mary', 'Moe', 'mary@example.com'),
(44, 'Julie', 'Dooley', 'julie@example.com'),
(45, 'John', 'Doe', 'john@example.com'),
(46, 'John', 'Doe', 'john@example.com'),
(47, 'Mary', 'Moe', 'mary@example.com'),
(48, 'Julie', 'Dooley', 'julie@example.com'),
(49, 'John', 'Doe', 'john@example.com'),
(50, 'John', 'Doe', 'john@example.com'),
(51, 'Mary', 'Moe', 'mary@example.com'),
(52, 'Julie', 'Dooley', 'julie@example.com'),
(53, 'John', 'Doe', 'john@example.com'),
(54, 'John', 'Doe', 'john@example.com'),
(55, 'Mary', 'Moe', 'mary@example.com'),
(56, 'Julie', 'Dooley', 'julie@example.com'),
(57, 'Johnson', 'sure', 'mmsure0012@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
