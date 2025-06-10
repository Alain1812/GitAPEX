prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Expediciones'
,p_alias=>'EXPEDICIONES'
,p_step_title=>'Expediciones'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
,p_last_updated_by=>'US_DEMO_TRANS_WMS'
,p_last_upd_yyyymmddhh24miss=>'20250420130506'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74914298947887297)
,p_plug_name=>'Variables'
,p_plug_display_sequence=>30
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80675085500982873)
,p_plug_name=>'GridLayout'
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75280092372043943)
,p_plug_name=>'Expediciones'
,p_parent_plug_id=>wwv_flow_imp.id(80675085500982873)
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
'    m."ID",',
'    m."ESTADO",',
'    m."FECHA_ENTREGA",',
'    u."PAIS",',
'    u."CIUDAD",',
'    u."DIRECCION",',
'    u."CODIGO_POSTAL",',
'    d."NOMBRE",',
'    d."TELEFONO",',
'    d."EMAIL",',
'    m."VIAJE",',
'    ALAIN_DES_ESTADO(m.ESTADO) AS NOMBRE_ESTADO,',
unistr('    -- Direcci\00F3n completa en un solo campo'),
'    u.DIRECCION || '', '' || u.CODIGO_POSTAL || '', '' || u.CIUDAD || '', '' || u.PAIS AS DIRECCION_COMPLETA,',
'    -- Contacto del destinatario en un solo campo',
'    d.NOMBRE || '' | Tel: '' || d.TELEFONO || '' | Email: '' || d.EMAIL AS CONTACTO_COMPLETO,',
'    CASE m.ESTADO',
'        WHEN ''PE'' THEN ''#APP_IMAGES#entrega-pendiente.png''',
'        WHEN ''DI'' THEN ''#APP_IMAGES#entrega-fallida.png''',
'        WHEN ''ER'' THEN ''#APP_IMAGES#en-ruta.png''',
'        WHEN ''EF'' THEN ''#APP_IMAGES#entrega-fallida.png''',
'        WHEN ''EC'' THEN ''#APP_IMAGES#entregado.png''',
'        ELSE ''#APP_IMAGES#entrega-pendiente.png''',
'    END AS ICONO_URL',
'FROM ',
'    "ALAIN_EXPEDICION" m',
'JOIN ',
'    "ALAIN_UBICACION" u ON m."UBICACION" = u."ID"',
'JOIN ',
'    "ALAIN_DESTINATARIO" d ON m."DESTINATARIO" = d."ID"',
'WHERE',
'    m."VIAJE" = :P3_VIAJE;'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{"orderBys":[{"key":"ID","expr":"\"ID\" asc"},{"key":"DIRECCION","expr":"\"DIRECCION\" asc"},{"key":"FECHA_ENTREGA","expr":"\"FECHA_ENTREGA\" asc"}],"itemName":"P3_ORDER_BY"}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No existen datos'
,p_no_data_found_icon_classes=>'fa-ban'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(75280633222043944)
,p_region_id=>wwv_flow_imp.id(75280092372043943)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'ID'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'NOMBRE_ESTADO'
,p_body_adv_formatting=>false
,p_body_column_name=>'DIRECCION_COMPLETA'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'CONTACTO_COMPLETO'
,p_icon_source_type=>'URL'
,p_icon_image_url=>'#APP_IMAGES#carretilla.png'
,p_icon_position=>'START'
,p_icon_description=>'&NOMBRE_ESTADO.'
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'&ICONO_URL.'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(74915181360887306)
,p_card_id=>wwv_flow_imp.id(75280633222043944)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::::P4_ID_EXPEDICION:&ID.'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(77937715256615974)
,p_card_id=>wwv_flow_imp.id(75280633222043944)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>20
,p_label=>'Borrar'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.::P306_ID_EXPEDICION:&ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(78116223987809178)
,p_card_id=>wwv_flow_imp.id(75280633222043944)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>30
,p_label=>'Editar'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:307:&SESSION.::&DEBUG.::P307_ID_EXPEDICION:&ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80675179215982874)
,p_plug_name=>'Faceted'
,p_parent_plug_id=>wwv_flow_imp.id(80675085500982873)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71946675685750613)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(75280092372043943)
,p_attribute_01=>'N'
,p_attribute_06=>'N'
,p_attribute_09=>'N'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'10'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(80787962531567867)
,p_name=>'Descargar'
,p_template=>wwv_flow_imp.id(71946675685750613)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    m."ID",',
'    ALAIN_DES_ESTADO(m.ESTADO) AS NOMBRE_ESTADO,',
'    m."FECHA_ENTREGA",',
'    u."PAIS",',
'    u."CIUDAD",',
'    u."DIRECCION",',
'    u."CODIGO_POSTAL",',
'    d."NOMBRE",',
'    d."TELEFONO",',
'    d."EMAIL",',
'    m."VIAJE"',
'FROM ',
'    "ALAIN_EXPEDICION" m',
'JOIN ',
'    "ALAIN_UBICACION" u ON m."UBICACION" = u."ID"',
'JOIN ',
'    "ALAIN_DESTINATARIO" d ON m."DESTINATARIO" = d."ID"',
'WHERE',
'    m."VIAJE" = :P3_VIAJE;'))
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
,p_prn_output_file_name=>'lista_expediciones'
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
 p_id=>wwv_flow_imp.id(80788144366567868)
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
 p_id=>wwv_flow_imp.id(80788170236567869)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE_ESTADO'
,p_column_display_sequence=>20
,p_column_heading=>'Nombre Estado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80788336500567870)
,p_query_column_id=>3
,p_column_alias=>'FECHA_ENTREGA'
,p_column_display_sequence=>30
,p_column_heading=>'Fecha Entrega'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80788359169567871)
,p_query_column_id=>4
,p_column_alias=>'PAIS'
,p_column_display_sequence=>40
,p_column_heading=>'Pais'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80788458808567872)
,p_query_column_id=>5
,p_column_alias=>'CIUDAD'
,p_column_display_sequence=>50
,p_column_heading=>'Ciudad'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80788614846567873)
,p_query_column_id=>6
,p_column_alias=>'DIRECCION'
,p_column_display_sequence=>60
,p_column_heading=>'Direccion'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80788723232567874)
,p_query_column_id=>7
,p_column_alias=>'CODIGO_POSTAL'
,p_column_display_sequence=>70
,p_column_heading=>'Codigo Postal'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80788835593567875)
,p_query_column_id=>8
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>80
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80788899188567876)
,p_query_column_id=>9
,p_column_alias=>'TELEFONO'
,p_column_display_sequence=>90
,p_column_heading=>'Telefono'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80789026446567877)
,p_query_column_id=>10
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>100
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80789088930567878)
,p_query_column_id=>11
,p_column_alias=>'VIAJE'
,p_column_display_sequence=>110
,p_column_heading=>'Viaje'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77937099099615968)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(80675179215982874)
,p_button_name=>unistr('A\00F1adirExpedicion')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(72019878772750637)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('A\00F1adir Expedicion')
,p_button_redirect_url=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.::P305_ID_VIAJE:&P3_VIAJE.'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80789273350567880)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(80675179215982874)
,p_button_name=>'Descargar'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(72019878772750637)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Descargar'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.:FLOW_XMLP_OUTPUT_R'||wwv_flow_imp.id(80787962531567867)||''
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80790765914567895)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(80675179215982874)
,p_button_name=>'Volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(72019878772750637)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74914369879887298)
,p_name=>'P3_VIAJE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74914298947887297)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80675338928982875)
,p_name=>'P3_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(80675179215982874)
,p_prompt=>'Buscar ...'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80677356653982895)
,p_name=>'P3_ESTADO_FACETED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(80675179215982874)
,p_prompt=>'Estado '
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80773081464804570)
,p_name=>'P3_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(80675179215982874)
,p_item_default=>'ID'
,p_prompt=>'Ordenar por ...'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:Id;ID,Direcci\00F3n;DIRECCION,Fecha entrega;FECHA_ENTREGA')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(72017452909750635)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77937396542615971)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(75280092372043943)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77937546592615972)
,p_event_id=>wwv_flow_imp.id(77937396542615971)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75280092372043943)
);
wwv_flow_imp.component_end;
end;
/
