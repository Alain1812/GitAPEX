prompt --application/shared_components/files/expediciones_cards_css
begin
--   Manifest
--     APP STATIC FILES: 106
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E626F746F6E5F766163696F207B0D0A2020202070616464696E673A20303B0D0A20202020626F726465723A206E6F6E653B0D0A202020206261636B67726F756E643A206E6F6E653B0D0A7D0D0A0D0A2E636F6C756D6E207B0D0A2020666C6F61743A20';
wwv_flow_imp.g_varchar2_table(2) := '6C6566743B0D0A202070616464696E673A203070783B0D0A202077696474683A203930253B0D0A7D0D0A2E6C6566747833207B0D0A202077696474683A203333253B0D0A2020746578742D616C69676E3A63656E7465723B0D0A7D0D0A2E6D6964646C65';
wwv_flow_imp.g_varchar2_table(3) := '7833207B0D0A202077696474683A203333253B0D0A2020746578742D616C69676E3A63656E7465723B0D0A7D0D0A2E72696768747833207B0D0A202077696474683A203333253B0D0A2020746578742D616C69676E3A63656E7465723B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(33148353921546389)
,p_file_name=>'expediciones-cards.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
