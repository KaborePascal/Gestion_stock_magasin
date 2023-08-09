-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 10 août 2023 à 01:08
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `alimentation`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_categorie`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'samsung', NULL, NULL),
(2, 'Savon homo', NULL, NULL),
(3, 'Riz', NULL, NULL),
(4, 'Huile', NULL, NULL),
(5, 'TEST', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id_commande` int(10) UNSIGNED NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `etat` varchar(255) NOT NULL DEFAULT 'NON VALIDE',
  `id_magasin` int(10) UNSIGNED NOT NULL,
  `id_utilisateur` int(10) UNSIGNED NOT NULL,
  `id_magasin_e` int(10) UNSIGNED NOT NULL,
  `id_magasin_r` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `entrees`
--

CREATE TABLE `entrees` (
  `id_entree` int(10) UNSIGNED NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_magasin` int(10) UNSIGNED NOT NULL,
  `id_utilisateur` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `familles`
--

CREATE TABLE `familles` (
  `id_famille` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_categorie` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `familles`
--

INSERT INTO `familles` (`id_famille`, `nom`, `created_at`, `updated_at`, `id_categorie`) VALUES
(3, 'Lait', '2023-08-08 18:39:47', '2023-08-08 18:39:47', 1),
(4, 'Riz brisure', '2023-08-09 09:43:46', '2023-08-09 09:43:46', 3);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_produits`
--

CREATE TABLE `ligne_produits` (
  `id_ligne` int(10) UNSIGNED NOT NULL,
  `quantite` int(11) NOT NULL,
  `id_produit` int(10) UNSIGNED NOT NULL,
  `id_entree` int(10) UNSIGNED DEFAULT NULL,
  `id_sortie` int(10) UNSIGNED DEFAULT NULL,
  `id_commande` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `magasins`
--

CREATE TABLE `magasins` (
  `id_magasin` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `agence` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_25_035108_create_familles_table', 1),
(6, '2022_05_26_122903_create_categories_table', 1),
(7, '2022_05_26_132503_create_produits_table', 1),
(8, '2022_05_26_134002_add_id_famille_produits', 1),
(9, '2022_05_26_135744_create_magasins_table', 1),
(10, '2022_05_26_140747_create_stocks_table', 1),
(11, '2022_05_26_171029_add_cles_etrangere_stocks', 1),
(12, '2022_05_26_172934_create_entrees_table', 1),
(13, '2022_05_26_173428_add_cles_etrangere_entrees', 1),
(14, '2022_05_26_174204_create_sorties_table', 1),
(15, '2022_05_26_174307_add_cles_etrangere_sorties', 1),
(16, '2022_05_26_174443_create_commandes_table', 1),
(17, '2022_05_26_174519_add_cles_etrangere_commandes', 1),
(18, '2022_05_26_175015_create_ligne_produits_table', 1),
(19, '2022_05_26_175057_add_cles_etrangere_ligne_produits', 1),
(20, '2022_06_03_040615_add_cles_etrangere_famille', 1),
(21, '2013_08_07_130612_create_roles_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id_produit` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `nature` varchar(255) NOT NULL,
  `volume` double(8,2) NOT NULL,
  `poids` double(8,2) NOT NULL,
  `type` varchar(255) NOT NULL,
  `unite` double(8,2) NOT NULL,
  `prix` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_famille` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sorties`
--

CREATE TABLE `sorties` (
  `id_sortie` int(10) UNSIGNED NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_magasin` int(10) UNSIGNED NOT NULL,
  `id_utilisateur` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stocks`
--

CREATE TABLE `stocks` (
  `quantite` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_magasin` int(10) UNSIGNED NOT NULL,
  `id_produit` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `role`, `status`, `created_at`, `updated_at`) VALUES
(7, 'KABORE', 'kaborep08@gmail.com', 'Pascal', '$2y$10$lnMoSSqXRqS9UO46s/.teO43Nt/Cy3Ul/0tE4y.z3mb5IGlNrkcGe', 'Admin', '1', '2023-08-09 09:05:37', '2023-08-09 09:05:37'),
(8, 'NASSA', 'nassa@gmail.com', 'Odilon', '$2y$10$psRDhlyXSioV5OuUokXZQeHy7HXq3YaB3yI/41umqE2NmMHXsNNnC', 'magasinier', '1', '2023-08-09 09:06:29', '2023-08-09 09:06:29');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `commandes_id_magasin_foreign` (`id_magasin`),
  ADD KEY `commandes_id_utilisateur_foreign` (`id_utilisateur`),
  ADD KEY `commandes_id_magasin_e_foreign` (`id_magasin_e`),
  ADD KEY `commandes_id_magasin_r_foreign` (`id_magasin_r`);

--
-- Index pour la table `entrees`
--
ALTER TABLE `entrees`
  ADD PRIMARY KEY (`id_entree`),
  ADD KEY `entrees_id_magasin_foreign` (`id_magasin`),
  ADD KEY `entrees_id_utilisateur_foreign` (`id_utilisateur`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `familles`
--
ALTER TABLE `familles`
  ADD PRIMARY KEY (`id_famille`),
  ADD KEY `familles_id_categorie_foreign` (`id_categorie`);

--
-- Index pour la table `ligne_produits`
--
ALTER TABLE `ligne_produits`
  ADD PRIMARY KEY (`id_ligne`),
  ADD KEY `ligne_produits_id_produit_foreign` (`id_produit`),
  ADD KEY `ligne_produits_id_entree_foreign` (`id_entree`),
  ADD KEY `ligne_produits_id_sortie_foreign` (`id_sortie`),
  ADD KEY `ligne_produits_id_commande_foreign` (`id_commande`);

--
-- Index pour la table `magasins`
--
ALTER TABLE `magasins`
  ADD PRIMARY KEY (`id_magasin`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `produits_id_famille_foreign` (`id_famille`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sorties`
--
ALTER TABLE `sorties`
  ADD PRIMARY KEY (`id_sortie`),
  ADD KEY `sorties_id_magasin_foreign` (`id_magasin`),
  ADD KEY `sorties_id_utilisateur_foreign` (`id_utilisateur`);

--
-- Index pour la table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id_produit`,`id_magasin`),
  ADD KEY `stocks_id_magasin_foreign` (`id_magasin`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id_commande` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `entrees`
--
ALTER TABLE `entrees`
  MODIFY `id_entree` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `familles`
--
ALTER TABLE `familles`
  MODIFY `id_famille` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `ligne_produits`
--
ALTER TABLE `ligne_produits`
  MODIFY `id_ligne` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `magasins`
--
ALTER TABLE `magasins`
  MODIFY `id_magasin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id_produit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sorties`
--
ALTER TABLE `sorties`
  MODIFY `id_sortie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_id_magasin_e_foreign` FOREIGN KEY (`id_magasin_e`) REFERENCES `magasins` (`id_magasin`),
  ADD CONSTRAINT `commandes_id_magasin_foreign` FOREIGN KEY (`id_magasin`) REFERENCES `magasins` (`id_magasin`),
  ADD CONSTRAINT `commandes_id_magasin_r_foreign` FOREIGN KEY (`id_magasin_r`) REFERENCES `magasins` (`id_magasin`),
  ADD CONSTRAINT `commandes_id_utilisateur_foreign` FOREIGN KEY (`id_utilisateur`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `entrees`
--
ALTER TABLE `entrees`
  ADD CONSTRAINT `entrees_id_magasin_foreign` FOREIGN KEY (`id_magasin`) REFERENCES `magasins` (`id_magasin`),
  ADD CONSTRAINT `entrees_id_utilisateur_foreign` FOREIGN KEY (`id_utilisateur`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `familles`
--
ALTER TABLE `familles`
  ADD CONSTRAINT `familles_id_categorie_foreign` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id_categorie`);

--
-- Contraintes pour la table `ligne_produits`
--
ALTER TABLE `ligne_produits`
  ADD CONSTRAINT `ligne_produits_id_commande_foreign` FOREIGN KEY (`id_commande`) REFERENCES `commandes` (`id_commande`),
  ADD CONSTRAINT `ligne_produits_id_entree_foreign` FOREIGN KEY (`id_entree`) REFERENCES `entrees` (`id_entree`),
  ADD CONSTRAINT `ligne_produits_id_produit_foreign` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`),
  ADD CONSTRAINT `ligne_produits_id_sortie_foreign` FOREIGN KEY (`id_sortie`) REFERENCES `sorties` (`id_sortie`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_id_famille_foreign` FOREIGN KEY (`id_famille`) REFERENCES `familles` (`id_famille`);

--
-- Contraintes pour la table `sorties`
--
ALTER TABLE `sorties`
  ADD CONSTRAINT `sorties_id_magasin_foreign` FOREIGN KEY (`id_magasin`) REFERENCES `magasins` (`id_magasin`),
  ADD CONSTRAINT `sorties_id_utilisateur_foreign` FOREIGN KEY (`id_utilisateur`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_id_magasin_foreign` FOREIGN KEY (`id_magasin`) REFERENCES `magasins` (`id_magasin`) ON DELETE CASCADE,
  ADD CONSTRAINT `stocks_id_produit_foreign` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
