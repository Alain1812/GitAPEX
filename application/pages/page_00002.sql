prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>110
,p_default_id_offset=>46157557361540665
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Viajes'
,p_alias=>'VIAJES'
,p_step_title=>'Viajes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
,p_last_updated_by=>'US_DEMO_TRANS_WMS'
,p_last_upd_yyyymmddhh24miss=>'20250419152735'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80674971788982872)
,p_plug_name=>'GridLayout'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71946675685750613)
,p_plug_display_sequence=>30
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75284617753076253)
,p_plug_name=>'Viajes'
,p_parent_plug_id=>wwv_flow_imp.id(80674971788982872)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>wwv_flow_imp.id(71887176006750597)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>9
,p_plug_display_column=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    "ID",',
'    "MATRICULA",',
'    (SELECT l1."PROPIETARIO" FROM "ALAIN_TRANSPORTE" l1 WHERE l1."MATRICULA" = m."MATRICULA") AS "MATRICULA_L$1",',
'    "ESTADO",',
'    APEX_UTIL.PREPARE_URL(',
'        p_url => ''f?p='' || :APP_ID || '':3:'' || :APP_SESSION || '':::3:P3_VIAJE:'' || "ID"',
'    ) AS URL,',
'    ALAIN_DES_ESTADO(ESTADO) AS NOMBRE_ESTADO,',
'    CASE ESTADO',
'        WHEN ''PE'' THEN ''#APP_IMAGES#entrega-pendiente.png''',
'        WHEN ''DI'' THEN ''#APP_IMAGES#entrega-fallida.png''',
'        WHEN ''ER'' THEN ''#APP_IMAGES#en-ruta.png''',
'        WHEN ''EF'' THEN ''#APP_IMAGES#entrega-fallida.png''',
'        WHEN ''EC'' THEN ''#APP_IMAGES#entregado.png''',
'        ELSE ''#APP_IMAGES#entrega-pendiente.png''',
'    END AS ICONO_URL',
'FROM ',
'    "ALAIN_VIAJE" m',
'WHERE',
'    "MATRICULA" = :APP_MATRICULA;'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{"orderBys":[{"key":"ID","expr":"\"ID\" asc"},{"key":"ESTADO","expr":"\"ESTADO\" asc"}],"itemName":"P2_ORDER_BY"}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No existen datos'
,p_no_data_found_icon_classes=>'fa-ban'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(75285121715076253)
,p_region_id=>wwv_flow_imp.id(75284617753076253)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'ID'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'NOMBRE_ESTADO'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'URL'
,p_icon_image_url=>'#APP_IMAGES#camion.png'
,p_icon_position=>'START'
,p_icon_description=>'&NOMBRE_ESTADO.'
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'&ICONO_URL.'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(74914683297887301)
,p_card_id=>wwv_flow_imp.id(75285121715076253)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::::P3_VIAJE:&ID.'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(77678427686784079)
,p_card_id=>wwv_flow_imp.id(75285121715076253)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>20
,p_label=>'Borrar'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:304:&SESSION.::&DEBUG.::P304_ID_VIAJE:&ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80674678708982869)
,p_plug_name=>'FacetedViajes'
,p_parent_plug_id=>wwv_flow_imp.id(80674971788982872)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71880134635750595)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(75284617753076253)
,p_attribute_01=>'N'
,p_attribute_06=>'N'
,p_attribute_09=>'N'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'10'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(80678836772982910)
,p_name=>'Descargar'
,p_template=>wwv_flow_imp.id(71946675685750613)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    "ID",',
'    "MATRICULA",',
'    (SELECT l1."PROPIETARIO" FROM "ALAIN_TRANSPORTE" l1 WHERE l1."MATRICULA" = m."MATRICULA") AS "PROPIETARIO",',
'    ALAIN_DES_ESTADO(ESTADO) AS "NOMBRE_ESTADO"',
'FROM ',
'    "ALAIN_VIAJE" m',
'WHERE',
'    "MATRICULA" = :APP_MATRICULA',
''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(71984944745750624)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'Y'
,p_prn_format=>'XLS'
,p_prn_output_link_text=>'Descargar'
,p_prn_output_file_name=>'lista_viajes'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Descargar'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80678870346982911)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80679015597982912)
,p_query_column_id=>2
,p_column_alias=>'MATRICULA'
,p_column_display_sequence=>20
,p_column_heading=>'Matricula'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80679118532982913)
,p_query_column_id=>3
,p_column_alias=>'PROPIETARIO'
,p_column_display_sequence=>30
,p_column_heading=>'Propietario'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80679231941982914)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_ESTADO'
,p_column_display_sequence=>40
,p_column_heading=>'Nombre Estado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76719634181790206)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(80674678708982869)
,p_button_name=>unistr('A\00F1adirViaje')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(72019878772750637)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('A\00F1adir Viaje')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80678751670982909)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(80674678708982869)
,p_button_name=>'Descargar'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(72019878772750637)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Descargar'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.:FLOW_XMLP_OUTPUT_R'||wwv_flow_imp.id(80678836772982910)||''
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(81358875028271170)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'APP_MATRICULA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75285567348076254)
,p_name=>'P2_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(80674678708982869)
,p_item_default=>'ID'
,p_prompt=>'Ordenar por ...'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Id;ID,Estado;ESTADO'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(72017452909750635)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80674794999982870)
,p_name=>'P2_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(80674678708982869)
,p_prompt=>'Buscar ...'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80674921397982871)
,p_name=>'P2_ESTADO_FACETED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(80674678708982869)
,p_prompt=>'Estado'
,p_source=>'NOMBRE_ESTADO'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77680139724784096)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(75284617753076253)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77680248932784097)
,p_event_id=>wwv_flow_imp.id(77680139724784096)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75284617753076253)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77680330227784098)
,p_name=>unistr('A\00F1adirViaje')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76719634181790206)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77680430907784099)
,p_event_id=>wwv_flow_imp.id(77680330227784098)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('A\00F1adirViaje')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INSERT INTO ALAIN_VIAJE (MATRICULA, ESTADO)',
'    VALUES (:APP_MATRICULA, ''PE'');',
'    COMMIT;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77680507183784100)
,p_event_id=>wwv_flow_imp.id(77680330227784098)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75284617753076253)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81359634975271177)
,p_event_id=>wwv_flow_imp.id(77680330227784098)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(80674678708982869)
);
wwv_flow_imp.component_end;
end;
/
