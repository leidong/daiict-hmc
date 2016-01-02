<?php
/**
 * @package   Awesome Support/Custom Fields
 * @author    ThemeAvenue <web@themeavenue.net>
 * @license   GPL-2.0+
 * @link      http://themeavenue.net
 * @copyright 2014 ThemeAvenue
 *
 * @wordpress-plugin
 * Plugin Name:       Awesome Support: My Custom Fields
 * Plugin URI:        http://getawesomesupport.com
 * Description:       Adds custom fields to the Awesome Support ticket submission form.
 * Version:           0.1.0
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

add_action( 'plugins_loaded', 'wpas_user_custom_fields' );

// function get_room_no($post){

// 	echo '<div class="wpas-form-group" id="wpas_room_no_wrapper">';
// 	echo '<label for="wpas_room_no">Subject</label>';
// 	echo '<input type="text" value="" id="wpas_room_no" class="wpas-form-control" name="wpas_room_no" required="true">';
// 	echo '</div>';

// }
/**
 * Register all custom fields after the plugin is safely loaded.
 */
function wpas_user_custom_fields() {
/* You can start adding your custom fields safely after this line */


wpas_add_custom_field( 'custom_complain_department',  array( 'title' => __( 'Department', 'wpas' ), 'callback'=>'taxonomy', 'placeholder' =>'Select Department', 'required'=>true, 'show_column'=>false, 'sortable_column'=>true, 'filterable' => true, 'taxo_std'=>false, 'label'=>'Department', 'label_plural'=>'Departments'  ) );
wpas_add_custom_field( 'wing',  array( 'title' => __( 'Wing', 'wpas' ), 'callback'=>'text', 'placeholder' =>'Wing', 'required'=>true, 'show_column'=>true, 'sortable_column'=>true, 'filterable' => true, 'taxo_std'=>false, 'label'=>'Wing', 'label_plural'=>'Wing'  ) );
wpas_add_custom_field( 'room_no',  array( 'title' => __( 'Room No', 'wpas' ), 'callback'=>'text', 'placeholder' =>'Room No', 'required'=>true, 'show_column'=>true, 'sortable_column'=>true, 'filterable' => true, 'taxo_std'=>false, 'label'=>'Room No', 'label_plural'=>'Room No'  ) );



/* Do NOT write anything after this line */
}

?>
