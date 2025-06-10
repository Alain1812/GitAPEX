prompt --application/shared_components/logic/application_items/app_matricula
begin
--   Manifest
--     APPLICATION ITEM: APP_MATRICULA
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>110
,p_default_id_offset=>46157557361540665
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(74907645153695472)
,p_name=>'APP_MATRICULA'
,p_scope=>'GLOBAL'
,p_protection_level=>'I'
,p_version_scn=>706935225
);
wwv_flow_imp.component_end;
end;
/
