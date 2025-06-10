prompt --application/shared_components/navigation/breadcrumbs/menu
begin
--   Manifest
--     MENU: Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(25685832426209911)
,p_name=>'Menu'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(25686075338209912)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(29126879946535587)
,p_short_name=>'Viajes'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(29131409243763042)
,p_short_name=>'CalendarioExpediciones'
,p_link=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:::'
,p_page_id=>101
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(29961313711695996)
,p_short_name=>'Lista informes'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(32940107708193078)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_imp.component_end;
end;
/
