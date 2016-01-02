<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'hmc');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '7qnpps4uqroezm94zcfug9hs0yrnnk5y7mvchxvw408g91h8pkbakatvf45oondq');
define('SECURE_AUTH_KEY',  'bbbfqkrzyy4sm4lkmjkz0cudbsdjwxjnoaair5aa39n4ahos2a497vuf1vu10s8r');
define('LOGGED_IN_KEY',    'uioz4a69frkfwwqithjk3nq0esz2wx7ytzhjirinfpcgiot3ollgntk3ywnedqe9');
define('NONCE_KEY',        'uylbasyqpocs4e7b3pzzk7ftftyhr9ervhpx677gowadg5dmapdnneftmz2olkyp');
define('AUTH_SALT',        'anznmmmgrhmp8z5fwxjkupvny2chonlaz0anm5eujjslge4uscl6h4ceg3u83gyi');
define('SECURE_AUTH_SALT', 'jlneqi3j2qbz3nxczewa8gvlb0s5hbknb85opvogh6s1iapuu6pt9bqqbegmrsgg');
define('LOGGED_IN_SALT',   'qng6nmfti5dikscsvesy2c8zepp2eg4blzjokywr72obexlm2va8gfjibat45pky');
define('NONCE_SALT',       'tt5sukf22j996zzashsch66paqh8lqwcitdzqhyi9qxjhg5tsazy8rggwqzyg2la');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'da_hmc_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
