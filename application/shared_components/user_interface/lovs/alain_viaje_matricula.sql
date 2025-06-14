prompt --application/shared_components/user_interface/lovs/alain_viaje_matricula
begin
--   Manifest
--     ALAIN_VIAJE.MATRICULA
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
 p_id=>wwv_flow_imp.id(75676683088738742)
,p_lov_name=>'ALAIN_VIAJE.MATRICULA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ALAIN_VIAJE'
,p_return_column_name=>'ID'
,p_display_column_name=>'MATRICULA'
,p_default_sort_column_name=>'MATRICULA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
