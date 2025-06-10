prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>4319636551211844
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'DEMO_TRANS_WMS'
);
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'DetalleExpedicon'
,p_alias=>'DETALLEEXPEDICON'
,p_step_title=>'DetalleExpedicon'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Contenedor principal (antes .detalle-expedicion) */',
'.t-ContentBlock.t-ContentBlock--form {',
'  max-width: 800px;',
'  margin: 20px auto;',
'  padding: 20px;',
'}',
'',
unistr('/* Cada secci\00F3n/card (antes .seccion) */'),
'.t-Card {',
'  display: flex !important;',
'  flex-direction: column !important;',
'  margin-bottom: 25px;',
'  padding: 15px;',
'  border-radius: 8px;',
'  border: 1px solid;           /* usa el color de borde del tema */',
'  box-shadow: 0 0 10px rgba(0,0,0,0.1);',
'}',
'',
unistr('/* T\00EDtulo principal (h1) */'),
'.t-Heading.t-Heading--title {',
unistr('  border-bottom: 2px solid currentColor;  /* grosor y estilo, color seg\00FAn el texto */'),
'  padding-bottom: 10px;',
'}',
'',
unistr('/* Subt\00EDtulos (h2) */'),
'.t-Heading.t-Heading--subtitle {',
'  margin-top: 0;',
'  display: block !important;',
'  width: 100%;',
'  clear: both;',
'  margin-bottom: 1rem;',
'}',
'',
'/* Alerts (antes .error) */',
'.t-Alert {',
'  font-weight: bold;',
'  /* El color ya lo define .t-Alert--danger / --warning / --error */',
'}',
'',
'/* Convierte cada item en un flexbox para alinear label + valor */',
'.t-Form-item {',
'  display: flex;',
'  align-items: center;',
'  margin-bottom: 1rem;    /* espacio entre filas */',
'}',
'',
unistr('/* Ajusta la etiqueta para que ocupe s\00F3lo lo justo */'),
'.t-Form-label {',
'  margin: 0;',
'  font-weight: bold;',
unistr('  margin-right: 0.5rem;   /* separaci\00F3n etiqueta\00BFvalor */'),
'  white-space: nowrap;     /* no partir texto de la etiqueta */',
'}',
'',
'/* El contenedor del valor ocupa el resto */',
'.t-Form-inputContainer {',
'  flex: 1;',
'  margin: 0;',
'  padding: 0;',
'}',
'',
'.t-Heading--subtitle {',
'  display: block;',
unistr('  margin-bottom: 12px; /* espacio debajo del t\00EDtulo */'),
'  font-size: 1.2rem;',
'  font-weight: bold;',
'}',
'',
'.t-Form-inputContainer a.direccion-link {',
unistr('  /* Hereda el tama\00F1o de fuente del contenedor */'),
'  font-size: 1em !important;',
unistr('  /* Altura de l\00EDnea acorde al texto normal */'),
'  line-height: 1.5 !important;',
unistr('  /* Que respete el flujo en l\00EDnea */'),
'  display: inline-block;',
unistr('  /* Elimina paddings extra del bot\00F3n-link */'),
'  padding: 0 !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
,p_last_updated_by=>'US_DEMO_TRANS_WMS'
,p_last_upd_yyyymmddhh24miss=>'20250420134931'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28757443586346639)
,p_plug_name=>'DatosOcultos'
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34632883024027226)
,p_plug_name=>'GridLayout'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(25789118324209948)
,p_plug_display_sequence=>40
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29527278216339002)
,p_plug_name=>'DatosExpedicion'
,p_parent_plug_id=>wwv_flow_imp.id(34632883024027226)
,p_region_css_classes=>'pdf-Body'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(25722577274209930)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    e ALAIN_EXPEDICION%ROWTYPE; ',
'    d ALAIN_DESTINATARIO%ROWTYPE;',
'    u ALAIN_UBICACION%ROWTYPE;',
'    v ALAIN_VIAJE%ROWTYPE;',
'    t ALAIN_TRANSPORTE%ROWTYPE;',
'    us ALAIN_USUARIO%ROWTYPE;',
'BEGIN',
unistr('    -- Obtener los datos de la expedici\00F3n'),
'    SELECT * INTO e FROM ALAIN_EXPEDICION WHERE ID = :P4_ID_EXPEDICION;',
'    SELECT * INTO d FROM ALAIN_DESTINATARIO WHERE ID = e.DESTINATARIO;',
'    SELECT * INTO u FROM ALAIN_UBICACION WHERE ID = e.UBICACION;',
'    SELECT * INTO v FROM ALAIN_VIAJE WHERE ID = e.VIAJE;',
'    SELECT * INTO t FROM ALAIN_TRANSPORTE WHERE MATRICULA = v.MATRICULA;',
'    SELECT * INTO us FROM ALAIN_USUARIO WHERE USUARIO = t.PROPIETARIO;',
'',
'    -- Contenedor general',
'    htp.p(''<div class="t-ContentBlock t-ContentBlock--form">'');',
unistr('    htp.p(''<h1 class="t-Heading t-Heading--title">Expedici\00F3n #'' || e.ID || ''</h1>'');'),
'',
unistr('    -- Secci\00F3n: Responsable'),
'    htp.p(''<div class="t-Card">'');',
'      htp.p(''<h2 class="t-Heading t-Heading--subtitle">Responsable</h2>'');',
'      htp.p(''<div class="t-Form">'');',
'        htp.p(''<div class="t-Form-item">'');',
'          htp.p(''<label class="t-Form-label">Nombre:</label>'');',
'          htp.p(''<div class="t-Form-inputContainer">'' || us.USUARIO || ''</div>'');',
'        htp.p(''</div>'');',
'        htp.p(''<div class="t-Form-item">'');',
unistr('          htp.p(''<label class="t-Form-label">Tel\00E9fono:</label>'');'),
'          htp.p(''<div class="t-Form-inputContainer">'' || us.TELEFONO || ''</div>'');',
'        htp.p(''</div>'');',
'        htp.p(''<div class="t-Form-item">'');',
'          htp.p(''<label class="t-Form-label">Email:</label>'');',
'          htp.p(''<div class="t-Form-inputContainer">'' || us.EMAIL || ''</div>'');',
'        htp.p(''</div>'');',
'      htp.p(''</div>'');',
'    htp.p(''</div>'');',
'',
unistr('    -- Secci\00F3n: Expedici\00F3n'),
'    htp.p(''<div class="t-Card">'');',
unistr('      htp.p(''<h2 class="t-Heading t-Heading--subtitle">Expedici\00F3n</h2>'');'),
'      htp.p(''<div class="t-Form">'');',
'        htp.p(''<div class="t-Form-item">'');',
'          htp.p(''<label class="t-Form-label">Estado:</label>'');',
'          htp.p(''<div class="t-Form-inputContainer">'' || ALAIN_DES_ESTADO(e.ESTADO) || ''</div>'');',
'        htp.p(''</div>'');',
'        htp.p(''<div class="t-Form-item">'');',
'          htp.p(''<label class="t-Form-label">Fecha de entrega:</label>'');',
'          htp.p(''<div class="t-Form-inputContainer">'' || TO_CHAR(e.FECHA_ENTREGA,''DD/MM/YYYY'') || ''</div>'');',
'        htp.p(''</div>'');',
'      htp.p(''</div>'');',
'    htp.p(''</div>'');',
'',
unistr('    -- Secci\00F3n: Destinatario'),
'    htp.p(''<div class="t-Card">'');',
'      htp.p(''<h2 class="t-Heading t-Heading--subtitle">Destinatario</h2>'');',
'      htp.p(''<div class="t-Form">'');',
'        htp.p(''<div class="t-Form-item">'');',
'          htp.p(''<label class="t-Form-label">Nombre:</label>'');',
'          htp.p(''<div class="t-Form-inputContainer">'' || d.NOMBRE || ''</div>'');',
'        htp.p(''</div>'');',
'        htp.p(''<div class="t-Form-item">'');',
unistr('          htp.p(''<label class="t-Form-label">Tel\00E9fono:</label>'');'),
'          htp.p(''<div class="t-Form-inputContainer">'' || d.TELEFONO || ''</div>'');',
'        htp.p(''</div>'');',
'        htp.p(''<div class="t-Form-item">'');',
'          htp.p(''<label class="t-Form-label">Email:</label>'');',
'          htp.p(''<div class="t-Form-inputContainer">'' || d.EMAIL || ''</div>'');',
'        htp.p(''</div>'');',
'      htp.p(''</div>'');',
'    htp.p(''</div>'');',
'',
unistr('    -- Secci\00F3n: Ubicaci\00F3n'),
'    htp.p(''<div class="t-Card">'');',
unistr('      htp.p(''<h2 class="t-Heading t-Heading--subtitle">Ubicaci\00F3n</h2>'');'),
'      htp.p(''<div class="t-Form">'');',
'        htp.p(''<div class="t-Form-item">'');',
unistr('          htp.p(''<label class="t-Form-label">Pa\00EDs:</label>'');'),
'          htp.p(''<div class="t-Form-inputContainer">'' || u.PAIS || ''</div>'');',
'        htp.p(''</div>'');',
'        htp.p(''<div class="t-Form-item">'');',
'          htp.p(''<label class="t-Form-label">Ciudad:</label>'');',
'          htp.p(''<div class="t-Form-inputContainer">'' || u.CIUDAD || ''</div>'');',
'        htp.p(''</div>'');',
'        htp.p(''<div class="t-Form-item">'');',
unistr('          htp.p(''<label class="t-Form-label">Direcci\00F3n:</label>'');'),
'          htp.p(''<div class="t-Form-inputContainer">'');',
'            htp.p(''<a href="#" class="t-Button t-Button--link direccion-link" data-direccion="'' ||',
'                  u.DIRECCION || '', '' || u.CODIGO_POSTAL || '', '' || u.CIUDAD || '', '' || u.PAIS ||',
'                  ''">'' || u.DIRECCION || ''</a>'');',
'          htp.p(''</div>'');',
'        htp.p(''</div>'');',
'        htp.p(''<div class="t-Form-item">'');',
unistr('          htp.p(''<label class="t-Form-label">C\00F3digo Postal:</label>'');'),
'          htp.p(''<div class="t-Form-inputContainer">'' || u.CODIGO_POSTAL || ''</div>'');',
'        htp.p(''</div>'');',
'      htp.p(''</div>'');',
'    htp.p(''</div>'');',
'',
unistr('    -- Secci\00F3n: Transporte'),
'    htp.p(''<div class="t-Card">'');',
'      htp.p(''<h2 class="t-Heading t-Heading--subtitle">Transporte</h2>'');',
'      htp.p(''<div class="t-Form">'');',
'        htp.p(''<div class="t-Form-item">'');',
unistr('          htp.p(''<label class="t-Form-label">Matr\00EDcula:</label>'');'),
'          htp.p(''<div class="t-Form-inputContainer">'' || t.MATRICULA || ''</div>'');',
'        htp.p(''</div>'');',
'      htp.p(''</div>'');',
'    htp.p(''</div>'');',
'',
'    -- Cierre del contenedor',
'    htp.p(''</div>'');',
'',
'    RETURN NULL;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
unistr('        htp.p(''<div class="t-Alert t-Alert--danger">No se encontr\00F3 la expedici\00F3n.</div>'');'),
'    WHEN TOO_MANY_ROWS THEN',
unistr('        htp.p(''<div class="t-Alert t-Alert--warning">M\00FAltiples expediciones encontradas.</div>'');'),
'    WHEN OTHERS THEN',
'        htp.p(''<div class="t-Alert t-Alert--error">Error inesperado: '' || SQLERRM || ''</div>'');',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34632902553027227)
,p_plug_name=>'Botonera'
,p_parent_plug_id=>wwv_flow_imp.id(34632883024027226)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(25789118324209948)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29529528661339025)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(34632902553027227)
,p_button_name=>'GenerarReport'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(25862321411209972)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar Informe'
,p_button_redirect_url=>'f?p=&APP_ID.:309:&SESSION.::&DEBUG.::P309_ID_EXPEDICION:&P4_ID.'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29530016315339030)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(34632902553027227)
,p_button_name=>'RevisarReports'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(25862321411209972)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Revisar Informe'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_ID_EXPEDICION:&P4_ID.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34519859899442231)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(34632902553027227)
,p_button_name=>'GenerarPDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(25862321411209972)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Descargar PDF'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34633362382027231)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(34632902553027227)
,p_button_name=>'Volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(25862321411209972)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28757526558346640)
,p_name=>'P4_ID_EXPEDICION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28757443586346639)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29527305581339003)
,p_name=>'P4_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29527278216339002)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID',
'FROM ALAIN_EXPEDICION',
'WHERE ID = :P4_ID_EXPEDICION'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29527598916339005)
,p_name=>'P4_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(29527278216339002)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ALAIN_DES_ESTADO(ESTADO)',
'FROM ALAIN_EXPEDICION',
'WHERE ID = :P4_ID_EXPEDICION'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29527680593339006)
,p_name=>'P4_FECHA_ENTREGA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(29527278216339002)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FECHA_ENTREGA ',
'FROM ALAIN_EXPEDICION',
'WHERE ID = :P4_ID_EXPEDICION'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29527797693339007)
,p_name=>'P4_DIRECCION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(29527278216339002)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    u.DIRECCION ',
'FROM ',
'    ALAIN_EXPEDICION e',
'JOIN ',
'    ALAIN_UBICACION u ON e.UBICACION = u.ID',
'WHERE ',
'    e.ID = :P4_ID_EXPEDICION'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29527904408339009)
,p_name=>'P4_TELEFONO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(29527278216339002)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.TELEFONO ',
'FROM ALAIN_EXPEDICION e',
'JOIN ALAIN_DESTINATARIO d ON e.DESTINATARIO = d.ID',
'WHERE e.ID = :P4_ID_EXPEDICION'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29528093599339010)
,p_name=>'P4_VIAJE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(29527278216339002)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VIAJE ',
'FROM ALAIN_EXPEDICION',
'WHERE ID = :P4_ID_EXPEDICION'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29528171958339011)
,p_name=>'P4_CIUDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29527278216339002)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    u.CIUDAD ',
'FROM ',
'    ALAIN_EXPEDICION e',
'JOIN ',
'    ALAIN_UBICACION u ON e.UBICACION = u.ID',
'WHERE ',
'    e.ID = :P4_ID_EXPEDICION'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29528311618339013)
,p_name=>'ClickDireccion'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.direccion-link'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29528450845339014)
,p_event_id=>wwv_flow_imp.id(29528311618339013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'AbrirGoogleMaps'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// Dynamic Action al hacer clic en la direcci\00F3n'),
'const direccion = $(this.triggeringElement).data(''direccion'');',
'const mapsUrl = `https://www.google.com/maps/dir/?api=1&destination=${encodeURIComponent(direccion)}`;',
'window.open(mapsUrl, ''_blank'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34635252873027250)
,p_name=>'Descargar'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(34519859899442231)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35200949388730501)
,p_event_id=>wwv_flow_imp.id(34635252873027250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_AT.RAMMELHOF.CLIENT-SIDE-PDF'
,p_attribute_01=>'a4'
,p_attribute_02=>'portrait'
,p_attribute_03=>'50'
,p_attribute_04=>'50'
,p_attribute_05=>'50'
,p_attribute_06=>'50'
,p_attribute_07=>'.pdf-Body'
,p_attribute_08=>'.pdf-Header'
,p_attribute_09=>'.pdf-Footer'
,p_attribute_10=>'2'
,p_attribute_11=>'0.95'
,p_attribute_12=>'.pdf-PageInfoContainer'
,p_attribute_13=>'save'
,p_attribute_14=>'InformeExpedicion.pdf'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34520181688442234)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GenerarPDF'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   e ALAIN_EXPEDICION%ROWTYPE; ',
'   d ALAIN_DESTINATARIO%ROWTYPE;',
'   u ALAIN_UBICACION%ROWTYPE;',
'   v ALAIN_VIAJE%ROWTYPE;',
'   t ALAIN_TRANSPORTE%ROWTYPE;',
'   us ALAIN_USUARIO%ROWTYPE;',
'   l_html CLOB;',
'   l_pdf  BLOB;',
'BEGIN',
unistr('   -- Obtener los datos de la expedici\00F3n'),
'   SELECT * INTO e',
'   FROM ALAIN_EXPEDICION',
'   WHERE ID = :P4_ID_EXPEDICION;',
'',
'   SELECT * INTO d',
'   FROM ALAIN_DESTINATARIO',
'   WHERE ID = e.DESTINATARIO;',
'',
'   SELECT * INTO u',
'   FROM ALAIN_UBICACION',
'   WHERE ID = e.UBICACION;',
'',
'   SELECT * INTO v',
'   FROM ALAIN_VIAJE',
'   WHERE ID = e.VIAJE;',
'',
'   SELECT * INTO t',
'   FROM ALAIN_TRANSPORTE',
'   WHERE MATRICULA = v.MATRICULA;',
'',
'   SELECT * INTO us',
'   FROM ALAIN_USUARIO',
'   WHERE USUARIO = t.PROPIETARIO;',
'',
'   -- Generar HTML con los datos',
'   l_html := ''<html><body>'';',
'   l_html := l_html || ''<div class="detalle-expedicion">'';',
unistr('   l_html := l_html || ''<h1>Expedici\00F3n #'' || e.ID || ''</h1>'';'),
'',
unistr('   -- Secci\00F3n: Usuario'),
'   l_html := l_html || ''<div class="seccion">'';',
'   l_html := l_html || ''<h2>Responsable</h2>'';',
'   l_html := l_html || ''<p><strong>Nombre:</strong> '' || us.USUARIO || ''</p>'';',
unistr('   l_html := l_html || ''<p><strong>Tel\00E9fono:</strong> '' || us.TELEFONO || ''</p>'';'),
'   l_html := l_html || ''<p><strong>Email:</strong> '' || us.EMAIL || ''</p>'';',
'   l_html := l_html || ''</div>'';',
'',
unistr('   -- Secci\00F3n: Ubicaci\00F3n de Entrega'),
'   l_html := l_html || ''<div class="seccion">'';',
unistr('   l_html := l_html || ''<h2>Expedici\00F3n</h2>'';'),
'   l_html := l_html || ''<p><strong>Estado:</strong> '' || ALAIN_DES_ESTADO(e.ESTADO) || ''</p>'';',
'   l_html := l_html || ''<p><strong>Fecha de entrega:</strong> '' || e.FECHA_ENTREGA || ''</p>'';',
'   l_html := l_html || ''</div>'';',
'',
unistr('   -- Secci\00F3n: Datos del Destinatario'),
'   l_html := l_html || ''<div class="seccion">'';',
'   l_html := l_html || ''<h2>Destinatario</h2>'';',
'   l_html := l_html || ''<p><strong>Nombre:</strong> '' || d.NOMBRE || ''</p>'';',
unistr('   l_html := l_html || ''<p><strong>Tel\00E9fono:</strong> '' || d.TELEFONO || ''</p>'';'),
'   l_html := l_html || ''<p><strong>Email:</strong> '' || d.EMAIL || ''</p>'';',
'   l_html := l_html || ''</div>'';',
'',
unistr('   -- Secci\00F3n: Ubicaci\00F3n de Entrega'),
'   l_html := l_html || ''<div class="seccion">'';',
unistr('   l_html := l_html || ''<h2>Ubicaci\00F3n</h2>'';'),
unistr('   l_html := l_html || ''<p><strong>Pa\00EDs:</strong> '' || u.PAIS || ''</p>'';'),
'   l_html := l_html || ''<p><strong>Ciudad:</strong> '' || u.CIUDAD || ''</p>'';',
unistr('   l_html := l_html || ''<p><strong>Direcci\00F3n:</strong> '' || u.DIRECCION || '', '' || u.CODIGO_POSTAL || '', '' || u.CIUDAD || '', '' || u.PAIS || ''</p>'';'),
unistr('   l_html := l_html || ''<p><strong>C\00F3digo Postal:</strong> '' || u.CODIGO_POSTAL || ''</p>'';'),
'   l_html := l_html || ''</div>'';',
'',
unistr('   -- Secci\00F3n: Transporte'),
'   l_html := l_html || ''<div class="seccion">'';',
'   l_html := l_html || ''<h2>Transporte</h2>'';',
unistr('   l_html := l_html || ''<p><strong>Matr\00EDcula:</strong> '' || T.MATRICULA || ''</p>'';'),
'   l_html := l_html || ''</div>'';',
'',
'   l_html := l_html || ''</div>'';',
'   l_html := l_html || ''</body></html>'';',
'',
'   -- Generar el PDF con el contenido HTML',
'   l_pdf := APEX_PDF.CREATE_PDF(',
'               p_html        => l_html, ',
'               p_page_size   => ''A4'', ',
'               p_orientation => ''PORTRAIT'');',
'',
'   -- Enviar el PDF al navegador',
'   OWA_UTIL.mime_header(''application/pdf'', FALSE);',
'   OWA_UTIL.http_header_close;',
'   HTP.p(''Content-Disposition: attachment; filename="expedicion_'' || e.ID || ''.pdf"'');',
'   HTP.p(l_pdf);',
'',
'EXCEPTION',
'   WHEN NO_DATA_FOUND THEN',
unistr('       htp.p(''<p class="error">No se encontr\00F3 la expedici\00F3n.</p>'');'),
'   WHEN TOO_MANY_ROWS THEN',
unistr('       htp.p(''<p class="error">M\00FAltiples expediciones encontradas.</p>'');'),
'   WHEN OTHERS THEN',
'       htp.p(''<p class="error">Error inesperado: '' || SQLERRM || ''</p>'');',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>34520181688442234
);
wwv_flow_imp.component_end;
end;
/
