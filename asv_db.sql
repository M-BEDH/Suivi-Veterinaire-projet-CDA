-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql
-- Généré le : mer. 01 avr. 2026 à 08:16
-- Version du serveur : 8.0.45
-- Version de PHP : 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `asv_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `animals`
--

CREATE TABLE `animals` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `espece` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `race` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `remarques` longtext COLLATE utf8mb4_unicode_ci,
  `proprietaire_id` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `clinic_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `animals`
--

INSERT INTO `animals` (`id`, `nom`, `espece`, `race`, `date_naissance`, `remarques`, `proprietaire_id`, `created_by`, `created_at`, `clinic_id`) VALUES
('a1000000-0000-0000-0000-000000000001', 'Rex', 'Chien', 'Labrador', '2019-05-10', 'Très joueur, craint les orages', 'o1000000-0000-0000-0000-000000000001', 'u1000000-0000-0000-0000-000000000001', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000001'),
('a1000000-0000-0000-0000-000000000002', 'Mimi', 'Chat', 'Siamois', '2020-03-15', 'Allergie aux poils de lapin', 'o1000000-0000-0000-0000-000000000001', 'u1000000-0000-0000-0000-000000000001', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000001'),
('a1000000-0000-0000-0000-000000000003', 'Caramel', 'Chien', 'Beagle', '2018-11-20', NULL, 'o1000000-0000-0000-0000-000000000002', 'u1000000-0000-0000-0000-000000000001', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000001'),
('a1000000-0000-0000-0000-000000000004', 'Bulle', 'Lapin', 'Bélier', '2021-07-08', 'Sensible au froid', 'o1000000-0000-0000-0000-000000000002', 'u1000000-0000-0000-0000-000000000002', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000001'),
('a1000000-0000-0000-0000-000000000005', 'Titan', 'Chien', 'Berger Allemand', '2017-02-28', 'Dysplasie de la hanche diagnostiqué', 'o1000000-0000-0000-0000-000000000003', 'u1000000-0000-0000-0000-000000000002', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000001'),
('a1000000-0000-0000-0000-000000000006', 'Luna', 'Chat', 'Maine Coon', '2020-09-01', NULL, 'o1000000-0000-0000-0000-000000000004', 'u1000000-0000-0000-0000-000000000004', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000002'),
('a1000000-0000-0000-0000-000000000007', 'Oscar', 'Chien', 'Golden Retriever', '2019-12-05', 'Traitement mensuel anti-parasitaire', 'o1000000-0000-0000-0000-000000000004', 'u1000000-0000-0000-0000-000000000004', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000002'),
('a1000000-0000-0000-0000-000000000008', 'Noisette', 'Hamster', NULL, '2023-01-14', NULL, 'o1000000-0000-0000-0000-000000000005', 'u1000000-0000-0000-0000-000000000005', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000002'),
('a1000000-0000-0000-0000-000000000009', 'Filou', 'Chat', 'Européen', '2018-06-22', 'Diabétique - insuline 2x/jour', 'o1000000-0000-0000-0000-000000000005', 'u1000000-0000-0000-0000-000000000005', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000002'),
('e59a22b0-ad14-4576-9d06-f3f9ac2c64a5', 'Rex', 'Chien', 'Labrador', '2020-02-20', NULL, NULL, 'a9bb7bee-de96-48d1-8331-2516ffd8119f', '2026-03-11 11:11:45', '00a8c2b9-6b36-41f3-a4c7-571495c2ca9f'),
('fe821247-8c01-43b4-991e-2cff5a6726e1', 'Astraia', 'chat', 'bengal', '2025-02-25', NULL, NULL, 'a9bb7bee-de96-48d1-8331-2516ffd8119f', '2026-03-11 10:55:59', '00a8c2b9-6b36-41f3-a4c7-571495c2ca9f');

-- --------------------------------------------------------

--
-- Structure de la table `clinics`
--

CREATE TABLE `clinics` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clinics`
--

INSERT INTO `clinics` (`id`, `name`, `created_at`, `type`) VALUES
('00a8c2b9-6b36-41f3-a4c7-571495c2ca9f', 'Maclinique', '2026-03-11 10:22:01', 'clinique'),
('8667f18f-5277-45ae-9e31-52b1bfc3b6c0', 'ma deuxieme clinique', '2026-03-11 11:04:47', 'clinique'),
('c1000000-0000-0000-0000-000000000001', 'Clinique Vétérinaire du Parc', '2026-03-11 13:49:03', 'clinique'),
('c1000000-0000-0000-0000-000000000002', 'Cabinet Vétérinaire Saint-Louis', '2026-03-11 13:49:03', 'clinique');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20260310141259', '2026-03-11 10:20:59', 637),
('DoctrineMigrations\\Version20260310200000', '2026-03-11 10:21:00', 525),
('DoctrineMigrations\\Version20260317000000', '2026-03-23 12:45:03', 35),
('DoctrineMigrations\\Version20260317000001', '2026-03-23 12:45:03', 48),
('DoctrineMigrations\\Version20260317000002', '2026-03-23 12:45:03', 58),
('DoctrineMigrations\\Version20260318151137', '2026-03-23 12:45:03', 30),
('DoctrineMigrations\\Version20260328140532', '2026-03-31 15:23:18', 86),
('DoctrineMigrations\\Version20260401080944', '2026-04-01 08:12:33', 468);

-- --------------------------------------------------------

--
-- Structure de la table `medical_consultations`
--

CREATE TABLE `medical_consultations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `animal_id` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_consultation` datetime NOT NULL,
  `veterinaire_id` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motif` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `compte_rendu` longtext COLLATE utf8mb4_unicode_ci,
  `traitements` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `clinic_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `medical_consultations`
--

INSERT INTO `medical_consultations` (`id`, `animal_id`, `date_consultation`, `veterinaire_id`, `motif`, `compte_rendu`, `traitements`, `created_at`, `clinic_id`) VALUES
('df50664c-fee0-469f-b1e1-d93d803fb3d1', 'fe821247-8c01-43b4-991e-2cff5a6726e1', '2026-03-11 11:57:00', 'a9bb7bee-de96-48d1-8331-2516ffd8119f', 'Vaccin', NULL, NULL, '2026-03-11 10:58:02', '00a8c2b9-6b36-41f3-a4c7-571495c2ca9f'),
('m1000000-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000001', '2025-11-10 09:00:00', 'u1000000-0000-0000-0000-000000000001', 'Visite annuelle', 'Bonne santé générale. Vaccination mise à jour.', 'Vaccin rage ', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000001'),
('m1000000-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000002', '2025-12-05 10:30:00', 'u1000000-0000-0000-0000-000000000001', 'Démangeaisons', 'Réaction allergique confirmée. Traitement prescrit.', 'Antihistaminique 5mg/j pendant 10 jours', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000001'),
('m1000000-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000003', '2026-01-15 14:00:00', 'u1000000-0000-0000-0000-000000000002', 'Boiterie membre avant droit', 'Entorse légère. Repos conseillé 2 semaines.', 'Anti-inflammatoire 3j', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000001'),
('m1000000-0000-0000-0000-000000000004', 'a1000000-0000-0000-0000-000000000005', '2026-02-20 11:00:00', 'u1000000-0000-0000-0000-000000000002', 'Contrôle dysplasie', 'Mégère dégradation. Radio effectuée.', 'Meloxicam 0.1mg/kg/j', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000001'),
('m1000000-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000006', '2026-01-08 09:30:00', 'u1000000-0000-0000-0000-000000000004', 'Perte d\'appétit', 'Gastrite légère', 'Gastroprotecteur 7j', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000002'),
('m1000000-0000-0000-0000-000000000006', 'a1000000-0000-0000-0000-000000000009', '2026-02-14 15:00:00', 'u1000000-0000-0000-0000-000000000005', 'Contrôle diabète', 'Glycémie stable. Continuer traitement.', 'Insuline Caninsulin 2UI matin et soir', '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000002'),
('m1000000-0000-0000-0000-000000000007', 'a1000000-0000-0000-0000-000000000001', '2026-03-15 09:00:00', 'u1000000-0000-0000-0000-000000000001', 'Rappel vaccins', NULL, NULL, '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000001'),
('m1000000-0000-0000-0000-000000000008', 'a1000000-0000-0000-0000-000000000003', '2026-03-18 14:30:00', 'u1000000-0000-0000-0000-000000000002', 'Contrôle post-entorse', NULL, NULL, '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000001'),
('m1000000-0000-0000-0000-000000000009', 'a1000000-0000-0000-0000-000000000007', '2026-03-20 10:00:00', 'u1000000-0000-0000-0000-000000000004', 'Visite annuelle', NULL, NULL, '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000002'),
('m1000000-0000-0000-0000-000000000010', 'a1000000-0000-0000-0000-000000000009', '2026-03-25 15:00:00', 'u1000000-0000-0000-0000-000000000005', 'Contrôle diabète mensuel', NULL, NULL, '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000002'),
('m1000000-0000-0000-0000-000000000011', 'a1000000-0000-0000-0000-000000000002', '2026-04-02 11:00:00', 'u1000000-0000-0000-0000-000000000001', 'Suivi allergie', NULL, NULL, '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000001'),
('m1000000-0000-0000-0000-000000000012', 'a1000000-0000-0000-0000-000000000005', '2026-04-10 09:30:00', 'u1000000-0000-0000-0000-000000000002', 'Contrôle dysplasie trimestriel', NULL, NULL, '2026-03-11 13:49:03', 'c1000000-0000-0000-0000-000000000001');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `owners`
--

CREATE TABLE `owners` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` longtext COLLATE utf8mb4_unicode_ci,
  `telephone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `user_id` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clinic_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `owners`
--

INSERT INTO `owners` (`id`, `nom`, `prenom`, `adresse`, `telephone`, `email`, `created_by`, `created_at`, `user_id`, `clinic_id`) VALUES
('o1000000-0000-0000-0000-000000000001', 'Durand', 'Jean', '12 rue des Lilas, 75001 Paris', '06 11 22 33 44', 'jean.durand@email.fr', 'u1000000-0000-0000-0000-000000000001', '2026-03-11 13:49:03', 'u1000000-0000-0000-0000-000000000010', 'c1000000-0000-0000-0000-000000000001'),
('o1000000-0000-0000-0000-000000000002', 'Lambert', 'Marie', '5 avenue Victor Hugo, 69001 Lyon', '06 22 33 44 55', 'marie.lambert@email.fr', 'u1000000-0000-0000-0000-000000000001', '2026-03-11 13:49:03', 'u1000000-0000-0000-0000-000000000011', 'c1000000-0000-0000-0000-000000000001'),
('o1000000-0000-0000-0000-000000000003', 'Fontaine', 'Pierre', '8 rue de la Paix, 13001 Marseille', '06 33 44 55 66', 'pierre.fontaine@email.fr', 'u1000000-0000-0000-0000-000000000002', '2026-03-11 13:49:03', 'u1000000-0000-0000-0000-000000000012', 'c1000000-0000-0000-0000-000000000001'),
('o1000000-0000-0000-0000-000000000004', 'Simon', 'Nathalie', '3 boulevard des Roses, 33000 Bordeaux', '06 44 55 66 77', 'nathalie.simon@email.fr', 'u1000000-0000-0000-0000-000000000004', '2026-03-11 13:49:03', 'u1000000-0000-0000-0000-000000000013', 'c1000000-0000-0000-0000-000000000002'),
('o1000000-0000-0000-0000-000000000005', 'Richard', 'Paul', '17 rue du Moulin, 59000 Lille', '06 55 66 77 88', 'paul.richard@email.fr', 'u1000000-0000-0000-0000-000000000004', '2026-03-11 13:49:03', 'u1000000-0000-0000-0000-000000000014', 'c1000000-0000-0000-0000-000000000002');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `clinic_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `role`, `created_at`, `password`, `clinic_id`) VALUES
('1fa06df4-8e6f-4aa0-9630-6078df04d3c8', 'client@mail.com', 'clientTest2', 'client', '2026-03-11 11:05:29', '$2y$13$oN6.0VL2IOInBkrDyJURLu5osa8J0pEeGx0EMQVjbq8j657LDR/x.', '8667f18f-5277-45ae-9e31-52b1bfc3b6c0'),
('585ef9aa-d438-4596-ac2f-a5f01400ee8e', 'veto2@mail.com', 'veto2', 'veterinaire', '2026-03-11 11:04:47', '$2y$13$p7jXyz5gyebGlkZZyka87eACQa/qVudhkf2jbg/Qp9yAPDyVwxr8y', '8667f18f-5277-45ae-9e31-52b1bfc3b6c0'),
('841b6a85-3637-4e08-8d66-942172a27759', 'assistant@mail.com', 'Assisitant test', 'assistant', '2026-03-11 10:36:15', '$2y$13$61RioRrtXTQFEYw.5j/DGuOKpJztkVTtKyRiUiP9TtZ4sBf6bUyli', '00a8c2b9-6b36-41f3-a4c7-571495c2ca9f'),
('a9bb7bee-de96-48d1-8331-2516ffd8119f', 'veto@mail.com', 'test test', 'veterinaire', '2026-03-11 10:22:00', '$2y$13$U/zSK1RvZRqPxttwa80J3OuFA6qh.FZfM30kD/c4D53r4Gg8v92Fa', '00a8c2b9-6b36-41f3-a4c7-571495c2ca9f'),
('d5a0d4b8-27d6-4ea9-b285-de06dc7a0961', 'melissa@mail.com', 'melissa test', 'client', '2026-03-11 11:00:45', '$2y$13$Lc2oGoFdfzi8BZQ4dmuY.OP6wmnYmSBnFkRr/Yl45gwdok/a8a4/C', '00a8c2b9-6b36-41f3-a4c7-571495c2ca9f'),
('u1000000-0000-0000-0000-000000000001', 'dr.martin@parcvet.fr', 'Dr. Sophie Martin', 'veterinaire', '2026-03-11 13:49:03', '$2y$10$1UlzUcHQkm2KgEfexbuLxuCuds1ZjB9COCk/bZJkV8xSmn5K0rXUe', 'c1000000-0000-0000-0000-000000000001'),
('u1000000-0000-0000-0000-000000000002', 'dr.bernard@parcvet.fr', 'Dr. Lucas Bernard', 'veterinaire', '2026-03-11 13:49:03', '$2y$10$1UlzUcHQkm2KgEfexbuLxuCuds1ZjB9COCk/bZJkV8xSmn5K0rXUe', 'c1000000-0000-0000-0000-000000000001'),
('u1000000-0000-0000-0000-000000000003', 'lea.dupuis@parcvet.fr', 'Léa Dupuis', 'assistant', '2026-03-11 13:49:03', '$2y$10$1UlzUcHQkm2KgEfexbuLxuCuds1ZjB9COCk/bZJkV8xSmn5K0rXUe', 'c1000000-0000-0000-0000-000000000001'),
('u1000000-0000-0000-0000-000000000004', 'dr.moreau@stlouis.fr', 'Dr. Emma Moreau', 'veterinaire', '2026-03-11 13:49:03', '$2y$10$1UlzUcHQkm2KgEfexbuLxuCuds1ZjB9COCk/bZJkV8xSmn5K0rXUe', 'c1000000-0000-0000-0000-000000000002'),
('u1000000-0000-0000-0000-000000000005', 'dr.petit@stlouis.fr', 'Dr. Antoine Petit', 'veterinaire', '2026-03-11 13:49:03', '$2y$10$1UlzUcHQkm2KgEfexbuLxuCuds1ZjB9COCk/bZJkV8xSmn5K0rXUe', 'c1000000-0000-0000-0000-000000000002'),
('u1000000-0000-0000-0000-000000000006', 'thomas.garnier@stlouis.fr', 'Thomas Garnier', 'assistant', '2026-03-11 13:49:03', '$2y$10$1UlzUcHQkm2KgEfexbuLxuCuds1ZjB9COCk/bZJkV8xSmn5K0rXUe', 'c1000000-0000-0000-0000-000000000002'),
('u1000000-0000-0000-0000-000000000007', 'chloe.leroy@stlouis.fr', 'Chloé Leroy', 'assistant', '2026-03-11 13:49:03', '$2y$10$1UlzUcHQkm2KgEfexbuLxuCuds1ZjB9COCk/bZJkV8xSmn5K0rXUe', 'c1000000-0000-0000-0000-000000000002'),
('u1000000-0000-0000-0000-000000000010', 'jean.durand@email.fr', 'Jean Durand', 'client', '2026-03-11 13:49:03', '$2y$10$1UlzUcHQkm2KgEfexbuLxuCuds1ZjB9COCk/bZJkV8xSmn5K0rXUe', 'c1000000-0000-0000-0000-000000000001'),
('u1000000-0000-0000-0000-000000000011', 'marie.lambert@email.fr', 'Marie Lambert', 'client', '2026-03-11 13:49:03', '$2y$10$1UlzUcHQkm2KgEfexbuLxuCuds1ZjB9COCk/bZJkV8xSmn5K0rXUe', 'c1000000-0000-0000-0000-000000000001'),
('u1000000-0000-0000-0000-000000000012', 'pierre.fontaine@email.fr', 'Pierre Fontaine', 'client', '2026-03-11 13:49:03', '$2y$10$1UlzUcHQkm2KgEfexbuLxuCuds1ZjB9COCk/bZJkV8xSmn5K0rXUe', 'c1000000-0000-0000-0000-000000000001'),
('u1000000-0000-0000-0000-000000000013', 'nathalie.simon@email.fr', 'Nathalie Simon', 'client', '2026-03-11 13:49:03', '$2y$10$1UlzUcHQkm2KgEfexbuLxuCuds1ZjB9COCk/bZJkV8xSmn5K0rXUe', 'c1000000-0000-0000-0000-000000000002'),
('u1000000-0000-0000-0000-000000000014', 'paul.richard@email.fr', 'Paul Richard', 'client', '2026-03-11 13:49:03', '$2y$10$1UlzUcHQkm2KgEfexbuLxuCuds1ZjB9COCk/bZJkV8xSmn5K0rXUe', 'c1000000-0000-0000-0000-000000000002');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_966C69DD76C50E4A` (`proprietaire_id`),
  ADD KEY `IDX_966C69DDDE12AB56` (`created_by`),
  ADD KEY `IDX_966C69DDCC22AD4` (`clinic_id`);

--
-- Index pour la table `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D7053B665E237E06` (`name`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `medical_consultations`
--
ALTER TABLE `medical_consultations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F9050EB18E962C16` (`animal_id`),
  ADD KEY `IDX_F9050EB15C80924` (`veterinaire_id`),
  ADD KEY `IDX_F9050EB1CC22AD4` (`clinic_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0E3BD61CE16BA31DBBF396750` (`queue_name`,`available_at`,`delivered_at`,`id`);

--
-- Index pour la table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_427292FADE12AB56` (`created_by`),
  ADD KEY `IDX_427292FAA76ED395` (`user_id`),
  ADD KEY `IDX_427292FACC22AD4` (`clinic_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_user_email_clinic` (`email`,`clinic_id`),
  ADD KEY `IDX_1483A5E9CC22AD4` (`clinic_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `animals`
--
ALTER TABLE `animals`
  ADD CONSTRAINT `FK_966C69DD76C50E4A` FOREIGN KEY (`proprietaire_id`) REFERENCES `owners` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_966C69DDDE12AB56` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_ANIMALS_CLINIC` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `medical_consultations`
--
ALTER TABLE `medical_consultations`
  ADD CONSTRAINT `FK_CONSULTATIONS_CLINIC` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F9050EB15C80924` FOREIGN KEY (`veterinaire_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F9050EB18E962C16` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `owners`
--
ALTER TABLE `owners`
  ADD CONSTRAINT `FK_427292FAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_427292FADE12AB56` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_OWNERS_CLINIC` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_USERS_CLINIC` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
