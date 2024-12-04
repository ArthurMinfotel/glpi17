START TRANSACTION;

/* ENTITIES */
DROP TABLE IF EXISTS `glpi_entities_solutiontemplates`;
CREATE TABLE `glpi_entities_solutiontemplates` (
                                                   `id` int unsigned NOT NULL AUTO_INCREMENT,
                                                   `solutiontemplates_id` int unsigned  NOT NULL DEFAULT '0',
                                                   `entities_id` int unsigned  NOT NULL DEFAULT '0',
                                                   `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
                                                   PRIMARY KEY (`id`),
                                                   KEY `solutiontemplates_id` (`solutiontemplates_id`),
                                                   KEY `entities_id` (`entities_id`),
                                                   KEY `is_recursive` (`is_recursive`)
) ENGINE = InnoDB ROW_FORMAT = DYNAMIC DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

INSERT INTO glpi_entities_solutiontemplates (solutiontemplates_id, entities_id, is_recursive)
SELECT id, entities_id, is_recursive
FROM glpi_solutiontemplates;

DROP TABLE IF EXISTS `glpi_entities_tasktemplates`;
CREATE TABLE `glpi_entities_tasktemplates` (
                                               `id` int unsigned NOT NULL AUTO_INCREMENT,
                                               `tasktemplates_id` int unsigned  NOT NULL DEFAULT '0',
                                               `entities_id` int unsigned  NOT NULL DEFAULT '0',
                                               `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
                                               PRIMARY KEY (`id`),
                                               KEY `tasktemplates_id` (`tasktemplates_id`),
                                               KEY `entities_id` (`entities_id`),
                                               KEY `is_recursive` (`is_recursive`)
) ENGINE = InnoDB ROW_FORMAT = DYNAMIC DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

INSERT INTO glpi_entities_tasktemplates (tasktemplates_id, entities_id, is_recursive)
SELECT id, entities_id, is_recursive
FROM glpi_tasktemplates;

DROP TABLE IF EXISTS `glpi_entities_itilfollowuptemplates`;
CREATE TABLE `glpi_entities_itilfollowuptemplates` (
                                                       `id` int unsigned NOT NULL AUTO_INCREMENT,
                                                       `itilfollowuptemplates_id` int unsigned  NOT NULL DEFAULT '0',
                                                       `entities_id` int unsigned  NOT NULL DEFAULT '0',
                                                       `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
                                                       PRIMARY KEY (`id`),
                                                       KEY `itilfollowuptemplates_id` (`itilfollowuptemplates_id`),
                                                       KEY `entities_id` (`entities_id`),
                                                       KEY `is_recursive` (`is_recursive`)
) ENGINE = InnoDB ROW_FORMAT = DYNAMIC DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

INSERT INTO glpi_entities_itilfollowuptemplates (itilfollowuptemplates_id, entities_id, is_recursive)
SELECT id, entities_id, is_recursive
FROM glpi_itilfollowuptemplates;

/* END ENTITIES */

/* PROFILES */
DROP TABLE IF EXISTS `glpi_profiles_solutiontemplates`;
CREATE TABLE `glpi_profiles_solutiontemplates` (
                                                   `id` int unsigned NOT NULL AUTO_INCREMENT,
                                                   `solutiontemplates_id` int unsigned  NOT NULL DEFAULT '0',
                                                   `profiles_id` int unsigned  NOT NULL DEFAULT '0',
                                                   `entities_id` int unsigned  NULL,
                                                   `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
                                                   `no_entity_restriction` tinyint NOT NULL DEFAULT '0',
                                                   PRIMARY KEY (`id`),
                                                   KEY `solutiontemplates_id` (`solutiontemplates_id`),
                                                   KEY `profiles_id` (`profiles_id`),
                                                   KEY `entities_id` (`entities_id`),
                                                   KEY `is_recursive` (`is_recursive`)
) ENGINE = InnoDB ROW_FORMAT = DYNAMIC DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `glpi_profiles_tasktemplates`;
CREATE TABLE `glpi_profiles_tasktemplates` (
                                               `id` int unsigned NOT NULL AUTO_INCREMENT,
                                               `tasktemplates_id` int unsigned  NOT NULL DEFAULT '0',
                                               `profiles_id` int unsigned  NOT NULL DEFAULT '0',
                                               `entities_id` int unsigned  NULL,
                                               `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
                                               `no_entity_restriction` tinyint NOT NULL DEFAULT '0',
                                               PRIMARY KEY (`id`),
                                               KEY `tasktemplates_id` (`tasktemplates_id`),
                                               KEY `profiles_id` (`profiles_id`),
                                               KEY `entities_id` (`entities_id`),
                                               KEY `is_recursive` (`is_recursive`)
) ENGINE = InnoDB ROW_FORMAT = DYNAMIC DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `glpi_profiles_itilfollowuptemplates`;
CREATE TABLE `glpi_profiles_itilfollowuptemplates` (
                                                       `id` int unsigned NOT NULL AUTO_INCREMENT,
                                                       `itilfollowuptemplates_id` int unsigned  NOT NULL DEFAULT '0',
                                                       `profiles_id` int unsigned  NOT NULL DEFAULT '0',
                                                       `entities_id` int unsigned  NULL,
                                                       `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
                                                       `no_entity_restriction` tinyint NOT NULL DEFAULT '0',
                                                       PRIMARY KEY (`id`),
                                                       KEY `itilfollowuptemplates_id` (`itilfollowuptemplates_id`),
                                                       KEY `profiles_id` (`profiles_id`),
                                                       KEY `entities_id` (`entities_id`),
                                                       KEY `is_recursive` (`is_recursive`)
) ENGINE = InnoDB ROW_FORMAT = DYNAMIC DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/* END PROFILES */

/* GROUPS */
DROP TABLE IF EXISTS `glpi_groups_solutiontemplates`;
CREATE TABLE `glpi_groups_solutiontemplates` (
                                                   `id` int unsigned NOT NULL AUTO_INCREMENT,
                                                   `solutiontemplates_id` int unsigned  NOT NULL DEFAULT '0',
                                                   `groups_id` int unsigned  NOT NULL DEFAULT '0',
                                                   `entities_id` int unsigned  NULL,
                                                   `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
                                                   `no_entity_restriction` tinyint NOT NULL DEFAULT '0',
                                                   PRIMARY KEY (`id`),
                                                   KEY `solutiontemplates_id` (`solutiontemplates_id`),
                                                   KEY `groups_id` (`groups_id`),
                                                   KEY `entities_id` (`entities_id`),
                                                   KEY `is_recursive` (`is_recursive`)
) ENGINE = InnoDB ROW_FORMAT = DYNAMIC DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `glpi_groups_tasktemplates`;
CREATE TABLE `glpi_groups_tasktemplates` (
                                               `id` int unsigned NOT NULL AUTO_INCREMENT,
                                               `tasktemplates_id` int unsigned  NOT NULL DEFAULT '0',
                                               `groups_id` int unsigned  NOT NULL DEFAULT '0',
                                               `entities_id` int unsigned  NULL,
                                               `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
                                               `no_entity_restriction` tinyint NOT NULL DEFAULT '0',
                                               PRIMARY KEY (`id`),
                                               KEY `tasktemplates_id` (`tasktemplates_id`),
                                               KEY `groups_id` (`groups_id`),
                                               KEY `entities_id` (`entities_id`),
                                               KEY `is_recursive` (`is_recursive`)
) ENGINE = InnoDB ROW_FORMAT = DYNAMIC DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `glpi_groups_itilfollowuptemplates`;
CREATE TABLE `glpi_groups_itilfollowuptemplates` (
                                                       `id` int unsigned NOT NULL AUTO_INCREMENT,
                                                       `itilfollowuptemplates_id` int unsigned  NOT NULL DEFAULT '0',
                                                       `groups_id` int unsigned  NOT NULL DEFAULT '0',
                                                       `entities_id` int unsigned  NULL,
                                                       `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
                                                       `no_entity_restriction` tinyint NOT NULL DEFAULT '0',
                                                       PRIMARY KEY (`id`),
                                                       KEY `itilfollowuptemplates_id` (`itilfollowuptemplates_id`),
                                                       KEY `groups_id` (`groups_id`),
                                                       KEY `entities_id` (`entities_id`),
                                                       KEY `is_recursive` (`is_recursive`)
) ENGINE = InnoDB ROW_FORMAT = DYNAMIC DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `glpi_groups_savedsearches`;
CREATE TABLE `glpi_groups_savedsearches` (
                                                     `id` int unsigned NOT NULL AUTO_INCREMENT,
                                                     `savedsearches_id` int unsigned  NOT NULL DEFAULT '0',
                                                     `groups_id` int unsigned  NOT NULL DEFAULT '0',
                                                     `entities_id` int unsigned  NULL,
                                                     `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
                                                     `no_entity_restriction` tinyint NOT NULL DEFAULT '0',
                                                     PRIMARY KEY (`id`),
                                                     KEY `savedsearches_id` (`savedsearches_id`),
                                                     KEY `groups_id` (`groups_id`),
                                                     KEY `entities_id` (`entities_id`),
                                                     KEY `is_recursive` (`is_recursive`)
) ENGINE = InnoDB ROW_FORMAT = DYNAMIC DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/* END GROUPS */

/* USERS */
DROP TABLE IF EXISTS `glpi_solutiontemplates_users`;
CREATE TABLE `glpi_solutiontemplates_users` (
                                                     `id` int unsigned NOT NULL AUTO_INCREMENT,
                                                     `solutiontemplates_id` int unsigned  NOT NULL DEFAULT '0',
                                                     `users_id` int unsigned  NOT NULL DEFAULT '0',
                                                     PRIMARY KEY (`id`),
                                                     KEY `solutiontemplates_id` (`solutiontemplates_id`),
                                                     KEY `users_id` (`users_id`)
) ENGINE = InnoDB ROW_FORMAT = DYNAMIC DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `glpi_tasktemplates_users`;
CREATE TABLE `glpi_tasktemplates_users` (
                                             `id` int unsigned NOT NULL AUTO_INCREMENT,
                                             `tasktemplates_id` int unsigned  NOT NULL DEFAULT '0',
                                             `users_id` int unsigned  NOT NULL DEFAULT '0',
                                             PRIMARY KEY (`id`),
                                             KEY `tasktemplates_id` (`tasktemplates_id`),
                                             KEY `users_id` (`users_id`)
) ENGINE = InnoDB ROW_FORMAT = DYNAMIC DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `glpi_itilfollowuptemplates_users`;
CREATE TABLE `glpi_itilfollowuptemplates_users` (
                                                     `id` int unsigned NOT NULL AUTO_INCREMENT,
                                                     `itilfollowuptemplates_id` int unsigned  NOT NULL DEFAULT '0',
                                                     `users_id` int unsigned  NOT NULL DEFAULT '0',
                                                     PRIMARY KEY (`id`),
                                                     KEY `itilfollowuptemplates_id` (`itilfollowuptemplates_id`),
                                                     KEY `users_id` (`users_id`)
) ENGINE = InnoDB ROW_FORMAT = DYNAMIC DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `glpi_savedsearches_usertargets`;
CREATE TABLE `glpi_savedsearches_usertargets` (
                                             `id` int unsigned NOT NULL AUTO_INCREMENT,
                                             `savedsearches_id` int unsigned  NOT NULL DEFAULT '0',
                                             `users_id` int unsigned  NOT NULL DEFAULT '0',
                                             PRIMARY KEY (`id`),
                                             KEY `savedsearches_id` (`savedsearches_id`),
                                             KEY `users_id` (`users_id`)
) ENGINE = InnoDB ROW_FORMAT = DYNAMIC DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/* END USERS */

/* PLANNING */
ALTER TABLE `glpi_users` ADD `hide_done_tasks` TINYINT;
INSERT INTO `glpi_configs` (context, name, value) VALUES ('core', 'hide_done_tasks', 0);

COMMIT;
