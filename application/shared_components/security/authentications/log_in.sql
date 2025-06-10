prompt --application/shared_components/security/authentications/log_in
begin
--   Manifest
--     AUTHENTICATION: Log In
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>110
,p_default_id_offset=>46157557361540665
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(72146942805783921)
,p_name=>'Log In'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'ALAIN_VALIDAR_USUARIOS'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
