prompt --application/shared_components/files/caja_png
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E98563000000097048597300000B1300000B1301009A9C18000000AF49444154789CED95310AC2401444730B3D871676DAA89D07D09B843F2F49E901B5D41324E20D220B4154';
wwv_flow_imp.g_varchar2_table(2) := 'A2EE9A08223B30D5ECE7F1A7F89B247F2D4948AA8093AF25556ECE0B0014C0195801E35B9BD912A881C563D6BC7773852F60D296E7793E7490344D074FF251D3C0F623800FE425A859BFEEDB6636BF42246D241D5A7AEEE2639665EB3B08B04B7A94A47D';
wwv_flow_imp.g_varchar2_table(3) := '84782BD615A4585790625DDDEBFAFA1506664019F2A7F3DEA5994DC3F6FF755D00639A8D1C5BF4AB320000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(33150443709546390)
,p_file_name=>'caja.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
