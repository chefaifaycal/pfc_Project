-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 17 juil. 2021 à 16:13
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pfc_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_categorie`, `nom_categorie`) VALUES
(1, 'Maçonnerie'),
(2, 'menuiserie');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` varchar(250) NOT NULL,
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp(),
  `uploaded_by` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `url`, `uploaded_at`, `uploaded_by`, `service_id`) VALUES
(16, '', '2021-05-11 14:01:33', 8, 0),
(17, '', '2021-05-11 14:01:33', 8, 0),
(18, '', '2021-05-11 14:01:33', 8, 0),
(19, 'uploads/images1620738624_72d2dfc5b3154d3816d9.jpg', '2021-05-11 14:10:24', 8, 0),
(20, 'uploads/images1620738624_d59e7897ba0dd51dff2e.jpg', '2021-05-11 14:10:24', 8, 0),
(21, 'uploads/images1620738624_97af271b80957b8366d8.jpg', '2021-05-11 14:10:24', 8, 0),
(22, 'uploads/images/1620739427_cd600f97f468905f6a97.jpg', '2021-05-11 14:23:47', 8, 57),
(23, 'uploads/images/1620739427_a70755e54f847d018bd0.jpg', '2021-05-11 14:23:47', 8, 57),
(24, 'uploads/images/1620740038_162b7f81783072ba324c.jpg', '2021-05-11 14:33:58', 8, 58),
(25, 'uploads/images/1620740038_f66e4c322677fc1dc6af.jpg', '2021-05-11 14:33:58', 8, 58),
(26, 'uploads/images/1620740368_79e9171dc64ec34e884b.jpg', '2021-05-11 14:39:28', 8, 59),
(27, 'uploads/images/1620740368_b7d11926d7ed9ef0723d.jpg', '2021-05-11 14:39:28', 8, 59),
(28, 'uploads/images/1620740368_e6875a2ac96c1b8da6ef.jpg', '2021-05-11 14:39:28', 8, 59),
(29, 'uploads/images/1620742381_3456e4b1e0e89cc23e2f.jpg', '2021-05-11 15:13:01', 8, 60),
(30, 'uploads/images/1620742381_58039a222a81104c6c8f.jpg', '2021-05-11 15:13:01', 8, 60),
(31, 'uploads/images/1620742381_afe4fb9393dca1172ace.jpg', '2021-05-11 15:13:01', 8, 60),
(32, 'uploads/images/1620837307_c013528fb7566acf197e.jpg', '2021-05-12 17:35:07', 8, 61),
(33, 'uploads/images/1620837307_9aa3e356e8ff1c6ba3ea.jpg', '2021-05-12 17:35:07', 8, 61),
(34, 'uploads/images/1620837384_29784bf545661dba9239.jpg', '2021-05-12 17:36:24', 8, 62),
(35, 'uploads/images/1620837384_46f04e0b6ed14b47bdf0.jpg', '2021-05-12 17:36:24', 8, 62),
(36, 'uploads/images/1620837384_182594289e501b6e4e9a.jpg', '2021-05-12 17:36:24', 8, 62),
(37, 'uploads/images/1620837536_a81fe61e08dc1a4d30d5.jpg', '2021-05-12 17:38:56', 8, 63),
(38, 'uploads/images/1620837536_fd47020d704c19107e9a.jpg', '2021-05-12 17:38:56', 8, 63),
(39, 'uploads/images/1620837536_f7a7c088057369603e9c.jpg', '2021-05-12 17:38:56', 8, 63),
(40, 'uploads/images/1621181763_39e8ba0defca78f4372f.jpg', '2021-05-16 17:16:03', 8, 64),
(41, 'uploads/images/1621181763_81962dc45aec8f1a0ce3.jpg', '2021-05-16 17:16:03', 8, 64),
(42, 'uploads/images/1621181763_c877dc35d72d213bcf01.jpg', '2021-05-16 17:16:03', 8, 64);

-- --------------------------------------------------------

--
-- Structure de la table `metier`
--

CREATE TABLE `metier` (
  `id_metier` int(11) NOT NULL,
  `nom_metier` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id_service` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `tarif` float NOT NULL,
  `duree_delivration` int(11) NOT NULL,
  `date_mise_enligne` datetime NOT NULL DEFAULT current_timestamp(),
  `duree_validite` int(11) NOT NULL,
  `id_fournisseur` int(11) NOT NULL,
  `categorie` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id_service`, `titre`, `description`, `tarif`, `duree_delivration`, `date_mise_enligne`, `duree_validite`, `id_fournisseur`, `categorie`) VALUES
(4, 'je vais vous faire un design 3D', 'If true, then any delete* method calls will set deleted_at in the database, instead of actually deleting the row. This can preserve data when it might be referenced elsewhere, or can maintain a “recycle bin” of objects that can be', 600, 0, '2021-04-25 20:53:33', 30, 0, 'plomberie'),
(5, 'je vais vous faire un design 3D', 'If true, then any delete* method calls will set deleted_at in the database, instead of actually deleting the row. This can preserve data when it might be referenced elsewhere, or can maintain a “recycle bin” of objects that can be', 600, 0, '2021-04-25 20:54:19', 30, 0, 'plomberie'),
(6, 'instalation panneau electrique', 'je vais vous installer un panneau electric', 5000, 0, '2021-04-25 20:55:13', 30, 0, 'electricite'),
(7, 'construction de mur', 'je vais vous contruire un mur', 3000, 5, '2021-04-25 20:57:19', 30, 0, 'massonerie'),
(8, 'Peinture epoxy', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles', 5000, 10, '2021-05-02 20:26:54', 30, 0, 'peinture'),
(9, '', '', 0, 0, '2021-05-03 21:39:45', 0, 0, 'massonerie'),
(10, 'installation panneau solaire', 'installation panneau solaireinstallation panneau solaireinstallation panneau solaireinstallation panneau solaireinstallation panneau solaireinstallation panneau solaireinstallation panneau solaire', 5000, 5, '2021-05-04 18:29:26', 30, 0, 'elecricite'),
(11, 'installation electrique', 'installation electriqueinstallation electriqueinstallation electriqueinstallation electriqueinstallation electriqueinstallation electriqueinstallation electriqueinstallation electrique', 6000, 7, '2021-05-04 18:34:09', 30, 0, 'elecricite'),
(12, 'construction mur', 'construction murconstruction murconstruction murconstruction murconstruction murconstruction murconstruction murconstruction mur', 3000, 7, '2021-05-04 18:42:09', 30, 0, 'massonerie'),
(13, 'construction mur', 'construction murconstruction murconstruction murconstruction murconstruction murconstruction murconstruction murconstruction mur', 3000, 7, '2021-05-04 18:42:24', 30, 0, 'massonerie'),
(14, 'dfghjfn,', 'dfghjfn,dfghjfn,dfghjfn,dfghjfn,dfghjfn,dfghjfn,dfghjfn,dfghjfn,dfghjfn,', 520, 7, '2021-05-04 18:42:45', 20, 0, 'elecricite'),
(15, 'dfghjfn,', 'dfghjfn,dfghjfn,dfghjfn,dfghjfn,dfghjfn,dfghjfn,dfghjfn,dfghjfn,dfghjfn,', 520, 7, '2021-05-04 18:43:22', 20, 0, 'elecricite'),
(16, 'gdhdjdkdkdll', 'gdhdjdkdkdllgdhdjdkdkdllgdhdjdkdkdllgdhdjdkdkdllgdhdjdkdkdllgdhdjdkdkdllgdhdjdkdkdllgdhdjdkdkdllgdhdjdkdkdllgdhdjdkdkdllgdhdjdkdkdll', 420, 2, '2021-05-04 18:52:29', 35, 0, 'massonerie'),
(17, 'titre du service', 'titre du servicetitre du servicetitre du servicetitre du servicetitre du servicetitre du servicetitre du service', 1230, 12, '2021-05-07 12:55:35', 35, 0, 'massonerie'),
(18, 'titre du service', 'titre du servicetitre du servicetitre du servicetitre du servicetitre du servicetitre du servicetitre du servicetitre du servicetitre du servicetitre du servicetitre du service', 230, 2, '2021-05-07 13:11:40', 12, 0, 'massonerie'),
(19, 'titre du service', 'titre du servicetitre du servicetitre du servicetitre du servicetitre du servicetitre du servicetitre du servicetitre du servicetitre du servicetitre du servicetitre du service', 230, 2, '2021-05-07 13:12:00', 12, 0, 'massonerie'),
(20, 'essai numero 2', 'ultrices neque ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices dui sapien eget mi proin sed libero enim sed faucibus turpis in eu mi bibendum neque', 3000, 5, '2021-05-07 13:56:03', 16, 0, 'elecricite'),
(21, 'essai numero 2', 'ultrices neque ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices dui sapien eget mi proin sed libero enim sed faucibus turpis in eu mi bibendum neque', 3000, 5, '2021-05-07 13:56:52', 16, 0, 'elecricite'),
(22, 'essai numero 3', 'ultrices neque ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices dui sapien eget mi proin sed libero enim sed faucibus turpis in eu mi bibendum neque', 300, 12, '2021-05-07 13:59:02', 16, 0, 'peinture'),
(23, 'essai numero 4', 'ultrices neque ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices dui sapien eget mi proin sed libero enim sed faucibus turpis in eu mi bibendum neque', 5000, 5, '2021-05-07 14:02:26', 15, 0, 'massonerie'),
(24, 'essai numero 5', 'ultrices neque ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices dui sapien eget mi proin sed libero enim sed faucibus turpis in eu mi bibendum neque', 2000, 5, '2021-05-07 14:06:17', 30, 0, 'peinture'),
(25, 'essai numero 6', 'ultrices neque ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices dui sapien eget mi proin sed libero enim sed faucibus turpis in eu mi bibendum neque', 3000, 5, '2021-05-07 14:09:16', 30, 0, 'massonerie'),
(26, 'essai numero 7', 'ultrices neque ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices dui sapien eget mi proin sed libero enim sed faucibus turpis in eu mi bibendum neque', 2500, 15, '2021-05-07 14:10:06', 30, 0, 'elecricite'),
(27, 'essai numero 7', 'ultrices neque ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices dui sapien eget mi proin sed libero enim sed faucibus turpis in eu mi bibendum neque', 1000, 3, '2021-05-07 14:11:00', 15, 0, 'peinture'),
(28, 'essai numero 9', 'sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id neque aliquam', 2000, 3, '2021-05-08 12:27:40', 15, 0, 'massonerie'),
(29, 'essai numero 10', 'sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id neque aliquam', 3000, 5, '2021-05-08 12:31:11', 30, 0, 'peinture'),
(30, 'essai numero 11', 'sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id neque aliquam', 2000, 3, '2021-05-08 12:32:33', 15, 0, 'peinture'),
(31, 'essai numero 11', 'sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id neque aliquam', 2000, 3, '2021-05-08 12:36:26', 15, 0, 'peinture'),
(32, 'essai numero 11', 'sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id neque aliquam', 2000, 3, '2021-05-08 12:37:53', 15, 0, 'peinture'),
(33, 'essai numero 11', 'sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id neque aliquam', 2000, 3, '2021-05-08 12:38:22', 15, 0, 'peinture'),
(34, 'essai numero 11', 'sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id neque aliquam', 2000, 3, '2021-05-08 12:41:55', 15, 0, 'peinture'),
(35, 'essai numero 12', 'sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id neque aliquam', 2000, 12, '2021-05-08 12:42:23', 15, 0, 'elecricite'),
(36, 'essai numero 12', 'sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id neque aliquam', 2000, 12, '2021-05-08 12:43:11', 15, 0, 'elecricite'),
(37, 'essai numero 13', 'sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id neque aliquam', 3000, 2, '2021-05-08 12:43:31', 15, 0, 'peinture'),
(38, 'essai numero 14', 'sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id neque aliquam', 3000, 3, '2021-05-08 12:48:27', 30, 0, 'massonerie'),
(39, 'essai numero 15', 'sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id neque aliquam', 2000, 15, '2021-05-08 12:49:18', 30, 0, 'peinture'),
(40, 'essai numero 16', 'sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id neque aliquam', 200, 3, '2021-05-08 12:52:20', 20, 0, 'massonerie'),
(41, 'essai numero 17', 'sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim nec dui nunc mattis enim ut tellus elementum sagittis vitae et leo duis ut diam quam nulla porttitor massa id neque aliquam', 3000, 12, '2021-05-08 12:54:33', 30, 0, 'elecricite'),
(42, 'service 02', 'id consectetur purus ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper quis lectus nulla at volutpat diam ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci porta non pulvinar neque', 3000, 23, '2021-05-10 21:01:02', 40, 0, 'massonerie'),
(43, 'service 03', 'id consectetur purus ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper quis lectus nulla at volutpat diam ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci porta non pulvinar neque', 2000, 5, '2021-05-10 21:03:33', 30, 0, 'elecricite'),
(44, 'service 04', 'id consectetur purus ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper quis lectus nulla at volutpat diam ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci porta non pulvinar neque', 2000, 4, '2021-05-10 21:09:29', 15, 0, 'massonerie'),
(45, 'service 05', 'id consectetur purus ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper quis lectus nulla at volutpat diam ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci porta non pulvinar neque', 2000, 2, '2021-05-10 21:10:18', 15, 0, 'peinture'),
(46, 'service 06', 'id consectetur purus ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper quis lectus nulla at volutpat diam ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci porta non pulvinar neque', 3000, 3, '2021-05-10 21:12:33', 30, 0, 'elecricite'),
(47, 'service 07', 'id consectetur purus ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper quis lectus nulla at volutpat diam ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci porta non pulvinar neque', 2500, 5, '2021-05-10 21:18:35', 30, 0, 'massonerie'),
(48, 'service 07', 'id consectetur purus ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper quis lectus nulla at volutpat diam ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci porta non pulvinar neque', 2500, 5, '2021-05-10 21:20:05', 30, 0, 'massonerie'),
(49, 'service 08', 'id consectetur purus ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper quis lectus nulla at volutpat diam ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci porta non pulvinar neque', 2000, 15, '2021-05-10 21:21:33', 30, 0, 'massonerie'),
(50, 'service 07', 'ut sem nulla pharetra diam sit amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit sed vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada proin libero nunc consequat interdum', 2000, 3, '2021-05-11 13:14:28', 15, 0, 'massonerie'),
(51, 'service 09', 'ut sem nulla pharetra diam sit amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit sed vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada proin libero nunc consequat interdum', 1000, 5, '2021-05-11 13:25:00', 20, 0, 'elecricite'),
(52, 'service 10', 'cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius duis at consectetur lorem donec massa sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan', 3000, 2, '2021-05-11 13:30:14', 30, 0, 'massonerie'),
(53, 'service 11', 'cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius duis at consectetur lorem donec massa sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan', 2000, 5, '2021-05-11 13:57:37', 30, 0, 'massonerie'),
(54, 'service 11', 'cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius duis at consectetur lorem donec massa sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan', 2000, 5, '2021-05-11 13:57:40', 30, 0, 'massonerie'),
(55, 'service 12', 'cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius duis at consectetur lorem donec massa sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan', 2000, 2, '2021-05-11 14:01:34', 30, 0, 'massonerie'),
(56, 'service 13', 'cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius duis at consectetur lorem donec massa sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan', 1000, 5, '2021-05-11 14:10:24', 30, 0, 'elecricite'),
(57, 'service 14', 'cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius duis at consectetur lorem donec massa sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan', 5000, 5, '2021-05-11 14:23:47', 30, 0, 'elecricite'),
(58, 'service 15', 'cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius duis at consectetur lorem donec massa sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan', 2000, 5, '2021-05-11 14:33:58', 30, 0, 'massonerie'),
(59, 'service 16', 'cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius duis at consectetur lorem donec massa sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan', 200, 2, '2021-05-11 14:39:28', 30, 0, 'massonerie'),
(60, 'service 17', 'cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius duis at consectetur lorem donec massa sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan', 200, 2, '2021-05-11 15:13:00', 50, 0, 'massonerie'),
(61, 'service 18', 'scelerisque varius morbi enim nunc faucibus a pellentesque sit amet porttitor eget dolor morbi non arcu risus quis varius quam quisque id diam vel quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet', 2000, 5, '2021-05-12 17:35:07', 30, 0, 'massonerie'),
(62, 'service 19', 'scelerisque varius morbi enim nunc faucibus a pellentesque sit amet porttitor eget dolor morbi non arcu risus quis varius quam quisque id diam vel quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet', 1500, 3, '2021-05-12 17:36:24', 15, 0, 'massonerie'),
(63, 'service 20', 'scelerisque varius morbi enim nunc faucibus a pellentesque sit amet porttitor eget dolor morbi non arcu risus quis varius quam quisque id diam vel quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet', 2000, 15, '2021-05-12 17:38:56', 30, 0, 'massonerie'),
(64, 'service 23', 'dfhjkcbn,dfhjkfhjk', 2000, 5, '2021-05-16 17:16:02', 30, 0, 'elecricite'),
(65, '', '', 0, 0, '2021-05-19 11:26:59', 0, 0, 'massonerie'),
(66, '', '', 0, 0, '2021-05-20 15:49:57', 0, 0, 'peinture');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `num_tel_perso` varchar(10) NOT NULL,
  `num_tel_pro` varchar(10) NOT NULL,
  `email` varchar(70) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `dat_inscription` datetime NOT NULL DEFAULT current_timestamp(),
  `derniere_connexion` datetime NOT NULL DEFAULT current_timestamp(),
  `profile_image_url` varchar(255) NOT NULL DEFAULT 'https://img.freepik.com/vecteurs-libre/homme-affaires-caractere-avatar-isole_24877-60111.jpg?size=338&ext=jpg',
  `statut_connexion` tinyint(1) NOT NULL,
  `date_debut_metier` date NOT NULL,
  `nombre_services` int(11) NOT NULL,
  `nombre_service_commander` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `type`, `username`, `nom`, `prenom`, `date_naissance`, `num_tel_perso`, `num_tel_pro`, `email`, `pwd`, `dat_inscription`, `derniere_connexion`, `profile_image_url`, `statut_connexion`, `date_debut_metier`, `nombre_services`, `nombre_service_commander`) VALUES
(1, '', '', '', '', '0000-00-00', '', '', 'pynowaky@mailinator.com', '', '2021-04-07 15:16:02', '2021-04-07 21:16:02', '', 0, '0000-00-00', 0, 0),
(2, '', '', '', '', '0000-00-00', '', '', 'sovofyzozu@mailinator.com', '', '2021-04-07 15:18:37', '2021-04-07 21:18:37', '', 0, '0000-00-00', 0, 0),
(3, '', '', '', '', '0000-00-00', '', '', 'huvyxaxep@mailinator.com', '', '2021-04-07 15:19:11', '2021-04-07 21:19:11', '', 0, '0000-00-00', 0, 0),
(4, 'forunisseur', '', 'Facilis aute iste co', 'Culpa enim illo ius', '0000-00-00', '', '', '', '', '2021-04-07 15:24:50', '2021-04-07 21:24:50', '', 0, '0000-00-00', 0, 0),
(5, 'forunisseur', '', 'Quia quis occaecat i', 'Aliqua Cupidatat la', '1995-11-07', '', '', '', '', '2021-04-07 15:26:07', '2021-04-07 21:26:07', '', 0, '0000-00-00', 0, 0),
(6, 'client', 'gukesacu', 'Nemo dolorem ipsa a', 'Veniam elit aut la', '1988-12-22', '0673597412', '0563214789', 'tywux@mailinator.com', 'Pa$$w0rd!', '2021-04-07 15:31:14', '2021-04-07 21:31:14', '', 0, '1979-06-22', 0, 0),
(7, 'forunisseur', 'huvazamun', 'Esse Nam non minim ', 'Eu sit et enim perf', '2001-06-17', '0563214780', '0673587650', 'zunuwybeqe@mailinator.com', '$2y$10$dDCxnKc8ceEjk/vmU3bk6.uUj0vAIJBJ4D9tvcgStgnWkXLcWC4FK', '2021-04-07 15:34:25', '2021-04-07 21:34:25', '', 0, '1996-01-03', 0, 0),
(8, 'fournisseur', 'faycal11', 'chefai', 'faycal', '1999-01-11', '0673587650', '0673587650', 'faycal@gmail.com', '$2y$10$ZGqKM4iRYenSC.AR4sbuO.zbGLb/KDSHV5TRvGV/nDDU/KDh9zfF2', '2021-04-09 05:36:47', '2021-04-09 11:36:47', 'https://img.freepik.com/vecteurs-libre/homme-affaires-caractere-avatar-isole_24877-60111.jpg?size=338&ext=jpg', 0, '2019-05-20', 0, 0),
(9, '', 'test1', 'test', 'test', '1999-01-11', '0673587650', '0641235874', 'test@gmail.com', '$2y$10$dO8L27.xpAnztaObSoQuqupWiYhLL/LuU9tjzbnUYiZWp3qV8gfi.', '2021-04-24 17:24:34', '2021-04-24 23:24:34', 'https://img.freepik.com/vecteurs-libre/homme-affaires-caractere-avatar-isole_24877-60111.jpg?size=338&ext=jpg', 0, '0000-00-00', 0, 0),
(10, '', 'test4', 'test2', 'test3', '1998-02-11', '0635417892', '0563214785', 'test1@gmail.com', '$2y$10$gXuDyApiu0MADQRHURAuBOcb56OJxA7H6JOQYpUIlV8KBBBkAUfOC', '2021-04-24 17:27:08', '2021-04-24 23:27:08', 'https://img.freepik.com/vecteurs-libre/homme-affaires-caractere-avatar-isole_24877-60111.jpg?size=338&ext=jpg', 0, '0000-00-00', 0, 0),
(12, 'fournisseur', 'tifou06', 'Mameri', 'Toufik', '1998-05-02', '0635412987', '0512364287', 'tifou05@gmail.com', '$2y$10$94u4WUPVYTfplYr/WqAghuyz9./X78AnvUint9VFBwCiIMOMDYO4u', '2021-05-02 16:27:34', '2021-05-02 22:27:34', 'https://img.freepik.com/vecteurs-libre/homme-affaires-caractere-avatar-isole_24877-60111.jpg?size=338&ext=jpg', 0, '0000-00-00', 0, 0),
(13, 'fournisseur', 'admin@admin', 'sami', 'bordjihane', '1995-01-20', '0575647252', '0657279592', 'samibordjihane@gmail.com', '$2y$10$i8.hUboLBTO0aURRlGojtuDWIXjdemjNDQuoVjLBIOW/zHaO7tiuG', '2021-05-16 11:47:28', '2021-05-16 18:47:28', 'https://img.freepik.com/vecteurs-libre/homme-affaires-caractere-avatar-isole_24877-60111.jpg?size=338&ext=jpg', 0, '0000-00-00', 0, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_images` (`uploaded_by`);

--
-- Index pour la table `metier`
--
ALTER TABLE `metier`
  ADD PRIMARY KEY (`id_metier`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_service`),
  ADD KEY `id_fournisseur` (`id_fournisseur`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `metier`
--
ALTER TABLE `metier`
  MODIFY `id_metier` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_images` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
