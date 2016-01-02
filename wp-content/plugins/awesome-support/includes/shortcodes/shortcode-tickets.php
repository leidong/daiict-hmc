<?php
add_shortcode( 'tickets', 'wpas_sc_client_account' );
/**
 * Registration page shortcode.
 */
function wpas_sc_client_account() {

	global $wpas_tickets, $current_user, $post;

	/**
	 * For some reason when the user ID is set to 0
	 * the query returns posts whose author has ID 1.
	 * In order to avoid that (for non logged users)
	 * we set the user ID to -1 if it is 0.
	 * 
	 * @var integer
	 */
	$author = ( 0 !== $current_user->ID ) ? $current_user->ID : -1;

	// Custom Code By spgandhi@live.com
	if(isset($_GET['view'])){
		$view = $_GET['view'];
	}else{
		$view = 'mine';
	}
	// End - Custom Code by spgandhi@live.com

	$args = array(
		// 'author'				 => $author  Removed by spgandhi@live.com
		'post_type'              => 'ticket',
		'post_status'            => 'any',
		'order'                  => 'DESC',
		'orderby'                => 'date',
		'posts_per_page'         => -1,
		'no_found_rows'          => false,
		'cache_results'          => false,
		'update_post_term_cache' => false,
		'update_post_meta_cache' => false,
		
	);

	// Custom Code by spgandhi@live.com
	if($view == 'mine'){
		$args['author'] = $author;
	}else if($view=='hmc'){

		if(current_user_can('supervisor_view')){
			echo '<h3>You will see all complains here.</h3>';
		}else if(current_user_can('hmc_view')){

			$current_user_id = wp_get_current_user()->ID;
			$wing = get_user_meta($current_user_id, 'pie_dropdown_4', true);
			$room = get_user_meta($current_user_id, 'pie_number_5', true);
			$room_start = substr($room,0,1);

			$args['meta_query'] = array(
				'relation' => 'AND',
				array(
					'key' => '_wpas_wing',
					'value' => $wing
				),
				array(
					'key' => '_wpas_room_no',
					'value' => array($room_start*100, $room_start*100 + 20),
					'type' => 'numeric',
					'compare' => 'BETWEEN'
				)
			);

			echo '<h3>You will see all the complains of your floor here.</h3>';
			$args['meta_key']='_wpas_wing';
			$args['meta_value']=$wing;
		}else{
			$args['author'] = $author;
		}
	}else{
		$args['author'] = $author;
	}

	// End - Custom code by spgandhi@live.com

	$wpas_tickets = new WP_Query( $args );		

	/* Get the ticket content */
	ob_start();

	/**
	 * wpas_frontend_plugin_page_top is executed at the top
	 * of every plugin page on the front end.
	 */
	do_action( 'wpas_frontend_plugin_page_top', $post->ID, $post );

	/**
	 * wpas_before_tickets_list hook
	 */
	do_action( 'wpas_before_tickets_list' );

	/* If user is not logged in we display the register form */
	if ( !is_user_logged_in() ):

		$registration = wpas_get_option( 'login_page', false );

		if ( false !== $registration && !empty( $registration ) && !is_null( get_post( intval( $registration ) ) ) ) {
			/* As the headers are already sent we can't use wp_redirect. */
			echo '<meta http-equiv="refresh" content="0; url=' . get_permalink( $registration ) . '" />';
			wpas_get_notification_markup( 'info', __( 'You are being redirected...', 'awesome-support' ) );
			exit;
		}

		wpas_get_template( 'registration' );

	else:

		/**
		 * Get the custom template.
		 */
		wpas_get_template( 'list' );

	endif;

	/**
	 * wpas_after_tickets_list hook
	 */
	do_action( 'wpas_after_tickets_list' );

	/**
	 * Finally get the buffer content and return.
	 * 
	 * @var string
	 */
	$content = ob_get_clean();

	return $content;

}