<?php

function wp_all_export_prepare_template_csv($exportOptions, &$templateOptions)
{
	if ($exportOptions['ids']){			
		$cf_list   = array();
		$attr_list = array();
		$taxs_list = array();
		$acf_list  = array();
		$implode_delimiter = ($exportOptions['delimiter'] == ',') ? '|' : ',';	
		foreach ($exportOptions['ids'] as $ID => $value) {
			if (empty($exportOptions['cc_type'][$ID])) continue;
			$element_name = strtolower((!empty($exportOptions['cc_name'][$ID])) ? $exportOptions['cc_name'][$ID] : 'untitled_' . $ID);
			switch ($exportOptions['cc_type'][$ID]) {
				case 'id':
					$templateOptions['unique_key'] = '{'. $element_name .'[1]}';		
					$templateOptions['tmp_unique_key'] = '{'. $element_name .'[1]}';		
					break;
				case 'title':	
					$templateOptions[$exportOptions['cc_type'][$ID]] = '{'. $element_name .'[1]}';			
					$templateOptions['is_update_title'] = 1;							
					break;
				case 'content':	
					$templateOptions[$exportOptions['cc_type'][$ID]] = '{'. $element_name .'[1]}';										
					$templateOptions['is_update_content'] = 1;
					break;
				case 'author':
					$templateOptions[$exportOptions['cc_type'][$ID]] = '{'. $element_name .'[1]}';										
					$templateOptions['is_update_author'] = 1;
					break;
				case 'date':
					$templateOptions[$exportOptions['cc_type'][$ID]] = '{'. $element_name .'[1]}';										
					$templateOptions['is_update_dates'] = 1;
					break;									
				case 'status':
					$templateOptions['status_xpath'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_status'] = 1;
					break;
				case 'parent':
					$templateOptions['single_page_parent'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_parent'] = 1;
					break;
				case 'excerpt':
					$templateOptions['post_excerpt'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_excerpt'] = 1;
					break;
				case 'slug':
					$templateOptions['post_slug'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_slug'] = 1;
					break;
				case 'post_type':
					if ( empty($exportOptions['cpt']) ){
						$templateOptions['is_override_post_type'] = 1;	
						$templateOptions['post_type_xpath'] = '{'. $element_name .'[1]}';
					}
					break;
				case 'cf':
					if ( ! empty($exportOptions['cc_value'][$ID]) ){													

						if ( ! in_array($exportOptions['cc_value'][$ID], $cf_list)) $cf_list[] = $exportOptions['cc_value'][$ID];	
						$templateOptions['custom_name'][] = $exportOptions['cc_value'][$ID];												
						$templateOptions['custom_value'][] = '{'. $element_name .'[1]}';											
						$templateOptions['custom_format'][] = 0;
						
					}
					break;
				case 'woo':
					//$element_name = 'woo' . $element_name;
					if ( ! empty($exportOptions['cc_value'][$ID]) ){
						$cf_list[] = $exportOptions['cc_label'][$ID];
						switch ($exportOptions['cc_label'][$ID]) {												
							case '_visibility':
								$templateOptions['is_product_visibility'] = 'xpath';
								$templateOptions['single_product_visibility'] = '{'. $element_name .'[1]}';
								break;				
							case '_stock_status':
								$templateOptions['product_stock_status'] = 'xpath';
								$templateOptions['single_product_stock_status'] = '{'. $element_name .'[1]}';
								break;
							case '_downloadable':
								$templateOptions['is_product_downloadable'] = 'xpath';
								$templateOptions['single_product_downloadable'] = '{'. $element_name .'[1]}';
								break;
							case '_virtual':
								$templateOptions['is_product_virtual'] = 'xpath';
								$templateOptions['single_product_virtual'] = '{'. $element_name .'[1]}';
								break;
							case '_price':
							case '_regular_price':
								$templateOptions['single_product_regular_price'] = '{'. $element_name .'[1]}';
								break;
							case '_sale_price':													
								$templateOptions['single_product_sale_price'] = '{'. $element_name .'[1]}';
								break;
							case '_purchase_note':													
								$templateOptions['single_product_purchase_note'] = '{'. $element_name .'[1]}';
								break;
							case '_featured':				
								$templateOptions['is_product_featured'] = 'xpath';									
								$templateOptions['single_product_featured'] = '{'. $element_name .'[1]}';
								break;
							case '_weight':																	
								$templateOptions['single_product_weight'] = '{'. $element_name .'[1]}';
								break;
							case '_length':
								$templateOptions['single_product_length'] = '{'. $element_name .'[1]}';
								break;
							case '_width':																	
								$templateOptions['single_product_width'] = '{'. $element_name .'[1]}';
								break;
							case '_height':
								$templateOptions['single_product_height'] = '{'. $element_name .'[1]}';
								break;
							case '_sku':
								$templateOptions['single_product_sku'] = '{'. $element_name .'[1]}';
								$templateOptions['single_product_id'] = '{'. $element_name .'[1]}';
								$templateOptions['single_product_parent_id'] = '{parent_sku[1]}';
								break;
							case '_sale_price_dates_from':
								$templateOptions['single_sale_price_dates_from'] = '{'. $element_name .'[1]}';
								break;
							case '_sale_price_dates_to':
								$templateOptions['single_sale_price_dates_to'] = '{'. $element_name .'[1]}';
								break;
							case '_sold_individually':
								$templateOptions['product_sold_individually'] = 'xpath';	
								$templateOptions['single_product_sold_individually'] = '{'. $element_name .'[1]}';
								break;
							case '_manage_stock':
								$templateOptions['is_product_manage_stock'] = 'xpath';	
								$templateOptions['single_product_manage_stock'] = '{'. $element_name .'[1]}';
								break;
							case '_stock':
								$templateOptions['single_product_stock_qty'] = '{'. $element_name .'[1]}';
								break;
							case '_upsell_ids':
								$templateOptions['single_product_up_sells'] = '{'. $element_name .'[1]}';
								break;
							case '_crosssell_ids':
								$templateOptions['single_product_cross_sells'] = '{'. $element_name .'[1]}';
								break;
							case '_downloadable_files':
								$templateOptions['single_product_files'] = '{'. $element_name .'_paths[1]}';
								$templateOptions['single_product_files_names'] = '{'. $element_name .'_names[1]}';
								break;
							case '_download_limit':
								$templateOptions['single_product_download_limit'] = '{'. $element_name .'[1]}';
								break;
							case '_download_expiry':
								$templateOptions['single_product_download_expiry'] = '{'. $element_name .'[1]}';
								break;
							case '_download_type':
								$templateOptions['single_product_download_type'] = '{'. $element_name .'[1]}';
								break;
							case '_product_url':
								$templateOptions['single_product_url'] = '{'. $element_name .'[1]}';
								break;
							case '_button_text':
								$templateOptions['single_product_button_text'] = '{'. $element_name .'[1]}';
								break;
							case '_tax_status':
								$templateOptions['is_multiple_product_tax_status'] = 'no';
								$templateOptions['single_product_tax_status'] = '{'. $element_name .'[1]}';
								break;
							case '_tax_class':
								$templateOptions['is_multiple_product_tax_class'] = 'no';
								$templateOptions['single_product_tax_class'] = '{'. $element_name .'[1]}';
								break;
							case '_backorders':
								$templateOptions['product_allow_backorders'] = 'xpath';
								$templateOptions['single_product_allow_backorders'] = '{'. $element_name .'[1]}';
								break;
							default:
								# code...
								break;
						}
					}
					break;

				case 'acf':					

					$field_options = unserialize($exportOptions['cc_options'][$ID]);

					// add ACF group ID to the template options
					if( ! in_array($field_options['group_id'], $templateOptions['acf'])){
						$templateOptions['acf'][$field_options['group_id']] = 1;
					}					

					$field_tpl_key = strtolower($element_name);

					$acf_list[] = '[' . $field_options['name'] . '] ' . $field_options['label'];

					switch ($field_options['type']) {
						case 'textarea':						
						case 'wysiwyg':
						case 'wp_wysiwyg':	
							$templateOptions['fields'][$field_options['key']] = '{' . $field_tpl_key . '[1]}';
							break;		
						case 'text':			
						case 'number':
						case 'email':
						case 'password':
						case 'url':
						case 'oembed':						
						case 'image':
						case 'file':						
						case 'date_picker':
						case 'color_picker':
						case 'acf_cf7':
						case 'gravity_forms_field':	
						case 'limiter':						
						case 'date_time_picker':

							$templateOptions['fields'][$field_options['key']] = '{' . $field_tpl_key . '[1]}';

							break;
						case 'post_object':
						case 'page_link':						
						case 'user':

							if ($field_options['multiple'])
							{
								if ($implode_delimiter == "|")
									$templateOptions['fields'][$field_options['key']] = '[str_replace("|", ",",{' . $field_tpl_key . '[1]})]';
								else
									$templateOptions['fields'][$field_options['key']] = '{' . $field_tpl_key . '[1]}';
							}
							else
							{
								$templateOptions['fields'][$field_options['key']] = '{' . $field_tpl_key . '[1]}';
							}

							break;
						case 'gallery':
						case 'relationship':

							if ($implode_delimiter == "|")
								$templateOptions['fields'][$field_options['key']] = '[str_replace("|", ",",{' . $field_tpl_key . '[1]})]';
							else
								$templateOptions['fields'][$field_options['key']] = '{' . $field_tpl_key . '[1]}';

							break;
						case 'select':	
						case 'checkbox':

							$templateOptions['is_multiple_field_value'][$field_options['key']] = 'no';

							if ($implode_delimiter == "|")
								$templateOptions['fields'][$field_options['key']] = '[str_replace("|", ",",{' . $field_tpl_key . '[1]})]';														
							else
								$templateOptions['fields'][$field_options['key']] = '{' . $field_tpl_key . '[1]}';

							break;
						case 'radio':					
						case 'true_false':

							$templateOptions['is_multiple_field_value'][$field_options['key']] = 'no';

							$templateOptions['fields'][$field_options['key']] = '{' . $field_tpl_key . '[1]}';

							break;
						case 'location-field':
						case 'google_map':

							$templateOptions['fields'][$field_options['key']]['address'] = '{' . $field_tpl_key . '_address[1]}';
							$templateOptions['fields'][$field_options['key']]['lat'] = '{' . $field_tpl_key . '_lat[1]}';
							$templateOptions['fields'][$field_options['key']]['lng'] = '{' . $field_tpl_key . '_lng[1]}';

							break;
						case 'paypal_item':

							$templateOptions['fields'][$field_options['key']]['item_name'] = '{' . $field_tpl_key . '_item_name[1]}';
							$templateOptions['fields'][$field_options['key']]['item_description'] = '{' . $field_tpl_key . '_item_description[1]}';
							$templateOptions['fields'][$field_options['key']]['price'] = '{' . $field_tpl_key . '_price[1]}';

							break;												
						case 'taxonomy':

							$taxonomy_options = array();

							$single_term = new stdClass;
							$single_term->item_id = 1;
							$single_term->parent_id = NULL;
							$single_term->xpath = '{' . $field_tpl_key . '[1]}';
							$single_term->assign = false;

							$taxonomy_options[] = $single_term;

							$templateOptions['is_multiple_field_value'][$field_options['key']] = 'no';

							$templateOptions['fields'][$field_options['key']] = json_encode($taxonomy_options);

							break;
						case 'repeater':

							$templateOptions['fields'][$field_options['key']]['is_variable'] = 'csv';

							$templateOptions['fields'][$field_options['key']]['separator'] = $implode_delimiter;

							if (class_exists('acf')){

								global $acf;

								if ($acf and version_compare($acf->settings['version'], '5.0.0') >= 0){
																												
									$sub_fields = get_posts(array('posts_per_page' => -1, 'post_type' => 'acf-field', 'post_parent' => (( ! empty($field_options['id'])) ? $field_options['id'] : $field_options['ID']), 'post_status' => 'publish'));

									if ( ! empty($sub_fields) ){

										foreach ($sub_fields as $n => $sub_field){

											$templateOptions['fields'][$field_options['key']]['rows']['1'][$sub_field->post_name] = '{' . $field_tpl_key . '_' . strtolower($sub_field->post_excerpt) . '[1]}';
											
										}
									}

								} else{
									
									foreach ($field['sub_fields'] as $n => $sub_field){ 

										$templateOptions['fields'][$field_options['key']]['rows']['1'][$sub_field['key']] = '{' . $field_tpl_key . '_' . strtolower($sub_field['name']) . '[1]}';

									}
								} 

							}						

							break;
						case 'flexible_content':

							break;

						default:

							$templateOptions['fields'][$field_options['key']] = '{' . $field_tpl_key . '[1]}';

							break;

					}

					break;

				case 'attr':
					//$element_name = 'woo_' . $element_name;

					if ( ! empty($exportOptions['cc_value'][$ID]) and ! in_array($exportOptions['cc_value'][$ID], $attr_list) ) {
					
						$templateOptions['attribute_name'][] = str_replace('pa_', '', $exportOptions['cc_value'][$ID]);
						$templateOptions['attribute_value'][] = '{attribute_'. $element_name .'[1]}';
						$templateOptions['in_variations'][] = 1;
						$templateOptions['is_visible'][] = 1;
						$templateOptions['is_taxonomy'][] = 1;
						$templateOptions['create_taxonomy_in_not_exists'][] = 1;	
						$attr_list[] = $exportOptions['cc_value'][$ID];
								
					}								
					break;
				case 'cats':
					if ( ! empty($exportOptions['cc_value'][$ID]) ){
						switch ($exportOptions['cc_label'][$ID]) {
							case 'product_type':
								$templateOptions['is_multiple_product_type'] = 'no';
								$templateOptions['single_product_type'] = '{'. $element_name .'[1]}';
								break;
							case 'product_shipping_class':
								$templateOptions['is_multiple_product_shipping_class'] = 'no';
								$templateOptions['single_product_shipping_class'] = '{'. $element_name .'[1]}';
								break;	
							default:
								$taxonomy = $exportOptions['cc_value'][$ID];	
								$templateOptions['tax_assing'][$taxonomy] = 1;

								if (is_taxonomy_hierarchical($taxonomy)){		
									$templateOptions['tax_logic'][$taxonomy] = 'hierarchical';
									$templateOptions['tax_hierarchical_logic_entire'][$taxonomy] = 1;
									$templateOptions['multiple_term_assing'][$taxonomy] = 1;
									$templateOptions['tax_hierarchical_delim'][$taxonomy] = '>';
									$templateOptions['is_tax_hierarchical_group_delim'][$taxonomy] = 1;
									$templateOptions['tax_hierarchical_group_delim'][$taxonomy] = $implode_delimiter;
									$templateOptions['tax_hierarchical_xpath'][$taxonomy] = array('{'. $element_name .'[1]}');									
								}
								else{
									$templateOptions['tax_logic'][$taxonomy] = 'multiple';
									$templateOptions['multiple_term_assing'][$taxonomy] = 1;
									$templateOptions['tax_multiple_xpath'][$taxonomy] = '{'. $element_name .'[1]}';
									$templateOptions['tax_multiple_delim'][$taxonomy] = $implode_delimiter;
								}
								$taxs_list[] = $taxonomy;										
								break;
						}
					}
					break;
				case 'media':
					$templateOptions['download_featured_image'] = '{'. $element_name .'_images[1]}';
					$templateOptions['download_featured_delim'] = $implode_delimiter;
					$templateOptions['set_image_meta_title'] = 1;
					$templateOptions['set_image_meta_caption'] = 1;
					$templateOptions['set_image_meta_alt'] = 1;
					$templateOptions['set_image_meta_description'] = 1;
					$templateOptions['image_meta_title'] = '{'. $element_name .'_titles[1]}';
					$templateOptions['image_meta_title_delim'] = $implode_delimiter;
					$templateOptions['image_meta_caption'] = '{'. $element_name .'_captions[1]}';
					$templateOptions['image_meta_caption_delim'] = $implode_delimiter;
					$templateOptions['image_meta_alt'] = '{'. $element_name .'_alts[1]}';
					$templateOptions['image_meta_alt_delim'] = $implode_delimiter;
					$templateOptions['image_meta_description'] = '{'. $element_name .'_descriptions[1]}';
					$templateOptions['image_meta_description_delim'] = $implode_delimiter;
					$templateOptions['is_update_images'] = 1;
					$templateOptions['update_images_logic'] = 'add_new';
					break;
				case 'attachments':
					$templateOptions['attachments'] = '{'. $element_name .'_attachments[1]}';
					$templateOptions['atch_delim'] = $implode_delimiter;
					$templateOptions['is_update_attachments'] = 1;
					break;

				// Export Users
				case 'user_login':
					$templateOptions['pmui']['login'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_login'] = 1;
					break;				
				case 'user_pass':
					$templateOptions['pmui']['pass'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_password'] = 1;
					break;
				case 'user_nicename':
					$templateOptions['pmui']['nicename'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_nicename'] = 1;
					break;
				case 'user_email':
					$templateOptions['pmui']['email'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_email'] = 1;
					break;
				case 'user_registered':
					$templateOptions['pmui']['registered'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_registered'] = 1;
					break;
				case 'display_name':
					$templateOptions['pmui']['display_name'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_display_name'] = 1;
					break;
				case 'user_url':
					$templateOptions['pmui']['url'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_url'] = 1;
					break;

				case 'first_name':
					$templateOptions['pmui']['first_name'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_first_name'] = 1;
					break;
				case 'last_name':
					$templateOptions['pmui']['last_name'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_last_name'] = 1;
					break;
				case 'wp_capabilities':
					$templateOptions['pmui']['role'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_role'] = 1;
					break;
				case 'nickname':
					$templateOptions['pmui']['nickname'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_nickname'] = 1;
					break;
				case 'description':
					$templateOptions['pmui']['description'] = '{'. $element_name .'[1]}';
					$templateOptions['is_update_description'] = 1;
					break;

				default:

					break;
			}
		}
		if ( ! empty($cf_list) ){
			$templateOptions['is_update_custom_fields'] = 1;
			$templateOptions['custom_fields_list'] = $cf_list;
		}
		if ( ! empty($attr_list) ){
			$templateOptions['is_update_attributes'] = 1;
			$templateOptions['attributes_list'] = $attr_list;
			$templateOptions['attributes_only_list'] = implode(',', $attr_list);
		}
		if ( ! empty($taxs_list) ){
			$templateOptions['is_update_categories'] = 1;
			$templateOptions['taxonomies_list'] = $taxs_list;
		}
		if ( ! empty($acf_list) ){
			$templateOptions['is_update_acf'] = 1;
			$templateOptions['acf_list'] = $acf_list;
		}
	}
}