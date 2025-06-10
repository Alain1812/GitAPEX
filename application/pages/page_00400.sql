prompt --application/pages/page_00400
begin
--   Manifest
--     PAGE: 00400
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
 p_id=>400
,p_name=>'PruebaGitA'
,p_alias=>'PRUEBAGITA'
,p_step_title=>'PruebaGitA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'US_DEMO_TRANS_WMS'
,p_last_upd_yyyymmddhh24miss=>'20250610183950'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35202266545730514)
,p_plug_name=>'PruebaGitA'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71946675685750613)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35202333847730515)
,p_name=>'P400_PRUEBA_GIT_A'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(35202266545730514)
,p_prompt=>'Prueba Git A'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(72017452909750635)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp.component_end;
end;
/
