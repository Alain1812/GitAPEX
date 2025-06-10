prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'TFGAlainPedruezaBasabe'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Contenedor principal (antes .detalle-expedicion) */',
'.t-ContentBlock.t-ContentBlock--form {',
'  max-width: 800px;',
'  margin: 10px auto;     /* antes 20px */',
'  padding: 10px;         /* antes 20px */',
'}',
'',
unistr('/* Cada secci\00F3n/card (antes .seccion) */'),
'.t-Card {',
'  display: flex !important;',
'  flex-direction: column !important;',
'  margin-bottom: 15px;   /* antes 25px */',
'  padding: 10px;         /* antes 15px */',
unistr('  border-radius: 6px;    /* un poco m\00E1s compacto */'),
'  border: 1px solid;',
unistr('  box-shadow: 0 0 6px rgba(0,0,0,0.08); /* sombra m\00E1s suave */'),
'}',
'',
unistr('/* T\00EDtulo principal (h1) */'),
'.t-Heading.t-Heading--title {',
unistr('  border-bottom: 1px solid currentColor;  /* m\00E1s fino */'),
'  padding-bottom: 6px;                    /* antes 10px */',
unistr('  margin-bottom: 12px;                    /* a\00F1ade separaci\00F3n */'),
'}',
'',
unistr('/* Subt\00EDtulos (h2) */'),
'.t-Heading.t-Heading--subtitle {',
'  margin-top: 0;',
'  margin-bottom: 8px;    /* antes 1rem (~16px) */',
unistr('  font-size: 1.1rem;     /* ligeramente m\00E1s peque\00F1o */'),
'}',
'',
'/* Alerts */',
'.t-Alert {',
'  font-weight: bold;',
'  margin: 8px 0;',
'}',
'',
'/* Items en filas */',
'.t-Form-item {',
'  display: flex;',
'  align-items: center;',
'  margin-bottom: 0.5rem;   /* antes 1rem */',
'}',
'',
'/* Etiqueta */',
'.t-Form-label {',
'  margin: 0;',
'  font-weight: bold;',
'  margin-right: 0.5rem;',
'  white-space: nowrap;',
'}',
'',
'/* Contenedor del valor */',
'.t-Form-inputContainer {',
'  flex: 1;',
'  margin: 0;',
'  padding: 0;',
'}',
'',
unistr('/* Ajuste adicional a subt\00EDtulo */'),
'.t-Heading--subtitle {',
'  margin-bottom: 8px;',
'  font-size: 1.1rem;',
'  font-weight: bold;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'US_DEMO_TRANS_WMS'
,p_last_upd_yyyymmddhh24miss=>'20250420123505'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72144300527750790)
,p_plug_name=>unistr('P\00E1gina principal')
,p_icon_css_classes=>'fa-home'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71913442533750604)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72161262039393077)
,p_plug_name=>'DatosUsuario'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71946675685750613)
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    us ALAIN_USUARIO%ROWTYPE;',
'BEGIN',
'    -- Obtener datos del usuario',
'    SELECT * INTO us FROM ALAIN_USUARIO WHERE USUARIO = :APP_USER;',
'',
'    -- Contenedor general',
'    htp.p(''<div class="t-ContentBlock t-ContentBlock--form usuario">'');',
'      htp.p(''<h1 class="t-Heading t-Heading--title">Datos del Usuario</h1>'');',
'',
unistr('      -- Secci\00F3n: Datos del Usuario'),
'      htp.p(''<div class="t-Card">'');',
unistr('        htp.p(''<h2 class="t-Heading t-Heading--subtitle">Informaci\00F3n del Usuario</h2>'');'),
'        htp.p(''<div class="t-Form">'');',
'',
'          htp.p(''<div class="t-Form-item">'');',
'            htp.p(''<label class="t-Form-label">Usuario:</label>'');',
'            htp.p(''<div class="t-Form-inputContainer">'' || us.USUARIO || ''</div>'');',
'          htp.p(''</div>'');',
'',
'          htp.p(''<div class="t-Form-item">'');',
unistr('            htp.p(''<label class="t-Form-label">Tel\00E9fono:</label>'');'),
'            htp.p(''<div class="t-Form-inputContainer">'' || us.TELEFONO || ''</div>'');',
'          htp.p(''</div>'');',
'',
'          htp.p(''<div class="t-Form-item">'');',
'            htp.p(''<label class="t-Form-label">Email:</label>'');',
'            htp.p(''<div class="t-Form-inputContainer">'' || us.EMAIL || ''</div>'');',
'          htp.p(''</div>'');',
'',
'        htp.p(''</div>''); -- Fin t-Form',
'      htp.p(''</div>'');   -- Fin t-Card',
'',
'    htp.p(''</div>'');     -- Fin t-ContentBlock',
'',
'    RETURN NULL;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
unistr('      htp.p(''<div class="t-Alert t-Alert--danger">No se encontr\00F3 el usuario.</div>'');'),
'    WHEN TOO_MANY_ROWS THEN',
unistr('      htp.p(''<div class="t-Alert t-Alert--warning">Se encontraron m\00FAltiples usuarios.</div>'');'),
'    WHEN OTHERS THEN',
'      htp.p(''<div class="t-Alert t-Alert--error">Error inesperado: '' || SQLERRM || ''</div>'');',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72161445283393078)
,p_plug_name=>'DatosTransporte'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71946675685750613)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    t ALAIN_TRANSPORTE%ROWTYPE;',
'    us ALAIN_USUARIO%ROWTYPE;',
'    cont INT;',
'BEGIN',
'    -- Obtener datos del usuario',
'    SELECT * INTO us FROM ALAIN_USUARIO WHERE USUARIO = :APP_USER;',
'',
'    IF :APP_MATRICULA IS NOT NULL THEN',
'        -- Obtener datos del transporte',
'        SELECT * INTO t FROM ALAIN_TRANSPORTE WHERE MATRICULA = :APP_MATRICULA;',
'',
'        -- Contar los viajes abiertos',
'        SELECT COUNT(*) INTO cont FROM ALAIN_VIAJE WHERE MATRICULA = :APP_MATRICULA AND ESTADO <> ''EC'' ;',
'',
'        -- Contenedor general',
'        htp.p(''<div class="t-ContentBlock t-ContentBlock--form transporte">'');',
'          htp.p(''<h1 class="t-Heading t-Heading--title">Transporte Seleccionado</h1>'');',
'',
'          htp.p(''<div class="t-Card">'');',
unistr('            htp.p(''<h2 class="t-Heading t-Heading--subtitle">Informaci\00F3n del Transporte</h2>'');'),
'            htp.p(''<div class="t-Form">'');',
'',
'              htp.p(''<div class="t-Form-item">'');',
unistr('                htp.p(''<label class="t-Form-label">Matr\00EDcula:</label>'');'),
'                htp.p(''<div class="t-Form-inputContainer">'' || t.MATRICULA || ''</div>'');',
'              htp.p(''</div>'');',
'',
'              htp.p(''<div class="t-Form-item">'');',
unistr('                htp.p(''<label class="t-Form-label">N\00BA de viajes abiertos:</label>'');'),
'                htp.p(''<div class="t-Form-inputContainer">'' || cont || ''</div>'');',
'              htp.p(''</div>'');',
'',
'            htp.p(''</div>''); -- Fin t-Form',
'          htp.p(''</div>'');   -- Fin t-Card',
'',
'        htp.p(''</div>'');     -- Fin t-ContentBlock',
'    END IF;',
'',
'    RETURN NULL;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        htp.p(''<div class="t-Alert t-Alert--danger">Transporte no encontrado.</div>'');',
'    WHEN TOO_MANY_ROWS THEN',
unistr('        htp.p(''<div class="t-Alert t-Alert--warning">Se encontraron m\00FAltiples transportes.</div>'');'),
'    WHEN OTHERS THEN',
'        htp.p(''<div class="t-Alert t-Alert--error">Error inesperado: '' || SQLERRM || ''</div>'');',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'APP_MATRICULA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72162903739393093)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71946675685750613)
,p_plug_display_sequence=>40
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72164323181393107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(72162903739393093)
,p_button_name=>'Buscar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(72019878772750637)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CHANGE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77677089755784066)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(72161445283393078)
,p_button_name=>'Editar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(72019878772750637)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Editar'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:302:&SESSION.::&DEBUG.::P302_MATRICULA:&P1_MATRICULA_SEL.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76717485549790185)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(72162903739393093)
,p_button_name=>unistr('A\00F1adirTransporte')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(72019878772750637)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('A\00F1adir')
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76719972198790210)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(72161445283393078)
,p_button_name=>'Borrar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(72019878772750637)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Borrar'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'f?p=&APP_ID.:303:&SESSION.::&DEBUG.::P303_MATRICULA:&P1_MATRICULA_SEL.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72161566793393080)
,p_name=>'P1_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72161262039393077)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72161714056393081)
,p_name=>'P1_TELEFONO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72161262039393077)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72161849843393082)
,p_name=>'P1_EMAIL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(72161262039393077)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72163004749393094)
,p_name=>'P1_MATRICULA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72162903739393093)
,p_prompt=>'Matricula'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MATRICULA AS D, MATRICULA AS R ',
'FROM ALAIN_TRANSPORTE ',
'WHERE PROPIETARIO = :P1_USUARIO;',
''))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(72017452909750635)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72164009911393104)
,p_name=>'P1_VIAJES_ABIERTOS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(72161445283393078)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72164088829393105)
,p_name=>'P1_MATRICULA_SEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(72161445283393078)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72164519274393109)
,p_name=>'P1_TEXTO_MATRICULA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72161445283393078)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79118656435884866)
,p_name=>'Refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(72161445283393078)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79118740261884867)
,p_event_id=>wwv_flow_imp.id(79118656435884866)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72161445283393078)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79118795766884868)
,p_event_id=>wwv_flow_imp.id(79118656435884866)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_MATRICULA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80674513937982867)
,p_name=>'Refresh2'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(72162903739393093)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80674643054982868)
,p_event_id=>wwv_flow_imp.id(80674513937982867)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72162903739393093)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72164390740393108)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'BUSCAR_MATRICULA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Asignar el mismo valor a P1_MATRICULA_SEL',
'    :P1_MATRICULA_SEL := :P1_MATRICULA;',
'    :APP_MATRICULA := :P1_MATRICULA;',
'',
unistr('    -- Contar viajes abiertos de la matr\00EDcula seleccionada'),
'    SELECT COUNT(*) ',
'    INTO :P1_VIAJES_ABIERTOS',
'    FROM ALAIN_VIAJE ',
'    WHERE MATRICULA = :P1_MATRICULA;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(72164323181393107)
,p_internal_uid=>26006833378852443
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72161873338393083)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DatosSesion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_telefono VARCHAR2(15);',
'    v_email VARCHAR2(40);',
'BEGIN',
'    -- Obtener datos del usuario actual',
'    SELECT TELEFONO, EMAIL',
'    INTO v_telefono, v_email',
'    FROM ALAIN_USUARIO',
'    WHERE UPPER(USUARIO) = UPPER(:APP_USER);',
unistr('    -- Asignar valores a los elementos de p\00E1gina'),
'    :P1_USUARIO := :APP_USER;',
'    :P1_TELEFONO := v_telefono;',
'    :P1_EMAIL := v_email;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
unistr('        -- Si no encuentra datos, asigna valores vac\00EDos'),
'        :P1_USUARIO := ''No encontrado'';',
'        :P1_TELEFONO := ''No disponible'';',
'        :P1_EMAIL := ''No disponible'';',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_is_stateful_y_n=>'Y'
,p_internal_uid=>26004315976852418
);
wwv_flow_imp.component_end;
end;
/
