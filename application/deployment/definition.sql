prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 110
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>110
,p_default_id_offset=>46157557361540665
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(81347513631993854)
);
wwv_flow_imp.component_end;
end;
/
