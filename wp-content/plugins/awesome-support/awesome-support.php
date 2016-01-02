<?php
/**
 * @package   Awesome Support
 * @author    ThemeAvenue <web@themeavenue.net>
 * @license   GPL-2.0+
 * @link      http://themeavenue.net
 * @copyright 2014 ThemeAvenue
 *
 * @wordpress-plugin
 * Plugin Name:       Awesome Support
 * Plugin URI:        http://getawesomesupport.com
 * Description:       Awesome Support is a great ticketing system that will help you improve your customer satisfaction by providing a unique customer support experience.
 * Version:           3.2.9
 * Author:            ThemeAvenue
 * Author URI:        http://themeavenue.net
 * Text Domain:       wpas
 * License:           GPL-2.0+
 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
 * Domain Path:       /languages
 */

// If this file is called directly, abort.
if ( ! defined( 'WPINC' ) ) {
	die;
}

/*----------------------------------------------------------------------------*
 * Shortcuts
 *----------------------------------------------------------------------------*/

define( 'WPAS_VERSION',           '3.2.9' );
define( 'WPAS_DB_VERSION',        '1' );
define( 'WPAS_URL',               trailingslashit( plugin_dir_url( __FILE__ ) ) );
define( 'WPAS_PATH',              trailingslashit( plugin_dir_path( __FILE__ ) ) );
define( 'WPAS_ROOT',              trailingslashit( dirname( plugin_basename( __FILE__ ) ) ) );
define( 'WPAS_TEMPLATE_PATH',     'awesome-support/' );
define( 'WPAS_ADMIN_ASSETS_URL',  trailingslashit( plugin_dir_url( __FILE__ ) . 'assets/admin/' ) );
define( 'WPAS_ADMIN_ASSETS_PATH', trailingslashit( plugin_dir_path( __FILE__ ) . 'assets/admin/' ) );

/*----------------------------------------------------------------------------*
 * Settings
 *----------------------------------------------------------------------------*/

define( 'WPAS_FIELDS_DESC', apply_filters( 'wpas_fields_descriptions', true ) );

/*----------------------------------------------------------------------------*
 * Addons
 *----------------------------------------------------------------------------*/

/**
 * Array of addons to load.
 *
 * @since  3.1.5
 * @var    array
 */
$wpas_addons = array();

/*----------------------------------------------------------------------------*
 * Shared Functionalities
 *----------------------------------------------------------------------------*/

require_once( WPAS_PATH . 'includes/functions-fallback.php' );
require_once( WPAS_PATH . 'includes/class-logger.php' );
require_once( WPAS_PATH . 'includes/class-awesome-support.php' );

/**
 * Register hooks that are fired when the plugin is activated or deactivated.
 * When the plugin is deleted, the uninstall.php file is loaded.
 */
register_activation_hook( __FILE__, array( 'Awesome_Support_Old', 'activate' ) );

/**
 * Get an instance of the plugin
 */
add_action( 'plugins_loaded', array( 'Awesome_Support_Old', 'get_instance' ) );

/**
 * Load addons.
 *
 * A couple of addons are built in the plugin.
 * We load them here.
 */
require_once( WPAS_PATH . 'includes/file-uploader/class-file-uploader.php' );
require_once( WPAS_PATH . 'includes/class-mailgun-email-check.php' );

/* Load custom fields dependencies */
require_once( WPAS_PATH . 'includes/custom-fields/class-custom-field.php' );
require_once( WPAS_PATH . 'includes/custom-fields/class-custom-fields.php' );
require_once( WPAS_PATH . 'includes/custom-fields/functions-custom-fields.php' );   // Submission form related functions

/**
 * Call all classes and functions files that are shared
 * through the backend and the frontend. The files only used
 * by the backend or the frontend are loaded
 * by their respective classes.
 */
require_once( WPAS_PATH . 'includes/functions-post.php' );            // All the functions related to opening a ticket and submitting replies
require_once( WPAS_PATH . 'includes/functions-user.php' );            // Everything related to user login, registration and capabilities
require_once( WPAS_PATH . 'includes/functions-addons.php' );          // Addons functions and autoloader
require_once( WPAS_PATH . 'includes/functions-deprecated.php' );      // Load deprecated functions
require_once( WPAS_PATH . 'includes/class-log-history.php' );         // Logging class
require_once( WPAS_PATH . 'includes/class-email-notifications.php' ); // E-mail notification class
require_once( WPAS_PATH . 'includes/functions-general.php' );         // Functions that are used both in back-end and front-end
require_once( WPAS_PATH . 'includes/functions-error.php' );           // Error handling
require_once( WPAS_PATH . 'includes/functions-notification.php' );    // Notification handling
require_once( WPAS_PATH . 'includes/functions-templating.php' );      // Templating function
require_once( WPAS_PATH . 'includes/class-post-type.php' );           // Register post types and related functions
require_once( WPAS_PATH . 'includes/class-product-sync.php' );        // Keep the product taxonomy in sync with e-commerce products
require_once( WPAS_PATH . 'includes/class-gist.php' );                // Add oEmbed support for Gists
require_once( WPAS_PATH . 'includes/class-wpas-editor-ajax.php' );    // Helper class to load a wp_editor instance via Ajax
require_once( WPAS_PATH . 'includes/class-agent.php' );               // Support agent class
require_once( WPAS_PATH . 'includes/class-wpas-session.php' );

/**
 * Check if dependencies are loaded.
 *
 * The plugin uses a certain number of dependencies managed through Composer.
 * If those dependencies are not loaded the plugin won't work.
 *
 * In order to avoid errors we check if dependencies are present. If not we simply
 * don't load the plugin.
 *
 * This problem won't happen with the production version as we have scripts
 * doing all the work, but on the development version this can be a problem.
 *
 * @since  3.0.2
 */
if ( ! Awesome_Support_Old::dependencies_loaded() ) {
	add_action( 'admin_notices', 'wpas_missing_dependencies' );
}

/*----------------------------------------------------------------------------*
 * Public-Facing Only Functionality
 *----------------------------------------------------------------------------*/
if ( ! is_admin() && Awesome_Support_Old::dependencies_loaded() ) {
	require_once( WPAS_PATH . 'includes/shortcodes/shortcode-tickets.php' ); // The plugin main shortcodes
	require_once( WPAS_PATH . 'includes/shortcodes/shortcode-submit.php' );  // The plugin main shortcode-submit
}

/*----------------------------------------------------------------------------*
 * Dashboard and Administrative Functionality
 *----------------------------------------------------------------------------*/

/**
 * The code below is intended to to give the lightest footprint possible.
 */
if ( is_admin() && Awesome_Support_Old::dependencies_loaded() ) {

	/* Load main admin class */
	require_once( WPAS_PATH . 'includes/admin/class-admin.php' );
	add_action( 'plugins_loaded', array( 'Awesome_Support_Admin', 'get_instance' ) );

	/* Load the MailGun e-mail check settings */
	add_filter( 'wpas_plugin_settings', array( 'WPAS_MailGun_EMail_Check', 'settings' ), 10, 1 );

	/**
	 * Add link ot settings tab
	 */
	add_filter( 'plugin_action_links_' . plugin_basename( __FILE__ ), array( 'Awesome_Support_Admin', 'settings_page_link' ) );

}

/*----------------------------------------------------------------------------*
 * Declare global variables
 *----------------------------------------------------------------------------*/

/**
 * Instantiate the global $wpas_cf object containing all the custom fields.
 * This object is used throughout the entire plugin so it is capital to be able
 * to access it anytime and not to redeclare a second object when registering
 * new custom fields.
 *
 * @since  3.0.0
 * @var    $wpas_cf WPAS_Custom_Fields
 */
$wpas_cf = new WPAS_Custom_Fields;

/*----------------------------------------------------------------------------*
 * Load theme's functions
 *----------------------------------------------------------------------------*/
add_action( 'init', 'wpas_load_theme_functions' );
/**
 * Load Awesome Support's theme functions if any
 *
 * @since 3.2.0
 * @return void
 */
function wpas_load_theme_functions() {
	wpas_get_template( 'functions' );
}

if ( ! class_exists( 'Awesome_Support' ) ):

	/**
	 * Main Awesome Support class
	 *
	 * This class is the one and only instance of the plugin. It is used
	 * to load the core and all its components.
	 *
	 * @since 3.2.5
	 */
	final class Awesome_Support {

		/**
		 * @var Awesome_Support Holds the unique instance of Awesome Support
		 * @since 3.2.5
		 */
		private static $instance;

		/**
		 * Admin Notices object
		 *
		 * @var object AS_Admin_Notices
		 * @since 3.1.5
		 */
		public $admin_notices;


		/**
		 * Session object
		 *
		 * @since 3.2.6
		 * @var WPAS_Session $session
		 */
		public $session;

		/**
		 * Instantiate and return the unique Awesome Support object
		 *
		 * @since     3.2.5
		 * @return object Awesome_Support Unique instance of Awesome Support
		 */
		public static function instance() {

			if ( ! isset( self::$instance ) && ! ( self::$instance instanceof Awesome_Support ) ) {

				self::$instance = new Awesome_Support;
				self::$instance->setup_constants();
				self::$instance->includes();
				self::$instance->session = new WPAS_Session();

				if ( is_admin() ) {
					self::$instance->includes_admin();
					self::$instance->admin_notices = new AS_Admin_Notices();
				}

			}

			return self::$instance;

		}

		/**
		 * Throw error on object clone
		 *
		 * The whole idea of the singleton design pattern is that there is a single
		 * object therefore, we don't want the object to be cloned.
		 *
		 * @since 3.2.5
		 * @return void
		 */
		public function __clone() {
			// Cloning instances of the class is forbidden
			_doing_it_wrong( __FUNCTION__, __( 'Cheatin&#8217; huh?', 'awesome-support' ), '3.2.5' );
		}
		/**
		 * Disable unserializing of the class
		 *
		 * @since 3.2.5
		 * @return void
		 */
		public function __wakeup() {
			// Unserializing instances of the class is forbidden
			_doing_it_wrong( __FUNCTION__, __( 'Cheatin&#8217; huh?', 'awesome-support' ), '3.2.5' );
		}

		/**
		 * Setup all plugin constants
		 *
		 * @since 3.2.5
		 * @return void
		 */
		private function setup_constants() {

		}

		/**
		 * Include all files used sitewide
		 *
		 * @since 3.2.5
		 * @return void
		 */
		private function includes() {

		}

		/**
		 * Include all files used in admin only
		 *
		 * @since 3.2.5
		 * @return void
		 */
		private function includes_admin() {
			require( WPAS_PATH . 'includes/admin/functions-notices.php' );
		}

	}

endif;

/**
 * The main function responsible for returning the unique Awesome Support instance
 *
 * Use this function like you would a global variable, except without needing
 * to declare the global.
 *
 * @since 3.1.5
 * @return object Awesome_Support
 */
function WPAS() {
	return Awesome_Support::instance();
}
// Get Awesome Support Running
WPAS();