-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 21, 2021 at 07:42 PM
-- Server version: 10.3.31-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studiostilo_escolinha`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `bill_parent_id` int(11) DEFAULT NULL,
  `type` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `status` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `parcel_number` smallint(6) DEFAULT NULL,
  `observations` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_user` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancellation_date` datetime DEFAULT NULL,
  `cancellation_reason` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancellation_user` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `client_id`, `bill_parent_id`, `type`, `status`, `description`, `due_date`, `amount`, `parcel_number`, `observations`, `payment_date`, `payment_user`, `cancellation_date`, `cancellation_reason`, `cancellation_user`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, NULL, '1', '1', 'Vida Medeiros Fialho Rodrigues 1/12', '2020-01-05', 100.00, 1, '', NULL, NULL, NULL, NULL, NULL, '2020-03-23 17:51:37', '2020-03-23 17:51:37', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(2, 1, 1, '1', '2', 'Vida Medeiros Fialho Rodrigues [Matrícula]', '2020-01-05', 50.00, NULL, 'Essa conta representa uma matrícula referente a conta 1', '2020-03-23 17:52:00', 'Administrador [1]', NULL, NULL, NULL, '2020-03-23 17:51:37', '2020-03-23 17:52:53', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(3, 1, 1, '1', '1', 'Vida Medeiros Fialho Rodrigues 2/12', '2020-02-05', 100.00, 2, 'Essa conta é referente a conta 1', NULL, NULL, NULL, NULL, NULL, '2020-03-23 17:51:37', NULL, NULL, 'Administrador [1]', NULL, NULL),
(4, 1, 1, '1', '1', 'Vida Medeiros Fialho Rodrigues 3/12', '2020-03-05', 100.00, 3, 'Essa conta é referente a conta 1', NULL, NULL, NULL, NULL, NULL, '2020-03-23 17:51:37', NULL, NULL, 'Administrador [1]', NULL, NULL),
(5, 1, 1, '1', '1', 'Vida Medeiros Fialho Rodrigues 4/12', '2020-04-05', 100.00, 4, 'Essa conta é referente a conta 1', NULL, NULL, NULL, NULL, NULL, '2020-03-23 17:51:37', NULL, NULL, 'Administrador [1]', NULL, NULL),
(6, 1, 1, '1', '1', 'Vida Medeiros Fialho Rodrigues 5/12', '2020-05-05', 100.00, 5, 'Essa conta é referente a conta 1', NULL, NULL, NULL, NULL, NULL, '2020-03-23 17:51:37', NULL, NULL, 'Administrador [1]', NULL, NULL),
(7, 1, 1, '1', '1', 'Vida Medeiros Fialho Rodrigues 6/12', '2020-06-05', 100.00, 6, 'Essa conta é referente a conta 1', NULL, NULL, NULL, NULL, NULL, '2020-03-23 17:51:37', '2020-06-03 14:37:03', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(8, 1, 1, '1', '1', 'Vida Medeiros Fialho Rodrigues 7/12', '2020-07-05', 100.00, 7, 'Essa conta é referente a conta 1', NULL, NULL, NULL, NULL, NULL, '2020-03-23 17:51:37', NULL, NULL, 'Administrador [1]', NULL, NULL),
(9, 1, 1, '1', '1', 'Vida Medeiros Fialho Rodrigues 8/12', '2020-08-05', 100.00, 8, 'Essa conta é referente a conta 1', NULL, NULL, NULL, NULL, NULL, '2020-03-23 17:51:37', NULL, NULL, 'Administrador [1]', NULL, NULL),
(10, 1, 1, '1', '1', 'Vida Medeiros Fialho Rodrigues 9/12', '2020-09-05', 100.00, 9, 'Essa conta é referente a conta 1', NULL, NULL, NULL, NULL, NULL, '2020-03-23 17:51:37', NULL, NULL, 'Administrador [1]', NULL, NULL),
(11, 1, 1, '1', '1', 'Vida Medeiros Fialho Rodrigues 10/12', '2020-10-05', 100.00, 10, 'Essa conta é referente a conta 1', NULL, NULL, NULL, NULL, NULL, '2020-03-23 17:51:37', NULL, NULL, 'Administrador [1]', NULL, NULL),
(12, 1, 1, '1', '1', 'Vida Medeiros Fialho Rodrigues 11/12', '2020-11-05', 100.00, 11, 'Essa conta é referente a conta 1', NULL, NULL, NULL, NULL, NULL, '2020-03-23 17:51:37', NULL, NULL, 'Administrador [1]', NULL, NULL),
(13, 1, 1, '1', '1', 'Vida Medeiros Fialho Rodrigues 12/12', '2020-12-05', 100.00, 12, 'Essa conta é referente a conta 1', NULL, NULL, NULL, NULL, NULL, '2020-03-23 17:51:37', NULL, NULL, 'Administrador [1]', NULL, NULL),
(14, 2, NULL, '1', '1', 'Matrícula do Aluno João Henrique', '2020-01-27', 265.00, NULL, '', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:20:15', '2020-06-03 14:32:01', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(15, 2, NULL, '1', '1', 'mensalidade João Henrique', '2020-02-05', 360.00, NULL, '', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:24:51', '2020-06-03 14:34:03', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(16, 2, NULL, '1', '1', 'mensalidade João Henrique', '2020-03-05', 360.00, NULL, '', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:26:36', '2020-06-03 14:34:21', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(17, 2, NULL, '1', '1', 'mensalidade João Henrique', '2020-04-06', 180.00, NULL, '', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:27:28', '2020-06-03 14:34:59', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(18, 2, NULL, '1', '1', 'mensalidade João Henrique', '2020-05-05', 180.00, NULL, '', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:27:53', '2020-06-03 14:35:17', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(19, 2, NULL, '1', '2', 'João Henrique 1/12', '2020-02-05', 360.00, 1, '', '2020-06-03 14:40:00', 'Administrador [1]', NULL, NULL, NULL, '2020-06-03 14:30:15', '2020-06-03 14:40:16', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(20, 2, 19, '1', '2', 'João Henrique [Matrícula]', '2020-02-05', 265.00, NULL, 'Essa conta representa uma matrícula referente a conta 19', '2020-06-03 14:36:00', 'Administrador [1]', NULL, NULL, NULL, '2020-06-03 14:30:15', '2020-06-03 14:36:47', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(21, 2, 19, '1', '2', 'João Henrique 2/12', '2020-03-05', 360.00, 2, 'Essa conta é referente a conta 19', '2020-06-03 14:41:00', 'Administrador [1]', NULL, NULL, NULL, '2020-06-03 14:30:15', '2020-06-03 14:41:06', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(22, 2, 19, '1', '2', 'João Henrique 3/12', '2020-04-05', 180.00, 3, 'Essa conta é referente a conta 19\r\nPagamento com desconto por motivos de quarentena. ', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:30:15', '2020-06-03 14:42:58', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(23, 2, 19, '1', '2', 'João Henrique 4/12', '2020-05-05', 180.00, 4, 'Essa conta é referente a conta 19.\r\nPagamento com desconto devido a Quarentena.', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:30:15', '2020-06-03 14:44:18', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(24, 2, 19, '1', '2', 'João Henrique 5/12', '2020-06-05', 180.00, 5, 'Essa conta é referente a conta 19.\r\n\r\nPagamento com desconto devido a quarentena. ', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:30:15', '2020-06-03 14:45:54', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(25, 2, 19, '1', '1', 'João Henrique 6/12', '2020-07-05', 360.00, 6, 'Essa conta é referente a conta 19', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:30:15', NULL, NULL, 'Administrador [1]', NULL, NULL),
(26, 2, 19, '1', '1', 'João Henrique 7/12', '2020-08-05', 360.00, 7, 'Essa conta é referente a conta 19', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:30:15', NULL, NULL, 'Administrador [1]', NULL, NULL),
(27, 2, 19, '1', '1', 'João Henrique 8/12', '2020-09-05', 360.00, 8, 'Essa conta é referente a conta 19', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:30:15', NULL, NULL, 'Administrador [1]', NULL, NULL),
(28, 2, 19, '1', '1', 'João Henrique 9/12', '2020-10-05', 360.00, 9, 'Essa conta é referente a conta 19', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:30:15', NULL, NULL, 'Administrador [1]', NULL, NULL),
(29, 2, 19, '1', '1', 'João Henrique 10/12', '2020-11-05', 360.00, 10, 'Essa conta é referente a conta 19', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:30:15', NULL, NULL, 'Administrador [1]', NULL, NULL),
(30, 2, 19, '1', '1', 'João Henrique 11/12', '2020-12-05', 360.00, 11, 'Essa conta é referente a conta 19', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:30:15', NULL, NULL, 'Administrador [1]', NULL, NULL),
(31, 2, 19, '1', '1', 'João Henrique 12/12', '2021-01-05', 360.00, 12, 'Essa conta é referente a conta 19', NULL, NULL, NULL, NULL, NULL, '2020-06-03 14:30:15', NULL, NULL, 'Administrador [1]', NULL, NULL),
(32, 2, NULL, '1', '2', 'teste 1/5', '2021-09-23', 100.00, 1, '', '2021-09-16 18:34:00', 'Administrador [1]', NULL, NULL, NULL, '2021-09-16 18:32:22', '2021-09-16 18:34:00', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(33, 2, 32, '1', '1', 'teste 2/5', '2021-10-23', 100.00, 2, 'Essa conta é referente a conta 32', NULL, NULL, NULL, NULL, NULL, '2021-09-16 18:32:22', NULL, NULL, 'Administrador [1]', NULL, NULL),
(34, 2, 32, '1', '1', 'teste 3/5', '2021-11-23', 100.00, 3, 'Essa conta é referente a conta 32', NULL, NULL, NULL, NULL, NULL, '2021-09-16 18:32:22', NULL, NULL, 'Administrador [1]', NULL, NULL),
(35, 2, 32, '1', '1', 'teste 4/5', '2021-12-23', 100.00, 4, 'Essa conta é referente a conta 32', NULL, NULL, NULL, NULL, NULL, '2021-09-16 18:32:22', NULL, NULL, 'Administrador [1]', NULL, NULL),
(36, 2, 32, '1', '1', 'teste 5/5', '2022-01-23', 100.00, 5, 'Essa conta é referente a conta 32', NULL, NULL, NULL, NULL, NULL, '2021-09-16 18:32:22', NULL, NULL, 'Administrador [1]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `cpf` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_home` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_cell` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_commercial` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_street` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_number` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_neighborhood` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_zipcode` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_complement` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT 1,
  `deleted` smallint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `type`, `cpf`, `email`, `phone_home`, `phone_cell`, `phone_commercial`, `address_street`, `address_number`, `address_neighborhood`, `address_zipcode`, `address_complement`, `status`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Neuma Medeiros', '1', '', 'neudocv@gmail.com', '', '85989301529', '', '', '', '', '', '', 1, 0, '2020-03-23 17:20:05', '2020-03-23 17:20:22', NULL, 'Administrador [1]', 'Administrador [1]', NULL),
(2, 'João de Deus Gomes Aguiar', '1', '74821768372', '', '', '', '', 'Rua Alves de Lima', '224', 'Colônia', '', '', 1, 0, '2020-06-03 14:11:16', NULL, NULL, 'Administrador [1]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_estonian_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1584991225),
('m200202_140810_create_users', 1584991229),
('m200202_202924_create_clients', 1584991229),
('m200202_204109_create_bills', 1584991229),
('m200222_224517_add_bills_bill_id_column_and_fk', 1584991229),
('m200227_215008_add_bills_parcel_number_column', 1584991229);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT 1,
  `deleted` smallint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `auth_key`, `reset_token`, `status`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Administrador', 'admin@cursonota10.com.br', '$2y$13$NEajXraPLya2T1sCvv4b6e/trUUXIVsvNx8sIdfIpY4tUbFPQRqu.', '4wY_hgfx_MCO-F36QMVuk9JFGYMdpbmh', NULL, 1, 0, '2020-03-23 16:20:29', NULL, NULL, 'migration', NULL, NULL),
(2, 'Dayanny Maria', 'dayannymaria@gmail.com', '$2y$13$LrSRcfnGtgmYCaV7/dNKVuIdlW18NReiTbU/hjrqyrSfUKMHMOyb2', 'S6G_GjH8tFwyJhf8ffmAdq-zR-PY0_PS', NULL, 1, 0, '2020-03-23 16:20:29', NULL, NULL, 'migration', NULL, NULL),
(3, 'Lene Medeiros', 'lenemmendonca@gmail.com', '$2y$13$7VQbuw01nnq0Czt3.ZXZnOyrDub.y7q7HdXpkBraIz734d03OJ9Da', NULL, NULL, 1, 0, '2020-03-23 00:00:00', '2020-03-23 00:00:00', NULL, 'migration', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bills_client` (`client_id`),
  ADD KEY `fk_bills_bill_parent_id` (`bill_parent_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `fk_bills_bill_parent_id` FOREIGN KEY (`bill_parent_id`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bills_client` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
