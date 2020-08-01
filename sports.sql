-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 01, 2020 at 04:53 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add player', 7, 'add_player'),
(26, 'Can change player', 7, 'change_player'),
(27, 'Can delete player', 7, 'delete_player'),
(28, 'Can view player', 7, 'view_player'),
(29, 'Can add matches', 8, 'add_matches'),
(30, 'Can change matches', 8, 'change_matches'),
(31, 'Can delete matches', 8, 'delete_matches'),
(32, 'Can view matches', 8, 'view_matches'),
(33, 'Can add team', 9, 'add_team'),
(34, 'Can change team', 9, 'change_team'),
(35, 'Can delete team', 9, 'delete_team'),
(36, 'Can view team', 9, 'view_team'),
(37, 'Can add point', 10, 'add_point'),
(38, 'Can change point', 10, 'change_point'),
(39, 'Can delete point', 10, 'delete_point'),
(40, 'Can view point', 10, 'view_point'),
(41, 'Can add matches', 11, 'add_matches'),
(42, 'Can change matches', 11, 'change_matches'),
(43, 'Can delete matches', 11, 'delete_matches'),
(44, 'Can view matches', 11, 'view_matches'),
(45, 'Can add player', 12, 'add_player'),
(46, 'Can change player', 12, 'change_player'),
(47, 'Can delete player', 12, 'delete_player'),
(48, 'Can view player', 12, 'view_player'),
(49, 'Can add point', 13, 'add_point'),
(50, 'Can change point', 13, 'change_point'),
(51, 'Can delete point', 13, 'delete_point'),
(52, 'Can view point', 13, 'view_point'),
(53, 'Can add team', 14, 'add_team'),
(54, 'Can change team', 14, 'change_team'),
(55, 'Can delete team', 14, 'delete_team'),
(56, 'Can view team', 14, 'view_team');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$I5UoiWZETmSX$Y8aaBoFEW0S/YDcW6rzO+pUSzc3hPPIXOTUhiHuSJww=', '2020-08-01 05:50:47.986899', 1, 'sandeep.rathore92@gmail.com', '', '', 'sandeep.rathore92@gmail.com', 1, 1, '2020-08-01 05:50:20.587303');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-08-01 06:29:37.712691', '1', 'Team object (1)', 1, '[{\"added\": {}}]', 9, 1),
(2, '2020-08-01 06:32:03.155306', '2', 'Bulls', 1, '[{\"added\": {}}]', 9, 1),
(3, '2020-08-01 06:34:15.394902', '1', 'Zach LaVine', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-08-01 06:35:32.421828', '2', 'Leonard Fournette', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-08-01 06:42:17.134105', '1', 'Jaguars', 1, '[{\"added\": {}}]', 14, 1),
(6, '2020-08-01 06:42:30.938956', '2', 'Bulls', 1, '[{\"added\": {}}]', 14, 1),
(7, '2020-08-01 06:43:15.685196', '1', 'Zach LaVine', 1, '[{\"added\": {}}]', 12, 1),
(8, '2020-08-01 06:43:36.615062', '2', 'Leonard Fournette', 1, '[{\"added\": {}}]', 12, 1),
(9, '2020-08-01 09:24:50.075935', '2', 'Leonard Fournette', 2, '[{\"changed\": {\"fields\": [\"ImageUri\"]}}]', 12, 1),
(10, '2020-08-01 09:25:20.382766', '2', 'Leonard Fournette', 2, '[{\"changed\": {\"fields\": [\"Jersey number\", \"Country\", \"Total played matched\", \"Total run\", \"Highest score\", \"Total fifties\", \"Total hundreds\"]}}]', 12, 1),
(11, '2020-08-01 09:25:45.685164', '1', 'Zach LaVine', 2, '[{\"changed\": {\"fields\": [\"Jersey number\", \"Total played matched\", \"Total run\", \"Highest score\", \"Total fifties\", \"Total hundreds\"]}}]', 12, 1),
(12, '2020-08-01 09:30:50.826106', '3', 'Chiefs', 1, '[{\"added\": {}}]', 14, 1),
(13, '2020-08-01 09:32:04.751977', '3', 'Damian McKenzie', 1, '[{\"added\": {}}]', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'rugby', 'matches'),
(12, 'rugby', 'player'),
(13, 'rugby', 'point'),
(14, 'rugby', 'team'),
(6, 'sessions', 'session'),
(8, 'teams', 'matches'),
(7, 'teams', 'player'),
(10, 'teams', 'point'),
(9, 'teams', 'team');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-08-01 05:49:36.867026'),
(2, 'auth', '0001_initial', '2020-08-01 05:49:37.119220'),
(3, 'admin', '0001_initial', '2020-08-01 05:49:37.920852'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-08-01 05:49:38.107064'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-01 05:49:38.122931'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-08-01 05:49:38.253936'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-08-01 05:49:38.272446'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-08-01 05:49:38.298528'),
(9, 'auth', '0004_alter_user_username_opts', '2020-08-01 05:49:38.317003'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-08-01 05:49:38.385810'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-08-01 05:49:38.390578'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-08-01 05:49:38.409305'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-08-01 05:49:38.436639'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-08-01 05:49:38.467925'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-08-01 05:49:38.493207'),
(16, 'auth', '0011_update_proxy_permissions', '2020-08-01 05:49:38.507681'),
(17, 'sessions', '0001_initial', '2020-08-01 05:49:38.554631'),
(18, 'teams', '0001_initial', '2020-08-01 06:19:58.915747'),
(19, 'teams', '0002_auto_20200801_0627', '2020-08-01 06:27:12.291263'),
(20, 'rugby', '0001_initial', '2020-08-01 06:41:30.024863'),
(21, 'rugby', '0002_auto_20200801_0958', '2020-08-01 09:58:21.011441');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('kp4d4wjnf1t8cv4y3pbn90lyggnlc2o2', 'ZDgwZGVmODE1ZGUwZjZkNzY5ZTViMWMwYzRjYjRlZGM5YTgwYTcwYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjRmMzMyYjIyZGVlNjA2OTY3NzZhYjRiYTkwNDBmNDhjODU0MDM4In0=', '2020-08-15 05:50:47.992025');

-- --------------------------------------------------------

--
-- Table structure for table `rugby_matches`
--

CREATE TABLE `rugby_matches` (
  `id` int(11) NOT NULL,
  `team_first_id` int(11) NOT NULL,
  `team_second_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rugby_matches`
--

INSERT INTO `rugby_matches` (`id`, `team_first_id`, `team_second_id`) VALUES
(37, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rugby_player`
--

CREATE TABLE `rugby_player` (
  `id` int(11) NOT NULL,
  `firstName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `imageUri` varchar(200) NOT NULL,
  `jersey_number` int(11) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `total_played_matched` int(11) NOT NULL,
  `total_run` int(11) NOT NULL,
  `highest_score` int(11) NOT NULL,
  `total_fifties` int(11) NOT NULL,
  `total_hundreds` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rugby_player`
--

INSERT INTO `rugby_player` (`id`, `firstName`, `lastName`, `imageUri`, `jersey_number`, `country`, `total_played_matched`, `total_run`, `highest_score`, `total_fifties`, `total_hundreds`, `team_id`) VALUES
(1, 'Zach', 'LaVine', 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3064440.png&w=350&h=254', 11, 'USA', 2, 220, 104, 1, 2, 1),
(2, 'Leonard', 'Fournette', 'https://img.bleacherreport.net/img/images/photos/003/878/316/b381b0c877afca274e68e10ce7cbfca2_crop_exact.jpg?w=900&h=600&q=75', 21, 'USA', 10, 150, 70, 1, 2, 2),
(3, 'Damian', 'McKenzie', 'https://www.chiefs.co.nz/edit/image_cache/damianmckenzie_850x1080c1ptop.png', 30, 'Russia', 20, 30, 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rugby_point`
--

CREATE TABLE `rugby_point` (
  `id` int(11) NOT NULL,
  `match_id_id` int(11) NOT NULL,
  `losing_team_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `winner_team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rugby_point`
--

INSERT INTO `rugby_point` (`id`, `match_id_id`, `losing_team_id`, `points`, `winner_team_id`) VALUES
(25, 37, 2, 100, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rugby_team`
--

CREATE TABLE `rugby_team` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `logoUri` varchar(200) NOT NULL,
  `club_state` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rugby_team`
--

INSERT INTO `rugby_team` (`id`, `name`, `logoUri`, `club_state`) VALUES
(1, 'Jaguars', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/2f/Jaguares_logo_2019.svg/200px-Jaguares_logo_2019.svg.png', NULL),
(2, 'Bulls', 'https://upload.wikimedia.org/wikipedia/it/thumb/9/9c/Bulls_Rugby_logo.png/180px-Bulls_Rugby_logo.png', NULL),
(3, 'Chiefs', 'https://upload.wikimedia.org/wikipedia/it/thumb/2/2c/Chiefs_rugby_logo.svg/150px-Chiefs_rugby_logo.svg.png', NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `rugby_matches`
--
ALTER TABLE `rugby_matches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rugby_matches_team_first_id_fb8b3739_fk_rugby_team_id` (`team_first_id`),
  ADD KEY `rugby_matches_team_second_id_f75e0fcb_fk_rugby_team_id` (`team_second_id`);

--
-- Indexes for table `rugby_player`
--
ALTER TABLE `rugby_player`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rugby_player_team_id_fc402ddc_fk_rugby_team_id` (`team_id`);

--
-- Indexes for table `rugby_point`
--
ALTER TABLE `rugby_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rugby_point_match_id_id_5776585e_fk_rugby_matches_id` (`match_id_id`);

--
-- Indexes for table `rugby_team`
--
ALTER TABLE `rugby_team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `rugby_matches`
--
ALTER TABLE `rugby_matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `rugby_player`
--
ALTER TABLE `rugby_player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rugby_point`
--
ALTER TABLE `rugby_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `rugby_team`
--
ALTER TABLE `rugby_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `rugby_matches`
--
ALTER TABLE `rugby_matches`
  ADD CONSTRAINT `rugby_matches_team_first_id_fb8b3739_fk_rugby_team_id` FOREIGN KEY (`team_first_id`) REFERENCES `rugby_team` (`id`),
  ADD CONSTRAINT `rugby_matches_team_second_id_f75e0fcb_fk_rugby_team_id` FOREIGN KEY (`team_second_id`) REFERENCES `rugby_team` (`id`);

--
-- Constraints for table `rugby_player`
--
ALTER TABLE `rugby_player`
  ADD CONSTRAINT `rugby_player_team_id_fc402ddc_fk_rugby_team_id` FOREIGN KEY (`team_id`) REFERENCES `rugby_team` (`id`);

--
-- Constraints for table `rugby_point`
--
ALTER TABLE `rugby_point`
  ADD CONSTRAINT `rugby_point_match_id_id_5776585e_fk_rugby_matches_id` FOREIGN KEY (`match_id_id`) REFERENCES `rugby_matches` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
