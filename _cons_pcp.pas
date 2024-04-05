{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeaci�n y Control de la Producci�n                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo est� protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducci�n no autorizada, la ingenier�a inversa y la   }
{       distribuci�n total o parcial del c�digo contenido en este   }
{       archivo est� estrictamente prohibido y podr� tener severas  }
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
        Versi�n         : pcp4000
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

      //Constantes string en programaci�n y BD (no importa su traducci�n)
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

    //RC20.9 - Tipos de fichas t�cnicas de dise�o
    TFichasTecnicasDiseno =
                (ftdSinAsignar, ftdHojaDisenoCaratula, ftdHojaDiseno, ftdEspecificacionesGeneralesDiseno,
                 ftdEspecificacionesDisenoDetalles, ftdEspecificacionesEmpaque,
                 ftdEspecificacionesConstruccion, ftdMedidasEspecialesDetalles,
                 ftdMedidasPrendaTerminada, ftdEspecificacionesPresentacion,
                 ftdEspecificacionesMateriales, ftdEspecificacionesInsumosFabricacion,
                 ftdEspecificacionesInsumosEmpaque);

    //RC20.12 - Tipos de ubicaci�n del personal
    TTipoUbicacionPersonal      =
        (upNoAsingado, upPlantaPropia, upTallerSatelite, upBodega, upOtraUbicacion);

    //RC20.21 - Tipos de informe de producci�n
    TInformeOP    = (iopOP, iopLote);


Const
    cosNombreAplicacion = 'Planeaci�n y Control de la Producci�n';
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
    cocFrameAtencionText = clBlack;     //Texto mensajes de atenci�n
    cocFrameAtencion    =  $0035FDCB; //$0066B3FF; //$00B3FFFF;   //Fondo del mensaje de atencion (Inicial gradiente)
    cocFrameAtencionTo  = $0003DCA6; // $002B95FF; //$00B3FFFF;   //Fondo del mensaje de atencion (Final gradiente)
    cocFrameAtencionBorder = clGreen; //$004080FF; //clBtnShadow;        //Borde de los mensajes de atencion



    coiContadorMinimoBarraProgreso      = 25; //Activa la barra de progreso

    cosEtapasDeProduccion : Array [1..5] of String =
        ('orden de trazo', 'orden de corte', 'orden de fabricaci�n',
        'liquidaci�n', 'despacho');
    //Tipos de materiales/insumos en las listas de materiales
    cosTiposBOM_SIGLAS : Array [1..4] of String =
        ('TEJ','FYE','FAB','EMP');


    //SQL Utilizados con frecuencia
    //Dise�o
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
         'Im�genes', 'Informes en men�', 'Aplicaciones');
    coiIndexImagenesObjetoAdicionalPCP : Array[TObjetoAdicionalPCP] of Integer = (-1, 1, 3, 5, 7, 5, 10);

    //Fichas t�cnicas
    coiFichasTecnicasDiseno : Array[TFichasTecnicasDiseno] of Integer =
             (99, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12);
    coiTamanoVistasPrevias      = 350;  //RC20.10 TAMA�O DE LAS VISTAS PREVIAS (IMAGENES _SMALL EN LA BASE DE DATOS)

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
    cosEstaOpcionNoEstaDisponible = 'Esta opci�n a�n no est� disponible en PCP. Por favor contacte a Softconf Limitada para m�s informaci�n.';
    cosAtencion         = 'Atenci�n';
    cosParametrizacion  = 'Parametrizaci�n';
    cosVarios           = 'Varios';
    cosUsuario          = 'Usuario';
    cosGrupo            = 'Grupo';
    cosDescripcion      = 'Descripci�n';
    cosObservaciones    = 'Observaciones';
    cosNoDisponible     = 'No disponible';
    cosRangoDeImpresion = 'Rango de impresi�n';

    //Tipos de mensaje
    cosError    = 'Error';
    cosOcurrioUnErrorMientrasSeEjecutaba = 'Ocurri� un error mientras se ejecutaba la tarea solicitada.';
    cosInformacion  = 'Informaci�n';
    cosDatosIncompletos = 'Datos incompletos';

    cosEliminarFiltros       		= 'Eliminar filtros';
    cosFiltros                          = 'Filtros de la consulta';
    cosDeseaCancelar         		= 'Desea cancelar los cambios realizados?';
    cosDeseaGuardar          		= 'Desea guardar los cambios realizados?';
    cosFaltanDatos           		= 'La informaci�n para guardar el registro no est� completa.  '
                                          + 'Los siguientes campos son obligatorios:';
    cosDeseaEjecutarElProcedimiento     = 'Desea ejecutar el procedimiento?';
    cosEliminarRegistro      		= 'Desea eliminar %s? %s';
    cosAdicionando		 	= 'Adicionando %s';
    cosEditando              		= 'Editando ';
    cosConsultando           		= 'Consultando ';
    cosVentanaNoExiste       		= 'La ventana no ha sido creada.';
    cosNoExisteSQLEliminacion		= 'No existe sentencia SQL de eliminaci�n para la ventana activa.';
    cosDeseaEliminar         		= 'Desea eliminar el registro seleccionado?';
    cosDuplicar              		= 'Duplicar';
    cosCopiar                           = 'Copiar';
    cosImportar                         = 'Importar';
    cosNuevoCodigo                      = 'Nuevo c�digo';
    cosExisteTransaccion     		= 'Existen transacciones sin finalizar.  Desea hacer permanentes los cambios de '
    																	+ 'las transacciones pendientes?';
    cosNoHayTransaccionActiva		= 'No hay ninguna transacci�n activa.';
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
    cosVerMasInformacion                = 'Ver m�s informaci�n asociada a este item';
    cosProcesoFinalizadoConExito        = 'El proceso finaliz� de manera exitosa.<BR><BR><B>%s</B>';

    cosInformacionDe                    = 'Informaci�n de %s';
    cosInformacionDel                   = 'Informaci�n del %s';
    cosInformacionDeLa                  = 'Informaci�n de la %s';
    cosInforme                          = 'Informe : ';
    cosDebeSeleccionarUn                = 'Debe seleccionar un %s';
    cosImprimirSeleccion                = 'Tiene algunos registros seleccionados.  Desea imprimir '+
                                        's�lamente esta selecci�n?';
    cosCampoObligatorio                 = 'Debe dar un valor al campo %s';

    CosAnulados 			= 'Movimientos Anulados con Exito';

    //Permisos
    cosNoTienePermiso   =   'No tiene permiso para ejecutar la acci�n solicitada. Es posible que solamente tenga permisos de lectura. Contacte al administrador de su sistema PCP.';
    cosDatosInicioSesionIncompletos = 'Los datos de inicio de sesi�n no est�n completos.  Por favor verif�quelos e intente de nuevo.';


    //Confirmaci�n
    cosLosDosSonCorrectos       =   'Los datos son correctos?';
    cosDeseaImprimirDocumento       =   'Desea imprimir un documento de soporte para el procedimiento realizado?';
    cosYaExisteUnaVentana   = 'La ventana que est� intentando abrir ya existe en la sesi�n actual.  Desea abrir una nueva ventana?';

    //Errores
    cosErrorNoEsperado  = 'Este no es un error esperado en la aplicaci�n. Por favor rep�rtelo a Softconf Limitada lo m�s pronto posible.';
    cosOcurrioElSiguienteError   = 'Ocurri� el siguiente error:';
    cosOlvidoSuContrasena   = '�Olvid� su contrase�a?';
    cosNoSePudoIniciarConexion  = 'No se pudo inicial la conexi�n con la base de datos.'+#13+#13+'Por favor verifique su nombre de usuario y contrase�a e intente de nuevo.';
    cosErrorFuenteDatosNoValida			= 'La fuente de datos no es v�lida. (%s)';
    cosRangoFechasNoValido       		= 'El rango de fechas no es v�lido.';
    cosErrorFuenteDatosCerrada  		= 'La fuente de datos est� cerrada (%s).';
    cosErrorAbriendoDataSet					= 'La informaci�n solicitada no se puede visualizar.';
    CosErrorRecurso							 		= 'No existe ning�n Recurso';
    CosErrorAccesorio							 	= 'No existe ning�n Accesorio';
    CosErrorPersonal						 		= 'No existe ning�n Personal';
    CosErrorDatosMovimiento					= 'Ingresar la informaci�n del Movimiento';
    cosErrorDatosNoValidos      = 'Los datos no son v�lidos.  No se pudo completar la operaci�n solicitada.';
    cosErrorNumeroNegativo  = 'El valor no puede ser negativo.';
    cosErrorValorXNoValido      = 'El valor "%s" no es v�lido para el campo %s.';
    cosErrorNombreCampoNulo = 'El nombre del campo no puede ser nulo.';
    cosErrorRangoSuperiorMenor  = 'El valor superior del rango no puede ser menor que el inferior.';


    CosSalarioEntreRangoNivel 			= 'El Salario esta por fuera del Nivel Salarial, '
																	  	+ 'se dejar� el valor m�nimo del Nivel Salarial';
    cos_Error_doAplicarFiltroUsuarioPCP = 'La funci�n "doAplicarFiltroUsuarioPCP" de la librer�a "_func_pcp.pas" debe ser invocada con un solo campo en la consulta.';
    CosDatosAnulados 								= 'Ingrese la informaci�n de la Anulaci�n';
    cosDebeSeleccionarLaFechaInicial    = 'Debe seleccionar la fecha inicial.';
    cosErrorOperacionNoCompletada       = 'La operaci�n no pudo ser completada de manera exitosa.';
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
    cosErrorInicializandoFrame  		= 'Ocurri� un error mientras se inicializaba el frame [%s].';
    cosOcurrioUnError           		= 'Ocurri� un error.';
    cosTrabajando                		= 'Trabajando...';
    cosGuardando                		= 'Guardando...';
    cosCommiting                		= 'Finalizando transacci�n...';
    cosRollingBack              		= 'Cancelando transacci�n...';
    cosDependen                 		= 'Objetos, que DEPENDEN DE %s';
    cosDependeDe                		= 'Objetos, de los que %s DEPENDE';
    cosInformacionDeLaReferencia    = 'Informaci�n de la referencia';
    cosSeleccioneReferencia     		= 'Seleccione una referencia';
    cosSeleccioneVariacion              = 'Seleccione una variaci�n';
    cosProcesoFinalizadoPorElUsuario= 'El proceso ha sido finalizado por el usuario.';
    cosOperacionNoExiste            = 'La operaci�n NO EXISTE';
    cosErrorEnOperacionNo           = 'El error ocurri� en la operaci�n No.';
    cosTotal                        = 'Total';
    cosPromedio                     = 'Promedio';
    cosNoSeleccionoReferencia       = 'No seleccion� ninguna referencia.';
    cosNoSeleccionoVariacion        = 'No seleccion� ninguna variaci�n.';
    CosMovimientosSeleccionados 		= 'No existe ning�n movimiento seleccionado';
    CosErrorPersonalSeleccionado 		= 'No existe ning�n Personal seleccionado';
    CosErrorRecursoSeleccionado 		= 'No existe ning�n Recurso seleccionado';
    CosErrorAccesorioSeleccionado 	= 'No existe ning�n Accesorio seleccionado';
    cosErrorCodigoYaExiste  = 'El c�digo que est� intentando crear ya existe.';
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
    cosDeseaEliminarEtapaProduccion = 'Desea eliminar esta etapa de producci�n [%s]? '+
                '(esto equivale a pasar a la etapa anterior del proceso [%s]).';
    cosDeseaLanzarEtapaProduccion = 'Desea lanzar la orden de producci�n a la siguiente etapa [%s]?';
    cosLanzamientoEtapaProduccionOk     = 'La orden de producci�n [%s] se encuentra en la etapa [%s]';

    cosExistentes       = ' (existentes)';
    cosAsignados        = ' (asignados)';
    cosAsignadas        = ' (asignadas)';
    cosSeleccionarImagen        = 'Seleccione una im�gen';

    //Dise�o
    cosReferencias      = ' (referencias)';
    cosPrototipos       = ' (prototipos)';
    cosReferencia       = 'Referencia';
    cosPrototipo        = 'Prototipo';
    cosMaterial         = 'material';
    cosMateriales       = 'materiales';
    cosInsumos          = 'insumos';
    cosInsumo           = 'insumo';
    cosLaReferenciaNoExiste = 'La referencia de producto no existe.';
    cosVariacionReferencia      = 'Variaci�n de la referencia';

    //Fichas t�cnicas
    cosInfoCatalogoImagenes     = '%s im�genes.  (Alto : %s x Ancho : %s)';
    cosNuevaImagen      = 'Nueva im�gen';
    cosFrente   = 'Frente';
    cosEspalda = 'Espalda';
    cosErrorBlobFieldNotValid   = 'El campo de edici�n de la im�gen no es v�lido.';
    cosErrorEDBImageNotValid = 'El contenedor de im�genes no es v�lido.';
    cosNReferencias     = '%s referencia(s)';
    cosNPrototipos      = '%s prototipo(s)';
    cosEstandar = 'Est�ndar';
    cosDetallesFichasTecnicas   = 'Detalles de la ficha t�cnica';
    cosImagenN = 'Im�gen %s';
    cosNImagenes        = '%s im�gen(es)';
    cosPredeterminarFichaTecnica        = 'Establecer la ficha t�cnica como predeterminada.';
    cosZona     = 'Zona';
    cosDe       = 'De';
    cosA        = 'A';
    cosDenominacion     = 'Denominaci�n';
    cosErrorFichasNoHayPredeterminada = 'No existe una ficha t�cnica predeterminada para este producto. Por favor, asigne una desde el Maestro de Fichas T�cnicas.';

    //Parametrizacion
    cosEmpresa      = 'Empresa';
    cosPlanta       = 'Planta';
    cosLinea        = 'Linea';
    cosSeccion      = 'Secci�n';


    //Personal
    cosSalarioFueraDelRango     = 'El salario est� por fuera del rango del nivel salarial.';
    cosCreacionPersonal = 'Creaci�n de personal.';
    cosPersonalNoCambiarDatosPersonalInactivo     = 'No se pueden cambiar los datos del personal inactivo.';
    cosPersonalFaltanDatosTraslados     = 'Algunos de los datos del traslado est�n en blanco. Desea que estos datos sean mantenidos desde la ubicaci�n actual del empleado?';
    cosPersonalFaltanDatosTrasladosGrupal     = 'El movimiento no se puede realizar debido a que algunos datos requeridos no han sido llenados.';
    cosErrorPersonalNoHayPersonalEnBaja = 'No existe personal en baja para hacer movimientos de reingreso.';

    //Nombres comunes de los campos
    cosCodigo   = 'C�digo';


    //Metodos
    cosDebeSeleccionarUnProceso = 'Debe seleccionar un proceso.';
    cosDebeSeleccionarUnComponente  = 'Debe seleccionar un componente.';
    cosDebeSeleccionarUntipo_operacion = 'Debe seleccionar un tipo de operaci�n.';
    cosCrearNuevaOperacionCST   = '<B>El c�digo %s no existe en la base de datos de operaciones.</B><BR>Desea crear una nueva operaci�n con este c�digo y asignarle un tiempo cron�metro?';
    cosElTiempoNoEsValido   = 'El tiempo no es v�lido.';
    cosDebeActualizarMetodos = 'PCP ha detectado que tiene ventanas de edici�n de listados de operaciones que dependen de los elementos CST.  Es recomendable actualizar los datos.';
    cosTamanoComponente = 'Im�gen del componente (%sx%s)';
    cosTiemposActividad = 'Tiempos (Act. %s)';


    cosElementoMTMNoExiste  =       'EL ELEMENTO NO EXISTE';
    cosErrorEnGestoNo       =       'El error ocurri� en el gesto No. ';
    //MTM
    cosMTMDistanciasDeDesplazamiento        = 'Distancia de desplazamiento';
    cosMTMDistanciaT                = 'Distancia T:';
    cosMTMDistanciaD                = 'Distancia D:';
    cosMTMDatosDeMoverElPie         = 'Datos de mover el pie';
    cosMTMDistanciaAMover   = 'Distancia a mover (cms):';
    cosMTMDatosDeMoverElPieConPresion   =   'Datos de mover el pie (con presi�n)';
    cosMTMDatosDeMoverLaPierna      = 'Datos de mover la pierna';
    cosMTMDatosDePasoLateral        = 'Datos de paso lateral';
    cosMTMDistanciaDelPaso  = 'Distancia del paso (cms):';
    cosMTMDatosDePasoLateralCompleto    = 'Datos de paso lateral (completo)';
    cosMTMDatosDeCaminarConPasos    = 'Datos de caminar (con pasos)';
    cosMTMNumeroDePasos     = 'N�mero de pasos:';
    cosMTMDatosDeCaminarConObstaculos       = 'Datos de caminar (con obst�culos)';
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
    cosPlaneacionTrazo      = 'Planeaci�n de trazo';
    cosPlaneacionCorte      = 'Planeaci�n de corte';
    cosPlaneacionFabricacion      = 'Planeaci�n de fabricaci�n';
    cosListaChequeoProduccion       = 'Lista de chequeo producci�n';
    cosOrdenDeProduccion        = 'Orden de producci�n';
    cosInicio   = 'Inicio';
    cosErrorNoHayNingunPedidoSeleccionado = 'No hay ning�n pedido seleccionado.';
    cosErrorVinculoProyectos    = 'Ocurri� un error ejecutando el v�nculo externo de pedidos.';

    //Produccion
    cosNumeroDeLote     = 'N�mero de lote';
    cosEscribaNumeroDeLote     = 'Escriba el n�mero de lote';
    cosDeseaLlamarOperaciones = 'Desea llamar las operaciones desde el listado de operaciones de la referencia?.' +#13+
                '(se borrar�n las operaciones actuales asignadas a la orden)';
    cosErrorEnPaqueteNo           = 'El error ocurri� el paquete No. %s';
    cosVariacionesDeLaOrden = 'Variaciones de la orden:';
    cosAnulada      = 'anulada';
    cosAnulado      = 'anulado';
    cosActiva       = 'activa';
    cosActivo       = 'activo';
    cosFinalizada   = 'finalizada';
    cosFinalizado   = 'finalizado';
    cosEnProceso    = 'en proceso';
    cosCambiarEstado = 'El estado actual es %s.  Desea cambiarlo a %s?';
    cosErrorVinculoOrdenesProduccion    = 'Ocurri� un error ejecutando el v�nculo externo de ordenes de producci�n.';
    cosCapasSugeridas  = 'Escriba el n�mero de capas sugerido:';
    cosCapasSugeridasNoValidas  = 'El n�mero de capas sugerido no es v�lido.';
    cosCapasReemplazar    = 'Algunos items ya tienen capas sugeridas; desea reemplazarlos con el nuevo sugerido de capas?';
    cosSimularCapas = 'Desea actualizar las proporciones requeridas para el registro seleccionado?';
    cosFormatoTiqueteProduccionNoValido =   'El formato del tiquete de control de producci�n no es v�lido.';
    cosYaExistenTiquetesImpresos = 'Existe(n) %d impresion(es) previa(s) de tiquetes de este lote para el proceso %s.' +
            ' La �ltima impresi�n la realiz� %s el d�a %s.  Desea continuar?';
    cosGenerandoTiquetes    = 'Generando informaci�n de los tiquetes...';
    cosErrorCodigoBarrasDemasiadosDigitos = 'El codigo de barras asociado contiene demasiados d�gitos.  Este es un error de protecci�n. Por favor informe a Softconf Limitada.';
    cosPaq  = 'Paq: ';
    cosTiqueteDe = 'Tiq: %s de %s';
    cosLote = 'Lote';
    cosPaquete = 'Paquete';
    cosUnidades = 'Unidades';
    cosSeleccioneCodigoAbonado  = 'Debe seleccionar un c�digo abonado.';
    cosFormatoPersonalizado     = 'Formato personalizado';
    cosTodosLosLotes    = 'Todos los lotes';
    cosProduccionAutoGenerar = 'Puede dejar este campo en blanco para que el sistema asgine un n�mero.';
    cosDebeSeleccionarUnLote    = 'Debe seleccionar un lote de producci�n.';
    cosDebeSeleccionarUnTipoDeDistribucion      = 'Debe seleccionar un tipo de distribuci�n de paquetes.';
    cosAnexarPaquetes   = 'Anexar paquetes';
    cosCantidadMinimaPaquetAnexar = 'Anexar los paquetes con menos de X unidades:';

    //Calidad
    cosDeseaImprimirTiqueteDefecto = 'Desea imprimir el tiquete?';

    //Balanceos
    cosCurvaEficiencias = 'Curva de eficiencias';
    cosPuestosPorDiaRequerido = 'Puestos por d�a (requerido)';
    cosPuestosPorDiaCapacidad = 'Puestos por d�a (capacidad)';
    cosProduccionDia    = 'Produccion d�a';
    cosOperariosReales              = 'Operarios(as) reales';
    cosEscribaNombreGrupo   = 'Escriba el nombre del grupo:';
    cosNoSePudoCrearElGrupo = 'No se pudo crear el grupo solicitado.  Las operaciones agrupadas no tienen tiempo.';
    cosNivel    = 'Nivel';
    cosEscribaNivel = 'Escriba el nivel del grupo:';
    cosDia  = 'D�a';
    cosNoSePudoCrearMaestroProduccion   = 'No se pudo crear el registro maestro de programaci�n de producci�n.';
    cosDeseaLlamarOperacionesOrden  = 'Desea llamar las operaciones definidas para el lote de producci�n? (los porcentajes de eficiencia y los grupos de operaciones se perder�n)';
    cosLoteYaProgramado = 'Este lote de producci�n ya se encuentra asignado en el plan maestro de producci�n.';




    cosCerrandoTodasLasVentanas = 'Cerrando las ventanas activas de la sesi�n...';
    cosNoPuedeCerrarVentanasAbiertas    = 'Cierre todas las ventanas activas antes de finalizar la sesi�n.';
    cosDeseaCerrarSesion    = 'Desea cerrar la sesi�n actual?';
    cosDebeAsignarContrasena    =   'Debe asignar una contrase�a.';
    cosContrasenaNoCoincide = 'La contrase�a no coincide. Por favor verif�quela e intente de nuevo.';
    cosCarpeta  = 'Carpeta';
    cosEscribaNombreCarpeta = 'Escriba el nombre de la carpeta:';
    cosCarpetaNoSePuedeEliminar = 'Esta carpeta es del sistema y no se puede eliminar.';
    cosDebeCrearCarpeta = 'No se puede crear el acceso directo.  Debe crear por lo menos una carpeta de accesos.';
    cosAccesoDirecto = 'acceso directo';

    //Incentivos y formas de pago
    cosIncentivoHorasProducidas     = 'Incentivo horas producidas';
    cosErrorEnEficienciasElSistemaAjsutara  = 'La eficiencia final es menor que la inicial. El sistema la ajustar� autom�ticamente.';
    cosSemana = 'Semana';
    cosDebeSeleccionarFormaDePago   = 'Debe seleccionar una de las formas de pago.';
    cosDebeSeleccionarUnCodigoAsociadoFormaPago = 'Debe seleccionar un c�digo asociado a la forma de pago.';
    cosFormaPagoAsignadaDeseaOtroRegistro   = 'El cambio fue realizado con �xito.  Desea asignar la forma de pago a otro operario?';
    cosHTMLInfoCalculado    = '<IMG src="info"> Calculado';


    cosAccesoSoloLectura = 'Solo lectura';
    cosAccesoTotal      = 'Acceso total';
    cosContrasenaIncorrecta = 'La contrase�a no es correcta.  Por favor, intente de nuevo.';
    cosContrasenaActualizada = 'Su contrase�a ha sido cambiada de manera exitosa.';

    //Errores de parametrizaci�n del sistema
    cosErrorPara_Sist_codi_ubic_tipo = 'Imposible cargar el tipo de ubicaci�n PLANTA PROPIA (PP). Tabla del sistema SIS_UBIC_TIPOS.';

    //Editor de reportes
    cosGuardarComo                      = 'Guardar como';
    cosTexto                            = 'Texto : ';
    cosCampo                            = 'Campo : ';
    cosExpresion                        = 'Expresi�n : ';
    cosNoSeEncontroReporte              = 'El reporte "%s" no fue encontrato en la base de datos.';
    cosSinTitulo                        = 'Sin t�tulo';
    cosDisenandoReporte                 = 'Dise�ando reporte - %s';
    cosNombreReporteNoValido            = 'El nombre dado al reporte no es v�lido.';
    cosErrorNombreReporteIgual          = 'El nombre del reporte no puede ser igual al existente.';
    cosEscribaElNombreDelInforme        = 'Nombre del reporte';
    cosNoFuePosibleEncontrarElReporte   = 'No fue posible encontrar el reporte solicitado. (C�digo : %s).';
    cosErroBandaReporteNoValida         = 'La banda del reporte no es v�lida.';
    cosErrorReporteNoAsignado           = 'No existe un reporte asignado a la funci�n.';
    cosErrorCampoNoAsignado             = 'El campo asignado al reporte no es v�lido.';
    cosErrorReporteNoTieneDataSet       = 'El reporte no tiene una fuente de datos asociada.';
    cosErrorComponenteNoTieneDataSet    = 'El componente no tiene una fuente de datos asociada.';
    cosErrorComponenteNoValido          = 'El componente no es v�lido.';
    cosConsultaReporteador              = 'Maestro del reporte';
    cosDataSourcesMayorAlMaximo         = 'El n�mero de fuentes de datos sobrepasa el m�ximo permitido.';


    //DataAware
    cosConexionExitosa = 'La consulta se ejecut� de manera exitosa.';
    cosConexionError = 'Ocurri� un error al intentar ejecutar la consulta:';


    //Edici�n RUNTIME de objetos
    cosEscribaAquiElNombre = 'Escriba aqu� el nombre';
    cosDeseaReemplazarObjeto = 'El objeto %s ya existe. Desea reemplazarlo?';
    cosDisenando        = 'Dise�ando : ';
    cosSinNombre = 'Sin nombre';


    //Herramientas
    cosAccionCatalogoDeImagenes = '%s im�gen del cat�logo %s';


    //Control de novedades diarias
    cosTiqueteDeCorteEnCostura  = 'El tiquete que est� intentando digitar pertenece a CORTE.';
    cosErrorHorasExtrasDiariasSemanalesExcluyentes  = 'S�lamente puede seleccionar uno de los factores para las Horas Laboradas Normales (Diarias o Semanales).';
    cosErrorHorasExtrasDiariasSemanalesAlguna   = 'Seleccione uno de los factores para las Horas Laboradas Normales (Diarias o Semanales).';
    cosMinutosTrabajados                        = 'Min. trabajados';
    cosNoEstandar                               = 'no est�ndar';
    cosGraficaEficiencia                        = 'Gr�fica eficiencia';

    //Control de producci�n
    cosTiqueteNoHaSidoReportado = 'El tiquete no ha sido reportado.';

    //Datasets para el reporteador
    cosPersonal = 'Personal';
    cosCodigos  = 'C�digos';
    cosNombres  = 'Nombres';


implementation


end.


