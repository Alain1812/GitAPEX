prompt --application/shared_components/files/flecha_abajo_png
begin
--   Manifest
--     APP STATIC FILES: 110
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>110
,p_default_id_offset=>46157557361540665
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF610000000473424954080808087C086488000000097048597300000EC400000EC401952B0E1B0000001974455874536F667477617265007777772E696E6B73636170652E';
wwv_flow_imp.g_varchar2_table(2) := '6F72679BEE3C1A000000E449444154388DD590AD6E02411446CF659359572416B9CB5BF4019A2CA60A08D5E85690D434691090E09045A058C3F2063C05D4F501AA4075A7B4B766B661C3F227F9DCCC7CE7CCCC85AB8F7C25C11D5AAAFADFCB91DCF3730E';
wwv_flow_imp.g_varchar2_table(3) := 'A4315E6A6A1DF8FD903409D7C00D303176F5704AA2319E35E11868029B122A4377D6B4261C6B8C77260C2A430148E7E10BCAB3EB4D4DB9D290DBC5B6007E035A6EABEF47AB27C90AC7248760807FC121099F0BCDC33AF0A3F7C78CC90900D2247805E9BA';
wwv_flow_imp.g_varchar2_table(4) := 'E5249B8FFB73CFAF2FBBBBFD3D41C14BB229E46E3E2AD89714C327636741DBCE82F6C5E075E50F28BC630DDB6AEC2D0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(79306234634087054)
,p_file_name=>'flecha-abajo.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
