prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_name=>'DetallesInforme'
,p_alias=>'DETALLESINFORME'
,p_step_title=>'DetallesInforme'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function generarPDF() {',
'',
'    var element = document.getElementById(''DatosInforme'');',
'}',
'',
'document.getElementById(''BotonDescargar'').addEventListener(''click'', generarPDF);'))
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
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
,p_last_updated_by=>'US_DEMO_TRANS_WMS'
,p_last_upd_yyyymmddhh24miss=>'20250419152604'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29531258523339042)
,p_plug_name=>'VariablesRecividas'
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34633021757027228)
,p_plug_name=>'GridLayout'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(25789118324209948)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29531639415339046)
,p_plug_name=>'DatosInforme'
,p_region_name=>'DatosInforme'
,p_parent_plug_id=>wwv_flow_imp.id(34633021757027228)
,p_region_css_classes=>'pdf-Body'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(25722577274209930)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    i ALAIN_INFORME%ROWTYPE;',
'BEGIN',
'    -- Obtener el informe',
'    SELECT * INTO i',
'      FROM ALAIN_INFORME',
'     WHERE ID = :P11_ID_FORMULARIO;',
'',
'    -- Contenedor general',
'    htp.p(''<div class="t-ContentBlock t-ContentBlock--form informe">'');',
'      htp.p(''<h1 class="t-Heading t-Heading--title">Informe #'' || i.ID || ''</h1>'');',
'',
unistr('      -- Secci\00F3n: Datos del Informe'),
'      htp.p(''<div class="t-Card">'');',
'        htp.p(''<h2 class="t-Heading t-Heading--subtitle">Datos del Informe</h2>'');',
'        htp.p(''<div class="t-Form">'');',
'          htp.p(''<div class="t-Form-item">'');',
'            htp.p(''<label class="t-Form-label">Estado:</label>'');',
'            htp.p(''<div class="t-Form-inputContainer">'' || ALAIN_DES_ESTADO(i.ESTADO) || ''</div>'');',
'          htp.p(''</div>'');',
'',
'          htp.p(''<div class="t-Form-item">'');',
'            htp.p(''<label class="t-Form-label">Observaciones:</label>'');',
'            htp.p(''<div class="t-Form-inputContainer">'' || i.OBSERVACIONES || ''</div>'');',
'          htp.p(''</div>'');',
'',
'          htp.p(''<div class="t-Form-item">'');',
unistr('            htp.p(''<label class="t-Form-label">Fecha de creaci\00F3n:</label>'');'),
'            htp.p(''<div class="t-Form-inputContainer">'' ||',
'                   TO_CHAR(i.FECHA_CREACION,''DD/MM/YYYY HH24:MI'') ||',
'                  ''</div>'');',
'          htp.p(''</div>'');',
'        htp.p(''</div>'');',
'      htp.p(''</div>'');',
'',
'    htp.p(''</div>'');',
'    RETURN NULL;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
unistr('      htp.p(''<div class="t-Alert t-Alert--danger">No se encontr\00F3 el informe.</div>'');'),
'    WHEN TOO_MANY_ROWS THEN',
unistr('      htp.p(''<div class="t-Alert t-Alert--warning">Se encontraron m\00FAltiples informes.</div>'');'),
'    WHEN OTHERS THEN',
'      htp.p(''<div class="t-Alert t-Alert--error">Error inesperado: '' || SQLERRM || ''</div>'');',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script> ',
'<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>',
''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29531789140339047)
,p_plug_name=>'Botonera'
,p_parent_plug_id=>wwv_flow_imp.id(34633021757027228)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29531895451339048)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29531789140339047)
,p_button_name=>'Descargar'
,p_button_static_id=>'BotonDescargar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(25862321411209972)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'DescargarPDF'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35183003452195691)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29531789140339047)
,p_button_name=>'Volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(25862321411209972)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29531332720339043)
,p_name=>'P11_ID_FORMULARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29531258523339042)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34634957960027247)
,p_name=>'Descargar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29531895451339048)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34635056230027248)
,p_event_id=>wwv_flow_imp.id(34634957960027247)
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
,p_attribute_14=>'DetallesInforme.pdf'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34633816930027236)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DescargarPDF'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    i ALAIN_INFORME%ROWTYPE;',
'    v_html CLOB;',
'BEGIN',
'    -- Obtener el informe',
'    SELECT * INTO i',
'    FROM ALAIN_INFORME',
'    WHERE ID = :P11_ID_FORMULARIO;',
'',
'    -- Construir el HTML',
'    v_html := ''<html><head><meta charset="UTF-8"><title>Informe #'' || i.ID || ''</title></head><body>'';',
'    v_html := v_html || ''<h1>Informe #'' || i.ID || ''</h1>'';',
'    v_html := v_html || ''<p><strong>Estado:</strong> '' || ALAIN_DES_ESTADO(i.ESTADO) || ''</p>'';',
'    v_html := v_html || ''<p><strong>Observaciones:</strong> '' || i.OBSERVACIONES || ''</p>'';',
unistr('    v_html := v_html || ''<p><strong>Fecha de creaci\00F3n:</strong> '' || TO_CHAR(i.FECHA_CREACION, ''DD/MM/YYYY HH24:MI'') || ''</p>'';'),
'    v_html := v_html || ''</body></html>'';',
'',
'    -- Configurar la descarga',
'    owa_util.mime_header(''text/html'', FALSE);',
'    htp.p(''Content-Disposition: attachment; filename="informe_'' || i.ID || ''.html"'');',
'    owa_util.http_header_close;',
'',
'    -- Enviar el contenido',
'    htp.p(v_html);',
'',
'    RETURN;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(29531895451339048)
,p_internal_uid=>34633816930027236
);
wwv_flow_imp.component_end;
end;
/
