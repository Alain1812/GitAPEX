prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>110
,p_default_id_offset=>46157557361540665
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(71839764225750573)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
,p_version_scn=>664707850
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(71840064217750573)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
,p_version_scn=>664707850
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(71840414163750573)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
,p_version_scn=>664707850
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(71840700823750573)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
,p_version_scn=>664707850
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(71841054780750573)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attribute_01=>'Y'
,p_version_scn=>664707850
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(71841316634750573)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>664707850
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(71841629980750573)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_version_scn=>664707850
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(71841918700750573)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
,p_version_scn=>664707850
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(71842233490750573)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
,p_version_scn=>664707850
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(71842464134750573)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
,p_version_scn=>664707850
);
wwv_flow_imp.component_end;
end;
/
