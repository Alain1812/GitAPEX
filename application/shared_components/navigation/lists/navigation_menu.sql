prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
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
 p_id=>wwv_flow_imp.id(71843893507750579)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(72143408460750787)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(75675561105695746)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Viajes'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-truck'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79290602202745569)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Calendario expediciones'
,p_list_item_link_target=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
