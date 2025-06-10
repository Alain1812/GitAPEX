prompt --application/pages/page_00305
begin
--   Manifest
--     PAGE: 00305
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>110
,p_default_id_offset=>46157557361540665
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp_page.create_page(
 p_id=>305
,p_name=>unistr('A\00F1adirExpedicion')
,p_alias=>unistr('A\00D1ADIREXPEDICION')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('A\00F1adirExpedicion')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'US_DEMO_TRANS_WMS'
,p_last_upd_yyyymmddhh24miss=>'20250423154338'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77680605032784101)
,p_plug_name=>unistr('P305_A\00F1adirViaje')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71946675685750613)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77681694627784112)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(77680605032784101)
,p_button_name=>unistr('A\00F1adirExpedicion')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(72019878772750637)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('A\00F1adir')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77681799679784113)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(77680605032784101)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(72019878772750637)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77680686907784102)
,p_name=>'P305_ID_VIAJE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77680605032784101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77680824732784103)
,p_name=>'P305_PAIS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(77680605032784101)
,p_prompt=>'Pais'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(72017452909750635)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77681026155784105)
,p_name=>'P305_CIUDAD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(77680605032784101)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(72017452909750635)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77681144007784106)
,p_name=>'P305_DIRECCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(77680605032784101)
,p_prompt=>'Direccion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_field_template=>wwv_flow_imp.id(72017452909750635)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77681241718784107)
,p_name=>'P305_CODIGO_POSTAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(77680605032784101)
,p_prompt=>'Codigo Postal'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(72017452909750635)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77681302953784108)
,p_name=>'P305_NOMBRE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(77680605032784101)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(72017452909750635)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77681514492784110)
,p_name=>'P305_TELEFONO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(77680605032784101)
,p_prompt=>'Telefono'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_field_template=>wwv_flow_imp.id(72017452909750635)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77681650089784111)
,p_name=>'P305_EMAIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(77680605032784101)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_imp.id(72017452909750635)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78116457636809181)
,p_name=>'P305_FECHA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(77680605032784101)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(72017452909750635)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77681865824784114)
,p_name=>unistr('A\00F1adirExpedicion')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77681694627784112)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77682037541784115)
,p_event_id=>wwv_flow_imp.id(77681865824784114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('A\00F1adirExpedicion')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_ubicacion_id NUMBER;',
'    v_destinatario_id NUMBER;',
'BEGIN',
unistr('    -- 1. Insertar/Validar UBICACI\00D3N'),
'    BEGIN',
'        SELECT ID INTO v_ubicacion_id ',
'        FROM ALAIN_UBICACION ',
'        WHERE PAIS = :P305_PAIS',
'          AND CIUDAD = :P305_CIUDAD',
'          AND DIRECCION = :P305_DIRECCION',
'          AND CODIGO_POSTAL = :P305_CODIGO_POSTAL;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            INSERT INTO ALAIN_UBICACION(PAIS, CIUDAD, DIRECCION, CODIGO_POSTAL) ',
'            VALUES (:P305_PAIS, :P305_CIUDAD, :P305_DIRECCION, :P305_CODIGO_POSTAL)',
'            RETURNING ID INTO v_ubicacion_id;',
'    END;',
'',
'    -- 2. Insertar/Validar DESTINATARIO',
'    BEGIN',
'        SELECT ID INTO v_destinatario_id ',
'        FROM ALAIN_DESTINATARIO ',
'        WHERE NOMBRE = :P305_NOMBRE',
'          AND TELEFONO = :P305_TELEFONO',
'          AND EMAIL = :P305_EMAIL;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            INSERT INTO ALAIN_DESTINATARIO(NOMBRE, TELEFONO, EMAIL) ',
'            VALUES (:P305_NOMBRE, :P305_TELEFONO, :P305_EMAIL)',
'            RETURNING ID INTO v_destinatario_id;',
'    END;',
'',
unistr('    -- 3. Insertar en EXPEDICI\00D3N'),
'    INSERT INTO ALAIN_EXPEDICION (',
'        ESTADO, ',
'        FECHA_ENTREGA, ',
'        VIAJE, ',
'        UBICACION, ',
'        DESTINATARIO',
'    ) VALUES (',
'        ''PE'', ',
'        :P305_FECHA, ',
'        :P305_ID_VIAJE, ',
'        v_ubicacion_id, ',
'        v_destinatario_id',
'    );',
'    ',
'    COMMIT;',
'END;'))
,p_attribute_02=>'P305_ID_VIAJE,P305_PAIS,P305_CIUDAD,P305_DIRECCION,P305_CODIGO_POSTAL,P305_NOMBRE,P305_TELEFONO,P305_EMAIL,P305_FECHA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77937597800615973)
,p_event_id=>wwv_flow_imp.id(77681865824784114)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78116352314809179)
,p_name=>'Cancelar'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77681799679784113)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78116441096809180)
,p_event_id=>wwv_flow_imp.id(78116352314809179)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/
