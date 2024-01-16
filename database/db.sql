-- Adminer 4.8.1 MySQL 8.0.16 dump

SET NAMES utf8;

SET time_zone = '+00:00';

SET foreign_key_checks = 0;

SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE
    `wp_commentmeta` (
        `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
        `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
        `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
        PRIMARY KEY (`meta_id`),
        KEY `comment_id` (`comment_id`),
        KEY `meta_key` (`meta_key`(191))
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE
    `wp_comments` (
        `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
        `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
        `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
        `comment_karma` int(11) NOT NULL DEFAULT '0',
        `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
        `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
        `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
        `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
        PRIMARY KEY (`comment_ID`),
        KEY `comment_post_ID` (`comment_post_ID`),
        KEY `comment_approved_date_gmt` (
            `comment_approved`,
            `comment_date_gmt`
        ),
        KEY `comment_date_gmt` (`comment_date_gmt`),
        KEY `comment_parent` (`comment_parent`),
        KEY `comment_author_email` (`comment_author_email`(10))
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE
    `wp_links` (
        `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
        `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
        `link_rating` int(11) NOT NULL DEFAULT '0',
        `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
        `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        PRIMARY KEY (`link_id`),
        KEY `link_visible` (`link_visible`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE
    `wp_options` (
        `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
        `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
        PRIMARY KEY (`option_id`),
        UNIQUE KEY `option_name` (`option_name`),
        KEY `autoload` (`autoload`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO
    `wp_options` (
        `option_id`,
        `option_name`,
        `option_value`,
        `autoload`
    )
VALUES (
        1,
        'siteurl',
        'http://localhost:10023',
        'yes'
    ), (
        2,
        'home',
        'http://localhost:10023',
        'yes'
    ), (3, 'blogname', 'atratis', 'yes'), (4, 'blogdescription', '', 'yes'), (
        5,
        'users_can_register',
        '0',
        'yes'
    ), (
        6,
        'admin_email',
        'dev-email@wpengine.local',
        'yes'
    ), (7, 'start_of_week', '0', 'yes'), (
        8,
        'use_balanceTags',
        '0',
        'yes'
    ), (9, 'use_smilies', '1', 'yes'), (
        10,
        'require_name_email',
        '1',
        'yes'
    ), (
        11,
        'comments_notify',
        '1',
        'yes'
    ), (
        12,
        'posts_per_rss',
        '10',
        'yes'
    ), (
        13,
        'rss_use_excerpt',
        '0',
        'yes'
    ), (
        14,
        'mailserver_url',
        'mail.example.com',
        'yes'
    ), (
        15,
        'mailserver_login',
        'login@example.com',
        'yes'
    ), (
        16,
        'mailserver_pass',
        'password',
        'yes'
    ), (
        17,
        'mailserver_port',
        '110',
        'yes'
    ), (
        18,
        'default_category',
        '1',
        'yes'
    ), (
        19,
        'default_comment_status',
        'open',
        'yes'
    ), (
        20,
        'default_ping_status',
        'open',
        'yes'
    ), (
        21,
        'default_pingback_flag',
        '1',
        'yes'
    ), (
        22,
        'posts_per_page',
        '10',
        'yes'
    ), (
        23,
        'date_format',
        'F j, Y',
        'yes'
    ), (
        24,
        'time_format',
        'g:i a',
        'yes'
    ), (
        25,
        'links_updated_date_format',
        'F j, Y g:i a',
        'yes'
    ), (
        26,
        'comment_moderation',
        '0',
        'yes'
    ), (
        27,
        'moderation_notify',
        '1',
        'yes'
    ), (
        28,
        'permalink_structure',
        '/%postname%/',
        'yes'
    ), (
        29,
        'rewrite_rules',
        'a:116:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:14:\"tratamentos/?$\";s:25:\"index.php?post_type=mimos\";s:44:\"tratamentos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=mimos&feed=$matches[1]\";s:39:\"tratamentos/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=mimos&feed=$matches[1]\";s:31:\"tratamentos/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=mimos&paged=$matches[1]\";s:46:\"serie/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?serie=$matches[1]&feed=$matches[2]\";s:41:\"serie/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?serie=$matches[1]&feed=$matches[2]\";s:22:\"serie/([^/]+)/embed/?$\";s:38:\"index.php?serie=$matches[1]&embed=true\";s:34:\"serie/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?serie=$matches[1]&paged=$matches[2]\";s:16:\"serie/([^/]+)/?$\";s:27:\"index.php?serie=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"tratamentos/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"tratamentos/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"tratamentos/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"tratamentos/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"tratamentos/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"tratamentos/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"tratamentos/(.+?)/embed/?$\";s:38:\"index.php?mimos=$matches[1]&embed=true\";s:30:\"tratamentos/(.+?)/trackback/?$\";s:32:\"index.php?mimos=$matches[1]&tb=1\";s:50:\"tratamentos/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?mimos=$matches[1]&feed=$matches[2]\";s:45:\"tratamentos/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?mimos=$matches[1]&feed=$matches[2]\";s:38:\"tratamentos/(.+?)/page/?([0-9]{1,})/?$\";s:45:\"index.php?mimos=$matches[1]&paged=$matches[2]\";s:45:\"tratamentos/(.+?)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?mimos=$matches[1]&cpage=$matches[2]\";s:34:\"tratamentos/(.+?)(?:/([0-9]+))?/?$\";s:44:\"index.php?mimos=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=24&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}',
        'yes'
    ), (30, 'hack_file', '0', 'yes'), (
        31,
        'blog_charset',
        'UTF-8',
        'yes'
    ), (32, 'moderation_keys', '', 'no'), (
        33,
        'active_plugins',
        'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}',
        'yes'
    ), (34, 'category_base', '', 'yes'), (
        35,
        'ping_sites',
        'http://rpc.pingomatic.com/',
        'yes'
    ), (
        36,
        'comment_max_links',
        '2',
        'yes'
    ), (37, 'gmt_offset', '0', 'yes'), (
        38,
        'default_email_category',
        '1',
        'yes'
    ), (39, 'recently_edited', '', 'no'), (
        40,
        'template',
        'atratis',
        'yes'
    ), (
        41,
        'stylesheet',
        'atratis',
        'yes'
    ), (
        42,
        'comment_registration',
        '0',
        'yes'
    ), (
        43,
        'html_type',
        'text/html',
        'yes'
    ), (44, 'use_trackback', '0', 'yes'), (
        45,
        'default_role',
        'subscriber',
        'yes'
    ), (
        46,
        'db_version',
        '56657',
        'yes'
    ), (
        47,
        'uploads_use_yearmonth_folders',
        '1',
        'yes'
    ), (48, 'upload_path', '', 'yes'), (49, 'blog_public', '1', 'yes'), (
        50,
        'default_link_category',
        '2',
        'yes'
    ), (
        51,
        'show_on_front',
        'page',
        'yes'
    ), (52, 'tag_base', '', 'yes'), (53, 'show_avatars', '1', 'yes'), (54, 'avatar_rating', 'G', 'yes'), (
        55,
        'upload_url_path',
        '',
        'yes'
    ), (
        56,
        'thumbnail_size_w',
        '150',
        'yes'
    ), (
        57,
        'thumbnail_size_h',
        '150',
        'yes'
    ), (
        58,
        'thumbnail_crop',
        '1',
        'yes'
    ), (
        59,
        'medium_size_w',
        '300',
        'yes'
    ), (
        60,
        'medium_size_h',
        '300',
        'yes'
    ), (
        61,
        'avatar_default',
        'mystery',
        'yes'
    ), (
        62,
        'large_size_w',
        '1024',
        'yes'
    ), (
        63,
        'large_size_h',
        '1024',
        'yes'
    ), (
        64,
        'image_default_link_type',
        'none',
        'yes'
    ), (
        65,
        'image_default_size',
        '',
        'yes'
    ), (
        66,
        'image_default_align',
        '',
        'yes'
    ), (
        67,
        'close_comments_for_old_posts',
        '0',
        'yes'
    ), (
        68,
        'close_comments_days_old',
        '14',
        'yes'
    ), (
        69,
        'thread_comments',
        '1',
        'yes'
    ), (
        70,
        'thread_comments_depth',
        '5',
        'yes'
    ), (71, 'page_comments', '0', 'yes'), (
        72,
        'comments_per_page',
        '50',
        'yes'
    ), (
        73,
        'default_comments_page',
        'newest',
        'yes'
    ), (
        74,
        'comment_order',
        'asc',
        'yes'
    ), (
        75,
        'sticky_posts',
        'a:0:{}',
        'yes'
    ), (
        76,
        'widget_categories',
        'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        77,
        'widget_text',
        'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        78,
        'widget_rss',
        'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        79,
        'uninstall_plugins',
        'a:0:{}',
        'no'
    ), (
        80,
        'timezone_string',
        '',
        'yes'
    ), (
        81,
        'page_for_posts',
        '0',
        'yes'
    ), (
        82,
        'page_on_front',
        '24',
        'yes'
    ), (
        83,
        'default_post_format',
        '0',
        'yes'
    ), (
        84,
        'link_manager_enabled',
        '0',
        'yes'
    ), (
        85,
        'finished_splitting_shared_terms',
        '1',
        'yes'
    ), (86, 'site_icon', '0', 'yes'), (
        87,
        'medium_large_size_w',
        '768',
        'yes'
    ), (
        88,
        'medium_large_size_h',
        '0',
        'yes'
    ), (
        89,
        'wp_page_for_privacy_policy',
        '3',
        'yes'
    ), (
        90,
        'show_comments_cookies_opt_in',
        '1',
        'yes'
    ), (
        91,
        'admin_email_lifespan',
        '1720647657',
        'yes'
    ), (92, 'disallowed_keys', '', 'no'), (
        93,
        'comment_previously_approved',
        '1',
        'yes'
    ), (
        94,
        'auto_plugin_theme_update_emails',
        'a:0:{}',
        'no'
    ), (
        95,
        'auto_update_core_dev',
        'enabled',
        'yes'
    ), (
        96,
        'auto_update_core_minor',
        'enabled',
        'yes'
    ), (
        97,
        'auto_update_core_major',
        'enabled',
        'yes'
    ), (
        98,
        'wp_force_deactivated_plugins',
        'a:0:{}',
        'yes'
    ), (
        99,
        'wp_attachment_pages_enabled',
        '0',
        'yes'
    ), (
        100,
        'initial_db_version',
        '56657',
        'yes'
    ), (
        101,
        'wp_user_roles',
        'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}',
        'yes'
    ), (102, 'fresh_site', '0', 'yes'), (103, 'user_count', '1', 'no'), (
        104,
        'widget_block',
        'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        105,
        'sidebars_widgets',
        'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}',
        'yes'
    ), (
        106,
        'cron',
        'a:11:{i:1705423296;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1705441287;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1705441296;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1705441297;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1705441298;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1705455323;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1705498523;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1705498526;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1705757748;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1705786888;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}',
        'yes'
    ), (
        107,
        'widget_pages',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        108,
        'widget_calendar',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        109,
        'widget_archives',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        110,
        'widget_media_audio',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        111,
        'widget_media_image',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        112,
        'widget_media_gallery',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        113,
        'widget_media_video',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        114,
        'widget_meta',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        115,
        'widget_search',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        116,
        'widget_recent-posts',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        117,
        'widget_recent-comments',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        118,
        'widget_tag_cloud',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        119,
        'widget_nav_menu',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        120,
        'widget_custom_html',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    ), (
        121,
        '_transient_wp_core_block_css_files',
        'a:2:{s:7:\"version\";s:5:\"6.4.2\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}',
        'yes'
    ), (
        123,
        'recovery_keys',
        'a:0:{}',
        'yes'
    ), (
        133,
        '_site_transient_timeout_browser_33a4eec8f1d98f72cf9fde66534f6198',
        '1705757724',
        'no'
    ), (
        134,
        '_site_transient_browser_33a4eec8f1d98f72cf9fde66534f6198',
        'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"121.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}',
        'no'
    ), (
        135,
        '_site_transient_timeout_php_check_18f908370f4cb169b20964c7203d6110',
        '1705757725',
        'no'
    ), (
        136,
        '_site_transient_php_check_18f908370f4cb169b20964c7203d6110',
        'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}',
        'no'
    ), (
        138,
        'can_compress_scripts',
        '0',
        'yes'
    ), (154, 'WPLANG', 'pt_PT', 'yes'), (
        155,
        'new_admin_email',
        'dev-email@wpengine.local',
        'yes'
    ), (
        162,
        'finished_updating_comment_type',
        '1',
        'yes'
    ), (
        164,
        'theme_mods_twentytwentyfour',
        'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1705153379;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}',
        'yes'
    ), (
        165,
        'current_theme',
        'Atratis Digital',
        'yes'
    ), (
        166,
        'theme_mods_atratis',
        'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu_1\";i:2;s:6:\"menu_2\";i:2;}s:18:\"custom_css_post_id\";i:-1;}',
        'yes'
    ), (
        167,
        'theme_switched',
        '',
        'yes'
    ), (
        172,
        'wp_calendar_block_has_published_posts',
        '1',
        'yes'
    ), (
        180,
        'recently_activated',
        'a:0:{}',
        'yes'
    ), (
        189,
        'acf_version',
        '6.2.4',
        'yes'
    ), (
        206,
        'nav_menu_options',
        'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}',
        'yes'
    ), (
        210,
        '_transient_health-check-site-status-result',
        '{\"good\":18,\"recommended\":2,\"critical\":0}',
        'yes'
    ), (
        253,
        '_site_transient_update_core',
        'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_PT/wordpress-6.4.2.zip\";s:6:\"locale\";s:5:\"pt_PT\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_PT/wordpress-6.4.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.2\";s:7:\"version\";s:5:\"6.4.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1705409957;s:15:\"version_checked\";s:5:\"6.4.2\";s:12:\"translations\";a:0:{}}',
        'no'
    ), (
        254,
        '_site_transient_update_plugins',
        'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1705409960;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.8.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.8.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}}s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.4\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.8.6\";}}',
        'no'
    ), (
        255,
        '_site_transient_update_themes',
        'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1705409960;s:7:\"checked\";a:1:{s:7:\"atratis\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}',
        'no'
    ), (
        256,
        'wpcf7',
        'a:2:{s:7:\"version\";s:5:\"5.8.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1705341055;s:7:\"version\";s:5:\"5.8.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}',
        'yes'
    ), (
        262,
        'secret_key',
        '@~sNm9|T;Ha7K|LlbuMgCWd3>0/!AA9!h96cPh=5Jh^=kY|52`@yv=+jo7*#7!Q!',
        'no'
    ), (
        273,
        'category_children',
        'a:0:{}',
        'yes'
    ), (
        300,
        '_site_transient_timeout_available_translations',
        '1705422098',
        'no'
    ), (
        301,
        '_site_transient_available_translations',
        'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.6\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.6/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-25 17:57:08\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.23\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.23/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-10-19 09:22:30\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-08 05:10:14\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.24/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-09 09:13:37\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-09 17:49:56\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.3/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-08 16:31:26\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-08 09:13:09\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-03 10:36:13\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-07 09:53:23\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-08 18:40:48\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.4.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-06 19:56:58\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-06 19:57:18\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.4.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-29 21:13:08\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-08 18:40:24\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.3/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-10 19:54:48\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-08-28 15:58:51\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-10-22 02:53:03\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-24 12:26:36\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-27 22:57:29\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-25 14:09:36\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-09-20 08:57:43\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-30 13:46:36\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-20 03:52:48\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-03-14 22:16:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.3/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.8\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.8/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.8\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.8/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.14\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.14/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-28 10:19:25\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.19\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.19/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-08 20:42:04\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-10-05 10:16:58\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-12 17:31:37\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-05 21:16:24\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-06 04:38:22\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-09 09:46:35\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-09 16:09:28\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-29 13:35:45\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.23\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.23/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.3/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-02 23:37:18\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-08-09 07:20:47\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.31\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.31/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-05-28 22:06:16\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.3/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-31 11:28:03\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-03 21:54:15\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.3/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-24 18:28:12\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-05 15:44:59\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.24/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-02 20:36:49\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-27 06:05:50\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.24/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.1.4\";s:7:\"updated\";s:19:\"2023-11-25 09:35:18\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.3/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.24/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.19\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.19/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.4\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.4/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-10-19 07:05:28\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-14 23:31:45\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-21 15:26:43\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.2/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.4\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.4/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-20 21:57:20\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.6\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.6/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-14 15:04:06\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-10-05 01:27:19\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.24/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.13\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.13/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.36\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.36/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-28 16:54:57\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-22 16:02:51\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-10-14 13:34:08\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.4.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-21 10:48:27\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-11 15:25:39\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.23\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.23/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-06 21:08:33\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.32\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.32/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-08-21 12:17:05\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-07 09:12:03\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.4.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-07 09:07:54\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-08 00:25:54\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-16 11:40:22\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-02 16:10:47\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.14\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.14/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-16 08:12:17\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-12 10:29:16\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-15 13:30:35\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-13 18:56:56\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-05 20:51:57\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-20 00:53:50\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.16\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.16/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.36\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.36/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.8\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.8/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.23\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.23/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-06 00:04:30\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-11 17:50:19\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2024-01-14 12:08:20\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.14\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.14/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-07-15 15:30:50\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-12-07 00:00:04\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-23 09:22:54\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}',
        'no'
    );

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE
    `wp_postmeta` (
        `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
        `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
        `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
        PRIMARY KEY (`meta_id`),
        KEY `post_id` (`post_id`),
        KEY `meta_key` (`meta_key`(191))
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO
    `wp_postmeta` (
        `meta_id`,
        `post_id`,
        `meta_key`,
        `meta_value`
    )
VALUES (
        2,
        3,
        '_wp_page_template',
        'default'
    ), (
        7,
        6,
        '_edit_lock',
        '1705362347:1'
    ), (
        12,
        9,
        '_edit_lock',
        '1705362491:1'
    ), (
        15,
        11,
        '_wp_attached_file',
        '2024/01/Rectangle-131.png'
    ), (
        16,
        11,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:306;s:6:\"height\";i:186;s:4:\"file\";s:25:\"2024/01/Rectangle-131.png\";s:8:\"filesize\";i:137024;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"Rectangle-131-300x182.png\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:117528;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Rectangle-131-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:50455;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (
        20,
        13,
        '_edit_lock',
        '1705154119:1'
    ), (
        21,
        14,
        '_wp_attached_file',
        '2024/01/Rectangle-132.png'
    ), (
        22,
        14,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:306;s:6:\"height\";i:186;s:4:\"file\";s:25:\"2024/01/Rectangle-132.png\";s:8:\"filesize\";i:138106;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"Rectangle-132-300x182.png\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:117816;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Rectangle-132-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49511;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (25, 13, '_thumbnail_id', '14'), (
        26,
        16,
        '_edit_lock',
        '1705358933:1'
    ), (
        27,
        17,
        '_wp_attached_file',
        '2024/01/Rectangle-133.png'
    ), (
        28,
        17,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:306;s:6:\"height\";i:186;s:4:\"file\";s:25:\"2024/01/Rectangle-133.png\";s:8:\"filesize\";i:116362;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"Rectangle-133-300x182.png\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:97778;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Rectangle-133-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45649;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (31, 16, '_thumbnail_id', '17'), (32, 21, '_edit_last', '1'), (
        33,
        21,
        '_edit_lock',
        '1705366928:1'
    ), (
        37,
        24,
        '_edit_lock',
        '1705377323:1'
    ), (
        38,
        25,
        '_wp_attached_file',
        '2024/01/Group-10.png'
    ), (
        39,
        25,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:1918;s:6:\"height\";i:614;s:4:\"file\";s:20:\"2024/01/Group-10.png\";s:8:\"filesize\";i:1081276;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"Group-10-300x96.png\";s:5:\"width\";i:300;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:32952;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"Group-10-1024x328.png\";s:5:\"width\";i:1024;s:6:\"height\";i:328;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:255249;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"Group-10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26390;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"Group-10-768x246.png\";s:5:\"width\";i:768;s:6:\"height\";i:246;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:155454;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"Group-10-1536x492.png\";s:5:\"width\";i:1536;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:524034;}s:11:\"thumb-large\";a:5:{s:4:\"file\";s:20:\"Group-10-970x250.png\";s:5:\"width\";i:970;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:188626;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:21:\"Group-10-1200x384.png\";s:5:\"width\";i:1200;s:6:\"height\";i:384;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:335917;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (40, 24, '_edit_last', '1'), (41, 24, 'banner', '25'), (
        42,
        24,
        '_banner',
        'field_65a29ae0c5cce'
    ), (43, 26, 'banner', '25'), (
        44,
        26,
        '_banner',
        'field_65a29ae0c5cce'
    ), (45, 24, '_thumbnail_id', '25'), (
        46,
        24,
        'titulo',
        'Você ou seu familiar precisam de ajuda?'
    ), (
        47,
        24,
        '_titulo',
        'field_65a29ae0c5cce'
    ), (
        48,
        24,
        'descricao',
        'Trabalhamos há mais de 22 anos na recuperação de adictos e estamos prontos para lhe auxiliar.'
    ), (
        49,
        24,
        '_descricao',
        'field_65a2a3be3b8d3'
    ), (50, 27, 'banner', '25'), (
        51,
        27,
        '_banner',
        'field_65a29ae0c5cce'
    ), (
        52,
        27,
        'titulo',
        'Você ou seu familiar precisam de ajuda?'
    ), (
        53,
        27,
        '_titulo',
        'field_65a29ae0c5cce'
    ), (
        54,
        27,
        'descricao',
        'Trabalhamos há mais de 22 anos na recuperação de adictos e estamos prontos para lhe auxiliar.'
    ), (
        55,
        27,
        '_descricao',
        'field_65a2a3be3b8d3'
    ), (
        56,
        24,
        'saiba_mais',
        'a:3:{s:5:\"title\";s:10:\"Saiba mais\";s:3:\"url\";s:19:\"https://github.com/\";s:6:\"target\";s:6:\"_blank\";}'
    ), (
        57,
        24,
        '_saiba_mais',
        'field_65a2a59524d76'
    ), (58, 29, 'banner', '25'), (
        59,
        29,
        '_banner',
        'field_65a29ae0c5cce'
    ), (
        60,
        29,
        'titulo',
        'Você ou seu familiar precisam de ajuda?'
    ), (
        61,
        29,
        '_titulo',
        'field_65a29ae0c5cce'
    ), (
        62,
        29,
        'descricao',
        'Trabalhamos há mais de 22 anos na recuperação de adictos e estamos prontos para lhe auxiliar.'
    ), (
        63,
        29,
        '_descricao',
        'field_65a2a3be3b8d3'
    ), (
        64,
        29,
        'saiba_mais',
        'a:3:{s:5:\"title\";s:10:\"Saiba mais\";s:3:\"url\";s:19:\"https://github.com/\";s:6:\"target\";s:6:\"_blank\";}'
    ), (
        65,
        29,
        '_saiba_mais',
        'field_65a2a59524d76'
    ), (
        66,
        32,
        '_menu_item_type',
        'custom'
    ), (
        67,
        32,
        '_menu_item_menu_item_parent',
        '0'
    ), (
        68,
        32,
        '_menu_item_object_id',
        '32'
    ), (
        69,
        32,
        '_menu_item_object',
        'custom'
    ), (70, 32, '_menu_item_target', ''), (
        71,
        32,
        '_menu_item_classes',
        'a:1:{i:0;s:0:\"\";}'
    ), (72, 32, '_menu_item_xfn', ''), (73, 32, '_menu_item_url', '#'), (
        75,
        33,
        '_menu_item_type',
        'custom'
    ), (
        76,
        33,
        '_menu_item_menu_item_parent',
        '0'
    ), (
        77,
        33,
        '_menu_item_object_id',
        '33'
    ), (
        78,
        33,
        '_menu_item_object',
        'custom'
    ), (79, 33, '_menu_item_target', ''), (
        80,
        33,
        '_menu_item_classes',
        'a:1:{i:0;s:0:\"\";}'
    ), (81, 33, '_menu_item_xfn', ''), (82, 33, '_menu_item_url', '#'), (
        84,
        34,
        '_menu_item_type',
        'custom'
    ), (
        85,
        34,
        '_menu_item_menu_item_parent',
        '0'
    ), (
        86,
        34,
        '_menu_item_object_id',
        '34'
    ), (
        87,
        34,
        '_menu_item_object',
        'custom'
    ), (88, 34, '_menu_item_target', ''), (
        89,
        34,
        '_menu_item_classes',
        'a:1:{i:0;s:0:\"\";}'
    ), (90, 34, '_menu_item_xfn', ''), (91, 34, '_menu_item_url', '#'), (
        93,
        35,
        '_menu_item_type',
        'custom'
    ), (
        94,
        35,
        '_menu_item_menu_item_parent',
        '0'
    ), (
        95,
        35,
        '_menu_item_object_id',
        '35'
    ), (
        96,
        35,
        '_menu_item_object',
        'custom'
    ), (97, 35, '_menu_item_target', ''), (
        98,
        35,
        '_menu_item_classes',
        'a:1:{i:0;s:0:\"\";}'
    ), (99, 35, '_menu_item_xfn', ''), (100, 35, '_menu_item_url', '#'), (
        102,
        36,
        '_menu_item_type',
        'custom'
    ), (
        103,
        36,
        '_menu_item_menu_item_parent',
        '0'
    ), (
        104,
        36,
        '_menu_item_object_id',
        '36'
    ), (
        105,
        36,
        '_menu_item_object',
        'custom'
    ), (
        106,
        36,
        '_menu_item_target',
        ''
    ), (
        107,
        36,
        '_menu_item_classes',
        'a:1:{i:0;s:0:\"\";}'
    ), (108, 36, '_menu_item_xfn', ''), (109, 36, '_menu_item_url', '#'), (
        111,
        37,
        '_menu_item_type',
        'custom'
    ), (
        112,
        37,
        '_menu_item_menu_item_parent',
        '0'
    ), (
        113,
        37,
        '_menu_item_object_id',
        '37'
    ), (
        114,
        37,
        '_menu_item_object',
        'custom'
    ), (
        115,
        37,
        '_menu_item_target',
        ''
    ), (
        116,
        37,
        '_menu_item_classes',
        'a:1:{i:0;s:0:\"\";}'
    ), (117, 37, '_menu_item_xfn', ''), (118, 37, '_menu_item_url', '#'), (
        120,
        32,
        '_wp_old_date',
        '2024-01-13'
    ), (
        121,
        33,
        '_wp_old_date',
        '2024-01-13'
    ), (
        122,
        34,
        '_wp_old_date',
        '2024-01-13'
    ), (
        123,
        35,
        '_wp_old_date',
        '2024-01-13'
    ), (
        124,
        36,
        '_wp_old_date',
        '2024-01-13'
    ), (
        125,
        37,
        '_wp_old_date',
        '2024-01-13'
    ), (126, 38, '_edit_last', '1'), (
        127,
        38,
        '_edit_lock',
        '1705291132:1'
    ), (
        128,
        42,
        '_wp_attached_file',
        '2024/01/about.png'
    ), (
        129,
        42,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:592;s:6:\"height\";i:369;s:4:\"file\";s:17:\"2024/01/about.png\";s:8:\"filesize\";i:435696;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"about-300x187.png\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:114987;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"about-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47472;}s:11:\"thumb-large\";a:5:{s:4:\"file\";s:17:\"about-592x250.png\";s:5:\"width\";i:592;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:299059;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (
        130,
        24,
        'about_title',
        'Conheça a Atratis'
    ), (
        131,
        24,
        '_about_title',
        'field_65a410fed077e'
    ), (
        132,
        24,
        'about_descricao',
        'Fruto do desejo de resgatar vidas, em março de 1999  o Instituto Atratis foi fundado pelo Psicólogo e especialista em dependência química, Osmar Diógenes. O instituto acolhe, trata e contribui diretamente na recuperação de álcool, maconha, cocaína, crack, drogas sintéticas, medicamentos e drogas ilícitas, permitindo que seus residentes retornem à sociedade e às suas famílias para que vivam com dignidade.'
    ), (
        133,
        24,
        '_about_descricao',
        'field_65a4117ddea19'
    ), (134, 24, 'about_image', '42'), (
        135,
        24,
        '_about_image',
        'field_65a411b0fb54a'
    ), (136, 31, 'banner', '25'), (
        137,
        31,
        '_banner',
        'field_65a29ae0c5cce'
    ), (
        138,
        31,
        'titulo',
        'Você ou seu familiar precisam de ajuda?'
    ), (
        139,
        31,
        '_titulo',
        'field_65a29ae0c5cce'
    ), (
        140,
        31,
        'descricao',
        'Trabalhamos há mais de 22 anos na recuperação de adictos e estamos prontos para lhe auxiliar.'
    ), (
        141,
        31,
        '_descricao',
        'field_65a2a3be3b8d3'
    ), (
        142,
        31,
        'saiba_mais',
        'a:3:{s:5:\"title\";s:10:\"Saiba mais\";s:3:\"url\";s:19:\"https://github.com/\";s:6:\"target\";s:6:\"_blank\";}'
    ), (
        143,
        31,
        '_saiba_mais',
        'field_65a2a59524d76'
    ), (
        144,
        31,
        'about_title',
        'Conheça a Atratis'
    ), (
        145,
        31,
        '_about_title',
        'field_65a410fed077e'
    ), (
        146,
        31,
        'about_descricao',
        'Fruto do desejo de resgatar vidas, em março de 1999  o Instituto Atratis foi fundado pelo Psicólogo e especialista em dependência química, Osmar Diógenes. O instituto acolhe, trata e contribui diretamente na recuperação de álcool, maconha, cocaína, crack, drogas sintéticas, medicamentos e drogas ilícitas, permitindo que seus residentes retornem à sociedade e às suas famílias para que vivam com dignidade.'
    ), (
        147,
        31,
        '_about_descricao',
        'field_65a4117ddea19'
    ), (148, 31, 'about_image', '42'), (
        149,
        31,
        '_about_image',
        'field_65a411b0fb54a'
    ), (
        150,
        44,
        '_form',
        '<div class=\"at-form\">\n<h2 class=\"at-form__title\">Deixe a sua mensagem</h2>\n  <div class=\"at-form__row\">\n    <div class=\"at-form__input\"><span>Nome</span>[text* nome id:nome]</div>\n    <div class=\"at-form__input\"><span>E-mail</span>[email* email id:email]</div>\n  </div>\n  <div class=\"at-form__row\">\n    <div class=\"at-form__input\"><span>Telefone</span>[text* telefone id:tel]</div>\n    <div class=\"at-form__input\"><span>Endereço</span>[text* endereco id:endereco]</div>\n  </div>\n  <div class=\"at-form__row \">\n    <div class=\"at-form__input at-form__input--textarea\"><span>Mensagem</span>[textarea* observacao id:msg]</div>\n  </div>\n  <div class=\"at-form__row at-form__row--submit\">[acceptance aceite optional class:iptAceite] <span class=\"texto\">Aceito as <a href=\"http://localhost:10023/privacy-policy/\" title=\"termos de uso\" target=\"_blank\">Políticas de Privacidade</a>.</span>[submit id:enviar class:at-btn \"Enviar\"]</div>\n</div>'
    ), (
        151,
        44,
        '_mail',
        'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <dev-email@wpengine.local>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:194:\"De: [your-name] [your-email]\nAssunto: [your-subject]\n\nCorpo da mensagem:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'
    ), (
        152,
        44,
        '_mail_2',
        'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <dev-email@wpengine.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:225:\"Corpo da mensagem:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'
    ), (
        153,
        44,
        '_messages',
        'a:22:{s:12:\"mail_sent_ok\";s:27:\"Obrigado pela sua mensagem.\";s:12:\"mail_sent_ng\";s:85:\"Ocorreu um erro ao tentar enviar a sua mensagem. Por favor, tente de novo mais tarde.\";s:16:\"validation_error\";s:66:\"Um ou mais campos com erros. Por favor, verifique e tente de novo.\";s:4:\"spam\";s:85:\"Ocorreu um erro ao tentar enviar a sua mensagem. Por favor, tente de novo mais tarde.\";s:12:\"accept_terms\";s:70:\"Tem de aceitar os termos e condições antes de enviar a sua mensagem.\";s:16:\"invalid_required\";s:30:\"Por favor preencha este campo.\";s:16:\"invalid_too_long\";s:32:\"Este campo é demasiado extenso.\";s:17:\"invalid_too_short\";s:30:\"Este campo é demasiado curto.\";s:13:\"upload_failed\";s:52:\"Ocorreu um erro desconhecido ao carregar o ficheiro.\";s:24:\"upload_file_type_invalid\";s:55:\"Não tem permissão para carregar ficheiros deste tipo.\";s:21:\"upload_file_too_large\";s:41:\"O ficheiro carregado é demasiado grande.\";s:23:\"upload_failed_php_error\";s:39:\"Ocorreu um erro ao carregar o ficheiro.\";s:12:\"invalid_date\";s:48:\"Por favor digite uma data no formato YYYY-MM-DD.\";s:14:\"date_too_early\";s:39:\"Este campo tem uma data demasiado cedo.\";s:13:\"date_too_late\";s:40:\"Este campo tem uma data demasiado tarde.\";s:14:\"invalid_number\";s:28:\"Por favor digite um número.\";s:16:\"number_too_small\";s:44:\"Este campo tem um número demasiado pequeno.\";s:16:\"number_too_large\";s:43:\"Este campo tem um número demasiado grande.\";s:23:\"quiz_answer_not_correct\";s:40:\"A resposta à questão está incorrecta.\";s:13:\"invalid_email\";s:39:\"Por favor digite um endereço de email.\";s:11:\"invalid_url\";s:23:\"Por favor digite um URL\";s:11:\"invalid_tel\";s:40:\"Por favor digite um número de telefone.\";}'
    ), (
        154,
        44,
        '_additional_settings',
        ''
    ), (155, 44, '_locale', 'pt_PT'), (
        156,
        44,
        '_hash',
        '5a4363c39ade9d6494effc65c252aeb07ecd0dbd'
    ), (
        157,
        3,
        '_edit_lock',
        '1705342956:1'
    ), (
        168,
        44,
        '_config_validation',
        'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";s:22:\"invalid_mailbox_syntax\";s:4:\"args\";a:3:{s:7:\"message\";s:60:\"Sintaxe inválida usada no campo %name% na caixa de correio.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'
    ), (
        169,
        46,
        '_wp_attached_file',
        '2024/01/Rectangle-13.png'
    ), (
        170,
        46,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:306;s:6:\"height\";i:186;s:4:\"file\";s:24:\"2024/01/Rectangle-13.png\";s:8:\"filesize\";i:121205;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Rectangle-13-300x182.png\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:100309;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Rectangle-13-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42708;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (178, 6, '_thumbnail_id', '46'), (179, 47, 'footnotes', ''), (184, 9, '_thumbnail_id', '11'), (
        199,
        16,
        '_wp_old_date',
        '2024-01-13'
    ), (200, 16, '_edit_last', '1'), (
        203,
        13,
        '_wp_old_date',
        '2024-01-13'
    ), (204, 13, '_edit_last', '1'), (
        207,
        9,
        '_wp_old_date',
        '2024-01-13'
    ), (208, 9, '_edit_last', '1'), (
        211,
        6,
        '_wp_old_date',
        '2024-01-13'
    ), (212, 6, '_edit_last', '1'), (213, 48, '_edit_last', '1'), (
        214,
        48,
        '_edit_lock',
        '1705365160:1'
    ), (215, 51, '_edit_last', '1'), (
        216,
        51,
        '_edit_lock',
        '1705365091:1'
    ), (
        217,
        52,
        '_wp_attached_file',
        '2024/01/thumb.png'
    ), (
        218,
        52,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:56;s:6:\"height\";i:56;s:4:\"file\";s:17:\"2024/01/thumb.png\";s:8:\"filesize\";i:7459;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (219, 51, '_thumbnail_id', '52'), (220, 53, '_edit_last', '1'), (
        221,
        53,
        '_edit_lock',
        '1705366343:1'
    ), (
        222,
        51,
        'tipo_tratamento',
        'Tratamento Pscicológico'
    ), (
        223,
        51,
        '_tipo_tratamento',
        'field_65a5ce77abf9e'
    ), (
        224,
        55,
        '_wp_attached_file',
        '2024/01/Rectangle-19.png'
    ), (
        225,
        55,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:56;s:6:\"height\";i:56;s:4:\"file\";s:24:\"2024/01/Rectangle-19.png\";s:8:\"filesize\";i:6943;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (226, 48, '_thumbnail_id', '55'), (
        227,
        48,
        'tipo_tratamento',
        'Tratamento Alcoolismo'
    ), (
        228,
        48,
        '_tipo_tratamento',
        'field_65a5ce77abf9e'
    ), (229, 56, '_edit_last', '1'), (
        230,
        56,
        '_edit_lock',
        '1705365196:1'
    ), (
        231,
        57,
        '_wp_attached_file',
        '2024/01/Rectangle-191.png'
    ), (
        232,
        57,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:56;s:6:\"height\";i:56;s:4:\"file\";s:25:\"2024/01/Rectangle-191.png\";s:8:\"filesize\";i:5555;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (233, 56, '_thumbnail_id', '57'), (
        234,
        56,
        'tipo_tratamento',
        'Tratamento Pscicológico'
    ), (
        235,
        56,
        '_tipo_tratamento',
        'field_65a5ce77abf9e'
    ), (245, 58, '_edit_last', '1'), (
        246,
        58,
        '_edit_lock',
        '1705369107:1'
    ), (
        247,
        61,
        '_wp_attached_file',
        '2024/01/plan_1.png'
    ), (
        248,
        61,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:106;s:6:\"height\";i:106;s:4:\"file\";s:18:\"2024/01/plan_1.png\";s:8:\"filesize\";i:3858;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (
        249,
        24,
        'titulo_diferencial',
        'Internações via Plano de Saúde e de Forma Particular.'
    ), (
        250,
        24,
        '_titulo_diferencial',
        'field_65a5d4490ce43'
    ), (
        251,
        24,
        'icone_diferencial',
        '61'
    ), (
        252,
        24,
        '_icone_diferencial',
        'field_65a5d48a0ce45'
    ), (253, 43, 'banner', '25'), (
        254,
        43,
        '_banner',
        'field_65a29ae0c5cce'
    ), (
        255,
        43,
        'titulo',
        'Você ou seu familiar precisam de ajuda?'
    ), (
        256,
        43,
        '_titulo',
        'field_65a29ae0c5cce'
    ), (
        257,
        43,
        'descricao',
        'Trabalhamos há mais de 22 anos na recuperação de adictos e estamos prontos para lhe auxiliar.'
    ), (
        258,
        43,
        '_descricao',
        'field_65a2a3be3b8d3'
    ), (
        259,
        43,
        'saiba_mais',
        'a:3:{s:5:\"title\";s:10:\"Saiba mais\";s:3:\"url\";s:19:\"https://github.com/\";s:6:\"target\";s:6:\"_blank\";}'
    ), (
        260,
        43,
        '_saiba_mais',
        'field_65a2a59524d76'
    ), (
        261,
        43,
        'about_title',
        'Conheça a Atratis'
    ), (
        262,
        43,
        '_about_title',
        'field_65a410fed077e'
    ), (
        263,
        43,
        'about_descricao',
        'Fruto do desejo de resgatar vidas, em março de 1999  o Instituto Atratis foi fundado pelo Psicólogo e especialista em dependência química, Osmar Diógenes. O instituto acolhe, trata e contribui diretamente na recuperação de álcool, maconha, cocaína, crack, drogas sintéticas, medicamentos e drogas ilícitas, permitindo que seus residentes retornem à sociedade e às suas famílias para que vivam com dignidade.'
    ), (
        264,
        43,
        '_about_descricao',
        'field_65a4117ddea19'
    ), (265, 43, 'about_image', '42'), (
        266,
        43,
        '_about_image',
        'field_65a411b0fb54a'
    ), (
        267,
        43,
        'titulo_diferencial',
        'Internações via Plano de Saúde e de Forma Particular.'
    ), (
        268,
        43,
        '_titulo_diferencial',
        'field_65a5d4490ce43'
    ), (
        269,
        43,
        'icone_diferencial',
        '61'
    ), (
        270,
        43,
        '_icone_diferencial',
        'field_65a5d48a0ce45'
    ), (
        271,
        68,
        '_wp_attached_file',
        '2024/01/people_1.png'
    ), (
        272,
        68,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:106;s:6:\"height\";i:106;s:4:\"file\";s:20:\"2024/01/people_1.png\";s:8:\"filesize\";i:3014;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (
        273,
        69,
        '_wp_attached_file',
        '2024/01/doctor_1.png'
    ), (
        274,
        69,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:84;s:6:\"height\";i:84;s:4:\"file\";s:20:\"2024/01/doctor_1.png\";s:8:\"filesize\";i:2778;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (
        275,
        24,
        'titulo_diferencial_01',
        'Internações voluntárias e involuntárias com Médicos de Plantão 24h.'
    ), (
        276,
        24,
        '_titulo_diferencial_01',
        'field_65a5d4490ce43'
    ), (
        277,
        24,
        'icone_diferencial_01',
        '69'
    ), (
        278,
        24,
        '_icone_diferencial_01',
        'field_65a5d48a0ce45'
    ), (
        279,
        24,
        'titulo_diferencial_02',
        'Setores separados por sexo: Homens / Mulheres.'
    ), (
        280,
        24,
        '_titulo_diferencial_02',
        'field_65a5db69e65d0'
    ), (
        281,
        24,
        'icone_diferencial_02',
        '68'
    ), (
        282,
        24,
        '_icone_diferencial_02',
        'field_65a5dbcacca69'
    ), (
        283,
        24,
        'titulo_diferencial_03',
        'Internações via Plano de Saúde e de Forma Particular.'
    ), (
        284,
        24,
        '_titulo_diferencial_03',
        'field_65a5dba1e65d1'
    ), (
        285,
        24,
        'icone_diferencial_03',
        '61'
    ), (
        286,
        24,
        '_icone_diferencial_03',
        'field_65a5dbf2cca6a'
    ), (287, 62, 'banner', '25'), (
        288,
        62,
        '_banner',
        'field_65a29ae0c5cce'
    ), (
        289,
        62,
        'titulo',
        'Você ou seu familiar precisam de ajuda?'
    ), (
        290,
        62,
        '_titulo',
        'field_65a29ae0c5cce'
    ), (
        291,
        62,
        'descricao',
        'Trabalhamos há mais de 22 anos na recuperação de adictos e estamos prontos para lhe auxiliar.'
    ), (
        292,
        62,
        '_descricao',
        'field_65a2a3be3b8d3'
    ), (
        293,
        62,
        'saiba_mais',
        'a:3:{s:5:\"title\";s:10:\"Saiba mais\";s:3:\"url\";s:19:\"https://github.com/\";s:6:\"target\";s:6:\"_blank\";}'
    ), (
        294,
        62,
        '_saiba_mais',
        'field_65a2a59524d76'
    ), (
        295,
        62,
        'about_title',
        'Conheça a Atratis'
    ), (
        296,
        62,
        '_about_title',
        'field_65a410fed077e'
    ), (
        297,
        62,
        'about_descricao',
        'Fruto do desejo de resgatar vidas, em março de 1999  o Instituto Atratis foi fundado pelo Psicólogo e especialista em dependência química, Osmar Diógenes. O instituto acolhe, trata e contribui diretamente na recuperação de álcool, maconha, cocaína, crack, drogas sintéticas, medicamentos e drogas ilícitas, permitindo que seus residentes retornem à sociedade e às suas famílias para que vivam com dignidade.'
    ), (
        298,
        62,
        '_about_descricao',
        'field_65a4117ddea19'
    ), (299, 62, 'about_image', '42'), (
        300,
        62,
        '_about_image',
        'field_65a411b0fb54a'
    ), (
        301,
        62,
        'titulo_diferencial',
        'Internações via Plano de Saúde e de Forma Particular.'
    ), (
        302,
        62,
        '_titulo_diferencial',
        'field_65a5d4490ce43'
    ), (
        303,
        62,
        'icone_diferencial',
        '61'
    ), (
        304,
        62,
        '_icone_diferencial',
        'field_65a5d48a0ce45'
    ), (
        305,
        62,
        'titulo_diferencial_01',
        'Internações voluntárias e involuntárias com Médicos de Plantão 24h.'
    ), (
        306,
        62,
        '_titulo_diferencial_01',
        'field_65a5d4490ce43'
    ), (
        307,
        62,
        'icone_diferencial_01',
        '69'
    ), (
        308,
        62,
        '_icone_diferencial_01',
        'field_65a5d48a0ce45'
    ), (
        309,
        62,
        'titulo_diferencial_02',
        'Setores separados por sexo: Homens / Mulheres.'
    ), (
        310,
        62,
        '_titulo_diferencial_02',
        'field_65a5db69e65d0'
    ), (
        311,
        62,
        'icone_diferencial_02',
        '68'
    ), (
        312,
        62,
        '_icone_diferencial_02',
        'field_65a5dbcacca69'
    ), (
        313,
        62,
        'titulo_diferencial_03',
        'Internações via Plano de Saúde e de Forma Particular.'
    ), (
        314,
        62,
        '_titulo_diferencial_03',
        'field_65a5dba1e65d1'
    ), (
        315,
        62,
        'icone_diferencial_03',
        '61'
    ), (
        316,
        62,
        '_icone_diferencial_03',
        'field_65a5dbf2cca6a'
    ), (317, 71, '_edit_last', '1'), (
        318,
        71,
        '_edit_lock',
        '1705369697:1'
    ), (
        319,
        76,
        '_wp_attached_file',
        '2024/01/unimed.png'
    ), (
        320,
        76,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:169;s:6:\"height\";i:49;s:4:\"file\";s:18:\"2024/01/unimed.png\";s:8:\"filesize\";i:2085;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"unimed-150x49.png\";s:5:\"width\";i:150;s:6:\"height\";i:49;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1780;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (
        321,
        77,
        '_wp_attached_file',
        '2024/01/sulamerica-1.png'
    ), (
        322,
        77,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:144;s:6:\"height\";i:42;s:4:\"file\";s:24:\"2024/01/sulamerica-1.png\";s:8:\"filesize\";i:5870;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (
        323,
        78,
        '_wp_attached_file',
        '2024/01/saude-caixa-1.png'
    ), (
        324,
        78,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:170;s:6:\"height\";i:50;s:4:\"file\";s:25:\"2024/01/saude-caixa-1.png\";s:8:\"filesize\";i:4507;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"saude-caixa-1-150x50.png\";s:5:\"width\";i:150;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3317;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (
        325,
        79,
        '_wp_attached_file',
        '2024/01/amil-1.png'
    ), (
        326,
        79,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:170;s:6:\"height\";i:50;s:4:\"file\";s:18:\"2024/01/amil-1.png\";s:8:\"filesize\";i:2189;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"amil-1-150x50.png\";s:5:\"width\";i:150;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1614;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (
        327,
        24,
        'imagem_plano_01',
        '76'
    ), (
        328,
        24,
        '_imagem_plano_01',
        'field_65a5deaff5d6a'
    ), (
        329,
        24,
        'imagem_plano_02',
        '77'
    ), (
        330,
        24,
        '_imagem_plano_02',
        'field_65a5deddf5d6b'
    ), (
        331,
        24,
        'imagem_plano_03',
        '78'
    ), (
        332,
        24,
        '_imagem_plano_03',
        'field_65a5defdf5d6c'
    ), (
        333,
        24,
        'imagem_plano_04',
        '79'
    ), (
        334,
        24,
        '_imagem_plano_04',
        'field_65a5df21f5d6d'
    ), (335, 70, 'banner', '25'), (
        336,
        70,
        '_banner',
        'field_65a29ae0c5cce'
    ), (
        337,
        70,
        'titulo',
        'Você ou seu familiar precisam de ajuda?'
    ), (
        338,
        70,
        '_titulo',
        'field_65a29ae0c5cce'
    ), (
        339,
        70,
        'descricao',
        'Trabalhamos há mais de 22 anos na recuperação de adictos e estamos prontos para lhe auxiliar.'
    ), (
        340,
        70,
        '_descricao',
        'field_65a2a3be3b8d3'
    ), (
        341,
        70,
        'saiba_mais',
        'a:3:{s:5:\"title\";s:10:\"Saiba mais\";s:3:\"url\";s:19:\"https://github.com/\";s:6:\"target\";s:6:\"_blank\";}'
    ), (
        342,
        70,
        '_saiba_mais',
        'field_65a2a59524d76'
    ), (
        343,
        70,
        'about_title',
        'Conheça a Atratis'
    ), (
        344,
        70,
        '_about_title',
        'field_65a410fed077e'
    ), (
        345,
        70,
        'about_descricao',
        'Fruto do desejo de resgatar vidas, em março de 1999  o Instituto Atratis foi fundado pelo Psicólogo e especialista em dependência química, Osmar Diógenes. O instituto acolhe, trata e contribui diretamente na recuperação de álcool, maconha, cocaína, crack, drogas sintéticas, medicamentos e drogas ilícitas, permitindo que seus residentes retornem à sociedade e às suas famílias para que vivam com dignidade.'
    ), (
        346,
        70,
        '_about_descricao',
        'field_65a4117ddea19'
    ), (347, 70, 'about_image', '42'), (
        348,
        70,
        '_about_image',
        'field_65a411b0fb54a'
    ), (
        349,
        70,
        'titulo_diferencial',
        'Internações via Plano de Saúde e de Forma Particular.'
    ), (
        350,
        70,
        '_titulo_diferencial',
        'field_65a5d4490ce43'
    ), (
        351,
        70,
        'icone_diferencial',
        '61'
    ), (
        352,
        70,
        '_icone_diferencial',
        'field_65a5d48a0ce45'
    ), (
        353,
        70,
        'titulo_diferencial_01',
        'Internações voluntárias e involuntárias com Médicos de Plantão 24h.'
    ), (
        354,
        70,
        '_titulo_diferencial_01',
        'field_65a5d4490ce43'
    ), (
        355,
        70,
        'icone_diferencial_01',
        '69'
    ), (
        356,
        70,
        '_icone_diferencial_01',
        'field_65a5d48a0ce45'
    ), (
        357,
        70,
        'titulo_diferencial_02',
        'Setores separados por sexo: Homens / Mulheres.'
    ), (
        358,
        70,
        '_titulo_diferencial_02',
        'field_65a5db69e65d0'
    ), (
        359,
        70,
        'icone_diferencial_02',
        '68'
    ), (
        360,
        70,
        '_icone_diferencial_02',
        'field_65a5dbcacca69'
    ), (
        361,
        70,
        'titulo_diferencial_03',
        'Internações via Plano de Saúde e de Forma Particular.'
    ), (
        362,
        70,
        '_titulo_diferencial_03',
        'field_65a5dba1e65d1'
    ), (
        363,
        70,
        'icone_diferencial_03',
        '61'
    ), (
        364,
        70,
        '_icone_diferencial_03',
        'field_65a5dbf2cca6a'
    ), (
        365,
        70,
        'imagem_plano_01',
        '76'
    ), (
        366,
        70,
        '_imagem_plano_01',
        'field_65a5deaff5d6a'
    ), (
        367,
        70,
        'imagem_plano_02',
        '77'
    ), (
        368,
        70,
        '_imagem_plano_02',
        'field_65a5deddf5d6b'
    ), (
        369,
        70,
        'imagem_plano_03',
        '78'
    ), (
        370,
        70,
        '_imagem_plano_03',
        'field_65a5defdf5d6c'
    ), (
        371,
        70,
        'imagem_plano_04',
        '79'
    ), (
        372,
        70,
        '_imagem_plano_04',
        'field_65a5df21f5d6d'
    ), (373, 82, '_edit_last', '1'), (
        374,
        82,
        '_edit_lock',
        '1705369840:1'
    ), (
        375,
        83,
        '_wp_attached_file',
        '2024/01/tratamento.png'
    ), (
        376,
        83,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:416;s:6:\"height\";i:215;s:4:\"file\";s:22:\"2024/01/tratamento.png\";s:8:\"filesize\";i:180654;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"tratamento-300x155.png\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:92877;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"tratamento-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44733;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (377, 82, '_thumbnail_id', '83'), (378, 84, '_edit_last', '1'), (
        379,
        84,
        '_edit_lock',
        '1705369879:1'
    ), (
        380,
        85,
        '_wp_attached_file',
        '2024/01/Rectangle-131-1.png'
    ), (
        381,
        85,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:416;s:6:\"height\";i:215;s:4:\"file\";s:27:\"2024/01/Rectangle-131-1.png\";s:8:\"filesize\";i:160955;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"Rectangle-131-1-300x155.png\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:77661;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"Rectangle-131-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39687;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (382, 84, '_thumbnail_id', '85'), (383, 86, '_edit_last', '1'), (
        384,
        86,
        '_edit_lock',
        '1705370299:1'
    ), (
        385,
        87,
        '_wp_attached_file',
        '2024/01/Rectangle-132-1.png'
    ), (
        386,
        87,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:416;s:6:\"height\";i:215;s:4:\"file\";s:27:\"2024/01/Rectangle-132-1.png\";s:8:\"filesize\";i:172839;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"Rectangle-132-1-300x155.png\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:84087;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"Rectangle-132-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45987;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    ), (387, 86, '_thumbnail_id', '87');

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE
    `wp_posts` (
        `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
        `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
        `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
        `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
        `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
        `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
        `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
        `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
        `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
        `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
        `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
        `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `menu_order` int(11) NOT NULL DEFAULT '0',
        `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
        `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `comment_count` bigint(20) NOT NULL DEFAULT '0',
        PRIMARY KEY (`ID`),
        KEY `post_name` (`post_name`(191)),
        KEY `type_status_date` (
            `post_type`,
            `post_status`,
            `post_date`,
            `ID`
        ),
        KEY `post_parent` (`post_parent`),
        KEY `post_author` (`post_author`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO
    `wp_posts` (
        `ID`,
        `post_author`,
        `post_date`,
        `post_date_gmt`,
        `post_content`,
        `post_title`,
        `post_excerpt`,
        `post_status`,
        `comment_status`,
        `ping_status`,
        `post_password`,
        `post_name`,
        `to_ping`,
        `pinged`,
        `post_modified`,
        `post_modified_gmt`,
        `post_content_filtered`,
        `post_parent`,
        `guid`,
        `menu_order`,
        `post_type`,
        `post_mime_type`,
        `comment_count`
    )
VALUES (
        3,
        1,
        '2024-01-12 21:41:24',
        '2024-01-12 21:41:24',
        '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10023.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->',
        'Privacy Policy',
        '',
        'publish',
        'closed',
        'open',
        '',
        'privacy-policy',
        '',
        '',
        '2024-01-15 18:02:47',
        '2024-01-15 18:02:47',
        '',
        0,
        'http://localhost:10023/?page_id=3',
        0,
        'page',
        '',
        0
    ), (
        4,
        1,
        '2024-01-13 13:35:25',
        '0000-00-00 00:00:00',
        '',
        'Auto Draft',
        '',
        'auto-draft',
        'open',
        'open',
        '',
        '',
        '',
        '',
        '2024-01-13 13:35:25',
        '0000-00-00 00:00:00',
        '',
        0,
        'http://localhost:10023/?p=4',
        0,
        'post',
        '',
        0
    ), (
        6,
        1,
        '2024-01-15 23:50:23',
        '2024-01-15 23:50:23',
        '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus eu tincidunt dolor, diam ut leo eget auctor ut. Dictum congue vitae dolor.</p>\n<!-- /wp:paragraph -->',
        'Auctor faucibus.',
        '',
        'publish',
        'open',
        'open',
        '',
        'auctor-faucibus',
        '',
        '',
        '2024-01-15 23:50:23',
        '2024-01-15 23:50:23',
        '',
        0,
        'http://localhost:10023/?p=6',
        0,
        'post',
        '',
        0
    ), (
        8,
        1,
        '2024-01-13 13:51:18',
        '2024-01-13 13:51:18',
        '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus eu tincidunt dolor, diam ut leo eget auctor ut. Dictum congue vitae dolor.</p>\n<!-- /wp:paragraph -->',
        'Auctor faucibus.',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '6-revision-v1',
        '',
        '',
        '2024-01-13 13:51:18',
        '2024-01-13 13:51:18',
        '',
        6,
        'http://localhost:10023/?p=8',
        0,
        'revision',
        '',
        0
    ), (
        9,
        1,
        '2024-01-15 23:50:23',
        '2024-01-15 23:50:23',
        '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus eu tincidunt dolor, diam ut leo eget auctor ut. Dictum congue vitae dolor.</p>\n<!-- /wp:paragraph -->',
        'Auctor faucibus.',
        '',
        'publish',
        'open',
        'open',
        '',
        'auctor-faucibus-2',
        '',
        '',
        '2024-01-15 23:50:23',
        '2024-01-15 23:50:23',
        '',
        0,
        'http://localhost:10023/?p=9',
        0,
        'post',
        '',
        0
    ), (
        11,
        1,
        '2024-01-13 13:52:57',
        '2024-01-13 13:52:57',
        '',
        'Rectangle 13(1)',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'rectangle-131',
        '',
        '',
        '2024-01-13 13:52:57',
        '2024-01-13 13:52:57',
        '',
        9,
        'http://localhost:10023/wp-content/uploads/2024/01/Rectangle-131.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        12,
        1,
        '2024-01-13 13:53:02',
        '2024-01-13 13:53:02',
        '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus eu tincidunt dolor, diam ut leo eget auctor ut. Dictum congue vitae dolor.</p>\n<!-- /wp:paragraph -->',
        'Auctor faucibus.',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '9-revision-v1',
        '',
        '',
        '2024-01-13 13:53:02',
        '2024-01-13 13:53:02',
        '',
        9,
        'http://localhost:10023/?p=12',
        0,
        'revision',
        '',
        0
    ), (
        13,
        1,
        '2024-01-15 23:50:22',
        '2024-01-15 23:50:22',
        '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus eu tincidunt dolor, diam ut leo eget auctor ut. Dictum congue vitae dolor.</p>\n<!-- /wp:paragraph -->',
        'Auctor faucibus.',
        '',
        'publish',
        'open',
        'open',
        '',
        'auctor-faucibus-3',
        '',
        '',
        '2024-01-15 23:50:22',
        '2024-01-15 23:50:22',
        '',
        0,
        'http://localhost:10023/?p=13',
        0,
        'post',
        '',
        0
    ), (
        14,
        1,
        '2024-01-13 13:53:41',
        '2024-01-13 13:53:41',
        '',
        'Rectangle 13(2)',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'rectangle-132',
        '',
        '',
        '2024-01-13 13:53:41',
        '2024-01-13 13:53:41',
        '',
        13,
        'http://localhost:10023/wp-content/uploads/2024/01/Rectangle-132.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        15,
        1,
        '2024-01-13 13:55:37',
        '2024-01-13 13:55:37',
        '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus eu tincidunt dolor, diam ut leo eget auctor ut. Dictum congue vitae dolor.</p>\n<!-- /wp:paragraph -->',
        'Auctor faucibus.',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '13-revision-v1',
        '',
        '',
        '2024-01-13 13:55:37',
        '2024-01-13 13:55:37',
        '',
        13,
        'http://localhost:10023/?p=15',
        0,
        'revision',
        '',
        0
    ), (
        16,
        1,
        '2024-01-15 23:50:21',
        '2024-01-15 23:50:21',
        '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus eu tincidunt dolor, diam ut leo eget auctor ut. Dictum congue vitae dolor.</p>\n<!-- /wp:paragraph -->',
        'Auctor faucibus.',
        '',
        'publish',
        'open',
        'open',
        '',
        'auctor-faucibus-4',
        '',
        '',
        '2024-01-15 23:50:21',
        '2024-01-15 23:50:21',
        '',
        0,
        'http://localhost:10023/?p=16',
        0,
        'post',
        '',
        0
    ), (
        17,
        1,
        '2024-01-13 13:56:32',
        '2024-01-13 13:56:32',
        '',
        'Rectangle 13(3)',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'rectangle-133',
        '',
        '',
        '2024-01-13 13:56:32',
        '2024-01-13 13:56:32',
        '',
        16,
        'http://localhost:10023/wp-content/uploads/2024/01/Rectangle-133.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        18,
        1,
        '2024-01-13 13:57:28',
        '2024-01-13 13:57:28',
        '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus eu tincidunt dolor, diam ut leo eget auctor ut. Dictum congue vitae dolor.</p>\n<!-- /wp:paragraph -->',
        'Auctor faucibus.',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '16-revision-v1',
        '',
        '',
        '2024-01-13 13:57:28',
        '2024-01-13 13:57:28',
        '',
        16,
        'http://localhost:10023/?p=18',
        0,
        'revision',
        '',
        0
    ), (
        19,
        1,
        '2024-01-13 14:08:33',
        '0000-00-00 00:00:00',
        '',
        'Rascunho automático',
        '',
        'auto-draft',
        'closed',
        'closed',
        '',
        '',
        '',
        '',
        '2024-01-13 14:08:33',
        '0000-00-00 00:00:00',
        '',
        0,
        'http://localhost:10023/?post_type=acf-field-group&p=19',
        0,
        'acf-field-group',
        '',
        0
    ), (
        20,
        1,
        '2024-01-13 14:09:24',
        '0000-00-00 00:00:00',
        '',
        'Rascunho automático',
        '',
        'auto-draft',
        'closed',
        'closed',
        '',
        '',
        '',
        '',
        '2024-01-13 14:09:24',
        '0000-00-00 00:00:00',
        '',
        0,
        'http://localhost:10023/?post_type=acf-field-group&p=20',
        0,
        'acf-field-group',
        '',
        0
    ), (
        21,
        1,
        '2024-01-13 14:17:30',
        '2024-01-13 14:17:30',
        'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"24\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:25:\"Campos da página inicial\";s:12:\"show_in_rest\";i:0;}',
        'Banner',
        'banner',
        'publish',
        'closed',
        'closed',
        '',
        'group_65a29ae00ad4a',
        '',
        '',
        '2024-01-14 16:56:51',
        '2024-01-14 16:56:51',
        '',
        0,
        'http://localhost:10023/?post_type=acf-field-group&#038;p=21',
        0,
        'acf-field-group',
        '',
        0
    ), (
        22,
        1,
        '2024-01-13 14:17:30',
        '2024-01-13 14:17:30',
        'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:42:\"Cadastre um título para o banner destaque\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}',
        'Título',
        'titulo',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a29ae0c5cce',
        '',
        '',
        '2024-01-13 14:59:00',
        '2024-01-13 14:59:00',
        '',
        21,
        'http://localhost:10023/?post_type=acf-field&#038;p=22',
        0,
        'acf-field',
        '',
        0
    ), (
        24,
        1,
        '2024-01-13 14:21:03',
        '2024-01-13 14:21:03',
        '',
        'Home',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'home',
        '',
        '',
        '2024-01-16 01:47:55',
        '2024-01-16 01:47:55',
        '',
        0,
        'http://localhost:10023/?page_id=24',
        0,
        'page',
        '',
        0
    ), (
        25,
        1,
        '2024-01-13 14:20:45',
        '2024-01-13 14:20:45',
        '',
        'Group 10',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'group-10',
        '',
        '',
        '2024-01-13 14:20:45',
        '2024-01-13 14:20:45',
        '',
        24,
        'http://localhost:10023/wp-content/uploads/2024/01/Group-10.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        26,
        1,
        '2024-01-13 14:21:03',
        '2024-01-13 14:21:03',
        '',
        'Home',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '24-revision-v1',
        '',
        '',
        '2024-01-13 14:21:03',
        '2024-01-13 14:21:03',
        '',
        24,
        'http://localhost:10023/?p=26',
        0,
        'revision',
        '',
        0
    ), (
        27,
        1,
        '2024-01-13 14:21:04',
        '2024-01-13 14:21:04',
        '',
        'Home',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '24-revision-v1',
        '',
        '',
        '2024-01-13 14:21:04',
        '2024-01-13 14:21:04',
        '',
        24,
        'http://localhost:10023/?p=27',
        0,
        'revision',
        '',
        0
    ), (
        28,
        1,
        '2024-01-13 14:53:23',
        '2024-01-13 14:53:23',
        'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:47:\"Cadastre uma descrição para o banner destaque\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}',
        'Descrição',
        'descricao',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a2a3be3b8d3',
        '',
        '',
        '2024-01-13 14:59:00',
        '2024-01-13 14:59:00',
        '',
        21,
        'http://localhost:10023/?post_type=acf-field&#038;p=28',
        1,
        'acf-field',
        '',
        0
    ), (
        29,
        1,
        '2024-01-13 15:00:00',
        '2024-01-13 15:00:00',
        '',
        'Home',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '24-revision-v1',
        '',
        '',
        '2024-01-13 15:00:00',
        '2024-01-13 15:00:00',
        '',
        24,
        'http://localhost:10023/?p=29',
        0,
        'revision',
        '',
        0
    ), (
        30,
        1,
        '2024-01-13 15:02:39',
        '2024-01-13 15:02:39',
        'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:28:\"Cadastre o botão saiba mais\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}',
        'Saiba mais',
        'saiba_mais',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a2a59524d76',
        '',
        '',
        '2024-01-13 15:07:01',
        '2024-01-13 15:07:01',
        '',
        21,
        'http://localhost:10023/?post_type=acf-field&#038;p=30',
        2,
        'acf-field',
        '',
        0
    ), (
        31,
        1,
        '2024-01-13 15:08:03',
        '2024-01-13 15:08:03',
        '',
        'Home',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '24-revision-v1',
        '',
        '',
        '2024-01-13 15:08:03',
        '2024-01-13 15:08:03',
        '',
        24,
        'http://localhost:10023/?p=31',
        0,
        'revision',
        '',
        0
    ), (
        32,
        1,
        '2024-01-14 05:58:33',
        '2024-01-13 20:55:43',
        '',
        'Início',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'inicio',
        '',
        '',
        '2024-01-14 05:58:33',
        '2024-01-14 05:58:33',
        '',
        0,
        'http://localhost:10023/?p=32',
        1,
        'nav_menu_item',
        '',
        0
    ), (
        33,
        1,
        '2024-01-14 05:58:33',
        '2024-01-13 20:55:43',
        '',
        'O IVV',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'o-ivv',
        '',
        '',
        '2024-01-14 05:58:33',
        '2024-01-14 05:58:33',
        '',
        0,
        'http://localhost:10023/?p=33',
        2,
        'nav_menu_item',
        '',
        0
    ), (
        34,
        1,
        '2024-01-14 05:58:33',
        '2024-01-13 20:55:43',
        '',
        'Tratamentos',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'tratamentos',
        '',
        '',
        '2024-01-14 05:58:33',
        '2024-01-14 05:58:33',
        '',
        0,
        'http://localhost:10023/?p=34',
        3,
        'nav_menu_item',
        '',
        0
    ), (
        35,
        1,
        '2024-01-14 05:58:33',
        '2024-01-13 20:55:43',
        '',
        'Convênios',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'convenios',
        '',
        '',
        '2024-01-14 05:58:33',
        '2024-01-14 05:58:33',
        '',
        0,
        'http://localhost:10023/?p=35',
        4,
        'nav_menu_item',
        '',
        0
    ), (
        36,
        1,
        '2024-01-14 05:58:34',
        '2024-01-13 20:55:44',
        '',
        'Depoimentos',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'depoimentos',
        '',
        '',
        '2024-01-14 05:58:34',
        '2024-01-14 05:58:34',
        '',
        0,
        'http://localhost:10023/?p=36',
        5,
        'nav_menu_item',
        '',
        0
    ), (
        37,
        1,
        '2024-01-14 05:58:34',
        '2024-01-13 20:55:44',
        '',
        'Blog',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'blog',
        '',
        '',
        '2024-01-14 05:58:34',
        '2024-01-14 05:58:34',
        '',
        0,
        'http://localhost:10023/?p=37',
        6,
        'nav_menu_item',
        '',
        0
    ), (
        38,
        1,
        '2024-01-14 16:53:11',
        '2024-01-14 16:53:11',
        'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"24\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}',
        'Sobre',
        'sobre',
        'publish',
        'closed',
        'closed',
        '',
        'group_65a410fde003a',
        '',
        '',
        '2024-01-14 16:59:25',
        '2024-01-14 16:59:25',
        '',
        0,
        'http://localhost:10023/?post_type=acf-field-group&#038;p=38',
        0,
        'acf-field-group',
        '',
        0
    ), (
        39,
        1,
        '2024-01-14 16:53:11',
        '2024-01-14 16:53:11',
        'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:19:\"Cadastre um título\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}',
        'Título',
        'about_title',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a410fed077e',
        '',
        '',
        '2024-01-14 16:58:53',
        '2024-01-14 16:58:53',
        '',
        38,
        'http://localhost:10023/?post_type=acf-field&#038;p=39',
        0,
        'acf-field',
        '',
        0
    ), (
        40,
        1,
        '2024-01-14 16:53:52',
        '2024-01-14 16:53:52',
        'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:24:\"Cadastre uma descrição\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}',
        'Descrição',
        'about_descricao',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a4117ddea19',
        '',
        '',
        '2024-01-14 16:59:25',
        '2024-01-14 16:59:25',
        '',
        38,
        'http://localhost:10023/?post_type=acf-field&#038;p=40',
        1,
        'acf-field',
        '',
        0
    ), (
        41,
        1,
        '2024-01-14 16:54:44',
        '2024-01-14 16:54:44',
        'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:4:\"full\";}',
        'Imagem',
        'about_image',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a411b0fb54a',
        '',
        '',
        '2024-01-14 16:54:44',
        '2024-01-14 16:54:44',
        '',
        38,
        'http://localhost:10023/?post_type=acf-field&p=41',
        2,
        'acf-field',
        '',
        0
    ), (
        42,
        1,
        '2024-01-14 17:00:03',
        '2024-01-14 17:00:03',
        '',
        'about',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'about',
        '',
        '',
        '2024-01-14 17:00:03',
        '2024-01-14 17:00:03',
        '',
        24,
        'http://localhost:10023/wp-content/uploads/2024/01/about.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        43,
        1,
        '2024-01-14 17:00:24',
        '2024-01-14 17:00:24',
        '',
        'Home',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '24-revision-v1',
        '',
        '',
        '2024-01-14 17:00:24',
        '2024-01-14 17:00:24',
        '',
        24,
        'http://localhost:10023/?p=43',
        0,
        'revision',
        '',
        0
    ), (
        44,
        1,
        '2024-01-15 17:50:54',
        '2024-01-15 17:50:54',
        '<div class=\"at-form\">\r\n<h2 class=\"at-form__title\">Deixe a sua mensagem</h2>\r\n  <div class=\"at-form__row\">\r\n    <div class=\"at-form__input\"><span>Nome</span>[text* nome id:nome]</div>\r\n    <div class=\"at-form__input\"><span>E-mail</span>[email* email id:email]</div>\r\n  </div>\r\n  <div class=\"at-form__row\">\r\n    <div class=\"at-form__input\"><span>Telefone</span>[text* telefone id:tel]</div>\r\n    <div class=\"at-form__input\"><span>Endereço</span>[text* endereco id:endereco]</div>\r\n  </div>\r\n  <div class=\"at-form__row \">\r\n    <div class=\"at-form__input at-form__input--textarea\"><span>Mensagem</span>[textarea* observacao id:msg]</div>\r\n  </div>\r\n  <div class=\"at-form__row at-form__row--submit\">[acceptance aceite optional class:iptAceite] <span class=\"texto\">Aceito as <a href=\"http://localhost:10023/privacy-policy/\" title=\"termos de uso\" target=\"_blank\" rel=\"noopener\">Políticas de Privacidade</a>.</span>[submit id:enviar class:at-btn \"Enviar\"]</div>\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <dev-email@wpengine.local>\n[_site_admin_email]\nDe: [your-name] [your-email]\r\nAssunto: [your-subject]\r\n\r\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <dev-email@wpengine.local>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nObrigado pela sua mensagem.\nOcorreu um erro ao tentar enviar a sua mensagem. Por favor, tente de novo mais tarde.\nUm ou mais campos com erros. Por favor, verifique e tente de novo.\nOcorreu um erro ao tentar enviar a sua mensagem. Por favor, tente de novo mais tarde.\nTem de aceitar os termos e condições antes de enviar a sua mensagem.\nPor favor preencha este campo.\nEste campo é demasiado extenso.\nEste campo é demasiado curto.\nOcorreu um erro desconhecido ao carregar o ficheiro.\nNão tem permissão para carregar ficheiros deste tipo.\nO ficheiro carregado é demasiado grande.\nOcorreu um erro ao carregar o ficheiro.\nPor favor digite uma data no formato YYYY-MM-DD.\nEste campo tem uma data demasiado cedo.\nEste campo tem uma data demasiado tarde.\nPor favor digite um número.\nEste campo tem um número demasiado pequeno.\nEste campo tem um número demasiado grande.\nA resposta à questão está incorrecta.\nPor favor digite um endereço de email.\nPor favor digite um URL\nPor favor digite um número de telefone.',
        'Contato',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'formulario-de-contacto-1',
        '',
        '',
        '2024-01-15 22:34:25',
        '2024-01-15 22:34:25',
        '',
        0,
        'http://localhost:10023/?post_type=wpcf7_contact_form&#038;p=44',
        0,
        'wpcf7_contact_form',
        '',
        0
    ), (
        45,
        1,
        '2024-01-15 18:02:47',
        '2024-01-15 18:02:47',
        '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10023.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->',
        'Privacy Policy',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '3-revision-v1',
        '',
        '',
        '2024-01-15 18:02:47',
        '2024-01-15 18:02:47',
        '',
        3,
        'http://localhost:10023/?p=45',
        0,
        'revision',
        '',
        0
    ), (
        46,
        1,
        '2024-01-15 23:18:44',
        '2024-01-15 23:18:44',
        '',
        'Rectangle 13',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'rectangle-13',
        '',
        '',
        '2024-01-15 23:18:44',
        '2024-01-15 23:18:44',
        '',
        6,
        'http://localhost:10023/wp-content/uploads/2024/01/Rectangle-13.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        47,
        1,
        '2024-01-15 23:47:11',
        '2024-01-15 23:47:11',
        '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus eu tincidunt dolor, diam ut leo eget auctor ut. Dictum congue vitae dolor.</p>\n<!-- /wp:paragraph -->',
        'Auctor faucibus.',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '9-autosave-v1',
        '',
        '',
        '2024-01-15 23:47:11',
        '2024-01-15 23:47:11',
        '',
        9,
        'http://localhost:10023/?p=47',
        0,
        'revision',
        '',
        0
    ), (
        48,
        1,
        '2024-01-16 00:55:40',
        '2024-01-16 00:55:40',
        '“Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis dolor at nisl sit. Rhoncus suscipit in feugiat donec. Etiam facilisis etiam neque volutpat. ”',
        'Thiago Carvalho',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'thiago-carvalho',
        '',
        '',
        '2024-01-16 00:55:40',
        '2024-01-16 00:55:40',
        '',
        0,
        'http://localhost:10023/?post_type=depoimentos&#038;p=48',
        0,
        'depoimentos',
        '',
        0
    ), (
        49,
        1,
        '2024-01-16 00:26:21',
        '0000-00-00 00:00:00',
        '',
        'Rascunho automático',
        '',
        'auto-draft',
        'closed',
        'closed',
        '',
        '',
        '',
        '',
        '2024-01-16 00:26:21',
        '0000-00-00 00:00:00',
        '',
        0,
        'http://localhost:10023/?post_type=depoimentos&p=49',
        0,
        'depoimentos',
        '',
        0
    ), (
        50,
        1,
        '2024-01-16 00:26:26',
        '0000-00-00 00:00:00',
        '',
        'Rascunho automático',
        '',
        'auto-draft',
        'closed',
        'closed',
        '',
        '',
        '',
        '',
        '2024-01-16 00:26:26',
        '0000-00-00 00:00:00',
        '',
        0,
        'http://localhost:10023/?post_type=depoimentos&p=50',
        0,
        'depoimentos',
        '',
        0
    ), (
        51,
        1,
        '2024-01-16 00:55:39',
        '2024-01-16 00:55:39',
        '“Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis dolor at nisl sit. Rhoncus suscipit in feugiat donec. Etiam facilisis etiam neque volutpat. ”',
        'Lavinia Castro',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'lavinia-castro',
        '',
        '',
        '2024-01-16 00:55:39',
        '2024-01-16 00:55:39',
        '',
        0,
        'http://localhost:10023/?post_type=depoimentos&#038;p=51',
        0,
        'depoimentos',
        '',
        0
    ), (
        52,
        1,
        '2024-01-16 00:30:28',
        '2024-01-16 00:30:28',
        '',
        'thumb',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'thumb',
        '',
        '',
        '2024-01-16 00:30:28',
        '2024-01-16 00:30:28',
        '',
        51,
        'http://localhost:10023/wp-content/uploads/2024/01/thumb.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        53,
        1,
        '2024-01-16 00:33:20',
        '2024-01-16 00:33:20',
        'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"depoimentos\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}',
        'Depoimentos',
        'depoimentos',
        'publish',
        'closed',
        'closed',
        '',
        'group_65a5ce766cf54',
        '',
        '',
        '2024-01-16 00:33:20',
        '2024-01-16 00:33:20',
        '',
        0,
        'http://localhost:10023/?post_type=acf-field-group&#038;p=53',
        0,
        'acf-field-group',
        '',
        0
    ), (
        54,
        1,
        '2024-01-16 00:33:20',
        '2024-01-16 00:33:20',
        'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}',
        'Tipo de Tratamento',
        'tipo_tratamento',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a5ce77abf9e',
        '',
        '',
        '2024-01-16 00:33:20',
        '2024-01-16 00:33:20',
        '',
        53,
        'http://localhost:10023/?post_type=acf-field&p=54',
        0,
        'acf-field',
        '',
        0
    ), (
        55,
        1,
        '2024-01-16 00:34:52',
        '2024-01-16 00:34:52',
        '',
        'Rectangle 19',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'rectangle-19',
        '',
        '',
        '2024-01-16 00:34:52',
        '2024-01-16 00:34:52',
        '',
        48,
        'http://localhost:10023/wp-content/uploads/2024/01/Rectangle-19.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        56,
        1,
        '2024-01-16 00:55:39',
        '2024-01-16 00:55:39',
        '“Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis dolor at nisl sit. Rhoncus suscipit in feugiat donec. Etiam facilisis etiam neque volutpat. ”',
        'Kauan Ferreira',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'kauan-ferreira',
        '',
        '',
        '2024-01-16 00:55:39',
        '2024-01-16 00:55:39',
        '',
        0,
        'http://localhost:10023/?post_type=depoimentos&#038;p=56',
        0,
        'depoimentos',
        '',
        0
    ), (
        57,
        1,
        '2024-01-16 00:35:35',
        '2024-01-16 00:35:35',
        '',
        'Rectangle 19(1)',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'rectangle-191',
        '',
        '',
        '2024-01-16 00:35:35',
        '2024-01-16 00:35:35',
        '',
        56,
        'http://localhost:10023/wp-content/uploads/2024/01/Rectangle-191.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        58,
        1,
        '2024-01-16 00:58:16',
        '2024-01-16 00:58:16',
        'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"24\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}',
        'Diferenciais',
        'diferenciais',
        'publish',
        'closed',
        'closed',
        '',
        'group_65a5d4481c4ae',
        '',
        '',
        '2024-01-16 01:32:00',
        '2024-01-16 01:32:00',
        '',
        0,
        'http://localhost:10023/?post_type=acf-field-group&#038;p=58',
        0,
        'acf-field-group',
        '',
        0
    ), (
        59,
        1,
        '2024-01-16 00:58:16',
        '2024-01-16 00:58:16',
        'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}',
        'Título 01',
        'titulo_diferencial_01',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a5d4490ce43',
        '',
        '',
        '2024-01-16 01:28:33',
        '2024-01-16 01:28:33',
        '',
        58,
        'http://localhost:10023/?post_type=acf-field&#038;p=59',
        0,
        'acf-field',
        '',
        0
    ), (
        60,
        1,
        '2024-01-16 00:58:16',
        '2024-01-16 00:58:16',
        'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}',
        'Ícone 01',
        'icone_diferencial_01',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a5d48a0ce45',
        '',
        '',
        '2024-01-16 01:31:35',
        '2024-01-16 01:31:35',
        '',
        58,
        'http://localhost:10023/?post_type=acf-field&#038;p=60',
        1,
        'acf-field',
        '',
        0
    ), (
        61,
        1,
        '2024-01-16 01:17:11',
        '2024-01-16 01:17:11',
        '',
        'plan_1',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'plan_1',
        '',
        '',
        '2024-01-16 01:17:11',
        '2024-01-16 01:17:11',
        '',
        24,
        'http://localhost:10023/wp-content/uploads/2024/01/plan_1.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        62,
        1,
        '2024-01-16 01:17:29',
        '2024-01-16 01:17:29',
        '',
        'Home',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '24-revision-v1',
        '',
        '',
        '2024-01-16 01:17:29',
        '2024-01-16 01:17:29',
        '',
        24,
        'http://localhost:10023/?p=62',
        0,
        'revision',
        '',
        0
    ), (
        63,
        1,
        '2024-01-16 01:26:21',
        '0000-00-00 00:00:00',
        '',
        'Rascunho automático',
        '',
        'auto-draft',
        'closed',
        'closed',
        '',
        '',
        '',
        '',
        '2024-01-16 01:26:21',
        '0000-00-00 00:00:00',
        '',
        0,
        'http://localhost:10023/?post_type=acf-field-group&p=63',
        0,
        'acf-field-group',
        '',
        0
    ), (
        64,
        1,
        '2024-01-16 01:28:33',
        '2024-01-16 01:28:33',
        'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}',
        'Título 02',
        'titulo_diferencial_02',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a5db69e65d0',
        '',
        '',
        '2024-01-16 01:32:00',
        '2024-01-16 01:32:00',
        '',
        58,
        'http://localhost:10023/?post_type=acf-field&#038;p=64',
        2,
        'acf-field',
        '',
        0
    ), (
        65,
        1,
        '2024-01-16 01:28:34',
        '2024-01-16 01:28:34',
        'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}',
        'Título 03',
        'titulo_diferencial_03',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a5dba1e65d1',
        '',
        '',
        '2024-01-16 01:32:00',
        '2024-01-16 01:32:00',
        '',
        58,
        'http://localhost:10023/?post_type=acf-field&#038;p=65',
        4,
        'acf-field',
        '',
        0
    ), (
        66,
        1,
        '2024-01-16 01:29:37',
        '2024-01-16 01:29:37',
        'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}',
        'Ícone 02',
        'icone_diferencial_02',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a5dbcacca69',
        '',
        '',
        '2024-01-16 01:31:35',
        '2024-01-16 01:31:35',
        '',
        58,
        'http://localhost:10023/?post_type=acf-field&#038;p=66',
        3,
        'acf-field',
        '',
        0
    ), (
        67,
        1,
        '2024-01-16 01:29:37',
        '2024-01-16 01:29:37',
        'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}',
        'Ícone 03',
        'icone_diferencial_03',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a5dbf2cca6a',
        '',
        '',
        '2024-01-16 01:31:35',
        '2024-01-16 01:31:35',
        '',
        58,
        'http://localhost:10023/?post_type=acf-field&#038;p=67',
        5,
        'acf-field',
        '',
        0
    ), (
        68,
        1,
        '2024-01-16 01:32:50',
        '2024-01-16 01:32:50',
        '',
        'people_1',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'people_1',
        '',
        '',
        '2024-01-16 01:32:50',
        '2024-01-16 01:32:50',
        '',
        24,
        'http://localhost:10023/wp-content/uploads/2024/01/people_1.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        69,
        1,
        '2024-01-16 01:33:09',
        '2024-01-16 01:33:09',
        '',
        'doctor_1',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'doctor_1',
        '',
        '',
        '2024-01-16 01:33:09',
        '2024-01-16 01:33:09',
        '',
        24,
        'http://localhost:10023/wp-content/uploads/2024/01/doctor_1.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        70,
        1,
        '2024-01-16 01:34:00',
        '2024-01-16 01:34:00',
        '',
        'Home',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '24-revision-v1',
        '',
        '',
        '2024-01-16 01:34:00',
        '2024-01-16 01:34:00',
        '',
        24,
        'http://localhost:10023/?p=70',
        0,
        'revision',
        '',
        0
    ), (
        71,
        1,
        '2024-01-16 01:43:20',
        '2024-01-16 01:43:20',
        'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"24\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}',
        'Planos',
        'planos',
        'publish',
        'closed',
        'closed',
        '',
        'group_65a5deabe012b',
        '',
        '',
        '2024-01-16 01:49:21',
        '2024-01-16 01:49:21',
        '',
        0,
        'http://localhost:10023/?post_type=acf-field-group&#038;p=71',
        0,
        'acf-field-group',
        '',
        0
    ), (
        72,
        1,
        '2024-01-16 01:43:19',
        '2024-01-16 01:43:19',
        'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}',
        'Imagem do Plano 01',
        'imagem_plano_01',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a5deaff5d6a',
        '',
        '',
        '2024-01-16 01:43:19',
        '2024-01-16 01:43:19',
        '',
        71,
        'http://localhost:10023/?post_type=acf-field&p=72',
        0,
        'acf-field',
        '',
        0
    ), (
        73,
        1,
        '2024-01-16 01:43:19',
        '2024-01-16 01:43:19',
        'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}',
        'Imagem do Plano 02',
        'imagem_plano_02',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a5deddf5d6b',
        '',
        '',
        '2024-01-16 01:44:44',
        '2024-01-16 01:44:44',
        '',
        71,
        'http://localhost:10023/?post_type=acf-field&#038;p=73',
        1,
        'acf-field',
        '',
        0
    ), (
        74,
        1,
        '2024-01-16 01:43:20',
        '2024-01-16 01:43:20',
        'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}',
        'Imagem do Plano 03',
        'imagem_plano_03',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a5defdf5d6c',
        '',
        '',
        '2024-01-16 01:43:20',
        '2024-01-16 01:43:20',
        '',
        71,
        'http://localhost:10023/?post_type=acf-field&p=74',
        2,
        'acf-field',
        '',
        0
    ), (
        75,
        1,
        '2024-01-16 01:43:20',
        '2024-01-16 01:43:20',
        'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}',
        'Imagem do Plano 04',
        'imagem_plano_04',
        'publish',
        'closed',
        'closed',
        '',
        'field_65a5df21f5d6d',
        '',
        '',
        '2024-01-16 01:49:21',
        '2024-01-16 01:49:21',
        '',
        71,
        'http://localhost:10023/?post_type=acf-field&#038;p=75',
        3,
        'acf-field',
        '',
        0
    ), (
        76,
        1,
        '2024-01-16 01:46:50',
        '2024-01-16 01:46:50',
        '',
        'unimed',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'unimed',
        '',
        '',
        '2024-01-16 01:46:50',
        '2024-01-16 01:46:50',
        '',
        24,
        'http://localhost:10023/wp-content/uploads/2024/01/unimed.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        77,
        1,
        '2024-01-16 01:47:31',
        '2024-01-16 01:47:31',
        '',
        'sulamerica 1',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'sulamerica-1',
        '',
        '',
        '2024-01-16 01:47:31',
        '2024-01-16 01:47:31',
        '',
        24,
        'http://localhost:10023/wp-content/uploads/2024/01/sulamerica-1.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        78,
        1,
        '2024-01-16 01:47:41',
        '2024-01-16 01:47:41',
        '',
        'saude-caixa 1',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'saude-caixa-1',
        '',
        '',
        '2024-01-16 01:47:41',
        '2024-01-16 01:47:41',
        '',
        24,
        'http://localhost:10023/wp-content/uploads/2024/01/saude-caixa-1.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        79,
        1,
        '2024-01-16 01:47:49',
        '2024-01-16 01:47:49',
        '',
        'amil 1',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'amil-1',
        '',
        '',
        '2024-01-16 01:47:49',
        '2024-01-16 01:47:49',
        '',
        24,
        'http://localhost:10023/wp-content/uploads/2024/01/amil-1.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        80,
        1,
        '2024-01-16 01:47:55',
        '2024-01-16 01:47:55',
        '',
        'Home',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '24-revision-v1',
        '',
        '',
        '2024-01-16 01:47:55',
        '2024-01-16 01:47:55',
        '',
        24,
        'http://localhost:10023/?p=80',
        0,
        'revision',
        '',
        0
    ), (
        81,
        1,
        '2024-01-16 01:50:44',
        '0000-00-00 00:00:00',
        '',
        'Rascunho automático',
        '',
        'auto-draft',
        'closed',
        'closed',
        '',
        '',
        '',
        '',
        '2024-01-16 01:50:44',
        '0000-00-00 00:00:00',
        '',
        0,
        'http://localhost:10023/?post_type=tratamentos&p=81',
        0,
        'tratamentos',
        '',
        0
    ), (
        82,
        1,
        '2024-01-16 01:52:46',
        '2024-01-16 01:52:46',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu duis nunc ultrices amet. Diam nec blandit volutpat sagittis malesuada aliquet habitant elit, suspendisse. Et enim arcu.',
        'Tratamento Psiquiátrico',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'tratamento-psiquiatrico',
        '',
        '',
        '2024-01-16 01:52:46',
        '2024-01-16 01:52:46',
        '',
        0,
        'http://localhost:10023/?post_type=tratamentos&#038;p=82',
        0,
        'tratamentos',
        '',
        0
    ), (
        83,
        1,
        '2024-01-16 01:52:13',
        '2024-01-16 01:52:13',
        '',
        'tratamento',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'tratamento',
        '',
        '',
        '2024-01-16 01:52:13',
        '2024-01-16 01:52:13',
        '',
        82,
        'http://localhost:10023/wp-content/uploads/2024/01/tratamento.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        84,
        1,
        '2024-01-16 01:53:37',
        '2024-01-16 01:53:37',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu duis nunc ultrices amet. Diam nec blandit volutpat sagittis malesuada aliquet habitant elit, suspendisse. Et enim arcu.',
        'Tratamento dependência química',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'tratamento-dependencia-quimica',
        '',
        '',
        '2024-01-16 01:53:37',
        '2024-01-16 01:53:37',
        '',
        0,
        'http://localhost:10023/?post_type=tratamentos&#038;p=84',
        0,
        'tratamentos',
        '',
        0
    ), (
        85,
        1,
        '2024-01-16 01:53:33',
        '2024-01-16 01:53:33',
        '',
        'Rectangle 13(1)',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'rectangle-131-2',
        '',
        '',
        '2024-01-16 01:53:33',
        '2024-01-16 01:53:33',
        '',
        84,
        'http://localhost:10023/wp-content/uploads/2024/01/Rectangle-131-1.png',
        0,
        'attachment',
        'image/png',
        0
    ), (
        86,
        1,
        '2024-01-16 01:54:26',
        '2024-01-16 01:54:26',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu duis nunc ultrices amet. Diam nec blandit volutpat sagittis malesuada aliquet habitant elit, suspendisse. Et enim arcu.',
        'Tratamento alcoolismo',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'tratamento-alcoolismo',
        '',
        '',
        '2024-01-16 01:54:26',
        '2024-01-16 01:54:26',
        '',
        0,
        'http://localhost:10023/?post_type=tratamentos&#038;p=86',
        0,
        'tratamentos',
        '',
        0
    ), (
        87,
        1,
        '2024-01-16 01:54:21',
        '2024-01-16 01:54:21',
        '',
        'Rectangle 13(2)',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'rectangle-132-2',
        '',
        '',
        '2024-01-16 01:54:21',
        '2024-01-16 01:54:21',
        '',
        86,
        'http://localhost:10023/wp-content/uploads/2024/01/Rectangle-132-1.png',
        0,
        'attachment',
        'image/png',
        0
    );

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE
    `wp_term_relationships` (
        `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
        `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
        `term_order` int(11) NOT NULL DEFAULT '0',
        PRIMARY KEY (
            `object_id`,
            `term_taxonomy_id`
        ),
        KEY `term_taxonomy_id` (`term_taxonomy_id`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO
    `wp_term_relationships` (
        `object_id`,
        `term_taxonomy_id`,
        `term_order`
    )
VALUES (6, 1, 0), (9, 1, 0), (13, 1, 0), (16, 1, 0), (32, 2, 0), (33, 2, 0), (34, 2, 0), (35, 2, 0), (36, 2, 0), (37, 2, 0);

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE
    `wp_term_taxonomy` (
        `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
        `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
        `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
        `count` bigint(20) NOT NULL DEFAULT '0',
        PRIMARY KEY (`term_taxonomy_id`),
        UNIQUE KEY `term_id_taxonomy` (`term_id`, `taxonomy`),
        KEY `taxonomy` (`taxonomy`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO
    `wp_term_taxonomy` (
        `term_taxonomy_id`,
        `term_id`,
        `taxonomy`,
        `description`,
        `parent`,
        `count`
    )
VALUES (1, 1, 'category', '', 0, 4), (2, 2, 'nav_menu', '', 0, 6);

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE
    `wp_termmeta` (
        `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
        `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
        `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
        PRIMARY KEY (`meta_id`),
        KEY `term_id` (`term_id`),
        KEY `meta_key` (`meta_key`(191))
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE
    `wp_terms` (
        `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `term_group` bigint(10) NOT NULL DEFAULT '0',
        PRIMARY KEY (`term_id`),
        KEY `slug` (`slug`(191)),
        KEY `name` (`name`(191))
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO
    `wp_terms` (
        `term_id`,
        `name`,
        `slug`,
        `term_group`
    )
VALUES (
        1,
        'Uncategorized',
        'uncategorized',
        0
    ), (2, 'Header', 'header', 0);

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE
    `wp_usermeta` (
        `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
        `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
        `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
        PRIMARY KEY (`umeta_id`),
        KEY `user_id` (`user_id`),
        KEY `meta_key` (`meta_key`(191))
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO
    `wp_usermeta` (
        `umeta_id`,
        `user_id`,
        `meta_key`,
        `meta_value`
    )
VALUES (1, 1, 'nickname', 'admin'), (2, 1, 'first_name', ''), (3, 1, 'last_name', ''), (4, 1, 'description', ''), (5, 1, 'rich_editing', 'true'), (
        6,
        1,
        'syntax_highlighting',
        'true'
    ), (
        7,
        1,
        'comment_shortcuts',
        'false'
    ), (8, 1, 'admin_color', 'fresh'), (9, 1, 'use_ssl', '0'), (
        10,
        1,
        'show_admin_bar_front',
        'true'
    ), (11, 1, 'locale', ''), (
        12,
        1,
        'wp_capabilities',
        'a:1:{s:13:\"administrator\";b:1;}'
    ), (13, 1, 'wp_user_level', '10'), (
        14,
        1,
        'dismissed_wp_pointers',
        ''
    ), (
        15,
        1,
        'show_welcome_panel',
        '1'
    ), (
        16,
        1,
        'session_tokens',
        'a:2:{s:64:\"8509aca3368dcfd708ec9834f5b6f58db9754c9133441e2a1157236940b0e13b\";a:4:{s:10:\"expiration\";i:1705513795;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:70:\"Mozilla/5.0 (X11; Linux x86_64; rv:121.0) Gecko/20100101 Firefox/121.0\";s:5:\"login\";i:1705340995;}s:64:\"8632464aac995c15b2ac57ce832b612d066b7c1d9fd75a7fd3e08615e131f3db\";a:4:{s:10:\"expiration\";i:1705584120;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:70:\"Mozilla/5.0 (X11; Linux x86_64; rv:121.0) Gecko/20100101 Firefox/121.0\";s:5:\"login\";i:1705411320;}}'
    ), (
        17,
        1,
        'wp_dashboard_quick_press_last_post_id',
        '4'
    ), (
        18,
        1,
        'community-events-location',
        'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'
    ), (
        19,
        1,
        'wp_persisted_preferences',
        'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2024-01-13T14:59:54.813Z\";}'
    ), (
        20,
        1,
        'wp_user-settings',
        'libraryContent=browse'
    ), (
        21,
        1,
        'wp_user-settings-time',
        '1705251621'
    ), (
        22,
        1,
        'meta-box-order_acf-field-group',
        'a:3:{s:4:\"side\";s:0:\"\";s:6:\"normal\";s:54:\"acf-field-group-fields,acf-field-group-options,slugdiv\";s:8:\"advanced\";s:0:\"\";}'
    ), (
        23,
        1,
        'screen_layout_acf-field-group',
        '1'
    ), (
        24,
        1,
        'manageedit-acf-post-typecolumnshidden',
        'a:1:{i:0;s:7:\"acf-key\";}'
    ), (
        25,
        1,
        'acf_user_settings',
        'a:2:{s:19:\"post-type-first-run\";b:1;s:20:\"taxonomies-first-run\";b:1;}'
    ), (
        26,
        1,
        'manageedit-acf-taxonomycolumnshidden',
        'a:1:{i:0;s:7:\"acf-key\";}'
    ), (
        27,
        1,
        'closedpostboxes_page',
        'a:4:{i:0;s:23:\"acf-group_65a29ae00ad4a\";i:1;s:23:\"acf-group_65a410fde003a\";i:2;s:23:\"acf-group_65a5d4481c4ae\";i:3;s:23:\"acf-group_65a5deabe012b\";}'
    ), (
        28,
        1,
        'metaboxhidden_page',
        'a:0:{}'
    ), (
        29,
        1,
        'managenav-menuscolumnshidden',
        'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'
    ), (
        30,
        1,
        'metaboxhidden_nav-menus',
        'a:3:{i:0;s:19:\"add-post-type-mimos\";i:1;s:12:\"add-post_tag\";i:2;s:9:\"add-serie\";}'
    ), (
        31,
        1,
        'meta-box-order_page',
        'a:4:{s:6:\"normal\";s:95:\"acf-group_65a29ae00ad4a,acf-group_65a410fde003a,acf-group_65a5d4481c4ae,acf-group_65a5deabe012b\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";}'
    );

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE
    `wp_users` (
        `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        `user_status` int(11) NOT NULL DEFAULT '0',
        `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
        PRIMARY KEY (`ID`),
        KEY `user_login_key` (`user_login`),
        KEY `user_nicename` (`user_nicename`),
        KEY `user_email` (`user_email`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

INSERT INTO
    `wp_users` (
        `ID`,
        `user_login`,
        `user_pass`,
        `user_nicename`,
        `user_email`,
        `user_url`,
        `user_registered`,
        `user_activation_key`,
        `user_status`,
        `display_name`
    )
VALUES (
        1,
        'admin',
        '$P$B4xvPNKa63NLbk.8iugxrEGe8Qy1Hi/',
        'admin',
        'dev-email@wpengine.local',
        'http://localhost:10023',
        '2024-01-12 21:41:20',
        '',
        0,
        'admin'
    );

-- 2024-01-16 16:04:38