prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 110
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>110
,p_default_id_offset=>46157557361540665
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(72110029183750747)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(71871468043750591)
,p_default_dialog_template=>wwv_flow_imp.id(71851090238750585)
,p_error_template=>wwv_flow_imp.id(71852632846750586)
,p_printer_friendly_template=>wwv_flow_imp.id(71871468043750591)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(71852632846750586)
,p_default_button_template=>wwv_flow_imp.id(72019878772750637)
,p_default_region_template=>wwv_flow_imp.id(71946675685750613)
,p_default_chart_template=>wwv_flow_imp.id(71946675685750613)
,p_default_form_template=>wwv_flow_imp.id(71946675685750613)
,p_default_reportr_template=>wwv_flow_imp.id(71946675685750613)
,p_default_tabform_template=>wwv_flow_imp.id(71946675685750613)
,p_default_wizard_template=>wwv_flow_imp.id(71946675685750613)
,p_default_menur_template=>wwv_flow_imp.id(71959090833750616)
,p_default_listr_template=>wwv_flow_imp.id(71946675685750613)
,p_default_irr_template=>wwv_flow_imp.id(71936933189750610)
,p_default_report_template=>wwv_flow_imp.id(71984944745750624)
,p_default_label_template=>wwv_flow_imp.id(72017452909750635)
,p_default_menu_template=>wwv_flow_imp.id(72021468787750638)
,p_default_calendar_template=>wwv_flow_imp.id(72021649950750638)
,p_default_list_template=>wwv_flow_imp.id(72001260245750629)
,p_default_nav_list_template=>wwv_flow_imp.id(72013119908750633)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(72013119908750633)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(72007718555750632)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(71882919269750596)
,p_default_dialogr_template=>wwv_flow_imp.id(71880134635750595)
,p_default_option_label=>wwv_flow_imp.id(72017452909750635)
,p_default_required_label=>wwv_flow_imp.id(72018756726750636)
,p_default_navbar_list_template=>wwv_flow_imp.id(72007336464750631)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
