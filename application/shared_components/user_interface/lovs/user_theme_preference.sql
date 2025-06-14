prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
--   Manifest
--     USER_THEME_PREFERENCE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>110
,p_default_id_offset=>46157557361540665
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(79094604168733734)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(79094604168733734)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79094858696733734)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
wwv_flow_imp.component_end;
end;
/
