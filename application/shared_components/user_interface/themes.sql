prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 106
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(25952471822210082)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(25713910682209926)
,p_default_dialog_template=>wwv_flow_imp.id(25693532877209920)
,p_error_template=>wwv_flow_imp.id(25695075485209921)
,p_printer_friendly_template=>wwv_flow_imp.id(25713910682209926)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(25695075485209921)
,p_default_button_template=>wwv_flow_imp.id(25862321411209972)
,p_default_region_template=>wwv_flow_imp.id(25789118324209948)
,p_default_chart_template=>wwv_flow_imp.id(25789118324209948)
,p_default_form_template=>wwv_flow_imp.id(25789118324209948)
,p_default_reportr_template=>wwv_flow_imp.id(25789118324209948)
,p_default_tabform_template=>wwv_flow_imp.id(25789118324209948)
,p_default_wizard_template=>wwv_flow_imp.id(25789118324209948)
,p_default_menur_template=>wwv_flow_imp.id(25801533472209951)
,p_default_listr_template=>wwv_flow_imp.id(25789118324209948)
,p_default_irr_template=>wwv_flow_imp.id(25779375828209945)
,p_default_report_template=>wwv_flow_imp.id(25827387384209959)
,p_default_label_template=>wwv_flow_imp.id(25859895548209970)
,p_default_menu_template=>wwv_flow_imp.id(25863911426209973)
,p_default_calendar_template=>wwv_flow_imp.id(25864092589209973)
,p_default_list_template=>wwv_flow_imp.id(25843702884209964)
,p_default_nav_list_template=>wwv_flow_imp.id(25855562547209968)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(25855562547209968)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(25850161194209967)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(25725361908209931)
,p_default_dialogr_template=>wwv_flow_imp.id(25722577274209930)
,p_default_option_label=>wwv_flow_imp.id(25859895548209970)
,p_default_required_label=>wwv_flow_imp.id(25861199365209971)
,p_default_navbar_list_template=>wwv_flow_imp.id(25849779103209966)
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
