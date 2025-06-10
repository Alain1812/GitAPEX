prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp_page.create_page(
 p_id=>101
,p_name=>'CalendarioExpediciones'
,p_alias=>'CALENDARIOEXPEDICIONES'
,p_step_title=>'CalendarioExpediciones'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'US_DEMO_TRANS_WMS'
,p_last_upd_yyyymmddhh24miss=>'20250419151509'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29130926894763041)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(25801533472209951)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(25685832426209911)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(25863911426209973)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29131636766763042)
,p_plug_name=>'CalendarioExpediciones'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(25789118324209948)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.ID,',
'       e.ESTADO,',
'       e.FECHA_ENTREGA,',
'       e.VIAJE,',
'       e.UBICACION,',
'       e.DESTINATARIO,',
'       ALAIN_DES_ESTADO(e.ESTADO) AS NOMBRE_ESTADO,',
'       m.MATRICULA',
'  FROM ALAIN_EXPEDICION e',
'  JOIN ALAIN_VIAJE v ON e.VIAJE = v.ID',
'  JOIN ALAIN_TRANSPORTE m ON v.MATRICULA = m.MATRICULA',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attribute_01=>'FECHA_ENTREGA'
,p_attribute_03=>'ID'
,p_attribute_04=>'ESTADO'
,p_attribute_05=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_ID_EXPEDICION:&ID.#ID#'
,p_attribute_06=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::#ID#'
,p_attribute_07=>'N'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_16=>'&NOMBRE_ESTADO.'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(35562241485354263)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'APP_MATRICULA'
);
wwv_flow_imp.component_end;
end;
/
