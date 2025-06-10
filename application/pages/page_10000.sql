prompt --application/pages/page_10000
begin
--   Manifest
--     PAGE: 10000
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
 p_id=>10000
,p_name=>unistr('Personalizaci\00F3n')
,p_alias=>'ADMINISTRATION'
,p_step_title=>unistr('Personalizaci\00F3n')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'06'
,p_last_updated_by=>'US_DEMO_TRANS_WMS'
,p_last_upd_yyyymmddhh24miss=>'20250419154722'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79097178580733741)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71959090833750616)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(71843389787750576)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(72021468787750638)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79098598165733745)
,p_plug_name=>'User Interface'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(71946675685750613)
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(79097954480733744)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(72002926247750630)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(79090535224733688)
);
wwv_flow_imp.component_end;
end;
/
