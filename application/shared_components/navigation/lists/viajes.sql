prompt --application/shared_components/navigation/lists/viajes
begin
--   Manifest
--     LIST: Viajes
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>110
,p_default_id_offset=>46157557361540665
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(74908874049813799)
,p_name=>'Viajes'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'    E.ID AS ID,  ',
'    E.CIUDAD AS LABEL,  ',
'    ''f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_EXPEDICION_ID:'' || E.ID AS TARGET,  ',
'    ''N'' AS IS_CURRENT_LIST_ENTRY,  ',
'    NULL AS IMAGE,  ',
'    NULL AS IMAGE_ATTRIBUTE,  ',
'    NULL AS IMAGE_ALT_ATTRIBUTE,  ',
'    E.ESTADO AS ATTRIBUTE1',
'FROM ALAIN_EXPEDICION E  ',
'JOIN ALAIN_VIAJE V ON E.VIAJE = V.ID  ',
'WHERE V.MATRICULA = :APP_MATRICULA AND E.VIAJE = :P2_VIAJE;',
''))
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/
