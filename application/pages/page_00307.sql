prompt --application/pages/page_00307
begin
--   Manifest
--     PAGE: 00307
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
 p_id=>307
,p_name=>'EditarExpedicion'
,p_alias=>'EDITAREXPEDICION'
,p_page_mode=>'MODAL'
,p_step_title=>'EditarExpedicion'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'US_DEMO_TRANS_WMS'
,p_last_upd_yyyymmddhh24miss=>'20250420130257'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77941536591616012)
,p_plug_name=>'Editar'
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78115538762809171)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(77941536591616012)
,p_button_name=>'EditarExpedicion'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(72019878772750637)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Editar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78115593988809172)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(77941536591616012)
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
 p_id=>wwv_flow_imp.id(77941587348616013)
,p_name=>'P307_ID_EXPEDICION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77941536591616012)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77941730615616014)
,p_name=>'P307_PAIS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(77941536591616012)
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
 p_id=>wwv_flow_imp.id(77941851568616015)
,p_name=>'P307_CIUDAD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(77941536591616012)
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
 p_id=>wwv_flow_imp.id(78114976593809166)
,p_name=>'P307_DIRECCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(77941536591616012)
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
 p_id=>wwv_flow_imp.id(78115155303809167)
,p_name=>'P307_CODIGO_POSTAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(77941536591616012)
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
 p_id=>wwv_flow_imp.id(78115209883809168)
,p_name=>'P307_NOMBRE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(77941536591616012)
,p_prompt=>'Nombre destinatario'
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
 p_id=>wwv_flow_imp.id(78115319616809169)
,p_name=>'P307_TELEFONO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(77941536591616012)
,p_prompt=>'Telefono destinatario'
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
 p_id=>wwv_flow_imp.id(78115410649809170)
,p_name=>'P307_EMAIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(77941536591616012)
,p_prompt=>'Email destinatario'
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
 p_id=>wwv_flow_imp.id(78116562803809182)
,p_name=>'P307_FECHA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(77941536591616012)
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
 p_id=>wwv_flow_imp.id(78115667248809173)
,p_name=>'Cancelar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78115593988809172)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78116981748809186)
,p_event_id=>wwv_flow_imp.id(78115667248809173)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Resetar'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P307_CIUDAD := NULL;',
':P307_CODIGO_POSTAL := NULL;',
':P307_DIRECCION := NULL;',
':P307_EMAIL := NULL;',
':P307_FECHA := NULL;',
':P307_ID_EXPEDICION := NULL;',
':P307_NOMBRE := NULL;',
':P307_PAIS := NULL;',
':P307_TELEFONO := NULL;',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78115772902809174)
,p_event_id=>wwv_flow_imp.id(78115667248809173)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78115934832809175)
,p_name=>'EditarExpedicion'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78115538762809171)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78116891106809185)
,p_event_id=>wwv_flow_imp.id(78115934832809175)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Resetar'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P307_CIUDAD := NULL;',
':P307_CODIGO_POSTAL := NULL;',
':P307_DIRECCION := NULL;',
':P307_EMAIL := NULL;',
':P307_FECHA := NULL;',
':P307_ID_EXPEDICION := NULL;',
':P307_NOMBRE := NULL;',
':P307_PAIS := NULL;',
':P307_TELEFONO := NULL;',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78116067445809177)
,p_event_id=>wwv_flow_imp.id(78115934832809175)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'EditarExpedicion'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    v_expedicion_id NUMBER := :P307_ID_EXPEDICION; -- ID de la expedici\00F3n a editar (hidden item)'),
'    v_ubicacion_id NUMBER;',
'    v_destinatario_id NUMBER;',
'BEGIN',
unistr('    -- 1. Insertar/Validar UBICACI\00D3N (igual que en INSERT)'),
'    BEGIN',
'        SELECT ID INTO v_ubicacion_id ',
'        FROM ALAIN_UBICACION ',
'        WHERE PAIS = :P307_PAIS',
'          AND CIUDAD = :P307_CIUDAD',
'          AND DIRECCION = :P307_DIRECCION',
'          AND CODIGO_POSTAL = :P307_CODIGO_POSTAL;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            INSERT INTO ALAIN_UBICACION (PAIS, CIUDAD, DIRECCION, CODIGO_POSTAL) ',
'            VALUES (:P307_PAIS, :P307_CIUDAD, :P307_DIRECCION, :P307_CODIGO_POSTAL)',
'            RETURNING ID INTO v_ubicacion_id;',
'    END;',
'',
'    -- 2. Insertar/Validar DESTINATARIO (igual que en INSERT)',
'    BEGIN',
'        SELECT ID INTO v_destinatario_id ',
'        FROM ALAIN_DESTINATARIO ',
'        WHERE NOMBRE = :P307_NOMBRE',
'          AND TELEFONO = :P307_TELEFONO',
'          AND EMAIL = :P307_EMAIL;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            INSERT INTO ALAIN_DESTINATARIO (NOMBRE, TELEFONO, EMAIL) ',
'            VALUES (:P307_NOMBRE, :P307_TELEFONO, :P307_EMAIL)',
'            RETURNING ID INTO v_destinatario_id;',
'    END;',
'',
unistr('    -- 3. Actualizar la EXPEDICI\00D3N con los nuevos IDs'),
'    UPDATE ALAIN_EXPEDICION',
'    SET ',
'        FECHA_ENTREGA = :P307_FECHA, -- Campo editable',
unistr('        UBICACION = v_ubicacion_id, -- Nuevo ID de ubicaci\00F3n'),
'        DESTINATARIO = v_destinatario_id -- Nuevo ID de destinatario',
'    WHERE ',
unistr('        ID = v_expedicion_id; -- Filtra por ID de expedici\00F3n'),
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        RAISE_APPLICATION_ERROR(-20001, ''Error al actualizar: '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P307_ID_EXPEDICION,P307_PAIS,P307_CIUDAD,P307_DIRECCION,P307_CODIGO_POSTAL,P307_NOMBRE,P307_TELEFONO,P307_EMAIL,P307_FECHA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78115998480809176)
,p_event_id=>wwv_flow_imp.id(78115934832809175)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78117331925809189)
,p_name=>'CargarDatos2'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P307_ID_EXPEDICION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78117516026809191)
,p_event_id=>wwv_flow_imp.id(78117331925809189)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'CargarDatos'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_expedicion ALAIN_EXPEDICION%ROWTYPE;',
'    v_ubicacion ALAIN_UBICACION%ROWTYPE;',
'    v_destinatario ALAIN_DESTINATARIO%ROWTYPE;',
'BEGIN',
unistr('    -- Obtener datos de la expedici\00F3n'),
'    SELECT * INTO v_expedicion ',
'    FROM ALAIN_EXPEDICION ',
'    WHERE ID = :P307_ID_EXPEDICION;',
'',
unistr('    -- Obtener datos de la ubicaci\00F3n asociada'),
'    SELECT * INTO v_ubicacion ',
'    FROM ALAIN_UBICACION ',
'    WHERE ID = v_expedicion.UBICACION;',
'',
'    -- Obtener datos del destinatario asociado',
'    SELECT * INTO v_destinatario ',
'    FROM ALAIN_DESTINATARIO ',
'    WHERE ID = v_expedicion.DESTINATARIO;',
'',
unistr('    -- Asignar valores a los \00EDtems del modal'),
'    :P307_PAIS := v_ubicacion.PAIS;',
'    :P307_CIUDAD := v_ubicacion.CIUDAD;',
'    :P307_DIRECCION := v_ubicacion.DIRECCION;',
'    :P307_CODIGO_POSTAL := v_ubicacion.CODIGO_POSTAL;',
'',
'    :P307_NOMBRE := v_destinatario.NOMBRE;',
'    :P307_TELEFONO := v_destinatario.TELEFONO;',
'    :P307_EMAIL := v_destinatario.EMAIL;',
'',
'    :P307_FECHA := v_expedicion.FECHA_ENTREGA;',
'',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78117676683809193)
,p_name=>'CargarDatos'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78119668636809213)
,p_event_id=>wwv_flow_imp.id(78117676683809193)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P307_FECHA,P307_PAIS,P307_CIUDAD,P307_DIRECCION,P307_CODIGO_POSTAL,P307_NOMBRE,P307_TELEFONO,P307_EMAIL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78117909542809195)
,p_event_id=>wwv_flow_imp.id(78117676683809193)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'CargarDatos'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_expedicion ALAIN_EXPEDICION%ROWTYPE;',
'    v_ubicacion ALAIN_UBICACION%ROWTYPE;',
'    v_destinatario ALAIN_DESTINATARIO%ROWTYPE;',
'BEGIN',
unistr('    -- Obtener datos de la expedici\00F3n'),
'    SELECT * INTO v_expedicion ',
'    FROM ALAIN_EXPEDICION ',
'    WHERE ID = :P307_ID_EXPEDICION;',
'',
unistr('    -- Obtener datos de la ubicaci\00F3n asociada'),
'    SELECT * INTO v_ubicacion ',
'    FROM ALAIN_UBICACION ',
'    WHERE ID = v_expedicion.UBICACION;',
'',
'    -- Obtener datos del destinatario asociado',
'    SELECT * INTO v_destinatario ',
'    FROM ALAIN_DESTINATARIO ',
'    WHERE ID = v_expedicion.DESTINATARIO;',
'',
unistr('    -- Asignar valores a los \00EDtems del modal'),
'    :P307_PAIS := v_ubicacion.PAIS;',
'    :P307_CIUDAD := v_ubicacion.CIUDAD;',
'    :P307_DIRECCION := v_ubicacion.DIRECCION;',
'    :P307_CODIGO_POSTAL := v_ubicacion.CODIGO_POSTAL;',
'',
'    :P307_NOMBRE := v_destinatario.NOMBRE;',
'    :P307_TELEFONO := v_destinatario.TELEFONO;',
'    :P307_EMAIL := v_destinatario.EMAIL;',
'',
'    :P307_FECHA := v_expedicion.FECHA_ENTREGA;',
'',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78119359489809210)
,p_event_id=>wwv_flow_imp.id(78117676683809193)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P307_FECHA,P307_PAIS,P307_CIUDAD,P307_DIRECCION,P307_CODIGO_POSTAL,P307_NOMBRE,P307_TELEFONO,P307_EMAIL'
);
wwv_flow_imp.component_end;
end;
/
