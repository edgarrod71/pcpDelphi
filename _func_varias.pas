{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeación y Control de la Producción                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998 2004                 }
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
        Unit            : func_varias
        Objetivo        : Libreria de funciones de uso general
                          para cualquier aplicación de Softconf
                          Limitada
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero 06 de 2004
        Versión         : pcp4000
*******************************************************************}
{$I DEFINICIONES.INC}

unit _func_varias;

interface

Uses Forms, Graphics, Windows, dxDBGrid, dxTL, dxDBTL, dxDBCtrl, Classes,TBX,
  dxEdLib, Dialogs, sysUtils, MensajesSCL, Menus, comCtrls, dbTables, controls,
  db, Grids, BaseGrid, AdvGrid, AdvCGrid, AsgFindDialog, SCLColumnGrid, TypInfo,
  PCPLookUpComboEdit, dfsSplitter, extCtrls, dxcntner, mxGrid, _func_graficas,
  {jvCSVData,} SCLDbGrid, {dbChart,} dxPageControl, dxDBELib, SCLTabs;

{****************************************************************
Objetivo        : Declaración de constantes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 06 de 2004
Versión         : pcp4000
*****************************************************************}

ResourceString
    // Strings Exportación archivos
    //....................................................................
    cosProcesoConExito      =       'El proceso ha finalizado con éxito';
    cosSeleccioneArchivoDestino=    'Seleccione el archivo de destino';
    cosTodosLosArchivos     =       'Todos los archivos|*.*|';
    cosExportarAExcel       =       'Exportar a Excel';
    cosArchivosDeExcel      =       'Archivos de Excel|*.xls|';
    cosExportandoAExcel     =       'Exportando a Excel';
    cosExportarATexto       =       'Exportar a Texto';
    cosArchivosDeTexto      =       'Archivos de Texto|*.txt|';
    cosExportandoaTexto     =       'Exportando a Texto';
    cosExportarAHTML        =       'Exportar a HTML';
    cosArchivosDeHTML       =       'Archivos de Internet|*.html|';
    cosExportandoAHTML      =       'Exportando a HTML';

    // Constantes de errores
    //....................................................................
    cosError                    =       'Ha ocurrido el siguiente error : '+#13;
    cosErrorMientrasExportaba   =       'Ha ocurrido un error mientras se exportaba el archivo.';
    cosNoCrearVentanasSinPadre  =       'No se puede crear una ventana o módulo sin padre.';
    cosNoEsVentanaMDI           =       'La ventana padre no es del tipo MDI.';

    // Procesos generales
    //....................................................................
    cosEspereMientrasSeEjecuta = 'Espere mientras se ejecuta el procedimiento (%s)';
    cosListo                    = 'Listo.';

    //TADVFindDialog
    cosADVmsgNoMoreFound        = 'No se encontraron más coincidencias del texto ';
    cosADVmsgNotFound           = 'No se encontró el texto ';
    cosADVtxtDirBackward1       = 'Abajo hacia arriba';
    cosADVtxtDirBackward2       = 'Derecha a izquierda';
    cosADVtxtDirForward1        = 'Arriba hacia abajo';
    cosADVtxtDirForward2        = 'Izquierda a derecha';
    cosADVtxtBtnCancel          = 'Cancelar';
    cosADVtxtBtnOk              = '&Aceptar';
    cosADVtxtCaption            = 'Buscar';
    cosADVtxtDirection          = 'Dirección';
    cosADVtxtOptions            = 'Opciones';
    cosADVtxtOptionsCase        = '&Sensible mayúsculas';
    cosADVtxtOptionsFixedCells  = 'Buscar en los títulos';
    cosADVtxtOptionsIgnoreHTML  = 'Ignorar HTML';
    cosADVtxtOptionsMatchFirst  = 'El primer caracter';
    cosADVtxtOptionsWholeWords  = 'Palabras completas';
    cosADVtxtSCope              = 'Alcance';
    cosADVtxtScopeAllCells      = 'Todas las celdas';
    cosADVtxtScopeCurrCol       = 'Solo columna actual';
    cosADVtxtScopeCurrRow       = 'Solo fila actual';
    cosADVtxtTextToFind         = 'Texto a buscar';

    //Usuarios fijos
    cosUsua_Informes    = '$INFORMES$';

{****************************************************************
Objetivo        : Declaración de tipos utilizados en la librería
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 06 de 2004
Versión         : pcp4000
*****************************************************************}
Type
  // Grid auxiliar para el procedimiento de pintado zebra
  //....................................................................
  TdxDBGridFake = Class
  Public
    Class procedure DibujarZebra(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    {$IFDEF SCL_GRADIENTES}
    Class procedure DibujarHeaderGrid(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    {$ENDIF}
  End;
  TDecisionGridFake = Class
  Public
    Class Procedure DibujarZebra(Sender: TObject; Col,
      Row: Integer; var Value: String; var aFont: TFont; var aColor: TColor;
      AState: TGridDrawState; aDrawState: TDecisionDrawState);
  End;
Type
  TVentanaMensajes = Class(tfMensajesSCL);
  TMovimientoGrid = (mgNinguno, mgFilas, mgColumnas);

{****************************************************************
Objetivo        : Declaración de funciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 06 de 2004
Versión         : pcp4000
*****************************************************************}
// Funciones de GRIDS
//....................................................................
Procedure ColorGrid(Grid:TDxDBGrid; ConAjuste : Boolean = False);Overload;
Procedure ColorGrid(Grid:TADVColumnGrid);Overload;
Procedure ColorGrid(Arbol:TDxTreeList);Overload;
Procedure ColorGrid(Arbol:TDxDBTreeList);Overload;
Procedure ColorGrid(Grid : TDecisionGrid);Overload;
Procedure colorSplitter(Splitter : TdfsSplitter);
//Procedure ColorDBChart(peDBChart : TDBChart);
Procedure LimpiarGrid(Grid : TAdvColumnGrid; FilaInicial : Integer = 1;
          ColumnaInicial : Integer = 1; FilaFinal : Integer = -1;
          ColumnaFinal : Integer = -1);
Procedure InicializarADVFindDialog(Dialogo :TAdvGridFindDialog);
Procedure SetMovimientoGrid(aGrid : TADVColumnGrid; aMovimientoGrid : TMovimientoGrid);
Procedure AjustarGrid(Grid : TdxDBGrid);Overload;
Procedure AjustarGrid(Grid : TAdvColumnGrid);Overload;
Procedure AjustarGrid(Grid : TSCLDBGrid);Overload;
Procedure AjustarGrids(peControl : TControl);
Procedure totalizarGrid(grd:TADVStringGrid;ColumnaInicial:Integer=1;FilaInicial:Integer=1;
        ColumnaFinal:Integer=0; FilaFinal:Integer=0;
        ColumnaTotales:Integer=0;FilaTotales:Integer=0;
        TotalizarFilas:Boolean=True;TotalizarColumnas:Boolean=True;
        conTitulosDeTotal:Boolean=True);  Overload;
Procedure totalizarGrid(grd:TADVColumnGrid;ColumnaInicial:Integer=1;FilaInicial:Integer=1;
        ColumnaFinal:Integer=0; FilaFinal:Integer=0;
        ColumnaTotales:Integer=0;FilaTotales:Integer=0;
        TotalizarFilas:Boolean=True;TotalizarColumnas:Boolean=True;
        conTitulosDeTotal:Boolean=True);  Overload;
Function HayDatosGrid(aGrid : TADVColumnGrid; aFilaInicial, aColumnaInicial, aFilaFinal, aColumnaFinal : Integer;
        aColumnaChequeo : Integer = -1) : Boolean;
Procedure SetTotalColumn(aColumna : TGridColumnItem; aReadOnly : Boolean = True);
// Fucniones de Manejo de Ventanas
//....................................................................
Function ExisteVentana(Clase:TFormClass; FocusWindow:Boolean = True):Boolean; Overload;
Function ExisteVentana(Titulo : String; FocusWindow:Boolean = True):Boolean; Overload;
Function EncontrarVentana(Clase:TFormClass; FocusWindow:Boolean = True):Integer; Overload;
Function EncontrarVentana(Titulo : String; FocusWindow:Boolean = True):Integer; Overload;
Procedure AutoHints(aControl : TControl; doSelfColor : Boolean = True);
Function EncontrarComponente(peNombre : String; peControlInicioBusqueda : TComponent) : TComponent;
Procedure CentrarControl(peControl : TWinControl);

// Manejo de pop-ups
//....................................................................
Function CrearSeparadorMenu : TTBXSeparatorItem;
// Funciones de exportación
//....................................................................
Procedure ExportarDbGridAExcel(Grid : TDXDbGrid);
Procedure ExportarDBGridAHTML(Grid : TDXDbGrid);
Procedure ExportarDbGridATexto(Grid : TDXDbGrid);
Procedure ExportarGridAExcel(Grid : tadvStringGrid);Overload;
Procedure ExportarGridAHTML(Grid : tadvStringGrid);Overload;
Procedure ExportarGridATexto(Grid : tadvStringGrid);Overload;
// Importacion de funciones de mensajes
//....................................................................
Function EjecutarMensaje(TextoTitulo : String;
     TipoDeDialogo :  TMsgDlgType; Botones : TMsgDlgButtons;
     Ayuda : Integer):Integer;   Overload;
Function EjecutarMensaje(TextoTitulo, TextoDetalles : String;
     TipoDeDialogo :  TMsgDlgType; Botones : TMsgDlgButtons;
     Ayuda : Integer):Integer;   Overload;
Function EjecutarMensaje(TextoTitulo , TextoDetalles : String;
     TipoDeDialogo :  TMsgDlgType; Botones : TMsgDlgButtons;
     Ayuda : Integer; MostrarDetalles : Boolean;
     MostrarModal : Boolean):Integer; Overload;
Procedure SetMaxAvance(aVentana : TVentanaMensajes; Const aMaximo : Integer);
Function EjecutarAvance(aTextoTitulo, aTextoMensaje : String; {aImagen : TBitmap;}
      Const aMaximo : Integer = 0; aConBotonCancelar : Boolean = False;
      aProgresoInicial : Integer = 0) : TVentanaMensajes;
Function SetProgresoAvance(aVentana : TVentanaMensajes; Const aProgreso : Integer) : Boolean;
Function EjecutarMensajeError(Mensaje : String; IDAyuda : Integer = 0; Botones : TMsgDlgButtons = [mbOk]) : Integer;
Function EjecutarMensajeInformacion(Mensaje : String; IDAyuda : Integer = 0; Botones : TMsgDlgButtons = [mbOk]) : Integer;Overload;
Function EjecutarMensajeInformacion(Mensaje, Detalles: String; IDAyuda : Integer = 0; Botones : TMsgDlgButtons = [mbOk]) : Integer;Overload;
Function EjecutarMensajeAtencion(Mensaje : String; IDAyuda : Integer = 0; Botones : TMsgDlgButtons = [mbOk]) : Integer;
Procedure CerrarVentanaAvance(aVentana : TVentanaMensajes);
Function Confirmar(Mensaje : String;Botones : TMsgDlgButtons = [mbYes,mbNo]; idAyuda : Integer = 0):Integer;
// Funciones PCPINPUTFORM
//....................................................................
Function pcpInputForm(Titulo, Texto:String; TipoVariable:Integer; ValorActual : Variant):Variant;Overload;
Function pcpInputForm(Titulo, Texto:String; SQL,KeyField, ListField:String; ValorActual : Variant):Variant;OverLoad;
Function pcpInputForm(Titulo, Texto:String; SQL,KeyField, ListField,DataBase:String; ValorActual : Variant):Variant;OverLoad;
// Funciones Varias
//....................................................................
Function ContarValor(Const Valor, Cadena :String) : Integer;
Function NowDate : TDate;
Function NowTime : TTime;
Procedure SetControlEnabled(aControl : TControl; aEnabled: Boolean; aHeredar : Boolean = True);
Function ColorAplicacion : TColor;
procedure doControlError(Sender: TPanel; aColor : TColor = clRed; aRepeticiones : Integer = 3; aEspera : Integer = 100);
Function RoundBy(peValor, peRoundFrom : Real) : Integer;
Function IntToCodBarras(aEntero, aPosiciones:Integer):String;
Function Reemplazar(Const pe_Cadena, pe_valo_actual, pe_valo_nuevo :String) : String;
//Function RegistrarEventos(Eventos : TIBEventAlerter) : Boolean;
//Function DesRegistrarEventos(Eventos : TIBEventAlerter) : Boolean;
// Manejo de objetos DBAware
//....................................................................
Procedure RefreshQuery(Query : TQuery);
Function RefreshDataSet(DataSet : TDataSet; MostrarErrores : Boolean = False;
        MostrarVentanaProgreso : Boolean = True):Boolean;
Function FetchAll(DataSet : TDataSet; MostrarErrores : Boolean = False):Boolean;
Function AbrirDataSet(DataSet : TDataSet; MostrarMensaje : Boolean = False; CerrarPadreEnError: Boolean = False) : Boolean;
Function DateToSQLDate(Fecha : String) : String; Overload;
Function DateToSQLDate(Fecha : TDate) : String; Overload;
Function GenerarSecuencia(nombre_Tabla, Nombre_Campo : String):Integer;Overload;
Function GenerarSecuencia(Tabla : TTable;Campo:String=''):Integer;Overload;
Function ValidarDatosDataSet(aDataSet : TDataSet; aMostrarError : Boolean = True;
        aAbortar :Boolean = True):Boolean;
Procedure UnPrepare(aQuery : TQuery);
Procedure SetDataSetEnabled(aDataSet : TDataSet; aControsEnabled : Boolean);
Procedure SetDataSetsEnabled(aControl : TControl; aControlsEnabled : Boolean);
Procedure SetDataSourceAutoEdit(aDataSource : TDataSource; aAutoEdit : Boolean);
Procedure SetDataSourcesAutoEdit(aControl : TControl; aAutoEdit : Boolean);
Function dxDBGridSelectIn(aGrid : tdxDBGrid; aNomb_Camp_Consecutivo : String;
    aTodosLosRegistros : Boolean = False):String;
Procedure InicializarCombo(aCombo : TPCPLookUpComboEdit; aEscapeClear : Boolean =  False);
{Procedure LlamarDatosTablaTXT(peTabla : TJVCsvDataSet; peRecurso: String;
    peTipoRecurso : String = 'TEXTDB'; peAbrirTabla : Boolean = True);}
Procedure CheckAndPostDataSet(aDataSet : TDataSet);
Procedure CheckAndEditDataSet(aDataSet : TDataSet);
Procedure RefreshWindowDataSets(peControl : TControl);
// De manejo de objetos en general
//....................................................................
Function DarFoco(Objeto : TWinControl) : Boolean;
Function InicializarFrame(aFrame : TFrame; aMostrarMensajeDeError : Boolean = True):Boolean;
// Variants
//....................................................................
Function Variant_Vacio(Dato : Variant):Boolean;

// De manejo de la barra inferior del MDI
//....................................................................
Procedure ProgresoBarraEstado(capt_estado : String = 'Listo.'; progreso : Integer = 0; MaximoProgreso : Integer = -1);
//Formatos
Function FormatoFecha : String;
Function FormatoFechaSQL : String;
Function FechaSQL   (peFecha : TDate) : String;


//FUNCIONES Y PROCEDIMIENTOS DE DIALOGOS
//.......................................
Function doEjecutarDialogoAbrirReporte(peModulo : String) : Integer;
Procedure doEjecutarDialogoAbrirComboDataSet(peTitulo : String; peDataSet : TDataSet;
                peKeyField, peListField : String);

//FUNCIONES Y PROCEDIMIENTOS DEL SISTEMA OPERATIVO
//..................................................
function GetProgramFilesDir: TFileName;
function GetSystemDir: TFileName;
function GetWindowsDir: TFileName;
function GetTempDir: TFileName; // by Edgarrod
Function isSysDBA : Boolean;


{$IFDEF PCP4}
Function doInicializarPermisos(aControl : TControl; aAsignarSoloLectura : Boolean = True):Boolean;
{$ENDIF}

// Variables Globales
//....................................................................
Var
BaseDatosPCP    : String;

implementation
Uses _InputForm, _cons_pcp, _cons_colores, un0_dial_abrir,
    {$IFDEF PCP4} _mdi,_vari_pcp,  {$ENDIF}
  un0_dial_sele_Comb_dataSet;

{****************************************************************
Procedimiento   : ExisteVentana
Objetivo        : Determinar si una ventana tipo MDIChild
                  ya existe o ha sido creada en la aplicación
                  activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 06 de 2004
Versión         : pcp4000
*****************************************************************}
{________________OVERLOAD_____________}
//Por CLASE
Function ExisteVentana(Clase:TFormClass; FocusWindow:Boolean = True):Boolean;
{Var
   i,x:Integer; }
Begin
  Result := False;
    {Deshabilitado desde RC20.13
    // Este procedimiento verifica si una ventana MDIChild ha sido creada
     // y si debe darle el foco
     //....................................................................

     // Inicializar las variables
     //....................................................................
     Result:=False;
     x:=-1;
     // Validar la ventana que se está creando
     //....................................................................
     if (Application.MainForm = Nil) then Raise Exception.Create(cosNoCrearVentanasSinPadre);
     if (Application.MainForm.FormStyle <> fsMDIForm) Then Raise Exception.Create(cosNoEsVentanaMDI);
     // Recorrer las ventanas activas
     //....................................................................
     For i:=1 to Application.MainForm.MDIChildCount do
       Try
          // Buscar la ventana enviada
          //....................................................................
          If Application.Mainform.MDIChildren[i-1].ClassName=(Clase.ClassName) Then
          Begin
               Result:=True; //ya esta abierta
               x:=i;
          End;
       Except
         Result:=False
       End;
       // Dar foco si es necesario
       //....................................................................
       If ((Result) and (FocusWindow)) Then
       Try
          Application.Mainform.MDIChildren[x-1].Show;
       Except
       End;
       //Mas de una ventana
       If (Result) and (FocusWindow) Then
       Begin
            if (Confirmar(cosYaExisteUnaVentana, [mbyes, mbNo], 0)=mrYes) Then
                Result := False;
       End;        }
End;
{****************************************************************
Procedimiento   : ExisteVentana
Objetivo        : Determinar si una ventana tipo MDIChild
                  ya existe o ha sido creada en la aplicación
                  activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 14 de 2004
Versión         : pcp4000
*****************************************************************}
Function ExisteVentana(Titulo : String; FocusWindow:Boolean = True):Boolean; Overload;
{________________OVERLOAD_____________}
//Por Titulo
{Var
   i,x:Integer;}
Begin
    Result := False
    { Deshabilitada desde RC20.13
    // Este procedimiento verifica si una ventana MDIChild ha sido creada
     // y si debe darle el foco
     //....................................................................

     // Inicializar las variables
     //....................................................................
     Result:=False;
     x:=-1;
     // Validar la ventana que se está creando
     //....................................................................
     if (Application.MainForm = Nil) then Raise Exception.Create(cosNoCrearVentanasSinPadre);
     if (Application.MainForm.FormStyle <> fsMDIForm) Then Raise Exception.Create(cosNoEsVentanaMDI);
     // Recorrer las ventanas activas
     //....................................................................
     For i:=1 to Application.MainForm.MDIChildCount do
       Try
          // Buscar la ventana enviada
          //....................................................................
          If UpperCase(Application.Mainform.MDIChildren[i-1].Caption)=UpperCase(Titulo) Then
          Begin
               Result:=True; //ya esta abierta
               x:=i;
          End;
       Except
         Result:=False
       End;
       // Dar foco si es necesario
       //....................................................................
       If ((Result) and (FocusWindow)) Then
       Try
          Application.Mainform.MDIChildren[x-1].Show;
       Except
       End;
       //Mas de una ventana
       If (Result) and (FocusWindow) Then
       Begin
            if (Confirmar(cosYaExisteUnaVentana, [mbyes, mbNo], 0)=mrYes) Then
                Result := False;
       End;     }

End;
{****************************************************************
Procedimiento   : ColorGrid (version para TdxDBGrid)
Objetivo        : Da el formato inicial a un dxDBGrid con la
                  apariencia de las aplicaciones de Softconf
                  Limitada
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 06 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure ColorGrid(Grid:TDxDBGrid; ConAjuste : Boolean = False);
Begin
     // Este procedimiento da un formato estándar a los grids
     //....................................................................
     Grid.HideSelectionColor:=clSeleccion;
     Grid.HideSelectionTextColor := clSeleccionTexto;
     Grid.HighLightColor:=clSeleccion;
     Grid.HighlightTextColor := clSeleccionTexto;
     Grid.AutoSearchColor:=clBusqueda;
     Grid.AutoSearchTextColor:=clBusquedaTexto;
     Grid.HideFocusRect:=True;
     Grid.LookAndFeel:=dxTL.lfFlat;//dxTL.lfUltraFlat;//
     Grid.ArrowsColor := clSeleccion;
     // Dibujar zebra
     //....................................................................
     If Not Assigned(TdxDBGrid(Grid).onCustomDrawCell) then
         Grid.OnCustomDrawCell := tdxdbGridFake.DibujarZebra;
    //Dibujar encabezados
    {$IFDEF SCL_GRADIENTES}
     If Not Assigned(TdxDBGrid(Grid).onCustomDrawColumnHeader) then
         Grid.OnCustomDrawColumnHeader := tdxdbGridFake.DibujarHeaderGrid;
     {$ENDIF}
    //Los colores de estilo
    Grid.GroupPanelColor := clGroupPanel;
    Grid.GroupPanelFontColor := clGroupPanelTexto;
    Grid.HeaderColor := clHeader;
    Grid.HeaderFont.Color := clHeaderTexto;
    Grid.GridLineColor := clGrid;//clBtnFace;
    Grid.GroupNodeColor := clInicioGradiente;
    Grid.GroupNodeTextColor := clTextoGradiente;
    If ConAjuste then
        AjustarGrid(Grid);
End;
{****************************************************************
Procedimiento   : ColorGrid (versión para TreeList)
Objetivo        : Dar color a un dxTreeList
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 08 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure ColorGrid(Arbol:tdxTreeList);
Begin
     // Este procedimiento da un formato estándar a los grids
     //....................................................................
     Arbol.HideSelectionColor:=clSeleccion;
     Arbol.HideSelectionTextColor := clSeleccionTexto;
     Arbol.HighLightColor:=clSeleccion;
     Arbol.HighlightTextColor := clSeleccionTexto;
     Arbol.AutoSearchColor:=clBusqueda;
     Arbol.AutoSearchTextColor:=clBusquedaTexto;
     Arbol.HideFocusRect:=True;
     Arbol.LookAndFeel:= dxTL.lfFlat;//dxTL.lfUltraFlat;//
     Arbol.ArrowsColor := clSeleccion;
    //Dibujar encabezados
     {$IFDEF SCL_GRADIENTES}
     If Not Assigned(tdxTreeList(Arbol).onCustomDrawColumnHeader) then
         Arbol.OnCustomDrawColumnHeader := tdxdbGridFake.DibujarHeaderGrid;
     {$ENDIF}
    //Los colores de estilo
    Arbol.HeaderColor := clHeader;
    Arbol.HeaderFont.Color := clHeaderTexto;
    Arbol.GridLineColor := clGrid;
    Arbol.GroupNodeColor := clInicioGradiente;
    Arbol.GroupNodeTextColor := clTextoGradiente;
End;
{****************************************************************
Procedimiento   : ColorGrid
Objetivo        : Da color a un TdxDBTreeList
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure ColorGrid(Arbol:tdxDBTreeList);
Begin
     // Este procedimiento da un formato estándar a los grids
     //....................................................................
     Arbol.HideSelectionColor:=clSeleccion;
     Arbol.HideSelectionTextColor := clSeleccionTexto;
     Arbol.HighLightColor:=clSeleccion;
     Arbol.HighlightTextColor := clSeleccionTexto;
     Arbol.AutoSearchColor:=clBusqueda;
     Arbol.AutoSearchTextColor:=clBusquedaTexto;
     Arbol.HideFocusRect:=True;
     Arbol.LookAndFeel:=dxTL.lfFlat;
     Arbol.ArrowsColor := clSeleccion;
    //Dibujar encabezados
     {$IFDEF SCL_GRADIENTES}
     If Not Assigned(tdxDBTreeList(Arbol).onCustomDrawColumnHeader) then
         Arbol.OnCustomDrawColumnHeader := tdxdbGridFake.DibujarHeaderGrid;
     {$ENDIF}
    //Los colores de estilo
    Arbol.HeaderColor := clHeader;
    Arbol.HeaderFont.Color := clHeaderTexto;
    Arbol.GridLineColor := clLineaGradiente;//clInicioGradiente; //clGrid
    Arbol.GroupNodeColor := clInicioGradiente;
    Arbol.GroupNodeTextColor := clTextoGradiente;
End;


{****************************************************************
Procedimiento   : ColorGrid
Objetivo        : Inicializa un TADVColumnGrid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
{________________OVERLOAD_____________
________ADVCOLUMNGRID__________________}
Procedure ColorGrid(Grid:TADVColumnGrid);
var
    vColumna    : Integer;
Begin
//   Grid.AutoNumAlign:=True;
   Grid.Ctl3d:=False;
   Grid.Look:=glSoft;
   Grid.Flat:=True;
   Grid.vAlignment:=vtaCenter;
   Grid.ActiveCellColor:=clFinGradienteHard;
   Grid.ActiveCellFont:=Grid.Font;
   Grid.ActiveCellFont.Color := clTextoGradienteHard;
   Grid.ActiveCellFont.Style:=[];
   Grid.ActiveCellShow := True;
   Grid.GridLineColor := clLineaGradiente;
   {$IFDEF SCL_GRADIENTES}
        Grid.FixedColor := clFinGradiente;
        if (Grid is TSCLColumnGrid) then
           (Grid as TSCLColumnGrid).ActiveCellPaintSCL := True;
   {$ELSE}
        Grid.FixedColor := clFondoAplicacion;//clBtnFace;
   {$ENDIF}
   //Cambiar el color Fix
   For vColumna := 1 to Grid.colCount - 1 do
     if (Grid.columns[vColumna].Fixed) or (Grid.columns[vColumna].Color = clBtnFace) Then
        Grid.Columns[vColumna].Color := Grid.FixedColor;
End;
{****************************************************************
Procedimiento   : ColorGrid
Objetivo        : Da color a un grid (TDecisionGrid)
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 22 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure ColorGrid(Grid : TDecisionGrid);
Begin
     With Grid do
       Begin
           Color := clWhite;
           DataColor := clWhite;
           GridLineColor := clLineaGradiente;
           DataSumColor := clFondoTotales;
           LabelSumColor := clTotales;
           DataFont.Name := 'Tahoma';
       End;
     If Not Assigned(TDecisionGrid(Grid).onDecisionDrawCell) then
         Grid.OnDecisionDrawCell := tDecisionGridFake.DibujarZebra;
End;
{****************************************************************
Procedimiento   : colorSplitter
Objetivo        : Dar color predeterminado a un Splitter
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 08 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure colorSplitter(Splitter : TdfsSplitter);
Begin
    With Splitter do
    Begin
        ArrowColor := clGroupPanel;
        ButtonColor := clInicioGradiente;
        ButtonHighlightColor := clFinGradiente;
        Color := clFondoAplicacion;
        {configuracion NScape}
//        ShowButton := True;//(Tag <> -1);
//        Height := 10;
//        Width := 10;
//        Beveled := False;
//        ButtonWidth := 60;
//        ButtonWidthType := btwPixels;
        {configuracion flat}
        ShowButton := False;
        Height := 2;
        Width := 2;
        Beveled := False;
        ButtonWidth := 0;
        ButtonWidthType := btwPixels;
    End;
End;

{****************************************************************
Procedimiento   : AjustarGrid
Objetivo        : Aplica el ajuste al grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 02 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure AjustarGrid(Grid : TdxDBGrid);
Var
        i       : Integer;
begin
  If Grid = Nil then Exit;
  For i := 1 to Grid.ColumnCount do
     Grid.ApplyBestFit(Grid.Columns[i-1]);
End;
{****************************************************************
Procedimiento   : AjustarGrid
Objetivo        : Aplica el ajuste al grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 02 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure AjustarGrid(Grid : TSCLDBGrid);
Var
        i       : Integer;
begin
  If Grid = Nil then Exit;
  For i := 1 to Grid.ColumnCount do
     Grid.ApplyBestFit(Grid.Columns[i-1]);
End;
{****************************************************************
Procedimiento   : AjustarGrid
Objetivo        : Aplica el ajuste a un grid (StringGrid)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 14 de 2004
Versión         : pcp4.0.0.12
*****************************************************************}
Procedure AjustarGrid(Grid : TAdvColumnGrid);
Var
        var_i       : Integer;
begin
  If Grid = Nil then Exit;
  For var_i := 1 to Grid.ColCount do
     if (Grid.Columns[var_i - 1].Width > 0) and
        (Not Grid.IsHiddenColumn(var_i - 1)) Then
        Grid.AutoSizeCol(var_i - 1);
End;

{****************************************************************
Procedimiento   : tdxDBGridFake.DibujarZebra
Objetivo        : Crea el efecto zebra en un tdxDBGrid
                  Este efecto consiste en el pintado de colores
                  de cada una de las filas, de manera alterna.
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 06 de 2003
Versión         : pcp4000
*****************************************************************}
Class procedure TDxDBGridFake.DibujarZebra(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  G: TdxDBGrid;
  Idx: Integer;
begin
  if ASelected or ANode.HasChildren then Exit;
  G := Sender as TdxDBGrid;
  if not G.IsGridMode then  // LoadAllRecords or PartialLoad
    Idx := ANode.Index
  else
    with G.DataSource.DataSet do
      if IsSequenced then
        Idx := RecNo
      else
        Idx := 0;

  if Idx mod 2 = 0 then
    AColor := clwindow
  else
    {$IFDEF SCL_GRADIENTES}
    AColor := ColorMasBrillante(clZebra, 50);
    {$ELSE}
    AColor := ColorMasBrillante(clBtnFace, 50);
    {$ENDIF}
end;
{$IFDEF SCL_GRADIENTES}
Class procedure TDxDBGridFake.DibujarHeaderGrid(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
Var
    r : TRect;
begin
    r := aRect;
    DibujarGradiente(aCanvas, r, False, [clInicioGradiente, clFinGradiente]);
    aCanvas.Brush.Style := bsSolid;
    aCanvas.Pen.Style := psSolid;
    aCanvas.Pen.Color := clLineaGradiente;
    aCanvas.MoveTo(r.right - 1, r.top +1);
    aCanvas.LineTo(r.Right - 1, r.Bottom - 1);
    aCanvas.Brush.Style := bsClear;
    aCanvas.Pen.Style := psSolid;
    aCanvas.Pen.Color := clTextoGradiente;
    aCanvas.TextOut(r.Left+2, r.Top + 2, PChar(aText));
    aText := aText;
    //Achicar el rect para pintar el ordenamiento
    r.left := r.right - 16;
    r.Right := r.left + 16;
    //Ordenamiento
    if (ASorted <> csNone) then
        DrawSortedShape(aCanvas.Handle, r, ASorted = csUp);
    aDone := True;
end;
{$ENDIF}
{****************************************************************
Procedimiento   : DibujarZebra
Objetivo        : Dibuja una zebra en un TDecisionCube
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 22 de 2004
Versión         : pcp4000
*****************************************************************}
Class procedure TDecisionGridFake.DibujarZebra(Sender: TObject; Col,
  Row: Integer; var Value: String; var aFont: TFont; var aColor: TColor;
  AState: TGridDrawState; aDrawState: TDecisionDrawState);
begin
    if (gdSelected in AState) Then aFont.Color := clBlack;
    If (col < 0) or (Row < 0) then
      Begin
           aColor := clFinGradiente;
           aFont.Color := clTextoGradiente;
      End
    Else
      Begin
            //Zebra
            if Not (dsSum in aDrawState) then
               if (Row mod 2 = 0) then aColor := clEfectoZebra;
     End;
end;
{****************************************************************
Procedimiento   : CrearSeparadorMenu (version TtbxSeparatorItem)
Objetivo        : Devuelve un separador para ser insertado en un
                  menu.
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 06 de 2004
Versión         : pcp4000
*****************************************************************}
Function CrearSeparadorMenu : TTBXSeparatorItem;
Begin
               // Crearlo y devolver el resultado
               //....................................................................
               Result := TTBXSeparatorItem.Create(Nil);
End;


{****************************************************************
Procedimiento   : ExportarDBGridAExcel
Objetivo        : Exportar los datos mostrados en un TDXDBGrid
                  a un archivo de Excel seleccionado con ayuda de
                  un TSaveDialog
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 06 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure ExportarDbGridAExcel(Grid : TDXDbGrid);
Var
   pcpSaveDialog        : TSaveDialog;
   VentanaProgreso      : TVentanaMensajes;
Begin
   // Crear el Dialogo de Salvar
   //....................................................................
   pcpSaveDialog := TSaveDialog.Create(Application.MainForm);
   Try
         // Dar formato al dialogo
         //....................................................................
         With pcpSaveDialog do Begin
        Options := [ofOverwritePrompt,ofHideReadOnly,ofPathMustExist,ofEnableSizing];
        DefaultExt := 'XLS';
        Filter := cosArchivosDeExcel+cosTodosLosArchivos;
        title := cosExportarAExcel;
        FileName:='';
        If Execute then
           if FileName <> '' Then
           Begin
              Try
               {$IFNDEF ES_SERVICIO}
                VentanaProgreso := EjecutarAvance(cosExportandoAExcel,
                Format(cosEspereMientrasSeEjecuta, [cosExportarAExcel]),0);
                {$ENDIF}
                Grid.SaveToXLS(FileName,True);
                EjecutarMensaje(cosProcesoConExito, mtInformation, [mbok],0);
              Except
                 On E:Exception do
                    EjecutarMensaje(cosErrorMientrasExportaba,
                          e.Message, mtError , [mbOk] ,0);
              End;
              {$IFNDEF ES_SERVICIO}
                 if (VentanaProgreso <> Nil) Then CerrarVentanaAvance(VentanaProgreso);
              {$ENDIF}
           End;
         End;
   Finally
          // Liberar el dialogo
          //....................................................................
          pcpSaveDialog.Free;
   End;

End;

{****************************************************************
Procedimiento   : ExportarDBGridaHTML
Objetivo        : Exportar los datos de un TDXDBGrid a un
                  archivo en formato HTLM
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 06 de 2004
Versión         : pcp4000
*****************************************************************
Modificaciones
*****************************************************************



*****************************************************************}
Procedure ExportarDBGridAHTML(Grid : TDXDbGrid);
Var
   pcpSaveDialog        : TSaveDialog;
   VentanaProgreso      : TVentanaMensajes;
Begin
   // Crear el Dialogo de Salvar
   //....................................................................
   pcpSaveDialog := TSaveDialog.Create(Application.MainForm);
   Try
         // Dar formato al dialogo
         //....................................................................
         With pcpSaveDialog do
         Begin
              Options := [ofOverwritePrompt,ofHideReadOnly,ofPathMustExist,ofEnableSizing];
              DefaultExt := 'HTML';
              Filter := cosArchivosDeHTML+cosTodosLosArchivos;
              title := cosExportarAHTML;
              FileName:='';
              If Execute then
                 if FileName <> '' Then
                 Begin
                    Try
                       {$IFNDEF ES_SERVICIO}
                          VentanaProgreso := EjecutarAvance(cosExportandoAHTML,
                                    Format(cosEspereMientrasSeEjecuta, [cosExportarAHTML]),0);
                       {$ENDIF}
                        Grid.SaveToHTML(FileName,True);
                        EjecutarMensaje(cosProcesoConExito, mtInformation, [mbok],0);
                    Except
                       On E:Exception do
                          EjecutarMensaje(cosErrorMientrasExportaba,
                                e.Message, mtError , [mbOk] ,0);
                    End;
                    {$IFNDEF ES_SERVICIO}
                    if (VentanaProgreso <> Nil) Then CerrarVentanaAvance(VentanaProgreso);
                    {$ENDIF}
                 End;
         End;
   Finally
          // Liberar el dialogo
          //....................................................................
          pcpSaveDialog.Free;
   End;
End;

{****************************************************************
Procedimiento   : ExportarDBGridATexto
Objetivo        : Exportar los datos de un TDXDBGrid a un
                  archivo en formato plano, separado por comas.
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           :
Versión         : pcp4000
*****************************************************************
Modificaciones
*****************************************************************



*****************************************************************}
Procedure ExportarDBGridATexto(Grid : TDXDbGrid);
Var
   pcpSaveDialog        : TSaveDialog;
   VentanaProgreso      : TVentanaMensajes;
Begin
   // Crear el Dialogo de Salvar
   //....................................................................
   pcpSaveDialog := TSaveDialog.Create(Application.MainForm);
   Try
         // Dar formato al dialogo
         //....................................................................
         With pcpSaveDialog do
         Begin
              Options := [ofOverwritePrompt,ofHideReadOnly,ofPathMustExist,ofEnableSizing];
              DefaultExt := 'TXT';
              Filter := cosArchivosDeTexto+cosTodosLosArchivos;
              title := cosExportarATexto;
              FileName:='';
              If Execute then
                 if FileName <> '' Then
                 Begin
                    Try
                       {$IFNDEF ES_SERVICIO}
                        VentanaProgreso := EjecutarAvance(cosExportandoATexto,
                                  Format(cosEspereMientrasSeEjecuta, [cosExportarATexto]),0);
                       {$ENDIF}
                        Grid.SaveToText(FileName,True,';','','');
                        EjecutarMensaje(cosProcesoConExito, mtInformation, [mbok],0);
                    Except
                       On E:Exception do
                          EjecutarMensaje(cosErrorMientrasExportaba,
                                e.Message, mtError , [mbOk] ,0);
                    End;
                    {$IFNDEF ES_SERVICIO}
                    if (VentanaProgreso <> Nil) Then CerrarVentanaAvance(VentanaProgreso);
                    {$ENDIF}
                 End;
         End;
   Finally
          // Liberar el dialogo
          //....................................................................
          pcpSaveDialog.Free;
   End;
End;
{****************************************************************
Procedimiento   : ExportarGridAExcel
Objetivo        : Exportar un grid a un archivo de Excel
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
Procedure ExportarGridAExcel(Grid : TAdvStringGrid);
Var
   pcpSaveDialog        : TSaveDialog;
   VentanaProgreso      : TVentanaMensajes;
Begin
   // Crear el Dialogo de Salvar
   //....................................................................
   pcpSaveDialog := TSaveDialog.Create(Application.MainForm);
   Try
         // Dar formato al dialogo
         //....................................................................
         With pcpSaveDialog do
         Begin
              Options := [ofOverwritePrompt,ofHideReadOnly,ofPathMustExist,ofEnableSizing];
              DefaultExt := 'XLS';
              Filter := cosArchivosDeExcel+cosTodosLosArchivos;
              title := cosExportarAExcel;
              FileName:='';
              If Execute then
                 if FileName <> '' Then
                 Begin
                    Try
                       {$IFNDEF ES_SERVICIO}
                        VentanaProgreso := EjecutarAvance(cosExportandoAExcel,
                                  Format(cosEspereMientrasSeEjecuta, [cosExportarAExcel]),0);
                       {$ENDIF}
                        Grid.SaveToXLS(FileName);
                        EjecutarMensaje(cosProcesoConExito, mtInformation, [mbok],0);
                    Except
                       On E:Exception do
                          EjecutarMensaje(cosErrorMientrasExportaba,
                                e.Message, mtError , [mbOk] ,0);
                    End;
                   {$IFNDEF ES_SERVICIO}
                    if (VentanaProgreso <> Nil) Then CerrarVentanaAvance(VentanaProgreso);
                   {$ENDIF}
                 End;
         End;
   Finally
          // Liberar el dialogo
          //....................................................................
          pcpSaveDialog.Free;
   End;
End;
{****************************************************************
Procedimiento   : ExportarGridAHTML
Objetivo        :
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
Procedure ExportarGridAHTML(Grid : tadvStringGrid);
Var
   pcpSaveDialog        : TSaveDialog;
   VentanaProgreso      : TVentanaMensajes;
Begin
   // Crear el Dialogo de Salvar
   //....................................................................
   pcpSaveDialog := TSaveDialog.Create(Application.MainForm);
   Try
         // Dar formato al dialogo
         //....................................................................
         With pcpSaveDialog do
         Begin
              Options := [ofOverwritePrompt,ofHideReadOnly,ofPathMustExist,ofEnableSizing];
              DefaultExt := 'HTML';
              Filter := cosArchivosDeHTML+cosTodosLosArchivos;
              title := cosExportarAHTML;
              FileName:='';
              If Execute then
                 if FileName <> '' Then
                 Begin
                    Try
                       {$IFNDEF ES_SERVICIO}
                        VentanaProgreso := EjecutarAvance(cosExportandoAHTML,
                                  Format(cosEspereMientrasSeEjecuta, [cosExportarAHTML]),0);
                       {$ENDIF}
                        Grid.SaveToHTML(FileName);
                        EjecutarMensaje(cosProcesoConExito, mtInformation, [mbok],0);
                    Except
                       On E:Exception do
                          EjecutarMensaje(cosErrorMientrasExportaba,
                                e.Message, mtError , [mbOk] ,0);
                    End;
                   {$IFNDEF ES_SERVICIO}
                    if (VentanaProgreso <> Nil) Then CerrarVentanaAvance(VentanaProgreso);
                   {$ENDIF}
                 End;
         End;
   Finally
          // Liberar el dialogo
          //....................................................................
          pcpSaveDialog.Free;
   End;
End;
{****************************************************************
Procedimiento   : ExportarGridATexto
Objetivo        : Exportar un Grid a un archivo de texto
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
Procedure ExportarGridATexto(Grid : tadvStringGrid);
Var
   pcpSaveDialog        : TSaveDialog;
   VentanaProgreso      : TVentanaMensajes;
Begin
   // Crear el Dialogo de Salvar
   //....................................................................
   pcpSaveDialog := TSaveDialog.Create(Application.MainForm);
   Try
         // Dar formato al dialogo
         //....................................................................
         With pcpSaveDialog do
         Begin
              Options := [ofOverwritePrompt,ofHideReadOnly,ofPathMustExist,ofEnableSizing];
              DefaultExt := 'TXT';
              Filter := cosArchivosDeTexto+cosTodosLosArchivos;
              title := cosExportarATexto;
              FileName:='';
              If Execute then
                 if FileName <> '' Then
                 Begin
                    Try
                       {$IFNDEF ES_SERVICIO}
                        VentanaProgreso := EjecutarAvance(cosExportandoATexto,
                                  Format(cosEspereMientrasSeEjecuta, [cosExportarATexto]),0);
                       {$ENDIF}
                        Grid.SaveToFile(FileName);
                        EjecutarMensaje(cosProcesoConExito, mtInformation, [mbok],0);
                    Except
                       On E:Exception do
                          EjecutarMensaje(cosErrorMientrasExportaba,
                                e.Message, mtError , [mbOk] ,0);
                    End;
                   {$IFNDEF ES_SERVICIO}
                    if (VentanaProgreso <> Nil) Then CerrarVentanaAvance(VentanaProgreso);
                   {$ENDIF}
                 End;
         End;
   Finally
          // Liberar el dialogo
          //....................................................................
          pcpSaveDialog.Free;
   End;
End;


{****************************************************************
Procedimiento   : EjecutarMensaje (Overload)
Objetivo        : Muestra un mensaje en pantalla  (ShowModal)
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
{________________OVERLOAD_____________}
Function EjecutarMensaje(TextoTitulo : String;
     TipoDeDialogo :  TMsgDlgType; Botones : TMsgDlgButtons;
     Ayuda : Integer):Integer;   Overload;
Var
        FormMensaje : TVentanaMensajes;
Begin
    FormMensaje := TVentanaMensajes.Create(Application.MainForm);
    Result := TVentanaMensajes(FormMensaje).Ejecutar(TextoTitulo, TipoDeDialogo, Botones, Ayuda); 
End;
{________________OVERLOAD_____________}
Function EjecutarMensaje(TextoTitulo, TextoDetalles : String;
     TipoDeDialogo :  TMsgDlgType; Botones : TMsgDlgButtons;
     Ayuda : Integer):Integer;   Overload;
Var
        FormMensaje : TVentanaMensajes;
Begin
    FormMensaje := TVentanaMensajes.Create(Application.MainForm);
    Result := TVentanaMensajes(FormMensaje).Ejecutar(TextoTitulo, TextoDetalles, TipoDeDialogo, Botones, Ayuda);
End;
{________________OVERLOAD_____________}
Function EjecutarMensaje(TextoTitulo , TextoDetalles : String;
     TipoDeDialogo :  TMsgDlgType; Botones : TMsgDlgButtons;
     Ayuda : Integer; MostrarDetalles : Boolean;
     MostrarModal : Boolean):Integer; Overload;
Var
        FormMensaje : TVentanaMensajes;
Begin
    FormMensaje := TVentanaMensajes.Create(Application.MainForm);
    Result := TVentanaMensajes(FormMensaje).Ejecutar(TextoTitulo, TextoDetalles,
    TipoDeDialogo,  Botones, Ayuda,
    MostrarDetalles, MostrarModal);
End;

{****************************************************************
Procedimiento   : SetMaxAvance
Objetivo        : Asigna el avance máximo en una ventana de progreso
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure SetMaxAvance(aVentana : TVentanaMensajes; Const aMaximo : Integer);
Begin
      If aVentana = Nil then Exit;
      TVentanaMensajes(aVentana).SetMax(aMaximo);
End;
Function EjecutarAvance(aTextoTitulo, aTextoMensaje : String; {aImagen : TBitmap; }
      Const aMaximo : Integer = 0; aConBotonCancelar : Boolean = False;
      aProgresoInicial : Integer = 0): TVentanaMensajes;
Var
        FormMensaje : TVentanaMensajes;
Begin
      FormMensaje := TVentanaMensajes.Create(Application.MainForm);
      FormMensaje.FormStyle := fsStayOnTop;
      TVentanaMensajes(FormMensaje).Avance(aTextoTitulo, aTextoMensaje, Nil,
        aMaximo, aConBotonCancelar, aProgresoInicial);
      Result := FormMensaje;
End;

{****************************************************************
Procedimiento   : SetProgresoAvance
Objetivo        : Asigna el progreso de avance a una ventana de mensaje
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
Function SetProgresoAvance(aVentana : TVentanaMensajes; Const aProgreso : Integer) : Boolean;
Begin
   if aVentana = Nil then Result := False
   Else Result := TVentanaMensajes(aVentana).SetProgreso(aProgreso);
End;

{****************************************************************
Procedimiento   : ContarValor
Objetivo        : Contar el numero de repeticiones de un valor en una
                  cadena de caracteres
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 17 de 2004
Versión         : pcp4000
*****************************************************************}
Function ContarValor(Const Valor, Cadena :String) : Integer;
Var
    i,j   : Integer;
    X   : STRING;
Begin
   Result := 0;
   If Length(Cadena) = 0 Then Exit;
   j := 0;
   While Pos(Valor, Copy(Cadena, j, Length(Cadena) - j  )) > 0 do
   Begin
     X :=  Copy(Cadena, j, Length(Cadena) - j );
     i := Pos(Valor, Copy(Cadena, j, Length(Cadena) - j )) + 1;
     j := j + i;
     Inc(Result);
   End;
End;
{****************************************************************
Procedimiento   : pcpInputForm
Objetivo        : Funcion que reemplaza el input form estándar
                  Genera un valor interactuando con el usuario
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
{________________OVERLOAD_____________}
Function pcpInputForm(Titulo, Texto:String; TipoVariable:Integer; ValorActual : Variant):Variant;
Begin
      Application.CreateForm(T_fInputForm, _fInputForm);
      Result := _fInputForm.fInput(Titulo, Texto, TipoVariable, ValorActual);
End;
{________________OVERLOAD_____________}
Function pcpInputForm(Titulo, Texto:String; SQL,KeyField, ListField:String; ValorActual : Variant):Variant;OverLoad;
Begin
      Application.CreateForm(T_fInputForm, _fInputForm);
      Result := _fInputForm.fInputCombo(Titulo, Texto, SQL, KeyField, ListField, ValorActual);
End;
{________________OVERLOAD_____________}
Function pcpInputForm(Titulo, Texto:String; SQL,KeyField, ListField,DataBase:String; ValorActual : Variant):Variant;OverLoad;
Begin
      Application.CreateForm(T_fInputForm, _fInputForm);
      Result := _fInputForm.fInputCombo(Titulo, Texto, SQL, KeyField, ListField, DataBase, ValorActual);
End;
{****************************************************************
Procedimiento   : EjecutarMensajeError
Objetivo        : Muestra un mensaje de error con los parametros
                  especificados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
Function EjecutarMensajeError(Mensaje : String; IDAyuda : Integer = 0; Botones : TMsgDlgButtons = [mbOk]) : Integer;
Begin
    Result := EjecutarMensaje(cosError, Mensaje, mtError, Botones, IDAyuda, True, True);
End;
{****************************************************************
Procedimiento   : EjecutarMensajeInformacion
Objetivo        : Muestra un mensaje de error con los parametros
                  especificados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
Function EjecutarMensajeInformacion(Mensaje, Detalles : String; IDAyuda : Integer = 0; Botones : TMsgDlgButtons = [mbOk]) : Integer;
Begin
    Result := EjecutarMensaje(Mensaje, Detalles, mtInformation, Botones, IDAyuda, True, True);
End;
{****************************************************************
Procedimiento   : EjecutarMensajeInformacion
Objetivo        : OVERLOAD : Sin detalles
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Function EjecutarMensajeInformacion(Mensaje : String; IDAyuda : Integer = 0;
  Botones : TMsgDlgButtons = [mbOk]) : Integer;
Begin
  Result := EjecutarMensaje(Mensaje, mtInformation, Botones, IDAyuda);
End;
{****************************************************************
Procedimiento   : EjecutarMensajeAtencion
Objetivo        : Muestra un mensaje de atención con los parametros
                  especificados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Function EjecutarMensajeAtencion(Mensaje : String; IDAyuda : Integer = 0; Botones : TMsgDlgButtons = [mbOk]) : Integer;
Begin
  Result := EjecutarMensaje(Mensaje, mtInformation, Botones, IDAyuda);
End;
{****************************************************************
Procedimiento   : CerrarVentanaAvance
Objetivo        : Cierra una ventana de avance
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure CerrarVentanaAvance(aVentana : TVentanaMensajes);
Begin
   if aVentana <> Nil then
      aVentana.Close;
End;
{****************************************************************
Procedimiento   : RefreshQuery
Objetivo        : Actualiza un TQuery
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 23 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure RefreshQuery(Query : TQuery);
Begin
  if Query <> Nil Then Begin
    Query.Close;
    Query.Open;
  End;
End;
{****************************************************************
Procedimiento   : RefreshDataSet
Objetivo        : Actualizar una fuente de datos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 05 de 2004
Versión         : pcp4000
*****************************************************************}
Function RefreshDataSet(DataSet : TDataSet; MostrarErrores : Boolean = False;
        MostrarVentanaProgreso : Boolean = True):Boolean;
Begin
   Result := True;
   //Crear una ventana de avance para mostrar al usuario
   if MostrarVentanaProgreso Then
       ProgresoBarraEstado(cosActualizandoDatos);
   Try
     //Validar el DataSet
     If DataSet = Nil then
        Raise Exception.Create(cosErrorFuenteDatosNoValida);
     //Verificar que no esté en Insert o Edit
     if Not (DataSet.State in [dsInsert, dsEdit]) Then Begin
         //Verificar si es TTable
         If (DataSet is TTable) Then
            (DataSet as TTable).Refresh;
         //Verificar si es TQuery
         If (DataSet is TQuery) Then
             RefreshQuery(DataSet as TQuery);
     End;
   Except
       //Generar una excepción si se pidió con erroes
       on e:Exception do  Begin
             //Si falla
             Result := False;
             If MostrarErrores then
                Raise Exception.Create(e.Message);
       End;
   End;
   //Cerrar la ventana de avance
   ProgresoBarraEstado;
End;
{****************************************************************
Procedimiento   : FetchAll
Objetivo        : Llama TODOS los datos de un DataSet
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 04 de 2004
Versión         : pcp4000
*****************************************************************}
Function FetchAll(DataSet : TDataSet; MostrarErrores : Boolean = False):Boolean;
Begin
   Result := True;
   //Crear una ventana de avance para mostrar al usuario
   ProgresoBarraEstado(cosLlamandoTodosLosRegistros);
   Try
     //Validar el DataSet
     If DataSet = Nil then
        Raise Exception.Create(cosErrorFuenteDatosNoValida);
     //Verificar si es TTable
     If (DataSet is TTable) Then
        (DataSet as TTable).FetchAll;
     //Verificar si es TQuery
     If (DataSet is TQuery) Then
         (DataSet as TQuery).FetchAll;
   Except
       //Generar una excepción si se pidió con erroes
       on e:Exception do
       Begin
             //Si falla
             Result := False;
             If MostrarErrores then
                Raise Exception.Create(e.Message);
       End;
   End;
   //Cerrar la ventana de avance
   ProgresoBarraEstado;
End;
{****************************************************************
Procedimiento   : AbrirDataSet
Objetivo        : Abrir una tabla o query
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 09 de 2004
Versión         : pcp4000
*****************************************************************}
Function AbrirDataSet(DataSet : TDataSet; MostrarMensaje : Boolean = False; CerrarPadreEnError: Boolean = False) : Boolean;
Begin
  IF Not MostrarMensaje Then      //RC11 - Mostrar todos los mensajes
    MostrarMensaje := True;
  Try
    If DataSet = Nil then     //Validar el DataSet
      Raise Exception.Create(cosErrorFuenteDatosNoValida);
    DataSet.Open;     //Abrirla
    Result := True;
  Except
     On e:Exception do Begin
       //Mostrar el error
       If MostrarMensaje then
         EjecutarMensaje(cosErrorAbriendoDataSet,e.Message, mtError, [mbOk],0);
       Result := False;
       //Cerrar el padre
       If CerrarPadreEnError Then
       Try
          { Application.ProcessMessages;
           (DataSet.Owner as TForm).Visible := False;
           (DataSet.Owner as TForm).Close;  }
       Except
       End;
     End;
  End;
End;
{****************************************************************
Procedimiento   : DarFoco
Objetivo        : Da el foco a un control, devuelve si se pudo o no
                  completar la operación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 24 de 2004
Versión         : pcp4000
*****************************************************************}
Function DarFoco(Objeto : TWinControl) : Boolean;
Begin
   //Asumir que se puede
   Result := True;
   Try
       With Objeto do
       Begin
          //Intentar dar el foco
          if CanFocus then
             SetFocus
          Else
             //No se pudo dar foco
             Abort;
       End;
   Except
      Result := False;
   End;
End;

{****************************************************************
Procedimiento   : Variant_Vacio
Objetivo        : Averiguar si un Variant esta vacio
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de marzo de 2004
Versión         : pcp4000
*****************************************************************}
Function Variant_Vacio(Dato : Variant):Boolean;
Var
	Entro : Boolean;
begin
	Result := True;
  try
    If Dato <> Null Then
      Result := False;
    Entro := True;
  Except
    Entro := False;
  end;

  If Not Entro Then
  	try
      If (Dato[0] <> Null) Then
      	Result := False;
    except
			Result := True;
    end;
end;
{****************************************************************
Procedimiento   : NowDate
Objetivo        : Devuelve la fecha actual del sistema (solo fecha)
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 24 de 2004
Versión         : pcp4000
*****************************************************************}
Function NowDate : TDate;
Begin
  Result := StrToDate(FormatDateTime(cosFormatoFecha, Now));
End;
{****************************************************************
Procedimiento   : NowTime
Objetivo        : Devuelve la hora actual del sistema (solo hora)
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 24 de 2004
Versión         : pcp4000
*****************************************************************}
Function NowTime : TTime;
Begin
     Result  := StrToTime(FormatDateTime(cosFormatoHora, Now));
End;
{****************************************************************
Procedimiento   : Confirmar
Objetivo        : Muestra al usuario un dialogo de confirmación
                  con el texto definido y devuelve la respuesta
                  del usuario.
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 25 de 2004
Versión         : pcp4000
*****************************************************************}
Function Confirmar(Mensaje : String;Botones : TMsgDlgButtons = [mbYes,mbNo]; idAyuda : Integer = 0):Integer;
Begin
    Result := EjecutarMensaje(Mensaje, mtConfirmation, Botones, idAyuda);
End;
{****************************************************************
Procedimiento   : SetControlEnabled
Objetivo        : Activar/Desactivar un control y sus hijos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 30 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure SetControlEnabled(aControl : TControl; aEnabled: Boolean; aHeredar : Boolean = True);
Var
   i : Integer;
Begin
        //Validar el control
        If aControl = Nil then Exit;
        //Recorrer los componentes
        For i := 1 to aControl.Owner.ComponentCount do
        Begin
               //Verificar que el componente sea TControl y pertenezca a aControl
               if (aControl.Owner.Components[i-1] is TControl) and
                  ((aControl.Owner.Components[i-1] as TControl).Parent = aControl) Then
                  Begin
                     Try
                       //Si el tag <> -1 cambiar la propiedad enabled
                       if (aControl.Owner.Components[i-1] as TControl).Tag <> -1 Then
                           (aControl.Owner.Components[i-1] as TControl).Enabled := aEnabled;
                     Except
                     End;
                     //Si hereda, recursividad
                     If aHeredar Then
                       SetControlEnabled(aControl.Owner.Components[i-1] as TControl, aEnabled, aHeredar)
                  End;
        End;
        //Recorrer los hijos del aControl (Del control mas no del owner)
        For i:=1 To aControl.ComponentCount do
        Begin
             //Verificar que sea un TControl
             If (aControl.Components[i-1] is TControl) Then
             Begin
                 Try
                       //Si el tag <> -1 cambiar la propiedad enabled
                       if (aControl.Components[i-1] as TControl).Tag <> -1 Then
                          (aControl.Components[i-1] as TControl).Enabled := aEnabled;
                 Except
                 End;
                 //Si hereda, recursividad
                 if aHeredar then
                    SetControlEnabled(aControl.Components[i-1] as TControl, aEnabled, aHeredar)
             End;
        End;
End;
{****************************************************************
Procedimiento   : DateToSQLDate
Objetivo        : Convertir un string de fecha a un string de fecha
                  valido en SQL
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 01 de 2004
Versión         : pcp4000
*****************************************************************}
{________________OVERLOAD_____________}
Function DateToSQLDate(Fecha : String) : String; Overload;
Begin
      Result := FormatDateTime(cosFormatoFechaSQL, StrToDate(Fecha));
End;
{________________OVERLOAD_____________}
Function DateToSQLDate(Fecha : TDate) : String; Overload;
Begin
      Result := FormatDateTime(cosFormatoFechaSQL, Fecha);
End;
{****************************************************************
Procedimiento   : ColorAplicacion
Objetivo        : Devuelve el color para la aplicación activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 06 de 2004
Versión         : pcp4000
*****************************************************************}
Function ColorAplicacion:TColor;
Begin
    //Por defecto el color PCP
    {$IFDEF PCP4}
           Result := colorPCP;
           Exit;
    {$ELSE}
           Result := colorPCP;
    {$ENDIF}
    If Application.Title = 'PCT' then Result := colorPCT;
    If Application.Title = 'INTERNOSCL' Then Result := colorINTERNOSCL;
End;
{****************************************************************
Procedimiento   : InicializarFrame
Objetivo        : Inicializa los objetos DataSource de un Frame
                  Devuelve TRUE si no hay errores      
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 12 de 2004
Versión         : pcp4000
*****************************************************************}
Function InicializarFrame(aFrame : TFrame; aMostrarMensajeDeError : Boolean = True):Boolean;
Var
        i       : Integer;
Begin
        //Inicializar el Frame
        Result := True;
        //Validar el frame
        if (aFrame = Nil) Then Exit;
        Try
            For i:=1 To aFrame.ComponentCount do
            Begin
                //Recursividad por si contiene subFrames
                if (aFrame.Components[i-1] is TFrame) then
                    InicializarFrame(aFrame.Components[i-1] as TFrame);
                //Si es DataSet, abrirlo
                if (aFrame.Components[i-1] is TDataSet) then
                   AbrirDataSet(aFrame.Components[i-1] as TDataSet, aMostrarMensajeDeError);
            End;
        Except
           //Generar una excepción cuando falle     
           on E:Exception do
           Begin
                Result := False;
                If aMostrarMensajeDeError Then
                   Raise Exception.Create(Format(cosErrorInicializandoFrame ,[aFrame.Name]));
           End;
        End;
End;
{****************************************************************
Procedimiento   : LimpiarGrid
Objetivo        : Borra los valores de las celdas de un grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 28 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure LimpiarGrid(Grid : TAdvColumnGrid; FilaInicial : Integer = 1;
          ColumnaInicial : Integer = 1; FilaFinal : Integer = -1;
          ColumnaFinal : Integer = -1);
Var
        var_auxi_fila, var_auxi_columna : Integer;
Begin
  //Validar
  If Grid=Nil then Exit;
  If FilaFinal = -1 Then FilaFinal := Grid.RowCount - 1;
  If ColumnaFinal = -1 Then ColumnaFinal := Grid.ColCount - 1;      
  //Limpiar los valores existentes
  For var_auxi_fila := FilaInicial to FilaFinal do
        For var_auxi_columna := ColumnaInicial To ColumnaFinal do
            Grid.Cells[var_auxi_columna, var_auxi_fila] := '';
  //Eliminar el ordenamiento
  Grid.SortSettings.Column := 0;
End;
Procedure ProgresoBarraEstado(capt_estado : String = 'Listo.'; progreso : Integer = 0; MaximoProgreso : Integer = -1);
Begin
      {$IFDEF BARRA_ESTADO}
      //Caption
      if (_fmdi.labe_esta_estado.Caption <> capt_estado) Then
      Begin
        _fmdi.labe_esta_estado.Caption := capt_estado;
        _fmdi.labe_esta_estado.Update;
      End;
      //Progreso
      If (MaximoProgreso=-1) Then _fmdi.prog_estado.Position := 0;
      //Ocultar la barra cuando esté en cero 
      if _fmdi.prog_estado.Position=0 Then 
      Begin
        _fmdi.prog_estado.Visible := False;
        _fmdi.barr_estado.Repaint;
        
      End;
      if (MaximoProgreso>-1) Then
      Begin
            _fmdi.prog_estado.Max := MaximoProgreso;
            if progreso>=0 then
            Begin
                _fmdi.prog_estado.Position := Progreso;
                _fmdi.prog_estado.Visible := True;
            End
            Else _fmdi.prog_estado.Position := 0;
            _fmdi.prog_estado.Update;
      End;
      {$ENDIF}
End;
{****************************************************************
Procedimiento   : GenerarSecuencia
Objetivo        : Genera la secuencia del sistema de una tabla
                  dada, con su campo de generacion
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 31 de 2004
Versión         : pcp4000
*****************************************************************}                    
{________________OVERLOAD_____________}
{NOMBRE TABLA + NOMBRE CAMPO}
Function GenerarSecuencia(nombre_Tabla, Nombre_Campo : String):Integer;
Var
        Consulta : TQuery;
Begin
     //Inicializar
     Result := -1;   
     //Validar
     if (nombre_tabla = '') or (nombre_campo = '') then Exit;
     //Crear el query
     Consulta := TQuery.Create(Nil);   
     Try
         With Consulta do
         Begin
               DataBaseName := 'data_base_pcp';
               Sql.Add('Select secuencia From ');
               Sql.add('FUN_GLO_GENE_SECUENCIA("'+Nombre_Tabla+'","'+
                       Nombre_Campo+'")');
               Open;
               Result := FieldByName('secuencia').AsInteger;
               Close;
         End;
     Finally
            Consulta.Free;
     End;
End;
{________________OVERLOAD_____________}
{TABLA}
Function GenerarSecuencia(Tabla : TTable;Campo:String=''):Integer;Overload;
Var
        Consulta        : TQuery;
        var_campo       : String;
Begin
    //Inicializar
    Result := -1;    
    //Validar    
    If (Tabla = Nil) or (Tabla.TableName = '') or (Tabla.State<>dsInsert) then Exit;
     Consulta := TQuery.Create(Nil);   
     Try
         With Consulta do
         Begin
               //Validar el campo de generacion
               If (Campo = '') Then var_Campo := Tabla.FieldDefs[0].Name
               else var_campo := campo;
               DataBaseName := 'data_base_pcp';
               Sql.Add('Select secuencia From ');
               Sql.add('FUN_GLO_GENE_SECUENCIA("'+Tabla.TableName+'","'+
                       var_Campo+'")');
               Open;
               Result := FieldByName('secuencia').AsInteger;
               //Asignarlo a la tabla
               if (campo = '') then
                   Tabla.FieldByName(var_campo).Value := Result;
               Close;
         End;
     Finally
            Consulta.Free;
     End;
End;
{****************************************************************
Procedimiento   : InicializarADVFindDialog
Objetivo        : Inicializa un dialgo de busqueda advFindDialog
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 07 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure InicializarADVFindDialog(Dialogo :TAdvGridFindDialog);
Begin
        //Validarlo
        If Dialogo = Nil then Exit;
        With Dialogo do
        Begin
              msgNoMoreFound :=  cosADVmsgNoMoreFound;
              msgNotFound :=  cosADVmsgNotFound;            
              TtxtDirBackward1 :=  cosADVtxtDirBackward1;        
              TtxtDirBackward2 :=  cosADVtxtDirBackward2;        
              TtxtDirForward1 :=  cosADVtxtDirForward1;         
              TtxtDirForward2 :=  cosADVtxtDirForward2;         
              txtBtnCancel :=  cosADVtxtBtnCancel;           
              txtBtnOk :=  cosADVtxtBtnOk;               
              txtCaption :=  cosADVtxtCaption;             
              txtDirection :=  cosADVtxtDirection;           
              txtOptions :=  cosADVtxtOptions;             
              txtOptionsCase :=  cosADVtxtOptionsCase;         
              txtOptionsFixedCells :=  cosADVtxtOptionsFixedCells;          
              txtOptionsIgnoreHTML :=  cosADVtxtOptionsIgnoreHTML;
              txtOptionsMatchFirst :=  cosADVtxtOptionsMatchFirst;   
              txtOptionsWholeWords :=  cosADVtxtOptionsWholeWords;   
              txtSCope :=  cosADVtxtSCope;               
              txtScopeAllCells :=  cosADVtxtScopeAllCells;       
              txtScopeCurrCol :=  cosADVtxtScopeCurrCol;        
              txtScopeCurrRow :=  cosADVtxtScopeCurrRow;        
              txtTextToFind :=  cosADVtxtTextToFind;         
        End;
End;
{Function RegistrarEventos(Eventos : TIBEventAlerter) : Boolean;
Begin
     Try
        Eventos.RegisterEvents;
        Result := True;
     Except
        Result := False;
     End;
End;
Function DesRegistrarEventos(Eventos : TIBEventAlerter) : Boolean;
Begin
     Try
        Eventos.UnRegisterEvents;
        Result := True;
     Except
        Result := False;
     End;
End; }
{****************************************************************
Procedimiento   : ValidarDatosDataSet
Objetivo        : Valida los campos requeridos de un dataSet
                  antes de guardarlo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 23 de 2004
Versión         : pcp4000
*****************************************************************}
Function ValidarDatosDataSet(aDataSet : TDataSet; aMostrarError : Boolean = True;
        aAbortar :Boolean = True):Boolean;
Var
        var_campos_requeridos : String;
        var_Posicion : Integer;
Begin
  Try
      //Validar el dataset  
      if (aDataSet=Nil) or (Not aDataSet.Active) Then 
          Raise Exception.Create(cosErrorFuenteDatosNoValida);
      //Buscar los campos requeridos que no tengan valor
      var_campos_requeridos := '';
      For var_Posicion := 0 To aDataSet.FieldCount - 1 Do
  	  If ((aDataSet.Fields[var_Posicion].AutoGenerateValue <> arDefault) And
              (aDataSet.Fields[var_Posicion].Required) And (aDataSet.Fields[var_Posicion].Text = '')) Then
                 //Agregar el campo al texto de faltantes
                 var_campos_requeridos := var_campos_Requeridos + aDataSet.Fields[var_Posicion].DisplayLabel + ', ';
      //Quitar la coma del final
      If var_campos_requeridos <> '' Then
  	  var_campos_requeridos := Copy(var_campos_requeridos, 1, Length(var_campos_requeridos) - 2);
      //Abortar si faltan campos
      If var_campos_Requeridos <> '' Then
           Raise Exception.Create(var_campos_Requeridos);
      Result := True;
  Except
      On e:Exception do
      Begin
           Result := False;
           If aMostrarError Then
                EjecutarMensaje(cosFaltanDatos , e.Message, mtError, [mbOk], 0); 
           If aAbortar Then Abort;
      End;
  End;
End;
{****************************************************************
Procedimiento   : SetMovimientoGrid
Objetivo        : Movimientos automáticos de un TADVColumnGrid
                  al dar ENTER
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure SetMovimientoGrid(aGrid : TADVColumnGrid; aMovimientoGrid : TMovimientoGrid);
Begin
    if (aGrid = Nil) Then Exit;
    //Identificar si habrá avance
//    aGrid.Navigation.AdvanceOnEnter := (aMovimientoGrid in [mgFilas, mgColumnas]);
    aGrid.Navigation.AdvanceAuto := (aMovimientoGrid in [mgFilas, mgColumnas]);
    //Asignar el tipo de movimiento
    Case aMovimientoGrid of
        mgFilas         : aGrid.Navigation.AdvanceDirection := adTopBottom;
        mgColumnas      : aGrid.Navigation.AdvanceDirection := adLeftRight;
    End;
End;
{****************************************************************
Procedimiento   : totalizarGrid
Objetivo        : Totalizar los valores de un grid en el rango
                  especificado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
{________________OVERLOAD_____________TADVSTRINGGRID}
Procedure totalizarGrid(grd:TADVStringGrid;ColumnaInicial:Integer=1;FilaInicial:Integer=1;
                ColumnaFinal:Integer=0; FilaFinal:Integer=0; 
                ColumnaTotales:Integer=0;FilaTotales:Integer=0;
                TotalizarFilas:Boolean=True;TotalizarColumnas:Boolean=True;
                conTitulosDeTotal:Boolean=True);
Var
   i,j:Integer;
   Total,gTotal : Real;
begin
   //Inicializar     
   if ColumnaFinal = 0 then ColumnaFinal := grd.ColCount-2;     
   if FilaFinal = 0 then FilaFinal := grd.RowCount-2;     
   If ColumnaTotales = 0 then ColumnaTotales := grd.ColCount-1;
   If FilaTotales = 0 then FilaTotales := grd.RowCount-1;
   If Grd.RowCount>=2 then
   Begin
        //Totalizar las filas
        If TotalizarFilas Then
        Begin
            gTotal := 0;
            For i:=FilaInicial to FilaFinal do
            Begin
              Total:=0;
              For j:=ColumnaInicial to ColumnaFinal do
              Begin
                 if grd.Cells[j,i]<>'' Then
                 Try
                    Total:=Total+StrToFloat(grd.Cells[j,i]);
                 Except
                 End;
              End;
              grd.Cells[ColumnaTotales,i]:=FloatToStr(Total);
              gTotal := gTotal + Total;
            End;
        End;
        //Totalizar las columnas
        If TotalizarColumnas Then
        Begin        
              gTotal := 0;
              For j:=ColumnaInicial to ColumnaFinal do
              Begin
                Total:=0;
                For i:=FilaInicial to FilaFinal do
                Begin
                 if grd.Cells[j,i]<>'' Then
                   Try
                      Total:=Total+StrToFloat(grd.Cells[j,i]);
                   Except
                   End;
                End;
                grd.Cells[j,FilaTotales]:=FloatToStr(Total);
                gTotal := gTotal + Total;
              End;                                                    
        End;
        if ConTitulosDeTotal Then
        Begin
             If TotalizarFilas Then Grd.Cells[ColumnaTotales,0] := cosTotal;
             If TotalizarColumnas then Grd.Cells[0,FilaTotales] := cosTotal;
        End;
        If (TotalizarColumnas And TotalizarFilas) Then
        Begin
            Grd.Cells[ColumnaTotales,FilaTotales]:=FloatToStr(gTotal);
        End;
   End;
End;
{****************************************************************
Procedimiento   : totalizarGrid
Objetivo        : Totalizar los valores de un grid en el rango
                  especificado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
{________________OVERLOAD_____________TADVCOLUMNGRID}
Procedure totalizarGrid(grd:TADVColumnGrid;ColumnaInicial:Integer=1;FilaInicial:Integer=1;
                ColumnaFinal:Integer=0; FilaFinal:Integer=0; 
                ColumnaTotales:Integer=0;FilaTotales:Integer=0;
                TotalizarFilas:Boolean=True;TotalizarColumnas:Boolean=True;
                conTitulosDeTotal:Boolean=True);
Var
   i,j:Integer;
   Total,gTotal : Real;
begin
   //Inicializar     
   if ColumnaFinal = 0 then ColumnaFinal := grd.ColCount-2;     
   if FilaFinal = 0 then FilaFinal := grd.RowCount-2;     
   If ColumnaTotales = 0 then ColumnaTotales := grd.ColCount-1;
   If FilaTotales = 0 then FilaTotales := grd.RowCount-1;
   If Grd.RowCount>=2 then
   Begin
        //Totalizar las filas
        If TotalizarFilas Then
        Begin
            gTotal := 0;
            For i:=FilaInicial to FilaFinal do
            Begin
              Total:=0;
              For j:=ColumnaInicial to ColumnaFinal do
              Begin
                 if grd.Cells[j,i]<>'' Then
                 Try
                    Total:=Total+StrToFloat(grd.Cells[j,i]);
                 Except
                 End;
              End;
              grd.Cells[ColumnaTotales,i]:=FloatToStr(Total);
              gTotal := gTotal + Total;
            End;
        End;
        //Totalizar las columnas
        If TotalizarColumnas Then
        Begin        
              gTotal := 0;
              For j:=ColumnaInicial to ColumnaFinal do
              Begin
                Total:=0;
                For i:=FilaInicial to FilaFinal do
                Begin
                   if grd.Cells[j,i]<>'' Then
                   Try
                      Total:=Total+StrToFloat(grd.Cells[j,i]);
                   Except
                   End;
                End;
                grd.Cells[j,FilaTotales]:=FloatToStr(Total);
                gTotal := gTotal + Total;
              End;                                                    
        End;
        if ConTitulosDeTotal Then
        Begin
             If TotalizarFilas Then Grd.Cells[ColumnaTotales,0] := cosTotal;
             If TotalizarColumnas then Grd.Cells[0,FilaTotales] := cosTotal;
        End;
        If (TotalizarColumnas And TotalizarFilas) Then
        Begin
            Grd.Cells[ColumnaTotales,FilaTotales]:=FloatToStr(gTotal);
        End;
   End;
End;
{****************************************************************
Procedimiento   : UnPrepare
Objetivo        : Cierra y suelta el prepare de un query
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure UnPrepare(aQuery : TQuery);
Begin
        With aQuery do
        Begin
             //Validarlo
             If (aQuery = Nil) or (Not Active) Then exit;
             //Cerrarlo
             Close;
             //Si está preparado, unprepare
             if Prepared Then unPrepare;
        End;
End;
{****************************************************************
Procedimiento   : SetDataSetEnabled
Objetivo        : Cambia el estado ControlsEnabled de un DataSet
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure SetDataSetEnabled(aDataSet : TDataSet; aControsEnabled : Boolean);
Begin
    //Validar el dataSource    
    If (aDataSet = Nil) Then Exit;
    If aControsEnabled Then aDataSet.EnableControls
    Else aDataSet.DisableControls;
End;
{****************************************************************
Procedimiento   : SetDataSetsEnabled
Objetivo        : Cambiar el estado ControlsEnabled de TODOS los
                  DataSet de una ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure SetDataSetsEnabled(aControl : TControl; aControlsEnabled : Boolean);
Var
        i       : Integer;
        j       : Integer;
Begin
     For i := 1 to aControl.ComponentCount do
     Begin
          //Ver si es un DataSet
          if (aControl.components[i-1] is TDataSet) Then
                //Afectarlo
                SetDataSetEnabled(aControl.Components[i-1] as TDataSet, aControlsEnabled);
          //Ver si es un Frame y buscar los componentes de datos
          if (aControl.components[i-1] is TFrame) Then
          Begin
               For j := 1 to aControl.components[i-1].ComponentCount do
               Begin
                    //Ver si es un DataSet
                    if (aControl.components[i-1].components[j-1] is TDataSet) Then
                       If (aControl.components[i-1].components[j-1] as TDataSet).Active then
                          //Afectarlo
                          SetDataSetEnabled(aControl.components[i-1].Components[j-1] as TDataSet, aControlsEnabled);
               End; {For j}
          End;{if}
     End;{For i}
End;
{****************************************************************
Procedimiento   : SetDataSourceAutoEdit
Objetivo        : Cambia el estado ControlsEnabled de un DataSource
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure SetDataSourceAutoEdit(aDataSource : TDataSource; aAutoEdit : Boolean);
Begin
    //Validar el dataSource    
    If (aDataSource = Nil) Then Exit;
    aDataSource.AutoEdit := aAutoEdit;
End;
{****************************************************************
Procedimiento   : SetDataSourcesAutoEdit
Objetivo        : Cambiar el estado del AutoEdit de TODOS los
                  DataSource de una ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure SetDataSourcesAutoEdit(aControl : TControl; aAutoEdit : Boolean);
Var
        i       : Integer;
        j       : Integer;
Begin
     For i := 1 to aControl.ComponentCount do
     Begin
          //Ver si es un DataSource
          if (aControl.components[i-1] is TDataSource) Then
                //Afectarlo
                SetDataSourceAutoEdit(aControl.Components[i-1] as TDataSource, aAutoEdit);
          //Ver si es un Frame y buscar los componentes de datos
          if (aControl.components[i-1] is TFrame) Then
          Begin
               For j := 1 to aControl.components[i-1].ComponentCount do
               Begin
                    //Ver si es un DataSource
                    if (aControl.components[i-1].components[j-1] is TDataSource) Then
                          SetDataSourceAutoEdit(aControl.components[i-1].Components[j-1] as TDataSource, aAutoEdit);
               End; {For j}
          End;{if}
     End;{For i}
End;
{****************************************************************
Procedimiento   : FormatoFecha
Objetivo        : Devuelve el formato general de fechas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 28 de 2004
Versión         : pcp4000
*****************************************************************}
Function FormatoFecha : String;
Begin
     Result := cosFormatoFecha;   
End;
{****************************************************************
Procedimiento   : FormatoFechaSQL
Objetivo        : Devuelve el formato de la fecha para las
                  consultas SQL
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 28 de 2004
Versión         : pcp4000
*****************************************************************}
Function FormatoFechaSQL : String;
Begin
    {$IFDEF PCP4}
    Result := _fmdi.tabl_pcp_opciones.FieldByName('moto_form_fecha').AsString;
    {$ELSE IF}
    Result := cosFormatoFechaSQL;
    {$ENDIF}
End;
{****************************************************************
Procedimiento   : dxDBGridSelectIn
Objetivo        : Genera los consecutivos que están seleccionados
                  en un dxDBGrid, separados por comas, 
                  para ser utilizados, por ejemplo, en un Select IN ()
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 28 de 2004
Versión         : pcp4000
*****************************************************************}
Function dxDBGridSelectIn(aGrid : tdxDBGrid; aNomb_Camp_Consecutivo : String;
        aTodosLosRegistros : Boolean = False):String;
Var
        var_comma       : String;
        var_contador    : Integer;
        var_consecutivo : Integer;
Begin
     //Inicializar
     result := '';
     var_comma := '';
     //Validar
     if (aGrid = Nil) or (aGrid.DataSource = Nil) or
         (aGrid.DataSource.DataSet = Nil) or Not(aGrid.DataSource.DataSet.Active) or
         ((aGrid.SelectedCount=0) and (Not aTodosLosRegistros)) or (aNomb_camp_consecutivo = '')
                then Exit;
     With aGrid do
        For var_contador := 1 to aGrid.DataSource.DataSet.RecordCount do
             If (aTodosLosRegistros) or (Items[var_contador - 1].Selected) then
             Begin
                  Try
                      var_consecutivo := 
                         StrToInt(Items[var_contador - 1].Strings[ColumnByFieldName(aNomb_Camp_Consecutivo).Index]);
                      Result := Result + var_comma + IntToStr(var_consecutivo);
                      if var_comma = '' then var_comma := ',';
                  Except
                  End;
             End;
End;
{****************************************************************
Procedimiento   : HayDatosGrid
Objetivo        : Indica si hay datos en un rango especificado de 
                  un TADVColumnGrid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 28 de 2004
Versión         : pcp4000
*****************************************************************}
Function HayDatosGrid(aGrid : TADVColumnGrid; aFilaInicial, aColumnaInicial, aFilaFinal, aColumnaFinal : Integer;
        aColumnaChequeo : Integer = -1) : Boolean;
Var
        var_Fila   : Integer;
        var_Colu   : Integer;
        var_estado      : Boolean;
Begin
    Result := False;
    //Validar los datos
    With aGrid do
    Begin
       If (aGrid = Nil) or 
         (aFilaInicial < 0) or (aFilaInicial > RowCount - 1) or (aFilaInicial > aFilaFinal) or
         (aColumnaInicial < 0) or (aColumnaInicial > ColCount - 1) or (aColumnaInicial > aColumnaFinal) or
         (aFilaFinal > RowCount - 1) or (aColumnaFinal > ColCount - 1) Then Exit;
         
        //Recorrer el grid
        For var_fila := aFilaInicial to aFilaFinal do
           For var_colu := aColumnaInicial to aColumnaFinal do
           Begin
               if (Cells[var_colu, var_fila] <> '') Then
               Begin
                      //Si no tiene columna de chequeo, ok
                      if (aColumnaChequeo = -1) Then
                      Begin
                          Result := True;
                          Exit;
                      End
                      Else
                      //Verificar si está checkeado
                      Begin
                           GetCheckBoxState(aColumnaChequeo, var_fila, var_estado);
                           if var_estado then
                           Begin
                                Result := True;
                                Exit;
                           End
                      End;
               End;
           End;
    End;
End;
{****************************************************************
Procedimiento   : SetTotalColumn
Objetivo        : Da formato (fuente y color) a una columna de total
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 12 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure SetTotalColumn(aColumna : TGridColumnItem; aReadOnly : Boolean = True);
Begin
        //Validar el parámetro de entrada
        if (aColumna = Nil) then Exit;
        //Asignar los valores
        aColumna.Font.Color := cocTotalText;
        aColumna.Color := cocTotal;
        aColumna.ReadOnly := aReadOnly;
End;

{****************************************************************
Procedimiento   : EncontrarVentana
Objetivo        : Determinar si una ventana tipo MDIChild
                  ya existe o ha sido creada en la aplicación
                  activa y devolver su número entre las child
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 16 de 2004
Versión         : pcp4000
*****************************************************************}
{________________OVERLOAD_____________}
//Por CLASE
Function EncontrarVentana(Clase:TFormClass; FocusWindow:Boolean = True):Integer;
Var
   i:Integer;
   var_existe : Boolean;
Begin
     // Este procedimiento verifica si una ventana MDIChild ha sido creada
     // y si debe darle el foco
     //....................................................................

     // Inicializar las variables
     //....................................................................
     Result:=-1;
     var_existe := False;
     // Validar la ventana que se está creando
     //....................................................................
     if (Application.MainForm = Nil) then Raise Exception.Create(cosNoCrearVentanasSinPadre);
     if (Application.MainForm.FormStyle <> fsMDIForm) Then Raise Exception.Create(cosNoEsVentanaMDI);
     // Recorrer las ventanas activas
     //....................................................................
     For i:=1 to Application.MainForm.MDIChildCount do
       Try
          // Buscar la ventana enviada
          //....................................................................
          If Application.Mainform.MDIChildren[i-1].ClassName=(Clase.ClassName) Then
          Begin
               var_existe:=True; //ya esta abierta
               Result:=i-1;
          End;
       Except
         var_existe:=False
       End;
       // Dar foco si es necesario
       //....................................................................
       If ((var_existe) and (FocusWindow)) Then
       Try
          Application.Mainform.MDIChildren[Result].Show;
       Except
       End;
End;
{****************************************************************
Procedimiento   : ExisteVentana
Objetivo        : Determinar si una ventana tipo MDIChild
                  ya existe o ha sido creada en la aplicación
                  activa y devolver su número entre las child
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 16 de 2004
Versión         : pcp4000
*****************************************************************}
Function EncontrarVentana(Titulo : String; FocusWindow:Boolean = True):Integer; Overload;
{________________OVERLOAD_____________}
//Por Titulo
Var
   i:Integer;
   var_existe : Boolean;
Begin
     // Este procedimiento verifica si una ventana MDIChild ha sido creada
     // y si debe darle el foco
     //....................................................................

     // Inicializar las variables
     //....................................................................
     var_existe:=False;
     Result:=-1;
     // Validar la ventana que se está creando
     //....................................................................
     if (Application.MainForm = Nil) then Raise Exception.Create(cosNoCrearVentanasSinPadre);
     if (Application.MainForm.FormStyle <> fsMDIForm) Then Raise Exception.Create(cosNoEsVentanaMDI);
     // Recorrer las ventanas activas
     //....................................................................
     For i:=1 to Application.MainForm.MDIChildCount do
       Try
          // Buscar la ventana enviada
          //....................................................................
          If UpperCase(Application.Mainform.MDIChildren[i-1].Caption)=UpperCase(Titulo) Then
          Begin
               var_Existe:=True; //ya esta abierta
               Result:=i-1;
          End;
       Except
         var_existe:=False
       End;
       // Dar foco si es necesario
       //....................................................................
       If ((var_existe) and (FocusWindow)) Then
       Try
          Application.Mainform.MDIChildren[Result].Show;
       Except
       End;
End;
{****************************************************************
Procedimiento   : AutoHints
Objetivo        : Asignar el caption al hint, en los componentes
                  que no tengan hint.
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure AutoHints(aControl : TControl; doSelfColor : Boolean = True);

    //Función para filtrar los componentes a los cuales se les cambiará el color
    Function SePuedeCambiarColor(aControl : TComponent) : Boolean;
    Begin
          Result :=
          (
                   (UpperCase(aControl.ClassName) = 'TPANEL')
                OR (UpperCase(aControl.ClassName) = 'TPCPFRAME')
                OR (UpperCase(aControl.ClassName) = 'TTBXTOOLBAR')
                OR (UpperCase(aControl.ClassName) = 'TTBXDOCK')
                OR (UpperCase(aControl.ClassName) = 'TTBXDOCKABLEPANEL')
                OR (UpperCase(aControl.ClassName) = 'TSCROLLBOX')
                OR (UpperCase(aControl.ClassName) = 'TFFRA_PROD_SELE_ESPIGA')
                OR (UpperCase(aControl.ClassName) = 'TFFRA_REFE_MATERIAL')
                OR (UpperCase(aControl.ClassName) = 'TFFRA_PROD_SELE_LOTE')
          );
    End;

Var
        i       : Integer;
        var_caption  : String;
begin
  Try
     //Cambiar el propio color
     {$IFDEF SCL_GRADIENTES}
     Try
         if (aControl <> Nil) and (doSelfColor) then
            if (IsPublishedProp(aControl, 'Color')) and
                (aControl.Tag <> -99) Then
                  SetPropValue(TObject(aControl), 'Color', clFondoAplicacion);
     Except
     End;
     {$ENDIF}
     //Recorrer los componentes del control
     For i := 1 to aControl.ComponentCount do
     Begin
          //Ver si tiene públicas las propiedades Caption y Hint
          if (IsPublishedProp(aControl.Components[i - 1], 'Caption')) and (IsPublishedProp(aControl.Components[i - 1], 'Hint')) and
                (IsStoredProp(aControl.Components[i - 1], 'Caption')) and Not(IsStoredProp(aControl.Components[i - 1], 'Hint')) Then
          Begin
                 var_caption := VarToStr(GetPropValue(aControl.Components[i - 1], 'Caption'));
                 SetPropValue(TObject(aControl.Components[i - 1]), 'Hint', var_caption);
          End;
          If ((IsPublishedProp(aControl.components[i - 1], 'Style')) and (IsPublishedProp(aControl.components[i - 1], 'StyleController'))
            and Not(IsPublishedProp(aControl.components[i - 1], 'ValueChecked'))
            and Not(IsPublishedProp(aControl.components[i - 1], 'Checked'))) then
            Begin
                Try
                    tCustomDxEdit(aControl.components[i - 1]).Style.AssignedValues := [];
                    tCustomDxEdit(aControl.components[i - 1]).Style.BorderColor := clLineaGradiente;
                    tCustomDxEdit(aControl.components[i - 1]).Style.BorderStyle := xbsThick;
                    tCustomDxEdit(aControl.components[i - 1]).Style.ButtonStyle := btsHotFlat;
                    tCustomDxEdit(aControl.components[i - 1]).Style.ButtonTransparence := ebtNone;
                Except
                End;
            End;
          //Si es un TPCPLookUpComboEdit darle 3d
          if (aControl.components[i - 1] is TPCPLookUpComboEdit) then (aControl.components[i - 1] as TPCPLookUpComboEdit).Ctl3D := True
          else
          //Si es un DXDBGrid darle color
          if (aControl.components[i - 1] is TdxDBGrid) then ColorGrid(aControl.components[i - 1] as TdxDBGrid)
          else
          //Si es un dxTreeList darle color
          if (aControl.components[i - 1] is tDxTreeList) then ColorGrid(aControl.components[i - 1] as tdxTreeList)
          Else
          //Si es un dxDbTreeList darle color
          if (aControl.components[i - 1] is tDxDbTreeList) then ColorGrid(aControl.components[i - 1] as tdxDBTreeList)
          else
          //Si es un TSCLcolumnGrid darle color
          if (aControl.components[i - 1] is TSCLColumnGrid) then ColorGrid(aControl.components[i - 1] as TSCLColumnGrid)
          else
          //Si es un TADVcolumnGrid darle color
          if (aControl.components[i - 1] is TADVColumnGrid) then ColorGrid(aControl.components[i - 1] as TADVColumnGrid)
          else
          //Si es un TSplitter darle color
          if (aControl.components[i - 1] is TdfsSplitter) then colorSplitter(aControl.components[i - 1] as TdfsSplitter)
          else
          //Si es un TDecisionGrid darle color
          if (aControl.components[i - 1] is tDecisionGrid) then ColorGrid(aControl.components[i - 1] as TDecisionGrid)
          else
          //Si es un TDBChart, darle color
//          if (aControl.components[i - 1] is tDBChart) then ColorDBChart(aControl.components[i - 1] as TDBChart)
//          else
          //Si es un tdxPageControl, tipo Flat
          if (aControl.components[i - 1] is tdxPageControl) then
          Begin
                (aControl.components[i - 1] as tdxPageControl).Style := dxtsFlat;
                (aControl.components[i - 1] as tdxPageControl).TabStop := False;
          End
          else
          //Si es un sclpage cambiar por rendindos
          if (aControl.components[i - 1] is tSCLPageControl) then
          Begin
                (aControl.components[i - 1] as TSCLPageControl).TabStyle := tsRoundCorners;//tsSingleSlant;
          End
          {Else
          //TADVPageControl
          if (aControl.components[i - 1] is TADVPageControl) then
          Begin
                With (aControl.components[i - 1] as TADVPageControl) do
                Begin
                        ActiveColor := clInicioGradiente;
                        ActiveColorTo := clFinGradiente;
                        DefaultTabColor := clFondoAplicacion;
                        DefaultTabColorTo := clNone;
                        DefaultTextColor := clBlack;
                        HotTrack := False;
                        LowerActive := 2;
                        RoundEdges := False;
                        ShowFocus := True;
                        TabMargin.LeftMargin := 10;
                        TabHeight := 21;
                        TabBackGroundColor := clFondoAplicacion;
                        TabBorderColor := clLineaGradiente;
                        TabHoverBorder := clNone;
                        TabHoverColor := clNone;
                        TabHoverColorTo := clNone;
                        TabSheetBorderColor := clLineaGradiente;
                        TabStyle := tsDotNet;
                End
          End}
          Else
          //Si es tdxDBDateEdit
          if (aControl.components[i - 1] is tdxDBDateEdit) then (aControl.components[i - 1] as tdxDBDateEdit).UseEditMask := True
          Else
          //Si es tdxDateEdit
          if (aControl.components[i - 1] is tdxDateEdit) then (aControl.components[i - 1] as tdxDateEdit).UseEditMask := True


          ;
          //Cambiar el color a ZEBRA en el fondo
          If (SePuedeCambiarColor(aControl.Components[i - 1])) Then
                if (IsPublishedProp(aControl.Components[i - 1], 'Color')) and
                    (aControl.Components[i - 1].Tag <> -99) Then
                    SetPropValue(TObject(aControl.Components[i - 1]), 'Color', clFondoAplicacion);
          //Llamar el procedimiento de manera recursiva para recorrer los hijos
          If (aControl.Components[i - 1] is TControl) Then
                AutoHints(aControl.Components[i - 1] as TControl, False);
     End;{For i}
  Except
      On e:Exception do
         EjecutarMensajeError(e.Message);
  End;
  ProgresoBarraEstado;
End;
{****************************************************************
Procedimiento   : InicializarCombo
Objetivo        : Asigna el valor del registro (puntero) en el cual    
                  se encuentra la lista de un combo DBAware (PCPLookUpComboEdit)
                  Si aEscapeClear es False, deshabilita la opción de
                  limpiar el combo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure InicializarCombo(aCombo : TPCPLookUpComboEdit; aEscapeClear : Boolean =  False);
Begin
        //Validar los componentes
        if (aCombo = Nil) or (aCombo.ListSource = Nil) or (aCombo.ListSource.DataSet = Nil) or
           (Not aCombo.ListSource.DataSet.Active) or (aCombo.ListSource.DataSet.RecordCount = 0)
           or (aCombo.keyField = '') Then
                Exit;
        //Asignar el valor (en un Try para que no muestre error)
        Try
              aCombo.KeyValue := aCombo.ListSource.DataSet.FieldByName(aCombo.KeyField).AsString;
              //Asignar el limpiado del combo con ESCAPE
              aCombo.EscapeClear := aEscapeClear;
        Except
        End;
End;
{****************************************************************
Procedimiento   : doControlError
Objetivo        : Cambia el color del control enviado para 
                  avisar visualmente al usuario
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure doControlError(Sender: TPanel; aColor : TColor = clRed; 
        aRepeticiones : Integer = 3; aEspera : Integer = 100);
var
        vcolo_control   : TColor;  
        var_integer     : Integer;
begin
  if not IsPublishedProp(Sender, 'COLOR') Then Exit;
  vcolo_control := getPropValue(Sender, 'COLOR', false);
  for var_integer := 1 to aRepeticiones do
  Begin
        SetPropValue(Sender, 'COLOR', aColor);
        Sender.Update;
        Sleep(aEspera);
        SetPropValue(Sender, 'COLOR', vColo_control);
        Sender.Update;
        Sleep(aEspera);
  End;
end;
{****************************************************************
Procedimiento   : doInicializarPermisos
Objetivo        : Inicializa una ventana o control (con sus
                  DBObjects) ReadOnly, de acuerdo con los
                  permisos encontrados
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 31 de 2004
Versión         : pcp4000
*****************************************************************}
{$IFDEF PCP4}
Function doInicializarPermisos(aControl : TControl; aAsignarSoloLectura : Boolean = True):Boolean;
Var
        var_tien_permiso   : Boolean;
        var_solo_lectura   : boolean;
begin
  Result := False;
  Try
     //Verificar si tiene permiso
     if Not (_fmdi.quer_abri_permisos.Active) Then var_tien_permiso := False
     Else var_tien_permiso := (_fmdi.quer_abri_permisos.Locate('menu', var_ulti_menu, []));
     //Verificar que tenga permiso de escritura
     var_solo_lectura := True;
     if var_tien_permiso then
     Begin
        if (_fmdi.quer_abri_permisos.Active) Then
               var_solo_lectura := (_fmdi.quer_abri_permisos.FieldByName('escritura').Value = -1) and (aAsignarSoloLectura)
        Else
               var_solo_lectura := False;
     End;
     //Recorrer los componentes del control
     {For i := 1 to aControl.ComponentCount do
     Begin
          //Ver si tiene públicas las propiedades Caption y Hint
          if (IsPublishedProp(aControl.Components[i - 1], 'ReadOnly')) Then
            Begin
                 //Deshabilitar los controles
                 SetPropValue(TObject(aControl.Components[i - 1]), 'ReadOnly', var_solo_lectura);
            End;
          //Llamar el procedimiento de manera recursiva para recorrer los hijos
          If (aControl.Components[i - 1] is TControl) Then
                doInicializarPermisos(aControl.Components[i - 1] as TControl, aAsignarSoloLectura);
     End; }
     Result := (var_tien_permiso) and (Not var_solo_lectura);
  Except
      On e:Exception do
         EjecutarMensajeError(e.Message);
  End;
  if var_usua_activo = 'SYSDBA' Then
     Result := True;
  ProgresoBarraEstado;
End;
{$ENDIF}
{****************************************************************
Procedimiento   : LlamarDatosTablaTXT
Objetivo        : Carga los datos de un recurso del programa
                  en una tabla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 15 de 2004
Versión         : pcp4003
*****************************************************************}
{Procedure LlamarDatosTablaTXT(peTabla : TJVCsvDataSet; peRecurso: String;
    peTipoRecurso : String = 'TEXTDB'; peAbrirTabla : Boolean = True);
VAR
    var_Strings : TStringList;
    var_Stream  : TResourceStream;
begin
    //Validar los parámetros de entrada
    if (peTabla = Nil) or (peRecurso = '') or
       (peTipoRecurso = '') then exit;
    //Cambiar los parámetros de la tabla
    if (peTabla.Active) then peTabla.Close;
    peTabla.loadsFromFile := False;
    //Cargar la tabla en memoria
    var_Strings := TStringList.Create;
    var_Stream := TResourceStream.Create(hInstance, pChar(peRecurso), pChar(peTipoRecurso));
    TRY
        var_strings.LoadFromStream(var_Stream);
        petabla.AssignFromStrings(var_strings);
        if peAbrirTabla then peTabla.open;
    Except
        on e:Exception do
            MessageDlg(e.Message, mtError, [mbOk], 0);
    END;
    if (var_strings <> Nil) then var_strings.Free;
    if (var_stream <> Nil) then var_stream.free;
End;  }
{****************************************************************
Procedimiento   : CheckAndPostDataSet
Objetivo        : Verifica si un TDataSet está en estado de edición
                  y lo guarda  
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 22 de 2004
Versión         : pcp4003
*****************************************************************}
Procedure CheckAndPostDataSet(aDataSet : TDataSet);
Begin
    //Validar el DataSet
    if (aDataSet =Nil) or Not(aDataSet.Active) then
        Exit;
    //Check&Post
    if (aDataSet.State in [dsEdit, dsInsert]) Then
        aDataSet.Post;
End;
{****************************************************************
Procedimiento   : CheckAndEditDataSet
Objetivo        : Edita un DataSet cuando su estado sea diferente
                  a edición o inserción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure CheckAndEditDataSet(aDataSet : TDataSet);
Begin
    //Validar el DataSet
    if (aDataSet =Nil) or Not(aDataSet.Active) then
        Exit;
    //Check&Post
    if Not(aDataSet.State in [dsEdit, dsInsert]) Then
        aDataSet.Edit;
End;
{****************************************************************
Procedimiento   : FechaSQL
Objetivo        : Convierte un TDate al formato SQL de la base de datos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 26 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
Function FechaSQL(peFecha : TDate) : String;
Begin
    Result := FormatDateTime(FormatoFechaSQL, peFecha);
End;

{****************************************************************
Procedimiento   : RefreshWindowDataSets
Objetivo        : Actualizar TODOS los DataSet de un control
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 26 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
Procedure RefreshWindowDataSets(peControl : TControl);
Var
        i       : Integer;
        j       : integer;
begin
  {$IFDEF PCP4}
  ProgresoBarraEstado(cosActualizandoDatos);
  {$ENDIF}
  Try
     //Recorrerlos
     For i := 1 to peControl.ComponentCount do
     Begin
          //Ver si es un DataSet
          if (peControl.components[i-1] is TDataSet) Then
          Begin
             If ((peControl.components[i-1] as TDataSet).Active) and
                ((peControl.components[i-1] as TDataSet).State = dsBrowse) then
                //Actualizarlo
                RefreshDataSet(peControl.Components[i-1] as TDataSet, False, False);
          End;
          //Ver si es un Frame y buscar los componentes de datos
          if (peControl.components[i-1] is TFrame) Then
          Begin
               For j := 1 to peControl.components[i-1].ComponentCount do
               Begin
                    //Ver si es un DataSet
                    if (peControl.components[i-1].components[j-1] is TDataSet) Then
                    Begin
                       If ((peControl.components[i-1].components[j-1] as TDataSet).Active) And
                          ((peControl.components[i-1].components[j-1] as TDataSet).State = dsBrowse) then
                          //Actualizarlo
                          RefreshDataSet(peControl.components[i-1].Components[j-1] as TDataSet, False, False);
                    End;
               End;
          End;
     End;
  Except
      On e:Exception do
         EjecutarMensajeError(e.Message);
  End;
  {$IFDEF PCP4}
  ProgresoBarraEstado;
  {$ENDIF}
End;
{****************************************************************
Procedimiento   : RoundBy
Objetivo        : Redondea un número real hacia arriba o hacia abajo
                  dependiendo de el parametro de redondeo inicial
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 01 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
Function RoundBy(peValor, peRoundFrom : Real) : Integer;
Var
    var_part_entera : Integer;
    var_diferencia  : Real;
Begin
    //Hallar la parte entera
    var_part_entera := Trunc(Int(peValor));
    //Hallar la diferencia
    var_diferencia := peValor - var_part_entera;
    //Comparar con lo solictado
    if var_diferencia >= peRoundFrom then
        Result := var_part_entera + 1
    Else
        Result := var_part_entera;
End;
{****************************************************************
Procedimiento   : AjustarGrids
Objetivo        : Ajusta los grids pertenecientes al objeto solicitado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 12 de 2004
Versión         : pcp4.0.0.12
*****************************************************************}
Procedure AjustarGrids(peControl : TControl);
Var
        i       : Integer;
        j       : integer;
begin
  {$IFDEF PCP4}
  ProgresoBarraEstado(cosActualizandoDatos);
  {$ENDIF}
  Try
     //Recorrerlos
     For i := 1 to peControl.ComponentCount do
     Begin
          //Ver si es un TADVColumnGrid
          if (peControl.components[i-1] is TAdvColumnGrid) Then
                AjustarGrid(peControl.Components[i-1] as TadvColumnGrid)
          Else
          if (peControl.components[i-1] is TSCLColumnGrid)
          Then
                AjustarGrid(peControl.Components[i-1] as TSCLColumnGrid)
           //Ver si es TdxDBGrid
           Else
           If (peControl.components[i-1] is TdxDBGrid) Then
                AjustarGrid(peControl.Components[i-1] as TdxDBGrid)
           Else
           If (peControl.components[i-1] is TSCLDBGrid) Then
                AjustarGrid(peControl.Components[i-1] as TSCLDBGrid);
          //Ver si es un Frame y buscar los componentes de datos
          if (peControl.components[i-1] is TFrame) Then
          Begin
               For j := 1 to peControl.components[i-1].ComponentCount do
               Begin
                    //Ver si es un StringGrid
                    if (peControl.components[i-1].components[j-1] is TadvColumnGrid) Then
                          AjustarGrid(peControl.components[i-1].Components[j-1] as TAdvColumnGrid)
                    Else
                    if (peControl.components[i-1].components[j-1] is TSCLColumnGrid) Then
                          AjustarGrid(peControl.components[i-1].Components[j-1] as TSCLColumnGrid)
                    Else
                    //Ver si es un DBGrid
                    if (peControl.components[i-1].components[j-1] is TdxDbGrid) Then
                          AjustarGrid(peControl.components[i-1].Components[j-1] as TdxDbGrid)
                    Else
                    If (peControl.components[i-1].components[j-1] is TSCLDbGrid) Then
                          AjustarGrid(peControl.components[i-1].Components[j-1] as TSCLDbGrid);
               End;
          End;
     End;
  Except
      On e:Exception do
         EjecutarMensajeError(e.Message);
  End;
  {$IFDEF PCP4}
  ProgresoBarraEstado;
  {$ENDIF}
End;
{****************************************************************
Procedimiento   : IntToCodBarras
Objetivo        : Convierte un entero a un string con ceros a la 
                  izquierda (el número de posiciones indicado)
                  para ser utilizado en los códigos de barras
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Function IntToCodBarras(aEntero, aPosiciones:Integer):String;
Var
   FCadena:String;
   I:Integer;
Begin
     Try
        FCadena:=IntToStr(aEntero);
        If Length(FCadena)<=aPosiciones Then
           For i:=1 To (aPosiciones-Length(FCadena)) Do
              Insert('0',FCadena,1)
        Else {*Cuando el codigo de barras es mayor a 99999*}
            EjecutarMensajeError(cosErrorCodigoBarrasDemasiadosDigitos,Error);
     Except
       FCadena:='';
       For i:=1 To aPosiciones Do Insert('0',FCadena,1);
     End;
     Result:=FCadena;
End;
{****************************************************************
Procedimiento   : ColorDBChart
Objetivo        : Da color estándar a los DBchart
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************
Procedure ColorDBChart(peDBChart : TDBChart);
var
        var_i   : Integer;
Begin
  if (peDBChart = Nil) Then Exit;
  if peDBChart.Tag = -1 Then Exit;
  With peDBChart do
  Begin
    Color := clFondoAplicacion;
    if SeriesList.Count > 0 Then
    Begin
       SeriesList[0].SeriesColor := clFinGradienteHard;
       For var_i := 1 to SeriesList.count do
          SeriesList[var_i - 1].Pen.Width := 2;
    End;
    leftWall.Color := clInicioGradiente;
    AnimatedZoom := True;
  End;
End;
{****************************************************************
Procedimiento   : Reemplazar
Objetivo        : Reemplaza una cadena de caracteres con otra
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Function Reemplazar(Const pe_Cadena, pe_valo_actual, pe_valo_nuevo :String) : String;
Var
    var_posicion   : Integer;
Begin
   Result := pe_cadena;
   If Length(Result) = 0 Then Exit;
   While (Pos(pe_Valo_actual, Result) > 0) do
   Begin
     var_posicion := Pos(pe_Valo_actual, Result);
     System.Delete(Result, var_posicion, 1);
     System.Insert(pe_valo_nuevo, Result, var_posicion);
   End;
End;
{****************************************************************
Procedimiento   : EncontrarControl
Objetivo        : Busca un control por su nombre
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 16 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
Function EncontrarComponente(peNombre : String; peControlInicioBusqueda : TComponent) : TComponent;
Var
    var_i   : Integer;
Begin
    //Validar
    Result := Nil;
    if (peControlInicioBusqueda = Nil) then Exit;
    //Ver si él es el control
    If UpperCase(peControlInicioBusqueda.Name) = UpperCase(peNombre) Then
    Begin
      Result := peControlInicioBusqueda;
      Exit;
    End;
    //Recorrer los sub-controles
    for var_i := 1 To peControlInicioBusqueda.ComponentCount do
    Begin
         Result := EncontrarComponente(peNombre, peControlInicioBusqueda.Components[var_i - 1]);
         if Result <> nil Then Exit;
    End;
End;
{****************************************************************
Procedimiento   : doEjecutarDialogoAbrirReporte
Objetivo        : Ejecuta el dialogo de abrir un reporte FORTES para edición
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function doEjecutarDialogoAbrirReporte(peModulo : String) : Integer;
Var
    var_r : Integer;
Begin
  Result := -1;
  if peModulo = '' Then Exit;
  Application.CreateForm(Tfn0_dial_abrir, fn0_dial_abrir);
  var_r := fn0_dial_abrir.Execute(toaInformesEnChild, peModulo);
  Result := var_r;
End;

{****************************************************************
Procedimiento   : GetWindowsDir
Objetivo        : Devuelve la ruta del directorio de Windows
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
function GetWindowsDir: TFileName;
var
  WinDir: array [0..MAX_PATH - 1] of char;
begin

   SetString(Result, WinDir, GetWindowsDirectory(WinDir, MAX_PATH));
   if Result = '' then
     raise Exception.Create(SysErrorMessage(GetLastError))
   Else
      Result := Result + '\';
end;
{****************************************************************
Procedimiento   : GetSystemDir
Objetivo        : Devuelve la ruta de el directorio de sistema de Windows
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
function GetSystemDir: TFileName;
var
   SysDir: array [0..MAX_PATH-1] of char;
begin
   SetString(Result, SysDir, GetSystemDirectory(SysDir, MAX_PATH));
   if Result = '' then
      raise Exception.Create(SysErrorMessage(GetLastError))
   Else
        Result := Result + '\';

end;
{****************************************************************
Procedimiento   : GetProgramFilesDir
Objetivo        : Devuelve la ruta de el directorio de los
                  Archivos de Programa de Windows
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
function GetProgramFilesDir: TFileName;
begin
   Result := '';
   //GetRegistryData(HKEY_LOCAL_MACHINE, '\Software\Microsoft\Windows\CurrentVersion', 'ProgramFilesDir');
end;
(***************************************************************)
(* Nombre      : GetTempDir
(* Creador     : Edgar Fernando Rodriguez P.
(* Fecha       : 01 de Diciembre de 2006
(* Versión     : PCP4.0.30.04
(* Descripción : Retorna el directorio Temporal del usuario
(*
(***************************************************************)
function GetTempDir: TFileName;
var TempDir : array [0..MAX_PATH-1] of Char;
  r : Integer;
begin
  r := Windows.GetTempPath(MAX_PATH, @TempDir);
  if r > 0 then Result := StrPas(TempDir)
  else Result := '';
end;
{****************************************************************
Procedimiento   : CentrarControl
Objetivo        : Centra un control en su padre
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure CentrarControl(peControl : TWinControl);
Begin
    if (peControl = Nil) Then Exit;
    peControl.Left := (peControl.Parent.Width div 2) - (peControl.Width div 2);
    peControl.Top :=  (peControl.Parent.Height div 2) - (peControl.Height div 2);
End;
{****************************************************************
Procedimiento   : doEjecutarDialogoAbrirComboDataSet
Objetivo        : Mostrar el diálogo de selección en un combo desde un DataSet
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Sep-2005
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure doEjecutarDialogoAbrirComboDataSet(peTitulo : String; peDataSet : TDataSet;
                peKeyField, peListField : String);
Begin
    if peTitulo = '' Then peTitulo := cosSeleccionar;
    if peDataSet = Nil Then Exit;
    if peKeyField = '' Then Exit;
    if peListField = '' Then Exit;
    Application.CreateForm(Tfn0_dial_sele_comb_dataset, fn0_dial_sele_comb_dataset);
    fn0_dial_sele_comb_dataSet.Ejecutar(peTitulo, peDataSet, peKeyField, peListField);
End;
{****************************************************************
Procedimiento   : isSysDBA
Objetivo        : Indica si el usuario activo es el SYSDBA
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function isSysDBA : Boolean;
Begin
        Result := (var_usua_activo = 'SYSDBA');
End;



end.






