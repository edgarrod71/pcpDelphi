{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeación y Control de la Producción                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo está protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducción no autorizada, la ingeniería inversa y la   }
{       distribución total o parcial del código contenido en este   }
{       archivo está estrictamente prohibido y podrá tener severas  }
{       consecuencias civiles y penales.                            }
{                                                                   }
{       RESTRICCIONES                                               }
{                                                                   }
{       ESTE CODIGO Y TODOS LOS ARCHIVOS RELACIONADOS               }
{       (DCU, OBJ, DLL, ETC.) SON CONFIDENCIALES Y SU               }
{       PROPIETARIO ES SOFTCONF LIMITADA.                           }
{                                                                   }
{                                                                   }
{       www.softwaredeconfianza.com                                 }
{       tecnologia@softwaredeconfianza.com                          }
{*******************************************************************
        Unit            : _cons_pcp
        Objetivo        : Libreria de constantes PCP
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Marzo de 2004
        Versión         : pcp4000
*******************************************************************}

{**$I DEFINICIONES.INC}


unit _cons_pcp;

interface

uses db, graphics;

Type
        Float = Real;

Const

      coi_SinIcono = 0;
      coiDiasMes   = 30;

      tsNinguno     = 0;
      tsShow        = 1;
      tsShowModal   = 2;
      //Tipos de variables (InputForm)
      tvInteger       =0;
      tvFloat         =1;
      tvString        =2;
      tvBoolean       =3;
      tvStringLookUp  =4;
      tvPositiveInteger = 5;
      tvPositiveFloat   = 6;
      //Colores de las aplicaciones
      colorPCP        = $00C56A31;//$004080FF;
      colorPCT        = $00FF8000;
      colorINTERNOSCL = $00C1FFC1;
      coiMasClaro   = 40;
      coiCSTNumeroVariablesAdicionales = 10;

      //RC20.4 - Tipos de formas de pago
      //(Ajustado en RC20.8)
      fpPersonalizado                   = 0;
      fpValorHoraProduccion             = 1;
      fpDividido                        = 2;
      fpValorHoraDiferencial            = 3;
      fpNivelDeHabilidad                = 4;
      fpCurvaAprendizaje                = 5;
      fpMixtoLinealYDividido            = 6;
      fpValorHoraProduccionMovil        = 7;
      fpPagoPorOperacion                = 8;
      fpIncentivoPCPCombinado           = 9;
      fpIncentivoPCPBonificacion        = 10;
      fpIncentivoHalsey                 = 11;
      fpIncentivoRowan                  = 12;
      fpIncentivoBarth                  = 13;

      //Familias de movimiento (PERSONAL Y RECURSOS) SIS_FAMI_MOVIMIENTO
      fmIngreso         = 1;
      fmTraslado        = 2;
      fmBajaTemporal    = 3;
      fmBajaPermanente  = 4;
      fmReingreso       = 5;

      //RC20.9 - CATALOGOS DE IMAGENES
      ciReferencias     = 1;
      ciMateriales      = 2;
      ciInsumos         = 3;


      //Imagenes fijas del ImageList principal en MDI
      cosIndexImagenFolder    = 91;
      cosIndexImagenObjetoPCPInicial    = 86;

      //Constantes string en programación y BD (no importa su traducción)
      cosObjetoPCP      = 'PCP_CUST_MENU_OBJECT';
      cosSinMenu = 'menu_sin_clasificacion';


Type
	T_Busqueda = (tbNinguno, tbNormal, tbArreglo);
        TTipoAccion = (taNone, taInsert, taEdit, taConsulta);

    //RC13-Tipo para el registro de varialbles adicionales en operaciones CST
    TCSTVariablesAdicionales    = Record
        var_1, //  : Float;
        var_2, //  : Float;
        var_3, //  : Float;
        var_4, //  : Float;
        var_5, //  : Float;
        var_6, //  : Float;
        var_7, //  : Float;
        var_8, //  : Float;
        var_9, //  : Float;
        var_10,//  : Float;
        Tiem_TMU: Float;
    End;
    //RC14-Unidades de medida para los paquetes de corte
    TUnid_medi_paqu_corte = (umpcNoAsignado, umpcBloques, umpcBloquesCP,
                umpcCapas, umpcPaquetes, umpcTallas);
    //RC20.6-Tipos de objetos adicionales
    TObjetoAdicionalPCP = (toaNinguno, toaConsultas, toaFormularios, toaInformes, toaImagenes, toaInformesEnChild, toaAplicaciones);

    //RC20.9 - Tipos de fichas técnicas de diseño
    TFichasTecnicasDiseno =
                (ftdSinAsignar, ftdHojaDisenoCaratula, ftdHojaDiseno, ftdEspecificacionesGeneralesDiseno,
                 ftdEspecificacionesDisenoDetalles, ftdEspecificacionesEmpaque,
                 ftdEspecificacionesConstruccion, ftdMedidasEspecialesDetalles,
                 ftdMedidasPrendaTerminada, ftdEspecificacionesPresentacion,
                 ftdEspecificacionesMateriales, ftdEspecificacionesInsumosFabricacion,
                 ftdEspecificacionesInsumosEmpaque);

    //RC20.12 - Tipos de ubicación del personal
    TTipoUbicacionPersonal      =
        (upNoAsingado, upPlantaPropia, upTallerSatelite, upBodega, upOtraUbicacion);

    //RC20.21 - Tipos de informe de producción
    TInformeOP    = (iopOP, iopLote);


Const
    cosNombreAplicacion = 'Planeación y Control de la Producción';
    cosDataBasePCP      = 'data_base_PCP';
    // Constantes de color
    //....................................................................
    cocBarra        =       $004080FF;
    cocTotal        =     $007CDAF7;              //Fondo de los totales      Antes->//$00EEEEEE;
    cocTotalText        = $00044071;       //Texto de los totales
    cocProximoVencerse   = $008AC5FF;     //Pedidos por vencerse (amarillo claro)
    cocOK       = $00A9FF8C; //Pedidos ok Verde
    cocVencido           = $007777FF;    //Pedidos vencidos (rojo claro)
    cocXP       = $00F7DFD6;
    cocRequerido    = $00FF8000;//$00044071;
    //-------------MENSAJES DE ATENCION---------------
    cocFrameAtencionText = clBlack;     //Texto mensajes de atención
    cocFrameAtencion    =  $0035FDCB; //$0066B3FF; //$00B3FFFF;   //Fondo del mensaje de atencion (Inicial gradiente)
    cocFrameAtencionTo  = $0003DCA6; // $002B95FF; //$00B3FFFF;   //Fondo del mensaje de atencion (Final gradiente)
    cocFrameAtencionBorder = clGreen; //$004080FF; //clBtnShadow;        //Borde de los mensajes de atencion



    coiContadorMinimoBarraProgreso      = 25; //Activa la barra de progreso

    cosEtapasDeProduccion : Array [1..5] of String =
        ('orden de trazo', 'orden de corte', 'orden de fabricación',
        'liquidación', 'despacho');
    //Tipos de materiales/insumos en las listas de materiales
    cosTiposBOM_SIGLAS : Array [1..4] of String =
        ('TEJ','FYE','FAB','EMP');


    //SQL Utilizados con frecuencia
    //Diseño
    cSQL_refe_variaciones = 'select cons_refe_variacion, cons_refe_tipo_variacion, '+
                            'nomb_refe_tipo_variacion '+
                            'from %s '+
                            'where cons_refe_variacion = :cons_refe_variacion';
    cSQL_referencias      = 'Select * '+
                            'from %s '+
                            'where cons_referencia = :cons_referencia';

    //PMP
    cosAnch_cuadro_pmp = 5;
    cosSQLAnd   = ' and ';
    cosNulo  = '<VACIO>';

    //Generales
    cos_se_cancelo  = '&&CANCEL&&';
    cosPropiedades      = 'Propiedades';
    cosDeseaIngresarOtroRegistro        = 'Desea ingresar otro registro?';



    cosTitulosObjetoAdicionalPCP : Array[TObjetoAdicionalPCP] of String = ('', 'Consultas', 'Formularios', 'Informes',
         'Imágenes', 'Informes en menú', 'Aplicaciones');
    coiIndexImagenesObjetoAdicionalPCP : Array[TObjetoAdicionalPCP] of Integer = (-1, 1, 3, 5, 7, 5, 10);

    //Fichas técnicas
    coiFichasTecnicasDiseno : Array[TFichasTecnicasDiseno] of Integer =
             (99, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12);
    coiTamanoVistasPrevias      = 350;  //RC20.10 TAMAÑO DE LAS VISTAS PREVIAS (IMAGENES _SMALL EN LA BASE DE DATOS)

    coiMaxDataSourcesReporteador = 10;  //Numero de DSs adicionales por reporte


// ConstantesStrings
//....................................................................
ResourceString

    cosSoftconf         = 'Softconf';
    cosEl               = 'el ';
    cosLa               = 'la ';
    cosLos              = 'los ';
    cosLas              = 'las ';
    cosValor            = 'Valor ';
    cos_and             = 'y';
    cos_or              = 'o';
    cosDosValoresParentesis     = '%s (%s)';

    //Varios
    cosNoEmpresa        = 'Seleccione la empresa.';
    CosNoFechaInicial   = 'Seleccione la fecha inicial.';
    CosNoFechaFinal     = 'Seleccione la fecha final.';
    cosEstaOpcionNoEstaDisponible = 'Esta opción aún no está disponible en PCP. Por favor contacte a Softconf Limitada para más información.';
    cosAtencion         = 'Atención';
    cosParametrizacion  = 'Parametrización';
    cosVarios           = 'Varios';
    cosUsuario          = 'Usuario';
    cosGrupo            = 'Grupo';
    cosDescripcion      = 'Descripción';
    cosObservaciones    = 'Observaciones';
    cosNoDisponible     = 'No disponible';
    cosRangoDeImpresion = 'Rango de impresión';

    //Tipos de mensaje
    cosError    = 'Error';
    cosOcurrioUnErrorMientrasSeEjecutaba = 'Ocurrió un error mientras se ejecutaba la tarea solicitada.';
    cosInformacion  = 'Información';
    cosDatosIncompletos = 'Datos incompletos';

    cosEliminarFiltros       		= 'Eliminar filtros';
    cosFiltros                          = 'Filtros de la consulta';
    cosDeseaCancelar         		= 'Desea cancelar los cambios realizados?';
    cosDeseaGuardar          		= 'Desea guardar los cambios realizados?';
    cosFaltanDatos           		= 'La información para guardar el registro no está completa.  '
                                          + 'Los siguientes campos son obligatorios:';
    cosDeseaEjecutarElProcedimiento     = 'Desea ejecutar el procedimiento?';
    cosEliminarRegistro      		= 'Desea eliminar %s? %s';
    cosAdicionando		 	= 'Adicionando %s';
    cosEditando              		= 'Editando ';
    cosConsultando           		= 'Consultando ';
    cosVentanaNoExiste       		= 'La ventana no ha sido creada.';
    cosNoExisteSQLEliminacion		= 'No existe sentencia SQL de eliminación para la ventana activa.';
    cosDeseaEliminar         		= 'Desea eliminar el registro seleccionado?';
    cosDuplicar              		= 'Duplicar';
    cosCopiar                           = 'Copiar';
    cosImportar                         = 'Importar';
    cosNuevoCodigo                      = 'Nuevo código';
    cosExisteTransaccion     		= 'Existen transacciones sin finalizar.  Desea hacer permanentes los cambios de '
    																	+ 'las transacciones pendientes?';
    cosNoHayTransaccionActiva		= 'No hay ninguna transacción activa.';
    cosDeseaEliminarTodos     		= 'Desea eliminar TODOS los registros? %s';
    cosDuplicando            		= 'Duplicando %s...';
    cosEliminando            		= 'Eliminando %s...';
    cosNA                    		= 'NA';
    cosNoAplica              		= 'No aplica';
    cosNoExistenRegistrosModificar	= 'No existen registros para modificar.';
    cosDeseaModificarMasDatos		= 'Desea modificar otros datos del registro antes de cerrar la ventana?';
    cosDebeGuardarMaestro    		= 'Debe guardar %s antes de editar los registros del detalle.';
    cosProgreso              		= 'Progreso';
    cosLlamandoTodosLosRegistros	= 'Llamando TODOS los registros de la base de datos...';
    cosVerMasInformacion                = 'Ver más información asociada a este item';
    cosProcesoFinalizadoConExito        = 'El proceso finalizó de manera exitosa.<BR><BR><B>%s</B>';

    cosInformacionDe                    = 'Información de %s';
    cosInformacionDel                   = 'Información del %s';
    cosInformacionDeLa                  = 'Información de la %s';
    cosInforme                          = 'Informe : ';
    cosDebeSeleccionarUn                = 'Debe seleccionar un %s';
    cosImprimirSeleccion                = 'Tiene algunos registros seleccionados.  Desea imprimir '+
                                        'sólamente esta selección?';
    cosCampoObligatorio                 = 'Debe dar un valor al campo %s';

    CosAnulados 			= 'Movimientos Anulados con Exito';

    //Permisos
    cosNoTienePermiso   =   'No tiene permiso para ejecutar la acción solicitada. Es posible que solamente tenga permisos de lectura. Contacte al administrador de su sistema PCP.';
    cosDatosInicioSesionIncompletos = 'Los datos de inicio de sesión no están completos.  Por favor verifíquelos e intente de nuevo.';


    //Confirmación
    cosLosDosSonCorrectos       =   'Los datos son correctos?';
    cosDeseaImprimirDocumento       =   'Desea imprimir un documento de soporte para el procedimiento realizado?';
    cosYaExisteUnaVentana   = 'La ventana que está intentando abrir ya existe en la sesión actual.  Desea abrir una nueva ventana?';

    //Errores
    cosErrorNoEsperado  = 'Este no es un error esperado en la aplicación. Por favor repórtelo a Softconf Limitada lo más pronto posible.';
    cosOcurrioElSiguienteError   = 'Ocurrió el siguiente error:';
    cosOlvidoSuContrasena   = '¿Olvidó su contraseña?';
    cosNoSePudoIniciarConexion  = 'No se pudo inicial la conexión con la base de datos.'+#13+#13+'Por favor verifique su nombre de usuario y contraseña e intente de nuevo.';
    cosErrorFuenteDatosNoValida			= 'La fuente de datos no es válida. (%s)';
    cosRangoFechasNoValido       		= 'El rango de fechas no es válido.';
    cosErrorFuenteDatosCerrada  		= 'La fuente de datos está cerrada (%s).';
    cosErrorAbriendoDataSet					= 'La información solicitada no se puede visualizar.';
    CosErrorRecurso							 		= 'No existe ningún Recurso';
    CosErrorAccesorio							 	= 'No existe ningún Accesorio';
    CosErrorPersonal						 		= 'No existe ningún Personal';
    CosErrorDatosMovimiento					= 'Ingresar la información del Movimiento';
    cosErrorDatosNoValidos      = 'Los datos no son válidos.  No se pudo completar la operación solicitada.';
    cosErrorNumeroNegativo  = 'El valor no puede ser negativo.';
    cosErrorValorXNoValido      = 'El valor "%s" no es válido para el campo %s.';
    cosErrorNombreCampoNulo = 'El nombre del campo no puede ser nulo.';
    cosErrorRangoSuperiorMenor  = 'El valor superior del rango no puede ser menor que el inferior.';


    CosSalarioEntreRangoNivel 			= 'El Salario esta por fuera del Nivel Salarial, '
																	  	+ 'se dejará el valor mínimo del Nivel Salarial';
    cos_Error_doAplicarFiltroUsuarioPCP = 'La función "doAplicarFiltroUsuarioPCP" de la librería "_func_pcp.pas" debe ser invocada con un solo campo en la consulta.';
    CosDatosAnulados 								= 'Ingrese la información de la Anulación';
    cosDebeSeleccionarLaFechaInicial    = 'Debe seleccionar la fecha inicial.';
    cosErrorOperacionNoCompletada       = 'La operación no pudo ser completada de manera exitosa.';
    cosErrorRegistroNoEcontrado         = 'El registro solicitado no fue encontrado.';


    //De seleccion
    cosSeleccionar      = 'Seleccionar';
    cosSeleccioneTemporada   				= 'Seleccione una temporada.';
    cosSeleccioneGrupoDeTallas			= 'Seleccione un grupo de tallas.';
    cosSeleccionePrototipo  = 'Seleccione un prototipo.';
    cosActualizandoDatos        		= 'Actualizando los datos de las consultas activas en la ventana...';
    cosErrorUbicandoRegistro    		= 'No se puede encontrar el registro especificado.';
    cosSeleccioneRangoFechas    		= 'Seleccione el rango de fechas';
    cosAnular                  			= 'Anular';
    cosActivar                 			= 'Activar';
    cosFormatoFecha            			= 'dd/mm/yyyy';
    cosFormatoFechaSQL         			= 'mm/dd/yyyy';
    cosFormatoHora             			= 'hh:mm:ss';
    cosFechaNil                			= '01/01/1899';
    cosHoraNil                 			= '00:00:00';
    cosFechaHoraNil            			= '01/01/1899 00:00:00';
    cosErrorInicializandoFrame  		= 'Ocurrió un error mientras se inicializaba el frame [%s].';
    cosOcurrioUnError           		= 'Ocurrió un error.';
    cosTrabajando                		= 'Trabajando...';
    cosGuardando                		= 'Guardando...';
    cosCommiting                		= 'Finalizando transacción...';
    cosRollingBack              		= 'Cancelando transacción...';
    cosDependen                 		= 'Objetos, que DEPENDEN DE %s';
    cosDependeDe                		= 'Objetos, de los que %s DEPENDE';
    cosInformacionDeLaReferencia    = 'Información de la referencia';
    cosSeleccioneReferencia     		= 'Seleccione una referencia';
    cosSeleccioneVariacion              = 'Seleccione una variación';
    cosProcesoFinalizadoPorElUsuario= 'El proceso ha sido finalizado por el usuario.';
    cosOperacionNoExiste            = 'La operación NO EXISTE';
    cosErrorEnOperacionNo           = 'El error ocurrió en la operación No.';
    cosTotal                        = 'Total';
    cosPromedio                     = 'Promedio';
    cosNoSeleccionoReferencia       = 'No seleccionó ninguna referencia.';
    cosNoSeleccionoVariacion        = 'No seleccionó ninguna variación.';
    CosMovimientosSeleccionados 		= 'No existe ningún movimiento seleccionado';
    CosErrorPersonalSeleccionado 		= 'No existe ningún Personal seleccionado';
    CosErrorRecursoSeleccionado 		= 'No existe ningún Recurso seleccionado';
    CosErrorAccesorioSeleccionado 	= 'No existe ningún Accesorio seleccionado';
    cosErrorCodigoYaExiste  = 'El código que está intentando crear ya existe.';
    cosIRA      =       'Ir a %s...';
    cosActualizar       = 'Actualizar %s';
    cosTalla    = 'Talla';
    cosTallas   = 'Tallas';
    cosColor    = 'Color';
    cosColores  = 'Colores';
    cosEntrepierna      = 'Entrepierna';
    cosEntrepiernas =  'Entrepiernas';
    cosListaDeMateriales            = 'Lista de materiales';
    cosTotalRequerido       = 'Total faltante';
    cosProporcion           = 'Proporcion';
    cosTotalTallas          = 'Total tallas';
    cosTotalLoteado          = 'Total loteado';
    cosTotalOtrosLotes  = 'Total loteado';
    cosTotalEsteLote    = 'Total este lote';
    cosLoteNo   =   'Lote No. %s';
    cosEspigaNo =   'Espiga No. %s';
    cosDiferencia          = 'Diferencia';     
    cosDeseaEliminarEtapaProduccion = 'Desea eliminar esta etapa de producción [%s]? '+
                '(esto equivale a pasar a la etapa anterior del proceso [%s]).';
    cosDeseaLanzarEtapaProduccion = 'Desea lanzar la orden de producción a la siguiente etapa [%s]?';
    cosLanzamientoEtapaProduccionOk     = 'La orden de producción [%s] se encuentra en la etapa [%s]';

    cosExistentes       = ' (existentes)';
    cosAsignados        = ' (asignados)';
    cosAsignadas        = ' (asignadas)';
    cosSeleccionarImagen        = 'Seleccione una imágen';

    //Diseño
    cosReferencias      = ' (referencias)';
    cosPrototipos       = ' (prototipos)';
    cosReferencia       = 'Referencia';
    cosPrototipo        = 'Prototipo';
    cosMaterial         = 'material';
    cosMateriales       = 'materiales';
    cosInsumos          = 'insumos';
    cosInsumo           = 'insumo';
    cosLaReferenciaNoExiste = 'La referencia de producto no existe.';
    cosVariacionReferencia      = 'Variación de la referencia';

    //Fichas técnicas
    cosInfoCatalogoImagenes     = '%s imágenes.  (Alto : %s x Ancho : %s)';
    cosNuevaImagen      = 'Nueva imágen';
    cosFrente   = 'Frente';
    cosEspalda = 'Espalda';
    cosErrorBlobFieldNotValid   = 'El campo de edición de la imágen no es válido.';
    cosErrorEDBImageNotValid = 'El contenedor de imágenes no es válido.';
    cosNReferencias     = '%s referencia(s)';
    cosNPrototipos      = '%s prototipo(s)';
    cosEstandar = 'Estándar';
    cosDetallesFichasTecnicas   = 'Detalles de la ficha técnica';
    cosImagenN = 'Imágen %s';
    cosNImagenes        = '%s imágen(es)';
    cosPredeterminarFichaTecnica        = 'Establecer la ficha técnica como predeterminada.';
    cosZona     = 'Zona';
    cosDe       = 'De';
    cosA        = 'A';
    cosDenominacion     = 'Denominación';
    cosErrorFichasNoHayPredeterminada = 'No existe una ficha técnica predeterminada para este producto. Por favor, asigne una desde el Maestro de Fichas Técnicas.';

    //Parametrizacion
    cosEmpresa      = 'Empresa';
    cosPlanta       = 'Planta';
    cosLinea        = 'Linea';
    cosSeccion      = 'Sección';


    //Personal
    cosSalarioFueraDelRango     = 'El salario está por fuera del rango del nivel salarial.';
    cosCreacionPersonal = 'Creación de personal.';
    cosPersonalNoCambiarDatosPersonalInactivo     = 'No se pueden cambiar los datos del personal inactivo.';
    cosPersonalFaltanDatosTraslados     = 'Algunos de los datos del traslado están en blanco. Desea que estos datos sean mantenidos desde la ubicación actual del empleado?';
    cosPersonalFaltanDatosTrasladosGrupal     = 'El movimiento no se puede realizar debido a que algunos datos requeridos no han sido llenados.';
    cosErrorPersonalNoHayPersonalEnBaja = 'No existe personal en baja para hacer movimientos de reingreso.';

    //Nombres comunes de los campos
    cosCodigo   = 'Código';


    //Metodos
    cosDebeSeleccionarUnProceso = 'Debe seleccionar un proceso.';
    cosDebeSeleccionarUnComponente  = 'Debe seleccionar un componente.';
    cosDebeSeleccionarUntipo_operacion = 'Debe seleccionar un tipo de operación.';
    cosCrearNuevaOperacionCST   = '<B>El código %s no existe en la base de datos de operaciones.</B><BR>Desea crear una nueva operación con este código y asignarle un tiempo cronómetro?';
    cosElTiempoNoEsValido   = 'El tiempo no es válido.';
    cosDebeActualizarMetodos = 'PCP ha detectado que tiene ventanas de edición de listados de operaciones que dependen de los elementos CST.  Es recomendable actualizar los datos.';
    cosTamanoComponente = 'Imágen del componente (%sx%s)';
    cosTiemposActividad = 'Tiempos (Act. %s)';


    cosElementoMTMNoExiste  =       'EL ELEMENTO NO EXISTE';
    cosErrorEnGestoNo       =       'El error ocurrió en el gesto No. ';
    //MTM
    cosMTMDistanciasDeDesplazamiento        = 'Distancia de desplazamiento';
    cosMTMDistanciaT                = 'Distancia T:';
    cosMTMDistanciaD                = 'Distancia D:';
    cosMTMDatosDeMoverElPie         = 'Datos de mover el pie';
    cosMTMDistanciaAMover   = 'Distancia a mover (cms):';
    cosMTMDatosDeMoverElPieConPresion   =   'Datos de mover el pie (con presión)';
    cosMTMDatosDeMoverLaPierna      = 'Datos de mover la pierna';
    cosMTMDatosDePasoLateral        = 'Datos de paso lateral';
    cosMTMDistanciaDelPaso  = 'Distancia del paso (cms):';
    cosMTMDatosDePasoLateralCompleto    = 'Datos de paso lateral (completo)';
    cosMTMDatosDeCaminarConPasos    = 'Datos de caminar (con pasos)';
    cosMTMNumeroDePasos     = 'Número de pasos:';
    cosMTMDatosDeCaminarConObstaculos       = 'Datos de caminar (con obstáculos)';
    cosMTMDatosdeCaminar    = 'Datos de caminar';
    cosMTMDistanciaRecorrida        = 'Distancia recorrida (mts):';
    cosMTMET    = 'Desplazar la vista (%s)';
    cosCSTAnotarDatosEnPlanilla = 'Anotar datos en planilla %s';
    cosCSTNumeroDePalabras  = 'Numero de palabras';
    cosCSTRevisarHojaDeControl = 'Revisar hoja de control %s';
    cosCSTREPEAT = 'RPT';
    cosCOSER = 'Coser (%s/%s/%s/%s/%s/%s/%s)';



    //De pedidos
    cosPedidosAsociados     = 'Pedidos asociados';
    cosPlaneacionTrazo      = 'Planeación de trazo';
    cosPlaneacionCorte      = 'Planeación de corte';
    cosPlaneacionFabricacion      = 'Planeación de fabricación';
    cosListaChequeoProduccion       = 'Lista de chequeo producción';
    cosOrdenDeProduccion        = 'Orden de producción';
    cosInicio   = 'Inicio';
    cosErrorNoHayNingunPedidoSeleccionado = 'No hay ningún pedido seleccionado.';
    cosErrorVinculoProyectos    = 'Ocurrió un error ejecutando el vínculo externo de pedidos.';

    //Produccion
    cosNumeroDeLote     = 'Número de lote';
    cosEscribaNumeroDeLote     = 'Escriba el número de lote';
    cosDeseaLlamarOperaciones = 'Desea llamar las operaciones desde el listado de operaciones de la referencia?.' +#13+
                '(se borrarán las operaciones actuales asignadas a la orden)';
    cosErrorEnPaqueteNo           = 'El error ocurrió el paquete No. %s';
    cosVariacionesDeLaOrden = 'Variaciones de la orden:';
    cosAnulada      = 'anulada';
    cosAnulado      = 'anulado';
    cosActiva       = 'activa';
    cosActivo       = 'activo';
    cosFinalizada   = 'finalizada';
    cosFinalizado   = 'finalizado';
    cosEnProceso    = 'en proceso';
    cosCambiarEstado = 'El estado actual es %s.  Desea cambiarlo a %s?';
    cosErrorVinculoOrdenesProduccion    = 'Ocurrió un error ejecutando el vínculo externo de ordenes de producción.';
    cosCapasSugeridas  = 'Escriba el número de capas sugerido:';
    cosCapasSugeridasNoValidas  = 'El número de capas sugerido no es válido.';
    cosCapasReemplazar    = 'Algunos items ya tienen capas sugeridas; desea reemplazarlos con el nuevo sugerido de capas?';
    cosSimularCapas = 'Desea actualizar las proporciones requeridas para el registro seleccionado?';
    cosFormatoTiqueteProduccionNoValido =   'El formato del tiquete de control de producción no es válido.';
    cosYaExistenTiquetesImpresos = 'Existe(n) %d impresion(es) previa(s) de tiquetes de este lote para el proceso %s.' +
            ' La última impresión la realizó %s el día %s.  Desea continuar?';
    cosGenerandoTiquetes    = 'Generando información de los tiquetes...';
    cosErrorCodigoBarrasDemasiadosDigitos = 'El codigo de barras asociado contiene demasiados dígitos.  Este es un error de protección. Por favor informe a Softconf Limitada.';
    cosPaq  = 'Paq: ';
    cosTiqueteDe = 'Tiq: %s de %s';
    cosLote = 'Lote';
    cosPaquete = 'Paquete';
    cosUnidades = 'Unidades';
    cosSeleccioneCodigoAbonado  = 'Debe seleccionar un código abonado.';
    cosFormatoPersonalizado     = 'Formato personalizado';
    cosTodosLosLotes    = 'Todos los lotes';
    cosProduccionAutoGenerar = 'Puede dejar este campo en blanco para que el sistema asgine un número.';
    cosDebeSeleccionarUnLote    = 'Debe seleccionar un lote de producción.';
    cosDebeSeleccionarUnTipoDeDistribucion      = 'Debe seleccionar un tipo de distribución de paquetes.';
    cosAnexarPaquetes   = 'Anexar paquetes';
    cosCantidadMinimaPaquetAnexar = 'Anexar los paquetes con menos de X unidades:';

    //Calidad
    cosDeseaImprimirTiqueteDefecto = 'Desea imprimir el tiquete?';

    //Balanceos
    cosCurvaEficiencias = 'Curva de eficiencias';
    cosPuestosPorDiaRequerido = 'Puestos por día (requerido)';
    cosPuestosPorDiaCapacidad = 'Puestos por día (capacidad)';
    cosProduccionDia    = 'Produccion día';
    cosOperariosReales              = 'Operarios(as) reales';
    cosEscribaNombreGrupo   = 'Escriba el nombre del grupo:';
    cosNoSePudoCrearElGrupo = 'No se pudo crear el grupo solicitado.  Las operaciones agrupadas no tienen tiempo.';
    cosNivel    = 'Nivel';
    cosEscribaNivel = 'Escriba el nivel del grupo:';
    cosDia  = 'Día';
    cosNoSePudoCrearMaestroProduccion   = 'No se pudo crear el registro maestro de programación de producción.';
    cosDeseaLlamarOperacionesOrden  = 'Desea llamar las operaciones definidas para el lote de producción? (los porcentajes de eficiencia y los grupos de operaciones se perderán)';
    cosLoteYaProgramado = 'Este lote de producción ya se encuentra asignado en el plan maestro de producción.';




    cosCerrandoTodasLasVentanas = 'Cerrando las ventanas activas de la sesión...';
    cosNoPuedeCerrarVentanasAbiertas    = 'Cierre todas las ventanas activas antes de finalizar la sesión.';
    cosDeseaCerrarSesion    = 'Desea cerrar la sesión actual?';
    cosDebeAsignarContrasena    =   'Debe asignar una contraseña.';
    cosContrasenaNoCoincide = 'La contraseña no coincide. Por favor verifíquela e intente de nuevo.';
    cosCarpeta  = 'Carpeta';
    cosEscribaNombreCarpeta = 'Escriba el nombre de la carpeta:';
    cosCarpetaNoSePuedeEliminar = 'Esta carpeta es del sistema y no se puede eliminar.';
    cosDebeCrearCarpeta = 'No se puede crear el acceso directo.  Debe crear por lo menos una carpeta de accesos.';
    cosAccesoDirecto = 'acceso directo';

    //Incentivos y formas de pago
    cosIncentivoHorasProducidas     = 'Incentivo horas producidas';
    cosErrorEnEficienciasElSistemaAjsutara  = 'La eficiencia final es menor que la inicial. El sistema la ajustará automáticamente.';
    cosSemana = 'Semana';
    cosDebeSeleccionarFormaDePago   = 'Debe seleccionar una de las formas de pago.';
    cosDebeSeleccionarUnCodigoAsociadoFormaPago = 'Debe seleccionar un código asociado a la forma de pago.';
    cosFormaPagoAsignadaDeseaOtroRegistro   = 'El cambio fue realizado con éxito.  Desea asignar la forma de pago a otro operario?';
    cosHTMLInfoCalculado    = '<IMG src="info"> Calculado';


    cosAccesoSoloLectura = 'Solo lectura';
    cosAccesoTotal      = 'Acceso total';
    cosContrasenaIncorrecta = 'La contraseña no es correcta.  Por favor, intente de nuevo.';
    cosContrasenaActualizada = 'Su contraseña ha sido cambiada de manera exitosa.';

    //Errores de parametrización del sistema
    cosErrorPara_Sist_codi_ubic_tipo = 'Imposible cargar el tipo de ubicación PLANTA PROPIA (PP). Tabla del sistema SIS_UBIC_TIPOS.';

    //Editor de reportes
    cosGuardarComo                      = 'Guardar como';
    cosTexto                            = 'Texto : ';
    cosCampo                            = 'Campo : ';
    cosExpresion                        = 'Expresión : ';
    cosNoSeEncontroReporte              = 'El reporte "%s" no fue encontrato en la base de datos.';
    cosSinTitulo                        = 'Sin título';
    cosDisenandoReporte                 = 'Diseñando reporte - %s';
    cosNombreReporteNoValido            = 'El nombre dado al reporte no es válido.';
    cosErrorNombreReporteIgual          = 'El nombre del reporte no puede ser igual al existente.';
    cosEscribaElNombreDelInforme        = 'Nombre del reporte';
    cosNoFuePosibleEncontrarElReporte   = 'No fue posible encontrar el reporte solicitado. (Código : %s).';
    cosErroBandaReporteNoValida         = 'La banda del reporte no es válida.';
    cosErrorReporteNoAsignado           = 'No existe un reporte asignado a la función.';
    cosErrorCampoNoAsignado             = 'El campo asignado al reporte no es válido.';
    cosErrorReporteNoTieneDataSet       = 'El reporte no tiene una fuente de datos asociada.';
    cosErrorComponenteNoTieneDataSet    = 'El componente no tiene una fuente de datos asociada.';
    cosErrorComponenteNoValido          = 'El componente no es válido.';
    cosConsultaReporteador              = 'Maestro del reporte';
    cosDataSourcesMayorAlMaximo         = 'El número de fuentes de datos sobrepasa el máximo permitido.';


    //DataAware
    cosConexionExitosa = 'La consulta se ejecutó de manera exitosa.';
    cosConexionError = 'Ocurrió un error al intentar ejecutar la consulta:';


    //Edición RUNTIME de objetos
    cosEscribaAquiElNombre = 'Escriba aquí el nombre';
    cosDeseaReemplazarObjeto = 'El objeto %s ya existe. Desea reemplazarlo?';
    cosDisenando        = 'Diseñando : ';
    cosSinNombre = 'Sin nombre';


    //Herramientas
    cosAccionCatalogoDeImagenes = '%s imágen del catálogo %s';


    //Control de novedades diarias
    cosTiqueteDeCorteEnCostura  = 'El tiquete que está intentando digitar pertenece a CORTE.';
    cosErrorHorasExtrasDiariasSemanalesExcluyentes  = 'Sólamente puede seleccionar uno de los factores para las Horas Laboradas Normales (Diarias o Semanales).';
    cosErrorHorasExtrasDiariasSemanalesAlguna   = 'Seleccione uno de los factores para las Horas Laboradas Normales (Diarias o Semanales).';
    cosMinutosTrabajados                        = 'Min. trabajados';
    cosNoEstandar                               = 'no estándar';
    cosGraficaEficiencia                        = 'Gráfica eficiencia';

    //Control de producción
    cosTiqueteNoHaSidoReportado = 'El tiquete no ha sido reportado.';

    //Datasets para el reporteador
    cosPersonal = 'Personal';
    cosCodigos  = 'Códigos';
    cosNombres  = 'Nombres';


implementation


end.


