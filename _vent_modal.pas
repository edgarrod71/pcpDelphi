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
        Unit            : _vent_modal
        Objetivo        : Ventana maestra para edicion de registros
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero de 2004
        Versión         : pcp4000
*******************************************************************}

{$I DEFINICIONES.INC}

unit _vent_modal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TB2Item, TBX, TB2Dock, TB2Toolbar, DBActns, ActnList, Db, ImgList,
  ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, StdCtrls,
  SCLPropiedadesForm, dbtables,
  dxPageControl, dxExEdtr, SoCtrls, SCLDBLabel, AdvPanel,
  PictureContainer, RxMemDS, SoTools, JvExControls, JvComponent,
  JvGradientHeaderPanel, Boxes, PCPProceso, _Traductor;

type
  T_fvent_modal = class(TForm)
    _DBFecha_Creacion: TdxDBEdit;
    _DBUsuario: TdxDBEdit;
    _LFecha_Creacion: TSCLDBLabel;
    _LUsuario: TSCLDBLabel;
    acti_padr_cancelar_2: TAction;
    data_ventana: TDataSource;
    imag_pequenas: TImageList;
    Imagenes_Botones_Pequenos: TImageList;
    padr_acciones: TActionList;
    padr_acti_aceptar: TAction;
    padr_acti_actualizar: TDataSetRefresh;
    padr_acti_ayuda: TAction;
    padr_acti_buscar: TAction;
    padr_acti_cancelar: TDataSetCancel;
    padr_acti_Data_anterior: TDataSetPrior;
    padr_acti_Data_primero: TDataSetFirst;
    padr_acti_Data_siguiente: TDataSetNext;
    padr_acti_Data_ultimo: TDataSetLast;
    padr_acti_duplicar: TAction;
    padr_acti_elim_todos: TAction;
    padr_acti_eliminar: TDataSetDelete;
    padr_acti_expo_arch_sepa_comas: TAction;
    padr_acti_expo_HTML: TAction;
    padr_acti_expo_xls: TAction;
    padr_acti_guar_cerrar: TDataSetPost;
    padr_acti_guardar: TDataSetPost;
    padr_acti_imprimir: TAction;
    padr_acti_modificar: TDataSetEdit;
    padr_acti_nuevo: TDataSetInsert;
    padr_acti_salir: TAction;
    padr_barra: TTBXToolbar;
    padr_beve_1: TBevel;
    padr_beve_abajo: TBevel;
    padr_boto_aceptar: TTBXItem;
    padr_boto_actualizar: TTBXItem;
    padr_boto_ayuda: TTBXItem;
    padr_boto_buscar: TTBXItem;
    padr_boto_cancelar: TTBXItem;
    padr_boto_cerrar: TTBXItem;
    padr_boto_eliminar: TTBXItem;
    padr_boto_guar_cerrar: TTBXItem;
    padr_boto_guardar: TTBXItem;
    padr_boto_imprimir: TTBXItem;
    padr_boto_modificar: TTBXItem;
    padr_boto_nuevo: TTBXItem;
    padr_boto_regi_anterior: TTBXItem;
    padr_boto_regi_primero: TTBXItem;
    padr_boto_regi_siguiente: TTBXItem;
    padr_boto_regi_ultimo: TTBXItem;
    padr_boto_vinculos: TTBXSubmenuItem;
    padr_dock_arriba: TTBXDock;
    padr_esti_panel: TAdvPanelStyler;
    padr_esti_sugerencias: TAdvPanelStyler;
    padr_estilo: TdxEditStyleController;
    padr_estilo_chec: TdxCheckEditStyleController;
    padr_imag_tem1_colo: TImageList;
    padr_pane_arriba: TPanel;
    padr_pane_info: TPanel;
    padr_pane_principal: TPanel;
    padr_pane_sepa_1: TPanel;
    padr_pict_container: TPictureContainer;
    padr_quer_consecutivo: TQuery;
    padr_sepa_1: TTBXSeparatorItem;
    padr_sepa_2: TTBXSeparatorItem;
    padr_sepa_31: TTBSeparatorItem;
    padr_sepa_33: TTBSeparatorItem;
    padr_sepa_new: TShape;
    padr_shap_xp_down: TShape;
    padr_shap_xp_up: TShape;
    pane_beve_abajo: TPanel;
    PCPProceso1: TPCPProceso;
    Tabla_Ventana: TTable;
    Variables: TSCLPropiedadesForm;
    padr_acti_busc_lista: TAction;
    padr_boto_busc_lista: TTBXItem;
    procedure data_ventanaStateChange(Sender: TObject);
    procedure doActualizarPadre(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure padr_acti_actualizarClick(Sender: TObject);
    procedure padr_acti_cancelarExecute(Sender: TObject);
    procedure padr_acti_duplicarExecute(Sender: TObject);
    procedure padr_acti_eliminarExecute(Sender: TObject);
    procedure padr_acti_guar_cerrarExecute(Sender: TObject);
    procedure padr_acti_guardarExecute(Sender: TObject);
    procedure padr_acti_modificarExecute(Sender: TObject);
    procedure padr_acti_modificarUpdate(Sender: TObject);
    procedure padr_acti_nuevoExecute(Sender: TObject);
    procedure padr_acti_salirExecute(Sender: TObject);
    procedure Padr_Busq_AreaExecute(Sender: TObject);
    procedure Padr_Busq_BodegaExecute(Sender: TObject);
    procedure Padr_Busq_CargoExecute(Sender: TObject);
    procedure Padr_Busq_Cent_CostosExecute(Sender: TObject);
    procedure Padr_Busq_DepartamentoExecute(Sender: TObject);
    procedure Padr_Busq_EmpresaExecute(Sender: TObject);
    procedure padr_busq_improductivoExecute(Sender: TObject);
    procedure padr_busq_maqu_familiaExecute(Sender: TObject);
    procedure padr_busq_maqu_grupoExecute(Sender: TObject);
    procedure padr_busq_maqu_ingresoExecute(Sender: TObject);
    procedure padr_busq_maqu_marcaExecute(Sender: TObject);
    procedure padr_busq_maqu_tipo_puntadaExecute(Sender: TObject);
    procedure Padr_Busq_MunicipiosExecute(Sender: TObject);
    procedure Padr_Busq_Nive_SalarialExecute(Sender: TObject);
    procedure Padr_Busq_PaisExecute(Sender: TObject);
    procedure Padr_Busq_Peri_PagoExecute(Sender: TObject);
    procedure Padr_Busq_PersonalExecute(Sender: TObject);
    procedure Padr_Busq_PlantaExecute(Sender: TObject);
    procedure padr_busq_refe_estampadosExecute(Sender: TObject);
    procedure padr_busq_refe_lavadosExecute(Sender: TObject);
    procedure padr_busq_refe_marcasExecute(Sender: TObject);
    procedure Padr_Busq_SeccionExecute(Sender: TObject);
    procedure Padr_Busq_TemporadaExecute(Sender: TObject);
    procedure Padr_Busq_Tipo_ContratoExecute(Sender: TObject);
    procedure Padr_Busq_Tipo_DocumentoExecute(Sender: TObject);
    procedure Padr_Busq_TurnoExecute(Sender: TObject);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure Tabla_VentanaAfterPost(DataSet: TDataSet);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure padr_acti_busc_listaExecute(Sender: TObject);
    procedure Tabla_VentanaAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
    NecesitaActualizarTitulo : Boolean;
    var_titu_adicionando        : String;
    var_ver_boto_avance : Boolean;
    {$IFDEF FRAME_IMAGEN}
    Procedure AjustarComponentesFrameFotografia(Sender : TControl);
    Procedure SetVerBotonesAvance(peValor : Boolean);
    {$ENDIF}
  public
    { Public declarations }
    CaptionVentanaPadre                : String;
    NecesitaActualizar : Boolean;
    var_cerr_al_cancelar        : Boolean;
    var_vent_inicializada       : Boolean;
    Procedure doInsertar(peTextoTitulo : String; peFormStyle : TFormStyle = fsMdiChild);
    Procedure doModificar(peCamposDeBusqueda, peCampoAMostrar : String;
        peIden_registro : Variant; peTextoTitulo : String; peFormStyle : TFormStyle = fsMdiChild;
        peShowModal : Boolean = False);
    Procedure doConsultar(peCamposDeBusqueda, peCampoAMostrar : String;
        peIden_registro : Variant; peTextoTitulo : String; peFormStyle : TFormStyle = fsMdiChild;
        peShowModal : Boolean = False);
    Procedure doEstadoAcciones(peEstado : Boolean = False;
        peAfectarVisibles : Boolean = True);
    Function VerificarPermisosAccionesDB (peAbortarAcciones : Boolean = True) : Boolean;
  Published
    Property ver_Boton_Avance : Boolean Read var_ver_boto_avance Write SetVerBotonesAvance;
  end;

  var
  _fvent_modal: T_fvent_modal;

implementation

uses  _cons_pcp, _vari_pcp, _vent_child, _func_varias, _cons_colores
        {$IFDEF PCP4},_MDI{$ENDIF}
        {$IFDEF FRAME_IMAGEN} , ufra_fotografiadb, _func_pcp {$ENDIF}
    , MISPROC2;


{$R *.DFM}
procedure T_fvent_modal.padr_acti_salirExecute(Sender: TObject);
begin
   // Cerrar la ventana
   //....................................................................
   Close;
end;

procedure T_fvent_modal.FormClose(Sender: TObject;
  var Action: TCloseAction);
Begin
    //Actualizar Padre
    if NecesitaActualizar Then doActualizarPadre(Self);
    {$IFDEF BARRA_MDI}
    //Liberar la barra del MDI
    _fmdi.ActualizarAcciones(Sender);
    {$ENDIF}
    // Liberar la ventana una vez cerrada
    //....................................................................
    Release;
end;

procedure T_fvent_modal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    // Liberar la ventana una vez cerrada
    //....................................................................

  //Se verifica que el Dataset no este vacio
  If data_ventana.DataSet <> nil Then
	  //Se verifica si el Dataset esta en inserción o Edición
		If data_ventana.DataSet.State in [dsInsert, dsEdit] Then
		  //Se pregunta si desea guardar, no guardar o cancelar
      Case EjecutarMensaje(cosDeseaGuardar, mtConfirmation, [mbYes, mbNo, mbCancel], 0) Of
        mrYes: if not variables.sololectura then data_ventana.DataSet.Post;
        mrNo: data_ventana.DataSet.Cancel;
        mrCancel: CanClose := False;
      End;
end;

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar los objetos de la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 12 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.FormCreate(Sender: TObject);
begin
    Self.Color := clFondoAplicacion;
    SetVerBotonesAvance(True);
    padr_estilo.BorderColor := clLineaGradiente;
    AutoHints(Self, True);
    {$IFDEF PCP4}
      Variables.SoloLectura := Not doInicializarPermisos(Self);
      Variables.ColorRequerido := cocRequerido;
      imag_pequenas.Assign(_fmdi.imagenesPCP);
    {$ENDIF}
    padr_sepa_new.Pen.Color := clLineaGradiente;
    {$IFDEF BARRA_MDI}
      padr_barra.Visible  := False;
      padr_pane_sepa_1.Visible := False;
      padr_acti_nuevo.Enabled := True;
      padr_acti_nuevo.Visible := True;
      padr_acti_nuevo.DataSource := data_ventana;
    {$ENDIF}
    //Inicializar las variables locales
    padr_pane_principal.BevelOuter := bvNone;
    var_titu_adicionando := '';
    var_vent_inicializada := False;
    var_cerr_al_cancelar := True;
    CaptionVentanaPadre := '';
    //Colores
    Variables.ColorPanel := colorAplicacion;
    // Abrir la Tabla
    //....................................................................
    if data_ventana.DataSet <> Nil then
       data_ventana.DataSet.Open;
    //Color de los campos requeridos
    //Variables.ColorRequerido := Color_Requerido;
    //No se necesita actualizar por defecto
    NecesitaActualizar := False;
    NecesitaActualizarTitulo := False;
    //Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Ejecución de la acción de cancelar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 12 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_acti_cancelarExecute(Sender: TObject);
begin
  // Confirmar que se desean cancelar los cambios
  //....................................................................
  if (Data_Ventana.DataSet <> Nil) And
     (Data_Ventana.DataSet.State in [dsInsert, dsEdit]) then Begin
    Case EjecutarMensaje(cosDeseaCancelar, mtConfirmation, [mbYes, mbNo], 0) of
      mrYes : data_ventana.DataSet.Cancel;
      mrNo : Abort;
    End;
  End;
  // Si se cancela, cerrar la ventana
  //....................................................................
  if var_cerr_al_cancelar then Close;
end;

procedure T_fvent_modal.padr_acti_guardarExecute(Sender: TObject);
begin
  //Abortar en solo lectura
  if variables.soloLectura Then Abort;
  // Guardar los cambios realizados
  //....................................................................
  if (Data_Ventana.DataSet <> Nil) and (Data_Ventana.DataSet.State in [dsInsert, dsEdit]) then
    Data_ventana.DataSet.Post;
  //Activar la actualizacion del maestro
  NecesitaActualizar := True;
end;

{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Ejecutar los comandos necesarios cuando cambia el estado
                  del DataSet asociado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 12 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.data_ventanaStateChange(Sender: TObject);
begin
  // Actualizar los botones cuando cambie el estado del DataSet asociado
  //....................................................................
  if Data_Ventana.DataSet <> Nil Then Begin
    padr_acti_guardar.Enabled := (data_ventana.DataSet.State in [dsEdit, dsInsert]);
    padr_acti_guar_cerrar.Enabled := (data_ventana.DataSet.State in [dsEdit, dsInsert]);
    padr_acti_cancelar.Enabled := (data_ventana.DataSet.State in [dsEdit, dsInsert]);
    {$IFDEF BARRA_MDI}
      _fmdi.padr_boto_guardar.Enabled := padr_acti_guardar.Enabled;
      _fmdi.padr_boto_guar_cerrar.Enabled := padr_acti_guar_cerrar.Enabled;
      _fmdi.padr_boto_cancelar.Enabled := padr_acti_guardar.Enabled;
    {$ENDIF}
  end;
end;
{****************************************************************
Procedimiento   : padr_acti_eliminarExecute
Objetivo        : Ejecutar la acción de eliminar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_acti_eliminarExecute(Sender: TObject);
begin
  //Abortar en solo lectura
  if variables.soloLectura Then Abort;
  //Validar el dataSet de la acción de cancelar
  if (padr_acti_eliminar.DataSource = Nil) and
    (padr_acti_eliminar.DataSource.DataSet = Nil) then Exit;
  //Preguntar al usuario
  Case EjecutarMensaje(cosDeseaEliminar, mtConfirmation, [mbYes, mbNo], 0) of
    mrYes : padr_acti_eliminar.DataSource.DataSet.Delete;
    mrNo  : Abort;
  end;
end;
{****************************************************************
Procedimiento   : padr_acti_nuevoExecute
Objetivo        : Ejecutar la accion de registro nuevo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_acti_nuevoExecute(Sender: TObject);
begin
  //Abortar en solo lectura
  if variables.soloLectura Then Abort;
  //Verificar que el dataSource es valido
  With padr_acti_nuevo do Begin
    if DataSource = Nil then Exit;
    if DataSource.DataSet = Nil then Exit;
    //Guardar
    padr_acti_guardarExecute(Sender);
    //Ejecutar la accion
    DataSource.DataSet.Insert;
    Caption := var_titu_adicionando;
    //Dar el foco al control activo
//    If ActiveControl<>Nil then
//       DarFoco(ActiveControl);
  end;
end;
{****************************************************************
Procedimiento   : padr_acti_modificarExecute
Objetivo        : Ejecutar la acción de modificar registro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_acti_modificarExecute(Sender: TObject);
begin
  //Abortar en solo lectura
  if variables.soloLectura Then Abort;
  //Verificar que el dataSource es valido
  With padr_acti_modificar do Begin
    if (DataSource = Nil) or (DataSource.DataSet = Nil) then Exit;
    //Habilitar el dataSet
    If Not DataSource.AutoEdit Then Begin
         //Habilitar las acciones normales de edicion
        padr_acti_nuevo.Enabled := true;
        //padr_acti_eliminar.Enabled := true;--> Deshabilitado en RC20.1.0.18
        padr_acti_aceptar.Enabled := true;
        padr_acti_cancelar.Enabled := true;
        padr_acti_guardar.Enabled := true;
        padr_acti_guar_cerrar.Enabled := true;
        //Mostrar las acciones de edicion
        padr_acti_nuevo.Visible := true;
        padr_acti_eliminar.Visible := true;
        padr_acti_cancelar.Visible := true;
        padr_acti_guardar.Visible := true;
        padr_acti_guar_cerrar.Visible := true;
        //Ocultar botón de edición
        //padr_boto_modificar.Visible := False; //--> Deshabilitado en RC20.1.0.18
        //Habilitar el DataSet
        SetDataSourcesAutoEdit(Self, True);
        //Cambiar el caption
        if (Variables.CampoAMostrar <> 'NA') and (Variables.CampoAMostrar <> '') Then
          Caption := cosEditando + Variables.NombreAMostrar + ' ' +
            Data_Ventana.DataSet.FieldByName(Variables.CampoAMostrar).AsString;
    End;
    //Ejecutar la accion
    DataSource.DataSet.Edit;
  end;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualiza los controles cuando se activa el form
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.FormShow(Sender: TObject);
begin
        //Ajustar el tamaño de las imágenes en los frames que existan
        {$IFDEF FRAME_IMAGEN}
            if not var_vent_inicializada then
                AjustarComponentesFrameFotografia(Self);
        {$ENDIF}
        //Inicializar la ventana
        if Not var_vent_inicializada Then
        Begin
            //Mostrar ocultar los botones de avance
            SetVerBotonesAvance(((data_Ventana.DataSet <> Nil) and
                (data_Ventana.DataSet = Tabla_Ventana) and (data_Ventana.DataSet.Active)) and
                 (Variables.verBotonesNavegacion)) ;
            //Dar por inicializada la ventana una vez se muestra
            var_vent_inicializada := True;
        End;
        //tabla_ventana.comparebookmark
end;

{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Antes de guardar verifica que no falte ningún dato
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 27 de febrero de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Tabla_VentanaBeforePost(DataSet: TDataSet);
Var
    var_secuencia       : Integer;    
begin
  // valida que ningun campo requerido este vacio antes de grabar
  ValidarDatosDataSet(data_ventana.DataSet);
  //Generar el consecutivo (Intentar)
  Try
    If (data_ventana.DataSet <> Nil) and (Data_Ventana.DataSet.Active) and
       (Data_Ventana.State = dsInsert) and (padr_quer_consecutivo.Sql.Text <> '')
        and (padr_quer_consecutivo.Sql.Text <> '.') Then Begin
      padr_quer_consecutivo.Open;
      var_secuencia := padr_quer_consecutivo.FieldByName('secuencia').AsInteger;
      //Cerrar la consulta
      padr_quer_consecutivo.Close;
      //Asignarlo
      Data_Ventana.DataSet.FieldByName(Variables.CamposDeBusqueda).Value := var_secuencia;
    End;
  Except
  End;  
  //Si se guardó y estaba insertando, cambiar el título
  If (Tabla_Ventana.State = dsInsert) then NecesitaActualizarTitulo := True
  Else NecesitaActualizarTitulo := False;
end;

{****************************************************************
Procedimiento   : Padr_Busq_PersonalExecute
Objetivo        : Abrir el Módulo de Personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_PersonalExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_Tipo_DocumentoExecute
Objetivo        : Abrir el Módulo de Tipo de Documento
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_Tipo_DocumentoExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_EmpresaExecute
Objetivo        : Abrir el Módulo de Empresas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_EmpresaExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_PaisExecute
Objetivo        : Abrir el Módulo de Paises
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_PaisExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_DepartamentoExecute
Objetivo        : Abrir el Módulo de Departamentos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_DepartamentoExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_MunicipiosExecute
Objetivo        : Abrir el Módulo de Departamentos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_MunicipiosExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_Cent_CostosExecute
Objetivo        : Abrir el Módulo de Centro de Costos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_Cent_CostosExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_PlantaExecute
Objetivo        : Abrir el Módulo de Plantas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_PlantaExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_Tipo_ContratoExecute
Objetivo        : Abrir el Módulo de Tipo de Contratos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_Tipo_ContratoExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_Nive_SalarialExecute
Objetivo        : Abrir el Módulo de Nivel Salarial
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_Nive_SalarialExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_Peri_PagoExecute
Objetivo        : Abrir el Módulo de Período de Pago
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_Peri_PagoExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_AreaExecute
Objetivo        : Abrir el Módulo de Areas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_AreaExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_SeccionExecute
Objetivo        : Abrir el Módulo de Secciones
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_SeccionExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_BodegaExecute
Objetivo        : Abrir el Módulo de Bodegas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_BodegaExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_TurnoExecute
Objetivo        : Abrir el Módulo de Turnos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_TurnoExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_CargoExecute
Objetivo        : Abrir el Módulo de Cargos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_CargoExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_TemporadaExecute
Objetivo        : Abrir el Módulo de Temporadas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Padr_Busq_TemporadaExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Padr_Busq_EstampadoExecute
Objetivo        : Abrir el Módulo de Estampados
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_acti_guar_cerrarExecute(Sender: TObject);
begin
  //Abortar en solo lectura
  if variables.soloLectura Then Abort;
  //Ejecutar la acción estándar de guardar
  If padr_acti_guardar.Enabled then
     padr_acti_guardarExecute(Sender);
  // Cerrar la ventana una vez guardado
  //....................................................................
  Close;
end;
{****************************************************************
Procedimiento   : padr_acti_actualizarClick
Objetivo        : Actualizar los DataSet de la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 04 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_acti_actualizarClick(Sender: TObject);
Var
  i, j : Integer;
begin
  ProgresoBarraEstado(cosActualizandoDatos);
  Try
     //Actualizar el maestro
    If (data_Ventana.DataSet <> Nil) and (Data_Ventana.DataSet.Active) and
       (data_Ventana.State = dsBrowse) Then
           RefreshDataSet(data_ventana.DataSet);
     //Recorrerlos
    For i := 1 to Self.ComponentCount do Begin
          //Ver si es un DataSet
      if (Self.components[i-1] is TDataSet) Then
         If (Self.components[i-1] as TDataSet).Active then
           //Ver que no sea el maestro
           if (data_ventana.DataSet <> Nil) and
              (Self.components[i-1] <> data_ventana.DataSet) Then
            //Actualizarlo
            RefreshDataSet(Self.Components[i-1] as TDataSet, False, False);

          //Ver si es un Frame y buscar los componentes de datos
        if (Self.components[i-1] is TFrame) Then
          For j := 1 to Self.components[i-1].ComponentCount do //Ver si es un DataSet
            if (Self.components[i-1].components[j-1] is TDataSet) and
               (Self.components[i-1].components[j-1] as TDataSet).Active then
                 //Ver que no sea el maestro
               if (data_ventana.DataSet <> Nil) and (Self.components[i-1].components[j-1] <> data_ventana.DataSet) Then
                //Actualizarlo
                RefreshDataSet(Self.components[i-1].Components[j-1] as TDataSet, False, False);
     End;{For i}
  Except
    On e:Exception do EjecutarMensajeError(e.Message);
  End;
  ProgresoBarraEstado;
end;

{****************************************************************
Procedimiento   : padr_busq_refe_marcasExecute
Objetivo        : Busqueda de marcas de productos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 18 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_busq_refe_marcasExecute(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : padr_busq_refe_estampadosExecute
Objetivo        : Busqueda de estampados de productos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 18 de 2004 
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_busq_refe_estampadosExecute(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : padr_busq_maqu_tiposExecute
Objetivo        : Buscar los tipos de maquinaria (recursos)
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 18 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_busq_refe_lavadosExecute(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : padr_busq_maqu_grupoExecute
Objetivo        : Buscar los grupos de maquinaria
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 18 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_busq_maqu_grupoExecute(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : padr_busq_maqu_familiaExecute
Objetivo        : Buscar las familias de maquinaria
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 19 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_busq_maqu_familiaExecute(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : padr_busq_maqu_marcaExecute
Objetivo        : Buscar marcas de maquinaria
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 19 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_busq_maqu_marcaExecute(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : padr_busq_maqu_tipo_puntadaExecute
Objetivo        : Buscar los tipos de puntada de maquinaria
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 19 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_busq_maqu_tipo_puntadaExecute(
  Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : padr_busq_improductivoExecute
Objetivo        : Buscar improductivos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Sábado 20 de marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_busq_improductivoExecute(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterPost
Objetivo        : Actualizar los controles de la ventana
                  una vez guardado el registro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Tabla_VentanaAfterPost(DataSet: TDataSet);
Var
  var_titulo   : String;
begin
    //Actualizar el título si estaba insertando y ahora editando
  If NecesitaActualizarTitulo Then Begin
    //Guardar el titulo en una variable local
    var_titulo := Caption;
    //Borrar el cosAdicionando
    Delete(var_Titulo,1,Length(cosAdicionando)-2);
    //Insertarle el editando
    Insert(cosEditando, var_titulo,1);
    //Insertarle el campo a mostrar
    Try
       var_titulo := var_titulo + ' ' + tabla_ventana.fieldbyName(variables.CampoAMostrar).AsString;
    Except
    End;
    //Asignar el título al form
    Caption := var_titulo;
    NecesitaActualizarTitulo := False;
  End;
end;
{****************************************************************
Procedimiento   : padr_busq_maqu_ingresoExecute
Objetivo        : Procedimiento de búsqueda auxiliar de recursos
                  (máquinas) desde otras ventanas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 31 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_busq_maqu_ingresoExecute(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : padr_busq_maqu_tipo_movimientoExecute
Objetivo        : Procedimiento de búsqueda auxiliar de tipos de
                  movimientos de recursos (máquinas) desde otras
                  ventanas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 31 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.FormActivate(Sender: TObject);
begin
  {$IFDEF BARRA_MDI}
    //Liberar la barra del MDI
     _fmdi.ActualizarAcciones(Sender);
    //Activar los botones del MDI
    _fmdi.padr_acti_nuevo.OnExecute := padr_acti_nuevo.OnExecute;
    _fmdi.padr_acti_modificar.OnExecute := Nil;
    _fmdi.padr_acti_eliminar.OnExecute := Nil;
    _fmdi.padr_acti_guardar.OnExecute := padr_acti_guardar.OnExecute;
    _fmdi.padr_acti_guar_cerrar.OnExecute := padr_acti_guar_cerrar.OnExecute;
    _fmdi.padr_acti_cancelar.OnExecute := padr_acti_cancelar.OnExecute;
    _fmdi.padr_acti_actualizar.OnExecute := padr_acti_actualizar.OnExecute;
    _fmdi.padr_acti_buscar.OnExecute := Nil;
    _fmdi.padr_acti_imprimir.OnExecute := Nil;
    _fmdi.padr_acti_salir.OnExecute := padr_acti_salir.OnExecute;

    //Actualizar los estados ENABLED
    data_ventanaStateChange(Sender);
  {$ENDIF}
  {$IFDEF PCP4}
    //Actualizar el panel de tipo de acceso de la barra MDI
    if variables.SoloLectura then  begin
      _fmdi.imag_tipo_acceso.Picture.Bitmap.Assign(ResJpegStream('BMPNO'));
      _fmdi.labe_tipo_acceso.Caption := cosAccesoSoloLectura;
      _fmdi.labe_tipo_acceso.FontSettings.color := clRed;
    End
    else begin
      _fmdi.imag_tipo_acceso.Picture.Bitmap.Assign(ResJpegStream('BMPSI'));
      _fmdi.labe_tipo_acceso.Caption := cosAccesoTotal;
      _fmdi.labe_tipo_acceso.FontSettings.color := clBlack;
    End;
    //Mostrar los datos del panel de tipo de acceso de la barra MDI
    _fmdi.imag_tipo_acceso.Visible := True;
    _fmdi.labe_tipo_acceso.Visible := True;
  {$ENDIF}
  //Activar los shortcuts
  padr_barra.ProcessShortCuts := True;
  // Maximizar la ventana cuando se muestre
  //....................................................................
  DisableAlign;
  If FormStyle = fsMDIChild Then
        WindowState := wsMaximized
  Else If FormStyle = fsNormal Then
        WindowState := wsNormal;
  EnableAlign;
end;

procedure T_fvent_modal.FormDeactivate(Sender: TObject);
begin
{$IFDEF BARRA_MDI}
  _fmdi.ActualizarAcciones(Sender);  //Liberar la barra MDI
{$ENDIF}
  padr_barra.ProcessShortCuts := False;        //Desactivar los shortcuts
end;
{$IFDEF FRAME_IMAGEN}
{****************************************************************
Procedimiento   : AjustarComponentesFrameFotografia
Objetivo        : Ajusta el tamaño de las imagenes en los forms que    
                  utilicen el UFRA_FOTOGRAFIADB para mostrar
                  imágenes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 25 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure T_fvent_modal.AjustarComponentesFrameFotografia(Sender : TControl);
var
  var_auxi_integer  : Integer;
Begin
  if Not (Sender is TControl) Then Exit;
  //Recorrer los componentes del form
  For var_auxi_integer := 1 to Sender.ComponentCount do Begin
    //Ver si es un Frame de Fotografia
    if (Sender.Components[var_auxi_integer - 1] is Tffra_fotografiaDB) Then
        (Sender.Components[var_auxi_integer - 1] as Tffra_fotografiaDB).AjustarTamanoFotografia(Sender);
    //Hacerlo recursivo
    If (Sender.Components[var_auxi_integer - 1] is TControl) and
      ((Sender.Components[var_auxi_integer - 1]).ComponentCount>0) Then
      AjustarComponentesFrameFotografia(Sender.Components[var_auxi_integer - 1] as TControl);
  End;
End;
{$ENDIF}
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Cambiar el título de la ventana al insertar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.Tabla_VentanaAfterInsert(DataSet: TDataSet);
begin
  //Guardar el titulo de adicion en un string privado
  if var_titu_adicionando = '' Then var_titu_adicionando := Caption
  else
    Caption := var_titu_adicionando;  //Asignar el titulo si no es la primera adición
end;
{****************************************************************
Procedimiento   : padr_acti_modificarUpdate
Objetivo        : Actualizar el estado de la acción de modificar
                  (solo cuando el DataVentana está en autoEdit = False
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_acti_modificarUpdate(Sender: TObject);
begin
  padr_acti_modificar.Enabled := (Data_Ventana.DataSet <> Nil) and
    (Data_Ventana.DataSet.Active); //and (Not Data_Ventana.AutoEdit)--> Deshabilitado en RC20.1.0.18;
end;
{****************************************************************
Procedimiento   : doActualizarPadre
Objetivo        : Ejecuta la acción de actualizar el padre cuando cambie el hijo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.doActualizarPadre(Sender: TObject);
var
  VentanaChild : t_fVent_Child;
  var_nume_ventana : Integer;
begin
    //Si el padre es CHILD actualizar el dataSet
{$IFDEF PCP4}
      //Actualizar la ventana que la llamó, siempre y cuando sea MDIChild
  If Not var_AnclarHijos then
  if (CaptionVentanaPadre <> '') then Begin
    //Buscar la ventana
    var_nume_ventana := EncontrarVentana(CaptionVentanaPadre, False);
    if var_nume_ventana > -1 then
    //Existe
      Try
        T_FVent_Child(Application.MainForm.MDIChildren[var_nume_ventana]).padr_acti_actualizarExecute(Sender);
      Except
      End;
  End;
  {$ENDIF}
  If Self.parent <> Nil then
  //Ver si estaba Dockeada en un TabSheet
  If (Parent is tdxtabSheet) then     //Actualizar la tabla
  Try
    If (Parent.Owner.Owner <> Nil) Then    //Buscar el padre
      if (parent.Owner.Owner is t_fVent_Child) Then Begin
         VentanaChild := (parent.Owner.Owner as t_fVent_Child);
         If VentanaChild.data_ventana.DataSet <> Nil then
           VentanaChild.padr_acti_actualizarExecute(Sender);
        End;
  Except
  End;
end;
{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Ejecuta la acción de aceptar
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 31 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_acti_aceptarExecute(Sender: TObject);
begin
  if variables.soloLectura Then Abort;        //Abortar en solo lectura
end;
{****************************************************************
Procedimiento   : padr_acti_duplicarExecute
Objetivo        : Ejecuta la acción de duplicar
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 31 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal.padr_acti_duplicarExecute(Sender: TObject);
begin
  if variables.soloLectura Then Abort;        //Abortar en solo lectura
end;
{****************************************************************
Procedimiento   : doInsertar
Objetivo        : Ejecuta la acción de insertar un registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 25 de 2004
Versión         : pcp4003
*****************************************************************}
Procedure T_fvent_modal.doInsertar(peTextoTitulo : String;
   peFormStyle : TFormStyle = fsMdiChild);
Begin
    //Validar la entrada
  if (Data_Ventana.DataSet = Nil) or Not(Data_ventana.DataSet.Active) then Exit;
  if peTextoTitulo = '' Then peTextoTitulo := Variables.NombreAMostrar;
  Caption := Format(cosAdicionando, [peTextoTitulo]);
  FormStyle := peFormStyle;
  padr_acti_nuevo.Execute;
End;
{****************************************************************
Procedimiento   : doConsultar
Objetivo        : Muestra la ventana en consulta, con el registro solicitado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 25 de 2004
Versión         : pcp4003
*****************************************************************}
Procedure T_fvent_modal.doConsultar(peCamposDeBusqueda, peCampoAMostrar : String;
        peIden_registro : Variant; peTextoTitulo : String;
         peFormStyle : TFormStyle = fsMdiChild; peShowModal : Boolean = False);
Begin
  //Validar la entrada
  if peTextoTitulo = '' Then peTextoTitulo := Variables.NombreAMostrar;
  if peCamposDeBusqueda = '' Then peCamposDeBusqueda := Variables.CamposDeBusqueda;
  if peCampoAMostrar = '' Then peCampoAMostrar := Variables.CampoAMostrar;
  if (Data_Ventana.DataSet = Nil) or Not(Data_ventana.DataSet.Active) or (peCamposDeBusqueda = '') or
      (peCampoAMostrar = '') then Exit;
  if Not tabla_ventana.Locate(peCamposDeBusqueda, peiden_registro, []) Then Exit;
  Caption := cosEditando + peTextoTitulo + ' ' + Tabla_Ventana.FieldByName(peCampoAMostrar).AsString;
  FormStyle := fsMDIChild;
  if (FormStyle = fsNormal) and (peShowModal) then ShowModal;
End;
{****************************************************************
Procedimiento   : doModificar
Objetivo        : Muestra la ventana en edición del registro solicitado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 25 de 2004
Versión         : pcp4003
*****************************************************************}
Procedure T_fvent_modal.doModificar(peCamposDeBusqueda, peCampoAMostrar : String;
        peIden_registro : Variant; peTextoTitulo : String; peFormStyle : TFormStyle = fsMdiChild;
        peShowModal : Boolean = False);
Begin
  doConsultar(peCamposDeBusqueda, peCampoAMostrar, peIden_Registro,
      peTextoTitulo, peFormStyle, False);
  if not variables.SoloLectura then padr_acti_modificar.Execute;
  if (FormStyle = fsNormal) and (peShowModal) then ShowModal;
End;
{****************************************************************
Procedimiento   : doEstadoAcciones
Objetivo        : Cambia el estado (ENABLED) y (VISIBLE) de
                  las acciones de PADR_ACCIONES
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 28 de 2004
Versión         : pcp4003
*****************************************************************}
Procedure T_fvent_modal.doEstadoAcciones(peEstado : Boolean = False;
    peAfectarVisibles : Boolean = True);
Var
    i : Integer;
Begin
    //Recorrer las acciones
  for i := 1 to padr_acciones.ActionCount do begin
    (padr_acciones.Actions[i - 1] as TAction).Enabled := peEstado;
    if peAfectarVisibles then
       (padr_acciones.Actions[i - 1] as TAction).Visible := peEstado;
  End;
End;
{****************************************************************
Procedimiento   : VerificarPermisosAccionesDB
Objetivo        : Verifica los permisos de escritura antes de ejecutar
                  acciones de Base de datos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 24 de 2004
Versión         : pcp4006
*****************************************************************}
Function T_fvent_modal.VerificarPermisosAccionesDB (peAbortarAcciones : Boolean = True) : Boolean;
Begin
  //Generar el resultado
  Result := Variables.SoloLectura;
  //Verificar el estado de lectura y generar el mensaje
  if Variables.SoloLectura then Begin
    EjecutarMensajeError(cosNoTienePermiso);
    //Abortar si fue solicitado
    if peAbortarAcciones Then Abort;
  End;
End;
{****************************************************************
Procedimiento   : SetVerBotonesAvance
Objetivo        : Muestra/Oculta los botones de avance
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure T_fvent_modal.SetVerBotonesAvance(peValor : Boolean);
Begin
  var_ver_boto_avance := peValor;
  //Enabled
  padr_acti_Data_primero.Enabled := var_ver_boto_avance;
  padr_acti_Data_anterior.Enabled := var_ver_boto_avance;
  padr_acti_Data_Siguiente.Enabled := var_ver_boto_avance;
  padr_acti_Data_Ultimo.Enabled := var_ver_boto_avance;
  padr_acti_busc_lista.Enabled := False;//var_ver_boto_avance;//PENDIENTE RC20.7
  //Visible
  padr_acti_Data_primero.Visible := var_ver_boto_avance;
  padr_acti_Data_anterior.Visible := var_ver_boto_avance;
  padr_acti_Data_Siguiente.Visible := var_ver_boto_avance;
  padr_acti_Data_Ultimo.Visible := var_ver_boto_avance;
  padr_acti_busc_lista.Visible := False;//var_ver_boto_avance;//PENDIENTE RC20.7
  //ShortCuts
  if not var_ver_boto_avance Then Begin
    padr_acti_Data_primero.shortCut := Low(TShortCut);
    padr_acti_Data_anterior.shortCut := Low(TShortCut);
    padr_acti_Data_Siguiente.shortCut := Low(TShortCut);
    padr_acti_Data_Ultimo.shortCut := Low(TShortCut);
    padr_acti_busc_lista.shortCut := Low(TShortCut);
  End;
End;
{****************************************************************
Procedimiento   : padr_acti_busc_listaExecute
Objetivo        : Llamar la lista rápida de búsqueda
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure T_fvent_modal.padr_acti_busc_listaExecute(Sender: TObject);
begin
  ListaRapida(tabla_Ventana);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterScroll
Objetivo        : Actualizar la ventana al cambiar el registro seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure T_fvent_modal.Tabla_VentanaAfterScroll(DataSet: TDataSet);
begin
  Try
    If var_vent_inicializada Then Begin
        //Adicionando
      if (tabla_Ventana.State = dsInsert) Then
        Caption :=  Format(cosAdicionando, [Variables.NombreAMostrar])
        //Editando o consultando
      Else
      if (tabla_Ventana.State = dsBrowse) Then
          Caption := cosConsultando + Variables.NombreAMostrar + ' ' +
            Data_Ventana.DataSet.FieldByName(Variables.CampoAMostrar).AsString
      Else
        if (tabla_Ventana.State = dsEdit) Then
            Caption := cosEditando + Variables.NombreAMostrar + ' ' +
              Data_Ventana.DataSet.FieldByName(Variables.CampoAMostrar).AsString;

    End;
  Except
  End;
end;

End.
