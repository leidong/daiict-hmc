<?php
/**
 * @package   Awesome Support/Admin/Reply
 * @author    ThemeAvenue <web@themeavenue.net>
 * @license   GPL-2.0+
 * @link      http://themeavenue.net
 * @copyright 2014 ThemeAvenue
 */

// If this file is called directly, abort.
if ( ! defined( 'WPINC' ) ) {
	die;
}
?>

<h2>
	<?php
	/**
	 * wpas_write_reply_title_admin filter
	 *
	 * @since  3.1.5
	 *
	 * @param  string  Title to display
	 * @param  WP_Post Current post object
	 */
	echo apply_filters( 'wpas_write_reply_title_admin', sprintf( esc_html_x( 'Write a reply to %s', 'Title of the reply editor in the back-end', 'awesome-support' ), '&laquo;' . esc_attr( get_the_title( $post->ID ) ) . '&raquo;' ), $post ); ?>
</h2>
<?php
/**
 * Load the WordPress WYSIWYG with minimal options
 */
/* The edition textarea */
wp_editor( '', 'wpas_reply', array(
				'media_buttons' => false,
				'teeny'         => true,
				'quicktags'     => true,
		)
);

/**
 * Add a hook after the WYSIWYG editor
 * for tickets reply.
 *
 * @WPAS_Quick_Replies::echoMarkup()
 */
do_action( 'wpas_admin_after_wysiwyg' );

/**
 * Add a nonce for the reply
 */
wp_nonce_field( 'reply_ticket', 'wpas_reply_ticket', false, true );
?>

<div class="wpas-reply-actions">
	<?php
	/**
	 * Where should the user be redirected after submission.
	 *
	 * @var string
	 */
	global $current_user;
	$where = get_user_meta( $current_user->ID, 'wpas_after_reply', true );

	switch ( $where ):

		case false:
		case '':
		case 'back': ?>
			<input type="hidden" name="wpas_back_to_list" value="1">
			<button type="submit" name="wpas_do" class="button-primary wpas_btn_reply" value="reply"><?php _e( 'Reply', 'awesome-support' ); ?></button>
			<?php break;

			break;

		case 'stay':
			?>
			<button type="submit" name="wpas_do" class="button-primary wpas_btn_reply" value="reply"><?php _e( 'Reply', 'awesome-support' ); ?></button><?php
			break;

		case 'ask': ?>
			<fieldset>
				<strong><?php _e( 'After Replying', 'awesome-support' ); ?></strong><br>
				<label for="back_to_list"><input type="radio" id="back_to_list" name="where_after" value="back_to_list" checked="checked"> <?php _e( 'Back to list', 'awesome-support' ); ?></label>
				<label for="stay_here"><input type="radio" id="stay_here" name="where_after" value="stay_here"> <?php _e( 'Stay on ticket screen', 'awesome-support' ); ?></label>
			</fieldset>
			<button type="submit" name="wpas_do" class="button-primary wpas_btn_reply" value="reply"><?php _e( 'Reply', 'awesome-support' ); ?></button>
			<?php break;

	endswitch;
	?>

	<?php if ( current_user_can( 'close_ticket' ) ): ?>
		<button type="submit" name="wpas_do" class="button-secondary wpas_btn_reply_close" value="reply_close"><?php _e( 'Reply & Close', 'awesome-support' ); ?></button>
	<?php endif;

	/**
	 * Fired after all the submission form buttons were output
	 *
	 * @since 3.2.6
	 *
	 * @param int $post_id Ticket ID
	 */
	do_action( 'wpas_post_reply_buttons_after', $post->ID );

	// Link to close the ticket
	if ( 'open' === get_post_meta( get_the_ID(), '_wpas_status', true ) ) : ?>
		<a class="wpas_btn_close_bottom" href="<?php echo wpas_get_close_ticket_url( $post->ID ); ?>"><?php echo esc_html_x( 'Close', 'Close the ticket', 'awesome-support' ); ?></a>
	<?php endif; ?>
</div>