-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 02:00 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdm`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('40f5192e8cfee3f0ca462c2f8ab7152ddf7d2542', '2023-08-08 09:22:10.024948', 8),
('4d26a37c5051b9cc4e297574d03e2aafb317dbc4', '2023-08-07 16:18:43.693360', 7),
('5a4cf97aef2e80b32397edf676d4e05738e37a6b', '2023-08-05 03:21:07.775265', 4),
('9be2d647433764cf4903fac9406d66d64b94cb28', '2023-08-05 03:10:24.547762', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Full Document Control'),
(1, 'test r');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(2, 1, 37),
(1, 1, 38),
(4, 1, 46),
(3, 1, 48),
(13, 2, 37),
(12, 2, 38),
(14, 2, 39),
(11, 2, 40),
(9, 2, 45),
(8, 2, 46),
(10, 2, 47),
(7, 2, 48);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add Token', 6, 'add_token'),
(22, 'Can change Token', 6, 'change_token'),
(23, 'Can delete Token', 6, 'delete_token'),
(24, 'Can view Token', 6, 'view_token'),
(25, 'Can add token', 7, 'add_tokenproxy'),
(26, 'Can change token', 7, 'change_tokenproxy'),
(27, 'Can delete token', 7, 'delete_tokenproxy'),
(28, 'Can view token', 7, 'view_tokenproxy'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add user confirmation', 9, 'add_userconfirmation'),
(34, 'Can change user confirmation', 9, 'change_userconfirmation'),
(35, 'Can delete user confirmation', 9, 'delete_userconfirmation'),
(36, 'Can view user confirmation', 9, 'view_userconfirmation'),
(37, 'Can add role', 10, 'add_role'),
(38, 'Can change role', 10, 'change_role'),
(39, 'Can delete role', 10, 'delete_role'),
(40, 'Can view role', 10, 'view_role'),
(41, 'Can add login history', 11, 'add_loginhistory'),
(42, 'Can change login history', 11, 'change_loginhistory'),
(43, 'Can delete login history', 11, 'delete_loginhistory'),
(44, 'Can view login history', 11, 'view_loginhistory'),
(45, 'Can add document', 12, 'add_document'),
(46, 'Can change document', 12, 'change_document'),
(47, 'Can delete document', 12, 'delete_document'),
(48, 'Can view document', 12, 'view_document'),
(49, 'Can add notifications', 13, 'add_notifications'),
(50, 'Can change notifications', 13, 'change_notifications'),
(51, 'Can delete notifications', 13, 'delete_notifications'),
(52, 'Can view notifications', 13, 'view_notifications'),
(53, 'Can add group time', 14, 'add_grouptime'),
(54, 'Can change group time', 14, 'change_grouptime'),
(55, 'Can delete group time', 14, 'delete_grouptime'),
(56, 'Can view group time', 14, 'view_grouptime'),
(57, 'Can add document', 15, 'add_document'),
(58, 'Can change document', 15, 'change_document'),
(59, 'Can delete document', 15, 'delete_document'),
(60, 'Can view document', 15, 'view_document');

-- --------------------------------------------------------

--
-- Table structure for table `coreapp_loginhistory`
--

CREATE TABLE `coreapp_loginhistory` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `user_agent` varchar(500) NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coreapp_loginhistory`
--

INSERT INTO `coreapp_loginhistory` (`id`, `created_at`, `updated_at`, `ip_address`, `user_agent`, `is_success`, `user_id`) VALUES
(1, '2023-08-05 03:10:24.102779', '2023-08-05 03:10:24.551717', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 1, 1),
(4, '2023-08-05 03:21:07.439266', '2023-08-05 03:21:07.788519', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `coreapp_role`
--

CREATE TABLE `coreapp_role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coreapp_role`
--

INSERT INTO `coreapp_role` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Document Manager', '2023-08-05 03:11:06.175935', '2023-08-05 03:11:06.175935');

-- --------------------------------------------------------

--
-- Table structure for table `coreapp_role_groups`
--

CREATE TABLE `coreapp_role_groups` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coreapp_role_groups`
--

INSERT INTO `coreapp_role_groups` (`id`, `role_id`, `group_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `coreapp_user`
--

CREATE TABLE `coreapp_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `gender` smallint(6) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `joining_date` datetime(6) DEFAULT NULL,
  `blood_group` varchar(20) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_customer` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coreapp_user`
--

INSERT INTO `coreapp_user` (`id`, `password`, `last_login`, `first_name`, `last_name`, `email`, `mobile`, `slug`, `image`, `gender`, `date_of_birth`, `joining_date`, `blood_group`, `address`, `is_verified`, `is_approved`, `is_active`, `is_customer`, `is_staff`, `is_superuser`, `created_at`, `role_id`) VALUES
(1, 'pbkdf2_sha256$390000$o9RfMettcgKbpzABh4PgXc$RiXafHRbhoJNFzsetMnmgJohL98sr+PlCzJRMXcY3hU=', '2023-08-07 16:16:07.821898', 'True', 'True', 'admin@admin.com', NULL, 'bound-method-userget_full_name-of-user-adminadmincom', 'default/user_placeholder.jpg', NULL, NULL, '2023-08-05 02:14:01.719511', NULL, NULL, 1, 1, 1, 0, 1, 1, '2023-08-05 02:14:01.719511', NULL),
(4, 'pbkdf2_sha256$390000$BcTpwrDgE7yi0p1Szmq4Bn$1xTPFdLcW6WwX0W37p2Ii2rLfWq5d4XA26eMmpXzJnU=', NULL, 'Rakib', 'string', 'rakib@rakib.com', NULL, 'bound-method-userget_full_name-of-user-rakibrakibcom', 'default/user_placeholder.jpg', 0, NULL, '2023-08-05 03:21:02.382765', NULL, NULL, 0, 1, 1, 0, 0, 0, '2023-08-05 03:21:02.382765', 1),
(7, 'pbkdf2_sha256$390000$EoBNTI9iWWGEsRyWJzFGjh$Dqg0WKLKp/x0h4P2ZmJZfJD+5RmI+hOyr4JMSyILGdc=', NULL, 'user', 'normal', 'user@user.com', NULL, 'bound-method-userget_full_name-of-user-userusercom', 'default/user_placeholder.jpg', NULL, NULL, '2023-08-07 16:15:27.656277', NULL, NULL, 0, 1, 1, 0, 0, 0, '2023-08-07 16:15:27.656277', NULL),
(8, 'pbkdf2_sha256$390000$nlOvPUTlBSGGUBJGRUGOI9$v5zyaOsABch84eA8zqaYoHEqpYvCaC4R6osiE/0h5sY=', NULL, 'True', 'True', 'admin2@admin.com', NULL, 'bound-method-userget_full_name-of-user-admin2admincom', 'default/user_placeholder.jpg', NULL, NULL, '2023-08-08 09:21:52.646047', NULL, NULL, 1, 1, 1, 0, 1, 1, '2023-08-08 09:21:52.646047', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coreapp_userconfirmation`
--

CREATE TABLE `coreapp_userconfirmation` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `confirmation_code` varchar(100) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `is_used` tinyint(1) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coreapp_userconfirmation`
--

INSERT INTO `coreapp_userconfirmation` (`id`, `created_at`, `updated_at`, `confirmation_code`, `ip_address`, `is_used`, `user_id`) VALUES
(2, '2023-08-05 03:21:02.709887', '2023-08-05 03:21:02.709887', '842938', '127.0.0.1', 0, 4),
(3, '2023-08-07 16:15:28.026096', '2023-08-07 16:15:28.026096', '408676', '127.0.0.1', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `coreapp_user_groups`
--

CREATE TABLE `coreapp_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coreapp_user_groups`
--

INSERT INTO `coreapp_user_groups` (`id`, `user_id`, `group_id`) VALUES
(2, 1, 2),
(1, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `coreapp_user_user_permissions`
--

CREATE TABLE `coreapp_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coreapp_user_user_permissions`
--

INSERT INTO `coreapp_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(2, 1, 45),
(3, 1, 46),
(4, 1, 47),
(1, 1, 48);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-08-05 02:14:41.052931', '1', '7b5e5109dd7e0ca90679b855e45a8c8bd4b5eeb6', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-08-05 03:11:06.179893', '1', 'Document Manager', 1, '[{\"added\": {}}]', 10, 1),
(3, '2023-08-05 03:20:34.793477', '2', 'rakib@rakib.com', 3, '', 8, 1),
(4, '2023-08-06 16:45:49.891668', '1', 'admin@admin.com', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 8, 1),
(5, '2023-08-06 16:46:19.162355', '1', 'admin@admin.com', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 8, 1),
(6, '2023-08-07 16:18:43.693360', '7', '4d26a37c5051b9cc4e297574d03e2aafb317dbc4', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-08-07 16:22:54.092897', '1', 'admin@admin.com - documents/2023/08/06/Backend_Task_9pDV9ET.pdf', 2, '[{\"changed\": {\"fields\": [\"Owner\"]}}]', 15, 1),
(8, '2023-08-08 09:22:10.024948', '8', '40f5192e8cfee3f0ca462c2f8ab7152ddf7d2542', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(6, 'authtoken', 'token'),
(7, 'authtoken', 'tokenproxy'),
(4, 'contenttypes', 'contenttype'),
(12, 'coreapp', 'document'),
(11, 'coreapp', 'loginhistory'),
(10, 'coreapp', 'role'),
(8, 'coreapp', 'user'),
(9, 'coreapp', 'userconfirmation'),
(15, 'documents', 'document'),
(5, 'sessions', 'session'),
(14, 'userapp', 'grouptime'),
(13, 'userapp', 'notifications');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-03 15:22:33.145903'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-08-03 15:22:33.267361'),
(3, 'auth', '0001_initial', '2023-08-03 15:22:33.867829'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-08-03 15:22:33.997704'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-08-03 15:22:34.015453'),
(6, 'auth', '0004_alter_user_username_opts', '2023-08-03 15:22:34.027124'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-08-03 15:22:34.041493'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-08-03 15:22:34.051522'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-08-03 15:22:34.061496'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-08-03 15:22:34.075527'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-08-03 15:22:34.091889'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-08-03 15:22:34.122877'),
(13, 'auth', '0011_update_proxy_permissions', '2023-08-03 15:22:34.139066'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-08-03 15:22:34.153740'),
(15, 'coreapp', '0001_initial', '2023-08-03 15:22:36.299338'),
(16, 'admin', '0001_initial', '2023-08-03 15:22:36.596601'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-08-03 15:22:36.622532'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-03 15:22:36.672388'),
(19, 'authtoken', '0001_initial', '2023-08-03 15:22:36.957303'),
(20, 'authtoken', '0002_auto_20160226_1747', '2023-08-03 15:22:37.027296'),
(21, 'authtoken', '0003_tokenproxy', '2023-08-03 15:22:37.039194'),
(22, 'sessions', '0001_initial', '2023-08-03 15:22:37.117440'),
(23, 'userapp', '0001_initial', '2023-08-03 15:22:37.462569'),
(24, 'coreapp', '0002_alter_role_created_at_alter_role_updated_at_and_more', '2023-08-06 16:47:51.762284'),
(25, 'documents', '0001_initial', '2023-08-06 16:47:52.274308'),
(26, 'documents', '0002_alter_document_document', '2023-08-07 17:04:03.422651');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('azot7g04rscsy4al7md6bv5kb6b75nfl', '.eJxVjEEOwiAQRe_C2hCQoTAu3XsGMjAgVUOT0q6Md7dNutDtf-_9twi0LjWsPc9hZHERWpx-t0jpmdsO-EHtPsk0tWUeo9wVedAubxPn1_Vw_w4q9brVaNDETXfkIiaXjB2s8oVRac_eqOSVQVuU0U4hRHDAA2U6E-gC2YP4fAHTSzdJ:1qS6oJ:xdSwGQM9HyEAiZEYCbNAamg-_6JZsafLkNZV8oFtcvk', '2023-08-19 02:14:31.423057'),
('iw4fq3sl83rvznu97jiddphjx4mjwrxd', '.eJxVjEEOwiAQRe_C2hCQoTAu3XsGMjAgVUOT0q6Md7dNutDtf-_9twi0LjWsPc9hZHERWpx-t0jpmdsO-EHtPsk0tWUeo9wVedAubxPn1_Vw_w4q9brVaNDETXfkIiaXjB2s8oVRac_eqOSVQVuU0U4hRHDAA2U6E-gC2YP4fAHTSzdJ:1qT2tr:NfyT45EYxBjWo-8BuxecU4uTp2_jCZsAQ-FAbdyx_Dw', '2023-08-21 16:16:07.837868');

-- --------------------------------------------------------

--
-- Table structure for table `documents_document`
--

CREATE TABLE `documents_document` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `document` varchar(100) NOT NULL,
  `doc_type` smallint(6) NOT NULL,
  `owner_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documents_document`
--

INSERT INTO `documents_document` (`id`, `created_at`, `updated_at`, `title`, `description`, `document`, `doc_type`, `owner_id`) VALUES
(1, '2023-08-06 16:48:01.071666', '2023-08-07 16:22:54.077199', 'test_file', '', 'documents/2023/08/06/Backend_Task_9pDV9ET.pdf', 3, 1),
(2, '2023-08-07 16:23:41.080015', '2023-08-07 16:23:41.080015', 'test_file', NULL, 'documents/2023/08/07/Backend_Task.pdf', 3, NULL),
(3, '2023-08-07 16:25:01.352505', '2023-08-07 16:25:01.352505', 'test_file', NULL, 'documents/2023/08/07/Backend_Task_Hu8O3KB.pdf', 3, 1),
(4, '2023-08-07 16:25:17.901844', '2023-08-07 16:25:17.902841', 'test_file', NULL, 'documents/2023/08/07/Backend_Task_7uDNEjg.pdf', 3, 7),
(5, '2023-08-07 16:25:45.959395', '2023-08-07 16:34:25.765803', 'test_file', NULL, 'documents/2023/08/07/Backend_Task_YkyI5ki.pdf', 3, 1),
(6, '2023-08-07 17:14:07.016977', '2023-08-07 17:14:07.017975', 'test_file', NULL, 'documents/2023/08/07/SamplePNGImage_20mbmb.png', 3, 1),
(7, '2023-08-07 17:15:24.913103', '2023-08-07 17:15:24.913103', 'test_file', NULL, 'documents/2023/08/07/SamplePNGImage_20mbmb_lgJa3KK.png', 3, 1),
(8, '2023-08-07 17:16:08.884138', '2023-08-07 17:16:08.884138', 'test_file', NULL, 'documents/2023/08/07/SamplePNGImage_20mbmb_cR7Np5L.png', 3, 1),
(9, '2023-08-07 17:18:34.378477', '2023-08-07 17:18:34.378477', 'test_file', NULL, 'documents/2023/08/07/SamplePNGImage_20mbmb_cW3jCij.png', 3, 1),
(10, '2023-08-07 17:24:00.998658', '2023-08-07 17:24:00.998658', 'test_file', NULL, 'documents/2023/08/07/SamplePNGImage_20mbmb_FzJNyzd.png', 3, 1),
(11, '2023-08-07 17:24:40.180350', '2023-08-07 17:24:40.180350', 'test_file', NULL, 'documents/2023/08/07/SamplePNGImage_20mbmb_hv3yMNf.png', 3, 1),
(12, '2023-08-08 10:18:02.558096', '2023-08-08 10:18:02.558096', 'test_file', NULL, 'documents/2023/08/08/Backend_Task.pdf', 3, 1),
(13, '2023-08-08 10:41:32.536941', '2023-08-08 10:41:32.536941', 'test_file', NULL, 'documents/2023/08/08/SampleDOCFile_200kb.doc', 3, 1),
(14, '2023-08-08 10:50:54.958309', '2023-08-08 10:50:54.958309', 'test_file', NULL, 'documents/2023/08/08/file-sample_100kB.docx', 3, 1),
(15, '2023-08-08 10:56:00.840582', '2023-08-08 10:56:00.840582', 'test_file', NULL, 'documents/2023/08/08/Work_with_us.docx', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `documents_document_shared_with`
--

CREATE TABLE `documents_document_shared_with` (
  `id` bigint(20) NOT NULL,
  `document_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documents_document_shared_with`
--

INSERT INTO `documents_document_shared_with` (`id`, `document_id`, `user_id`) VALUES
(1, 5, 4),
(2, 5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `userapp_grouptime`
--

CREATE TABLE `userapp_grouptime` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userapp_notifications`
--

CREATE TABLE `userapp_notifications` (
  `id` bigint(20) NOT NULL,
  `title` varchar(150) NOT NULL,
  `info` varchar(250) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `coreapp_loginhistory`
--
ALTER TABLE `coreapp_loginhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coreapp_loginhistory_user_id_89b0ac30_fk_coreapp_user_id` (`user_id`),
  ADD KEY `coreapp_loginhistory_created_at_f85ab04b` (`created_at`),
  ADD KEY `coreapp_loginhistory_updated_at_30bfb462` (`updated_at`);

--
-- Indexes for table `coreapp_role`
--
ALTER TABLE `coreapp_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coreapp_role_created_at_2dae7759` (`created_at`),
  ADD KEY `coreapp_role_updated_at_4fae7acd` (`updated_at`);

--
-- Indexes for table `coreapp_role_groups`
--
ALTER TABLE `coreapp_role_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coreapp_role_groups_role_id_group_id_0dda1326_uniq` (`role_id`,`group_id`),
  ADD KEY `coreapp_role_groups_group_id_1fdc5234_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `coreapp_user`
--
ALTER TABLE `coreapp_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `coreapp_user_role_id_f075bcef_fk_coreapp_role_id` (`role_id`),
  ADD KEY `coreapp_user_slug_a49cfdb9` (`slug`);

--
-- Indexes for table `coreapp_userconfirmation`
--
ALTER TABLE `coreapp_userconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coreapp_userconfirmation_user_id_a3e03311_fk_coreapp_user_id` (`user_id`),
  ADD KEY `coreapp_userconfirmation_created_at_cc56e501` (`created_at`),
  ADD KEY `coreapp_userconfirmation_updated_at_8f61eadd` (`updated_at`);

--
-- Indexes for table `coreapp_user_groups`
--
ALTER TABLE `coreapp_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coreapp_user_groups_user_id_group_id_65ee0667_uniq` (`user_id`,`group_id`),
  ADD KEY `coreapp_user_groups_group_id_5fa392cb_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `coreapp_user_user_permissions`
--
ALTER TABLE `coreapp_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coreapp_user_user_permis_user_id_permission_id_dfde8bcc_uniq` (`user_id`,`permission_id`),
  ADD KEY `coreapp_user_user_pe_permission_id_1eb0e57d_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_coreapp_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `documents_document`
--
ALTER TABLE `documents_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_document_owner_id_04d2b723_fk_coreapp_user_id` (`owner_id`),
  ADD KEY `documents_document_created_at_8fa354e8` (`created_at`),
  ADD KEY `documents_document_updated_at_e05db914` (`updated_at`);

--
-- Indexes for table `documents_document_shared_with`
--
ALTER TABLE `documents_document_shared_with`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documents_document_shared_with_document_id_user_id_1a24ae7b_uniq` (`document_id`,`user_id`),
  ADD KEY `documents_document_s_user_id_cb604255_fk_coreapp_u` (`user_id`);

--
-- Indexes for table `userapp_grouptime`
--
ALTER TABLE `userapp_grouptime`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`);

--
-- Indexes for table `userapp_notifications`
--
ALTER TABLE `userapp_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userapp_notifications_created_by_id_bf2b304f_fk_coreapp_user_id` (`created_by_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `coreapp_loginhistory`
--
ALTER TABLE `coreapp_loginhistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coreapp_role`
--
ALTER TABLE `coreapp_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coreapp_role_groups`
--
ALTER TABLE `coreapp_role_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coreapp_user`
--
ALTER TABLE `coreapp_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `coreapp_userconfirmation`
--
ALTER TABLE `coreapp_userconfirmation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coreapp_user_groups`
--
ALTER TABLE `coreapp_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coreapp_user_user_permissions`
--
ALTER TABLE `coreapp_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `documents_document`
--
ALTER TABLE `documents_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `documents_document_shared_with`
--
ALTER TABLE `documents_document_shared_with`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userapp_grouptime`
--
ALTER TABLE `userapp_grouptime`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userapp_notifications`
--
ALTER TABLE `userapp_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_coreapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `coreapp_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `coreapp_loginhistory`
--
ALTER TABLE `coreapp_loginhistory`
  ADD CONSTRAINT `coreapp_loginhistory_user_id_89b0ac30_fk_coreapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `coreapp_user` (`id`);

--
-- Constraints for table `coreapp_role_groups`
--
ALTER TABLE `coreapp_role_groups`
  ADD CONSTRAINT `coreapp_role_groups_group_id_1fdc5234_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `coreapp_role_groups_role_id_0dcd3629_fk_coreapp_role_id` FOREIGN KEY (`role_id`) REFERENCES `coreapp_role` (`id`);

--
-- Constraints for table `coreapp_user`
--
ALTER TABLE `coreapp_user`
  ADD CONSTRAINT `coreapp_user_role_id_f075bcef_fk_coreapp_role_id` FOREIGN KEY (`role_id`) REFERENCES `coreapp_role` (`id`);

--
-- Constraints for table `coreapp_userconfirmation`
--
ALTER TABLE `coreapp_userconfirmation`
  ADD CONSTRAINT `coreapp_userconfirmation_user_id_a3e03311_fk_coreapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `coreapp_user` (`id`);

--
-- Constraints for table `coreapp_user_groups`
--
ALTER TABLE `coreapp_user_groups`
  ADD CONSTRAINT `coreapp_user_groups_group_id_5fa392cb_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `coreapp_user_groups_user_id_fc2c9224_fk_coreapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `coreapp_user` (`id`);

--
-- Constraints for table `coreapp_user_user_permissions`
--
ALTER TABLE `coreapp_user_user_permissions`
  ADD CONSTRAINT `coreapp_user_user_pe_permission_id_1eb0e57d_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `coreapp_user_user_pe_user_id_c37a0710_fk_coreapp_u` FOREIGN KEY (`user_id`) REFERENCES `coreapp_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_coreapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `coreapp_user` (`id`);

--
-- Constraints for table `documents_document`
--
ALTER TABLE `documents_document`
  ADD CONSTRAINT `documents_document_owner_id_04d2b723_fk_coreapp_user_id` FOREIGN KEY (`owner_id`) REFERENCES `coreapp_user` (`id`);

--
-- Constraints for table `documents_document_shared_with`
--
ALTER TABLE `documents_document_shared_with`
  ADD CONSTRAINT `documents_document_s_document_id_5ce5ff47_fk_documents` FOREIGN KEY (`document_id`) REFERENCES `documents_document` (`id`),
  ADD CONSTRAINT `documents_document_s_user_id_cb604255_fk_coreapp_u` FOREIGN KEY (`user_id`) REFERENCES `coreapp_user` (`id`);

--
-- Constraints for table `userapp_grouptime`
--
ALTER TABLE `userapp_grouptime`
  ADD CONSTRAINT `userapp_grouptime_group_id_b6db3046_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `userapp_notifications`
--
ALTER TABLE `userapp_notifications`
  ADD CONSTRAINT `userapp_notifications_created_by_id_bf2b304f_fk_coreapp_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `coreapp_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
