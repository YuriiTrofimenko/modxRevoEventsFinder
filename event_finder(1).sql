-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 17 2018 г., 12:11
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `event_finder`
--

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actiondom`
--

CREATE TABLE `modx_access_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actions`
--

CREATE TABLE `modx_access_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_category`
--

CREATE TABLE `modx_access_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_category`
--

INSERT INTO `modx_access_category` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`, `context_key`) VALUES
(1, '8', 'modUserGroup', 1, 0, 5, 'mgr');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_context`
--

CREATE TABLE `modx_access_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2),
(4, 'web', 'modUserGroup', 2, 9999, 11),
(5, 'mgr', 'modUserGroup', 2, 1, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_elements`
--

CREATE TABLE `modx_access_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_media_source`
--

CREATE TABLE `modx_access_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_media_source`
--

INSERT INTO `modx_access_media_source` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`, `context_key`) VALUES
(1, '1', 'modUserGroup', 1, 0, 8, ''),
(2, '1', 'modUserGroup', 1, 0, 9, ''),
(3, '2', 'modUserGroup', 2, 1, 8, ''),
(4, '2', 'modUserGroup', 2, 1, 9, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_menus`
--

CREATE TABLE `modx_access_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_namespace`
--

CREATE TABLE `modx_access_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_permissions`
--

CREATE TABLE `modx_access_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(22, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(23, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(24, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(25, 1, 'delete_template', 'perm.delete_template_desc', 1),
(26, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(27, 1, 'delete_role', 'perm.delete_role_desc', 1),
(28, 1, 'delete_user', 'perm.delete_user_desc', 1),
(29, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(30, 1, 'directory_create', 'perm.directory_create_desc', 1),
(31, 1, 'directory_list', 'perm.directory_list_desc', 1),
(32, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(33, 1, 'directory_update', 'perm.directory_update_desc', 1),
(34, 1, 'edit_category', 'perm.edit_category_desc', 1),
(35, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(36, 1, 'edit_context', 'perm.edit_context_desc', 1),
(37, 1, 'edit_document', 'perm.edit_document_desc', 1),
(38, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(39, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(40, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(41, 1, 'edit_role', 'perm.edit_role_desc', 1),
(42, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(43, 1, 'edit_template', 'perm.edit_template_desc', 1),
(44, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(45, 1, 'edit_user', 'perm.edit_user_desc', 1),
(46, 1, 'element_tree', 'perm.element_tree_desc', 1),
(47, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(48, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(49, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(50, 1, 'export_static', 'perm.export_static_desc', 1),
(51, 1, 'file_create', 'perm.file_create_desc', 1),
(52, 1, 'file_list', 'perm.file_list_desc', 1),
(53, 1, 'file_manager', 'perm.file_manager_desc', 1),
(54, 1, 'file_remove', 'perm.file_remove_desc', 1),
(55, 1, 'file_tree', 'perm.file_tree_desc', 1),
(56, 1, 'file_update', 'perm.file_update_desc', 1),
(57, 1, 'file_upload', 'perm.file_upload_desc', 1),
(58, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(59, 1, 'file_view', 'perm.file_view_desc', 1),
(60, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(61, 1, 'frames', 'perm.frames_desc', 1),
(62, 1, 'help', 'perm.help_desc', 1),
(63, 1, 'home', 'perm.home_desc', 1),
(64, 1, 'import_static', 'perm.import_static_desc', 1),
(65, 1, 'languages', 'perm.languages_desc', 1),
(66, 1, 'lexicons', 'perm.lexicons_desc', 1),
(67, 1, 'list', 'perm.list_desc', 1),
(68, 1, 'load', 'perm.load_desc', 1),
(69, 1, 'logout', 'perm.logout_desc', 1),
(70, 1, 'logs', 'perm.logs_desc', 1),
(71, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(72, 1, 'menu_security', 'perm.menu_security_desc', 1),
(73, 1, 'menu_site', 'perm.menu_site_desc', 1),
(74, 1, 'menu_support', 'perm.menu_support_desc', 1),
(75, 1, 'menu_system', 'perm.menu_system_desc', 1),
(76, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(77, 1, 'menu_user', 'perm.menu_user_desc', 1),
(78, 1, 'menus', 'perm.menus_desc', 1),
(79, 1, 'messages', 'perm.messages_desc', 1),
(80, 1, 'namespaces', 'perm.namespaces_desc', 1),
(81, 1, 'new_category', 'perm.new_category_desc', 1),
(82, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(83, 1, 'new_context', 'perm.new_context_desc', 1),
(84, 1, 'new_document', 'perm.new_document_desc', 1),
(85, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(86, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(87, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(88, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(89, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(90, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(91, 1, 'new_role', 'perm.new_role_desc', 1),
(92, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(93, 1, 'new_template', 'perm.new_template_desc', 1),
(94, 1, 'new_tv', 'perm.new_tv_desc', 1),
(95, 1, 'new_user', 'perm.new_user_desc', 1),
(96, 1, 'packages', 'perm.packages_desc', 1),
(97, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(98, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(99, 1, 'policy_new', 'perm.policy_new_desc', 1),
(100, 1, 'policy_save', 'perm.policy_save_desc', 1),
(101, 1, 'policy_view', 'perm.policy_view_desc', 1),
(102, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(103, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(104, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(105, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(106, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(107, 1, 'property_sets', 'perm.property_sets_desc', 1),
(108, 1, 'providers', 'perm.providers_desc', 1),
(109, 1, 'publish_document', 'perm.publish_document_desc', 1),
(110, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(111, 1, 'remove', 'perm.remove_desc', 1),
(112, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(113, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(114, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(115, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(116, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(117, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(118, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(119, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(120, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(121, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(122, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(123, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(124, 1, 'save', 'perm.save_desc', 1),
(125, 1, 'save_category', 'perm.save_category_desc', 1),
(126, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(127, 1, 'save_context', 'perm.save_context_desc', 1),
(128, 1, 'save_document', 'perm.save_document_desc', 1),
(129, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(130, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(131, 1, 'save_role', 'perm.save_role_desc', 1),
(132, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(133, 1, 'save_template', 'perm.save_template_desc', 1),
(134, 1, 'save_tv', 'perm.save_tv_desc', 1),
(135, 1, 'save_user', 'perm.save_user_desc', 1),
(136, 1, 'search', 'perm.search_desc', 1),
(137, 1, 'settings', 'perm.settings_desc', 1),
(138, 1, 'events', 'perm.events_desc', 1),
(139, 1, 'source_save', 'perm.source_save_desc', 1),
(140, 1, 'source_delete', 'perm.source_delete_desc', 1),
(141, 1, 'source_edit', 'perm.source_edit_desc', 1),
(142, 1, 'source_view', 'perm.source_view_desc', 1),
(143, 1, 'sources', 'perm.sources_desc', 1),
(144, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(145, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(146, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(147, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(148, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(149, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(150, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(151, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(152, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(153, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(154, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(155, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(156, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(157, 1, 'view', 'perm.view_desc', 1),
(158, 1, 'view_category', 'perm.view_category_desc', 1),
(159, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(160, 1, 'view_context', 'perm.view_context_desc', 1),
(161, 1, 'view_document', 'perm.view_document_desc', 1),
(162, 1, 'view_element', 'perm.view_element_desc', 1),
(163, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(164, 1, 'view_offline', 'perm.view_offline_desc', 1),
(165, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(166, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(167, 1, 'view_role', 'perm.view_role_desc', 1),
(168, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(169, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(170, 1, 'view_template', 'perm.view_template_desc', 1),
(171, 1, 'view_tv', 'perm.view_tv_desc', 1),
(172, 1, 'view_user', 'perm.view_user_desc', 1),
(173, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(174, 1, 'workspaces', 'perm.workspaces_desc', 1),
(175, 2, 'add_children', 'perm.add_children_desc', 1),
(176, 2, 'copy', 'perm.copy_desc', 1),
(177, 2, 'create', 'perm.create_desc', 1),
(178, 2, 'delete', 'perm.delete_desc', 1),
(179, 2, 'list', 'perm.list_desc', 1),
(180, 2, 'load', 'perm.load_desc', 1),
(181, 2, 'move', 'perm.move_desc', 1),
(182, 2, 'publish', 'perm.publish_desc', 1),
(183, 2, 'remove', 'perm.remove_desc', 1),
(184, 2, 'save', 'perm.save_desc', 1),
(185, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(186, 2, 'undelete', 'perm.undelete_desc', 1),
(187, 2, 'unpublish', 'perm.unpublish_desc', 1),
(188, 2, 'view', 'perm.view_desc', 1),
(189, 3, 'load', 'perm.load_desc', 1),
(190, 3, 'list', 'perm.list_desc', 1),
(191, 3, 'view', 'perm.view_desc', 1),
(192, 3, 'save', 'perm.save_desc', 1),
(193, 3, 'remove', 'perm.remove_desc', 1),
(194, 4, 'add_children', 'perm.add_children_desc', 1),
(195, 4, 'create', 'perm.create_desc', 1),
(196, 4, 'copy', 'perm.copy_desc', 1),
(197, 4, 'delete', 'perm.delete_desc', 1),
(198, 4, 'list', 'perm.list_desc', 1),
(199, 4, 'load', 'perm.load_desc', 1),
(200, 4, 'remove', 'perm.remove_desc', 1),
(201, 4, 'save', 'perm.save_desc', 1),
(202, 4, 'view', 'perm.view_desc', 1),
(203, 5, 'create', 'perm.create_desc', 1),
(204, 5, 'copy', 'perm.copy_desc', 1),
(205, 5, 'list', 'perm.list_desc', 1),
(206, 5, 'load', 'perm.load_desc', 1),
(207, 5, 'remove', 'perm.remove_desc', 1),
(208, 5, 'save', 'perm.save_desc', 1),
(209, 5, 'view', 'perm.view_desc', 1),
(210, 6, 'load', 'perm.load_desc', 1),
(211, 6, 'list', 'perm.list_desc', 1),
(212, 6, 'view', 'perm.view_desc', 1),
(213, 6, 'save', 'perm.save_desc', 1),
(214, 6, 'remove', 'perm.remove_desc', 1),
(215, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(216, 6, 'copy', 'perm.copy_desc', 1),
(217, 7, 'list', 'perm.list_desc', 1),
(218, 7, 'load', 'perm.load_desc', 1),
(219, 7, 'view', 'perm.view_desc', 1),
(220, 8, 'ticket_delete', 'ticket_delete', 1),
(221, 8, 'ticket_publish', 'ticket_publish', 1),
(222, 8, 'ticket_save', 'ticket_save', 1),
(223, 8, 'ticket_view_private', 'ticket_view_private', 1),
(224, 8, 'ticket_vote', 'ticket_vote', 1),
(225, 8, 'ticket_star', 'ticket_star', 1),
(226, 8, 'comment_save', 'comment_save', 1),
(227, 8, 'comment_delete', 'comment_delete', 1),
(228, 8, 'comment_remove', 'comment_remove', 1),
(229, 8, 'comment_publish', 'comment_publish', 1),
(230, 8, 'comment_vote', 'comment_vote', 1),
(231, 8, 'comment_star', 'comment_star', 1),
(232, 8, 'ticket_file_upload', 'ticket_file_upload', 1),
(233, 8, 'ticket_file_delete', 'ticket_file_delete', 1),
(234, 8, 'thread_close', 'thread_close', 1),
(235, 8, 'thread_delete', 'thread_delete', 1),
(236, 8, 'thread_remove', 'thread_remove', 1),
(237, 9, 'section_add_children', 'section_add_children', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policies`
--

CREATE TABLE `modx_access_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{\"load\":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true,\"new_document\":true,\"delete_document\":true}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}', 'permissions'),
(12, 'Hidden Namespace', 'Hidden Namespace policy, will not show Namespace in lists.', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true}', 'permissions'),
(13, 'Manager', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{\"about\":false,\"access_permissions\":false,\"actions\":false,\"change_password\":true,\"change_profile\":true,\"charsets\":false,\"class_map\":true,\"components\":true,\"content_types\":false,\"countries\":true,\"create\":false,\"credits\":false,\"customize_forms\":false,\"dashboards\":false,\"database\":false,\"database_truncate\":false,\"delete_category\":false,\"delete_chunk\":false,\"delete_context\":false,\"delete_document\":true,\"delete_eventlog\":false,\"delete_plugin\":false,\"delete_propertyset\":false,\"delete_role\":false,\"delete_snippet\":false,\"delete_template\":false,\"delete_tv\":false,\"delete_user\":false,\"directory_chmod\":false,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":false,\"edit_chunk\":false,\"edit_context\":false,\"edit_document\":true,\"edit_locked\":false,\"edit_plugin\":false,\"edit_propertyset\":false,\"edit_role\":false,\"edit_snippet\":false,\"edit_template\":false,\"edit_tv\":false,\"edit_user\":false,\"element_tree\":false,\"empty_cache\":true,\"error_log_erase\":false,\"error_log_view\":false,\"export_static\":false,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":false,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":false,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":false,\"menus\":false,\"menu_reports\":true,\"menu_security\":false,\"menu_site\":true,\"menu_support\":false,\"menu_system\":false,\"menu_tools\":false,\"menu_user\":true,\"messages\":false,\"namespaces\":true,\"new_category\":false,\"new_chunk\":false,\"new_context\":false,\"new_document\":true,\"new_document_in_root\":false,\"new_plugin\":false,\"new_propertyset\":false,\"new_role\":false,\"new_snippet\":false,\"new_static_resource\":false,\"new_symlink\":false,\"new_template\":false,\"new_tv\":false,\"new_user\":false,\"new_weblink\":false,\"packages\":false,\"policy_delete\":false,\"policy_edit\":false,\"policy_new\":false,\"policy_save\":false,\"policy_template_delete\":false,\"policy_template_edit\":false,\"policy_template_new\":false,\"policy_template_save\":false,\"policy_template_view\":false,\"policy_view\":false,\"property_sets\":false,\"providers\":false,\"publish_document\":true,\"purge_deleted\":true,\"remove\":false,\"remove_locks\":false,\"resourcegroup_delete\":false,\"resourcegroup_edit\":false,\"resourcegroup_new\":false,\"resourcegroup_resource_edit\":false,\"resourcegroup_resource_list\":false,\"resourcegroup_save\":false,\"resourcegroup_view\":false,\"resource_duplicate\":true,\"resource_quick_create\":false,\"resource_quick_update\":false,\"resource_tree\":true,\"save\":false,\"save_category\":false,\"save_chunk\":false,\"save_context\":false,\"save_document\":true,\"save_plugin\":false,\"save_propertyset\":false,\"save_role\":false,\"save_snippet\":false,\"save_template\":false,\"save_tv\":false,\"save_user\":false,\"search\":false,\"settings\":false,\"sources\":false,\"source_delete\":false,\"source_edit\":false,\"source_save\":false,\"source_view\":true,\"steal_locks\":false,\"tree_show_element_ids\":false,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":false,\"unpublish_document\":true,\"usergroup_delete\":false,\"usergroup_edit\":false,\"usergroup_new\":false,\"usergroup_save\":false,\"usergroup_user_edit\":false,\"usergroup_user_list\":false,\"usergroup_view\":false,\"view\":true,\"view_category\":false,\"view_chunk\":false,\"view_context\":false,\"view_document\":true,\"view_element\":false,\"view_eventlog\":false,\"view_offline\":false,\"view_plugin\":false,\"view_propertyset\":false,\"view_role\":false,\"view_snippet\":false,\"view_sysinfo\":false,\"view_template\":false,\"view_tv\":false,\"view_unpublished\":true,\"view_user\":false,\"workspaces\":false}', ''),
(14, 'TicketUserPolicy', 'A policy for create and update Tickets.', 0, 8, '', '{\"ticket_delete\":true,\"ticket_publish\":true,\"ticket_save\":true,\"ticket_vote\":true,\"ticket_star\":true,\"comment_save\":true,\"comment_delete\":true,\"comment_remove\":true,\"comment_publish\":true,\"comment_vote\":true,\"comment_star\":true,\"ticket_file_upload\":true,\"ticket_file_delete\":true,\"thread_close\":true,\"thread_delete\":true,\"thread_remove\":true}', 'tickets:permissions'),
(15, 'TicketSectionPolicy', 'A policy for add tickets in section.', 0, 9, '', '{\"section_add_children\":true}', 'tickets:permissions'),
(16, 'TicketVipPolicy', 'A policy for create and update private Tickets.', 0, 8, '', '{\"ticket_delete\":true,\"ticket_publish\":true,\"ticket_save\":true,\"ticket_vote\":true,\"ticket_star\":true,\"comment_save\":true,\"comment_delete\":true,\"comment_remove\":true,\"comment_publish\":true,\"comment_vote\":true,\"comment_star\":true,\"ticket_view_private\":true,\"ticket_file_upload\":true,\"ticket_file_delete\":true,\"thread_close\":true,\"thread_delete\":true,\"thread_remove\":true}', 'tickets:permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_templates`
--

CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions'),
(7, 6, 'NamespaceTemplate', 'Namespace Policy Template with all attributes.', 'permissions'),
(8, 1, 'TicketsUserPolicyTemplate', 'A policy for users to create Tickets and comments.', 'tickets:permissions'),
(9, 3, 'TicketsSectionPolicyTemplate', 'A policy for users to add Tickets to section.', 'tickets:permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_template_groups`
--

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.'),
(6, 'Namespace', 'All Namespace based policy templates.');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resources`
--

CREATE TABLE `modx_access_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resource_groups`
--

CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_resource_groups`
--

INSERT INTO `modx_access_resource_groups` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`, `context_key`) VALUES
(1, '1', 'modUserGroup', 1, 9999, 1, 'web'),
(2, '1', 'modUserGroup', 0, 9999, 4, 'web'),
(3, '1', 'modUserGroup', 2, 9999, 1, 'web'),
(4, '1', 'modUserGroup', 1, 0, 1, 'mgr');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_templatevars`
--

CREATE TABLE `modx_access_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actiondom`
--

CREATE TABLE `modx_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(191) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions`
--

CREATE TABLE `modx_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(191) NOT NULL,
  `haslayout` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_actions`
--

INSERT INTO `modx_actions` (`id`, `namespace`, `controller`, `haslayout`, `lang_topics`, `assets`, `help_url`) VALUES
(1, 'tickets', 'index', 1, 'tickets:default', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions_fields`
--

CREATE TABLE `modx_actions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(191) NOT NULL DEFAULT '',
  `other` varchar(191) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(33, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(34, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(35, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(36, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(37, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(38, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(39, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(40, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(41, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(42, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(43, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(44, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(45, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(46, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(47, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(48, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(49, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(51, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(52, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(53, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(54, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(55, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(56, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(57, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(58, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(59, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(60, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(61, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(62, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(63, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(64, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(65, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(66, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(67, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(68, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(69, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(70, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(71, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(72, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(73, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(74, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(75, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(76, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(77, 'resource/create', 'tickets-box-publishing-information', 'tab', 'modx-resource-main-right', 'modx-panel-resource', 'tickets', 10),
(78, 'resource/create', 'publishedon', 'field', 'tickets-box-publishing-information', 'modx-panel-resource', 'tickets', 0),
(79, 'resource/create', 'pub_date', 'field', 'tickets-box-publishing-information', 'modx-panel-resource', 'tickets', 1),
(80, 'resource/create', 'unpub_date', 'field', 'tickets-box-publishing-information', 'modx-panel-resource', 'tickets', 2),
(81, 'resource/create', 'template', 'field', 'tickets-box-publishing-information', 'modx-panel-resource', 'tickets', 3),
(82, 'resource/create', 'modx-resource-createdby', 'field', 'tickets-box-publishing-information', 'modx-panel-resource', 'tickets', 4),
(83, 'resource/create', 'tickets-combo-section', 'field', 'tickets-box-publishing-information', 'modx-panel-resource', 'tickets', 5),
(84, 'resource/create', 'alias', 'field', 'tickets-box-publishing-information', 'modx-panel-resource', 'tickets', 6),
(85, 'resource/create', 'tickets-box-options', 'tab', 'modx-resource-main-right', 'modx-panel-resource', 'tickets', 11),
(86, 'resource/create', 'searchable', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 0),
(87, 'resource/create', 'properties[disable_jevix]', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 1),
(88, 'resource/create', 'cacheable', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 2),
(89, 'resource/create', 'properties[process_tags]', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 3),
(90, 'resource/create', 'published', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 4),
(91, 'resource/create', 'private', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 5),
(92, 'resource/create', 'richtext', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 6),
(93, 'resource/create', 'hidemenu', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 7),
(94, 'resource/create', 'isfolder', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 8),
(95, 'resource/create', 'modx-tickets-comments', 'tab', '', 'modx-panel-resource', 'tickets', 12),
(96, 'resource/update', 'tickets-box-publishing-information', 'tab', 'modx-resource-main-right', 'modx-panel-resource', 'tickets', 10),
(97, 'resource/update', 'publishedon', 'field', 'tickets-box-publishing-information', 'modx-panel-resource', 'tickets', 0),
(98, 'resource/update', 'pub_date', 'field', 'tickets-box-publishing-information', 'modx-panel-resource', 'tickets', 1),
(99, 'resource/update', 'unpub_date', 'field', 'tickets-box-publishing-information', 'modx-panel-resource', 'tickets', 2),
(100, 'resource/update', 'template', 'field', 'tickets-box-publishing-information', 'modx-panel-resource', 'tickets', 3),
(101, 'resource/update', 'modx-resource-createdby', 'field', 'tickets-box-publishing-information', 'modx-panel-resource', 'tickets', 4),
(102, 'resource/update', 'tickets-combo-section', 'field', 'tickets-box-publishing-information', 'modx-panel-resource', 'tickets', 5),
(103, 'resource/update', 'alias', 'field', 'tickets-box-publishing-information', 'modx-panel-resource', 'tickets', 6),
(104, 'resource/update', 'tickets-box-options', 'tab', 'modx-resource-main-right', 'modx-panel-resource', 'tickets', 11),
(105, 'resource/update', 'searchable', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 0),
(106, 'resource/update', 'properties[disable_jevix]', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 1),
(107, 'resource/update', 'cacheable', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 2),
(108, 'resource/update', 'properties[process_tags]', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 3),
(109, 'resource/update', 'published', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 4),
(110, 'resource/update', 'private', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 5),
(111, 'resource/update', 'richtext', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 6),
(112, 'resource/update', 'hidemenu', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 7),
(113, 'resource/update', 'isfolder', 'field', 'tickets-box-options', 'modx-panel-resource', 'tickets', 8),
(114, 'resource/update', 'modx-tickets-comments', 'tab', '', 'modx-panel-resource', 'tickets', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `parent`, `category`, `rank`) VALUES
(1, 0, 'customChunks', 0),
(2, 1, 'base', 0),
(3, 1, 'content', 0),
(4, 1, 'common', 0),
(5, 0, 'customPlugins', 0),
(6, 0, 'customTemplates', 0),
(7, 0, 'customSnippets', 0),
(8, 6, 'technical', 0),
(9, 0, 'Tickets', 0),
(10, 0, 'pdoTools', 0),
(11, 1, 'enentsParts', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories_closure`
--

CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `depth` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_categories_closure`
--

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(0, 1, 0),
(0, 2, 0),
(0, 3, 0),
(0, 4, 0),
(0, 5, 0),
(0, 6, 0),
(0, 7, 0),
(0, 8, 0),
(0, 9, 0),
(0, 10, 0),
(0, 11, 0),
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 11, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(6, 8, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 0),
(11, 11, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_class_map`
--

CREATE TABLE `modx_class_map` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(191) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:resource'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_content_type`
--

CREATE TABLE `modx_content_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context`
--

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('web', 'Website', 'The default front-end context for your web site.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_resource`
--

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_setting`
--

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard`
--

CREATE TABLE `modx_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget`
--

CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(191) NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget_placement`
--

CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `widget` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_documentgroup_names`
--

INSERT INTO `modx_documentgroup_names` (`id`, `name`, `private_memgroup`, `private_webgroup`) VALUES
(1, 'technical', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_element_property_sets`
--

CREATE TABLE `modx_element_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_extension_packages`
--

CREATE TABLE `modx_extension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(191) NOT NULL DEFAULT '',
  `service_class` varchar(191) NOT NULL DEFAULT '',
  `service_name` varchar(191) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles`
--

CREATE TABLE `modx_fc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles_usergroups`
--

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_sets`
--

CREATE TABLE `modx_fc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_lexicon_entries`
--

CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2018-04-16 11:18:23', 'login', 'modContext', 'mgr'),
(2, 1, '2018-04-16 11:32:50', 'category_create', 'modCategory', '1'),
(3, 1, '2018-04-16 11:33:38', 'category_create', 'modCategory', '2'),
(4, 1, '2018-04-16 11:33:50', 'category_create', 'modCategory', '3'),
(5, 1, '2018-04-16 11:34:00', 'category_create', 'modCategory', '4'),
(6, 1, '2018-04-16 11:35:31', 'category_create', 'modCategory', '5'),
(7, 1, '2018-04-16 11:35:49', 'category_create', 'modCategory', '6'),
(8, 1, '2018-04-16 11:36:09', 'category_create', 'modCategory', '7'),
(9, 1, '2018-04-16 11:54:37', 'setting_update', 'modSystemSetting', 'container_suffix'),
(10, 1, '2018-04-16 11:54:54', 'setting_update', 'modSystemSetting', 'friendly_alias_lowercase_only'),
(11, 1, '2018-04-16 11:55:57', 'setting_update', 'modSystemSetting', 'friendly_alias_restrict_chars_pattern'),
(12, 1, '2018-04-16 11:56:18', 'setting_update', 'modSystemSetting', 'friendly_urls'),
(13, 1, '2018-04-16 11:56:54', 'setting_update', 'modSystemSetting', 'friendly_urls_strict'),
(14, 1, '2018-04-16 11:57:11', 'setting_update', 'modSystemSetting', 'friendly_alias_max_length'),
(15, 1, '2018-04-16 11:58:42', 'content_type_save', 'modContentType', '1'),
(16, 1, '2018-04-16 12:09:43', 'clear_cache', '', 'mgr'),
(17, 1, '2018-04-16 12:12:29', 'plugin_create', 'modPlugin', '1'),
(18, 1, '2018-04-16 12:13:52', 'chunk_create', 'modChunk', '1'),
(19, 1, '2018-04-16 12:16:17', 'policy_import', 'modAccessPolicy', '13'),
(20, 1, '2018-04-16 12:16:52', 'role_create', 'modUserGroupRole', '3'),
(21, 1, '2018-04-16 12:17:51', 'user_group_create', 'modUserGroup', '2'),
(22, 1, '2018-04-16 12:19:43', 'access_context_update', 'modAccessContext', '5'),
(23, 1, '2018-04-17 09:58:03', 'plugin_update', 'modPlugin', '1'),
(24, 1, '2018-04-17 09:58:05', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 1 Default'),
(25, 1, '2018-04-17 09:59:49', 'resource_group_create', 'modResourceGroup', '1'),
(26, 1, '2018-04-17 10:02:55', 'category_create', 'modCategory', '8'),
(27, 1, '2018-04-17 10:03:40', 'access_category_create', 'modAccessCategory', '1'),
(28, 1, '2018-04-17 10:04:30', 'access_rgroup_create', 'modAccessResourceGroup', '4'),
(29, 1, '2018-04-17 10:07:37', 'user_create', 'modUser', '2'),
(30, 1, '2018-04-17 10:10:05', 'source_update', 'sources.modMediaSource', '1'),
(31, 1, '2018-04-17 10:11:05', 'source_create', 'sources.modMediaSource', '2'),
(32, 1, '2018-04-17 10:13:14', 'source_update', 'sources.modMediaSource', '2'),
(33, 2, '2018-04-17 10:13:44', 'login', 'modContext', 'mgr'),
(34, 1, '2018-04-17 10:15:10', 'login', 'modContext', 'mgr'),
(35, 1, '2018-04-17 10:22:40', 'template_update', 'modTemplate', '1'),
(36, 1, '2018-04-17 10:22:41', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(37, 1, '2018-04-17 10:23:42', 'chunk_update', 'modChunk', '1'),
(38, 1, '2018-04-17 10:23:43', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(39, 1, '2018-04-17 10:24:32', 'chunk_create', 'modChunk', '2'),
(40, 1, '2018-04-17 10:25:21', 'chunk_create', 'modChunk', '3'),
(41, 1, '2018-04-17 10:26:44', 'chunk_create', 'modChunk', '4'),
(42, 1, '2018-04-17 10:27:56', 'template_update', 'modTemplate', '1'),
(43, 1, '2018-04-17 10:27:57', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(44, 1, '2018-04-17 10:30:01', 'template_update', 'modTemplate', '1'),
(45, 1, '2018-04-17 10:30:05', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(46, 1, '2018-04-17 10:30:15', 'template_update', 'modTemplate', '1'),
(47, 1, '2018-04-17 10:30:16', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(48, 1, '2018-04-17 10:30:44', 'chunk_update', 'modChunk', '1'),
(49, 1, '2018-04-17 10:30:46', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(50, 1, '2018-04-17 10:31:04', 'chunk_update', 'modChunk', '2'),
(51, 1, '2018-04-17 10:31:06', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(52, 1, '2018-04-17 10:31:23', 'chunk_update', 'modChunk', '3'),
(53, 1, '2018-04-17 10:31:24', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(54, 1, '2018-04-17 10:31:40', 'chunk_update', 'modChunk', '4'),
(55, 1, '2018-04-17 10:31:41', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 4 Default'),
(56, 1, '2018-04-17 10:33:18', 'chunk_create', 'modChunk', '5'),
(57, 1, '2018-04-17 10:34:09', 'clear_cache', '', 'mgr'),
(58, 1, '2018-04-17 10:36:03', 'clear_cache', '', 'mgr'),
(59, 1, '2018-04-17 10:37:31', 'clear_cache', '', 'mgr'),
(60, 1, '2018-04-17 10:44:02', 'resource_update', 'modResource', '1'),
(61, 1, '2018-04-17 10:49:15', 'resource_create', 'TicketsSection', '2'),
(62, 1, '2018-04-17 10:52:02', 'tv_create', 'modTemplateVar', '1'),
(63, 1, '2018-04-17 10:54:48', 'template_create', 'modTemplate', '2'),
(64, 1, '2018-04-17 10:55:47', 'chunk_create', 'modChunk', '34'),
(65, 1, '2018-04-17 10:56:48', 'chunk_update', 'modChunk', '34'),
(66, 1, '2018-04-17 10:56:49', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 34 Default'),
(67, 1, '2018-04-17 11:02:36', 'category_create', 'modCategory', '11'),
(68, 1, '2018-04-17 11:02:54', 'resource_update', 'TicketsSection', '2'),
(69, 1, '2018-04-17 11:03:59', 'chunk_create', 'modChunk', '35'),
(70, 1, '2018-04-17 11:32:39', 'template_update', 'modTemplate', '2'),
(71, 1, '2018-04-17 11:32:40', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 2 Default'),
(72, 1, '2018-04-17 11:35:47', 'resource_create', 'Ticket', '3'),
(73, 1, '2018-04-17 11:36:38', 'file_upload', '', 'C:/OSPanel/domains/localhost/assets/uploads/'),
(74, 1, '2018-04-17 11:36:39', 'file_upload', '', 'C:/OSPanel/domains/localhost/assets/uploads/'),
(75, 1, '2018-04-17 11:36:40', 'file_upload', '', 'C:/OSPanel/domains/localhost/assets/uploads/'),
(76, 1, '2018-04-17 11:36:42', 'file_upload', '', 'C:/OSPanel/domains/localhost/assets/uploads/'),
(77, 1, '2018-04-17 11:36:43', 'file_upload', '', 'C:/OSPanel/domains/localhost/assets/uploads/'),
(78, 1, '2018-04-17 11:36:44', 'file_upload', '', 'C:/OSPanel/domains/localhost/assets/uploads/'),
(79, 1, '2018-04-17 11:36:45', 'file_upload', '', 'C:/OSPanel/domains/localhost/assets/uploads/'),
(80, 1, '2018-04-17 11:36:46', 'file_upload', '', 'C:/OSPanel/domains/localhost/assets/uploads/'),
(81, 1, '2018-04-17 11:37:22', 'resource_update', 'Ticket', '3'),
(82, 1, '2018-04-17 11:41:15', 'resource_update', 'TicketsSection', '2'),
(83, 1, '2018-04-17 11:43:50', 'resource_create', 'Ticket', '4'),
(84, 1, '2018-04-17 11:54:26', 'clear_cache', '', 'mgr'),
(85, 1, '2018-04-17 11:55:29', 'clear_cache', '', 'mgr'),
(86, 1, '2018-04-17 11:57:07', 'clear_cache', '', 'mgr'),
(87, 1, '2018-04-17 11:59:53', 'clear_cache', '', 'mgr'),
(88, 1, '2018-04-17 12:00:24', 'clear_cache', '', 'mgr'),
(89, 1, '2018-04-17 12:01:54', 'clear_cache', '', 'mgr'),
(90, 1, '2018-04-17 12:03:12', 'clear_cache', '', 'mgr'),
(91, 1, '2018-04-17 12:07:52', 'clear_cache', '', 'mgr'),
(92, 1, '2018-04-17 12:09:52', 'clear_cache', '', 'mgr'),
(93, 1, '2018-04-17 12:09:59', 'clear_cache', '', 'mgr');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources`
--

CREATE TABLE `modx_media_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1),
(2, 'Uploads', '', 'sources.modFileMediaSource', 'a:2:{s:8:\"basePath\";a:6:{s:4:\"name\";s:8:\"basePath\";s:4:\"desc\";s:23:\"prop_file.basePath_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:15:\"assets/uploads/\";s:7:\"lexicon\";s:11:\"core:source\";}s:7:\"baseUrl\";a:6:{s:4:\"name\";s:7:\"baseUrl\";s:4:\"desc\";s:22:\"prop_file.baseUrl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:15:\"assets/uploads/\";s:7:\"lexicon\";s:11:\"core:source\";}}', 1),
(3, 'Tickets Files', 'Default media source for files of tickets', 'sources.modFileMediaSource', 'a:10:{s:8:\"basePath\";a:5:{s:4:\"name\";s:8:\"basePath\";s:4:\"desc\";s:23:\"prop_file.basePath_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"lexicon\";s:11:\"core:source\";s:5:\"value\";s:22:\"assets/images/tickets/\";}s:7:\"baseUrl\";a:5:{s:4:\"name\";s:7:\"baseUrl\";s:4:\"desc\";s:22:\"prop_file.baseUrl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"lexicon\";s:11:\"core:source\";s:5:\"value\";s:22:\"assets/images/tickets/\";}s:15:\"imageExtensions\";a:5:{s:4:\"name\";s:15:\"imageExtensions\";s:4:\"desc\";s:30:\"prop_file.imageExtensions_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"lexicon\";s:11:\"core:source\";s:5:\"value\";s:16:\"jpg,jpeg,png,gif\";}s:16:\"allowedFileTypes\";a:5:{s:4:\"name\";s:16:\"allowedFileTypes\";s:4:\"desc\";s:31:\"prop_file.allowedFileTypes_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"lexicon\";s:11:\"core:source\";s:5:\"value\";s:16:\"jpg,jpeg,png,gif\";}s:13:\"thumbnailType\";a:6:{s:4:\"name\";s:13:\"thumbnailType\";s:4:\"desc\";s:28:\"prop_file.thumbnailType_desc\";s:4:\"type\";s:4:\"list\";s:7:\"lexicon\";s:11:\"core:source\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"Png\";s:5:\"value\";s:3:\"png\";}i:1;a:2:{s:4:\"text\";s:3:\"Jpg\";s:5:\"value\";s:3:\"jpg\";}}s:5:\"value\";s:3:\"jpg\";}s:9:\"thumbnail\";a:5:{s:4:\"name\";s:9:\"thumbnail\";s:4:\"desc\";s:29:\"tickets.source_thumbnail_desc\";s:4:\"type\";s:8:\"textarea\";s:7:\"lexicon\";s:15:\"tickets:setting\";s:5:\"value\";s:56:\"{\"thumb\":{\"w\":120,\"h\":90,\"q\":90,\"zc\":\"1\",\"bg\":\"000000\"}}\";}s:14:\"maxUploadWidth\";a:5:{s:4:\"name\";s:14:\"maxUploadWidth\";s:4:\"desc\";s:34:\"tickets.source_maxUploadWidth_desc\";s:4:\"type\";s:11:\"numberfield\";s:7:\"lexicon\";s:15:\"tickets:setting\";s:5:\"value\";i:1920;}s:15:\"maxUploadHeight\";a:5:{s:4:\"name\";s:15:\"maxUploadHeight\";s:4:\"desc\";s:35:\"tickets.source_maxUploadHeight_desc\";s:4:\"type\";s:11:\"numberfield\";s:7:\"lexicon\";s:15:\"tickets:setting\";s:5:\"value\";i:1080;}s:13:\"maxUploadSize\";a:5:{s:4:\"name\";s:13:\"maxUploadSize\";s:4:\"desc\";s:33:\"tickets.source_maxUploadSize_desc\";s:4:\"type\";s:11:\"numberfield\";s:7:\"lexicon\";s:15:\"tickets:setting\";s:5:\"value\";i:3145728;}s:13:\"imageNameType\";a:6:{s:4:\"name\";s:13:\"imageNameType\";s:4:\"desc\";s:33:\"tickets.source_imageNameType_desc\";s:4:\"type\";s:4:\"list\";s:7:\"lexicon\";s:15:\"tickets:setting\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:4:\"Hash\";s:5:\"value\";s:4:\"hash\";}i:1;a:2:{s:4:\"text\";s:8:\"Friendly\";s:5:\"value\";s:8:\"friendly\";}}s:5:\"value\";s:4:\"hash\";}}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_contexts`
--

CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_elements`
--

CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_media_sources_elements`
--

INSERT INTO `modx_media_sources_elements` (`source`, `object_class`, `object`, `context_key`) VALUES
(1, 'modTemplateVar', 1, 'web');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1),
(2, 'manager', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `member` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0),
(2, 2, 2, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_menus`
--

CREATE TABLE `modx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `menuindex` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('about', 'usernav', 'help', '', '<i class=\"icon-question-circle icon icon-large\"></i>', 7, '', '', 'help', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon icon-large\"></i>', 6, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('tickets', 'components', '1', 'ticket_menu_desc', 'images/icons/plugin.gif', 0, '', '', '', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_namespaces`
--

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('core', '{core_path}', '{assets_path}'),
('pdotools', '{core_path}components/pdotools/', ''),
('tickets', '{core_path}components/tickets/', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_property_set`
--

CREATE TABLE `modx_property_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(191) NOT NULL DEFAULT '',
  `properties` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_messages`
--

CREATE TABLE `modx_register_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_register_messages`
--

INSERT INTO `modx_register_messages` (`topic`, `id`, `created`, `valid`, `accessed`, `accesses`, `expires`, `payload`, `kill`) VALUES
(1, 'c81e728d9d4c2f636f067f89cc14862c', '2018-04-17 11:50:36', '2018-04-17 11:50:36', NULL, 0, 1523955396, 'if (time() > 1523955396) return null;\nreturn 1;\n', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_queues`
--

CREATE TABLE `modx_register_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}'),
(2, 'resource_reload', 'a:1:{s:9:\"directory\";s:15:\"resource_reload\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_topics`
--

CREATE TABLE `modx_register_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2018-04-17 09:55:07', NULL, NULL),
(2, 2, '/resourcereload/', '2018-04-17 10:35:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_session`
--

CREATE TABLE `modx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int(20) UNSIGNED NOT NULL,
  `data` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('boijm5qfvhdu5ma5egvujc4502', 1523949303, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}'),
('rbkd2j0fb9fcbrq92f0dem6t81', 1523955036, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx5ad45bf82c4b71.15997177_15ad59efebafb56.21410889\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:20:{i:0;s:23:\"5ad5a34f84d438.49291654\";i:1;s:23:\"5ad5a3c5cb1587.17250261\";i:2;s:23:\"5ad5a42912add7.27701680\";i:3;s:23:\"5ad5a677e16a79.27809110\";i:4;s:23:\"5ad5a6fe2de4f6.78054543\";i:5;s:23:\"5ad5a978116473.03834685\";i:6;s:23:\"5ad5ac2d9719c5.52670794\";i:7;s:23:\"5ad5adb17823d1.11606711\";i:8;s:23:\"5ad5b13c943010.93001505\";i:9;s:23:\"5ad5b14cdd69d0.50083757\";i:10;s:23:\"5ad5b15c5cf7a7.63318504\";i:11;s:23:\"5ad5b1e6e1c2e1.58731776\";i:12;s:23:\"5ad5b312566358.92589785\";i:13;s:23:\"5ad5b323961b04.10280275\";i:14;s:23:\"5ad5b33175d416.78314433\";i:15;s:23:\"5ad5b36dcd18d2.82287692\";i:16;s:23:\"5ad5b374e4e0b7.87115316\";i:17;s:23:\"5ad5b392afd3b3.44834136\";i:18;s:23:\"5ad5b3c906a9d3.49793945\";i:19;s:23:\"5ad5b55cdf7c28.40820362\";}modx.user.1.userGroups|a:1:{i:0;i:1;}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `alias` varchar(191) DEFAULT '',
  `link_attributes` varchar(191) NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(191) NOT NULL DEFAULT '',
  `donthit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Главная', 'Поздравляем!', '', 'index', '', 1, 0, 0, 0, 0, '', '<p>You have successfully installed MODX Revolution&nbsp;[[++settings_version]]!</p>\r\n<p>Now that MODX is installed you can login to the manager to create your templates, manage content and install third party extras to add functionality to your&nbsp;website. </p>\r\n\r\n<h2>New to&nbsp;MODX?</h2>\r\n\r\n<p>Pages on a MODX site are called <a href=\"https://rtfm.modx.com/revolution/2.x/making-sites-with-modx/structuring-your-site/resources\">Resources</a>, and are visible on the left-hand side of the manager in the Resources tab. Resources can be nested under other resources, making it easy to create a tree of resources. There are different types of resources for different use&nbsp;cases.</p>\r\n\r\n<p>Building your website is done through a combination of <b>Templates</b>, <b>Template Variables</b>, <b>Chunks</b>, <b>Snippets</b> and <b>Plugins</b>. Collectively these are known as <b>Elements</b>, and can also be found in the left-hand side of the manager, in the Elements&nbsp;tab.</p>\r\n\r\n<p><a href=\"https://rtfm.modx.com/revolution/2.x/making-sites-with-modx/structuring-your-site/templates\">Templates</a> contain the outer markup of any page. Each resource can only be assigned to a single template at a time. By adding <a href=\"https://rtfm.modx.com/revolution/2.x/making-sites-with-modx/customizing-content/template-variables\">Template Variables</a> to a template, you can add custom fields for any resource using that particular&nbsp;template.</p>\r\n\r\n<p>With <a href=\"https://rtfm.modx.com/revolution/2.x/making-sites-with-modx/structuring-your-site/chunks\">Chunks</a> you can share parts of the markup, such as a header, across different templates. <a href=\"https://rtfm.modx.com/revolution/2.x/making-sites-with-modx/structuring-your-site/using-snippets\">Snippets</a> are pieces of PHP that return dynamic content, such as summaries of other resources or the current date. With snippets, you will often use Chunks to mark up the pieces of content it returns, instead of mixing the PHP and&nbsp;HTML.</p>\r\n\r\n<p>Finally, <a href=\"https://rtfm.modx.com/revolution/2.x/developing-in-modx/basic-development/plugins\">Plugins</a> enable more advanced features by hooking into the extensive events system provided by&nbsp;MODX.</p>\r\n\r\n<p>To learn more about MODX, be sure to check out the <a href=\"https://rtfm.modx.com/revolution/2.x/getting-started\">Getting Started</a> section in the official&nbsp;documentation.</p>\r\n', 1, 1, 0, 1, 1, 1, 1523866655, 1, 1523951042, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'index', 0, 0, 1, NULL),
(2, 'document', 'text/html', 'События', '', '', 'events', '', 1, 0, 0, 0, 1, '', '[[!pdoPage?\r\n	&element=`getTickets`\r\n]]\r\n\r\n[[!+page.nav]]', 1, 2, 1, 1, 1, 1, 1523951355, 1, 1523954475, 0, 0, 0, 1523951340, 1, 'События', 0, 0, 0, 0, 0, 'TicketsSection', 'web', 1, 'events', 0, 0, 1, '{\"tickets\":{\"template\":\"0\",\"uri\":\"%id-%alias%ext\",\"show_in_tree\":false,\"hidemenu\":\"0\",\"disable_jevix\":false,\"process_tags\":false},\"ratings\":{\"ticket\":\"10\",\"comment\":\"1\",\"view\":\"0.1\",\"vote_ticket\":\"1\",\"vote_comment\":\"0.2\",\"star_ticket\":\"3\",\"star_comment\":\"0.6\"}}'),
(3, 'document', 'text/html', 'Событие 1', '', '', 'событие-1', '', 1, 0, 0, 2, 0, 'Could not load snippet Jevix', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 2, 0, 1, 1, 1, 1523954100, 1, 1523954242, 0, 0, 0, 1523954100, 1, '', 0, 0, 0, 0, 1, 'Ticket', 'web', 1, 'events/3-событие-1', 1, 0, 0, '{\"tickets\":{\"disable_jevix\":false,\"process_tags\":false}}'),
(4, 'document', 'text/html', 'Событие 2', '', '', 'событие-2', '', 1, 0, 0, 2, 0, 'Could not load snippet Jevix', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 2, 1, 1, 1, 1, 1523954630, 0, 0, 0, 0, 0, 1523954630, 1, '', 0, 0, 0, 0, 1, 'Ticket', 'web', 1, 'events/4-событие-2', 1, 0, 0, '{\"tickets\":{\"disable_jevix\":false,\"process_tags\":false}}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'metaBase', '', 0, 2, 0, 'metaBase', 0, 'a:0:{}', 1, 'assets/custom/chunks/base/metaBase.tpl'),
(2, 1, 0, 'headerBase', '', 0, 2, 0, 'headerBase', 0, 'a:0:{}', 1, 'assets/custom/chunks/base/headerBase.tpl'),
(3, 1, 0, 'footerBase', '', 0, 2, 0, 'footerBase', 0, 'a:0:{}', 1, 'assets/custom/chunks/base/footerBase.tpl'),
(4, 1, 0, 'endHtmlBase', '', 0, 2, 0, 'endHtmlBase', 0, 'a:0:{}', 1, 'assets/custom/chunks/base/endHtmlBase.tpl'),
(5, 1, 0, 'indexContent', '', 0, 3, 0, '[[--*content]]\r\n<a href=\"[[~2]]\">Events</a>', 0, 'a:0:{}', 1, 'assets/custom/chunks/content/indexContent.tpl'),
(6, 1, 0, 'tpl.Tickets.form.create', '', 0, 9, 0, '<form class=\"well create\" method=\"post\" action=\"\" id=\"ticketForm\">\n	<div id=\"ticket-preview-placeholder\"></div>\n\n	<input type=\"hidden\" name=\"tid\" value=\"0\" />\n\n	<div class=\"form-group\">\n		<label for=\"ticket-sections\">[[%tickets_section]]</label>\n		<select name=\"parent\" class=\"form-control\" id=\"ticket-sections\">[[+sections]]</select>\n		<span class=\"error\"></span>\n	</div>\n\n	<div class=\"form-group\">\n		<label for=\"ticket-pagetitle\">[[%ticket_pagetitle]]</label>\n		<input type=\"text\" class=\"form-control\" placeholder=\"[[%ticket_pagetitle]]\" name=\"pagetitle\" value=\"\" maxlength=\"50\" id=\"ticket-pagetitle\"/>\n		<span class=\"error\"></span>\n	</div>\n\n	<div class=\"form-group\">\n		<textarea class=\"form-control\" placeholder=\"[[%ticket_content]]\" name=\"content\" id=\"ticket-editor\" rows=\"10\"></textarea>\n		<span class=\"error\"></span>\n	</div>\n\n	<div class=\"ticket-form-files\">\n		[[+files]]\n	</div>\n\n	<div class=\"form-actions row\">\n		<div class=\"col-md-6\">\n			<input type=\"button\" class=\"btn btn-default preview\" value=\"[[%ticket_preview]]\" title=\"Ctrl + Enter\" />\n		</div>\n		<div class=\"col-md-6 move-right\">\n			<input type=\"button\" class=\"btn btn-primary publish\" name=\"publish\" value=\"[[%ticket_publish]]\" title=\"\" />\n			<input type=\"submit\" class=\"btn btn-danger draft\" name=\"draft\" value=\"[[%ticket_draft]]\" title=\"Ctrl + Shift + Enter\" />\n		</div>\n	</div>\n</form>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.form_create.tpl'),
(7, 1, 0, 'tpl.Tickets.form.update', '', 0, 9, 0, '<form class=\"well update\" method=\"post\" action=\"\" id=\"ticketForm\">\n	<div id=\"ticket-preview-placeholder\"></div>\n\n	<input type=\"hidden\" name=\"tid\" value=\"[[+id]]\" />\n\n	<div class=\"form-group\">\n		<label for=\"ticket-sections\">[[%tickets_section]]</label>\n		<select name=\"parent\" class=\"form-control\" id=\"ticket-sections\">[[+sections]]</select>\n		<span class=\"error\"></span>\n	</div>\n\n	<div class=\"form-group\">\n		<label for=\"ticket-pagetitle\">[[%ticket_pagetitle]]</label>\n		<input type=\"text\" class=\"form-control\" placeholder=\"[[%ticket_pagetitle]]\" name=\"pagetitle\" value=\"[[+pagetitle]]\" maxlength=\"50\" id=\"ticket-pagetitle\"/>\n		<span class=\"error\"></span>\n	</div>\n\n	<div class=\"form-group\">\n		<textarea class=\"form-control\" placeholder=\"[[%ticket_content]]\" name=\"content\" id=\"ticket-editor\" rows=\"10\">[[+content]]</textarea>\n		<span class=\"error\"></span>\n	</div>\n\n	<div class=\"ticket-form-files\">\n		[[+files]]\n	</div>\n\n	<div class=\"form-actions row\">\n		<div class=\"col-md-6\">\n			<input type=\"button\" class=\"btn btn-default preview\" value=\"[[%ticket_preview]]\" title=\"Ctrl + Enter\" />\n		</div>\n		<div class=\"col-md-6 move-right\">\n			[[!+published:is=`1`:then=`\n			<a href=\"[[~[[+id]]?scheme=`full`]]\" class=\"btn btn-default btn-xs\" target=\"_blank\">[[%ticket_open]]</a>\n			<input type=\"button\" class=\"btn btn-danger draft\" name=\"draft\" value=\"[[%ticket_draft]]\" title=\"\" />\n			`:else=`\n			<input type=\"button\" class=\"btn btn-primary publish\" name=\"publish\" value=\"[[%ticket_publish]]\" title=\"\" />\n			`]]\n			<input type=\"submit\" class=\"btn btn-default save\" name=\"save\" value=\"[[%ticket_save]]\" title=\"Ctrl + Shift + Enter\" />\n		</div>\n	</div>\n</form>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.form_update.tpl'),
(8, 1, 0, 'tpl.Tickets.form.preview', '', 0, 9, 0, '<h3 class=\"title\">[[+pagetitle]]</h3>\n<div class=\"content\">[[+content]]</div>\n<h5 class=\"author\">[[+modx.user.id:userinfo=`username`]]</h5>\n', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.form_preview.tpl'),
(9, 1, 0, 'tpl.Tickets.form.files', '', 0, 9, 0, '<div id=\"ticket-files-list\">\n	[[+files]]\n	<div class=\"clearfix\"></div>\n</div>\n\n<div id=\"ticket-files-container\" data-action=\"ticket/file/upload\">\n	<a id=\"ticket-files-select\" href=\"javascript:;\">[[%ticket_file_select]]</a>\n	<div id=\"ticket-files-progress\">\n		<span id=\"ticket-files-progress-count\">0/0</span>\n		<span id=\"ticket-files-progress-percent\">0%</span>\n		<div id=\"ticket-files-progress-bar\"></div>\n	</div>\n</div>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.form_files.tpl'),
(10, 1, 0, 'tpl.Tickets.form.file', '', 0, 9, 0, '<div class=\"ticket-file[[+deleted]][[+new]]\" data-id=\"[[+id]]\">\n	<a href=\"[[+url]]\" class=\"ticket-file-link\" title=\"[[+file]]\" target=\"_blank\">\n		<div class=\"ticket-file-image-wrapper\">\n			[[+file]]\n		</div>\n	</a>\n	<div class=\"ticket-file-meta\">\n		<a href=\"#\" class=\"ticket-file-delete\">[[%ticket_file_delete]]</a>\n		<a href=\"#\" class=\"ticket-file-restore\">[[%ticket_file_restore]]</a>\n		<br/>\n		<a href=\"#\" class=\"ticket-file-insert\">[[%ticket_file_insert]]</a>\n		<br/>\n		<span class=\"ticket-file-size\">[[+size]] Kb</span>\n	</div>\n	<div class=\"ticket-file-template\">\n		<a href=\"[[+url]]\">\n			[[+name]]\n		</a>\n	</div>\n</div>\n<!--tickets_thumb <img src=\"[[+thumb]]\" class=\"ticket-file-image\" />-->\n<!--tickets_deleted  deleted-->\n<!--tickets_new  new-->', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.form_file.tpl'),
(11, 1, 0, 'tpl.Tickets.form.image', '', 0, 9, 0, '<div class=\"ticket-file[[+deleted]][[+new]]\" data-id=\"[[+id]]\">\n	<a href=\"[[+url]]\" class=\"ticket-file-link\" title=\"[[+file]]\" target=\"_blank\">\n		<div class=\"ticket-file-image-wrapper\">\n			<img src=\"[[+thumb]]\" class=\"ticket-file-image\" />\n		</div>\n	</a>\n	<div class=\"ticket-file-meta\">\n		<a href=\"#\" class=\"ticket-file-delete\">[[%ticket_file_delete]]</a>\n		<a href=\"#\" class=\"ticket-file-restore\">[[%ticket_file_restore]]</a>\n		<br/>\n		<a href=\"#\" class=\"ticket-file-insert\">[[%ticket_file_insert]]</a>\n		<br/>\n		<span class=\"ticket-file-size\">[[+size]] Kb</span>\n	</div>\n	<div class=\"ticket-file-template\">\n		<a href=\"[[+url]]\" title=\"[[+name]]\">\n			<img src=\"[[+thumb]]\" />\n		</a>\n	</div>\n</div>\n<!--tickets_deleted  deleted-->\n<!--tickets_new  new-->', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.form_image.tpl'),
(12, 1, 0, 'tpl.Tickets.ticket.latest', '', 0, 9, 0, '<div class=\"tickets-latest-row\">\n	<span class=\"user\"><i class=\"glyphicon glyphicon-user\"></i> [[+fullname]]</span> <span class=\"date\">[[+date_ago]]</span>\n	<br/>\n	<span class=\"section\">\n		<i class=\"glyphicon glyphicon-folder-open\"></i> <a href=\"[[~[[+section.id]]]]\">[[+section.pagetitle]]</a> <span class=\"arrow\">&rarr;</span>\n	</span>\n	<span class=\"ticket\">\n		<a href=\"[[~[[+id]]]]\">[[+pagetitle]]</a>\n	</span>\n	<nobr><i class=\"glyphicon glyphicon-comment\"></i> <span class=\"comments\">[[+comments]]</span></nobr>\n</div>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.ticket_latest.tpl'),
(13, 1, 0, 'tpl.Tickets.ticket.email.bcc', '', 0, 9, 0, '[[%ticket_email_bcc_intro?\n    &fullname=`[[+user.fullname]]`\n    &email=`[[+user.email]]`\n    &id=`[[+id]]`\n    &pagetitle=`[[+pagetitle]]`\n]]\n\n<pre style=\"background-color:#efefef;\">[[+introtext]]</pre>\n<br/><br/>\n\n<a href=\"[[~[[+id]]?scheme=`full`]]\">[[%ticket_email_view]]</a>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.ticket_email_bcc.tpl'),
(14, 1, 0, 'tpl.Tickets.ticket.email.subscription', '', 0, 9, 0, '[[%ticket_email_subscribed_intro?\n    &id=`[[+id]]`\n    &fullname=`[[+user.fullname]]`\n    &section=`[[+section.id]]`\n    &section_title=`[[+section.pagetitle]]`\n    &pagetitle=`[[+pagetitle]]`\n]]\n\n<pre style=\"background-color:#efefef;\">[[+introtext]]</pre>\n<br/><br/>\n\n<a href=\"[[~[[+id]]?scheme=`full`]]\">[[%ticket_email_view]]</a>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.ticket_email_subscription.tpl'),
(15, 1, 0, 'tpl.Tickets.comment.form', '', 0, 9, 0, '<h4 id=\"comment-new-link\">\n	<a href=\"#\" class=\"btn btn-default\">[[%ticket_comment_create]]</a>\n</h4>\n\n<div id=\"comment-form-placeholder\">\n	<form id=\"comment-form\" action=\"\" method=\"post\" class=\"well\">\n		<div id=\"comment-preview-placeholder\"></div>\n		<input type=\"hidden\" name=\"thread\" value=\"[[+thread]]\" />\n		<input type=\"hidden\" name=\"parent\" value=\"0\" />\n		<input type=\"hidden\" name=\"id\" value=\"0\" />\n\n		<div class=\"form-group\">\n			<label for=\"comment-editor\"></label>\n			<textarea name=\"text\" id=\"comment-editor\" cols=\"30\" rows=\"10\" class=\"form-control\"></textarea>\n		</div>\n\n		<div class=\"form-actions\">\n			<input type=\"button\" class=\"btn btn-default preview\" value=\"[[%ticket_comment_preview]]\" title=\"Ctrl + Enter\" />\n			<input type=\"submit\" class=\"btn btn-primary submit\" value=\"[[%ticket_comment_save]]\" title=\"Ctrl + Shift + Enter\" />\n			<span class=\"time\"></span>\n		</div>\n	</form>\n</div>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.comment_form.tpl'),
(16, 1, 0, 'tpl.Tickets.comment.form.guest', '', 0, 9, 0, '<h4 id=\"comment-new-link\">\n	<a href=\"#\" class=\"btn btn-default\">[[%ticket_comment_create]]</a>\n</h4>\n\n<div id=\"comment-form-placeholder\">\n	<form id=\"comment-form\" action=\"\" method=\"post\" class=\"well\">\n		<div id=\"comment-preview-placeholder\"></div>\n		<input type=\"hidden\" name=\"thread\" value=\"[[+thread]]\" />\n		<input type=\"hidden\" name=\"parent\" value=\"0\" />\n		<input type=\"hidden\" name=\"id\" value=\"0\" />\n\n		<div class=\"form-group\">\n			<label for=\"comment-name\">[[%ticket_comment_name]]</label>\n			<input type=\"text\" name=\"name\" value=\"[[+name]]\" id=\"comment-name\" class=\"form-control\" />\n			<span class=\"error\"></span>\n		</div>\n\n		<div class=\"form-group\">\n			<label for=\"comment-email\">[[%ticket_comment_email]]</label>\n			<input type=\"text\" name=\"email\" value=\"[[+email]]\" id=\"comment-email\" class=\"form-control\" />\n			<span class=\"error\"></span>\n		</div>\n\n		<div class=\"form-group\">\n			<label for=\"comment-editor\"></label>\n			<textarea name=\"text\" id=\"comment-editor\" cols=\"30\" rows=\"10\" class=\"form-control\"></textarea>\n		</div>\n\n		[[+captcha]]\n\n		<div class=\"form-actions\">\n			<input type=\"button\" class=\"btn btn-default preview\" value=\"[[%ticket_comment_preview]]\" title=\"Ctrl + Enter\" />\n			<input type=\"submit\" class=\"btn btn-primary submit\" value=\"[[%ticket_comment_save]]\" title=\"Ctrl + Shift + Enter\" />\n			<span class=\"time\"></span>\n		</div>\n	</form>\n</div>\n\n<!--tickets_captcha\n<div class=\"form-group\">\n	<label for=\"comment-captcha\" id=\"comment-captcha\">[[+captcha]]</label>\n	<input type=\"text\" name=\"captcha\" value=\"\" id=\"comment-captcha\" class=\"form-control\" />\n	<span class=\"error\"></span>\n</div>\n-->', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.comment_form_guest.tpl'),
(17, 1, 0, 'tpl.Tickets.comment.one.auth', '', 0, 9, 0, '<li class=\"ticket-comment[[+comment_new]]\" id=\"comment-[[+id]]\" data-parent=\"[[+parent]]\" data-newparent=\"[[+new_parent]]\" data-id=\"[[+id]]\">\n	<div class=\"ticket-comment-body[[+guest]][[+bad]]\">\n		<div class=\"ticket-comment-header\">\n			<div class=\"ticket-comment-dot-wrapper\"><div class=\"ticket-comment-dot\"></div></div>\n			<img src=\"[[+avatar]]\" class=\"ticket-avatar\" alt=\"\" />\n			<span class=\"ticket-comment-author\">[[+fullname]]</span>\n			<span class=\"ticket-comment-createdon\">[[+date_ago]]</span>[[+comment_was_edited]]\n			<span class=\"ticket-comment-link\"><a href=\"[[+url]]#comment-[[+id]]\">#</a></span>\n			<span class=\"ticket-comment-star[[+can_star]]\">[[+stared]][[+unstared]]</span>\n			[[+has_parent]]\n			<span class=\"ticket-comment-down\"><a href=\"#\" data-child=\"\">&darr;</a></span>\n			<span class=\"ticket-comment-rating[[+can_vote]][[+cant_vote]]\">\n				<span class=\"rating[[+rating_positive]][[+rating_negative]]\" title=\"[[%ticket_rating_total]] [[+rating_total]]: ↑[[+rating_plus]] [[%ticket_rating_and]] ↓[[+rating_minus]]\">[[+rating]]</span>\n				<span class=\"vote plus[[+voted_plus]]\" title=\"[[%ticket_like]]\"><i class=\"glyphicon glyphicon-arrow-up\"></i></span>\n				<span class=\"vote minus[[+voted_minus]]\" title=\"[[%ticket_dislike]]\"><i class=\"glyphicon glyphicon-arrow-down\"></i></span>\n			</span>\n		</div>\n		<div class=\"ticket-comment-text\">\n			[[+text]]\n		</div>\n	</div>\n	<div class=\"comment-reply\">\n		<a href=\"#\" class=\"reply\">[[%ticket_comment_reply]]</a>\n		[[+comment_edit_link]]\n	</div>\n	<ol class=\"comments-list\">[[+children]]</ol>\n</li>\n<!--tickets_comment_edit_link <a href=\"#\" class=\"edit\">[[%ticket_comment_edit]]</a>-->\n<!--tickets_comment_was_edited <span class=\"ticket-comment-edited\">([[%ticket_comment_was_edited]])</span>-->\n<!--tickets_comment_new  ticket-comment-new-->\n<!--tickets_can_vote  active-->\n<!--tickets_cant_vote  inactive-->\n<!--tickets_rating_positive  positive-->\n<!--tickets_rating_negative  negative-->\n<!--tickets_voted_plus  voted-->\n<!--tickets_voted_minus  voted-->\n<!--tickets_guest  ticket-comment-guest-->\n<!--tickets_has_parent <span class=\"ticket-comment-up\"><a href=\"[[+url]]#comment-[[+parent]]\" data-id=\"[[+id]]\" data-parent=\"[[+parent]]\">&uarr;</a></span>-->\n<!--tickets_can_star  active-->\n<!--tickets_stared <i class=\"glyphicon glyphicon-star stared star\"></i>-->\n<!--tickets_unstared <i class=\"glyphicon glyphicon-star unstared star\"></i>-->\n', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.comment_one_auth.tpl'),
(18, 1, 0, 'tpl.Tickets.comment.one.guest', '', 0, 9, 0, '<li class=\"ticket-comment\" id=\"comment-[[+id]]\">\n	<div class=\"ticket-comment-body[[+bad]]\">\n		<div class=\"ticket-comment-header\">\n			<div class=\"ticket-comment-dot-wrapper\"><div class=\"ticket-comment-dot\"></div></div>\n			<img src=\"[[+avatar]]\" class=\"ticket-avatar\" alt=\"\" />\n			<span class=\"ticket-comment-author\">[[+fullname]]</span>\n			<span class=\"ticket-comment-createdon\">[[+date_ago]]</span>\n			<span class=\"ticket-comment-link\"><a href=\"[[+url]]#comment-[[+id]]\">#</a></span>\n\n			[[+has_parent]]\n			<span class=\"ticket-comment-down\"><a href=\"#\" data-child=\"\">&darr;</a></span>\n\n			<span class=\"ticket-comment-rating inactive\">\n				<span class=\"rating[[+rating_positive]][[+rating_negative]]\">\n					[[+rating]]\n				</span>\n				<span class=\"plus\" title=\"[[%ticket_like]]\">\n					<i class=\"glyphicon glyphicon-arrow-up\"></i>\n				</span>\n				<span class=\"minus\" title=\"[[%ticket_dislike]]\">\n					<i class=\"glyphicon glyphicon-arrow-down\"></i>\n				</span>\n			</span>\n		</div>\n		<div class=\"ticket-comment-text\">\n			[[+text]]\n		</div>\n	</div>\n	<ol class=\"comments-list\">[[+children]]</ol>\n</li>\n<!--tickets_rating_positive  positive-->\n<!--tickets_rating_negative  negative-->\n<!--tickets_has_parent <span class=\"ticket-comment-up\"><a href=\"[[+url]]#comment-[[+parent]]\" data-id=\"[[+id]]\" data-parent=\"[[+parent]]\">&uarr;</a></span>-->', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.comment_one_guest.tpl'),
(19, 1, 0, 'tpl.Tickets.comment.one.deleted', '', 0, 9, 0, '<li class=\"ticket-comment\" id=\"comment-[[+id]]\">\n	<div class=\"ticket-comment-body alert alert-warning\">\n		[[%ticket_comment_deleted_text]]\n	</div>\n	<ol class=\"comments-list\">[[+children]]</ol>\n</li>\n', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.comment_one_deleted.tpl'),
(20, 1, 0, 'tpl.Tickets.comment.wrapper', '', 0, 9, 0, '<div class=\"comments\">\n	[[+modx.user.id:isloggedin:is=`1`:then=`\n	<span class=\"comments-subscribe pull-right\">\n		<label for=\"comments-subscribe\" class=\"checkbox\">\n			<input type=\"checkbox\" name=\"\" id=\"comments-subscribe\" value=\"1\" [[+subscribed]] /> [[%ticket_comment_notify]]\n		</label>\n	</span>\n	`:else=``]]\n\n	<h3 class=\"title\">[[%comments]] (<span id=\"comment-total\">[[+total]]</span>)</h3>\n\n	<div id=\"comments-wrapper\">\n		<ol class=\"comment-list\" id=\"comments\">[[+comments]]</ol>\n	</div>\n\n	<div id=\"comments-tpanel\">\n		<div id=\"tpanel-refresh\"></div>\n		<div id=\"tpanel-new\"></div>\n	</div>\n</div>\n\n<!--tickets_subscribed checked-->\n', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.comment_wrapper.tpl'),
(21, 1, 0, 'tpl.Tickets.comment.login', '', 0, 9, 0, '<div class=\"ticket-comments alert alert-warning\">\n    <p>[[%ticket_comment_err_no_auth]]</p>\n</div>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.comment_login.tpl'),
(22, 1, 0, 'tpl.Tickets.comment.latest', '', 0, 9, 0, '<div class=\"tickets-latest-row[[+guest]]\">\n	<span class=\"user\"><i class=\"glyphicon glyphicon-user\"></i> [[+fullname]]</span> <span class=\"date\">[[+date_ago]]</span>\n	<br/>\n	<span class=\"ticket\">\n		<a href=\"[[~[[+ticket.id]]]]#comment-[[+id]]\">[[+ticket.pagetitle]]</a>\n	</span>\n	<nobr><i class=\"glyphicon glyphicon-comment\"></i> <span class=\"comments\">[[+comments]]</span></nobr>\n</div>\n<!--tickets_guest  ticket-comment-guest-->', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.comment_latest.tpl'),
(23, 1, 0, 'tpl.Tickets.comment.email.owner', '', 0, 9, 0, '[[%ticket_comment_email_owner_intro?\n    &name=`[[+name]]`\n    &resource=`[[+resource]]`\n    &pagetitle=`[[+pagetitle]]`\n]]\n\n<pre>[[+text]]</pre>\n<br/><br/>\n\n<a href=\"[[~[[+resource]]?scheme=`full`]]#comment-[[+id]]\">[[%ticket_email_reply]]</a>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.comment_email_owner.tpl'),
(24, 1, 0, 'tpl.Tickets.comment.email.reply', '', 0, 9, 0, '[[%ticket_comment_email_reply_intro?\n    &name=`[[+name]]`\n    &resource=`[[+resource]]`\n    &pagetitle=`[[+pagetitle]]`\n]]\n\n<pre>[[+text]]</pre>\n<br/><br/>\n<a href=\"[[~[[+resource]]?scheme=`full`]]#comment-[[+id]]\">[[%ticket_email_reply]]</a>\n<br/><br/>\n\n[[%ticket_comment_email_reply_text]]\n<pre>[[+parent_text]]</pre>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.comment_email_reply.tpl'),
(25, 1, 0, 'tpl.Tickets.comment.email.subscription', '', 0, 9, 0, '[[%ticket_comment_email_subscription_intro?\n    &name=`[[+name]]`\n    &resource=`[[+resource]]`\n    &pagetitle=`[[+pagetitle]]`\n]]\n\n<pre>[[+text]]</pre>\n<br/><br/>\n\n<a href=\"[[~[[+resource]]?scheme=`full`]]#comment-[[+id]]\">[[%ticket_email_view]]</a>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.comment_email_subscription.tpl'),
(26, 1, 0, 'tpl.Tickets.comment.email.bcc', '', 0, 9, 0, '[[%ticket_comment_email_bcc_intro?\n    &name=`[[+name]]`\n    &resource=`[[+resource]]`\n    &pagetitle=`[[+pagetitle]]`\n]]\n\n<pre>[[+text]]</pre>\n<br/><br/>\n\n<a href=\"[[~[[+resource]]?scheme=`full`]]#comment-[[+id]]\">[[%ticket_email_view]]</a>\n', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.comment_email_bcc.tpl'),
(27, 1, 0, 'tpl.Tickets.comment.email.unpublished', '', 0, 9, 0, '[[%ticket_comment_email_unpublished_intro?\n    &name=`[[+name]]`\n    &resource=`[[+resource]]`\n    &pagetitle=`[[+pagetitle]]`\n]]\n\n<pre>[[+text]]</pre>\n<br/><br/>\n\n<a href=\"[[+manager_url]]\">[[%ticket_email_all_comments]]</a>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.comment_email_unpublished.tpl'),
(28, 1, 0, 'tpl.Tickets.comment.list.row', '', 0, 9, 0, '<div class=\"ticket-comment-row ticket-comment\" id=\"comment-[[+id]]\" data-id=\"[[+id]]\">\n	<div class=\"ticket-comment-body[[+guest]]\">\n		<div class=\"ticket-comment-header\">\n			<img src=\"[[+avatar]]\" class=\"ticket-avatar\" alt=\"\" />\n			<span class=\"ticket-comment-author\">[[+fullname]]</span>\n			<span class=\"ticket-comment-createdon\">[[+date_ago]]</span>[[+comment_was_edited]]\n			<span class=\"ticket-comment-link\"><a href=\"[[+url]]#comment-[[+id]]\">#</a></span>\n			<span class=\"ticket-comment-star[[+can_star]]\">[[+stared]][[+unstared]]</span>\n\n			<span class=\"ticket-comment-rating[[+can_vote]][[+cant_vote]]\">\n				<span class=\"rating[[+rating_positive]][[+rating_negative]]\" title=\"[[%ticket_rating_total]] [[+rating_total]]: ↑[[+rating_plus]] [[%ticket_rating_and]] ↓[[+rating_minus]]\">[[+rating]]</span>\n				<span class=\"vote plus[[+voted_plus]]\" title=\"[[%ticket_like]]\"><i class=\"glyphicon glyphicon-arrow-up\"></i></span>\n				<span class=\"vote minus[[+voted_minus]]\" title=\"[[%ticket_dislike]]\"><i class=\"glyphicon glyphicon-arrow-down\"></i></span>\n			</span>\n		</div>\n		<div class=\"ticket-comment-text\">\n			[[+text]]\n		</div>\n	</div>\n\n	<a href=\"[[~[[+section.id]]]]\" class=\"ticket-comment-section\"><i class=\"glyphicon glyphicon-folder-open\"></i> [[+section.pagetitle]]</a> &rarr;\n	<a href=\"[[~[[+ticket.id]]]]\" class=\"ticket-comment-ticket\">[[+ticket.pagetitle]]</a> &nbsp;\n	<span class=\"ticket-comment-comments\"><i class=\"glyphicon glyphicon-comment\"></i> [[+comments]]</span>\n</div>\n<!--tickets_comment_was_edited <span class=\"ticket-comment-edited\">([[%ticket_comment_was_edited]])</span>-->\n<!--tickets_can_vote  active-->\n<!--tickets_cant_vote  inactive-->\n<!--tickets_rating_positive  positive-->\n<!--tickets_rating_negative  negative-->\n<!--tickets_voted_plus  voted-->\n<!--tickets_voted_minus  voted-->\n<!--tickets_guest  ticket-comment-guest-->\n<!--tickets_can_star  active-->\n<!--tickets_stared <i class=\"glyphicon glyphicon-star stared star\"></i>-->\n<!--tickets_unstared <i class=\"glyphicon glyphicon-star unstared star\"></i>-->', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.comment_list_row.tpl'),
(29, 1, 0, 'tpl.Tickets.list.row', '', 0, 9, 0, '<div class=\"tickets-row\">\n    <h3 class=\"title\"><a href=\"[[~[[+id]]]]\">[[+pagetitle]]</a></h3>\n	<div class=\"content\">\n		[[+introtext]]<br/>\n		<a href=\"[[~[[+id]]]]#cut\" class=\"btn btn-default ticket-read-more\">[[%ticket_read_more]]</a>\n	</div>\n	<div class=\"ticket-meta row\" data-id=\"[[+id]]\">\n		<span class=\"col-md-5\">\n			<i class=\"glyphicon glyphicon-calendar\"></i> [[+date_ago]]\n			&nbsp;&nbsp;\n			<i class=\"glyphicon glyphicon-user\"></i> [[+fullname]]\n		</span>\n		<span class=\"col-md-2\"><a href=\"[[~[[+section.id]]]]\"><i class=\"glyphicon glyphicon-folder-open\"></i> [[+section.pagetitle]]</a></span>\n		<span class=\"col-md-3\">\n			<span class=\"ticket-star[[+can_star]]\">[[+stared]][[+unstared]] <span class=\"ticket-star-count\">[[+stars]]</span></span>\n			&nbsp;&nbsp;\n			<i class=\"glyphicon glyphicon-eye-open\"></i> [[+views]]\n			&nbsp;&nbsp;\n			<i class=\"glyphicon glyphicon-comment\"></i> [[+comments]]  [[+new_comments]]\n		</span>\n		<span class=\"col-md-2 pull-right ticket-rating[[+active]][[+inactive]]\">\n			<span class=\"vote plus[[+voted_plus]]\" title=\"[[%ticket_like]]\"><i class=\"glyphicon glyphicon-arrow-up\"></i></span>\n			[[+can_vote]][[+cant_vote]]\n			<span class=\"vote minus[[+voted_minus]]\" title=\"[[%ticket_dislike]]\"><i class=\"glyphicon glyphicon-arrow-down\"></i></span>\n		</span>\n	</div>\n</div>\n<!--tickets_can_vote <span class=\"vote rating\" title=\"[[%ticket_refrain]]\"><i class=\"glyphicon glyphicon-minus\"></i></span>-->\n<!--tickets_cant_vote <span class=\"rating[[+rating_positive]][[+rating_negative]]\" title=\"[[%ticket_rating_total]] [[+rating_total]]: ↑[[+rating_plus]] [[%ticket_rating_and]] ↓[[+rating_minus]]\">[[+rating]]</span>-->\n<!--tickets_new_comments <span class=\"ticket-new-comments\">+[[+new_comments]]</span>-->\n<!--tickets_active  active-->\n<!--tickets_inactive  inactive-->\n<!--tickets_voted_plus  voted-->\n<!--tickets_voted_minus  voted-->\n<!--tickets_rating_positive  positive-->\n<!--tickets_rating_negative  negative-->\n<!--tickets_can_star  active-->\n<!--tickets_stared <i class=\"glyphicon glyphicon-star stared star\"></i>-->\n<!--tickets_unstared <i class=\"glyphicon glyphicon-star unstared star\"></i>-->', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.ticket_list_row.tpl'),
(30, 1, 0, 'tpl.Tickets.sections.row', '', 0, 9, 0, '<div class=\"section-row\">\r\n	<h3 class=\"title\"><a href=\"[[~[[+id]]]]\">[[+pagetitle]]</a></h3>\r\n	<div class=\"content\">\r\n		[[+introtext]]\r\n	</div>\r\n	<div class=\"section-meta row\">\r\n		<div class=\"col-md-1\"><i class=\"glyphicon glyphicon-th-list\"></i> [[+tickets]]</div>\r\n		<div class=\"col-md-1\"><i class=\"glyphicon glyphicon-eye-open\"></i> [[+views]]</div>\r\n		<div class=\"col-md-1\"><i class=\"glyphicon glyphicon-comment\"></i> [[+comments]]</div>\r\n	</div>\r\n</div>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.ticket_sections_row.tpl'),
(31, 1, 0, 'tpl.Tickets.sections.wrapper', '', 0, 9, 0, '[[+modx.user.id:isloggedin:is=`1`:then=`\n<span class=\"tickets-subscribe pull-right\">\n	<label for=\"tickets-subscribe\" class=\"checkbox\">\n		<input type=\"checkbox\" name=\"\" id=\"tickets-subscribe\" value=\"1\" data-id=\"[[*id]]\" [[+subscribed:notempty=`checked`]] /> [[%tickets_section_notify]]\n	</label>\n</span>\n`:else=``]]\n\n<div class=\"tickets-list\">\n	[[+output]]\n</div>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.ticket_sections_wrapper.tpl'),
(32, 1, 0, 'tpl.Tickets.meta', '', 0, 9, 0, '<div class=\"ticket-meta row\" data-id=\"[[+id]]\">\n	<span class=\"col-md-5\">\n		<i class=\"glyphicon glyphicon-calendar\"></i> [[+date_ago]]\n		&nbsp;&nbsp;\n		<i class=\"glyphicon glyphicon-user\"></i> [[+fullname]]\n	</span>\n	<span class=\"col-md-2\"><a href=\"[[~[[+section.id]]]]\"><i class=\"glyphicon glyphicon-folder-open\"></i> [[+section.pagetitle]]</a></span>\n	<span class=\"col-md-2\">\n		<span class=\"ticket-star[[+can_star]]\">[[+stared]][[+unstared]] <span class=\"ticket-star-count\">[[+stars]]</span></span>\n		&nbsp;&nbsp;\n		<i class=\"glyphicon glyphicon-eye-open\"></i> [[+views]]\n	</span>\n	<span class=\"col-md-2 pull-right ticket-rating[[+active]][[+inactive]]\">\n		<span class=\"vote plus[[+voted_plus]]\" title=\"[[%ticket_like]]\">\n			<i class=\"glyphicon glyphicon-arrow-up\"></i>\n		</span>\n		[[+can_vote]][[+cant_vote]]\n		<span class=\"vote minus[[+voted_minus]]\" title=\"[[%ticket_dislike]]\">\n			<i class=\"glyphicon glyphicon-arrow-down\"></i>\n		</span>\n	</span>\n</div>\n[[+has_files]]\n\n<!--tickets_can_vote <span class=\"vote rating\" title=\"[[%ticket_refrain]]\"><i class=\"glyphicon glyphicon-minus\"></i></span>-->\n<!--tickets_cant_vote <span class=\"rating[[+rating_positive]][[+rating_negative]]\" title=\"[[%ticket_rating_total]] [[+rating_total]]: ↑[[+rating_plus]] [[%ticket_rating_and]] ↓[[+rating_minus]]\">[[+rating]]</span>-->\n<!--tickets_active  active-->\n<!--tickets_inactive  inactive-->\n<!--tickets_voted_plus  voted-->\n<!--tickets_voted_minus  voted-->\n<!--tickets_rating_positive  positive-->\n<!--tickets_rating_negative  negative-->\n<!--tickets_has_files\n<ul class=\"ticket-files\">\n	<strong>[[%ticket_uploaded_files]]:</strong>\n	[[+files]]\n</ul>-->\n<!--tickets_can_star  active-->\n<!--tickets_stared <i class=\"glyphicon glyphicon-star stared star\"></i>-->\n<!--tickets_unstared <i class=\"glyphicon glyphicon-star unstared star\"></i>-->', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.ticket_meta.tpl'),
(33, 1, 0, 'tpl.Tickets.meta.file', '', 0, 9, 0, '<li>\n	<a href=\"[[+url]]\" target=\"_blank\">[[+name]]</a> [[+size]] kb\n</li>', 0, NULL, 0, 'core/components/tickets/elements/chunks/chunk.ticket_meta_file.tpl'),
(34, 1, 0, 'eventsContent', '', 0, 3, 0, '[[!pdoPage?\r\n    &element=`getTickets`\r\n    &parents=`2`\r\n    &tpl=`[[+pagetitle]]`\r\n    &includeContent=`1`\r\n    &includeTVs=`img`\r\n    &processTVs=`1`\r\n]]\r\n<p>text</p>', 0, 'a:0:{}', 1, 'assets/custom/chunks/content/eventsContent.tpl'),
(35, 1, 0, 'eventsListItem', '', 0, 1, 0, '', 0, 'a:0:{}', 1, 'assets/custom/chunks/eventsParts/eventsListItem.tpl');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 1, 0, 'lowercaseUrl', '', 0, 5, 0, '﻿<?php\r\n$eventName = $modx->event->name;\r\n\r\nswitch($eventName) {\r\n    case \'OnHandleRequest\':\r\n        if($modx->context->get(\'key\') != \"mgr\"){\r\n            if(isset($_GET[\'rewrite-strtolower-url\'])) {\r\n                $url = $_GET[\'rewrite-strtolower-url\'];\r\n                unset($_GET[\'rewrite-strtolower-url\']);\r\n                $params = http_build_query($_GET);\r\n                if(strlen($params)) {\r\n                    $params = \'?\' . $params;\r\n                }\r\n                $modx->sendRedirect(\'http://\' . $_SERVER[\'HTTP_HOST\'] . \'/\' . strtolower($url) . $params, array(\'responseCode\' => \'HTTP/1.1 301 Moved Permanently\'));\r\n            }\r\n        }\r\n        break;\r\n}', 0, 'a:0:{}', 0, '', 1, 'assets/custom/plugins/lowercaseUrl.php'),
(2, 1, 0, 'Tickets', '', 0, 9, 0, 'switch ($modx->event->name) {\n\n	case \'OnSiteRefresh\':\n		if ($modx->cacheManager->refresh(array(\'default/tickets\' => array()))) {\n			$modx->log(modX::LOG_LEVEL_INFO, $modx->lexicon(\'refresh_default\') . \': Tickets\');\n		}\n		break;\n\n\n	case \'OnDocFormSave\':\n		/* @var Ticket $resource */\n		if ($mode == \'new\' && $resource->class_key == \"Ticket\") {\n			$modx->cacheManager->delete(\'tickets/latest.tickets\');\n		}\n		/* @var TicketsSection $resource */\n		if ($mode == \'upd\' && $resource->class_key == \'TicketsSection\') {\n			if (method_exists($resource, \'clearCache\')) {\n				$resource->clearCache();\n			}\n		}\n		break;\n\n\n	case \'OnWebPagePrerender\':\n		$output = &$modx->resource->_output;\n		$output = str_replace(\n			array(\'*(*(*(*(*(*\', \'*)*)*)*)*)*\', \'~(~(~(~(~(~\', \'~)~)~)~)~)~\'),\n			array(\'[\', \']\', \'{\', \'}\'),\n			$output\n		);\n		break;\n\n\n	case \'OnPageNotFound\':\n		// It is working only with friendly urls enabled\n		$q = trim(@$_REQUEST[$modx->context->getOption(\'request_param_alias\', \'q\')]);\n		$matches = explode(\'/\', rtrim($q, \'/\'));\n		if (count($matches) < 2) {\n			return;\n		}\n\n		$ticket_uri = array_pop($matches);\n		$section_uri = implode(\'/\', $matches) . \'/\';\n\n		if ($section_id = $modx->findResource($section_uri)) {\n			/** @var TicketsSection $section */\n			if ($section = $modx->getObject(\'TicketsSection\', $section_id)) {\n				if (is_numeric($ticket_uri)) {\n					$ticket_id = $ticket_uri;\n				}\n				elseif (preg_match(\'#^\\d+#\', $ticket_uri, $tmp)) {\n					$ticket_id = $tmp[0];\n				}\n				else {\n					$properties = $section->getProperties(\'tickets\');\n					if (!empty($properties[\'uri\']) && strpos($properties[\'uri\'], \'%id\') !== false) {\n						$pcre = str_replace(\'%id\', \'([0-9]+)\', $properties[\'uri\']);\n						$pcre = preg_replace(\'#(\\%[a-z]+)#\', \'(?:.*?)\', $pcre);\n						if (preg_match($pcre, $ticket_uri, $matches)) {\n							$ticket_id = $matches[1];\n						}\n					}\n				}\n				if (!empty($ticket_id)) {\n					if ($ticket = $modx->getObject(\'Ticket\', array(\'id\' => $ticket_id, \'deleted\' => 0))) {\n						if ($ticket->published) {\n							$modx->sendRedirect($modx->makeUrl($ticket_id), array(\'responseCode\' => \'HTTP/1.1 301 Moved Permanently\'));\n						}\n						elseif ($unp_id = $modx->getOption(\'tickets.unpublished_ticket_page\')) {\n							$modx->sendForward($unp_id);\n						}\n					}\n				}\n			}\n		}\n		break;\n\n\n	case \'OnLoadWebDocument\':\n		$authenticated = $modx->user->isAuthenticated($modx->context->get(\'key\'));\n		$key = \'Tickets_User\';\n\n		if (!$authenticated && !$modx->getOption(\'tickets.count_guests\')) {\n			return;\n		}\n\n		if (empty($_COOKIE[$key])) {\n			if (!empty($_SESSION[$key])) {\n				$guest_key = $_SESSION[$key];\n			}\n			else {\n				$guest_key = $_SESSION[$key] = md5(rand() . time() . rand());\n			}\n			setcookie($key, $guest_key, time() + (86400 * 365), \'/\');\n		}\n		else {\n			$guest_key = $_COOKIE[$key];\n		}\n\n		if (empty($_SESSION[$key])) {\n			$_SESSION[$key] = $guest_key;\n		}\n\n		if ($authenticated) {\n			/** @var TicketAuthor $profile */\n			if (!$profile = $modx->user->getOne(\'AuthorProfile\')) {\n				$profile = $modx->newObject(\'TicketAuthor\');\n				$modx->user->addOne($profile);\n			}\n			$profile->set(\'visitedon\', time());\n			$profile->save();\n		}\n		break;\n\n\n	case \'OnWebPageComplete\':\n		/** @var Tickets $Tickets */\n		$Tickets = $modx->getService(\'tickets\');\n		$Tickets->logView($modx->resource->get(\'id\'));\n		break;\n\n\n	case \'OnUserSave\':\n		/** @var modUser $user */\n		if ($mode == \'new\' && $user && !$user->getOne(\'AuthorProfile\')) {\n			$profile = $modx->newObject(\'TicketAuthor\');\n			$user->addOne($profile);\n			$profile->save();\n		}\n		break;\n\n}', 0, NULL, 0, '', 0, 'core/components/tickets/elements/plugins/plugin.tickets.php'),
(3, 1, 0, 'pdoTools', '', 0, 10, 0, '/** @var modX $modx */\nswitch ($modx->event->name) {\n\n    case \'OnMODXInit\':\n        $fqn = $modx->getOption(\'pdoTools.class\', null, \'pdotools.pdotools\', true);\n        $path = $modx->getOption(\'pdotools_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\n        $modx->loadClass($fqn, $path, false, true);\n\n        $fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n        $path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\n        $modx->loadClass($fqn, $path, false, true);\n        break;\n\n    case \'OnSiteRefresh\':\n        /** @var pdoTools $pdoTools */\n        if ($pdoTools = $modx->getService(\'pdoTools\')) {\n            if ($pdoTools->clearFileCache()) {\n                $modx->log(modX::LOG_LEVEL_INFO, $modx->lexicon(\'refresh_default\') . \': pdoTools\');\n            }\n        }\n        break;\n\n    case \'OnWebPagePrerender\':\n        $parser = $modx->getParser();\n        if ($parser instanceof pdoParser) {\n            foreach ($parser->pdoTools->ignores as $key => $val) {\n                $modx->resource->_output = str_replace($key, $val, $modx->resource->_output);\n            }\n        }\n        break;\n}', 0, NULL, 0, '', 0, 'core/components/pdotools/elements/plugins/plugin.pdotools.php');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(2, 'OnDocFormSave', 0, 0),
(2, 'OnEmptyTrash', 0, 0),
(2, 'OnLoadWebDocument', 0, 0),
(2, 'OnPageNotFound', 0, 0),
(2, 'OnSiteRefresh', 0, 0),
(2, 'OnUserSave', 0, 0),
(2, 'OnWebPageComplete', 0, 0),
(2, 'OnWebPagePrerender', 0, 0),
(3, 'OnMODXInit', -100, 0),
(3, 'OnSiteRefresh', 0, 0),
(3, 'OnWebPagePrerender', -100, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 1, 0, 'TicketForm', '', 0, 9, 0, '/* @var array $scriptProperties */\n/* @var Tickets $Tickets */\n$Tickets = $modx->getService(\'tickets\', \'Tickets\', $modx->getOption(\'tickets.core_path\', null, $modx->getOption(\'core_path\') . \'components/tickets/\') . \'model/tickets/\', $scriptProperties);\n$Tickets->initialize($modx->context->key, $scriptProperties);\n\nif (!$Tickets->authenticated) {\n	return $modx->lexicon(\'ticket_err_no_auth\');\n}\n\n$tplSectionRow = $modx->getOption(\'tplSectionRow\', $scriptProperties, \'tpl.Tickets.sections.row\');\n$tplFormCreate = $modx->getOption(\'tplFormCreate\', $scriptProperties, \'tpl.Tickets.form.create\');\n$tplFormUpdate = $modx->getOption(\'tplFormUpdate\', $scriptProperties, \'tpl.Tickets.form.update\');\n$tplFiles = $modx->getOption(\'tplFiles\', $scriptProperties, \'tpl.Tickets.form.files\');\n$tplFile = $Tickets->config[\'tplFile\'] = $modx->getOption(\'tplFile\', $scriptProperties, \'tpl.Tickets.form.file\', true);\n$tplImage = $Tickets->config[\'tplImage\'] = $modx->getOption(\'tplImage\', $scriptProperties, \'tpl.Tickets.form.image\', true);\nif (empty($source)) {\n	$source = $Tickets->config[\'source\'] = $modx->getOption(\'tickets.source_default\', null, $modx->getOption(\'default_media_source\'));\n}\n$tid = !empty($_REQUEST[\'tid\'])\n	? (int)$_REQUEST[\'tid\']\n	: 0;\n$parent = !empty($_REQUEST[\'parent\'])\n	? $_REQUEST[\'parent\']\n	: \'\';\n$data = array();\n\n// Update of ticket\nif (!empty($tid)) {\n	$tplWrapper = $tplFormUpdate;\n	/* @var Ticket $ticket */\n	if ($ticket = $modx->getObject(\'Ticket\', array(\'class_key\' => \'Ticket\', \'id\' => $tid))) {\n		if ($ticket->get(\'createdby\') != $modx->user->id && !$modx->hasPermission(\'edit_document\')) {\n			return $modx->lexicon(\'ticket_err_wrong_user\');\n		}\n		$charset = $modx->getOption(\'modx_charset\');\n		$allowedFields = array_map(\'trim\', explode(\',\', $scriptProperties[\'allowedFields\']));\n		$allowedFields = array_unique(array_merge($allowedFields, array(\'parent\', \'pagetitle\', \'content\')));\n\n		$fields = array_keys($modx->getFieldMeta(\'Ticket\'));\n		foreach ($allowedFields as $field) {\n			$value = in_array($field, $fields)\n				? $ticket->get($field)\n				: $ticket->getTVValue($field);\n			if (is_string($value)) {\n				$value = html_entity_decode($value, ENT_QUOTES, $charset);\n				$value = str_replace(\n					array(\'[^\', \'^]\', \'[\', \']\', \'{\', \'}\'),\n					array(\'&#91;^\', \'^&#93;\', \'*(*(*(*(*(*\', \'*)*)*)*)*)*\', \'~(~(~(~(~(~\', \'~)~)~)~)~)~\'),\n					$value\n				);\n				$value = htmlentities($value, ENT_QUOTES, $charset);\n			}\n			$data[$field] = $value;\n		}\n		$data[\'id\'] = $ticket->id;\n		$data[\'published\'] = $ticket->published;\n		if (empty($parent)) {\n			$parent = $ticket->get(\'parent\');\n		}\n	}\n	else {\n		return $modx->lexicon(\'ticket_err_id\', array(\'id\' => $tid));\n	}\n}\nelse {\n	$tplWrapper = $tplFormCreate;\n}\n\n// Get available sections for ticket create\n$data[\'sections\'] = \'\';\n/** @var modProcessorResponse $response */\n$response = $Tickets->runProcessor(\'web/section/getlist\', array(\n	\'parents\' => $scriptProperties[\'parents\'],\n	\'resources\' => $scriptProperties[\'resources\'],\n	\'permissions\' => $scriptProperties[\'permissions\'],\n	\'sortby\' => !empty($scriptProperties[\'sortby\'])\n		? $scriptProperties[\'sortby\']\n		: \'pagetitle\',\n	\'sortdir\' => !empty($scriptProperties[\'sortdir\'])\n		? $scriptProperties[\'sortdir\']\n		: \'asc\',\n	\'depth\' => isset($scriptProperties[\'depth\'])\n		? $scriptProperties[\'depth\']\n		: 0,\n	\'context\' => !empty($scriptProperties[\'context\'])\n		? $scriptProperties[\'context\']\n		: $modx->context->key,\n	\'limit\' => 0,\n));\n$response = $modx->fromJSON($response->getResponse());\n\nif (!empty($response[\'results\'])) {\n	$Tickets->config[\'sections\'] = array();\n	foreach ($response[\'results\'] as $v) {\n		$v[\'selected\'] = $parent == $v[\'id\'] || $parent == $v[\'alias\']\n			? \'selected\'\n			: \'\';\n		$data[\'sections\'] .= $Tickets->getChunk($tplSectionRow, $v);\n		$Tickets->config[\'sections\'][] = $v[\'id\'];\n	}\n}\n\nif (!empty($allowFiles)) {\n	$q = $modx->newQuery(\'TicketFile\');\n	$q->where(array(\'class\' => \'Ticket\'));\n	$q->andCondition(array(\'parent\' => 0, \'createdby\' => $modx->user->id), null, 1);\n	if (!empty($tid)) {\n		$q->orCondition(array(\'parent\' => $tid), null, 1);\n	}\n	$q->sortby(\'createdon\', \'ASC\');\n	$collection = $modx->getIterator(\'TicketFile\', $q);\n	$files = \'\';\n	/** @var TicketFile $item */\n	foreach ($collection as $item) {\n		if ($item->get(\'deleted\') && !$item->get(\'parent\')) {\n			$item->remove();\n		}\n		else {\n			$item = $item->toArray();\n			$item[\'size\'] = round($item[\'size\'] / 1024, 2);\n			$item[\'new\'] = empty($item[\'parent\']);\n			$tpl = $item[\'type\'] == \'image\'\n				? $tplImage\n				: $tplFile;\n			$files .= $Tickets->getChunk($tpl, $item);\n		}\n	}\n	$data[\'files\'] = $Tickets->getChunk($tplFiles, array(\n		\'files\' => $files,\n	));\n	/** @var modMediaSource $source */\n	if ($source = $modx->getObject(\'sources.modMediaSource\', $source)) {\n		$properties = $source->getPropertyList();\n		$config = array(\n			\'size\' => !empty($properties[\'maxUploadSize\'])\n				? $properties[\'maxUploadSize\']\n				: 3145728,\n			\'height\' => !empty($properties[\'maxUploadHeight\'])\n				? $properties[\'maxUploadHeight\']\n				: 1080,\n			\'width\' => !empty($properties[\'maxUploadWidth\'])\n				? $properties[\'maxUploadWidth\']\n				: 1920,\n			\'extensions\' => !empty($properties[\'allowedFileTypes\'])\n				? $properties[\'allowedFileTypes\']\n				: \'jpg,jpeg,png,gif\'\n		);\n		$modx->regClientStartupScript(\'<script type=\"text/javascript\">TicketsConfig.source=\' . $modx->toJSON($config) . \';</script>\', true);\n	}\n	$modx->regClientScript($Tickets->config[\'jsUrl\'] . \'web/lib/plupload/plupload.full.min.js\');\n	$modx->regClientScript($Tickets->config[\'jsUrl\'] . \'web/files.js\');\n\n	$lang = $modx->getOption(\'cultureKey\');\n	if ($lang != \'en\' && file_exists($Tickets->config[\'jsPath\'] . \'web/lib/plupload/i18n/\' . $lang . \'.js\')) {\n		$modx->regClientScript($Tickets->config[\'jsUrl\'] . \'web/lib/plupload/i18n/\' . $lang . \'.js\');\n	}\n}\n\n$output = $Tickets->getChunk($tplWrapper, $data);\n$key = md5($modx->toJSON($Tickets->config));\n$_SESSION[\'TicketForm\'][$key] = $Tickets->config;\n$output = str_ireplace(\'</form>\', \"\\n<input type=\\\"hidden\\\" name=\\\"form_key\\\" value=\\\"{$key}\\\" class=\\\"disable-sisyphus\\\" />\\n</form>\", $output);\n\nreturn $output;', 0, 'a:21:{s:13:\"tplFormCreate\";a:7:{s:4:\"name\";s:13:\"tplFormCreate\";s:4:\"desc\";s:26:\"tickets_prop_tplFormCreate\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:23:\"tpl.Tickets.form.create\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:13:\"tplFormUpdate\";a:7:{s:4:\"name\";s:13:\"tplFormUpdate\";s:4:\"desc\";s:26:\"tickets_prop_tplFormUpdate\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:23:\"tpl.Tickets.form.update\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplPreview\";a:7:{s:4:\"name\";s:10:\"tplPreview\";s:4:\"desc\";s:23:\"tickets_prop_tplPreview\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:24:\"tpl.Tickets.form.preview\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:13:\"tplSectionRow\";a:7:{s:4:\"name\";s:13:\"tplSectionRow\";s:4:\"desc\";s:26:\"tickets_prop_tplSectionRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:69:\"@INLINE <option value=\"[[+id]]\" [[+selected]]>[[+pagetitle]]</option>\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplTicketEmailBcc\";a:7:{s:4:\"name\";s:17:\"tplTicketEmailBcc\";s:4:\"desc\";s:30:\"tickets_prop_tplTicketEmailBcc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:28:\"tpl.Tickets.ticket.email.bcc\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:26:\"tplTicketEmailSubscription\";a:7:{s:4:\"name\";s:26:\"tplTicketEmailSubscription\";s:4:\"desc\";s:39:\"tickets_prop_tplTicketEmailSubscription\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:37:\"tpl.Tickets.ticket.email.subscription\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:13:\"allowedFields\";a:7:{s:4:\"name\";s:13:\"allowedFields\";s:4:\"desc\";s:26:\"tickets_prop_allowedFields\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:24:\"parent,pagetitle,content\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:14:\"requiredFields\";a:7:{s:4:\"name\";s:14:\"requiredFields\";s:4:\"desc\";s:27:\"tickets_prop_requiredFields\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:24:\"parent,pagetitle,content\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:12:\"bypassFields\";a:7:{s:4:\"name\";s:12:\"bypassFields\";s:4:\"desc\";s:25:\"tickets_prop_bypassFields\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:19:\"redirectUnpublished\";a:7:{s:4:\"name\";s:19:\"redirectUnpublished\";s:4:\"desc\";s:32:\"tickets_prop_redirectUnpublished\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:29:\"tickets_prop_sections_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:31:\"tickets_prop_sections_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:11:\"permissions\";a:7:{s:4:\"name\";s:11:\"permissions\";s:4:\"desc\";s:33:\"tickets_prop_sections_permissions\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\"section_add_children\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:28:\"tickets_prop_sections_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pagetitle\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:29:\"tickets_prop_sections_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:29:\"tickets_prop_sections_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:10:\"allowFiles\";a:7:{s:4:\"name\";s:10:\"allowFiles\";s:4:\"desc\";s:23:\"tickets_prop_allowFiles\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:6:\"source\";a:7:{s:4:\"name\";s:6:\"source\";s:4:\"desc\";s:19:\"tickets_prop_source\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFiles\";a:7:{s:4:\"name\";s:8:\"tplFiles\";s:4:\"desc\";s:21:\"tickets_prop_tplFiles\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:22:\"tpl.Tickets.form.files\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplFile\";a:7:{s:4:\"name\";s:7:\"tplFile\";s:4:\"desc\";s:20:\"tickets_prop_tplFile\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:21:\"tpl.Tickets.form.file\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplImage\";a:7:{s:4:\"name\";s:8:\"tplImage\";s:4:\"desc\";s:21:\"tickets_prop_tplImage\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:22:\"tpl.Tickets.form.image\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/tickets/elements/snippets/snippet.ticket_form.php'),
(2, 1, 0, 'TicketComments', '', 0, 9, 0, '/** @var array $scriptProperties */\nif (empty($thread)) {\n	$scriptProperties[\'thread\'] = $modx->getOption(\'thread\', $scriptProperties, \'resource-\' . $modx->resource->id, true);\n}\n$scriptProperties[\'resource\'] = $modx->resource->get(\'id\');\n$scriptProperties[\'snippetPrepareComment\'] = $modx->getOption(\'tickets.snippet_prepare_comment\');\n$scriptProperties[\'commentEditTime\'] = $modx->getOption(\'tickets.comment_edit_time\', null, 180);\n\n$depth = $modx->getOption(\'depth\', $scriptProperties, 0);\n$tplComments = $modx->getOption(\'tplComments\', $scriptProperties, \'tpl.Tickets.comment.wrapper\');\n$tplCommentForm = $modx->getOption(\'tplCommentForm\', $scriptProperties, \'tpl.Tickets.comment.form\');\n$tplCommentFormGuest = $modx->getOption(\'tplCommentFormGuest\', $scriptProperties, \'tpl.Tickets.comment.form.guest\');\n$tplCommentAuth = $modx->getOption(\'tplCommentAuth\', $scriptProperties, \'tpl.Tickets.comment.one.auth\');\n$tplCommentGuest = $modx->getOption(\'tplCommentGuest\', $scriptProperties, \'tpl.Tickets.comment.one.guest\');\n$tplLoginToComment = $modx->getOption(\'tplLoginToComment\', $scriptProperties, \'tpl.Tickets.comment.login\');\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \"\\n\");\n\n/** @var Tickets $Tickets */\n$Tickets = $modx->getService(\'tickets\', \'Tickets\', $modx->getOption(\'tickets.core_path\', null, $modx->getOption(\'core_path\') . \'components/tickets/\') . \'model/tickets/\', $scriptProperties);\n$Tickets->initialize($modx->context->key, $scriptProperties);\n\n/** @var pdoFetch $pdoFetch */\n$pdoFetch = $modx->getService(\'pdoFetch\');\n$pdoFetch->setConfig($scriptProperties);\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n// Prepare Ticket Thread\n/** @var TicketThread $thread */\nif (!$thread = $modx->getObject(\'TicketThread\', array(\'name\' => $scriptProperties[\'thread\']))) {\n	$thread = $modx->newObject(\'TicketThread\');\n	$thread->fromArray(array(\n		\'name\' => $scriptProperties[\'thread\'],\n		\'resource\' => $modx->resource->get(\'id\'),\n		\'createdby\' => $modx->user->id,\n		\'createdon\' => date(\'Y-m-d H:i:s\'),\n		\'subscribers\' => array($modx->resource->get(\'createdby\')),\n	));\n}\nelseif ($thread->get(\'deleted\')) {\n	return $modx->lexicon(\'ticket_thread_err_deleted\');\n}\n// Prepare session for guests\nif (!empty($allowGuest) && !isset($_SESSION[\'TicketComments\'])) {\n	$_SESSION[\'TicketComments\'] = array(\'name\' => \'\', \'email\' => \'\', \'ids\' => array());\n}\n\n// Migrate authors to subscription system\nif (!is_array($thread->get(\'subscribers\'))) {\n	$thread->set(\'subscribers\', array($modx->resource->get(\'createdby\')));\n}\n$thread->set(\'resource\', $modx->resource->get(\'id\'));\n$thread->set(\'properties\', $scriptProperties);\n$thread->save();\n\n// Prepare query to db\n$class = \'TicketComment\';\n$where = array();\nif (empty($showUnpublished)) {\n	$where[\'published\'] = 1;\n}\n\n// Joining tables\n$innerJoin = array(\n	\'Thread\' => array(\n		\'class\' => \'TicketThread\',\n		\'on\' => \'`Thread`.`id` = `TicketComment`.`thread` AND `Thread`.`name` = \"\' . $thread->get(\'name\') . \'\"\'\n	)\n);\n$leftJoin = array(\n	\'User\' => array(\'class\' => \'modUser\', \'on\' => \'`User`.`id` = `TicketComment`.`createdby`\'),\n	\'Profile\' => array(\'class\' => \'modUserProfile\', \'on\' => \'`Profile`.`internalKey` = `TicketComment`.`createdby`\'),\n);\nif ($Tickets->authenticated) {\n	$leftJoin[\'Vote\'] = array(\n		\'class\' => \'TicketVote\',\n		\'on\' => \'`Vote`.`id` = `TicketComment`.`id` AND `Vote`.`class` = \"TicketComment\" AND `Vote`.`createdby` = \' . $modx->user->id\n	);\n	$leftJoin[\'Star\'] = array(\n		\'class\' => \'TicketStar\',\n		\'on\' => \'`Star`.`id` = `TicketComment`.`id` AND `Star`.`class` = \"TicketComment\" AND `Star`.`createdby` = \' . $modx->user->id\n	);\n}\n// Fields to select\n$select = array(\n	\'TicketComment\' => $modx->getSelectColumns(\'TicketComment\', \'TicketComment\', \'\', array(\'raw\'), true) . \', `parent` as `new_parent`, `rating` as `rating_total`\',\n	\'Thread\' => \'`Thread`.`resource`\',\n	\'User\' => \'`User`.`username`\',\n	\'Profile\' => $modx->getSelectColumns(\'modUserProfile\', \'Profile\', \'\', array(\'id\', \'email\'), true) . \',`Profile`.`email` as `user_email`\',\n);\nif ($Tickets->authenticated) {\n	$select[\'Vote\'] = \'`Vote`.`value` as `vote`\';\n	$select[\'Star\'] = \'COUNT(`Star`.`id`) as `star`\';\n}\n\n// Add custom parameters\nforeach (array(\'where\', \'select\', \'leftJoin\', \'innerJoin\') as $v) {\n	if (!empty($scriptProperties[$v])) {\n		$tmp = $modx->fromJSON($scriptProperties[$v]);\n		if (is_array($tmp)) {\n			$$v = array_merge($$v, $tmp);\n		}\n	}\n	unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n$default = array(\n	\'class\' => $class,\n	\'where\' => $modx->toJSON($where),\n	\'innerJoin\' => $modx->toJSON($innerJoin),\n	\'leftJoin\' => $modx->toJSON($leftJoin),\n	\'select\' => $modx->toJSON($select),\n	\'sortby\' => $class . \'.id\',\n	\'sortdir\' => \'ASC\',\n	\'groupby\' => $class . \'.id\',\n	\'limit\' => 0,\n	\'fastMode\' => true,\n	\'return\' => \'data\',\n	\'nestedChunkPrefix\' => \'tickets_\',\n);\n\n// Merge all properties and run!\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$pdoFetch->addTime(\'Query parameters prepared.\');\n$rows = $pdoFetch->run();\n\n// Processing rows\n$output = $commentsThread = null;\nif (!empty($rows) && is_array($rows)) {\n	$tmp = array();\n	$i = 1;\n	foreach ($rows as $row) {\n		$row[\'idx\'] = $i++;\n		$tmp[$row[\'id\']] = $row;\n	}\n	$rows = $thread->buildTree($tmp, $depth);\n	unset($tmp, $i);\n\n	if (!empty($formBefore)) {\n		$rows = array_reverse($rows);\n	}\n\n	$tpl = !$thread->get(\'closed\') && ($Tickets->authenticated || !empty($allowGuest))\n		? $tplCommentAuth\n		: $tplCommentGuest;\n	foreach ($rows as $row) {\n		$output[] = $Tickets->templateNode($row, $tpl);\n	}\n\n	$pdoFetch->addTime(\'Returning processed chunks\');\n	$output = implode($outputSeparator, $output);\n}\n\n$commentsThread = $pdoFetch->getChunk($tplComments, array(\n	\'total\' => $modx->getPlaceholder($pdoFetch->config[\'totalVar\']),\n	\'comments\' => $output,\n	\'subscribed\' => $thread->isSubscribed(),\n));\n\n$pls = array(\'thread\' => $scriptProperties[\'thread\']);\nif (!$Tickets->authenticated && empty($allowGuest)) {\n	$form = $pdoFetch->getChunk($tplLoginToComment);\n}\nelseif (!$Tickets->authenticated) {\n	$pls[\'name\'] = $_SESSION[\'TicketComments\'][\'name\'];\n	$pls[\'email\'] = $_SESSION[\'TicketComments\'][\'email\'];\n	if (!empty($enableCaptcha)) {\n		$tmp = $Tickets->getCaptcha();\n		$pls[\'captcha\'] = $modx->lexicon(\'ticket_comment_captcha\', $tmp);\n	}\n	$form = $pdoFetch->getChunk($tplCommentFormGuest, $pls);\n}\nelse {\n	$form = $pdoFetch->getChunk($tplCommentForm, $pls);\n}\n\n$commentForm = $thread->get(\'closed\')\n	? $modx->lexicon(\'ticket_thread_err_closed\')\n	: $form;\n$output = !empty($formBefore)\n	? $commentForm . $commentsThread\n	: $commentsThread . $commentForm;\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n	$output .= \'<pre class=\"CommentsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n$modx->regClientStartupScript(\'<script type=\"text/javascript\">TicketsConfig.formBefore = \' . (int)!empty($formBefore) . \';TicketsConfig.thread_depth = \' . (int)$depth . \';</script>\', true);\n\n// Return output\nif (!empty($toPlaceholder)) {\n	$modx->setPlaceholder($toPlaceholder, $output);\n}\nelse {\n	return $output;\n}', 0, 'a:29:{s:6:\"thread\";a:7:{s:4:\"name\";s:6:\"thread\";s:4:\"desc\";s:19:\"tickets_prop_thread\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:21:\"tickets_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:12:\"gravatarIcon\";a:7:{s:4:\"name\";s:12:\"gravatarIcon\";s:4:\"desc\";s:25:\"tickets_prop_gravatarIcon\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:2:\"mm\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:12:\"gravatarSize\";a:7:{s:4:\"name\";s:12:\"gravatarSize\";s:4:\"desc\";s:25:\"tickets_prop_gravatarSize\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:2:\"24\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:11:\"gravatarUrl\";a:7:{s:4:\"name\";s:11:\"gravatarUrl\";s:4:\"desc\";s:24:\"tickets_prop_gravatarUrl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:32:\"https://www.gravatar.com/avatar/\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:14:\"tplCommentForm\";a:7:{s:4:\"name\";s:14:\"tplCommentForm\";s:4:\"desc\";s:27:\"tickets_prop_tplCommentForm\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:24:\"tpl.Tickets.comment.form\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:19:\"tplCommentFormGuest\";a:7:{s:4:\"name\";s:19:\"tplCommentFormGuest\";s:4:\"desc\";s:32:\"tickets_prop_tplCommentFormGuest\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:30:\"tpl.Tickets.comment.form.guest\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:14:\"tplCommentAuth\";a:7:{s:4:\"name\";s:14:\"tplCommentAuth\";s:4:\"desc\";s:27:\"tickets_prop_tplCommentAuth\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:28:\"tpl.Tickets.comment.one.auth\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:15:\"tplCommentGuest\";a:7:{s:4:\"name\";s:15:\"tplCommentGuest\";s:4:\"desc\";s:28:\"tickets_prop_tplCommentGuest\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:29:\"tpl.Tickets.comment.one.guest\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplCommentDeleted\";a:7:{s:4:\"name\";s:17:\"tplCommentDeleted\";s:4:\"desc\";s:30:\"tickets_prop_tplCommentDeleted\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:31:\"tpl.Tickets.comment.one.deleted\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplComments\";a:7:{s:4:\"name\";s:11:\"tplComments\";s:4:\"desc\";s:24:\"tickets_prop_tplComments\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:27:\"tpl.Tickets.comment.wrapper\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplLoginToComment\";a:7:{s:4:\"name\";s:17:\"tplLoginToComment\";s:4:\"desc\";s:30:\"tickets_prop_tplLoginToComment\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:25:\"tpl.Tickets.comment.login\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:20:\"tplCommentEmailOwner\";a:7:{s:4:\"name\";s:20:\"tplCommentEmailOwner\";s:4:\"desc\";s:33:\"tickets_prop_tplCommentEmailOwner\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:31:\"tpl.Tickets.comment.email.owner\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:20:\"tplCommentEmailReply\";a:7:{s:4:\"name\";s:20:\"tplCommentEmailReply\";s:4:\"desc\";s:33:\"tickets_prop_tplCommentEmailReply\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:31:\"tpl.Tickets.comment.email.reply\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:27:\"tplCommentEmailSubscription\";a:7:{s:4:\"name\";s:27:\"tplCommentEmailSubscription\";s:4:\"desc\";s:40:\"tickets_prop_tplCommentEmailSubscription\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:38:\"tpl.Tickets.comment.email.subscription\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:18:\"tplCommentEmailBcc\";a:7:{s:4:\"name\";s:18:\"tplCommentEmailBcc\";s:4:\"desc\";s:31:\"tickets_prop_tplCommentEmailBcc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:29:\"tpl.Tickets.comment.email.bcc\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:26:\"tplCommentEmailUnpublished\";a:7:{s:4:\"name\";s:26:\"tplCommentEmailUnpublished\";s:4:\"desc\";s:39:\"tickets_prop_tplCommentEmailUnpublished\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:37:\"tpl.Tickets.comment.email.unpublished\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:11:\"autoPublish\";a:7:{s:4:\"name\";s:11:\"autoPublish\";s:4:\"desc\";s:24:\"tickets_prop_autoPublish\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:16:\"autoPublishGuest\";a:7:{s:4:\"name\";s:16:\"autoPublishGuest\";s:4:\"desc\";s:29:\"tickets_prop_autoPublishGuest\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:10:\"formBefore\";a:7:{s:4:\"name\";s:10:\"formBefore\";s:4:\"desc\";s:23:\"tickets_prop_formBefore\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:26:\"tickets_prop_commentsDepth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:10:\"allowGuest\";a:7:{s:4:\"name\";s:10:\"allowGuest\";s:4:\"desc\";s:23:\"tickets_prop_allowGuest\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:14:\"allowGuestEdit\";a:7:{s:4:\"name\";s:14:\"allowGuestEdit\";s:4:\"desc\";s:27:\"tickets_prop_allowGuestEdit\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:16:\"allowGuestEmails\";a:7:{s:4:\"name\";s:16:\"allowGuestEmails\";s:4:\"desc\";s:29:\"tickets_prop_allowGuestEmails\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:13:\"enableCaptcha\";a:7:{s:4:\"name\";s:13:\"enableCaptcha\";s:4:\"desc\";s:26:\"tickets_prop_enableCaptcha\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:10:\"minCaptcha\";a:7:{s:4:\"name\";s:10:\"minCaptcha\";s:4:\"desc\";s:23:\"tickets_prop_minCaptcha\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:1;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:10:\"maxCaptcha\";a:7:{s:4:\"name\";s:10:\"maxCaptcha\";s:4:\"desc\";s:23:\"tickets_prop_maxCaptcha\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:14:\"requiredFields\";a:7:{s:4:\"name\";s:14:\"requiredFields\";s:4:\"desc\";s:27:\"tickets_prop_requiredFields\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"name,email\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:9:\"threadUrl\";a:7:{s:4:\"name\";s:9:\"threadUrl\";s:4:\"desc\";s:22:\"tickets_prop_threadUrl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/tickets/elements/snippets/snippet.comments.php'),
(3, 1, 0, 'TicketLatest', '', 0, 9, 0, '/* @var array $scriptProperties */\nif (!empty($cacheKey) && $output = $modx->cacheManager->get(\'tickets/latest.\' . $cacheKey)) {\n	return $output;\n}\n\n/* @var Tickets $Tickets */\n$Tickets = $modx->getService(\'tickets\', \'Tickets\', $modx->getOption(\'tickets.core_path\', null, $modx->getOption(\'core_path\') . \'components/tickets/\') . \'model/tickets/\', $scriptProperties);\n$Tickets->initialize($modx->context->key, $scriptProperties);\n\n/** @var pdoFetch $pdoFetch */\n$pdoFetch = $modx->getService(\'pdoFetch\');\n$pdoFetch->setConfig($scriptProperties);\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (empty($action)) {\n	$action = \'comments\';\n}\nif ($action == \'tickets\' && $scriptProperties[\'tpl\'] == \'tpl.Tickets.comment.latest\') {\n	$scriptProperties[\'tpl\'] = \'tpl.Tickets.ticket.latest\';\n}\n$action = strtolower($action);\n$where = $action == \'tickets\'\n	? array(\'class_key\' => \'Ticket\')\n	: array();\n\nif (empty($showUnpublished)) {\n	$where[\'Ticket.published\'] = 1;\n}\nif (empty($showHidden)) {\n	$where[\'Ticket.hidemenu\'] = 0;\n}\nif (empty($showDeleted)) {\n	$where[\'Ticket.deleted\'] = 0;\n}\nif (!isset($cacheTime)) {\n	$cacheTime = 1800;\n}\nif (!empty($user)) {\n	$user = array_map(\'trim\', explode(\',\', $user));\n	$user_id = $user_username = array();\n	foreach ($user as $v) {\n		if (is_numeric($v)) {\n			$user_id[] = $v;\n		}\n		else {\n			$user_username[] = $v;\n		}\n	}\n	if (!empty($user_id) && !empty($user_username)) {\n		$where[] = \'(`User`.`id` IN (\' . implode(\',\', $user_id) . \') OR `User`.`username` IN (\\\'\' . implode(\'\\\',\\\'\', $user_username) . \'\\\'))\';\n	}\n	else {\n		if (!empty($user_id)) {\n			$where[\'User.id:IN\'] = $user_id;\n		}\n		else {\n			if (!empty($user_username)) {\n				$where[\'User.username:IN\'] = $user_username;\n			}\n		}\n	}\n}\n\n// Filter by ids\nif (!empty($resources)) {\n	$resources = array_map(\'trim\', explode(\',\', $resources));\n	$in = $out = array();\n	foreach ($resources as $v) {\n		if (!is_numeric($v)) {\n			continue;\n		}\n		if ($v < 0) {\n			$out[] = abs($v);\n		}\n		else {\n			$in[] = $v;\n		}\n	}\n	if (!empty($in)) {\n		$where[\'id:IN\'] = $in;\n	}\n	if (!empty($out)) {\n		$where[\'id:NOT IN\'] = $out;\n	}\n}\n// Filter by parents\nelse {\n	if (!empty($parents) && $parents > 0) {\n		$pids = array_map(\'trim\', explode(\',\', $parents));\n		$parents = $pids;\n		if (!empty($depth) && $depth > 0) {\n			foreach ($pids as $v) {\n				if (!is_numeric($v)) {\n					continue;\n				}\n				$parents = array_merge($parents, $modx->getChildIds($v, $depth));\n			}\n		}\n		if (!empty($parents)) {\n			$where[\'Ticket.parent:IN\'] = $parents;\n		}\n	}\n}\n\n// Joining tables\nif ($action == \'comments\') {\n	$class = \'TicketComment\';\n\n	$innerJoin = array();\n	$innerJoin[\'Thread\'] = empty($user)\n		? array(\'class\' => \'TicketThread\', \'on\' => \'`TicketComment`.`id` = `Thread`.`comment_last` AND `Thread`.`deleted` = 0\')\n		: array(\'class\' => \'TicketThread\', \'on\' => \'`TicketComment`.`thread` = `Thread`.`id` AND `Thread`.`deleted` = 0\');\n	$innerJoin[\'Ticket\'] = array(\'class\' => \'Ticket\', \'on\' => \'`Ticket`.`id` = `Thread`.`resource`\');\n\n	$leftJoin = array(\n		\'Section\' => array(\'class\' => \'TicketsSection\', \'on\' => \'`Section`.`id` = `Ticket`.`parent`\'),\n		\'User\' => array(\'class\' => \'modUser\', \'on\' => \'`User`.`id` = `TicketComment`.`createdby`\'),\n		\'Profile\' => array(\'class\' => \'modUserProfile\', \'on\' => \'`Profile`.`internalKey` = `TicketComment`.`createdby`\'),\n	);\n\n	$select = array(\n		\'TicketComment\' => !empty($includeContent)\n			? $modx->getSelectColumns(\'TicketComment\', \'TicketComment\', \'\', array(\'raw\'), true)\n			: $modx->getSelectColumns(\'TicketComment\', \'TicketComment\', \'\', array(\'text\', \'raw\'), true),\n		\'Ticket\' => !empty($includeContent)\n			? $modx->getSelectColumns(\'Ticket\', \'Ticket\', \'ticket.\')\n			: $modx->getSelectColumns(\'Ticket\', \'Ticket\', \'ticket.\', array(\'content\'), true)\n	);\n	$groupby = empty($user)\n		? \'`Ticket`.`id`\'\n		: \'`TicketComment`.`id`\';\n	$where[\'TicketComment.deleted\'] = 0;\n}\nelseif ($action == \'tickets\') {\n	$class = \'Ticket\';\n\n	$innerJoin = array();\n	$leftJoin = array(\n		\'Thread\' => array(\'class\' => \'TicketThread\', \'on\' => \'`Thread`.`resource` = `Ticket`.`id` AND `Thread`.`deleted` = 0\'),\n		\'Section\' => array(\'class\' => \'TicketsSection\', \'on\' => \'`Section`.`id` = `Ticket`.`parent`\'),\n		\'User\' => array(\'class\' => \'modUser\', \'on\' => \'`User`.`id` = `Ticket`.`createdby`\'),\n		\'Profile\' => array(\'class\' => \'modUserProfile\', \'on\' => \'`Profile`.`internalKey` = `Ticket`.`createdby`\'),\n	);\n\n	$select = array(\n		\'Ticket\' => !empty($includeContent)\n			? $modx->getSelectColumns(\'Ticket\', \'Ticket\')\n			: $modx->getSelectColumns(\'Ticket\', \'Ticket\', \'\', array(\'content\'), true),\n		\'Thread\' => \'`Thread`.`id` as `thread`\'\n	);\n	$groupby = \'`Ticket`.`id`\';\n}\nelse {\n	return \'Wrong action. You must use \"ticket\" or \"comment\".\';\n}\n\n// Fields to select\n$select = array_merge($select, array(\n	\'Section\' => $modx->getSelectColumns(\'TicketsSection\', \'Section\', \'section.\', array(\'content\'), true),\n	\'User\' => $modx->getSelectColumns(\'modUser\', \'User\', \'\', array(\'username\')),\n	\'Profile\' => $modx->getSelectColumns(\'modUserProfile\', \'Profile\', \'\', array(\'id\'), true),\n));\n\n// Add custom parameters\nforeach (array(\'where\', \'select\', \'leftJoin\', \'innerJoin\') as $v) {\n	if (!empty($scriptProperties[$v])) {\n		$tmp = $modx->fromJSON($scriptProperties[$v]);\n		if (is_array($tmp)) {\n			$$v = array_merge($$v, $tmp);\n		}\n	}\n	unset($scriptProperties[$v]);\n}\n\n$default = array(\n	\'class\' => $class,\n	\'where\' => $modx->toJSON($where),\n	\'innerJoin\' => $modx->toJSON($innerJoin),\n	\'leftJoin\' => $modx->toJSON($leftJoin),\n	\'select\' => $modx->toJSON($select),\n	\'sortby\' => \'createdon\',\n	\'sortdir\' => \'DESC\',\n	\'groupby\' => $groupby,\n	\'return\' => \'data\',\n	\'nestedChunkPrefix\' => \'tickets_\',\n);\n\n// Merge all properties and run!\n$pdoFetch->setConfig(array_merge($default, $scriptProperties));\n$pdoFetch->addTime(\'Query parameters are prepared.\');\n$rows = $pdoFetch->run();\n\n// Processing rows\n$output = array();\nif (!empty($rows) && is_array($rows)) {\n	foreach ($rows as $k => $row) {\n		// Processing main fields\n		$row[\'comments\'] = $modx->getCount(\'TicketComment\', array(\'thread\' => $row[\'thread\'], \'published\' => 1));\n\n		// Prepare row\n		if ($class == \'Ticket\') {\n			$row[\'date_ago\'] = $Tickets->dateFormat($row[\'createdon\']);\n			$properties = is_string($row[\'properties\'])\n				? $modx->fromJSON($row[\'properties\'])\n				: $row[\'properties\'];\n			if (empty($properties[\'process_tags\'])) {\n				foreach ($row as $field => $value) {\n					$row[$field] = str_replace(\n						array(\'[\', \']\', \'`\', \'{\', \'}\'),\n						array(\'&#91;\', \'&#93;\', \'&#96;\', \'&#123;\', \'&#125;\'),\n						$value\n					);\n				}\n			}\n		}\n		else {\n\n			if (empty($row[\'createdby\'])) {\n				$row[\'fullname\'] = $row[\'name\'];\n				$row[\'guest\'] = 1;\n			}\n			$row[\'resource\'] = $row[\'ticket.id\'];\n			$row = $Tickets->prepareComment($row);\n		}\n\n		// Processing chunk\n		$row[\'idx\'] = $pdoFetch->idx++;\n		$tpl = $pdoFetch->defineChunk($row);\n		$output[] = !empty($tpl)\n			? $pdoFetch->getChunk($tpl, $row, $pdoFetch->config[\'fastMode\'])\n			: $pdoFetch->getChunk(\'\', $row);\n	}\n	$pdoFetch->addTime(\'Returning processed chunks\');\n}\nif (empty($outputSeparator)) {\n	$outputSeparator = \"\\n\";\n}\n$output = implode($outputSeparator, $output);\n\nif (!empty($cacheKey)) {\n	$modx->cacheManager->set(\'tickets/latest.\' . $cacheKey, $output, $cacheTime);\n}\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n	$output .= \'<pre class=\"TicketLatestLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toPlaceholder)) {\n	$modx->setPlaceholder($toPlaceholder, $output);\n}\nelse {\n	return $output;\n}', 0, 'a:23:{s:6:\"action\";a:7:{s:4:\"name\";s:6:\"action\";s:4:\"desc\";s:19:\"tickets_prop_action\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:8:\"Comments\";s:5:\"value\";s:8:\"comments\";}i:1;a:2:{s:4:\"text\";s:7:\"Tickets\";s:5:\"value\";s:7:\"tickets\";}}s:5:\"value\";s:8:\"comments\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:16:\"tickets_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:26:\"tpl.Tickets.comment.latest\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:18:\"tickets_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:19:\"tickets_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:18:\"tickets_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:20:\"tickets_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:22:\"tickets_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:19:\"tickets_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:20:\"tickets_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:27:\"tickets_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:26:\"tickets_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:23:\"tickets_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:18:\"tickets_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:21:\"tickets_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:28:\"tickets_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:20:\"tickets_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:21:\"tickets_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:28:\"tickets_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:24:\"tickets_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:23:\"tickets_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:4:\"user\";a:7:{s:4:\"name\";s:4:\"user\";s:4:\"desc\";s:17:\"tickets_prop_user\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:8:\"cacheKey\";a:7:{s:4:\"name\";s:8:\"cacheKey\";s:4:\"desc\";s:21:\"tickets_prop_cacheKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:22:\"tickets_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:1800;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/tickets/elements/snippets/snippet.ticket_latest.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(4, 1, 0, 'TicketMeta', '', 0, 9, 0, '/* @var array $scriptProperties */\n/* @var Tickets $Tickets */\n$Tickets = $modx->getService(\'tickets\', \'Tickets\', $modx->getOption(\'tickets.core_path\', null, $modx->getOption(\'core_path\') . \'components/tickets/\') . \'model/tickets/\', $scriptProperties);\n$Tickets->initialize($modx->context->key, $scriptProperties);\n\n$scriptProperties[\'nestedChunkPrefix\'] = \'tickets_\';\n/** @var pdoFetch $pdoFetch */\n$pdoFetch = $modx->getService(\'pdoFetch\');\n$pdoFetch->setConfig($scriptProperties);\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (empty($id)) {\n	$id = $modx->resource->id;\n}\n/** @var Ticket|modResource $ticket */\nif (!$ticket = $modx->getObject(\'modResource\', $id)) {\n	return \'Could not load resource with id = \' . $id;\n}\n\n$class = $ticket instanceof Ticket\n	? \'Ticket\'\n	: \'modResource\';\n\n$data = $ticket->toArray();\n$vote = $pdoFetch->getObject(\'TicketVote\', array(\'id\' => $ticket->id, \'class\' => \'Ticket\', \'createdby\' => $modx->user->id), array(\'select\' => \'value\', \'sortby\' => \'id\'));\nif (!empty($vote)) {\n	$data[\'vote\'] = $vote[\'value\'];\n}\n\n$star = $modx->getCount(\'TicketStar\', array(\'id\' => $ticket->id, \'class\' => \'Ticket\', \'createdby\' => $modx->user->id));\n$data[\'stared\'] = !empty($star);\n$data[\'unstared\'] = empty($star);\n\nif ($class != \'Ticket\') {\n	// Rating\n	if (!$modx->user->id || $modx->user->id == $ticket->createdby) {\n		$data[\'voted\'] = 0;\n	}\n	else {\n		$q = $modx->newQuery(\'TicketVote\');\n		$q->where(array(\'id\' => $ticket->id, \'createdby\' => $modx->user->id, \'class\' => \'Ticket\'));\n		$q->select(\'`value`\');\n		$tstart = microtime(true);\n		if ($q->prepare() && $q->stmt->execute()) {\n			$modx->startTime += microtime(true) - $tstart;\n			$modx->executedQueries++;\n			$voted = $q->stmt->fetchColumn();\n			if ($voted > 0) {\n				$voted = 1;\n			}\n			elseif ($voted < 0) {\n				$voted = -1;\n			}\n			$data[\'voted\'] = $voted;\n		}\n	}\n	$data[\'can_vote\'] = $data[\'voted\'] === false && $Tickets->authenticated && $modx->user->id != $ticket->createdby;\n\n	$data = array_merge($ticket->getProperties(\'tickets\'), $data);\n	if (!isset($data[\'rating\'])) {\n		$data[\'rating\'] = $data[\'rating_total\'] = $data[\'rating_plus\'] = $data[\'rating_minus\'] = 0;\n	}\n\n	// Views\n	$data[\'views\'] = $modx->getCount(\'TicketView\', array(\'parent\' => $ticket->id));\n\n	// Comments\n	$data[\'comments\'] = 0;\n	$thread = empty($thread)\n		? \'resource-\' . $ticket->id\n		: $thread;\n	$q = $modx->newQuery(\'TicketThread\', array(\'name\' => $thread));\n	$q->leftJoin(\'TicketComment\', \'TicketComment\', \"`TicketThread`.`id` = `TicketComment`.`thread` AND `TicketComment`.`published` = 1\");\n	$q->select(\'COUNT(`TicketComment`.`id`) as `comments`\');\n	$tstart = microtime(true);\n	if ($q->prepare() && $q->stmt->execute()) {\n		$modx->startTime += microtime(true) - $tstart;\n		$modx->executedQueries++;\n		$data[\'comments\'] = (int)$q->stmt->fetchColumn();\n	}\n\n	// Date ago\n	$data[\'date_ago\'] = $Tickets->dateFormat($data[\'createdon\']);\n\n	// Stars\n	$data[\'stars\'] = $modx->getCount(\'TicketStar\', array(\'id\' => $ticket->id, \'class\' => \'Ticket\'));\n}\n\nif ($data[\'rating\'] > 0) {\n	$data[\'rating\'] = \'+\' . $data[\'rating\'];\n	$data[\'rating_positive\'] = 1;\n}\nelseif ($data[\'rating\'] < 0) {\n	$data[\'rating_negative\'] = 1;\n}\n\nif (!$Tickets->authenticated || $modx->user->id == $ticket->createdby) {\n	$data[\'cant_vote\'] = 1;\n}\nelseif (array_key_exists(\'vote\', $data)) {\n	if ($data[\'vote\'] == \'\') {\n		$data[\'can_vote\'] = 1;\n	}\n	elseif ($data[\'vote\'] > 0) {\n		$data[\'voted_plus\'] = 1;\n		$data[\'cant_vote\'] = 1;\n	}\n	elseif ($data[\'vote\'] < 0) {\n		$data[\'voted_minus\'] = 1;\n		$data[\'cant_vote\'] = 1;\n	}\n	else {\n		$data[\'voted_none\'] = 1;\n		$data[\'cant_vote\'] = 1;\n	}\n}\n\n$data[\'active\'] = (int)!empty($data[\'can_vote\']);\n$data[\'inactive\'] = (int)!empty($data[\'cant_vote\']);\n\n$data[\'can_star\'] = $Tickets->authenticated;\n\nif (!empty($getSection)) {\n	$fields = $modx->getFieldMeta(\'modResource\');\n	unset($fields[\'content\']);\n	$section = $pdoFetch->getObject(\'modResource\', $ticket->parent, array(\'select\' => implode(\',\', array_keys($fields))));\n	foreach ($section as $k => $v) {\n		$data[\'section.\' . $k] = $v;\n	}\n}\nif (!empty($getUser)) {\n	$fields = $modx->getFieldMeta(\'modUserProfile\');\n	$user = $pdoFetch->getObject(\'modUserProfile\', array(\'internalKey\' => $ticket->createdby), array(\n		\'innerJoin\' => array(\n			\'modUser\' => array(\'class\' => \'modUser\', \'on\' => \'`modUserProfile`.`internalKey` = `modUser`.`id`\')\n		),\n		\'select\' => array(\n			\'modUserProfile\' => implode(\',\', array_keys($fields)),\n			\'modUser\' => \'username\',\n		)\n	));\n	$data = array_merge($data, $user);\n}\n\nif (!empty($getFiles)) {\n	$where = array(\'deleted\' => 0, \'class\' => \'Ticket\', \'parent\' => $ticket->id);\n	$collection = $pdoFetch->getCollection(\'TicketFile\', $where, array(\'sortby\' => \'createdon\', \'sortdir\' => \'ASC\'));\n	$data[\'files\'] = $content = \'\';\n	if (!empty($unusedFiles)) {\n		$content = $ticket->getContent();\n	}\n	foreach ($collection as $item) {\n		if ($content && strpos($content, $item[\'url\']) !== false) {\n			continue;\n		}\n		$item[\'size\'] = round($item[\'size\'] / 1024, 2);\n		$data[\'files\'] .= !empty($tplFile)\n			? $Tickets->getChunk($tplFile, $item)\n			: $Tickets->getChunk(\'\', $item);\n	}\n	$data[\'has_files\'] = !empty($data[\'files\']);\n}\n$data[\'id\'] = $ticket->get(\'id\');\n\nreturn !empty($tpl)\n	? $Tickets->getChunk($tpl, $data)\n	: $Tickets->getChunk(\'\', $data);', 0, 'a:7:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:21:\"tickets_prop_meta_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:16:\"tpl.Tickets.meta\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplFile\";a:7:{s:4:\"name\";s:7:\"tplFile\";s:4:\"desc\";s:25:\"tickets_prop_meta_tplFile\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:21:\"tpl.Tickets.meta.file\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:10:\"getSection\";a:7:{s:4:\"name\";s:10:\"getSection\";s:4:\"desc\";s:23:\"tickets_prop_getSection\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"getUser\";a:7:{s:4:\"name\";s:7:\"getUser\";s:4:\"desc\";s:20:\"tickets_prop_getUser\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:8:\"getFiles\";a:7:{s:4:\"name\";s:8:\"getFiles\";s:4:\"desc\";s:21:\"tickets_prop_getFiles\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:11:\"unusedFiles\";a:7:{s:4:\"name\";s:11:\"unusedFiles\";s:4:\"desc\";s:24:\"tickets_prop_unusedFiles\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:6:\"thread\";a:7:{s:4:\"name\";s:6:\"thread\";s:4:\"desc\";s:19:\"tickets_prop_thread\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/tickets/elements/snippets/snippet.ticket_meta.php'),
(5, 1, 0, 'getTickets', '', 0, 9, 0, '/* @var array $scriptProperties */\n/* @var Tickets $Tickets */\n$Tickets = $modx->getService(\'tickets\', \'Tickets\', $modx->getOption(\'tickets.core_path\', null, $modx->getOption(\'core_path\') . \'components/tickets/\') . \'model/tickets/\', $scriptProperties);\n$Tickets->initialize($modx->context->key, $scriptProperties);\n\n/** @var pdoFetch $pdoFetch */\n$pdoFetch = $modx->getService(\'pdoFetch\');\n$pdoFetch->setConfig($scriptProperties);\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (isset($parents) && $parents === \'\') {\n	$scriptProperties[\'parents\'] = $modx->resource->id;\n}\n\n$class = \'Ticket\';\n$where = array(\'class_key\' => $class);\n\n//Filter by user\nif (!empty($user)) {\n	$user = array_map(\'trim\', explode(\',\', $user));\n	$user_id = $user_username = array();\n	foreach ($user as $v) {\n		if (is_numeric($v)) {\n			$user_id[] = $v;\n		}\n		else {\n			$user_username[] = $v;\n		}\n	}\n	if (!empty($user_id) && !empty($user_username)) {\n		$where[] = \'(`User`.`id` IN (\' . implode(\',\', $user_id) . \') OR `User`.`username` IN (\\\'\' . implode(\'\\\',\\\'\', $user_username) . \'\\\'))\';\n	}\n	else {\n		if (!empty($user_id)) {\n			$where[\'User.id:IN\'] = $user_id;\n		}\n		else {\n			if (!empty($user_username)) {\n				$where[\'User.username:IN\'] = $user_username;\n			}\n		}\n	}\n}\n\n// Joining tables\n$leftJoin = array(\n	\'Section\' => array(\'class\' => \'TicketsSection\', \'on\' => \'`Section`.`id` = `Ticket`.`parent`\'),\n	\'User\' => array(\'class\' => \'modUser\', \'on\' => \'`User`.`id` = `Ticket`.`createdby`\'),\n	\'Profile\' => array(\'class\' => \'modUserProfile\', \'on\' => \'`Profile`.`internalKey` = `User`.`id`\'),\n);\nif ($Tickets->authenticated) {\n	$leftJoin[\'Vote\'] = array(\n		\'class\' => \'TicketVote\',\n		\'on\' => \'`Vote`.`id` = `Ticket`.`id` AND `Vote`.`class` = \"Ticket\" AND `Vote`.`createdby` = \' . $modx->user->id\n	);\n	$leftJoin[\'Star\'] = array(\n		\'class\' => \'TicketStar\',\n		\'on\' => \'`Star`.`id` = `Ticket`.`id` AND `Star`.`class` = \"Ticket\" AND `Star`.`createdby` = \' . $modx->user->id\n	);\n}\n\n// Fields to select\n$select = array(\n	\'Section\' => $modx->getSelectColumns(\'TicketsSection\', \'Section\', \'section.\', array(\'content\'), true),\n	\'User\' => $modx->getSelectColumns(\'modUser\', \'User\', \'\', array(\'username\')),\n	\'Profile\' => $modx->getSelectColumns(\'modUserProfile\', \'Profile\', \'\', array(\'id\'), true),\n	\'Ticket\' => !empty($includeContent)\n		? $modx->getSelectColumns($class, $class)\n		: $modx->getSelectColumns($class, $class, \'\', array(\'content\'), true),\n);\nif ($Tickets->authenticated) {\n	$select[\'Vote\'] = \'`Vote`.`value` as `vote`\';\n	$select[\'Star\'] = \'COUNT(`Star`.`id`) as `star`\';\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Add custom parameters\nforeach (array(\'where\', \'select\', \'leftJoin\') as $v) {\n	if (!empty($scriptProperties[$v])) {\n		$tmp = $modx->fromJSON($scriptProperties[$v]);\n		if (is_array($tmp)) {\n			$$v = array_merge($$v, $tmp);\n		}\n	}\n	unset($scriptProperties[$v]);\n}\n\n$default = array(\n	\'class\' => $class,\n	\'where\' => $modx->toJSON($where),\n	\'leftJoin\' => $modx->toJSON($leftJoin),\n	\'select\' => $modx->toJSON($select),\n	\'sortby\' => \'createdon\',\n	\'sortdir\' => \'DESC\',\n	\'groupby\' => $class . \'.id\',\n	\'return\' => !empty($returnIds)\n		? \'ids\'\n		: \'data\',\n	\'nestedChunkPrefix\' => \'tickets_\',\n);\n\n// Merge all properties and run!\n$pdoFetch->setConfig(array_merge($default, $scriptProperties));\n$pdoFetch->addTime(\'Query parameters are prepared.\');\n$rows = $pdoFetch->run();\n\nif (!empty($returnIds)) {\n	return $rows;\n}\n\n// Processing rows\n$output = array();\nif (!empty($rows) && is_array($rows)) {\n	foreach ($rows as $k => $row) {\n		// Handle properties\n		$properties = is_string($row[\'properties\'])\n			? $modx->fromJSON($row[\'properties\'])\n			: $row[\'properties\'];\n		if (!empty($properties[\'tickets\'])) {\n			$properties = $properties[\'tickets\'];\n		}\n		if (empty($properties[\'process_tags\'])) {\n			foreach ($row as $field => $value) {\n				$row[$field] = str_replace(\n					array(\'[\', \']\', \'`\', \'{\', \'}\'),\n					array(\'&#91;\', \'&#93;\', \'&#96;\', \'&#123;\', \'&#125;\'),\n					$value\n				);\n			}\n		}\n		if (!is_array($properties)) {\n			$properties = array();\n		}\n\n		// Handle rating\n		$row[\'rating\'] = $row[\'rating_total\'] = array_key_exists(\'rating\', $properties)\n			? $properties[\'rating\']\n			: 0;\n		$row[\'rating_plus\'] = array_key_exists(\'rating_plus\', $properties)\n			? $properties[\'rating_plus\']\n			: 0;\n		$row[\'rating_minus\'] = array_key_exists(\'rating_minus\', $properties)\n			? $properties[\'rating_minus\']\n			: 0;\n		if ($row[\'rating\'] > 0) {\n			$row[\'rating\'] = \'+\' . $row[\'rating\'];\n			$row[\'rating_positive\'] = 1;\n		}\n		elseif ($row[\'rating\'] < 0) {\n			$row[\'rating_negative\'] = 1;\n		}\n\n		if (!$Tickets->authenticated || $modx->user->id == $row[\'createdby\']) {\n			$row[\'cant_vote\'] = 1;\n		}\n		elseif (array_key_exists(\'vote\', $row)) {\n			if ($row[\'vote\'] == \'\') {\n				$row[\'can_vote\'] = 1;\n			}\n			elseif ($row[\'vote\'] > 0) {\n				$row[\'voted_plus\'] = 1;\n				$row[\'cant_vote\'] = 1;\n			}\n			elseif ($row[\'vote\'] < 0) {\n				$row[\'voted_minus\'] = 1;\n				$row[\'cant_vote\'] = 1;\n			}\n			else {\n				$row[\'voted_none\'] = 1;\n				$row[\'cant_vote\'] = 1;\n			}\n		}\n		$row[\'active\'] = (int)!empty($row[\'can_vote\']);\n		$row[\'inactive\'] = (int)!empty($row[\'cant_vote\']);\n\n		$row[\'can_star\'] = $Tickets->authenticated;\n		$row[\'stared\'] = !empty($row[\'star\']);\n		$row[\'unstared\'] = empty($row[\'star\']);\n\n		// Adding fields to row\n		$additional_fields = $pdoFetch->getObject(\'Ticket\', $row[\'id\'], array(\n			\'leftJoin\' => array(\n				\'View\' => array(\'class\' => \'TicketView\', \'on\' => \'`Ticket`.`id` = `View`.`parent`\'),\n				\'Thread\' => array(\'class\' => \'TicketThread\', \'on\' => \'`Thread`.`resource` = `Ticket`.`id`  AND `Thread`.`deleted` = 0\'),\n			),\n			\'select\' => array(\n				\'View\' => \'COUNT(`View`.`parent`) as `views`\',\n				\'Thread\' => \'`Thread`.`id` as `thread`\',\n			),\n			\'groupby\' => $class . \'.id\'\n		));\n		$row = array_merge($row, $additional_fields);\n		$row[\'date_ago\'] = $Tickets->dateFormat($row[\'createdon\']);\n		$row[\'comments\'] = $modx->getCount(\'TicketComment\', array(\'published\' => 1, \'thread\' => $row[\'thread\']));\n		$row[\'stars\'] = $modx->getCount(\'TicketStar\', array(\'id\' => $row[\'id\'], \'class\' => \'Ticket\'));\n		// Special fields for quick placeholders\n		$row[\'isauthor\'] = $modx->user->id == $row[\'createdby\'];\n		$row[\'unpublished\'] = empty($row[\'published\']);\n\n		$row[\'idx\'] = $pdoFetch->idx++;\n		// Processing new comments\n		if ($Tickets->authenticated) {\n			$last_view = $pdoFetch->getObject(\'TicketView\', array(\n				\'parent\' => $row[\'id\'],\n				\'uid\' => $modx->user->id,\n			), array(\n				\'sortby\' => \'timestamp\',\n				\'sortdir\' => \'DESC\',\n				\'limit\' => 1,\n			));\n			if (!empty($last_view[\'timestamp\'])) {\n				$row[\'new_comments\'] = $modx->getCount(\'TicketComment\', array(\n					\'published\' => 1,\n					\'thread\' => $row[\'thread\'],\n					\'createdon:>\' => $last_view[\'timestamp\'],\n					\'createdby:!=\' => $modx->user->id,\n				));\n			}\n			else {\n				$row[\'new_comments\'] = $row[\'comments\'];\n			}\n		}\n		else {\n			$row[\'new_comments\'] = \'\';\n		}\n\n		// Processing chunk\n		$tpl = $pdoFetch->defineChunk($row);\n		$output[] = empty($tpl)\n			? \'<pre>\' . $pdoFetch->getChunk(\'\', $row) . \'</pre>\'\n			: $pdoFetch->getChunk($tpl, $row, $pdoFetch->config[\'fastMode\']);\n	}\n}\n$pdoFetch->addTime(\'Returning processed chunks\');\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n	$log .= \'<pre class=\"getTicketsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n// Return output\nif (!empty($toSeparatePlaceholders)) {\n	$output[\'log\'] = $log;\n	$modx->setPlaceholders($output, $toSeparatePlaceholders);\n}\nelse {\n	if (empty($outputSeparator)) {\n		$outputSeparator = \"\\n\";\n	}\n	$output = implode($outputSeparator, $output);\n	$output .= $log;\n\n	if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n		$array = array(\'output\' => $output);\n		if ($Tickets->authenticated && $modx->resource->class_key == \'TicketsSection\') {\n			/** @var TicketsSection $section */\n			$section = &$modx->resource;\n			$array[\'subscribed\'] = $section->isSubscribed();\n		}\n		$output = $pdoFetch->getChunk($tplWrapper, $array, $pdoFetch->config[\'fastMode\']);\n	}\n\n	if (!empty($toPlaceholder)) {\n		$modx->setPlaceholder($toPlaceholder, $output);\n	}\n	else {\n		return $output;\n	}\n}', 0, 'a:21:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:16:\"tickets_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\"tpl.Tickets.list.row\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:18:\"tickets_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:19:\"tickets_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:18:\"tickets_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:20:\"tickets_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:22:\"tickets_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:19:\"tickets_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:20:\"tickets_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:27:\"tickets_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:26:\"tickets_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:23:\"tickets_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:18:\"tickets_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:21:\"tickets_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:28:\"tickets_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:20:\"tickets_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:21:\"tickets_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:28:\"tickets_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:24:\"tickets_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:23:\"tickets_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:4:\"user\";a:7:{s:4:\"name\";s:4:\"user\";s:4:\"desc\";s:17:\"tickets_prop_user\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:23:\"tickets_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/tickets/elements/snippets/snippet.get_tickets.php'),
(6, 1, 0, 'getTicketsSections', '', 0, 9, 0, '/* @var array $scriptProperties */\n/* @var Tickets $Tickets */\n$Tickets = $modx->getService(\'tickets\', \'Tickets\', $modx->getOption(\'tickets.core_path\', null, $modx->getOption(\'core_path\') . \'components/tickets/\') . \'model/tickets/\', $scriptProperties);\n$Tickets->initialize($modx->context->key, $scriptProperties);\n\n/** @var pdoFetch $pdoFetch */\n$pdoFetch = $modx->getService(\'pdoFetch\');\n$pdoFetch->setConfig($scriptProperties);\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (isset($parents) && $parents === \'\') {\n	$scriptProperties[\'parents\'] = $modx->resource->id;\n}\n\n$class = \'TicketsSection\';\n$where = array(\'class_key\' => $class);\n\n// Adding custom where parameters\nif (!empty($scriptProperties[\'where\'])) {\n	$tmp = $modx->fromJSON($scriptProperties[\'where\']);\n	if (is_array($tmp)) {\n		$where = array_merge($where, $tmp);\n	}\n}\nunset($scriptProperties[\'where\']);\n$pdoFetch->addTime(\'\"Where\" expression built.\');\n\n// Joining tables\n$leftJoin = array(\n	\'Ticket\' => array(\'class\' => \'Ticket\', \'on\' => \'Ticket.parent=TicketsSection.id AND Ticket.published=1 AND Ticket.deleted=0 AND Ticket.class_key=\"Ticket\"\'),\n	\'View\' => array(\'class\' => \'TicketView\', \'on\' => \'Ticket.id=View.parent\'),\n	//\'TicketVote\' => array(\'class\' => \'TicketVote\', \'on\' => \'icket.id=Vote.parent AND Vote.class=\"Ticket\"\'),\n);\n\n// Fields to select\n$select = array(\n	\'TicketsSection\' => !empty($includeContent)\n		? $modx->getSelectColumns($class, $class)\n		: $modx->getSelectColumns($class, $class, \'\', array(\'content\'), true),\n	\'Ticket\' => \'COUNT(DISTINCT `Ticket`.`id`) as `tickets`\',\n	\'View\' => \'COUNT(`View`.`parent`) as `views`\',\n	//,\'Vote\' => \'SUM(DISTINCT `Vote`.`value`) as `votes`\'\n);\n\n$default = array(\n	\'class\' => $class,\n	\'where\' => $modx->toJSON($where),\n	\'leftJoin\' => $modx->toJSON($leftJoin),\n	\'select\' => $modx->toJSON($select),\n	\'groupby\' => $class . \'.id\',\n	\'sortby\' => \'views\',\n	\'sortdir\' => \'DESC\',\n	\'return\' => !empty($returnIds)\n		? \'ids\'\n		: \'data\',\n	\'nestedChunkPrefix\' => \'tickets_\',\n);\n\n// Merge all properties and run!\n$pdoFetch->setConfig(array_merge($default, $scriptProperties));\n$pdoFetch->addTime(\'Query parameters are prepared.\');\n$rows = $pdoFetch->run();\n\nif (!empty($returnIds)) {\n	return $rows;\n}\n\n// Processing rows\n$output = array();\nif (!empty($rows) && is_array($rows)) {\n	foreach ($rows as $k => $row) {\n		// Processing main fields\n		$add = $pdoFetch->getObject(\'TicketThread\', array(\'deleted\' => 0), array(\n			\'innerJoin\' => array(\n				\'Ticket\' => array(\'class\' => \'Ticket\', \'on\' => \'Ticket.id = TicketThread.resource AND Ticket.published=1 AND Ticket.deleted=0 AND Ticket.class_key=\"Ticket\" AND Ticket.parent=\' . $row[\'id\']),\n			),\n			\'select\' => array(\n				\'TicketThread\' => \'SUM(TicketThread.comments) as `comments`\'\n			)\n		));\n\n		$row[\'comments\'] = !empty($add[\'comments\'])\n			? $add[\'comments\']\n			: 0;\n		$row[\'date_ago\'] = $Tickets->dateFormat($row[\'createdon\']);\n\n		$row[\'idx\'] = $pdoFetch->idx++;\n		// Processing chunk\n		$tpl = $pdoFetch->defineChunk($row);\n		$output[] = empty($tpl)\n			? \'<pre>\' . $pdoFetch->getChunk(\'\', $row) . \'</pre>\'\n			: $pdoFetch->getChunk($tpl, $row, $pdoFetch->config[\'fastMode\']);\n	}\n}\n$pdoFetch->addTime(\'Returning processed chunks\');\nif (empty($outputSeparator)) {\n	$outputSeparator = \"\\n\";\n}\n$output = implode($outputSeparator, $output);\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n	$log .= \'<pre class=\"getSectionsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n// Return output\nif (!empty($toSeparatePlaceholders)) {\n	$output[\'log\'] = $log;\n	$modx->setPlaceholders($output, $toSeparatePlaceholders);\n}\nelse {\n	$output .= $log;\n\n	if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n		$output = $pdoFetch->getChunk($tplWrapper, array(\'output\' => $output), $pdoFetch->config[\'fastMode\']);\n	}\n\n	if (!empty($toPlaceholder)) {\n		$modx->setPlaceholder($toPlaceholder, $output);\n	}\n	else {\n		return $output;\n	}\n}', 0, 'a:19:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:16:\"tickets_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:24:\"tpl.Tickets.sections.row\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:18:\"tickets_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:19:\"tickets_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:18:\"tickets_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:20:\"tickets_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:22:\"tickets_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:19:\"tickets_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"views\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:20:\"tickets_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:27:\"tickets_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:26:\"tickets_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:23:\"tickets_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:18:\"tickets_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:21:\"tickets_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:28:\"tickets_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:20:\"tickets_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:21:\"tickets_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:28:\"tickets_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:24:\"tickets_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:23:\"tickets_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/tickets/elements/snippets/snippet.get_sections.php'),
(7, 1, 0, 'getComments', '', 0, 9, 0, '/* @var array $scriptProperties */\n/* @var Tickets $Tickets */\n$Tickets = $modx->getService(\'tickets\', \'Tickets\', $modx->getOption(\'tickets.core_path\', null, $modx->getOption(\'core_path\') . \'components/tickets/\') . \'model/tickets/\', $scriptProperties);\n$Tickets->initialize($modx->context->key, $scriptProperties);\n\n/** @var pdoFetch $pdoFetch */\n$pdoFetch = $modx->getService(\'pdoFetch\');\n$pdoFetch->setConfig($scriptProperties);\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'tpl.Tickets.comment.list.row\');\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \"\\n\");\n\n// Define threads of comments\nif (!empty($parents) || !empty($resources) || !empty($threads)) {\n	$where = array();\n	$options = array(\n		\'innerJoin\' => array(\n			\'Thread\' => array(\n				\'class\' => \'TicketThread\',\n				\'on\' => \'`Ticket`.`id` = `Thread`.`resource`\',\n			)\n		),\n		\'groupby\' => \'`Ticket`.`id`\',\n		\'select\' => array(\'Thread\' => \'`Thread`.`id`\'),\n		\'showUnpublished\' => !empty($showUnpublished),\n		\'showDeleted\' => !empty($showDeleted),\n		\'depth\' => isset($depth)\n			? (int)$depth\n			: 10,\n	);\n	if (!empty($parents)) {\n		$options[\'parents\'] = $parents;\n	}\n	if (!empty($resources)) {\n		$options[\'resources\'] = $resources;\n	}\n	if (!empty($threads)) {\n		$threads = array_map(\'trim\', explode(\',\', $threads));\n		$threads_in = $threads_out = array();\n		foreach ($threads as $v) {\n			if (!is_numeric($v)) {\n				continue;\n			}\n			if ($v[0] == \'-\') {\n				$threads_out[] = abs($v);\n			}\n			else {\n				$threads_in[] = abs($v);\n			}\n		}\n		if (!empty($threads_in)) {\n			$where[\'Thread.id:IN\'] = $threads_in;\n		}\n		if (!empty($threads_out)) {\n			$where[\'Thread.id:NOT IN\'] = $threads_out;\n		}\n	}\n\n	$rows = $pdoFetch->getCollection(\'Ticket\', $where, $options);\n	$threads = array();\n	foreach ($rows as $item) {\n		$threads[] = $item[\'id\'];\n	}\n}\n\n// Prepare query to db\n$class = \'TicketComment\';\n$where = array();\nif (empty($showUnpublished)) {\n	$where[\'published\'] = 1;\n}\nif (empty($showDeleted)) {\n	$where[\'deleted\'] = 0;\n}\n\n// Filter by user\nif (!empty($user)) {\n	$user = array_map(\'trim\', explode(\',\', $user));\n	$user_id = $user_username = array();\n	foreach ($user as $v) {\n		if (is_numeric($v)) {\n			$user_id[] = $v;\n		}\n		else {\n			$user_username[] = $v;\n		}\n	}\n	if (!empty($user_id) && !empty($user_username)) {\n		$where[] = \'(`User`.`id` IN (\' . implode(\',\', $user_id) . \') OR `User`.`username` IN (\\\'\' . implode(\'\\\',\\\'\', $user_username) . \'\\\'))\';\n	}\n	elseif (!empty($user_id)) {\n		$where[\'User.id:IN\'] = $user_id;\n	}\n	elseif (!empty($user_username)) {\n		$where[\'User.username:IN\'] = $user_username;\n	}\n}\n// Filter by threads\nif (!empty($threads)) {\n	$where[\'thread:IN\'] = $threads;\n}\n// Filter by comments\nif (!empty($comments)) {\n	$comments = array_map(\'trim\', explode(\',\', $comments));\n	$comments_in = $comments_out = array();\n	foreach ($comments as $v) {\n		if (!is_numeric($v)) {\n			continue;\n		}\n		if ($v[0] == \'-\') {\n			$comments_out[] = abs($v);\n		}\n		else {\n			$comments_in[] = abs($v);\n		}\n	}\n	if (!empty($comments_in)) {\n		$where[\'id:IN\'] = $comments_in;\n	}\n	if (!empty($comments_out)) {\n		$where[\'id:NOT IN\'] = $comments_out;\n	}\n}\n\n// Joining tables\n$innerJoin = array(\n	\'Thread\' => array(\n		\'class\' => \'TicketThread\',\n		\'on\' => \'`Thread`.`id` = `TicketComment`.`thread`\'\n	)\n);\n$leftJoin = array(\n	\'User\' => array(\'class\' => \'modUser\', \'on\' => \'`User`.`id` = `TicketComment`.`createdby`\'),\n	\'Profile\' => array(\'class\' => \'modUserProfile\', \'on\' => \'`Profile`.`internalKey` = `TicketComment`.`createdby`\'),\n	\'Ticket\' => array(\'class\' => \'Ticket\', \'on\' => \'`Ticket`.`id` = `Thread`.`resource`\'),\n	\'Section\' => array(\'class\' => \'TicketsSection\', \'on\' => \'`Section`.`id` = `Ticket`.`parent`\'),\n);\nif ($Tickets->authenticated) {\n	$leftJoin[\'Vote\'] = array(\n		\'class\' => \'TicketVote\',\n		\'on\' => \'`Vote`.`id` = `TicketComment`.`id` AND `Vote`.`class` = \"TicketComment\" AND `Vote`.`createdby` = \' . $modx->user->id\n	);\n	$leftJoin[\'Star\'] = array(\n		\'class\' => \'TicketStar\',\n		\'on\' => \'`Star`.`id` = `TicketComment`.`id` AND `Star`.`class` = \"TicketComment\" AND `Star`.`createdby` = \' . $modx->user->id\n	);\n}\n// Fields to select\n$select = array(\n	\'TicketComment\' => $modx->getSelectColumns(\'TicketComment\', \'TicketComment\', \'\', array(\'raw\'), true) . \', `rating` as `rating_total`\',\n	\'Thread\' => \'`Thread`.`resource`\',\n	\'User\' => \'`User`.`username`\',\n	\'Profile\' => $modx->getSelectColumns(\'modUserProfile\', \'Profile\', \'\', array(\'id\', \'email\'), true) . \',`Profile`.`email` as `user_email`\',\n	\'Ticket\' => !empty($includeContent)\n		? $modx->getSelectColumns(\'Ticket\', \'Ticket\', \'ticket.\')\n		: $modx->getSelectColumns(\'Ticket\', \'Ticket\', \'ticket.\', array(\'content\'), true),\n	\'Section\' => !empty($includeContent)\n		? $modx->getSelectColumns(\'TicketsSection\', \'Section\', \'section.\')\n		: $modx->getSelectColumns(\'TicketsSection\', \'Section\', \'section.\', array(\'content\'), true),\n);\nif ($Tickets->authenticated) {\n	$select[\'Vote\'] = \'`Vote`.`value` as `vote`\';\n	$select[\'Star\'] = \'COUNT(`Star`.`id`) as `star`\';\n}\n\n// Add custom parameters\nforeach (array(\'where\', \'select\', \'leftJoin\', \'innerJoin\') as $v) {\n	if (!empty($scriptProperties[$v])) {\n		$tmp = $modx->fromJSON($scriptProperties[$v]);\n		if (is_array($tmp)) {\n			$$v = array_merge($$v, $tmp);\n		}\n	}\n	unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n$default = array(\n	\'class\' => $class,\n	\'where\' => $modx->toJSON($where),\n	\'innerJoin\' => $modx->toJSON($innerJoin),\n	\'leftJoin\' => $modx->toJSON($leftJoin),\n	\'select\' => $modx->toJSON($select),\n	\'sortby\' => $class . \'.createdon\',\n	\'sortdir\' => \'DESC\',\n	\'groupby\' => $class . \'.id\',\n	\'fastMode\' => true,\n	\'return\' => \'data\',\n	\'nestedChunkPrefix\' => \'tickets_\',\n);\n\n// Merge all properties and run!\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$pdoFetch->addTime(\'Query parameters prepared.\');\n$rows = $pdoFetch->run();\n\n$output = array();\nif (!empty($rows)) {\n	foreach ($rows as $row) {\n		$row[\'comments\'] = $modx->getCount(\'TicketComment\', array(\'published\' => 1, \'thread\' => $row[\'thread\']));;\n		$output[] = $Tickets->templateNode($row, $tpl);\n	}\n}\n$pdoFetch->addTime(\'Returning processed chunks\');\n$output = implode($outputSeparator, $output);\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n	$log .= \'<pre class=\"getCommentsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n// Return output\nif (!empty($toSeparatePlaceholders)) {\n	$output[\'log\'] = $log;\n	$modx->setPlaceholders($output, $toSeparatePlaceholders);\n}\nelse {\n	$output .= $log;\n\n	if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n		$output = $pdoFetch->getChunk($tplWrapper, array(\'output\' => $output), $pdoFetch->config[\'fastMode\']);\n	}\n\n	if (!empty($toPlaceholder)) {\n		$modx->setPlaceholder($toPlaceholder, $output);\n	}\n	else {\n		return $output;\n	}\n}', 0, 'a:15:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:16:\"tickets_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:28:\"tpl.Tickets.comment.list.row\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplCommentDeleted\";a:7:{s:4:\"name\";s:17:\"tplCommentDeleted\";s:4:\"desc\";s:30:\"tickets_prop_tplCommentDeleted\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:31:\"tpl.Tickets.comment.one.deleted\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:18:\"tickets_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"threads\";a:7:{s:4:\"name\";s:7:\"threads\";s:4:\"desc\";s:20:\"tickets_prop_threads\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:20:\"tickets_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:22:\"tickets_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:19:\"tickets_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:20:\"tickets_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:27:\"tickets_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:26:\"tickets_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:18:\"tickets_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:28:\"tickets_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:20:\"tickets_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:28:\"tickets_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:24:\"tickets_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/tickets/elements/snippets/snippet.get_comments.php'),
(8, 1, 0, 'getStars', '', 0, 9, 0, '/** @var array $scriptProperties */\nif (empty($class)) {\n	$class = \'Ticket\';\n}\n/** @var integer $user */\nif (empty($user)) {\n	$user = $modx->user->get(\'id\');\n}\nunset($scriptProperties[\'user\']);\n\n$ids = array();\n$q = $modx->newQuery(\'TicketStar\', array(\'class\' => $class, \'createdby\' => $user));\n$q->select(\'id\');\n$tstart = microtime(true);\nif ($q->prepare() && $q->stmt->execute()) {\n	$modx->queryTime = microtime(true) - $tstart;\n	$modx->executedQueries++;\n\n	$ids = $q->stmt->fetchAll(PDO::FETCH_COLUMN);\n}\n\nif (empty($ids)) {\n	return false;\n}\n\n$where = array($class . \'.id:IN\' => $ids);\nif (!empty($scriptProperties[\'where\'])) {\n	$tmp = $modx->fromJSON($scriptProperties[\'where\']);\n	if (is_array($tmp)) {\n		$where = array_merge($where, $tmp);\n	}\n}\n$scriptProperties[\'where\'] = $modx->toJSON($where);\nif (empty($parents)) {\n	$scriptProperties[\'parents\'] = 0;\n}\nif (empty($tpl)) {\n	unset($scriptProperties[\'tpl\']);\n}\n\nreturn $class == \'Ticket\'\n	? $modx->runSnippet(\'getTickets\', $scriptProperties)\n	: $modx->runSnippet(\'getComments\', $scriptProperties);', 0, 'a:2:{s:5:\"class\";a:7:{s:4:\"name\";s:5:\"class\";s:4:\"desc\";s:18:\"tickets_prop_class\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:6:\"Ticket\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:16:\"tickets_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:18:\"tickets:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/tickets/elements/snippets/snippet.get_stars.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(9, 1, 0, 'pdoResources', '', 0, 10, 0, '/** @var array $scriptProperties */\nif (isset($parents) && $parents === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n}\nif (!empty($returnIds)) {\n    $scriptProperties[\'return\'] = \'ids\';\n}\n\n// Adding extra parameters into special place so we can put them in a results\n/** @var modSnippet $snippet */\n$additionalPlaceholders = $properties = array();\nif (isset($this) && $this instanceof modSnippet) {\n    $properties = $this->get(\'properties\');\n}\nelseif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoResources\'))) {\n    $properties = $snippet->get(\'properties\');\n}\nif (!empty($properties)) {\n    foreach ($scriptProperties as $k => $v) {\n        if (!isset($properties[$k])) {\n            $additionalPlaceholders[$k] = $v;\n        }\n    }\n}\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\n\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n$output = $pdoFetch->run();\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoResourcesLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n// Return output\nif (!empty($returnIds)) {\n    $modx->setPlaceholder(\'pdoResources.log\', $log);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n} elseif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array_merge($additionalPlaceholders, array(\'output\' => $output)),\n            $pdoFetch->config[\'fastMode\']);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:47:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:11:\"publishedon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tvFilters\";a:7:{s:4:\"name\";s:9:\"tvFilters\";s:4:\"desc\";s:23:\"pdotools_prop_tvFilters\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:21:\"tvFiltersAndDelimiter\";a:7:{s:4:\"name\";s:21:\"tvFiltersAndDelimiter\";s:4:\"desc\";s:35:\"pdotools_prop_tvFiltersAndDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\",\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:20:\"tvFiltersOrDelimiter\";a:7:{s:4:\"name\";s:20:\"tvFiltersOrDelimiter\";s:4:\"desc\";s:34:\"pdotools_prop_tvFiltersOrDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:2:\"||\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"loadModels\";a:7:{s:4:\"name\";s:10:\"loadModels\";s:4:\"desc\";s:24:\"pdotools_prop_loadModels\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoresources.php'),
(10, 1, 0, 'pdoUsers', '', 0, 10, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n$class = \'modUser\';\n$profile = \'modUserProfile\';\n$member = \'modUserGroupMember\';\n\n// Start building \"Where\" expression\n$where = array();\nif (empty($showInactive)) {\n    $where[$class . \'.active\'] = 1;\n}\nif (empty($showBlocked)) {\n    $where[$profile . \'.blocked\'] = 0;\n}\n\n// Add users profiles and groups\n$innerJoin = array(\n    $profile => array(\'alias\' => $profile, \'on\' => \"$class.id = $profile.internalKey\"),\n);\n\n// Filter by users, groups and roles\n$tmp = array(\n    \'users\' => array(\n        \'class\' => $class,\n        \'name\' => \'username\',\n        \'join\' => $class . \'.id\',\n    ),\n    \'groups\' => array(\n        \'class\' => \'modUserGroup\',\n        \'name\' => \'name\',\n        \'join\' => $member . \'.user_group\',\n    ),\n    \'roles\' => array(\n        \'class\' => \'modUserGroupRole\',\n        \'name\' => \'name\',\n        \'join\' => $member . \'.role\',\n    ),\n);\nforeach ($tmp as $k => $p) {\n    if (!empty($$k)) {\n        $$k = array_map(\'trim\', explode(\',\', $$k));\n        ${$k . \'_in\'} = ${$k . \'_out\'} = $fetch_in = $fetch_out = array();\n        foreach ($$k as $v) {\n            if (is_numeric($v)) {\n                if ($v[0] == \'-\') {\n                    ${$k . \'_out\'}[] = abs($v);\n                } else {\n                    ${$k . \'_in\'}[] = abs($v);\n                }\n            } else {\n                if ($v[0] == \'-\') {\n                    $fetch_out[] = $v;\n                } else {\n                    $fetch_in[] = $v;\n                }\n            }\n        }\n\n        if (!empty($fetch_in) || !empty($fetch_out)) {\n            $q = $modx->newQuery($p[\'class\'], array($p[\'name\'] . \':IN\' => array_merge($fetch_in, $fetch_out)));\n            $q->select(\'id,\' . $p[\'name\']);\n            $tstart = microtime(true);\n            if ($q->prepare() && $q->stmt->execute()) {\n                $modx->queryTime += microtime(true) - $tstart;\n                $modx->executedQueries++;\n                while ($row = $q->stmt->fetch(PDO::FETCH_ASSOC)) {\n                    if (in_array($row[$p[\'name\']], $fetch_in)) {\n                        ${$k . \'_in\'}[] = $row[\'id\'];\n                    } else {\n                        ${$k . \'_out\'}[] = $row[\'id\'];\n                    }\n                }\n            }\n        }\n\n        if (!empty(${$k . \'_in\'})) {\n            $where[$p[\'join\'] . \':IN\'] = ${$k . \'_in\'};\n        }\n        if (!empty(${$k . \'_out\'})) {\n            $where[$p[\'join\'] . \':NOT IN\'] = ${$k . \'_out\'};\n        }\n    }\n}\n\nif (!empty($groups_in) || !empty($groups_out) || !empty($roles_in) || !empty($roles_out)) {\n    $innerJoin[$member] = array(\'alias\' => $member, \'on\' => \"$class.id = $member.member\");\n}\n\n// Fields to select\n$select = array(\n    $profile => implode(\',\', array_keys($modx->getFieldMeta($profile))),\n    $class => implode(\',\', array_keys($modx->getFieldMeta($class))),\n);\n\n// Add custom parameters\nforeach (array(\'where\', \'innerJoin\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n$default = array(\n    \'class\' => $class,\n    \'innerJoin\' => json_encode($innerJoin),\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'groupby\' => $class . \'.id\',\n    \'sortby\' => $class . \'.id\',\n    \'sortdir\' => \'ASC\',\n    \'fastMode\' => false,\n    \'return\' => !empty($returnIds) ? \'ids\' : \'chunks\',\n    \'disableConditions\' => true,\n);\n\nif (!empty($users_in) && (empty($scriptProperties[\'sortby\']) || $scriptProperties[\'sortby\'] == $class . \'.id\')) {\n    $scriptProperties[\'sortby\'] = \"find_in_set(`$class`.`id`,\'\" . implode(\',\', $users_in) . \"\')\";\n    $scriptProperties[\'sortdir\'] = \'\';\n}\n\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$output = $pdoFetch->run();\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoUsersLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n// Return output\nif (!empty($returnIds)) {\n    $modx->setPlaceholder(\'pdoUsers.log\', $log);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n} elseif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array(\'output\' => $output), $pdoFetch->config[\'fastMode\']);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:30:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"modUser.id\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"groups\";a:7:{s:4:\"name\";s:6:\"groups\";s:4:\"desc\";s:20:\"pdotools_prop_groups\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"roles\";a:7:{s:4:\"name\";s:5:\"roles\";s:4:\"desc\";s:19:\"pdotools_prop_roles\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"users\";a:7:{s:4:\"name\";s:5:\"users\";s:4:\"desc\";s:19:\"pdotools_prop_users\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"showInactive\";a:7:{s:4:\"name\";s:12:\"showInactive\";s:4:\"desc\";s:26:\"pdotools_prop_showInactive\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showBlocked\";a:7:{s:4:\"name\";s:11:\"showBlocked\";s:4:\"desc\";s:25:\"pdotools_prop_showBlocked\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdousers.php'),
(11, 1, 0, 'pdoCrumbs', '', 0, 10, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (!isset($from) || $from == \'\') {\n    $from = 0;\n}\nif (empty($to)) {\n    $to = $modx->resource->id;\n}\nif (empty($direction)) {\n    $direction = \'ltr\';\n}\nif ($outputSeparator == \'&nbsp;&rarr;&nbsp;\' && $direction == \'rtl\') {\n    $outputSeparator = \'&nbsp;&larr;&nbsp;\';\n}\nif ($limit == \'\') {\n    $limit = 10;\n}\n// For compatibility with BreadCrumb\nif (!empty($maxCrumbs)) {\n    $limit = $maxCrumbs;\n}\nif (!empty($containerTpl)) {\n    $tplWrapper = $containerTpl;\n}\nif (!empty($currentCrumbTpl)) {\n    $tplCurrent = $currentCrumbTpl;\n}\nif (!empty($linkCrumbTpl)) {\n    $scriptProperties[\'tpl\'] = $linkCrumbTpl;\n}\nif (!empty($maxCrumbTpl)) {\n    $tplMax = $maxCrumbTpl;\n}\nif (isset($showBreadCrumbsAtHome)) {\n    $showAtHome = $showBreadCrumbsAtHome;\n}\nif (isset($showHomeCrumb)) {\n    $showHome = $showHomeCrumb;\n}\nif (isset($showCurrentCrumb)) {\n    $showCurrent = $showCurrentCrumb;\n}\n// --\n$fastMode = !empty($fastMode);\n$siteStart = $modx->getOption(\'siteStart\', $scriptProperties, $modx->getOption(\'site_start\'));\n\nif (empty($showAtHome) && $modx->resource->id == $siteStart) {\n    return \'\';\n}\n\n$class = $modx->getOption(\'class\', $scriptProperties, \'modResource\');\n// Start building \"Where\" expression\n$where = array();\nif (empty($showUnpublished) && empty($showUnPub)) {\n    $where[\'published\'] = 1;\n}\nif (empty($showHidden)) {\n    $where[\'hidemenu\'] = 0;\n}\nif (empty($showDeleted)) {\n    $where[\'deleted\'] = 0;\n}\nif (!empty($hideContainers) && empty($showContainer)) {\n    $where[\'isfolder\'] = 0;\n}\n\n$resource = ($to == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject($class, $to);\n\nif (!$resource) {\n    $message = \'Could not build breadcrumbs to resource \"\' . $to . \'\"\';\n\n    return \'\';\n}\n\n$parents = $modx->getParentIds($resource->id, $limit, array(\'context\' => $resource->get(\'context_key\')));\nif (!empty($showHome)) {\n    $parents[] = $siteStart;\n}\n\n$ids = array($resource->id);\nforeach ($parents as $parent) {\n    if (!empty($parent)) {\n        $ids[] = $parent;\n    }\n    if (!empty($from) && $parent == $from) {\n        break;\n    }\n}\n$where[\'id:IN\'] = $ids;\n\nif (!empty($exclude)) {\n    $where[\'id:NOT IN\'] = array_map(\'trim\', explode(\',\', $exclude));\n}\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\n$select = array($class => implode(\',\', $resourceColumns));\n\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'groupby\' => $class . \'.id\',\n    \'sortby\' => \"find_in_set(`$class`.`id`,\'\" . implode(\',\', $ids) . \"\')\",\n    \'sortdir\' => \'\',\n    \'return\' => \'data\',\n    \'totalVar\' => \'pdocrumbs.total\',\n    \'disableConditions\' => true,\n);\n\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$rows = $pdoFetch->run();\n\n$output = array();\nif (!empty($rows) && is_array($rows)) {\n    if (strtolower($direction) == \'ltr\') {\n        $rows = array_reverse($rows);\n    }\n\n    foreach ($rows as $row) {\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n            $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n                ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n                : $row[\'content\'];\n        } else {\n            $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n        }\n\n        $row = array_merge(\n            $scriptProperties,\n            $row,\n            array(\'idx\' => $pdoFetch->idx++)\n        );\n        if (empty($row[\'menutitle\'])) {\n            $row[\'menutitle\'] = $row[\'pagetitle\'];\n        }\n\n        if ($row[\'id\'] == $resource->id && empty($showCurrent)) {\n            continue;\n        } elseif ($row[\'id\'] == $resource->id && !empty($tplCurrent)) {\n            $tpl = $tplCurrent;\n        } elseif ($row[\'id\'] == $siteStart && !empty($tplHome)) {\n            $tpl = $tplHome;\n        } else {\n            $tpl = $pdoFetch->defineChunk($row);\n        }\n        $output[] = empty($tpl)\n            ? \'<pre>\' . $pdoFetch->getChunk(\'\', $row) . \'</pre>\'\n            : $pdoFetch->getChunk($tpl, $row, $fastMode);\n    }\n}\n$pdoFetch->addTime(\'Chunks processed\');\n\nif (count($output) == 1 && !empty($hideSingle)) {\n    $pdoFetch->addTime(\'The only result was hidden, because the parameter \"hideSingle\" activated\');\n    $output = array();\n}\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoCrumbsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output = implode($outputSeparator, $output);\n    if ($pdoFetch->idx >= $limit && !empty($tplMax) && !empty($output)) {\n        $output = ($direction == \'ltr\')\n            ? $pdoFetch->getChunk($tplMax, array(), $fastMode) . $output\n            : $output . $pdoFetch->getChunk($tplMax, array(), $fastMode);\n    }\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array(\'output\' => $output, \'crumbs\' => $output), $fastMode);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:30:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"from\";a:7:{s:4:\"name\";s:4:\"from\";s:4:\"desc\";s:18:\"pdotools_prop_from\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:2:\"to\";a:7:{s:4:\"name\";s:2:\"to\";s:4:\"desc\";s:16:\"pdotools_prop_to\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:55:\"@INLINE <li><a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplCurrent\";a:7:{s:4:\"name\";s:10:\"tplCurrent\";s:4:\"desc\";s:24:\"pdotools_prop_tplCurrent\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:46:\"@INLINE <li class=\"active\">[[+menutitle]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplMax\";a:7:{s:4:\"name\";s:6:\"tplMax\";s:4:\"desc\";s:20:\"pdotools_prop_tplMax\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:49:\"@INLINE <li class=\"disabled\">&nbsp;...&nbsp;</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHome\";a:7:{s:4:\"name\";s:7:\"tplHome\";s:4:\"desc\";s:21:\"pdotools_prop_tplHome\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:47:\"@INLINE <ul class=\"breadcrumb\">[[+output]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showCurrent\";a:7:{s:4:\"name\";s:11:\"showCurrent\";s:4:\"desc\";s:25:\"pdotools_prop_showCurrent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"showHome\";a:7:{s:4:\"name\";s:8:\"showHome\";s:4:\"desc\";s:22:\"pdotools_prop_showHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showAtHome\";a:7:{s:4:\"name\";s:10:\"showAtHome\";s:4:\"desc\";s:24:\"pdotools_prop_showAtHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"hideSingle\";a:7:{s:4:\"name\";s:10:\"hideSingle\";s:4:\"desc\";s:24:\"pdotools_prop_hideSingle\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"direction\";a:7:{s:4:\"name\";s:9:\"direction\";s:4:\"desc\";s:23:\"pdotools_prop_direction\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"ltr\";s:4:\"text\";s:19:\"Left To Right (ltr)\";}i:1;a:2:{s:5:\"value\";s:3:\"rtl\";s:4:\"text\";s:19:\"Right To Left (rtl)\";}}s:5:\"value\";s:3:\"ltr\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdocrumbs.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(12, 1, 0, 'pdoField', '', 0, 10, 0, '/** @var array $scriptProperties */\nif (!empty($input)) {\n    $id = $input;\n}\nif (!isset($default)) {\n    $default = \'\';\n}\nif (!isset($output)) {\n    $output = \'\';\n}\n$class = $modx->getOption(\'class\', $scriptProperties, \'modResource\', true);\n$isResource = $class == \'modResource\' || in_array($class, $modx->getDescendants(\'modResource\'));\n\nif (empty($field)) {\n    $field = \'pagetitle\';\n}\n$top = isset($top) ? intval($top) : 0;\n$topLevel = isset($topLevel) ? intval($topLevel) : 0;\nif (!empty($options)) {\n    $options = trim($options);\n    if ($options[0] == \'{\') {\n        $tmp = json_decode($options, true);\n        if (is_array($tmp)) {\n            extract($tmp);\n            $scriptProperties = array_merge($scriptProperties, $tmp);\n        }\n    } else {\n        $field = $options;\n    }\n}\nif (empty($id)) {\n    if (!empty($modx->resource)) {\n        $id = $modx->resource->id;\n    } else {\n        return \'You must specify an id of \' . $class;\n    }\n}\nif (!isset($context)) {\n    $context = \'\';\n}\n\n// Gets the parent from root of context, if specified\nif ($isResource && $id && ($top || $topLevel)) {\n    // Select needed context for parents functionality\n    if (empty($context)) {\n        $q = $modx->newQuery($class, $id);\n        $q->select(\'context_key\');\n        $tstart = microtime(true);\n        if ($q->prepare() && $q->stmt->execute()) {\n            $modx->queryTime += microtime(true) - $tstart;\n            $modx->executedQueries++;\n            $context = $q->stmt->fetch(PDO::FETCH_COLUMN);\n        }\n    }\n    // Original pdoField logic\n    if (empty($ultimate)) {\n        if ($topLevel) {\n            $pids = $modx->getChildIds(0, $topLevel, array(\'context\' => $context));\n            $pid = $id;\n            while (true) {\n                $tmp = $modx->getParentIds($pid, 1, array(\'context\' => $context));\n                if (!$pid = current($tmp)) {\n                    break;\n                } elseif (in_array($pid, $pids)) {\n                    $id = $pid;\n                    break;\n                }\n            }\n        } elseif ($top) {\n            $pid = $id;\n            for ($i = 1; $i <= $top; $i++) {\n                $tmp = $modx->getParentIds($pid, 1, array(\'context\' => $context));\n                if (!$pid = current($tmp)) {\n                    break;\n                }\n                $id = $pid;\n            }\n        }\n    }\n    // UltimateParent logic\n    // https://github.com/splittingred/UltimateParent/blob/develop/core/components/ultimateparent/snippet.ultimateparent.php\n    elseif ($id != $top) {\n        $pid = $id;\n        $pids = $modx->getParentIds($id, 10, array(\'context\' => $context));\n        if (!$topLevel || count($pids) >= $topLevel) {\n            while ($parentIds = $modx->getParentIds($id, 1, array(\'context\' => $context))) {\n                $pid = array_pop($parentIds);\n                if ($pid == $top) {\n                    break;\n                }\n                $id = $pid;\n                $parentIds = $modx->getParentIds($id, 10, array(\'context\' => $context));\n                if ($topLevel && count($parentIds) < $topLevel) {\n                    break;\n                }\n            }\n        }\n    }\n}\n\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n$where = array($class . \'.id\' => $id);\n// Add custom parameters\nforeach (array(\'where\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\n$field = strtolower($field);\nif (in_array($field, $resourceColumns)) {\n    $scriptProperties[\'select\'] = array($class => $field);\n    $scriptProperties[\'includeTVs\'] = \'\';\n} elseif ($isResource) {\n    $scriptProperties[\'select\'] = array($class => \'id\');\n    $scriptProperties[\'includeTVs\'] = $field;\n}\n// Additional default field\nif (!empty($default)) {\n    $default = strtolower($default);\n    if (in_array($default, $resourceColumns)) {\n        $scriptProperties[\'select\'][$class] .= \',\' . $default;\n    } elseif ($isResource) {\n        $scriptProperties[\'includeTVs\'] = empty($scriptProperties[\'includeTVs\'])\n            ? $default\n            : $scriptProperties[\'includeTVs\'] . \',\' . $default;\n    }\n}\n\n$scriptProperties[\'disableConditions\'] = true;\nif ($row = $pdoFetch->getObject($class, $where, $scriptProperties)) {\n    foreach ($row as $k => $v) {\n        if (strtolower($k) == $field && $v != \'\') {\n            $output = $v;\n            break;\n        }\n    }\n\n    if (empty($output) && !empty($default)) {\n        foreach ($row as $k => $v) {\n            if (strtolower($k) == $default && $v != \'\') {\n                $output = $v;\n                break;\n            }\n        }\n    }\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:12:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"field\";a:7:{s:4:\"name\";s:5:\"field\";s:4:\"desc\";s:19:\"pdotools_prop_field\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pagetitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:27:\"pdotools_prop_field_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"top\";a:7:{s:4:\"name\";s:3:\"top\";s:4:\"desc\";s:17:\"pdotools_prop_top\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"topLevel\";a:7:{s:4:\"name\";s:8:\"topLevel\";s:4:\"desc\";s:22:\"pdotools_prop_topLevel\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"default\";a:7:{s:4:\"name\";s:7:\"default\";s:4:\"desc\";s:27:\"pdotools_prop_field_default\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"output\";a:7:{s:4:\"name\";s:6:\"output\";s:4:\"desc\";s:26:\"pdotools_prop_field_output\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ultimate\";a:7:{s:4:\"name\";s:8:\"ultimate\";s:4:\"desc\";s:22:\"pdotools_prop_ultimate\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdofield.php'),
(13, 1, 0, 'pdoSitemap', '', 0, 10, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n// Default variables\nif (empty($tpl)) {\n    $tpl = \"@INLINE \\n<url>\\n\\t<loc>[[+url]]</loc>\\n\\t<lastmod>[[+date]]</lastmod>\\n\\t<changefreq>[[+update]]</changefreq>\\n\\t<priority>[[+priority]]</priority>\\n</url>\";\n}\nif (empty($tplWrapper)) {\n    $tplWrapper = \"@INLINE <?xml version=\\\"1.0\\\" encoding=\\\"[[++modx_charset]]\\\"?>\\n<urlset xmlns=\\\"[[+schema]]\\\">\\n[[+output]]\\n</urlset>\";\n}\nif (empty($sitemapSchema)) {\n    $sitemapSchema = \'http://www.sitemaps.org/schemas/sitemap/0.9\';\n}\nif (empty($outputSeparator)) {\n    $outputSeparator = \"\\n\";\n}\nif (empty($cacheKey)) {\n    $scriptProperties[\'cacheKey\'] = \'sitemap/\' . substr(md5(json_encode($scriptProperties)), 0, 6);\n}\n\n// Convert parameters from GoogleSiteMap if exists\nif (!empty($itemTpl)) {\n    $tpl = $itemTpl;\n}\nif (!empty($containerTpl)) {\n    $tplWrapper = $containerTpl;\n}\nif (!empty($allowedtemplates)) {\n    $scriptProperties[\'templates\'] = $allowedtemplates;\n}\nif (!empty($maxDepth)) {\n    $scriptProperties[\'depth\'] = $maxDepth;\n}\nif (isset($hideDeleted)) {\n    $scriptProperties[\'showDeleted\'] = !$hideDeleted;\n}\nif (isset($published)) {\n    $scriptProperties[\'showUnpublished\'] = !$published;\n}\nif (isset($searchable)) {\n    $scriptProperties[\'showUnsearchable\'] = !$searchable;\n}\nif (!empty($googleSchema)) {\n    $sitemapSchema = $googleSchema;\n}\nif (!empty($excludeResources)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeResources));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = \'-\' . $v;\n        }\n    }\n}\nif (!empty($excludeChildrenOf)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeChildrenOf));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'parents\'])) {\n            $scriptProperties[\'parents\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'parents\'] = \'-\' . $v;\n        }\n    }\n}\nif (!empty($startId)) {\n    if (!empty($scriptProperties[\'parents\'])) {\n        $scriptProperties[\'parents\'] .= \',\' . $startId;\n    } else {\n        $scriptProperties[\'parents\'] = $startId;\n    }\n}\nif (!empty($sortBy)) {\n    $scriptProperties[\'sortby\'] = $sortBy;\n}\nif (!empty($sortDir)) {\n    $scriptProperties[\'sortdir\'] = $sortDir;\n}\nif (!empty($priorityTV)) {\n    if (!empty($scriptProperties[\'includeTVs\'])) {\n        $scriptProperties[\'includeTVs\'] .= \',\' . $priorityTV;\n    } else {\n        $scriptProperties[\'includeTVs\'] = $priorityTV;\n    }\n}\nif (!empty($itemSeparator)) {\n    $outputSeparator = $itemSeparator;\n}\n//---\n\n\n$class = \'modResource\';\n$where = array();\nif (empty($showHidden)) {\n    $where[] = array(\n        $class . \'.hidemenu\' => 0,\n        \'OR:\' . $class . \'.class_key:IN\' => array(\'Ticket\', \'Article\'),\n    );\n}\nif (empty($context)) {\n    $scriptProperties[\'context\'] = $modx->context->key;\n}\n\n$select = array($class => \'id,editedon,createdon,context_key,class_key,uri\');\nif (!empty($useWeblinkUrl)) {\n    $select[$class] .= \',content\';\n}\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'sortby\' => \"{$class}.parent ASC, {$class}.menuindex\",\n    \'sortdir\' => \'ASC\',\n    \'return\' => \'data\',\n    \'scheme\' => \'full\',\n    \'limit\' => 0,\n);\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n\nif (!empty($cache)) {\n    $data = $pdoFetch->getCache($scriptProperties);\n}\nif (empty($data)) {\n    $now = time();\n    $data = $urls = array();\n    $rows = $pdoFetch->run();\n    foreach ($rows as $row) {\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n            $row[\'url\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n                ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n                : $row[\'content\'];\n        } else {\n            $row[\'url\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n        }\n\n        $time = !empty($row[\'editedon\'])\n            ? $row[\'editedon\']\n            : $row[\'createdon\'];\n        $row[\'date\'] = date(\'c\', $time);\n\n        $datediff = floor(($now - $time) / 86400);\n        if ($datediff <= 1) {\n            $row[\'priority\'] = \'1.0\';\n            $row[\'update\'] = \'daily\';\n        } elseif (($datediff > 1) && ($datediff <= 7)) {\n            $row[\'priority\'] = \'0.75\';\n            $row[\'update\'] = \'weekly\';\n        } elseif (($datediff > 7) && ($datediff <= 30)) {\n            $row[\'priority\'] = \'0.50\';\n            $row[\'update\'] = \'weekly\';\n        } else {\n            $row[\'priority\'] = \'0.25\';\n            $row[\'update\'] = \'monthly\';\n        }\n        if (!empty($priorityTV) && !empty($row[$priorityTV])) {\n            $row[\'priority\'] = $row[$priorityTV];\n        }\n\n        // Fix possible duplicates made by modWebLink\n        if (!empty($urls[$row[\'url\']])) {\n            if ($urls[$row[\'url\']] > $row[\'date\']) {\n                continue;\n            }\n        }\n        $urls[$row[\'url\']] = $row[\'date\'];\n\n        // Add item to output\n        $data[$row[\'url\']] = $pdoFetch->parseChunk($tpl, $row);\n        if (strpos($data[$row[\'url\']], \'[[\') !== false) {\n            $modx->parser->processElementTags(\'\', $data[$row[\'url\']], true, true, \'[[\', \']]\', array(), 10);\n        }\n    }\n    $pdoFetch->addTime(\'Rows processed\');\n    if (!empty($cache)) {\n        $pdoFetch->setCache($data, $scriptProperties);\n    }\n}\n\n$output = implode($outputSeparator, $data);\n$output = $pdoFetch->getChunk($tplWrapper, array(\n    \'schema\' => $sitemapSchema,\n    \'output\' => $output,\n    \'items\' => $output,\n));\n$pdoFetch->addTime(\'Rows wrapped\');\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"pdoSitemapLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($forceXML)) {\n    header(\"Content-Type:text/xml\");\n    @session_write_close();\n    exit($output);\n} else {\n    return $output;\n}', 0, 'a:24:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:145:\"@INLINE <url>\n	<loc>[[+url]]</loc>\n	<lastmod>[[+date]]</lastmod>\n	<changefreq>[[+update]]</changefreq>\n	<priority>[[+priority]]</priority>\n</url>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:110:\"@INLINE <?xml version=\"1.0\" encoding=\"[[++modx_charset]]\"?>\n<urlset xmlns=\"[[+schema]]\">\n[[+output]]\n</urlset>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"sitemapSchema\";a:7:{s:4:\"name\";s:13:\"sitemapSchema\";s:4:\"desc\";s:27:\"pdotools_prop_sitemapSchema\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:43:\"http://www.sitemaps.org/schemas/sitemap/0.9\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"hideUnsearchable\";a:7:{s:4:\"name\";s:16:\"hideUnsearchable\";s:4:\"desc\";s:30:\"pdotools_prop_hideUnsearchable\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"forceXML\";a:7:{s:4:\"name\";s:8:\"forceXML\";s:4:\"desc\";s:22:\"pdotools_prop_forceXML\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"cacheKey\";a:7:{s:4:\"name\";s:8:\"cacheKey\";s:4:\"desc\";s:22:\"pdotools_prop_cacheKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdositemap.php'),
(14, 1, 0, 'pdoNeighbors', '', 0, 10, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (empty($id)) {\n    $id = $modx->resource->id;\n}\nif (empty($limit)) {\n    $limit = 1;\n}\nif (!isset($outputSeparator)) {\n    $outputSeparator = \"\\n\";\n}\n$fastMode = !empty($fastMode);\n\n$class = \'modResource\';\n$resource = ($id == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject($class, $id);\nif (!$resource) {\n    return \'\';\n}\n\n// We need to determine ids of neighbors\n$params = $scriptProperties;\n$params[\'select\'] = \'id\';\n$params[\'limit\'] = 0;\nif (!empty($parents) && is_string($parents)) {\n    $parents = array_map(\'trim\', explode(\',\', $parents));\n    if (!in_array($resource->parent, $parents)) {\n        $parents[] = $resource->parent;\n    }\n    $key = array_search($resource->parent * -1, $parents);\n    if ($key !== false) {\n        unset($parents[$key]);\n    }\n    $params[\'parents\'] = implode(\',\', $parents);\n    $ids = $pdoFetch->getCollection(\'modResource\', array(), $params);\n    unset($scriptProperties[\'parents\']);\n} else {\n    $ids = $pdoFetch->getCollection(\'modResource\', array(\'parent\' => $resource->parent), $params);\n}\n\n$found = false;\n$prev = $next = array();\nforeach ($ids as $v) {\n    if ($v[\'id\'] == $id) {\n        $found = true;\n        continue;\n    } elseif (!$found) {\n        $prev[] = $v[\'id\'];\n    } else {\n        $next[] = $v[\'id\'];\n        if (count($next) >= $limit) {\n            break;\n        }\n    }\n}\n$prev = array_splice($prev, $limit * -1);\nif (!empty($loop)) {\n    if (!count($prev)) {\n        $v = end($ids);\n        $prev[] = $v[\'id\'];\n    } else {\n        if (!count($next)) {\n            $v = reset($ids);\n            $next[] = $v[\'id\'];\n        }\n    }\n}\n$ids = array_merge($prev, $next, array($resource->parent));\n$pdoFetch->addTime(\'Found ids of neighbors: \' . implode(\',\', $ids));\n\n// Query conditions\n$where = array($class . \'.id:IN\' => $ids);\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\nif (empty($includeContent) && empty($useWeblinkUrl)) {\n    $key = array_search(\'content\', $resourceColumns);\n    unset($resourceColumns[$key]);\n}\n$select = array($class => implode(\',\', $resourceColumns));\n\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    //\'groupby\' => $class.\'.id\',\n    \'sortby\' => $class . \'.menuindex\',\n    \'sortdir\' => \'ASC\',\n    \'return\' => \'data\',\n    \'limit\' => 0,\n    \'totalVar\' => \'pdoneighbors.total\',\n);\n\n// Merge all properties and run!\nunset($scriptProperties[\'limit\']);\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n\n$rows = $pdoFetch->run();\n$prev = array_flip($prev);\n$next = array_flip($next);\n\n$output = array(\'prev\' => array(), \'up\' => array(), \'next\' => array());\nforeach ($rows as $row) {\n    if (empty($row[\'menutitle\'])) {\n        $row[\'menutitle\'] = $row[\'pagetitle\'];\n    }\n    if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n        $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n            ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n            : $row[\'content\'];\n    } else {\n        $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n    }\n\n    if (isset($prev[$row[\'id\']])) {\n        $output[\'prev\'][] = !empty($tplPrev)\n            ? $pdoFetch->getChunk($tplPrev, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    } elseif (isset($next[$row[\'id\']])) {\n        $output[\'next\'][] = !empty($tplNext)\n            ? $pdoFetch->getChunk($tplNext, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    } else {\n        $output[\'up\'][] = !empty($tplUp)\n            ? $pdoFetch->getChunk($tplUp, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    }\n}\n$pdoFetch->addTime(\'Chunks processed\');\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoNeighborsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nforeach ($output as &$row) {\n    $row = implode($outputSeparator, $row);\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    if (!empty($rows) || !empty($wrapIfEmpty)) {\n        $output = !empty($tplWrapper)\n            ? $pdoFetch->getChunk($tplWrapper, $output, $fastMode)\n            : $pdoFetch->getChunk(\'\', $output);\n    } else {\n        $output = \'\';\n    }\n    $output .= $log;\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:27:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:29:\"pdotools_prop_neighbors_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPrev\";a:7:{s:4:\"name\";s:7:\"tplPrev\";s:4:\"desc\";s:21:\"pdotools_prop_tplPrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <span class=\"link-prev\"><a href=\"[[+link]]\">&larr; [[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"tplUp\";a:7:{s:4:\"name\";s:5:\"tplUp\";s:4:\"desc\";s:19:\"pdotools_prop_tplUp\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:82:\"@INLINE <span class=\"link-up\">&uarr; <a href=\"[[+link]]\">[[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplNext\";a:7:{s:4:\"name\";s:7:\"tplNext\";s:4:\"desc\";s:21:\"pdotools_prop_tplNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <span class=\"link-next\"><a href=\"[[+link]]\">[[+menutitle]] &rarr;</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:34:\"pdotools_prop_neighbors_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:62:\"@INLINE <div class=\"neighbors\">[[+prev]][[+up]][[+next]]</div>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"loop\";a:7:{s:4:\"name\";s:4:\"loop\";s:4:\"desc\";s:18:\"pdotools_prop_loop\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoneighbors.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(15, 1, 0, 'pdoPage', '', 0, 10, 0, '/** @var array $scriptProperties */\n// Default variables\nif (empty($pageVarKey)) {\n    $pageVarKey = \'page\';\n}\nif (empty($pageNavVar)) {\n    $pageNavVar = \'page.nav\';\n}\nif (empty($pageCountVar)) {\n    $pageCountVar = \'pageCount\';\n}\nif (empty($totalVar)) {\n    $totalVar = \'total\';\n}\nif (empty($page)) {\n    $page = 1;\n}\nif (empty($pageLimit)) {\n    $pageLimit = 5;\n} else {\n    $pageLimit = (integer)$pageLimit;\n}\nif (!isset($plPrefix)) {\n    $plPrefix = \'\';\n}\nif (!empty($scriptProperties[\'ajaxMode\'])) {\n    $scriptProperties[\'ajax\'] = 1;\n}\n\n// Convert parameters from getPage if exists\nif (!empty($namespace)) {\n    $plPrefix = $namespace;\n}\nif (!empty($pageNavTpl)) {\n    $scriptProperties[\'tplPage\'] = $pageNavTpl;\n}\nif (!empty($pageNavOuterTpl)) {\n    $scriptProperties[\'tplPageWrapper\'] = $pageNavOuterTpl;\n}\nif (!empty($pageActiveTpl)) {\n    $scriptProperties[\'tplPageActive\'] = $pageActiveTpl;\n}\nif (!empty($pageFirstTpl)) {\n    $scriptProperties[\'tplPageFirst\'] = $pageFirstTpl;\n}\nif (!empty($pagePrevTpl)) {\n    $scriptProperties[\'tplPagePrev\'] = $pagePrevTpl;\n}\nif (!empty($pageNextTpl)) {\n    $scriptProperties[\'tplPageNext\'] = $pageNextTpl;\n}\nif (!empty($pageLastTpl)) {\n    $scriptProperties[\'tplPageLast\'] = $pageLastTpl;\n}\nif (!empty($pageSkipTpl)) {\n    $scriptProperties[\'tplPageSkip\'] = $pageSkipTpl;\n}\nif (!empty($pageNavScheme)) {\n    $scriptProperties[\'scheme\'] = $pageNavScheme;\n}\nif (!empty($cache_expires)) {\n    $scriptProperties[\'cacheTime\'] = $cache_expires;\n}\n//---\n$strictMode = !empty($strictMode);\n\n$isAjax = !empty($scriptProperties[\'ajax\']) && !empty($_SERVER[\'HTTP_X_REQUESTED_WITH\']) && $_SERVER[\'HTTP_X_REQUESTED_WITH\'] == \'XMLHttpRequest\';\nif ($isAjax && !isset($_REQUEST[$pageVarKey])) {\n    return;\n}\n\n/** @var pdoPage $pdoPage */\n$fqn = $modx->getOption(\'pdoPage.class\', null, \'pdotools.pdopage\', true);\n$path = $modx->getOption(\'pdopage_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoPage = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoPage->pdoTools->addTime(\'pdoTools loaded\');\n\n// Script and styles\nif (!$isAjax && !empty($scriptProperties[\'ajaxMode\'])) {\n    $pdoPage->loadJsCss();\n}\n// Removing of default scripts and styles so they do not overwrote nested snippet parameters\nif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoPage\'))) {\n    $properties = $snippet->get(\'properties\');\n    if ($scriptProperties[\'frontend_js\'] == $properties[\'frontend_js\'][\'value\']) {\n        unset($scriptProperties[\'frontend_js\']);\n    }\n    if ($scriptProperties[\'frontend_css\'] == $properties[\'frontend_css\'][\'value\']) {\n        unset($scriptProperties[\'frontend_css\']);\n    }\n}\n\n// Page\nif (isset($_REQUEST[$pageVarKey]) && $strictMode && (!is_numeric($_REQUEST[$pageVarKey]) || ($_REQUEST[$pageVarKey] <= 1 && !$isAjax))) {\n    return $pdoPage->redirectToFirst($isAjax);\n} elseif (!empty($_REQUEST[$pageVarKey])) {\n    $page = (integer)$_REQUEST[$pageVarKey];\n}\n$scriptProperties[\'page\'] = $page;\n$scriptProperties[\'request\'] = $_REQUEST;\n\n// Limit\nif (isset($_REQUEST[\'limit\'])) {\n    if (is_numeric($_REQUEST[\'limit\']) && abs($_REQUEST[\'limit\']) > 0) {\n        $scriptProperties[\'limit\'] = abs($_REQUEST[\'limit\']);\n    } elseif ($strictMode) {\n        unset($_GET[\'limit\']);\n\n        return $pdoPage->redirectToFirst($isAjax);\n    }\n}\nif (!empty($maxLimit) && !empty($scriptProperties[\'limit\']) && $scriptProperties[\'limit\'] > $maxLimit) {\n    $scriptProperties[\'limit\'] = $maxLimit;\n}\n\n// Offset\n$offset = !empty($scriptProperties[\'offset\']) && $scriptProperties[\'offset\'] > 0\n    ? (int)$scriptProperties[\'offset\']\n    : 0;\n$scriptProperties[\'offset\'] = $page > 1\n    ? $scriptProperties[\'limit\'] * ($page - 1) + $offset\n    : $offset;\nif (!empty($scriptProperties[\'offset\']) && empty($scriptProperties[\'limit\'])) {\n    $scriptProperties[\'limit\'] = 10000000;\n}\n\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\n$url = $pdoPage->getBaseUrl();\n$output = $pagination = $total = $pageCount = \'\';\n\n$data = $cache\n    ? $pdoPage->pdoTools->getCache($scriptProperties)\n    : array();\n\nif (empty($data)) {\n    $scriptProperties[\'setTotal\'] = true;\n    $output = $pdoPage->pdoTools->runSnippet($scriptProperties[\'element\'], $scriptProperties);\n    if ($output === false) {\n        return \'\';\n    } elseif (!empty($toPlaceholder)) {\n        $output = $modx->getPlaceholder($toPlaceholder);\n    }\n\n    // Pagination\n    $total = (int)$modx->getPlaceholder($totalVar);\n    $pageCount = !empty($scriptProperties[\'limit\']) && $total > $offset\n        ? ceil(($total - $offset) / $scriptProperties[\'limit\'])\n        : 0;\n\n    // Redirect to start if somebody specified incorrect page\n    if ($page > 1 && $page > $pageCount && $strictMode) {\n        return $pdoPage->redirectToFirst($isAjax);\n    }\n    if (!empty($pageCount) && $pageCount > 1) {\n        $pagination = array(\n            \'first\' => $page > 1 && !empty($tplPageFirst)\n                ? $pdoPage->makePageLink($url, 1, $tplPageFirst)\n                : \'\',\n            \'prev\' => $page > 1 && !empty($tplPagePrev)\n                ? $pdoPage->makePageLink($url, $page - 1, $tplPagePrev)\n                : \'\',\n            \'pages\' => $pageLimit >= 7 && empty($disableModernPagination)\n                ? $pdoPage->buildModernPagination($page, $pageCount, $url)\n                : $pdoPage->buildClassicPagination($page, $pageCount, $url),\n            \'next\' => $page < $pageCount && !empty($tplPageNext)\n                ? $pdoPage->makePageLink($url, $page + 1, $tplPageNext)\n                : \'\',\n            \'last\' => $page < $pageCount && !empty($tplPageLast)\n                ? $pdoPage->makePageLink($url, $pageCount, $tplPageLast)\n                : \'\',\n        );\n\n        if (!empty($pageCount)) {\n            foreach (array(\'first\', \'prev\', \'next\', \'last\') as $v) {\n                $tpl = \'tplPage\' . ucfirst($v) . \'Empty\';\n                if (!empty(${$tpl}) && empty($pagination[$v])) {\n                    $pagination[$v] = $pdoPage->pdoTools->getChunk(${$tpl});\n                }\n            }\n        }\n    } else {\n        $pagination = array(\n            \'first\' => \'\',\n            \'prev\' => \'\',\n            \'pages\' => \'\',\n            \'next\' => \'\',\n            \'last\' => \'\'\n        );\n    }\n\n    $data = array(\n        \'output\' => $output,\n        $pageVarKey => $page,\n        $pageCountVar => $pageCount,\n        $pageNavVar => !empty($tplPageWrapper)\n            ? $pdoPage->pdoTools->getChunk($tplPageWrapper, $pagination)\n            : $pdoPage->pdoTools->parseChunk(\'\', $pagination),\n        $totalVar => $total,\n    );\n    if ($cache) {\n        $pdoPage->pdoTools->setCache($data, $scriptProperties);\n    }\n}\n\nif ($isAjax) {\n    if ($pageNavVar != \'pagination\') {\n        $data[\'pagination\'] = $data[$pageNavVar];\n        unset($data[$pageNavVar]);\n    }\n    if ($pageCountVar != \'pages\') {\n        $data[\'pages\'] = (int)$data[$pageCountVar];\n        unset($data[$pageCountVar]);\n    }\n    if ($pageVarKey != \'page\') {\n        $data[\'page\'] = (int)$data[$pageVarKey];\n        unset($data[$pageVarKey]);\n    }\n    if ($totalVar != \'total\') {\n        $data[\'total\'] = (int)$data[$totalVar];\n        unset($data[$totalVar]);\n    }\n\n    $maxIterations = (integer)$modx->getOption(\'parser_max_iterations\', null, 10);\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], false, false, \'[[\', \']]\', array(), $maxIterations);\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], true, true, \'[[\', \']]\', array(), $maxIterations);\n\n    @session_write_close();\n    exit(json_encode($data));\n} else {\n    if (!empty($setMeta)) {\n        $canurl = $pdoPage->pdoTools->config[\'scheme\'] !== \'full\'\n            ? $modx->getOption(\'url_scheme\') . rtrim($modx->getOption(\'http_host\'), \'/\') . \'/\' . ltrim($url, \'/\')\n            : $url;\n\n        $modx->regClientStartupHTMLBlock(\'<link rel=\"canonical\" href=\"\' . $canurl . \'\"/>\');\n        if ($data[$pageVarKey] > 1) {\n            $modx->regClientStartupHTMLBlock(\n                \'<link rel=\"prev\" href=\"\' . $pdoPage->makePageLink($canurl, $data[$pageVarKey] - 1) . \'\"/>\'\n            );\n        }\n        if ($data[$pageVarKey] < $data[$pageCountVar]) {\n            $modx->regClientStartupHTMLBlock(\n                \'<link rel=\"next\" href=\"\' . $pdoPage->makePageLink($canurl, $data[$pageVarKey] + 1) . \'\"/>\'\n            );\n        }\n    }\n\n    $modx->setPlaceholders($data, $plPrefix);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $data[\'output\']);\n    } else {\n        return $data[\'output\'];\n    }\n}', 0, 'a:41:{s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"maxLimit\";a:7:{s:4:\"name\";s:8:\"maxLimit\";s:4:\"desc\";s:22:\"pdotools_prop_maxLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:100;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"page\";a:7:{s:4:\"name\";s:4:\"page\";s:4:\"desc\";s:18:\"pdotools_prop_page\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"page.total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"pageLimit\";a:7:{s:4:\"name\";s:9:\"pageLimit\";s:4:\"desc\";s:23:\"pdotools_prop_pageLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:5;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"element\";a:7:{s:4:\"name\";s:7:\"element\";s:4:\"desc\";s:21:\"pdotools_prop_element\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:12:\"pdoResources\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageNavVar\";a:7:{s:4:\"name\";s:10:\"pageNavVar\";s:4:\"desc\";s:24:\"pdotools_prop_pageNavVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"page.nav\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"pageCountVar\";a:7:{s:4:\"name\";s:12:\"pageCountVar\";s:4:\"desc\";s:26:\"pdotools_prop_pageCountVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pageCount\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"pageLinkScheme\";a:7:{s:4:\"name\";s:14:\"pageLinkScheme\";s:4:\"desc\";s:28:\"pdotools_prop_pageLinkScheme\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPage\";a:7:{s:4:\"name\";s:7:\"tplPage\";s:4:\"desc\";s:21:\"pdotools_prop_tplPage\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:52:\"@INLINE <li><a href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"tplPageWrapper\";a:7:{s:4:\"name\";s:14:\"tplPageWrapper\";s:4:\"desc\";s:28:\"pdotools_prop_tplPageWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:113:\"@INLINE <div class=\"pagination\"><ul class=\"pagination\">[[+first]][[+prev]][[+pages]][[+next]][[+last]]</ul></div>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"tplPageActive\";a:7:{s:4:\"name\";s:13:\"tplPageActive\";s:4:\"desc\";s:27:\"pdotools_prop_tplPageActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:67:\"@INLINE <li class=\"active\"><a href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplPageFirst\";a:7:{s:4:\"name\";s:12:\"tplPageFirst\";s:4:\"desc\";s:26:\"pdotools_prop_tplPageFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:75:\"@INLINE <li class=\"control\"><a href=\"[[+href]]\">[[%pdopage_first]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageLast\";a:7:{s:4:\"name\";s:11:\"tplPageLast\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:74:\"@INLINE <li class=\"control\"><a href=\"[[+href]]\">[[%pdopage_last]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPagePrev\";a:7:{s:4:\"name\";s:11:\"tplPagePrev\";s:4:\"desc\";s:25:\"pdotools_prop_tplPagePrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:64:\"@INLINE <li class=\"control\"><a href=\"[[+href]]\">&laquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageNext\";a:7:{s:4:\"name\";s:11:\"tplPageNext\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:64:\"@INLINE <li class=\"control\"><a href=\"[[+href]]\">&raquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageSkip\";a:7:{s:4:\"name\";s:11:\"tplPageSkip\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageSkip\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:50:\"@INLINE <li class=\"disabled\"><span>...</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplPageFirstEmpty\";a:7:{s:4:\"name\";s:17:\"tplPageFirstEmpty\";s:4:\"desc\";s:31:\"pdotools_prop_tplPageFirstEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li class=\"disabled\"><span>[[%pdopage_first]]</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageLastEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageLastEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageLastEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:64:\"@INLINE <li class=\"disabled\"><span>[[%pdopage_last]]</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPagePrevEmpty\";a:7:{s:4:\"name\";s:16:\"tplPagePrevEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPagePrevEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:54:\"@INLINE <li class=\"disabled\"><span>&laquo;</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageNextEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageNextEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageNextEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:54:\"@INLINE <li class=\"disabled\"><span>&raquo;</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"ajax\";a:7:{s:4:\"name\";s:4:\"ajax\";s:4:\"desc\";s:18:\"pdotools_prop_ajax\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ajaxMode\";a:7:{s:4:\"name\";s:8:\"ajaxMode\";s:4:\"desc\";s:22:\"pdotools_prop_ajaxMode\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:4:\"text\";s:4:\"None\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Default\";s:5:\"value\";s:7:\"default\";}i:2;a:2:{s:4:\"text\";s:6:\"Scroll\";s:5:\"value\";s:6:\"scroll\";}i:3;a:2:{s:4:\"text\";s:6:\"Button\";s:5:\"value\";s:6:\"button\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"ajaxElemWrapper\";a:7:{s:4:\"name\";s:15:\"ajaxElemWrapper\";s:4:\"desc\";s:29:\"pdotools_prop_ajaxElemWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"#pdopage\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemRows\";a:7:{s:4:\"name\";s:12:\"ajaxElemRows\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemRows\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:14:\"#pdopage .rows\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"ajaxElemPagination\";a:7:{s:4:\"name\";s:18:\"ajaxElemPagination\";s:4:\"desc\";s:32:\"pdotools_prop_ajaxElemPagination\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\"#pdopage .pagination\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemLink\";a:7:{s:4:\"name\";s:12:\"ajaxElemLink\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemLink\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:22:\"#pdopage .pagination a\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemMore\";a:7:{s:4:\"name\";s:12:\"ajaxElemMore\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:18:\"#pdopage .btn-more\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxTplMore\";a:7:{s:4:\"name\";s:11:\"ajaxTplMore\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxTplMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:75:\"@INLINE <button class=\"btn btn-default btn-more\">[[%pdopage_more]]</button>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxHistory\";a:7:{s:4:\"name\";s:11:\"ajaxHistory\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxHistory\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:3:{i:0;a:2:{s:4:\"text\";s:4:\"Auto\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Enabled\";s:5:\"value\";i:1;}i:2;a:2:{s:4:\"text\";s:8:\"Disabled\";s:5:\"value\";i:0;}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"frontend_js\";a:7:{s:4:\"name\";s:11:\"frontend_js\";s:4:\"desc\";s:25:\"pdotools_prop_frontend_js\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:31:\"[[+assetsUrl]]js/pdopage.min.js\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"frontend_css\";a:7:{s:4:\"name\";s:12:\"frontend_css\";s:4:\"desc\";s:26:\"pdotools_prop_frontend_css\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:33:\"[[+assetsUrl]]css/pdopage.min.css\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"setMeta\";a:7:{s:4:\"name\";s:7:\"setMeta\";s:4:\"desc\";s:21:\"pdotools_prop_setMeta\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"strictMode\";a:7:{s:4:\"name\";s:10:\"strictMode\";s:4:\"desc\";s:24:\"pdotools_prop_strictMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdopage.php'),
(16, 1, 0, 'pdoMenu', '', 0, 10, 0, '/** @var array $scriptProperties */\n\n// Convert parameters from Wayfinder if exists\nif (isset($startId)) {\n    $scriptProperties[\'parents\'] = $startId;\n}\nif (!empty($includeDocs)) {\n    $tmp = array_map(\'trim\', explode(\',\', $includeDocs));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = $v;\n        }\n    }\n}\nif (!empty($excludeDocs)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeDocs));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = \'-\' . $v;\n        }\n    }\n}\n\nif (!empty($previewUnpublished) && $modx->hasPermission(\'view_unpublished\')) {\n    $scriptProperties[\'showUnpublished\'] = 1;\n}\n\n$scriptProperties[\'depth\'] = empty($level) ? 100 : abs($level) - 1;\nif (!empty($contexts)) {\n    $scriptProperties[\'context\'] = $contexts;\n}\nif (empty($scriptProperties[\'context\'])) {\n    $scriptProperties[\'context\'] = $modx->resource->context_key;\n}\n\n// Save original parents specified by user\n$specified_parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\n\nif ($scriptProperties[\'parents\'] === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n} elseif ($scriptProperties[\'parents\'] === 0 || $scriptProperties[\'parents\'] === \'0\') {\n    if ($scriptProperties[\'depth\'] !== \'\' && $scriptProperties[\'depth\'] !== 100) {\n        $contexts = array_map(\'trim\', explode(\',\', $scriptProperties[\'context\']));\n        $parents = array();\n        if (!empty($scriptProperties[\'showDeleted\'])) {\n            $pdoFetch = $modx->getService(\'pdoFetch\');\n            foreach ($contexts as $ctx) {\n                $parents = array_merge($parents,\n                    $pdoFetch->getChildIds(\'modResource\', 0, $scriptProperties[\'depth\'], array(\'context\' => $ctx)));\n            }\n        } else {\n            foreach ($contexts as $ctx) {\n                $parents = array_merge($parents,\n                    $modx->getChildIds(0, $scriptProperties[\'depth\'], array(\'context\' => $ctx)));\n            }\n        }\n        $scriptProperties[\'parents\'] = !empty($parents) ? implode(\',\', $parents) : \'+0\';\n        $scriptProperties[\'depth\'] = 0;\n    }\n    $scriptProperties[\'includeParents\'] = 1;\n    $scriptProperties[\'displayStart\'] = 0;\n} else {\n    $parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\n    $parents_in = $parents_out = array();\n    foreach ($parents as $v) {\n        if (!is_numeric($v)) {\n            continue;\n        }\n        if ($v[0] == \'-\') {\n            $parents_out[] = abs($v);\n        } else {\n            $parents_in[] = abs($v);\n        }\n    }\n\n    if (empty($parents_in)) {\n        $scriptProperties[\'includeParents\'] = 1;\n        $scriptProperties[\'displayStart\'] = 0;\n    }\n}\n\nif (!empty($displayStart)) {\n    $scriptProperties[\'includeParents\'] = 1;\n}\nif (!empty($ph)) {\n    $toPlaceholder = $ph;\n}\nif (!empty($sortOrder)) {\n    $scriptProperties[\'sortdir\'] = $sortOrder;\n}\nif (!empty($sortBy)) {\n    $scriptProperties[\'sortby\'] = $sortBy;\n}\nif (!empty($permissions)) {\n    $scriptProperties[\'checkPermissions\'] = $permissions;\n}\nif (!empty($cacheResults)) {\n    $scriptProperties[\'cache\'] = $cacheResults;\n}\nif (!empty($ignoreHidden)) {\n    $scriptProperties[\'showHidden\'] = $ignoreHidden;\n}\n\n$wfTemplates = array(\n    \'outerTpl\' => \'tplOuter\',\n    \'rowTpl\' => \'tpl\',\n    \'parentRowTpl\' => \'tplParentRow\',\n    \'parentRowHereTpl\' => \'tplParentRowHere\',\n    \'hereTpl\' => \'tplHere\',\n    \'innerTpl\' => \'tplInner\',\n    \'innerRowTpl\' => \'tplInnerRow\',\n    \'innerHereTpl\' => \'tplInnerHere\',\n    \'activeParentRowTpl\' => \'tplParentRowActive\',\n    \'categoryFoldersTpl\' => \'tplCategoryFolder\',\n    \'startItemTpl\' => \'tplStart\',\n);\nforeach ($wfTemplates as $k => $v) {\n    if (isset(${$k})) {\n        $scriptProperties[$v] = ${$k};\n    }\n}\n//---\n\n/** @var pdoMenu $pdoMenu */\n$fqn = $modx->getOption(\'pdoMenu.class\', null, \'pdotools.pdomenu\', true);\n$path = $modx->getOption(\'pdomenu_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoMenu = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoMenu->pdoTools->addTime(\'pdoTools loaded\');\n\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\nif (empty($scriptProperties[\'cache_key\'])) {\n    $scriptProperties[\'cache_key\'] = \'pdomenu/\' . sha1(serialize($scriptProperties));\n}\n\n$output = \'\';\n$tree = array();\nif ($cache) {\n    $tree = $pdoMenu->pdoTools->getCache($scriptProperties);\n}\nif (empty($tree)) {\n    $data = $pdoMenu->pdoTools->run();\n    $data = $pdoMenu->pdoTools->buildTree($data, \'id\', \'parent\', $specified_parents);\n    $tree = array();\n    foreach ($data as $k => $v) {\n        if (empty($v[\'id\'])) {\n            if (!in_array($k, $specified_parents) && !$pdoMenu->checkResource($k)) {\n                continue;\n            } else {\n                $tree = array_merge($tree, $v[\'children\']);\n            }\n        } else {\n            $tree[$k] = $v;\n        }\n    }\n    if ($cache) {\n        $pdoMenu->pdoTools->setCache($tree, $scriptProperties);\n    }\n}\nif (!empty($tree)) {\n    $output = $pdoMenu->templateTree($tree);\n}\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"pdoMenuLog\">\' . print_r($pdoMenu->pdoTools->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:51:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"level\";a:7:{s:4:\"name\";s:5:\"level\";s:4:\"desc\";s:19:\"pdotools_prop_level\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"displayStart\";a:7:{s:4:\"name\";s:12:\"displayStart\";s:4:\"desc\";s:26:\"pdotools_prop_displayStart\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"wf.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"previewUnpublished\";a:7:{s:4:\"name\";s:18:\"previewUnpublished\";s:4:\"desc\";s:32:\"pdotools_prop_previewUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"hideSubMenus\";a:7:{s:4:\"name\";s:12:\"hideSubMenus\";s:4:\"desc\";s:26:\"pdotools_prop_hideSubMenus\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"rowIdPrefix\";a:7:{s:4:\"name\";s:11:\"rowIdPrefix\";s:4:\"desc\";s:25:\"pdotools_prop_rowIdPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"firstClass\";a:7:{s:4:\"name\";s:10:\"firstClass\";s:4:\"desc\";s:24:\"pdotools_prop_firstClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"first\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"lastClass\";a:7:{s:4:\"name\";s:9:\"lastClass\";s:4:\"desc\";s:23:\"pdotools_prop_lastClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"last\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"hereClass\";a:7:{s:4:\"name\";s:9:\"hereClass\";s:4:\"desc\";s:23:\"pdotools_prop_hereClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:6:\"active\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"parentClass\";a:7:{s:4:\"name\";s:11:\"parentClass\";s:4:\"desc\";s:25:\"pdotools_prop_parentClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"rowClass\";a:7:{s:4:\"name\";s:8:\"rowClass\";s:4:\"desc\";s:22:\"pdotools_prop_rowClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"outerClass\";a:7:{s:4:\"name\";s:10:\"outerClass\";s:4:\"desc\";s:24:\"pdotools_prop_outerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"innerClass\";a:7:{s:4:\"name\";s:10:\"innerClass\";s:4:\"desc\";s:24:\"pdotools_prop_innerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"levelClass\";a:7:{s:4:\"name\";s:10:\"levelClass\";s:4:\"desc\";s:24:\"pdotools_prop_levelClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"selfClass\";a:7:{s:4:\"name\";s:9:\"selfClass\";s:4:\"desc\";s:23:\"pdotools_prop_selfClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"webLinkClass\";a:7:{s:4:\"name\";s:12:\"webLinkClass\";s:4:\"desc\";s:26:\"pdotools_prop_webLinkClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplOuter\";a:7:{s:4:\"name\";s:8:\"tplOuter\";s:4:\"desc\";s:22:\"pdotools_prop_tplOuter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:41:\"@INLINE <ul[[+classes]]>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li[[+classes]]><a href=\"[[+link]]\" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplParentRow\";a:7:{s:4:\"name\";s:12:\"tplParentRow\";s:4:\"desc\";s:26:\"pdotools_prop_tplParentRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplParentRowHere\";a:7:{s:4:\"name\";s:16:\"tplParentRowHere\";s:4:\"desc\";s:30:\"pdotools_prop_tplParentRowHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHere\";a:7:{s:4:\"name\";s:7:\"tplHere\";s:4:\"desc\";s:21:\"pdotools_prop_tplHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplInner\";a:7:{s:4:\"name\";s:8:\"tplInner\";s:4:\"desc\";s:22:\"pdotools_prop_tplInner\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplInnerRow\";a:7:{s:4:\"name\";s:11:\"tplInnerRow\";s:4:\"desc\";s:25:\"pdotools_prop_tplInnerRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplInnerHere\";a:7:{s:4:\"name\";s:12:\"tplInnerHere\";s:4:\"desc\";s:26:\"pdotools_prop_tplInnerHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"tplParentRowActive\";a:7:{s:4:\"name\";s:18:\"tplParentRowActive\";s:4:\"desc\";s:32:\"pdotools_prop_tplParentRowActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplCategoryFolder\";a:7:{s:4:\"name\";s:17:\"tplCategoryFolder\";s:4:\"desc\";s:31:\"pdotools_prop_tplCategoryFolder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplStart\";a:7:{s:4:\"name\";s:8:\"tplStart\";s:4:\"desc\";s:22:\"pdotools_prop_tplStart\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:55:\"@INLINE <h2[[+classes]]>[[+menutitle]]</h2>[[+wrapper]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"checkPermissions\";a:7:{s:4:\"name\";s:16:\"checkPermissions\";s:4:\"desc\";s:30:\"pdotools_prop_checkPermissions\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"hereId\";a:7:{s:4:\"name\";s:6:\"hereId\";s:4:\"desc\";s:20:\"pdotools_prop_hereId\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"countChildren\";a:7:{s:4:\"name\";s:13:\"countChildren\";s:4:\"desc\";s:27:\"pdotools_prop_countChildren\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdomenu.php'),
(17, 1, 0, 'pdoTitle', '', 0, 10, 0, '/** @var array $scriptProperties */\nif (empty($outputSeparator)) {\n    $outputSeparator = \' / \';\n}\nif (empty($titleField)) {\n    $titleField = \'longtitle\';\n}\nif (!isset($pageVarKey)) {\n    $pageVarKey = \'page\';\n}\nif (!isset($queryVarKey)) {\n    $queryVarKey = \'query\';\n}\nif (empty($tplPages)) {\n    $tplPages = \'@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\';\n}\nif (empty($tplSearch)) {\n    $tplSearch = \'@INLINE «[[+mse2_query]]»\';\n}\nif (empty($minQuery)) {\n    $minQuery = 3;\n}\nif (empty($id)) {\n    $id = $modx->resource->id;\n}\nif (empty($cacheKey)) {\n    $cacheKey = \'title_crumbs\';\n}\nif (!isset($cacheTime)) {\n    $cacheTime = 0;\n}\n/** @var pdoTools $pdoTools */\n$fqn = $modx->getOption(\'pdoTools.class\', null, \'pdotools.pdotools\', true);\n$path = $modx->getOption(\'pdotools_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoTools = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$modx->lexicon->load(\'pdotools:pdopage\');\n\n/** @var modResource $resource */\n$resource = ($id == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject(\'modResource\', $id);\nif (!$resource) {\n    return \'\';\n}\n\n$title = array();\n$pagetitle = trim($resource->get($titleField));\nif (empty($pagetitle)) {\n    $pagetitle = $resource->get(\'pagetitle\');\n}\n\n// Add search request if exists\nif (!empty($_GET[$queryVarKey]) && strlen($_GET[$queryVarKey]) >= $minQuery && !empty($tplSearch)) {\n    $pagetitle .= \' \' . $pdoTools->getChunk($tplSearch, array(\n            $queryVarKey => $modx->stripTags($_GET[$queryVarKey]),\n        ));\n}\n$title[] = $pagetitle;\n\n// Add pagination if exists\nif (!empty($_GET[$pageVarKey]) && !empty($tplPages)) {\n    $title[] = $pdoTools->getChunk($tplPages, array(\n        \'page\' => intval($_GET[$pageVarKey]),\n    ));\n}\n\n// Add parents\n$cacheKey = $resource->getCacheKey() . \'/\' . $cacheKey;\n$cacheOptions = array(\'cache_key\' => $modx->getOption(\'cache_resource_key\', null, \'resource\'));\n$crumbs = \'\';\nif (empty($cache) || !$crumbs = $modx->cacheManager->get($cacheKey, $cacheOptions)) {\n    $crumbs = $pdoTools->runSnippet(\'pdoCrumbs\', array_merge(\n        array(\n            \'to\' => $resource->id,\n            \'outputSeparator\' => $outputSeparator,\n            \'showHome\' => 0,\n            \'showAtHome\' => 0,\n            \'showCurrent\' => 0,\n            \'direction\' => \'rtl\',\n            \'tpl\' => \'@INLINE [[+menutitle]]\',\n            \'tplCurrent\' => \'@INLINE [[+menutitle]]\',\n            \'tplWrapper\' => \'@INLINE [[+output]]\',\n            \'tplMax\' => \'\',\n            \'tplHome\' => \'\',\n        ), $scriptProperties\n    ));\n}\nif (!empty($crumbs)) {\n    if (!empty($cache)) {\n        $modx->cacheManager->set($cacheKey, $crumbs, $cacheTime, $cacheOptions);\n    }\n    $title[] = $crumbs;\n}\n\nif (!empty($registerJs)) {\n    $config = array(\n        \'separator\' => $outputSeparator,\n        \'tpl\' => str_replace(array(\'[[+\', \']]\'), array(\'{\', \'}\'), $pdoTools->getChunk($tplPages)),\n    );\n    /** @noinspection Annotator */\n    $modx->regClientStartupScript(\'<script type=\"text/javascript\">pdoTitle = \' . json_encode($config) . \';</script>\',\n        true);\n}\n\nreturn implode($outputSeparator, $title);', 0, 'a:13:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:25:\"pdotools_prop_title_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"titleField\";a:7:{s:4:\"name\";s:10:\"titleField\";s:4:\"desc\";s:24:\"pdotools_prop_titleField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"longtitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:25:\"pdotools_prop_title_cache\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplPages\";a:7:{s:4:\"name\";s:8:\"tplPages\";s:4:\"desc\";s:22:\"pdotools_prop_tplPages\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:68:\"@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tplSearch\";a:7:{s:4:\"name\";s:9:\"tplSearch\";s:4:\"desc\";s:23:\"pdotools_prop_tplSearch\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:27:\"@INLINE «[[+mse2_query]]»\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"queryVarKey\";a:7:{s:4:\"name\";s:11:\"queryVarKey\";s:4:\"desc\";s:25:\"pdotools_prop_queryVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"query\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"minQuery\";a:7:{s:4:\"name\";s:8:\"minQuery\";s:4:\"desc\";s:22:\"pdotools_prop_minQuery\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:35:\"pdotools_prop_title_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\" / \";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"registerJs\";a:7:{s:4:\"name\";s:10:\"registerJs\";s:4:\"desc\";s:24:\"pdotools_prop_registerJs\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdotitle.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(18, 1, 0, 'pdoArchive', '', 0, 10, 0, '$modx->lexicon->load(\'pdotools:pdoarchive\');\n\n/** @var array $scriptProperties */\n$tplWrapper = $modx->getOption(\'tplWrapper\', $scriptProperties);\n$tplYear = $modx->getOption(\'tplYear\', $scriptProperties);\n$tplMonth = $modx->getOption(\'tplMonth\', $scriptProperties);\n$tplDay = $modx->getOption(\'tplDay\', $scriptProperties);\n$tpl = $modx->getOption(\'tpl\', $scriptProperties);\n$dateField = $modx->getOption(\'dateField\', $scriptProperties, \'createdon\', true);\n$dateFormat = $modx->getOption(\'dateFormat\', $scriptProperties, \'H:i\', true);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \"\\n\");\n\n// Adding extra parameters into special place so we can put them in a results\n/** @var modSnippet $snippet */\n$additionalPlaceholders = $properties = array();\nif (isset($this) && $this instanceof modSnippet) {\n    $properties = $this->get(\'properties\');\n} elseif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoResources\'))) {\n    $properties = $snippet->get(\'properties\');\n}\nif (!empty($properties)) {\n    foreach ($scriptProperties as $k => $v) {\n        if (!isset($properties[$k])) {\n            $additionalPlaceholders[$k] = $v;\n        }\n    }\n}\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\nif (isset($parents) && $parents === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n}\n$scriptProperties[\'return\'] = \'data\';\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n$rows = $pdoFetch->run();\n\n// Process rows\n$tree = array();\nforeach ($rows as $row) {\n    $tmp = $row[$dateField];\n    if (!is_numeric($tmp)) {\n        $tmp = strtotime($tmp);\n    }\n    $year = date(\'Y\', $tmp);\n    $month = date(\'m\', $tmp);\n    $day = date(\'d\', $tmp);\n    $tree[$year][$month][$day][] = $row;\n}\n\n$output = \'\';\nforeach ($tree as $year => $months) {\n    $rows_year = \'\';\n    $count_year = 0;\n\n    foreach ($months as $month => $days) {\n        $rows_month = \'\';\n        $count_month = 0;\n\n        foreach ($days as $day => $resources) {\n            $rows_day = array();\n            $count_day = 0;\n            $idx = 1;\n\n            foreach ($resources as $resource) {\n                $resource[\'day\'] = $day;\n                $resource[\'month\'] = $month;\n                $resource[\'year\'] = $year;\n                $resource[\'date\'] = strftime($dateFormat, $resource[$dateField]);\n                $resource[\'idx\'] = $idx++;\n                $resource[\'menutitle\'] = !empty($resource[\'menutitle\'])\n                    ? $resource[\'menutitle\']\n                    : $resource[\'pagetitle\'];\n                // Add placeholder [[+link]] if specified\n                if (!empty($scriptProperties[\'useWeblinkUrl\'])) {\n                    if (!isset($resource[\'context_key\'])) {\n                        $resource[\'context_key\'] = \'\';\n                    }\n                    if (isset($resource[\'class_key\']) && ($resource[\'class_key\'] == \'modWebLink\')) {\n                        $resource[\'link\'] = isset($resource[\'content\']) && is_numeric(trim($resource[\'content\'], \'[]~ \'))\n                            ? $pdoFetch->makeUrl(intval(trim($resource[\'content\'], \'[]~ \')), $resource)\n                            : (isset($resource[\'content\']) ? $resource[\'content\'] : \'\');\n                    } else {\n                        $resource[\'link\'] = $pdoFetch->makeUrl($resource[\'id\'], $resource);\n                    }\n                } else {\n                    $resource[\'link\'] = \'\';\n                }\n                $tpl = $pdoFetch->defineChunk($resource);\n                $rows_day[] = $pdoFetch->getChunk($tpl, $resource);\n                $count_year++;\n                $count_month++;\n                $count_day++;\n            }\n\n            $rows_month .= !empty($tplDay)\n                ? $pdoFetch->getChunk($tplDay, array(\n                    \'day\' => $day,\n                    \'month\' => $month,\n                    \'year\' => $year,\n                    \'count\' => $count_day,\n                    \'wrapper\' => implode($outputSeparator, $rows_day),\n                ), $pdoFetch->config[\'fastMode\'])\n                : implode($outputSeparator, $rows_day);\n        }\n\n        $rows_year .= !empty($tplMonth)\n            ? $pdoFetch->getChunk($tplMonth, array(\n                \'month\' => $month,\n                \'month_name\' => $modx->lexicon(\'pdoarchive_month_\' . $month),\n                \'year\' => $year,\n                \'count\' => $count_month,\n                \'wrapper\' => $rows_month,\n            ), $pdoFetch->config[\'fastMode\'])\n            : $rows_month;\n    }\n\n    $output .= !empty($tplYear)\n        ? $pdoFetch->getChunk($tplYear, array(\n            \'year\' => $year,\n            \'count\' => $count_year,\n            \'wrapper\' => $rows_year,\n        ), $pdoFetch->config[\'fastMode\'])\n        : $rows_year;\n}\n$pdoFetch->addTime(\'Rows processed\');\n\n// Return output\nif (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n    $output = $pdoFetch->getChunk(\n        $tplWrapper,\n        array_merge($additionalPlaceholders, array(\'output\' => $output)),\n        $pdoFetch->config[\'fastMode\']\n    );\n    $pdoFetch->addTime(\'Rows wrapped\');\n}\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"pdoArchiveLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:36:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li>[[+date]] <a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplYear\";a:7:{s:4:\"name\";s:7:\"tplYear\";s:4:\"desc\";s:21:\"pdotools_prop_tplYear\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:71:\"@INLINE <h3>[[+year]] <sup>([[+count]])</sup></h3><ul>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplMonth\";a:7:{s:4:\"name\";s:8:\"tplMonth\";s:4:\"desc\";s:22:\"pdotools_prop_tplMonth\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:86:\"@INLINE <li><h4>[[+month_name]] <sup>([[+count]])</sup></h4><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplDay\";a:7:{s:4:\"name\";s:6:\"tplDay\";s:4:\"desc\";s:20:\"pdotools_prop_tplDay\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:79:\"@INLINE <li><h5>[[+day]] <sup>([[+count]])</sup></h5><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"dateField\";a:7:{s:4:\"name\";s:9:\"dateField\";s:4:\"desc\";s:23:\"pdotools_prop_dateField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"dateFormat\";a:7:{s:4:\"name\";s:10:\"dateFormat\";s:4:\"desc\";s:24:\"pdotools_prop_dateFormat\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"%H:%M\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoarchive.php');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'index', 'Template', 0, 6, '', 0, '[[$metaBase]]\n[[$headerBase]]\n[[$indexContent]]\n[[$footerBase]]\n[[$endhtmlBase]]', 0, 'a:0:{}', 1, 'assets/custom/templates/index.tpl'),
(2, 1, 0, 'events', '', 0, 6, '', 0, '[[$metaBase]]\n[[$headerBase]]\n[[$eventsContent]]\n[[$footerBase]]\n[[$endhtmlBase]]', 0, 'a:0:{}', 1, 'assets/custom/templates/events.tpl');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_tmplvars`
--

INSERT INTO `modx_site_tmplvars` (`id`, `source`, `property_preprocess`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `default_text`, `properties`, `input_properties`, `output_properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'image', 'img', 'image', '', 0, 0, 0, '', 0, 'text', '', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_tmplvar_contentvalues`
--

INSERT INTO `modx_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 1, 3, 'assets/uploads/Chrysanthemum.jpg'),
(2, 1, 4, 'assets/uploads/Desert.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_tmplvar_templates`
--

INSERT INTO `modx_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeCommentDelete', 6, 'Tickets'),
('OnBeforeCommentPublish', 6, 'Tickets'),
('OnBeforeCommentRemove', 6, 'Tickets'),
('OnBeforeCommentSave', 6, 'Tickets'),
('OnBeforeCommentUndelete', 6, 'Tickets'),
('OnBeforeCommentUnpublish', 6, 'Tickets'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTicketThreadClose', 6, 'Tickets'),
('OnBeforeTicketThreadDelete', 6, 'Tickets'),
('OnBeforeTicketThreadOpen', 6, 'Tickets'),
('OnBeforeTicketThreadRemove', 6, 'Tickets'),
('OnBeforeTicketThreadUndelete', 6, 'Tickets'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnCommentDelete', 6, 'Tickets'),
('OnCommentPublish', 6, 'Tickets'),
('OnCommentRemove', 6, 'Tickets'),
('OnCommentSave', 6, 'Tickets'),
('OnCommentStar', 6, 'Tickets'),
('OnCommentUndelete', 6, 'Tickets'),
('OnCommentUnpublish', 6, 'Tickets'),
('OnCommentUnStar', 6, 'Tickets'),
('OnCommentVote', 6, 'Tickets'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTicketStar', 6, 'Tickets'),
('OnTicketThreadClose', 6, 'Tickets'),
('OnTicketThreadDelete', 6, 'Tickets'),
('OnTicketThreadOpen', 6, 'Tickets'),
('OnTicketThreadRemove', 6, 'Tickets'),
('OnTicketThreadUndelete', 6, 'Tickets'),
('OnTicketUnStar', 6, 'Tickets'),
('OnTicketVote', 6, 'Tickets'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System'),
('pdoToolsOnFenomInit', 6, 'pdoTools');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('allow_tv_eval', '1', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/display/revolution20/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', NULL),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_disabled', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_format', '0', 'textfield', 'core', 'caching', NULL),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_system_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '', 'textfield', 'core', 'furls', '2018-04-16 08:54:37'),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'ru', 'modx-combo-language', 'core', 'language', '2018-04-16 08:17:35'),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'textfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('editor_css_path', '', 'textfield', 'core', 'editor', NULL),
('editor_css_selectors', '', 'textfield', 'core', 'editor', NULL),
('emailsender', 'tyaa@ukr.net', 'textfield', 'core', 'authentication', '2018-04-16 08:17:35'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', NULL),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_page', '1', 'textfield', 'core', 'site', NULL),
('extension_packages', '[{\"tickets\":{\"path\":\"[[++core_path]]components/tickets/model/\"}}]', 'textfield', 'core', 'system', NULL),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', NULL),
('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'http://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', NULL),
('filemanager_path', '', 'textfield', 'core', 'file', NULL),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('filemanager_url', '', 'textfield', 'core', 'file', NULL),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '70', 'textfield', 'core', 'furls', '2018-04-16 08:57:11'),
('friendly_alias_realtime', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@«»,\\?\\[\\]\\{\\}\\|\\^\'\\\\\\!\\.\\)\\(]/', 'textfield', 'core', 'furls', '2018-04-16 08:55:56'),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '1', 'combo-boolean', 'core', 'furls', '2018-04-16 08:56:18'),
('friendly_urls_strict', '1', 'combo-boolean', 'core', 'furls', '2018-04-16 08:56:53'),
('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', NULL),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'textfield', 'core', 'system', NULL),
('log_level', '1', 'textfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', NULL),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', '', 'textfield', 'core', 'manager', NULL),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', NULL),
('manager_js_document_root', '', 'textfield', 'core', 'manager', NULL),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', NULL),
('manager_language', 'ru', 'modx-combo-language', 'core', 'language', '2018-04-16 08:17:35'),
('manager_lang_attribute', 'ru', 'textfield', 'core', 'language', '2018-04-16 08:17:35'),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'textfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_ticket', 'icon icon-comment-o', 'textfield', 'tickets', 'tickets.main', NULL),
('mgr_tree_icon_ticketssection', 'icon icon-comments-o', 'textfield', 'tickets', 'tickets.main', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('parser_class', 'pdoParser', 'textfield', 'pdotools', 'pdotools_main', NULL),
('parser_class_path', '{core_path}components/pdotools/model/pdotools/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('password_generated_length', '8', 'textfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'textfield', 'core', 'authentication', NULL),
('pdoFetch.class', 'pdotools.pdofetch', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdofetch_class_path', '{core_path}components/pdotools/model/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdoTools.class', 'pdotools.pdotools', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_class_path', '{core_path}components/pdotools/model/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_elements_path', '{core_path}elements/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_cache', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_default', '1', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_modx', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_options', '', 'textarea', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_parser', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_php', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_save_on_errors', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '1', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'textfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('rb_base_dir', '', 'textfield', 'core', 'file', NULL),
('rb_base_url', '', 'textfield', 'core', 'file', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '1', 'combo-boolean', 'core', 'system', '2018-04-16 08:17:35'),
('server_offset_time', '0', 'textfield', 'core', 'system', NULL),
('server_protocol', 'http', 'textfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '2.6.2-pl', 'textfield', 'core', 'system', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'textfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'textfield', 'core', 'site', NULL),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('tickets.clear_cache_on_comment_save', '', 'combo-boolean', 'tickets', 'tickets.comment', NULL),
('tickets.comment_edit_time', '600', 'numberfield', 'tickets', 'tickets.comment', NULL),
('tickets.count_guests', '', 'combo-boolean', 'tickets', 'tickets.ticket', NULL),
('tickets.date_format', '%d.%m.%y <small>%H:%M</small>', 'textfield', 'tickets', 'tickets.main', NULL),
('tickets.default_template', '', 'modx-combo-template', 'tickets', 'tickets.ticket', NULL),
('tickets.editor_config.comment', '{onTab: {keepDefault:false, replaceWith:\"	\"}\n		,markupSet: [\n			{name:\"Bold\", className: \"btn-bold\", key:\"B\", openWith:\"<b>\", closeWith:\"</b>\" }\n			,{name:\"Italic\", className: \"btn-italic\", key:\"I\", openWith:\"<i>\", closeWith:\"</i>\"  }\n			,{name:\"Underline\", className: \"btn-underline\", key:\"U\", openWith:\"<u>\", closeWith:\"</u>\" }\n			,{name:\"Stroke through\", className: \"btn-stroke\", key:\"S\", openWith:\"<s>\", closeWith:\"</s>\" }\n			,{separator:\"---------------\" }\n			,{name:\"Quote\", className: \"btn-quote\", openWith:\"<blockquote>\", closeWith:\"</blockquote>\"}\n			,{name:\"Code\", className: \"btn-code\", openWith:\"<code>\", closeWith:\"</code>\"}\n			,{name:\"Link\", className: \"btn-link\", openWith:\"<a href=\\\"[![Link:!:http://]!]\\\">\", closeWith:\"</a>\" }\n			,{name:\"Picture\", className: \"btn-picture\", replaceWith:\"<img src=\\\"[![Source:!:http://]!]\\\" />\" }\n		]}', 'textarea', 'tickets', 'tickets.comment', NULL),
('tickets.editor_config.ticket', '{onTab: {keepDefault:false, replaceWith:\"	\"}\n		,markupSet: [\n			{name:\"Bold\", className: \"btn-bold\", key:\"B\", openWith:\"<b>\", closeWith:\"</b>\" }\n			,{name:\"Italic\", className: \"btn-italic\", key:\"I\", openWith:\"<i>\", closeWith:\"</i>\"  }\n			,{name:\"Underline\", className: \"btn-underline\", key:\"U\", openWith:\"<u>\", closeWith:\"</u>\" }\n			,{name:\"Stroke through\", className: \"btn-stroke\", key:\"S\", openWith:\"<s>\", closeWith:\"</s>\" }\n			,{separator:\"---------------\" }\n			,{name:\"Bulleted List\", className: \"btn-bulleted\", openWith:\"	<li>\", closeWith:\"</li>\", multiline:true, openBlockWith:\"<ul>\\n\", closeBlockWith:\"\\n</ul>\"}\n			,{name:\"Numeric List\", className: \"btn-numeric\", openWith:\"	<li>\", closeWith:\"</li>\", multiline:true, openBlockWith:\"<ol>\\n\", closeBlockWith:\"\\n</ol>\"}\n			,{separator:\"---------------\" }\n			,{name:\"Quote\", className: \"btn-quote\", openWith:\"<blockquote>\", closeWith:\"</blockquote>\"}\n			,{name:\"Code\", className: \"btn-code\", openWith:\"<code>\", closeWith:\"</code>\"}\n			,{name:\"Link\", className: \"btn-link\", openWith:\"<a href=\\\"[![Link:!:http://]!]\\\">\", closeWith:\"</a>\" }\n			,{name:\"Picture\", className: \"btn-picture\", replaceWith:\"<img src=\\\"[![Source:!:http://]!]\\\" />\" }\n			,{separator:\"---------------\" }\n			,{name:\"Cut\", className: \"btn-cut\", openWith:\"<cut/>\" }\n		]}', 'textarea', 'tickets', 'tickets.ticket', NULL),
('tickets.enable_editor', '1', 'combo-boolean', 'tickets', 'tickets.main', NULL),
('tickets.frontend_css', '[[+cssUrl]]web/default.css', 'textfield', 'tickets', 'tickets.main', NULL),
('tickets.frontend_js', '[[+jsUrl]]web/default.js', 'textfield', 'tickets', 'tickets.main', NULL),
('tickets.mail_bcc', '', 'textfield', 'tickets', 'tickets.mail', NULL),
('tickets.mail_bcc_level', '1', 'numberfield', 'tickets', 'tickets.mail', NULL),
('tickets.mail_from', '', 'textfield', 'tickets', 'tickets.mail', NULL),
('tickets.mail_from_name', '', 'textfield', 'tickets', 'tickets.mail', NULL),
('tickets.mail_queue', '', 'combo-boolean', 'tickets', 'tickets.mail', NULL),
('tickets.private_ticket_page', '0', 'numberfield', 'tickets', 'tickets.ticket', NULL),
('tickets.section_content_default', '[[!pdoPage?\n	&element=`getTickets`\n]]\n\n[[!+page.nav]]', 'textarea', 'tickets', 'tickets.section', NULL),
('tickets.snippet_prepare_comment', '', 'textfield', 'tickets', 'tickets.comment', NULL),
('tickets.source_default', '3', 'modx-combo-source', 'tickets', 'tickets.main', '2018-04-17 07:46:26'),
('tickets.ticket_max_cut', '1000', 'numberfield', 'tickets', 'tickets.ticket', NULL),
('tickets.unpublished_ticket_page', '0', 'numberfield', 'tickets', 'tickets.ticket', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', NULL),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', NULL),
('unauthorized_page', '1', 'textfield', 'core', 'site', NULL),
('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,odt,ods,odp,odb,odg,odf,md,ttf,woff,eot,scss,less,css.map', 'textfield', 'core', 'file', NULL),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '104857600', 'textfield', 'core', 'file', '2018-04-16 08:17:35'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('use_alias_path', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_browser', '1', 'combo-boolean', 'core', 'file', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_frozen_parent_uris', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2018-04-16 08:17:35'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2018-04-16 08:18:24'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.26.html ', 'textfield', 'core', 'manager', NULL),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('which_element_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_tickets_authors`
--

CREATE TABLE `modx_tickets_authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `rating` decimal(12,2) DEFAULT '0.00',
  `createdon` datetime DEFAULT '0000-00-00 00:00:00',
  `visitedon` datetime DEFAULT '0000-00-00 00:00:00',
  `tickets` int(10) UNSIGNED DEFAULT '0',
  `comments` int(10) UNSIGNED DEFAULT '0',
  `views` int(10) UNSIGNED DEFAULT '0',
  `votes_tickets` decimal(12,2) DEFAULT '0.00',
  `votes_comments` decimal(12,2) DEFAULT '0.00',
  `stars_tickets` int(10) UNSIGNED DEFAULT '0',
  `stars_comments` int(10) UNSIGNED DEFAULT '0',
  `votes_tickets_up` int(10) UNSIGNED DEFAULT '0',
  `votes_tickets_down` int(10) UNSIGNED DEFAULT '0',
  `votes_comments_up` int(10) UNSIGNED DEFAULT '0',
  `votes_comments_down` int(10) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_tickets_author_actions`
--

CREATE TABLE `modx_tickets_author_actions` (
  `id` int(10) NOT NULL,
  `action` varchar(50) NOT NULL,
  `owner` int(10) NOT NULL DEFAULT '0',
  `rating` decimal(12,2) DEFAULT '0.00',
  `multiplier` int(10) DEFAULT '1',
  `ticket` int(10) NOT NULL DEFAULT '0',
  `section` int(10) NOT NULL DEFAULT '0',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `year` year(4) DEFAULT '0000',
  `month` int(2) DEFAULT '0',
  `day` int(2) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_tickets_comments`
--

CREATE TABLE `modx_tickets_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `raw` text NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(16) NOT NULL DEFAULT '0.0.0.0',
  `rating` smallint(5) DEFAULT '0',
  `rating_plus` smallint(5) DEFAULT '0',
  `rating_minus` smallint(5) DEFAULT '0',
  `createdon` datetime DEFAULT NULL,
  `createdby` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `editedon` datetime DEFAULT NULL,
  `editedby` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_tickets_files`
--

CREATE TABLE `modx_tickets_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(100) DEFAULT NULL,
  `source` int(10) UNSIGNED DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `description` text,
  `path` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `size` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `createdon` datetime DEFAULT '0000-00-00 00:00:00',
  `createdby` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumbs` text,
  `deleted` tinyint(1) DEFAULT '0',
  `properties` text,
  `hash` char(40) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_tickets_mail_queues`
--

CREATE TABLE `modx_tickets_mail_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) DEFAULT '',
  `body` text,
  `email` varchar(255) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_tickets_stars`
--

CREATE TABLE `modx_tickets_stars` (
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(100) NOT NULL DEFAULT 'Ticket',
  `owner` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `createdon` datetime DEFAULT NULL,
  `createdby` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_tickets_threads`
--

CREATE TABLE `modx_tickets_threads` (
  `id` int(10) UNSIGNED NOT NULL,
  `resource` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `subscribers` text NOT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `closed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comment_last` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comment_time` datetime DEFAULT NULL,
  `comments` int(10) UNSIGNED DEFAULT '0',
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_tickets_views`
--

CREATE TABLE `modx_tickets_views` (
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `guest_key` char(32) NOT NULL DEFAULT '',
  `timestamp` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_tickets_votes`
--

CREATE TABLE `modx_tickets_votes` (
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(100) NOT NULL DEFAULT '',
  `owner` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `value` tinyint(1) NOT NULL DEFAULT '0',
  `createdon` datetime DEFAULT NULL,
  `createdby` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(16) DEFAULT '0.0.0.0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_packages`
--

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(191) NOT NULL,
  `metadata` text,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_transport_packages`
--

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('pdotools-2.11.0-pl', '2018-04-17 10:46:19', '2018-04-17 07:46:27', '2018-04-17 10:46:25', 0, 1, 1, 0, 'pdotools-2.11.0-pl.transport.zip', NULL, 'a:3:{s:9:\"changelog\";s:26556:\"Changelog for pdoTools.\n\n2.11.0 pl\n==============\n- [pdoFetch] Added \"setTotal\" option to enable calculating all rows (\"SQL_CALC_FOUND_ROWS\"), which will also result in the \"totalVar\" placeholder is being set.\n- [pdoFetch] Option \"setTotal\" disabled by default.\n- [pdoPage] Forces \"setTotal\" to provide pagination.\n\n2.10.6 pl\n==============\n- Improved German lexicons.\n\n2.10.5 pl\n==============\n- [pdoTools] Ability to return array from \"prepareSnippet\" for more performance.\n- [FenomX] Fixed method \"getStore\".\n\n2.10.4 pl\n==============\n- [Fenom] Do not output raw tags if there was a compile errors.\n- [#266] [pdoMenu] Fixed the setting of \"here\" and \"self\" classes.\n- [#261] [Fenom] Fixed unexpected behavior of the fenom tag \"ignore\".\n\n2.10.3 pl\n==============\n- Improved compatibility with PHP 7.2\n- [pdoFetch] Ability to use arrays in \"&sortby\".\n\n2.10.2 pl\n==============\n- [Fenom] Improved processing of caching snippets inside uncached.\n\n2.10.1 pl\n==============\n- [#256] [Fenom] Fixed bug with caching of scripts and styles.\n- [pdoPage] \"&setMeta\" now works when \"&cache=`1`\".\n- [Fenom] Improved regular expression to detect Fenom syntax.\n\n2.10.0 pl\n==============\n- [#259] [pdoFetch] Fixed error when passed pure SQL into \"having\" parameter.\n- [#258] [pdoPage] Canonical urls always must be \"full\".\n- [#245] [pdoMenu] Ability to use conditional tpls instead of regular \"tpl\".\n- [#121] [pdoMenu] Improved work of specified chunks with weblinks.\n\n2.9.3 pl\n==============\n- [#255] [Fenom] New system setting \"pdotools_fenom_save_on_errors\" to save code on compilation errors in the cache directory for later debugging.\n\n2.9.2 pl\n==============\n- [pdoParser] Proper traversal trough arrays fields of resources in fast tags.\n\n2.9.1 pl\n==============\n- [Fenom] Updated to version 2.11.8.\n\n2.9.0 pl\n==============\n- [pdoPage] Improved \"&pageLinkScheme\" logic.\n- [#249] A little improvement for resource modifier.\n- [#251] [pdoFetch] More compatibility with PHP 7.1.\n- [#253] [pdoPage] Fixing a missing pagination in Ajax mode.\n- [#254] [Fenom] Options of json modifiers must check version of PHP to proper work.\n\n2.8.6 pl\n==============\n- [pdoArchive] Ability to specify fields with regular dates in the \"&dateField\" parameter.\n- [Fenom] Added all options to json modifiers.\n\n2.8.5 pl\n==============\n- [#248] [pdoPage] Fixed E_WARNING with array values in GET parameters.\n\n2.8.4 pl\n==============\n- Ability to use file elements in core path outside base path.\n- Fixed bug with the caching of elements.\n\n2.8.3 pl\n==============\n- [Fenom] Fixed rare bug with the caching of scripts and styles that was registered via Fenom.\n- [pdoPage] Fixed the \"?page=1\" in the url when ajaxMode is enabled.\n- [pdoPage] Snippet will register \"canonical\" link if \"&setMeta\" is enabled.\n- [pdoPage] Fix processing of request with rawurldecode on some servers.\n- [pdoTools] Added passing of \"scriptProperties\" values into a \"&prepareSnippet\".\n\n2.8.2 pl\n==============\n- [pdoMenu] Fixed the checking of permissions for containers.\n- [pdoPage] Added the ability to run files as &element.\n- [pdoTools] The method runSnippet will return boolean false if snippet was not found.\n- [Fenom] Fixed the possible bugs of caching of scripts and styles.\n\n2.8.1 pl\n==============\n- [#244] Fixed possible duplicate of a container in the jquery.pdopage.js.\n- Added fallback class for the enable modParser.\n\n2.8.0 pl\n==============\n- Ability to use an arrays in the parameters of the snippets.\n- Replaced modX::toJSON and modX::fromJSON to native php functions.\n\n2.7.5 pl\n==============\n- Fenom is now managed via composer.\n- [Fenom] Modifier \"resource\" no longer checks fields of resources in their schema.\n- [Fenom] Modifier \"strrev\" now can work with arrays.\n- [Fenom] Improved modifier \"ismember\".\n\n2.7.4 pl\n==============\n- [#242] Added jquery.pdopage.js plugin and minified versions.\n- [#241] [Fenom] Improved the retrieving of TVs for a current resource.\n- [pdoFetch] Restored the checking of possible SQL injections in the &sortby with xPDO 2.5.1.\n\n2.7.3 pl\n==============\n- Improved compatibility with MODX 2.5.2.\n\n2.7.2 pl\n==============\n- [pdoFetch] Some security improvements.\n\n2.7.1 pl\n==============\n- Some security improvements in the connector.php.\n- Fixed bug with registering scripts in styles via Fenom introduced in version 2.7.0.\n\n2.7.0 pl\n==============\n- [Fenom] Updated to the version 2.11.4.\n- [Fenom] Fixed resource cache for scripts and styles registered by Fenom.\n- [Fenom] Added rand() and number_format() to an allowed PHP functions.\n- [Fenom] New output filter \"number\" (or \"number_format\").\n\n2.6.5 pl\n==============\n- Fixed undeclared variable (PHP 7.1)\n\n2.6.4 pl\n==============\n- Added escaping of a MODX tags that being processed in the &prepareSnippet.\n- [#239] Improved work of the &decodeJSON option.\n\n2.6.3 pl\n==============\n- Fixed possible E_NOTICE on line 305 pdofetch.class.php.\n- Fixed possible E_NOTICE when \"snippet\" and \"chunk\" Fenom modifiers was called.\n\n2.6.2 pl\n==============\n- Fixed possible E_NOTICE on line 1317 pdotools.class.php.\n\n2.6.1 pl\n==============\n- Improved compatibility with PHP 5.3.\n\n2.6.0 pl\n==============\n- [Fenom] The ability to extend Fenom via system event \"pdoToolsOnFenomInit\".\n\n2.5.6 pl\n==============\n- [pdoFetch] Ability to join TVs not only to the query main class.\n\n2.5.5 pl\n==============\n- Fixed parse of INLINE chunks with \"@\" symbols.\n\n2.5.4 pl\n==============\n- [#224] Added microMODX::cleanAlias().\n- [#226] [Fenom] Added \"declension\" modifier.\n\n2.5.3 pl\n==============\n- [#221] Fixed typo in month name.\n- [Fenom] Fixed path to compile dir.\n\n2.5.2 pl\n==============\n- [#220] Cache code of snippet with respect to property set.\n\n2.5.1 pl\n==============\n- Fixed cache of snippets in pdoTools::runSnippet().\n\n2.5.0 pl\n==============\n- Improved support of debugParser.\n- [#209] Improved loading of the models.\n- [Fenom] New modifiers: \"snippet\" and \"chunk\".\n- [Fenom] New elements provider: \"file\".\n- New method pdoTools::runSnippet().\n\n2.4.0 pl\n==============\n- Added snippet pdoArchive.\n- [pdoResources] Faster processing of additional snippet parameters to placeholders.\n- [#123] [pdoMenu] Fixed bug with &displayStart and unpublished root nodes.\n- [#207] [pdoMenu] Fixed &webLinkClass option.\n- [#193] [pdoNeighbors] Added parameter &wrapIfEmpty.\n- [#203] [Fenom] Added more PCRE modifiers.\n\n2.3.5 pl\n==============\n- [pdoFetch] Added escaping of columns names in query.\n\n2.3.4 pl\n==============\n- [#200] [pdoFetch] Fixed &sortbyTV with dot in name.\n\n2.3.3 pl\n==============\n- Added system plugin for \"autoload\" of main classes with respect to their paths in system settings.\n\n2.3.2 pl\n==============\n- [#196] [pdoPage] Added workaround to support ClientConfig tags in ajax mode.\n- [Fenom] Added general MODX output filters as Fenom modifiers.\n- [Fenom] Implemented autoload of modifiers from snippets.\n- [Fenom] Removed system setting \"pdotools_fenom_modifiers\".\n\n2.3.1 pl\n==============\n- [pdoSitemap] Lightning fast work chunks processing with &scheme=`uri`.\n- [Fenom] Improved check of syntax before processing.\n\n2.3.0 pl\n==============\n- Removed shortcuts from system core.\n- PSR-2.\n- [Fenom] Added default modifiers: \"url\" and \"lexicon\".\n- [pdoCrumbs] Changed default chunks to ul -> li.\n- [#190] [pdoSitemap] Changed date format to ISO 8601.\n\n2.2.8 pl\n==============\n- [Fenom] Use modResource::getContent() method to get content of current resource in {$_modx->resource}.\n\n2.2.7 pl\n==============\n- [pdoPage] Ability to get access to a javascript configs from 3rd party scripts.\n\n2.2.6 pl\n==============\n- [#184] [Fenom] Updated to version 2.8.2.\n\n2.2.5 pl\n==============\n- [#182] [pdoTitle] Added passing a parameters into nested pdoCrumbs.\n- [pdoSitemap] Added processing of MODX tags if needed.\n- Added method pdoTools::makeUrl().\n- [#181] New url schema type - \"uri\".\n\n2.2.4 pl\n==============\n- [Fenom] Fixed speed issues when MODX snippets are run as Fenom modifiers.\n- [pdoUsers] Fixed overwrite modUser.id by modUserProfile.id.\n\n2.2.3 pl\n==============\n- [pdoPage] Fixed processing of uncached conditions in chunks when ajax mode is enabled.\n\n2.2.2 pl\n==============\n- [pdoPage] Added new parameter &pageLinkScheme.\n\n2.2.1 pl\n==============\n- [#155] [pdoPage] Added new parameter &ajaxHistory.\n- [pdoPage] Added connector for requests in ajax mode.\n\n2.2.0 pl\n==============\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\n- [#174] [Fenom] Ability to add Fenom modifiers into pdoParser.\n\n2.1.21 pl\n==============\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\n- [#176] [pdoUsers] Fixed &toPlaceholders with &returnIds.\n\n2.1.20 pl\n==============\n- [pdoSitemap] Fixed default &cacheKey.\n\n2.1.19 pl\n==============\n- [Fenom] Disabled $options in cacheManager::set() due to security reasons.\n\n2.1.18 pl\n==============\n- [Fenom] Fixed ability to access to the modX object from {$_modx} variable.\n- [Fenom] Improved method {$_modx->runProcessor()}.\n\n2.1.17 pl\n==============\n- [Fenom] Added {$_modx->getResource($id, $options)}.\n- [Fenom] Added {$_modx->getResources($where, $options)}.\n- [Fenom] Improved support of debugParser.\n\n2.1.16 pl\n==============\n- [Fenom] Added {$_modx->isMember($groups, $matchAll)}.\n- [Fenom] Added {$_modx->getPlaceholders()}.\n\n2.1.15 pl\n==============\n- [pdoPage] Added parameter &strictMode.\n\n2.1.14 pl\n==============\n- [pdoSitemap] Added options for cache snippets results.\n- [pdoSitemap] Cache enabled by default.\n\n2.1.13 pl\n==============\n- [#163] Fixed ignoring of &idx in pdoResources and pdoUsers.\n\n2.1.12 pl\n==============\n- [pdoPage] [#161] Fixed support of arrays in hash when &ajaxMode is enabled.\n\n2.1.11 pl\n==============\n- [#150] [Fenom] Fixed processing of TVs values in a {$_modx->resource}.\n- [#147] [pdoSitemap] Fixed possible duplicates in sitemap.\n- [pdoPage] Support of arrays in hash when &ajaxMode is enabled.\n\n2.1.10 pl\n==============\n- [#157] [Fenom] Fixed pre-processing of Fenom tags in extending templates and chunks.\n- [#145] [pdoPage] Rolled back #81 due to issues with complicate forms.\n\n2.1.9 pl\n==============\n- [#144] [pdoParser] Leave unprocessed FastField tags so other components could parse them.\n- [pdoFetch] Updated syntax for \"SET SQL_BIG_SELECTS = 1\".\n\n2.1.8 pl\n==============\n- [Fenom] Ability to use id of chunks and templates in {include} and {extends}.\n- [Fenom] Added support of debugParser.\n- [Fenom] Added {$_modx->getChildIds()} and {$_modx->getParentIds()}.\n\n2.1.7 pl\n==============\n- Fixed work with integer values from system setting \"link_tag_scheme\".\n\n2.1.6 pl\n==============\n- [Fenom] Updated to version 2.8.0.\n- [Fenom] Improved check of syntax to process content of chunks.\n- [pdoParser] Fixed E_WARNING on line 50 introduced in previous version.\n\n2.1.5 pl\n==============\n- [Fenom] Fixed register of scripts and styles by cached snippets.\n\n2.1.4 pl\n==============\n- [Fenom] Fixed TVs in {$_modx->resource}\n- [Fenom] Added new method {$_modx->getInfo()}\n\n2.1.3 pl\n==============\n- Improved work of system setting \"pdotools_fenom_php\".\n\n2.1.2 pl\n==============\n- [Fenom] Replaced {$_modx->placeholders} to functions.\n\n2.1.1 pl\n==============\n- pdoParser enabled by default.\n- [Fenom] Fixed return content in {$_modx->getChunk}.\n- [Fenom] Added cache for snippets called through {$_modx->runSnippet}.\n- [pdoTools] Added processing of property sets for chunks.\n- [pdoResources] Set additionalPlaceholders in &tplWrapper\n\n2.1.0 pl\n==============\n- [Fenom] Updated Fenom to version 2.7.1.\n- [Fenom] Added safe system variable {$_modx}.\n- [Fenom] Added MODX template provider for chunks and templates.\n\n2.0.5 pl\n==============\n- [#132] Fixed possible E_WARNING on empty chunks.\n- [#122] Ability to use 3rd party pdoPage and pdoMenu classes.\n- [#118] [pdoPage] Fixed parameter &offset.\n- [pdoPage] Fixed default CSS classes in \"empty\" chunks.\n\n2.0.4 pl\n==============\n- Fixed processing of \"pdotools_fenom_cache\" system setting.\n\n2.0.3 pl\n==============\n- [#125] [pdoTitle] Fixed parameter &id.\n\n2.0.2 pl\n==============\n- Improved processing of @FILE binding.\n\n2.0.1 pl\n==============\n- Fixed possible E_WARNING on line 319 and 349 of pdoTools class.\n- Disabled system option \"pdotools_fenom_modx\" by default due to security issues.\n\n2.0.0 pl\n==============\n- New system settings to control the Fenom.\n- Ability to enable caching of Fenom compiled chunks.\n- Improved handling of parameter \"cache_key\".\n- [pdoMenu] Improved work when &cache is enabled.\n\n2.0.0 rc2\n==============\n- Compiled Fenom templates cached to RAM instead of HDD.\n- Removed plugin pdoTools.\n\n2.0.0 rc1\n==============\n- Added Fenom template engine.\n- Fenom enabled by default.\n- pdoParser uses Fenom to process pages.\n\n1.11.2 pl\n==============\n- [#116] [pdoTitle] Disabled &register_js by default.\n\n1.11.1 pl\n==============\n- [pdoSitemap] Fixed default url scheme after last update.\n\n1.11.0 pl1\n==============\n- [pdoTitle] Added new snippet.\n- [pdoPage] Added support of snippet pdoTitle when &ajaxMode is enabled.\n- [pdoPage] Prevent overwriting of scripts and styles of nested &element by default parameters.\n- [pdoPage] Added triggering javascript event \"pdopage_load\".\n\n1.10.2 pl1\n==============\n- [#112] Parameter &scheme was set to system default in all snippets.\n- [#111] [pdoPage] Added ability to set \"prev\" & \"next\" meta tags.\n- [#107] [pdoNeighbors] Added ability to specify &parents for work.\n- [#106] [pdoMenu] Fixed \"hereClass\" and \"selfClass\" enabled &useWeblinkUrl parameter.\n- [#104] [pdoMenu] Snippet now using \"pagetitle\" for link titles if \"titleOfLinks\" is empty.\n\n1.10.1 pl\n==============\n- [#108] [pdoFetch] Fixed E_ERROR when using &sortbyTV.\n- [pdoFetch] Added new parameter &sortbyTVType.\n- [pdoFetch] If &sortdirTV is not set it will be equal to &sortdir.\n\n1.10.0 pl\n==============\n- [pdoMenu] Returned and fixed parameter &showDeleted.\n- [pdoPage] Improved default javascript.\n- [pdoPage] Fixed overwriting &frontend_js and &frontend_css parameters when &ajax is disabled.\n- [pdoFetch] Ability to specify functions in select fields.\n- [pdoTools] Ability to use compound quick placeholders.\n\n1.10.0 beta4\n==============\n- [pdoPage] Ajax pagination out from the box.\n- [pdoFetch] Improved log of getCollection.\n- [pdoTools] Added tplOperator \"contains\".\n\n1.9.7 pl\n==============\n- [#99] [pdoFetch] Fixed returning of primary key in \"ids\" mode.\n- [#97] [pdoTools] Fixed default tplPath for @FILE chunks.\n- [#85] [pdoFetch] Added function getChildIds().\n- [pdoFetch] Disabled \"total\" placeholder for &return=`ids`.\n\n1.9.6 pl2\n==============\n- [pdoFetch] Fixed exclusion of field \"id\" in custom classes.\n- [pdoMenu] Improved parameter &countChildren.\n- [#100] [pdoMenu] Removed parameter &showDeleted because it not working.\n\n1.9.6 rc\n==============\n- Added execution of SQL_BIG_SELECTS = 1 before query.\n- [pdoPage] Added parameter &ajax for supporting of ajax requests.\n\n1.9.5 pl1\n==============\n- Rolled back #72 due to issues in pdoMenu.\n\n1.9.5 pl\n==============\n- Added ability to return JSON or serialized string from pdoFetch::run().\n- [#83] [pdoMenu] Added level placeholder to outer templates.\n- [#82] [pdoFetch] Added support for complex &where parameter.\n- [#81] [pdoPage] Improved handling of arrays in url.\n- [#77] Fixed making of url for modWebLink to another context.\n- [#72] [pdoTools] Fixed order for children of excluded parents in buildTree.\n- [#60] [pdoMenu] Fixed parameter &tplCategoryFolder.\n- [#57] [pdoMenu] Improved placeholder [[+children]].\n- [#57] [pdoMenu] Added parameter &countChildren.\n\n1.9.4 pl1\n==============\n- [#78] [pdoNeighbors] Added parameter &loop=`1` for looping links.\n- [pdoSitemap] Fixed possible E_FATAL php-apc.\n\n1.9.3 pl1\n==============\n- [pdoTools] Ability to specify value for empty quick placeholders.\n- [pdoTools] Ability to use INLINE snippets and filters.\n- [pdoFetch] Improved loading of 3rd party models.\n- [pdoPage] Fixed E_WARNING when &limit=`0`.\n\n1.9.2 pl2\n==============\n- [#56] [pdoParser] Fixed wrong links processing.\n- [#53] Improved loading of classes.\n- [pdoField] Rolled back to original logic of \"top\" and \"topLevel\" parameters due to issues.\n- [pdoField] Added parameter \"ultimate\" to emulate logic of UltimateParent.\n\n1.9.1 pl6\n==============\n- [pdoFetch] Adding alias of main class of query to \"sortby\" if no alias exists.\n- [pdoFetch] Improved selecting of all fields of class with specified alias.\n- [pdoField] Parameter \"topLevel\" works exactly as in UltimateParent.\n- [pdoField] Parameter \"top\" without \"topLevel\" returns parent on \"top\" level.\n\n1.9.1 pl\n==============\n- [#47] [pdoMenu] Fixed processing &tplOuter when output is empty.\n- [#46] [pdoParser] Fixed processing of TVs with dots in name.\n- [#44] [pdoMenu] Improved handling of Wayfinder parameters \"includeDocs\" and \"excludeDocs\".\n- [#37] [pdoField] get the default, only if the field was empty.\n- [#34] Fixed processing of \"modSymLink\" documents.\n- [#32] Improved cache methods.\n- [#26] Replaced FIND_IN_SET() to FIELD().\n- [pdoFetch] Ability to work with objects, that has multiple primary keys.\n- [pdoPage] New parameter &cacheAnonymous.\n- [pdoMenu] New parameter &cacheAnonymous.\n- Added aliases for sort query in order of specified &resources: \"ids\" or \"resources\".\n- Removed unnecessary query in pdoFetch::getCollection().\n- Improved pdoFetch::getCollection().\n- Renamed pdoFetch::getObject() to getArray(). Now it uses getCollection for retrieve results.\n- pdoTools::setCache() now returns cacheKey.\n- pdoFetch::getObject() is now alias of pdoFetch::getArray().\n\n1.9.0 pl2\n==============\n- [pdoMenu] Chunks of parents and categories are now depends on the descendants and ignores parameter isfolder.\n- [pdoNeighbors] Speed improvements.\n- [#27] Ability to specify custom pdoFetch and pdoTools classes through FQN system settings.\n- [pdoParser] Handles TVs in resource tags.\n- [pdoParser] Handles output filters.\n- [pdoFetch] Improved method \"addTVFilters\", that used by \"tvFilters\" parameter in pdoResources.\n- [pdoSitemap] Pass the whole row so we can use more columns.\n\n1.9.0 rc\n==============\n- Improved method pdoTools::getChunk().\n- Improved method pdoTools::parseChunk().\n- Improved method pdoTools::fastProcess().\n- Improved method pdoTools::makePlaceholders().\n- Accelerated snippet pdoNeighbors.\n- Fixed bug in pdoUsers when usersgroups was specified by names.\n- getObject and getCollection() runs in separate instance.\n- Added pdoParser with FastField tags.\n- [pdoPage] Changed default value of parameter \"totalVar\" due to issues.\n- [#24] Fixed prepareTVs and empty tvPrefix.\n- [#23] [pdoResources] Ability to return ids to placeholder.\n- Fixed warning when getObject returns false.\n- Fixed placeholders prefix in recursive makePlaceholders.\n\n1.8.9 pl4\n==============\n- Added german lexicon.\n- [#20] Ability to specify not JSON string in &where=``.\n- [pdoPage] Added parameter \"pageCountVar\" for specifying name of variable with number of pages.\n- [pdoPage] Support Bootstrap3.\n- [pdoField] Ability to specify class for fetching field.\n- Improved joining of tables in pdoFetch.\n- Added preparing and processing TVs in getObject and getCollection methods.\n- Improved load of 3rd party models.\n\n1.8.8 pl2\n==============\n- Rewrited cache of snippets \"pdoMenu\" and \"pdoPage\".\n- New methods pdoTools::getCache() and pdoTools::setCache().\n- [pdoMenu] Fixed parameter \"tplParentRowActive\".\n- [#18] Fixed \"idx\" in pdoTools::defineChunk().\n\n1.8.7 pl\n==============\n- Added boolean parameter \"decodeJSON\" to specify whether or not decode JSON in results rows.\n- Removed default \"sortby\" and \"sortdir\" from class pdoFetch for better work of getCollection() method.\n\n1.8.6 pl2\n==============\n- Fixed possibly E_NOTICE when site has no extension packages installed.\n- [#17] [pdoMenu] Added placeholder [[+wf.menutitle]].\n- [#16] [pdoMenu] Disabled status verification of specified parents.\n- [#13] [pdoMenu] Improved work with root of multiple contexts.\n- [pdoMenu] Fixed bug when specified parent has only the one child.\n- [pdoResources] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\". It is disabled by default.\n\n1.8.5 pl\n==============\n- [#15] [pdoPage] Improved generation of links to pages.\n- [pdoMenu] Improved processing of classes \"modSymlink\" and \"modWeblink\".\n- [pdoBreadcrumbs] Improved processing of classes \"modSymlink\" and \"modWeblink\". Added parameter \"&useWeblink\".\n- [pdoNeighbors] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\".\n- [pdoSitemap] Added parameter \"&useWeblink\" and proper processing of classes \"modSymlink\" and \"modWeblink\".\n\n1.8.4 pl\n==============\n- [pdoCrumbs] Added ability to specify the crumbs root (defaulting to site_start)\n- [pdoCrumbs] Added ability to specify class_key (ie. to generate crumbs only for derivative classes)\n- More accuracy when try to decode json in fetch results.\n\n1.8.3 pl3\n==============\n- Improved preparation of template variables.\n- Improved transfer of additional parameters from snippet to results.\n- [pdoMenu] Added lexicon entries for parameters.\n- [pdoMenu] Allow to specify \"limit\" and \"offset\".\n- [#12] Added parameter \"toPlaceholder\".\n- Increased accuracy of timings log.\n\n1.8.1 pl2\n==============\n- Accelerated method pdoTools::getChunk().\n- Added snippet pdoMenu.\n- Added support for tags [^qt^] and [^q^].\n\n1.8.0 pl\n==============\n- [#10] [pdoPage] Added placeholder \"page\".\n- [#9] [pdoPage] Added placeholder \"pageCount\".\n- [#8] Improved support of big numbers when sorting by TVs.\n- Fixed work of pdoPage when it called multiple times on page.\n- Fixed mistype in pdoFetch::getCollection().\n\n1.8.0 rc5\n==============\n- Added processing of JSON fields. For example, you can use [[+extended.keyname]] in chunks of pdoUsers.\n- pdoTools was removed from system extension packages, but you can still use \"$modx->getService(\'pdoFetch\');\".\n- Fixed getting chunk without any parameters.\n- Added snippet pdoPage.\n\n1.8.0 beta1\n==============\n- Improved handling of \"default_text\" parameter in TVs.\n- Fixed and improved method pdoTools::buildTree().\n- The logic of build the conditions of the query moved into new method pdoFetch::additionalConditions().\n- Improved method pdoFetch::addSelects().\n- Improved method pdoFetch::addSort().\n- Improved some snippets in accordance to new abilities of pdoFetch: pdoResources, pdoNeighbors and pdoSitemap.\n\n1.7.4 pl\n==============\n- [#7] [pdoSitemap] Fixed hidden parameters \"&sortBy\" and \"&sortDir\" that used for compatibility with GoogleSiteMap.\n\n1.7.3 pl1\n==============\n- [pdoCrumbs] Fixed possible E_NOTICE on line 157.\n- [pdoCrumbs] Fixed generation of link to site start in relative mode.\n- [#6] pdoCrumbs and pdoNeighbors are now uses \"menutitle\" by default. If it is empty, will be used \"pagetitle\".\n\n1.7.2 pl1\n==============\n- [pdoField] Added new parameters: \"default=``\" and \"&field=``\".\n- [pdoField] Improved logic of \"&top=``\" and \"&topLevel=``\".\n- Added 2 new methods: pdoFetch::getObject() and pdoFetch::getCollection().\n- Ability to send arrays into common config parameters. JSON is still supported.\n- Improved select of default values in TVs.\n\n1.7.1 pl\n==============\n- [pdoCrumbs] Fixed work with \"modSymLink\" and \"modWebLink\" resources.\n\n1.7.0 pl1\n==============\n- New snippet pdoCrumbs.\n- New snippet pdoField.\n- New snippet pdoSitemap.\n- New snippet pdoNeighbors.\n- Ability to specify snippet for preparation of fetched rows by parameter \"&prepareSnippet=``\".\n- Added method pdoTools::checkPermissions() for checking user privileges to view the results.\n- Added @TEMPLATE binding. You can use name or id of any template. If empty - will use template of each row.\n- [pdoResources] Improved parameter \"&context\".\n- [pdoResources] Script properties are now passed to chunks. You can send any placeholders to it.\n\n1.6.0 pl1\n==============\n- Fixed compatibility issues in PHP < 5.3.\n\n1.6.0 pl\n==============\n- Added parameter \"&loadModels\" for comma-separated list of 3rd party components that needed for query.\n- Added parameters \"&prepareTVs\" and \"&processTVs\".\n- Added parameters \"&tvFilters\", \"&tvFiltersAndDelimiter\" and \"&tvFiltersAndDelimiter\".\n- Added support of parameters \"&sortbyTV\" and \"&sortdirTV\" for compatibility with getResources.\n- Added ability to use @INLINE and @FILE bindings in all template parameters.\n- Removed method pdoTools::getPlaceholders.\n\n1.5.0 pl2\n==============\n- Fixed sort of decimals in TVs.\n\n1.5.0 pl1\n==============\n- Added processing of simple [[~id]] placeholders in fastMode.\n- Added support of default value for TVs.\n- Improved sort by TVs of types \"number\" and \"date\".\n\n1.5.0 rc\n==============\n- [pdoUsers] Added new snippet \"pdoUsers\".\n- [pdoResources] Fixed \"toSeparatePlaceholders\".\n- [pdoResources] Parameter \"parents\" now supports dash prefix for excluding resources from query by parent.\n- [pdoResources] Fixed issue when snippet runs multiple times at one page.\n\n1.4.1 pl1\n==============\n- Improved \"context\" processing.\n- Fixed \"idx\" when multiple snippets called at one page.\n- Fixed default sortby when joined tables exists.\n\n1.4.1 beta3\n==============\n- Added parameters \"tplCondition\", \"tplOperator\" and \"conditionalTpls\".\n- Added parameter \"select\" for specifying needed columns of selected tables. Can be a JSON string with array.\n- Added parameter \"toSeparatePlaceholders\".\n- Improved \"pdoResources\" snippet.\n\n1.4.0 beta1\n==============\n- Ability to specify JSON string in \"sortby\", for example \"&sortby=`{\"pagetitle\":\"asc\",\"createdon\":\"desc\"}`\"\n- Added automatic replacement of tvs in \"where\" and \"having\" parameters.\n- Added automatic replacement of tvs in \"sortby\" parameter.\n- Removed example snippet\n- Added snippet \"pdoResources\", that could replace \"getResources\".\n- Added method pdoTools::defineChunk() for chunk of given idx.\n- Added \"memory usage\" in log.\n\n1.3.0\n==============\n- Improved placeholders processing when fastMode is enabled.\n- Added support of \"having\" conditions.\n\n1.2.1\n==============\n- Fixed not working \"includeTVs\" when \"leftJoin\" is empty.\n\n1.2.0\n==============\n- Native render of quick placeholders, such as \"<!--pdotools_introtext <blockquote>[[+introtext]]</blockquote>-->\".\n- Added joining of TVs in pdoFetch. Use parameter \"includeTVs\" with comma-separated list of template variables.\n- Added method pdoFetch::setConfig() for proper setting options when you run multiple pdoTools snippets at the one page.\n- Method pdoTools::makeArray is now recursive, for processing a multidimensional arrays of values.\n\n1.1.0\n==============\n- Improved getChunk function.\n\n1.0.1\n==============\n- Fixed setting total in \"chunks\" mode.\n- Improved displaying \"where\" condition in log.\n\n1.0.0\n==============\n- Initial release.\";s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:646:\"--------------------\npdoTools\n--------------------\nAuthor: Vasiliy Naumkin <bezumkin@yandex.ru>\n--------------------\n\nSmall library for creating fast snippets for MODX Revolution that works through PDO.\n\nRequired by Tickets and miniShop2.\n\nMain features\n- Builds queries with xPDO.\n- Retrieve results with PDO.\n- Improved pdoTools::getChunk() function, that processing placeholders faster, than original modX::getChunk().\n\npdoTools snippets will work so faster, than more fields you will retrieve from database at one query.\n\n--------------------\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/bezumkin/pdoTools/issues\n\";}', 'pdoTools', NULL, 2, 11, 0, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('tickets-1.6.16-pl', '2018-04-17 10:45:18', '2018-04-17 07:46:26', '2018-04-17 10:46:26', 0, 1, 1, 0, 'tickets-1.6.16-pl.transport.zip', NULL, 'a:10:{s:9:\"changelog\";s:20886:\"Changelog for Tickets.\n\n1.6.16 pl\n==========\n- [#134] [TicketMeta] Added ability to specify &thread.\n\n1.6.15 pl\n==========\n- Improved load of pdoTools.\n\n1.6.14 pl\n==========\n- [#133] Added trailing semicolon for inline scripts.\n- [#132] Unset service \"action\" property before object save.\n\n1.6.13 pl\n==========\n- Fixed save of TicketAuthorAction with empty rating.\n\n1.6.12 pl\n==========\n- [#130] Respect section settings on ticket create in manager.\n\n1.6.11 pl\n==========\n- Chunks of emails now use the lexicons.\n\n1.6.10 pl\n==========\n- Added escaping of Fenom tags\n\n1.6.9 pl\n==========\n- [mgr] Added search by author of ticket in tickets list.\n- Added new events: OnCommentVote and OnTicketVote.\n- Added new events: OnCommentStar, OnCommentUnStar, OnTicketStar, OnTicketUnStar.\n\n1.6.8 pl\n==========\n- [getTickets] Fixed counting wrong number of views.\n\n1.6.7 pl\n==========\n- Fixed typo in redirect rule of plugin.\n- Returned missing Jevix property sets.\n- Improved tables resolver for update really old versions.\n- Added autoload of Prettify in default.js\n\n1.6.6 pl\n==========\n- Improved installation script for MODX 2.4.\n\n1.6.5 pl\n==========\n- [#126] Fixed possible issue with thread latest comment\n\n1.6.4 pl\n==========\n- [#125] fixed deletion of dependent objects.\n\n1.6.3 pl\n==========\n- Improved performance of installer.\n- Fixed possibility to create a new comment with specified rating.\n- [getTickets] Fixed parameter &toSeparatePlaceholders.\n\n1.6.2 pl\n==========\n- [mgr] Fixed special checkboxes handling in Ticket panel.\n- Improved performance of Tickets saving.\n\n1.6.1 pl\n==========\n- Improved counting of totals in AuthorProfile.\n- More ratings in AuthorProfile.\n- [mgr] Improved authors page.\n\n1.6.0 pl3\n==========\n- [#113] Added ratings for the authors.\n- [#122] [TicketComments] Added parameter &requiredFields for snippet.\n- [#122] [TicketComments] Improved frontend errors handling.\n- [#111] Ability to load any js and css files on Tickets initialization.\n- [#87] Added new tab with the all tickets of the site.\n- [#83] Improved extension of TicketsSection page.\n- [#84] Added profiles of authors.\n- [#83] Improved extension of Ticket page.\n- [#61] Ability to specify url of comments thread for opening from manager.\n- [mgr] Improved Tickets grid on TicketsSection page.\n- [mgr] Improved Threads grid.\n- [mgr] Improved Comments grid.\n- [mgr] More Comments events.\n- [mgr] More Threads events.\n- [mgr] New method Tickets::loadManagerFiles for 3rd party components.\n- Updated MarkItUp to version 1.1.14.\n- Updated Plupload to version 2.1.2.\n- Added system settings with tree icons for MODX 2.3.\n- Code reformat.\n- [#120] Fixed permissions in comments processors.\n- [#119] Fixed pagination in comments grid.\n- [#118] Tickets::sanitizeString can process simple arrays.\n- [#117] Fixed work with \"tvs_below_content\".\n- [#114] [getComments] Fixed showDeleted parameter.\n- [#108] Improved method TicketThread::buildTree.\n- [#107] Fixed missing tag \"bad\".\n- [getComments] Fixed displaying deleted comments.\n- [#93] [TicketComments] Fixed notices about unpublished comments to admins.\n- [#81] [TicketForm] Added parameter &bypassFields.\n\n1.5.1 pl\n==========\n- Improved editing html entities in page titles.\n\n1.5.0 pl\n==========\n- Ability to specify multiple previews for uploaded images in media source.\n- [#115] Fixed tickets uri generation.\n- [#110] Fixed aggregate connection to modUser in TicketComment.\n- [#95] Ability to remove user files for members of group \"Administrator\".\n- Ability to count guests views of pages. New system setting \"tickets.count_guests\".\n\n1.4.2 pl1\n==========\n- Improved sanitization of MODX tags in snippet TicketForm.\n\n1.4.2 rc2\n==========\n- Changed Gravatar url to https protocol.\n- Fixed work with MODX 2.3.\n- Fixed sort of tickets grid.\n- [#100] Fixed tables resolver.\n- Fixed rare bug with users combo on advanced site configuration.\n\n1.4.1 pl\n==========\n- Improved redirect of NotFound tickets in plugin.\n\n1.4.0 pl1\n==========\n- Fixed bug with listing of all comments in empty section.\n- Fixed processing of \"tickets.ticket_max_cut\" in tickets processor.\n- Comments are now using users photo if exists.\n- Added parameter \"resources\" for TicketForm.\n\n1.4.0 pl\n==========\n- Added section settings.\n- Removed system settings \"ticket_id_as_alias\" and \"section_id_as_alias\".\n- System settings \"ticket_show_in_tree_default\", \"ticket_isfolder_force\" and \"ticket_hidemenu_force\" moved to section settings.\n- System settings \"default_template\", \"disable_jevix_default\", \"process_tags_default\" moved to section settings.\n- Added ability to specify custom uris for children tickets.\n- Added subscriptions for sections of tickets.\n- Added chunks \"tpl.Tickets.ticket.email.subscription\" and \"tpl.Tickets.sections.wrapper\".\n- New methods: TicketsSection:Subscribe() and TicketsSection::isSubscribed().\n- Added new system setting \"ticket_max_cut\". Now you can specify length of text without tag \"cut\".\n- Added ability to add tickets and comments into favorites.\n- Added new snippet \"getComments\".\n- Added new snippet \"getStars\".\n- Added ability to publish and unpublish tickets.\n- Added new system setting \"unpublished_ticket_page\".\n- Added ability to upload files for tickets.\n- Added permissions for work with files.\n- Improved contexts support.\n- Improved parameter \"returnIds\" in snippets.\n- Improved handling of \"ticketForm\" properties and sections verification.\n- Improved notifications about unpublished comments and tickets.\n- Improved vote for any resource with TicketMeta.\n- Improved list chunks.\n- [TicketForm] Added ability to disable sisyphus for any fields by setting class \"disable-sisyphus\".\n- [TicketComments] Added parameter \"autoPublishGuest\" for more flexible management of comments.\n- [#80] Fixed innerJoin in getTickets.\n- [#76] Fixed auto publication of tickets.\n- [#75] Ability to vote for any resource.\n- [#74] Fixed ticket panel for new versions of MODX.\n- [#72] Fixed handling TVs.\n- [#64] Fixed forced processing of introtext by Jevix.\n- [mgr] Disabled ability to delete comment via update form.\n- Fixed default template on ticket creation.\n- Fixed saving ticket properties.\n\n1.3.0 rc3\n==========\n- [#59] Added changing of opacity of bad comments.\n- [#58] Fixed switching the document class from modDocument to Ticket.\n- [#57] Added more user placeholders to preview and create comment.\n- [#56] Added field \"description\".\n- [#55] Fixed changing of alias when user edit ticket from frontend.\n- Added placeholder [[+idx]] to comments.\n- Added rating of comments.\n- Added rating of tickets.\n- Added new snippet TicketMeta.\n- Added moving to the parent comment and back.\n- Improved snippet TicketLatest.\n- Improved clearing of cache right after ticket creation.\n- Added checkbox \"show_in_tree\" in the panel of Ticket.\n- Added system setting \"ticket_show_in_tree_default\".\n- Changed some default system setting.\n- Added column \"owner\" to \"TicketVote\" for select rating of users.\n- Added hotkeys for preview and submit tickets and comments.\n- Added anonymous comments.\n- Added simple math captcha for anonymous users.\n- Removed inline onclick events.\n- Fixed checking of \"requiredFields\" in TicketForm.\n- Fixed restoring of old data in new ticket form by Sisyphus.\n- Improved javascript for Internet Explorer.\n- Improved snippets because closed thread can contain comments.\n\n1.2.4 rc5\n==========\n- Improved update chunks on package upgrade.\n- Fixed word \"Array\" when no tickets in section.\n- Added requirement of pdoTools 1.9.x.\n- Thread and comments are removed along with the page.\n- Added aggregate relationship \"Resource\" for TicketThread.\n- Added parameter \"context\" in snippet \"TicketForm\".\n- Action.php works with respect to contexts.\n- Fixed web/sections/getlist processor.\n- Changed permission in mgr/comment/update from \"update_document\" to \"comment_save\".\n\n1.2.4 rc1\n==========\n- Added two system settings: \"section_id_as_alias\" and \"ticket_id_as_alias\".\n- Added \"uri_override\" checkbox.\n- Improved snippets getTickets and getTicketsSection.\n- Improved snippet \"TicketForm\" - see new properties.\n- Improved chunks for working on iOS.\n- Updated chunks for Bootstrap 3.\n- Ability to update chunks on package upgrade.\n- Removed chunk \"tpl.Tickets.form.section.row\".\n- Fixed placeholder [[+children]] when fastMode = 0 in TicketComments.\n- Ability to move comment from one thread to another.\n- Improved check of users authentication.\n- [#54] Field idx in TicketsSection.\n- [#47] Auto hide \"new comment\" button.\n- [#43] Parameter &redirectUnpublished in TicketForm.\n\n1.2.3 pl3\n==========\n- Fixed requirement of TicketThread in snippet TicketLatest for showing last tickets.\n- Improved snippet TicketLatest.\n- [#52] Fixed checkboxes, again.\n- Fixed duplicate replies in TicketComments when fastMode = 0.\n- Removed user and email inputs in comment window in manager.\n\n1.2.2 pl\n==========\n- Fixed load of CMP scripts\n\n1.2.1 pl1\n==========\n- Fixed page with TicketsSection in manager for work in php 5.5.\n\n1.2.0 pl\n==========\n- Replaced virtual field \"comment\" in TicketThread to real.\n- Optimized snippet \"getTicketsSections\" for work on big sites.\n\n1.1.3 pl\n==========\n- [#50] Added button for ticket duplicate in section grid.\n- Improved two comboboxes in manager: \"createdon\" and \"parent\".\n\n1.1.2 pl\n==========\n- [#51] Fixed work of checkboxes in manager.\n\n1.1.1 pl\n==========\n- Improved load of pdoTools.\n- Improved registration of javascript on frontend.\n- Updated jQuery to version 1.10.2.\n- Updated jQuery.Form to version 20131017.\n- Added jQuery.Sisyphus for persisting your forms data in a browsers local storage.\n- [#49] Added action fields to Ticket actions for more Form Customization.\n- [#44] Fixed time format in tickets list.\n\n1.1.0 pl\n==========\n- Added parameter \"cacheTime\" for TicketLatest.\n- Fixed method Ticket::toArray().\n- Added placeholder [[+date_ago]] to class \"Ticket\". You can use $ticket->get(\'date_ago\');\n- Added new system parameter \"section_content_default\".\n- Fixed blank template when create new ticket if no \"tickets.default_template\" set.\n- Added more checkboxes for Ticket in manager.\n- Added new system parameters \"ticket_hidemenu_force\" and \"ticket_isfolder_force\". You can disable them.\n- If user edits ticket which was moved in the category into which the user has no rights, this category will be saved.\n\n1.1.0 rc2\n==========\n- Fixed snippets for work with pdoTools 1.8.0.\n\n1.1.0 rc1\n==========\n- Improved send of emails.\n- Fixed unsubscription message.\n- Email notifications are not sent to the authors of events.\n\n1.1.0 beta2\n==========\n- Unread comments class removes only when it refreshed manually.\n- Added JSON field \"properties\" to \"TicketComment\". Now you can store additional data in comments.\n- Functions json_encode() and json_decode() replaced to modX::toJSON() and modX::fromJSON().\n- Snippet \"TicketForm\" was completely rewrited.\n- Added parameters \"allowedFields\" and \"requiredFields\" to snippet \"TicketForm\". You can use TVs names.\n- Tickets created and updated through ajax without reload of form.\n- Error messages is not sticky anymore.\n\n1.1.0 beta\n==========\n- Added system setting \"tickets.mail_from\"\n- Added system setting \"tickets.mail_from_name\"\n- Added system setting \"tickets.mail_bcc\" for sending notifications for site admins.\n- Added system setting \"tickets.mail_bcc_level\" for setting level of admin notifications.\n- Added chunk \"tpl.Tickets.ticket.email.bcc\" for admin notification about new ticket.\n- Added chunk \"tpl.Tickets.comment.email.bcc\" for admin notification about new comment.\n- Added chunk \"tpl.Tickets.comment.email.subscription\" for notification of thread subscribers.\n- Improved responses from server through ajax.\n- New class \"TicketQueue\" for mail queue.\n- New methods: Tickets::addQueue(), TicketThread:isSubscribed() and Tickets::Subscribe() that using TicketThread::Subscribe().\n- Added system setting \"tickets.mail_queue\" for specifying whether to use delayed send of mail.\n- [#37] Fixed issue with loading incorrect TVs when create new Ticket.\n- [#35] Fixed javascript bug in comments, when \"autoPublish=0\".\n- [#34] Unprocessed placeholders are now removed from preview.\n- [#30] TicketsSection now has its own context menu in manager.\n- [#29] Fixed errors when snippet \"TicketLatest\" called before \"TicketComments\".\n- Fixed issue with change template when create new Ticket.\n- Fixed issue with hidden new comment, when you reply to another one, and it was changed while you typing.\n\n1.0.0 pl1 (requires pdoTools 1.4.1 or later)\n==========\n- Add ukrainian lang for frontend.\n- Improved all snippets.\n- Fixed parameter \"parents\" in \"TicketLatest\".\n\n1.0.0 rc4\n==========\n- Fixed comments bugs when work in limited depth mode.\n- Smooth scroll to just created comment.\n- Improved ajax update of comments.\n\n1.0.0 rc3\n==========\n- Comments fixes and improvements\n\n1.0.0 rc2\n==========\n- Added comments level dots in default css.\n- Added indication of unseen comments.\n- Added ajax navigation through new comments.\n- Added ajax fetching of new comments.\n- Fixed primary keys in model of component.\n- Added \"mode\" indication in comment save: \"preview\" or \"create\".\n- Improved gravatar hash generation.\n\n1.0.0 rc1\n==========\n- Improved snippet TicketLatest for displaying latest comments of user\n\n1.0.0 rc (requires pdoTools 1.2.0 or later)\n==========\n- Fixed default parameters of snippets. \"showLog\" and \"fastMode\" are now really disabled by default.\n- Rewrited snippet \"getTickets\". See snippet properties for details.\n- Rewrited snippet \"getTicketsSections\". See snippet properties for details.\n- Rewrited snippet \"TicketLatest\". See snippet properties for details.\n- Rewrited snippet \"TicketComments\". See snippet properties for details.\n- Updated awesome html editor \"MarkItUp\" to version 1.1.14.\n- Added system parameters \"tickets.frontend_js\" and \"tickets.frontend_css\" for loading scripts and styles.\n- Merged and rewrited default frontend styles and scripts.\n- Replaced Tickets::getChunk() by pdoTools::getChunk().\n- Added \"jGrowl\" script for frontend notifications.\n- [#5] Fixed bug with no field \"resource\" when preview comment.\n- [#6] Added parameter \"depth\" to snippet \"TicketComments\" for limitation thread depth.\n- [#7] Added parameter \"formBefore\" to snippet \"TicketComments\" for specify where to show form, before or after.\n- [#8] Sorting of thread comments depends from parameter \"formBefore\".\n- [#11], [#12] Added checking of parent comment status when you reply on it.\n- [#15] Added comments moderation. Check new parameter \"autoPublish\" of snippet \"TicketComments\".\n- [#18] Parameters of thread now saving in \"TicketThread\" object and updates on page refresh.\n- [mgr] Added ability to \"close\" thread. When thread is closed, comments are shown but adding new is disabled.\n- [mgr] Added ability to \"publish\" and \"unpublish\" comments.\n\n0.9.4\n==========\n- Fixed bug with ignoring default template of ticket on frontend.\n\n0.9.3\n==========\n- [mgr] Template fix on ticket create\n- [mgr] Fixed permissions for manage comments\n- [mgr] Fixed non-install of some system parameters\n- Improved snippets for calling them multiple times on one page\n- Improved verification of ticket fields when create\n- Fixed endless redirect on unpublished or deleted tickets\n- Parameter \"showLog\" is now disabled by default in snippets\n- Improved lexicons\n\n0.9.2\n==========\n- [mgr] Fixed bug with no refresh on ticket create.\n- Fixed alias of ticket, created from front.\n\n0.9.1\n==========\n- [mgr] Fixed bug with no changing author of the ticket when creating it in manager.\n- [mgr] Ability to change parent of the comment.\n- [mgr] Ability to specify alias of the ticket.\n- [mgr] Fixed empty dates in comment window.\n- Placeholder [[+date_ago]] in snippet TicketLatest now created from \"createdon\" property.\n\n0.9.0\n==========\n- Fixes for PHP 5.4\n- Fix error when update ticket with disabled \"automatic_alias\".\n- Deleted /component/tickets/pdotools/.\n- Automatic installation of pdoTools from MODX repository.\n- 2 new snippets: getTickets and getSections.\n- getTickets is set by default for empty Section content.\n- Changed chunk tpl.Tickets.list.row for displaying unread comments count.\n- New chunk tpl.Tickets.sections.row.\n\n0.8.3\n==========\n- MarkitUp javascript is now loadings at the bottom of web page.\n- Private tickets. If ticket has this param, users will must be have permission \"ticket_view_private\" for reading it. Otherwise they will be redirected to \"tickets.private_ticket_page\".\n- Fix processing MODX tags when edit comment.\n- Little chunks fixes because of ajax issue in some browsers.\n- Added parameter \"toPlaceholder\" to snippet TicketLatest.\n\n0.8.2\n==========\n- Fixed bug with empty string after Jevix sanitization, if there was some html entities, such as &_nbsp; or &_raquo;.\n- Added virtual field \"comments\" to class TicketThread. Now you can get it as they were natural with TicketThread::get() or TicketThread::toArray().\n- Update last comment id and last comment time in thread on comment remove.\n\n0.8.1\n==========\n- Added clearing cache of ticket on comments create\\update\\delete\\remove. Now you can call [[TicketComments]] cached and do not forget to activate next parameter.\n- New system parameter \"tickets.clear_cache_on_comment_save\". If false, tickets cache will not be cleared on comment. Use it with uncached snippet call.\n- No email notices on comments update.\n- Improved redirect to tickets in plugin. Now it understands any nesting level.\n\n0.8.0\n==========\n- [mgr] Added changing section of the ticket.\n- [mgr] Added tab with all comments.\n- Added editing of comments by author.\n- New system parameter \"tickets.comment_edit_time\". You can set number of seconds during which comment can be edited.\n- Added pretty dates formatting - Tickets::formatDate().\n- Added placeholder [[+date_ago]] to comments chunks.\n- Added placeholder [[+date_ago]] to last tickets and last comments chunks.\n- Added virtual fields \"comments\" and \"views\" to class TicketsSection. Now you can get it as they were natural with TicketsSection::get() or TicketsSection::toArray().\n- Improved chunks processing.\n- Normal MODX tags when update ticket on frontend. [[*id]] instead of &#091;&#091;*id&#093;&#093;\n- When you request ticket, that was moved into another section, with old url - user will be redirected to right page.\n\n0.7.0\n==========\n- [mgr] Fixed default settings when create new ticket.\n- Added placeholders of user profile in comments chunks.\n- Added plugins events\n- New system setting \"snippet_prepare_comment\" for custom prepare data of the comment.\n\n0.6.0\n==========\n- [mgr] Added Custom Manager Page for manage comments. Now you can use TicketComments without Tickets.\n- [mgr] Fixed selecting default template on ticket create.\n- Improved handling of MODX tags in Ticket::getContent.\n- Improved frontend javascript files for tickets and comments.\n- Removed parameters &useJs=`` and &useCss=`` from snippet TicketComments.\n- Added counting of ticket views by users.\n- Latest comments now respects status of resource. It must be published and not deleted.\n- Added disabling comments to ticket by setting flag \"deleted\" to comments thread.\n- Added virtual fields \"comments\" and \"views\" to class Ticket. Now you can get it as they were natural with Ticket::get() or Ticket::toArray().\n- Removed snippet getCommentsCount. Just use placeholder [[+comments]] or [[+views]] in chunks.\n- Added placeholders [[+comments]] and [[+views]] to ticket page.\n- Localized chunks.\n- Chunks and snippets now are static by default.\n\n0.5.0\n==========\n- [mgr] #2 Added support of TinyMCE\n- [mgr] Fixed maximize comment window.\n- [mgr] New ticket option \"disable Jevix\". If true - all content of the page will be displayed without filtration.\n- [mgr] New ticket option \"process MODX tags\". If true - all tags on ticket page will be processed by MODX parser.\n- [mgr] New system parameter \"disable_jevix_default\". Sets default value for new ticket.\n- [mgr] New system parameter \"process_tags_default\". Sets default value for new ticket.\n- Auto generation of introtext field by cutting text before tag <cut/> in ticket.\n- When displaying tickets, tag <cut/> transformed into anchor <a name=\"cut\"></a>\n- Improved getLatestComments - now much more faster.\n\n0.4.1\n==========\n- Added default content for TicketsSection in manager\n\n0.4.0\n==========\n- Fixed installer\n- Automatic installation of Jevix and creation of property sets for filter comments and tickets\n\n0.3.3\n==========\n- Improved Ticket class, for better work with its cache\n- Fixed work with dates on Ticket update\n\n0.3.2\n==========\n- Custom manager page for Ticket\n\n0.3.1\n==========\n- Security fixes\n- comment_save permission is enabled in TicketsUserPolicy by default\n- Snippet tagCut\n\n0.3.0\n==========\n- Custom manager page for TicketsSection\n\n0.2.0\n==========\n- Removed dependency on Quip. Now comments are very fast and handy.\n- Various improvements and bug fixes\n\n0.1.0\n==========\n- First beta\";s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:251:\"--------------------\nTickets\n--------------------\nAuthor: Vasiliy Naumkin <bezumkin@yandex.ru>\n--------------------\n\nTickets system for MODX Revolution.\n\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/bezumkin/Tickets/issues\";s:6:\"chunks\";a:28:{s:29:\"tpl.Tickets.comment.email.bcc\";s:242:\"[[%ticket_comment_email_bcc_intro?\n    &name=`[[+name]]`\n    &resource=`[[+resource]]`\n    &pagetitle=`[[+pagetitle]]`\n]]\n\n<pre>[[+text]]</pre>\n<br/><br/>\n\n<a href=\"[[~[[+resource]]?scheme=`full`]]#comment-[[+id]]\">[[%ticket_email_view]]</a>\n\";s:31:\"tpl.Tickets.comment.email.owner\";s:244:\"[[%ticket_comment_email_owner_intro?\n    &name=`[[+name]]`\n    &resource=`[[+resource]]`\n    &pagetitle=`[[+pagetitle]]`\n]]\n\n<pre>[[+text]]</pre>\n<br/><br/>\n\n<a href=\"[[~[[+resource]]?scheme=`full`]]#comment-[[+id]]\">[[%ticket_email_reply]]</a>\";s:31:\"tpl.Tickets.comment.email.reply\";s:320:\"[[%ticket_comment_email_reply_intro?\n    &name=`[[+name]]`\n    &resource=`[[+resource]]`\n    &pagetitle=`[[+pagetitle]]`\n]]\n\n<pre>[[+text]]</pre>\n<br/><br/>\n<a href=\"[[~[[+resource]]?scheme=`full`]]#comment-[[+id]]\">[[%ticket_email_reply]]</a>\n<br/><br/>\n\n[[%ticket_comment_email_reply_text]]\n<pre>[[+parent_text]]</pre>\";s:38:\"tpl.Tickets.comment.email.subscription\";s:250:\"[[%ticket_comment_email_subscription_intro?\n    &name=`[[+name]]`\n    &resource=`[[+resource]]`\n    &pagetitle=`[[+pagetitle]]`\n]]\n\n<pre>[[+text]]</pre>\n<br/><br/>\n\n<a href=\"[[~[[+resource]]?scheme=`full`]]#comment-[[+id]]\">[[%ticket_email_view]]</a>\";s:37:\"tpl.Tickets.comment.email.unpublished\";s:225:\"[[%ticket_comment_email_unpublished_intro?\n    &name=`[[+name]]`\n    &resource=`[[+resource]]`\n    &pagetitle=`[[+pagetitle]]`\n]]\n\n<pre>[[+text]]</pre>\n<br/><br/>\n\n<a href=\"[[+manager_url]]\">[[%ticket_email_all_comments]]</a>\";s:24:\"tpl.Tickets.comment.form\";s:899:\"<h4 id=\"comment-new-link\">\n	<a href=\"#\" class=\"btn btn-default\">[[%ticket_comment_create]]</a>\n</h4>\n\n<div id=\"comment-form-placeholder\">\n	<form id=\"comment-form\" action=\"\" method=\"post\" class=\"well\">\n		<div id=\"comment-preview-placeholder\"></div>\n		<input type=\"hidden\" name=\"thread\" value=\"[[+thread]]\" />\n		<input type=\"hidden\" name=\"parent\" value=\"0\" />\n		<input type=\"hidden\" name=\"id\" value=\"0\" />\n\n		<div class=\"form-group\">\n			<label for=\"comment-editor\"></label>\n			<textarea name=\"text\" id=\"comment-editor\" cols=\"30\" rows=\"10\" class=\"form-control\"></textarea>\n		</div>\n\n		<div class=\"form-actions\">\n			<input type=\"button\" class=\"btn btn-default preview\" value=\"[[%ticket_comment_preview]]\" title=\"Ctrl + Enter\" />\n			<input type=\"submit\" class=\"btn btn-primary submit\" value=\"[[%ticket_comment_save]]\" title=\"Ctrl + Shift + Enter\" />\n			<span class=\"time\"></span>\n		</div>\n	</form>\n</div>\";s:30:\"tpl.Tickets.comment.form.guest\";s:1615:\"<h4 id=\"comment-new-link\">\n	<a href=\"#\" class=\"btn btn-default\">[[%ticket_comment_create]]</a>\n</h4>\n\n<div id=\"comment-form-placeholder\">\n	<form id=\"comment-form\" action=\"\" method=\"post\" class=\"well\">\n		<div id=\"comment-preview-placeholder\"></div>\n		<input type=\"hidden\" name=\"thread\" value=\"[[+thread]]\" />\n		<input type=\"hidden\" name=\"parent\" value=\"0\" />\n		<input type=\"hidden\" name=\"id\" value=\"0\" />\n\n		<div class=\"form-group\">\n			<label for=\"comment-name\">[[%ticket_comment_name]]</label>\n			<input type=\"text\" name=\"name\" value=\"[[+name]]\" id=\"comment-name\" class=\"form-control\" />\n			<span class=\"error\"></span>\n		</div>\n\n		<div class=\"form-group\">\n			<label for=\"comment-email\">[[%ticket_comment_email]]</label>\n			<input type=\"text\" name=\"email\" value=\"[[+email]]\" id=\"comment-email\" class=\"form-control\" />\n			<span class=\"error\"></span>\n		</div>\n\n		<div class=\"form-group\">\n			<label for=\"comment-editor\"></label>\n			<textarea name=\"text\" id=\"comment-editor\" cols=\"30\" rows=\"10\" class=\"form-control\"></textarea>\n		</div>\n\n		[[+captcha]]\n\n		<div class=\"form-actions\">\n			<input type=\"button\" class=\"btn btn-default preview\" value=\"[[%ticket_comment_preview]]\" title=\"Ctrl + Enter\" />\n			<input type=\"submit\" class=\"btn btn-primary submit\" value=\"[[%ticket_comment_save]]\" title=\"Ctrl + Shift + Enter\" />\n			<span class=\"time\"></span>\n		</div>\n	</form>\n</div>\n\n<!--tickets_captcha\n<div class=\"form-group\">\n	<label for=\"comment-captcha\" id=\"comment-captcha\">[[+captcha]]</label>\n	<input type=\"text\" name=\"captcha\" value=\"\" id=\"comment-captcha\" class=\"form-control\" />\n	<span class=\"error\"></span>\n</div>\n-->\";s:26:\"tpl.Tickets.comment.latest\";s:429:\"<div class=\"tickets-latest-row[[+guest]]\">\n	<span class=\"user\"><i class=\"glyphicon glyphicon-user\"></i> [[+fullname]]</span> <span class=\"date\">[[+date_ago]]</span>\n	<br/>\n	<span class=\"ticket\">\n		<a href=\"[[~[[+ticket.id]]]]#comment-[[+id]]\">[[+ticket.pagetitle]]</a>\n	</span>\n	<nobr><i class=\"glyphicon glyphicon-comment\"></i> <span class=\"comments\">[[+comments]]</span></nobr>\n</div>\n<!--tickets_guest  ticket-comment-guest-->\";s:28:\"tpl.Tickets.comment.list.row\";s:2047:\"<div class=\"ticket-comment-row ticket-comment\" id=\"comment-[[+id]]\" data-id=\"[[+id]]\">\n	<div class=\"ticket-comment-body[[+guest]]\">\n		<div class=\"ticket-comment-header\">\n			<img src=\"[[+avatar]]\" class=\"ticket-avatar\" alt=\"\" />\n			<span class=\"ticket-comment-author\">[[+fullname]]</span>\n			<span class=\"ticket-comment-createdon\">[[+date_ago]]</span>[[+comment_was_edited]]\n			<span class=\"ticket-comment-link\"><a href=\"[[+url]]#comment-[[+id]]\">#</a></span>\n			<span class=\"ticket-comment-star[[+can_star]]\">[[+stared]][[+unstared]]</span>\n\n			<span class=\"ticket-comment-rating[[+can_vote]][[+cant_vote]]\">\n				<span class=\"rating[[+rating_positive]][[+rating_negative]]\" title=\"[[%ticket_rating_total]] [[+rating_total]]: ↑[[+rating_plus]] [[%ticket_rating_and]] ↓[[+rating_minus]]\">[[+rating]]</span>\n				<span class=\"vote plus[[+voted_plus]]\" title=\"[[%ticket_like]]\"><i class=\"glyphicon glyphicon-arrow-up\"></i></span>\n				<span class=\"vote minus[[+voted_minus]]\" title=\"[[%ticket_dislike]]\"><i class=\"glyphicon glyphicon-arrow-down\"></i></span>\n			</span>\n		</div>\n		<div class=\"ticket-comment-text\">\n			[[+text]]\n		</div>\n	</div>\n\n	<a href=\"[[~[[+section.id]]]]\" class=\"ticket-comment-section\"><i class=\"glyphicon glyphicon-folder-open\"></i> [[+section.pagetitle]]</a> &rarr;\n	<a href=\"[[~[[+ticket.id]]]]\" class=\"ticket-comment-ticket\">[[+ticket.pagetitle]]</a> &nbsp;\n	<span class=\"ticket-comment-comments\"><i class=\"glyphicon glyphicon-comment\"></i> [[+comments]]</span>\n</div>\n<!--tickets_comment_was_edited <span class=\"ticket-comment-edited\">([[%ticket_comment_was_edited]])</span>-->\n<!--tickets_can_vote  active-->\n<!--tickets_cant_vote  inactive-->\n<!--tickets_rating_positive  positive-->\n<!--tickets_rating_negative  negative-->\n<!--tickets_voted_plus  voted-->\n<!--tickets_voted_minus  voted-->\n<!--tickets_guest  ticket-comment-guest-->\n<!--tickets_can_star  active-->\n<!--tickets_stared <i class=\"glyphicon glyphicon-star stared star\"></i>-->\n<!--tickets_unstared <i class=\"glyphicon glyphicon-star unstared star\"></i>-->\";s:25:\"tpl.Tickets.comment.login\";s:99:\"<div class=\"ticket-comments alert alert-warning\">\n    <p>[[%ticket_comment_err_no_auth]]</p>\n</div>\";s:28:\"tpl.Tickets.comment.one.auth\";s:2412:\"<li class=\"ticket-comment[[+comment_new]]\" id=\"comment-[[+id]]\" data-parent=\"[[+parent]]\" data-newparent=\"[[+new_parent]]\" data-id=\"[[+id]]\">\n	<div class=\"ticket-comment-body[[+guest]][[+bad]]\">\n		<div class=\"ticket-comment-header\">\n			<div class=\"ticket-comment-dot-wrapper\"><div class=\"ticket-comment-dot\"></div></div>\n			<img src=\"[[+avatar]]\" class=\"ticket-avatar\" alt=\"\" />\n			<span class=\"ticket-comment-author\">[[+fullname]]</span>\n			<span class=\"ticket-comment-createdon\">[[+date_ago]]</span>[[+comment_was_edited]]\n			<span class=\"ticket-comment-link\"><a href=\"[[+url]]#comment-[[+id]]\">#</a></span>\n			<span class=\"ticket-comment-star[[+can_star]]\">[[+stared]][[+unstared]]</span>\n			[[+has_parent]]\n			<span class=\"ticket-comment-down\"><a href=\"#\" data-child=\"\">&darr;</a></span>\n			<span class=\"ticket-comment-rating[[+can_vote]][[+cant_vote]]\">\n				<span class=\"rating[[+rating_positive]][[+rating_negative]]\" title=\"[[%ticket_rating_total]] [[+rating_total]]: ↑[[+rating_plus]] [[%ticket_rating_and]] ↓[[+rating_minus]]\">[[+rating]]</span>\n				<span class=\"vote plus[[+voted_plus]]\" title=\"[[%ticket_like]]\"><i class=\"glyphicon glyphicon-arrow-up\"></i></span>\n				<span class=\"vote minus[[+voted_minus]]\" title=\"[[%ticket_dislike]]\"><i class=\"glyphicon glyphicon-arrow-down\"></i></span>\n			</span>\n		</div>\n		<div class=\"ticket-comment-text\">\n			[[+text]]\n		</div>\n	</div>\n	<div class=\"comment-reply\">\n		<a href=\"#\" class=\"reply\">[[%ticket_comment_reply]]</a>\n		[[+comment_edit_link]]\n	</div>\n	<ol class=\"comments-list\">[[+children]]</ol>\n</li>\n<!--tickets_comment_edit_link <a href=\"#\" class=\"edit\">[[%ticket_comment_edit]]</a>-->\n<!--tickets_comment_was_edited <span class=\"ticket-comment-edited\">([[%ticket_comment_was_edited]])</span>-->\n<!--tickets_comment_new  ticket-comment-new-->\n<!--tickets_can_vote  active-->\n<!--tickets_cant_vote  inactive-->\n<!--tickets_rating_positive  positive-->\n<!--tickets_rating_negative  negative-->\n<!--tickets_voted_plus  voted-->\n<!--tickets_voted_minus  voted-->\n<!--tickets_guest  ticket-comment-guest-->\n<!--tickets_has_parent <span class=\"ticket-comment-up\"><a href=\"[[+url]]#comment-[[+parent]]\" data-id=\"[[+id]]\" data-parent=\"[[+parent]]\">&uarr;</a></span>-->\n<!--tickets_can_star  active-->\n<!--tickets_stared <i class=\"glyphicon glyphicon-star stared star\"></i>-->\n<!--tickets_unstared <i class=\"glyphicon glyphicon-star unstared star\"></i>-->\n\";s:31:\"tpl.Tickets.comment.one.deleted\";s:199:\"<li class=\"ticket-comment\" id=\"comment-[[+id]]\">\n	<div class=\"ticket-comment-body alert alert-warning\">\n		[[%ticket_comment_deleted_text]]\n	</div>\n	<ol class=\"comments-list\">[[+children]]</ol>\n</li>\n\";s:29:\"tpl.Tickets.comment.one.guest\";s:1336:\"<li class=\"ticket-comment\" id=\"comment-[[+id]]\">\n	<div class=\"ticket-comment-body[[+bad]]\">\n		<div class=\"ticket-comment-header\">\n			<div class=\"ticket-comment-dot-wrapper\"><div class=\"ticket-comment-dot\"></div></div>\n			<img src=\"[[+avatar]]\" class=\"ticket-avatar\" alt=\"\" />\n			<span class=\"ticket-comment-author\">[[+fullname]]</span>\n			<span class=\"ticket-comment-createdon\">[[+date_ago]]</span>\n			<span class=\"ticket-comment-link\"><a href=\"[[+url]]#comment-[[+id]]\">#</a></span>\n\n			[[+has_parent]]\n			<span class=\"ticket-comment-down\"><a href=\"#\" data-child=\"\">&darr;</a></span>\n\n			<span class=\"ticket-comment-rating inactive\">\n				<span class=\"rating[[+rating_positive]][[+rating_negative]]\">\n					[[+rating]]\n				</span>\n				<span class=\"plus\" title=\"[[%ticket_like]]\">\n					<i class=\"glyphicon glyphicon-arrow-up\"></i>\n				</span>\n				<span class=\"minus\" title=\"[[%ticket_dislike]]\">\n					<i class=\"glyphicon glyphicon-arrow-down\"></i>\n				</span>\n			</span>\n		</div>\n		<div class=\"ticket-comment-text\">\n			[[+text]]\n		</div>\n	</div>\n	<ol class=\"comments-list\">[[+children]]</ol>\n</li>\n<!--tickets_rating_positive  positive-->\n<!--tickets_rating_negative  negative-->\n<!--tickets_has_parent <span class=\"ticket-comment-up\"><a href=\"[[+url]]#comment-[[+parent]]\" data-id=\"[[+id]]\" data-parent=\"[[+parent]]\">&uarr;</a></span>-->\";s:27:\"tpl.Tickets.comment.wrapper\";s:635:\"<div class=\"comments\">\n	[[+modx.user.id:isloggedin:is=`1`:then=`\n	<span class=\"comments-subscribe pull-right\">\n		<label for=\"comments-subscribe\" class=\"checkbox\">\n			<input type=\"checkbox\" name=\"\" id=\"comments-subscribe\" value=\"1\" [[+subscribed]] /> [[%ticket_comment_notify]]\n		</label>\n	</span>\n	`:else=``]]\n\n	<h3 class=\"title\">[[%comments]] (<span id=\"comment-total\">[[+total]]</span>)</h3>\n\n	<div id=\"comments-wrapper\">\n		<ol class=\"comment-list\" id=\"comments\">[[+comments]]</ol>\n	</div>\n\n	<div id=\"comments-tpanel\">\n		<div id=\"tpanel-refresh\"></div>\n		<div id=\"tpanel-new\"></div>\n	</div>\n</div>\n\n<!--tickets_subscribed checked-->\n\";s:23:\"tpl.Tickets.form.create\";s:1356:\"<form class=\"well create\" method=\"post\" action=\"\" id=\"ticketForm\">\n	<div id=\"ticket-preview-placeholder\"></div>\n\n	<input type=\"hidden\" name=\"tid\" value=\"0\" />\n\n	<div class=\"form-group\">\n		<label for=\"ticket-sections\">[[%tickets_section]]</label>\n		<select name=\"parent\" class=\"form-control\" id=\"ticket-sections\">[[+sections]]</select>\n		<span class=\"error\"></span>\n	</div>\n\n	<div class=\"form-group\">\n		<label for=\"ticket-pagetitle\">[[%ticket_pagetitle]]</label>\n		<input type=\"text\" class=\"form-control\" placeholder=\"[[%ticket_pagetitle]]\" name=\"pagetitle\" value=\"\" maxlength=\"50\" id=\"ticket-pagetitle\"/>\n		<span class=\"error\"></span>\n	</div>\n\n	<div class=\"form-group\">\n		<textarea class=\"form-control\" placeholder=\"[[%ticket_content]]\" name=\"content\" id=\"ticket-editor\" rows=\"10\"></textarea>\n		<span class=\"error\"></span>\n	</div>\n\n	<div class=\"ticket-form-files\">\n		[[+files]]\n	</div>\n\n	<div class=\"form-actions row\">\n		<div class=\"col-md-6\">\n			<input type=\"button\" class=\"btn btn-default preview\" value=\"[[%ticket_preview]]\" title=\"Ctrl + Enter\" />\n		</div>\n		<div class=\"col-md-6 move-right\">\n			<input type=\"button\" class=\"btn btn-primary publish\" name=\"publish\" value=\"[[%ticket_publish]]\" title=\"\" />\n			<input type=\"submit\" class=\"btn btn-danger draft\" name=\"draft\" value=\"[[%ticket_draft]]\" title=\"Ctrl + Shift + Enter\" />\n		</div>\n	</div>\n</form>\";s:21:\"tpl.Tickets.form.file\";s:752:\"<div class=\"ticket-file[[+deleted]][[+new]]\" data-id=\"[[+id]]\">\n	<a href=\"[[+url]]\" class=\"ticket-file-link\" title=\"[[+file]]\" target=\"_blank\">\n		<div class=\"ticket-file-image-wrapper\">\n			[[+file]]\n		</div>\n	</a>\n	<div class=\"ticket-file-meta\">\n		<a href=\"#\" class=\"ticket-file-delete\">[[%ticket_file_delete]]</a>\n		<a href=\"#\" class=\"ticket-file-restore\">[[%ticket_file_restore]]</a>\n		<br/>\n		<a href=\"#\" class=\"ticket-file-insert\">[[%ticket_file_insert]]</a>\n		<br/>\n		<span class=\"ticket-file-size\">[[+size]] Kb</span>\n	</div>\n	<div class=\"ticket-file-template\">\n		<a href=\"[[+url]]\">\n			[[+name]]\n		</a>\n	</div>\n</div>\n<!--tickets_thumb <img src=\"[[+thumb]]\" class=\"ticket-file-image\" />-->\n<!--tickets_deleted  deleted-->\n<!--tickets_new  new-->\";s:22:\"tpl.Tickets.form.files\";s:421:\"<div id=\"ticket-files-list\">\n	[[+files]]\n	<div class=\"clearfix\"></div>\n</div>\n\n<div id=\"ticket-files-container\" data-action=\"ticket/file/upload\">\n	<a id=\"ticket-files-select\" href=\"javascript:;\">[[%ticket_file_select]]</a>\n	<div id=\"ticket-files-progress\">\n		<span id=\"ticket-files-progress-count\">0/0</span>\n		<span id=\"ticket-files-progress-percent\">0%</span>\n		<div id=\"ticket-files-progress-bar\"></div>\n	</div>\n</div>\";s:22:\"tpl.Tickets.form.image\";s:754:\"<div class=\"ticket-file[[+deleted]][[+new]]\" data-id=\"[[+id]]\">\n	<a href=\"[[+url]]\" class=\"ticket-file-link\" title=\"[[+file]]\" target=\"_blank\">\n		<div class=\"ticket-file-image-wrapper\">\n			<img src=\"[[+thumb]]\" class=\"ticket-file-image\" />\n		</div>\n	</a>\n	<div class=\"ticket-file-meta\">\n		<a href=\"#\" class=\"ticket-file-delete\">[[%ticket_file_delete]]</a>\n		<a href=\"#\" class=\"ticket-file-restore\">[[%ticket_file_restore]]</a>\n		<br/>\n		<a href=\"#\" class=\"ticket-file-insert\">[[%ticket_file_insert]]</a>\n		<br/>\n		<span class=\"ticket-file-size\">[[+size]] Kb</span>\n	</div>\n	<div class=\"ticket-file-template\">\n		<a href=\"[[+url]]\" title=\"[[+name]]\">\n			<img src=\"[[+thumb]]\" />\n		</a>\n	</div>\n</div>\n<!--tickets_deleted  deleted-->\n<!--tickets_new  new-->\";s:24:\"tpl.Tickets.form.preview\";s:140:\"<h3 class=\"title\">[[+pagetitle]]</h3>\n<div class=\"content\">[[+content]]</div>\n<h5 class=\"author\">[[+modx.user.id:userinfo=`username`]]</h5>\n\";s:23:\"tpl.Tickets.form.update\";s:1648:\"<form class=\"well update\" method=\"post\" action=\"\" id=\"ticketForm\">\n	<div id=\"ticket-preview-placeholder\"></div>\n\n	<input type=\"hidden\" name=\"tid\" value=\"[[+id]]\" />\n\n	<div class=\"form-group\">\n		<label for=\"ticket-sections\">[[%tickets_section]]</label>\n		<select name=\"parent\" class=\"form-control\" id=\"ticket-sections\">[[+sections]]</select>\n		<span class=\"error\"></span>\n	</div>\n\n	<div class=\"form-group\">\n		<label for=\"ticket-pagetitle\">[[%ticket_pagetitle]]</label>\n		<input type=\"text\" class=\"form-control\" placeholder=\"[[%ticket_pagetitle]]\" name=\"pagetitle\" value=\"[[+pagetitle]]\" maxlength=\"50\" id=\"ticket-pagetitle\"/>\n		<span class=\"error\"></span>\n	</div>\n\n	<div class=\"form-group\">\n		<textarea class=\"form-control\" placeholder=\"[[%ticket_content]]\" name=\"content\" id=\"ticket-editor\" rows=\"10\">[[+content]]</textarea>\n		<span class=\"error\"></span>\n	</div>\n\n	<div class=\"ticket-form-files\">\n		[[+files]]\n	</div>\n\n	<div class=\"form-actions row\">\n		<div class=\"col-md-6\">\n			<input type=\"button\" class=\"btn btn-default preview\" value=\"[[%ticket_preview]]\" title=\"Ctrl + Enter\" />\n		</div>\n		<div class=\"col-md-6 move-right\">\n			[[!+published:is=`1`:then=`\n			<a href=\"[[~[[+id]]?scheme=`full`]]\" class=\"btn btn-default btn-xs\" target=\"_blank\">[[%ticket_open]]</a>\n			<input type=\"button\" class=\"btn btn-danger draft\" name=\"draft\" value=\"[[%ticket_draft]]\" title=\"\" />\n			`:else=`\n			<input type=\"button\" class=\"btn btn-primary publish\" name=\"publish\" value=\"[[%ticket_publish]]\" title=\"\" />\n			`]]\n			<input type=\"submit\" class=\"btn btn-default save\" name=\"save\" value=\"[[%ticket_save]]\" title=\"Ctrl + Shift + Enter\" />\n		</div>\n	</div>\n</form>\";s:20:\"tpl.Tickets.list.row\";s:2144:\"<div class=\"tickets-row\">\n    <h3 class=\"title\"><a href=\"[[~[[+id]]]]\">[[+pagetitle]]</a></h3>\n	<div class=\"content\">\n		[[+introtext]]<br/>\n		<a href=\"[[~[[+id]]]]#cut\" class=\"btn btn-default ticket-read-more\">[[%ticket_read_more]]</a>\n	</div>\n	<div class=\"ticket-meta row\" data-id=\"[[+id]]\">\n		<span class=\"col-md-5\">\n			<i class=\"glyphicon glyphicon-calendar\"></i> [[+date_ago]]\n			&nbsp;&nbsp;\n			<i class=\"glyphicon glyphicon-user\"></i> [[+fullname]]\n		</span>\n		<span class=\"col-md-2\"><a href=\"[[~[[+section.id]]]]\"><i class=\"glyphicon glyphicon-folder-open\"></i> [[+section.pagetitle]]</a></span>\n		<span class=\"col-md-3\">\n			<span class=\"ticket-star[[+can_star]]\">[[+stared]][[+unstared]] <span class=\"ticket-star-count\">[[+stars]]</span></span>\n			&nbsp;&nbsp;\n			<i class=\"glyphicon glyphicon-eye-open\"></i> [[+views]]\n			&nbsp;&nbsp;\n			<i class=\"glyphicon glyphicon-comment\"></i> [[+comments]]  [[+new_comments]]\n		</span>\n		<span class=\"col-md-2 pull-right ticket-rating[[+active]][[+inactive]]\">\n			<span class=\"vote plus[[+voted_plus]]\" title=\"[[%ticket_like]]\"><i class=\"glyphicon glyphicon-arrow-up\"></i></span>\n			[[+can_vote]][[+cant_vote]]\n			<span class=\"vote minus[[+voted_minus]]\" title=\"[[%ticket_dislike]]\"><i class=\"glyphicon glyphicon-arrow-down\"></i></span>\n		</span>\n	</div>\n</div>\n<!--tickets_can_vote <span class=\"vote rating\" title=\"[[%ticket_refrain]]\"><i class=\"glyphicon glyphicon-minus\"></i></span>-->\n<!--tickets_cant_vote <span class=\"rating[[+rating_positive]][[+rating_negative]]\" title=\"[[%ticket_rating_total]] [[+rating_total]]: ↑[[+rating_plus]] [[%ticket_rating_and]] ↓[[+rating_minus]]\">[[+rating]]</span>-->\n<!--tickets_new_comments <span class=\"ticket-new-comments\">+[[+new_comments]]</span>-->\n<!--tickets_active  active-->\n<!--tickets_inactive  inactive-->\n<!--tickets_voted_plus  voted-->\n<!--tickets_voted_minus  voted-->\n<!--tickets_rating_positive  positive-->\n<!--tickets_rating_negative  negative-->\n<!--tickets_can_star  active-->\n<!--tickets_stared <i class=\"glyphicon glyphicon-star stared star\"></i>-->\n<!--tickets_unstared <i class=\"glyphicon glyphicon-star unstared star\"></i>-->\";s:16:\"tpl.Tickets.meta\";s:1836:\"<div class=\"ticket-meta row\" data-id=\"[[+id]]\">\n	<span class=\"col-md-5\">\n		<i class=\"glyphicon glyphicon-calendar\"></i> [[+date_ago]]\n		&nbsp;&nbsp;\n		<i class=\"glyphicon glyphicon-user\"></i> [[+fullname]]\n	</span>\n	<span class=\"col-md-2\"><a href=\"[[~[[+section.id]]]]\"><i class=\"glyphicon glyphicon-folder-open\"></i> [[+section.pagetitle]]</a></span>\n	<span class=\"col-md-2\">\n		<span class=\"ticket-star[[+can_star]]\">[[+stared]][[+unstared]] <span class=\"ticket-star-count\">[[+stars]]</span></span>\n		&nbsp;&nbsp;\n		<i class=\"glyphicon glyphicon-eye-open\"></i> [[+views]]\n	</span>\n	<span class=\"col-md-2 pull-right ticket-rating[[+active]][[+inactive]]\">\n		<span class=\"vote plus[[+voted_plus]]\" title=\"[[%ticket_like]]\">\n			<i class=\"glyphicon glyphicon-arrow-up\"></i>\n		</span>\n		[[+can_vote]][[+cant_vote]]\n		<span class=\"vote minus[[+voted_minus]]\" title=\"[[%ticket_dislike]]\">\n			<i class=\"glyphicon glyphicon-arrow-down\"></i>\n		</span>\n	</span>\n</div>\n[[+has_files]]\n\n<!--tickets_can_vote <span class=\"vote rating\" title=\"[[%ticket_refrain]]\"><i class=\"glyphicon glyphicon-minus\"></i></span>-->\n<!--tickets_cant_vote <span class=\"rating[[+rating_positive]][[+rating_negative]]\" title=\"[[%ticket_rating_total]] [[+rating_total]]: ↑[[+rating_plus]] [[%ticket_rating_and]] ↓[[+rating_minus]]\">[[+rating]]</span>-->\n<!--tickets_active  active-->\n<!--tickets_inactive  inactive-->\n<!--tickets_voted_plus  voted-->\n<!--tickets_voted_minus  voted-->\n<!--tickets_rating_positive  positive-->\n<!--tickets_rating_negative  negative-->\n<!--tickets_has_files\n<ul class=\"ticket-files\">\n	<strong>[[%ticket_uploaded_files]]:</strong>\n	[[+files]]\n</ul>-->\n<!--tickets_can_star  active-->\n<!--tickets_stared <i class=\"glyphicon glyphicon-star stared star\"></i>-->\n<!--tickets_unstared <i class=\"glyphicon glyphicon-star unstared star\"></i>-->\";s:21:\"tpl.Tickets.meta.file\";s:73:\"<li>\n	<a href=\"[[+url]]\" target=\"_blank\">[[+name]]</a> [[+size]] kb\n</li>\";s:24:\"tpl.Tickets.sections.row\";s:457:\"<div class=\"section-row\">\r\n	<h3 class=\"title\"><a href=\"[[~[[+id]]]]\">[[+pagetitle]]</a></h3>\r\n	<div class=\"content\">\r\n		[[+introtext]]\r\n	</div>\r\n	<div class=\"section-meta row\">\r\n		<div class=\"col-md-1\"><i class=\"glyphicon glyphicon-th-list\"></i> [[+tickets]]</div>\r\n		<div class=\"col-md-1\"><i class=\"glyphicon glyphicon-eye-open\"></i> [[+views]]</div>\r\n		<div class=\"col-md-1\"><i class=\"glyphicon glyphicon-comment\"></i> [[+comments]]</div>\r\n	</div>\r\n</div>\";s:28:\"tpl.Tickets.sections.wrapper\";s:362:\"[[+modx.user.id:isloggedin:is=`1`:then=`\n<span class=\"tickets-subscribe pull-right\">\n	<label for=\"tickets-subscribe\" class=\"checkbox\">\n		<input type=\"checkbox\" name=\"\" id=\"tickets-subscribe\" value=\"1\" data-id=\"[[*id]]\" [[+subscribed:notempty=`checked`]] /> [[%tickets_section_notify]]\n	</label>\n</span>\n`:else=``]]\n\n<div class=\"tickets-list\">\n	[[+output]]\n</div>\";s:28:\"tpl.Tickets.ticket.email.bcc\";s:280:\"[[%ticket_email_bcc_intro?\n    &fullname=`[[+user.fullname]]`\n    &email=`[[+user.email]]`\n    &id=`[[+id]]`\n    &pagetitle=`[[+pagetitle]]`\n]]\n\n<pre style=\"background-color:#efefef;\">[[+introtext]]</pre>\n<br/><br/>\n\n<a href=\"[[~[[+id]]?scheme=`full`]]\">[[%ticket_email_view]]</a>\";s:37:\"tpl.Tickets.ticket.email.subscription\";s:333:\"[[%ticket_email_subscribed_intro?\n    &id=`[[+id]]`\n    &fullname=`[[+user.fullname]]`\n    &section=`[[+section.id]]`\n    &section_title=`[[+section.pagetitle]]`\n    &pagetitle=`[[+pagetitle]]`\n]]\n\n<pre style=\"background-color:#efefef;\">[[+introtext]]</pre>\n<br/><br/>\n\n<a href=\"[[~[[+id]]?scheme=`full`]]\">[[%ticket_email_view]]</a>\";s:25:\"tpl.Tickets.ticket.latest\";s:521:\"<div class=\"tickets-latest-row\">\n	<span class=\"user\"><i class=\"glyphicon glyphicon-user\"></i> [[+fullname]]</span> <span class=\"date\">[[+date_ago]]</span>\n	<br/>\n	<span class=\"section\">\n		<i class=\"glyphicon glyphicon-folder-open\"></i> <a href=\"[[~[[+section.id]]]]\">[[+section.pagetitle]]</a> <span class=\"arrow\">&rarr;</span>\n	</span>\n	<span class=\"ticket\">\n		<a href=\"[[~[[+id]]]]\">[[+pagetitle]]</a>\n	</span>\n	<nobr><i class=\"glyphicon glyphicon-comment\"></i> <span class=\"comments\">[[+comments]]</span></nobr>\n</div>\";}s:13:\"setup-options\";s:35:\"tickets-1.6.16-pl/setup-options.php\";s:9:\"signature\";s:17:\"tickets-1.6.16-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:45:\"/workspace/package/install/tickets-1.6.16-pl/\";s:14:\"package_action\";i:0;}', 'Tickets', 'a:38:{s:2:\"id\";s:24:\"56e66261f05e8b0a1c2da67e\";s:7:\"package\";s:24:\"50ac57aff2455404db000003\";s:12:\"display_name\";s:17:\"tickets-1.6.16-pl\";s:4:\"name\";s:7:\"Tickets\";s:7:\"version\";s:6:\"1.6.16\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"6\";s:13:\"version_patch\";s:2:\"16\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:9:\"bezumkin2\";s:11:\"description\";s:7:\"<p></p>\";s:12:\"instructions\";s:140:\"<p>Install from package manager</p><p>Then create new resource with type Ticket Section. Now you can create new tickets in this section.</p>\";s:9:\"changelog\";s:366:\"<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p><a href=\"https://github.com/bezumkin/Tickets/blob/master/core/components/tickets/docs/changelog.txt\" title=\"\" target=\"_blank\">Changelog on GitHub</a></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>\";s:9:\"createdon\";s:24:\"2016-03-14T07:04:01+0000\";s:9:\"createdby\";s:9:\"bezumkin2\";s:8:\"editedon\";s:24:\"2018-04-17T06:42:17+0000\";s:10:\"releasedon\";s:24:\"2016-03-14T07:04:01+0000\";s:9:\"downloads\";s:5:\"15336\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=56e66261f05e8b0a1c2da67f\";s:9:\"signature\";s:17:\"tickets-1.6.16-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:83:\"http://modx.s3.amazonaws.com/extras/50ac57aff2455404db000003/tickets-logo-white.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"56e66261f05e8b0a1c2da67f\";s:7:\"version\";s:24:\"56e66261f05e8b0a1c2da67e\";s:8:\"filename\";s:31:\"tickets-1.6.16-pl.transport.zip\";s:9:\"downloads\";s:4:\"7700\";s:6:\"lastip\";s:14:\"165.227.135.67\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=56e66261f05e8b0a1c2da67f\";}s:17:\"package-signature\";s:17:\"tickets-1.6.16-pl\";s:10:\"categories\";s:50:\"blogging,commenting-feedback,communication,content\";s:4:\"tags\";s:18:\"ajax,comments,blog\";}', 1, 6, 16, 'pl', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_providers`
--

CREATE TABLE `modx_transport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint(4) NOT NULL DEFAULT '10',
  `properties` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2018-03-29 18:08:06', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_users`
--

CREATE TABLE `modx_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modPBKDF2',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'admin', 'HaSolvBJtv44mKn3rLysz3jXUtO45z1fJEBBLoQUt24=', '', 'modUser', 1, NULL, NULL, 'hashing.modPBKDF2', '13e2570a864fac549587ef2b49064773', 1, 'a:2:{i:0;s:3:\"mgr\";i:1;s:3:\"web\";}', 1, 1523866655),
(2, 'manager', 'YdA0hhVJfAFcBuWnxEWDfyXfaaTSAgYPIgikR2cj4qc=', '', 'modUser', 1, NULL, NULL, 'hashing.modPBKDF2', 'cc41586e0b39d02427727f667b284a25', 2, NULL, 0, 1523948857);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT '',
  `city` varchar(191) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(191) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(191) NOT NULL DEFAULT '',
  `extended` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Администратор по умолчанию', 'tyaa@ukr.net', '', '', 0, 0, 0, 2, 1523866702, 1523949310, 0, 'rbkd2j0fb9fcbrq92f0dem6t81', 0, 0, '', '', '', '', '', '', '', '', '', NULL),
(2, 2, '', 'tyaa@ukr.net', '', '', 0, 0, 0, 1, 0, 1523949224, 0, 'hkflgng4uq78d0qauusr06j0r7', 0, 0, '', '', '', '', '', '', '', '', '', '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_roles`
--

CREATE TABLE `modx_user_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0),
(3, 'manager', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_settings`
--

CREATE TABLE `modx_user_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(191) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_workspaces`
--

CREATE TABLE `modx_workspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `attributes` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2018-04-16 11:17:30', 1, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_actions`
--
ALTER TABLE `modx_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `controller` (`controller`);

--
-- Индексы таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Индексы таблицы `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Индексы таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_categories_closure`
--
ALTER TABLE `modx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Индексы таблицы `modx_class_map`
--
ALTER TABLE `modx_class_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD KEY `parent_class` (`parent_class`),
  ADD KEY `name_field` (`name_field`);

--
-- Индексы таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_context`
--
ALTER TABLE `modx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_context_resource`
--
ALTER TABLE `modx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Индексы таблицы `modx_context_setting`
--
ALTER TABLE `modx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Индексы таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Индексы таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Индексы таблицы `modx_dashboard_widget_placement`
--
ALTER TABLE `modx_dashboard_widget_placement`
  ADD PRIMARY KEY (`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Индексы таблицы `modx_element_property_sets`
--
ALTER TABLE `modx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Индексы таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `modx_fc_profiles_usergroups`
--
ALTER TABLE `modx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Индексы таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Индексы таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Индексы таблицы `modx_media_sources_contexts`
--
ALTER TABLE `modx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Индексы таблицы `modx_media_sources_elements`
--
ALTER TABLE `modx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Индексы таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Индексы таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_menus`
--
ALTER TABLE `modx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Индексы таблицы `modx_namespaces`
--
ALTER TABLE `modx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `modx_register_messages`
--
ALTER TABLE `modx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_session`
--
ALTER TABLE `modx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Индексы таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Индексы таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Индексы таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Индексы таблицы `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `modx_tickets_authors`
--
ALTER TABLE `modx_tickets_authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating` (`rating`),
  ADD KEY `createdon` (`createdon`),
  ADD KEY `visitedon` (`visitedon`),
  ADD KEY `tickets` (`tickets`),
  ADD KEY `comments` (`comments`),
  ADD KEY `views` (`views`),
  ADD KEY `votes` (`stars_comments`);

--
-- Индексы таблицы `modx_tickets_author_actions`
--
ALTER TABLE `modx_tickets_author_actions`
  ADD PRIMARY KEY (`id`,`action`,`owner`,`createdby`),
  ADD KEY `createdon` (`createdon`),
  ADD KEY `section` (`section`),
  ADD KEY `ticket` (`ticket`),
  ADD KEY `action` (`action`),
  ADD KEY `owner` (`owner`),
  ADD KEY `date` (`year`,`month`,`day`);

--
-- Индексы таблицы `modx_tickets_comments`
--
ALTER TABLE `modx_tickets_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread` (`thread`),
  ADD KEY `parent` (`parent`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `published` (`published`),
  ADD KEY `rating` (`rating`);

--
-- Индексы таблицы `modx_tickets_files`
--
ALTER TABLE `modx_tickets_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`,`class`),
  ADD KEY `source` (`source`),
  ADD KEY `type` (`type`),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `hash` (`hash`);

--
-- Индексы таблицы `modx_tickets_mail_queues`
--
ALTER TABLE `modx_tickets_mail_queues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `modx_tickets_stars`
--
ALTER TABLE `modx_tickets_stars`
  ADD PRIMARY KEY (`id`,`createdby`,`class`),
  ADD KEY `createdon` (`createdon`),
  ADD KEY `owner` (`owner`);

--
-- Индексы таблицы `modx_tickets_threads`
--
ALTER TABLE `modx_tickets_threads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `resource` (`resource`),
  ADD KEY `comment_last` (`comment_last`),
  ADD KEY `comments` (`comments`),
  ADD KEY `closed` (`closed`);

--
-- Индексы таблицы `modx_tickets_views`
--
ALTER TABLE `modx_tickets_views`
  ADD PRIMARY KEY (`parent`,`uid`,`guest_key`);

--
-- Индексы таблицы `modx_tickets_votes`
--
ALTER TABLE `modx_tickets_votes`
  ADD PRIMARY KEY (`id`,`createdby`,`class`),
  ADD KEY `createdon` (`createdon`),
  ADD KEY `owner` (`owner`);

--
-- Индексы таблицы `modx_transport_packages`
--
ALTER TABLE `modx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Индексы таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_users`
--
ALTER TABLE `modx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Индексы таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Индексы таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Индексы таблицы `modx_user_group_settings`
--
ALTER TABLE `modx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Индексы таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Индексы таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT для таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actions`
--
ALTER TABLE `modx_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT для таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `modx_class_map`
--
ALTER TABLE `modx_class_map`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT для таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_tickets_comments`
--
ALTER TABLE `modx_tickets_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_tickets_files`
--
ALTER TABLE `modx_tickets_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_tickets_mail_queues`
--
ALTER TABLE `modx_tickets_mail_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_tickets_threads`
--
ALTER TABLE `modx_tickets_threads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_users`
--
ALTER TABLE `modx_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
