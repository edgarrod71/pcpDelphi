{ 16/03/2004 05:44:49 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:40:14 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:41 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Pers_General1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, Menus, TB2Item, TBX, Db, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, TBXDkPanels, TBXButtonSCL, dxEditor, dxExEdtr,
  dxEdLib, dxDBELib, RxLookup, PCPLookUpComboEdit, ufra_fotografiaDB,
  PCPFrame, SCLTabs, PictureContainer, DBTables, AdvPanel,
  SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes, PCPProceso,
  StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Dock, TB2Toolbar,
  ufra_mens_atencion, HTMLabel, SCLShape;

  
type
  TFN1_Pers_General1 = class(T_fvent_modal)
    PCPrincipal: TSCLPageControl;
    page_personales: TSCLTabSheet;
    PCPFrame1: TPCPFrame;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel31: TSCLDBLabel;
    SCLDBLabel32: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    dxDBEdit6: TdxDBEdit;
    dxDateEdit2: TdxDBDateEdit;
    dxEdit6: TdxDBEdit;
    SCLButton8: TTBXButtonSCL;
    PCPFrame2: TPCPFrame;
    SCLDBLabel33: TSCLDBLabel;
    SCLDBLabel34: TSCLDBLabel;
    SCLDBLabel35: TSCLDBLabel;
    SCLDBLabel36: TSCLDBLabel;
    dxEdit7: TdxDBEdit;
    dxDateEdit3: TdxDBDateEdit;
    dxEdit8: TdxDBEdit;
    dxDateEdit4: TdxDBDateEdit;
    PCPFrame3: TPCPFrame;
    SCLDBLabel37: TSCLDBLabel;
    SCLDBLabel38: TSCLDBLabel;
    dxEdit9: TdxDBEdit;
    dxDateEdit5: TdxDBDateEdit;
    dxTabSheet2: TSCLTabSheet;
    Grid: TdxDBGrid;
    GridNUME_DOCUMENTO: TdxDBGridMaskColumn;
    GridPRIM_APELLIDO: TdxDBGridMaskColumn;
    GridSEGU_APELLIDO: TdxDBGridMaskColumn;
    GridNOMBRES: TdxDBGridMaskColumn;
    GridNOMB_PARENTESCO: TdxDBGridMaskColumn;
    GridDIRECCION: TdxDBGridMaskColumn;
    GridTELE_RESIDENCIA: TdxDBGridMaskColumn;
    GridTELE_OTRO: TdxDBGridMaskColumn;
    GridTELE_MOVIL: TdxDBGridMaskColumn;
    GridCORR_ELECTRONICO: TdxDBGridMaskColumn;
    GridTELE_EMPRESA: TdxDBGridMaskColumn;
    page_generales: TSCLTabSheet;
    PCPFrame4: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    SCLDBLabel41: TSCLDBLabel;
    PCPLookUpComboEdit18: TPCPLookUpComboEdit;
    SCLDBLabel43: TSCLDBLabel;
    PCPLookUpComboEdit19: TPCPLookUpComboEdit;
    SCLDBLabel69: TSCLDBLabel;
    dxDBEdit8: TdxDBEdit;
    page_direcciones: TSCLTabSheet;
    PCPFrame5: TPCPFrame;
    SCLDBLabel20: TSCLDBLabel;
    SCLDBLabel21: TSCLDBLabel;
    SCLDBLabel22: TSCLDBLabel;
    SCLDBLabel23: TSCLDBLabel;
    SCLDBLabel24: TSCLDBLabel;
    SCLDBLabel25: TSCLDBLabel;
    SCLDBLabel26: TSCLDBLabel;
    PCPLookUpComboEdit12: TPCPLookUpComboEdit;
    SCLButton9: TTBXButtonSCL;
    PCPLookUpComboEdit13: TPCPLookUpComboEdit;
    SCLButton10: TTBXButtonSCL;
    PCPLookUpComboEdit14: TPCPLookUpComboEdit;
    SCLButton11: TTBXButtonSCL;
    dxEdit2: TdxDBEdit;
    dxEdit3: TdxDBEdit;
    dxEdit4: TdxDBEdit;
    dxEdit5: TdxDBEdit;
    Tabla_VentanaCONS_PERSONAL: TIntegerField;
    Tabla_VentanaCODI_PERSONAL: TStringField;
    Tabla_VentanaPRIM_APELLIDO: TStringField;
    Tabla_VentanaSEGU_APELLIDO: TStringField;
    Tabla_VentanaNOMBRES: TStringField;
    Tabla_VentanaNOMB_COMPLETO: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    DSQSexos: TDataSource;
    DSQEstado_Civil: TDataSource;
    DSQTipo_Documento: TDataSource;
    DSQPaises: TDataSource;
    DSQDepartamentos: TDataSource;
    DSQCiudades: TDataSource;
    TGeneral: TTable;
    TGeneralCONS_PERSONAL: TIntegerField;
    TGeneralCONS_PAIS: TIntegerField;
    TGeneralCONS_DEPARTAMENTO: TIntegerField;
    TGeneralCONS_CIUDAD: TIntegerField;
    TGeneralDIRECCION: TStringField;
    TGeneralTELE_RESIDENCIA: TStringField;
    TGeneralTELE_OTRO: TStringField;
    TGeneralTELE_MOVIL: TStringField;
    TGeneralFECH_NACIMIENTO: TDateTimeField;
    TGeneralCONS_PAIS_NACIMIENTO: TIntegerField;
    TGeneralCONS_DEPA_NACIMIENTO: TIntegerField;
    TGeneralCONS_CIUD_NACIMIENTO: TIntegerField;
    TGeneralCONS_PERS_TIPO_DOCUMENTO: TIntegerField;
    TGeneralNUME_DOCUMENTO: TStringField;
    TGeneralFECH_EXPE_DOCUMENTO: TDateTimeField;
    TGeneralLUGA_EXPE_DOCUMENTO: TStringField;
    TGeneralNUME_PASAPORTE: TStringField;
    TGeneralFECH_EXPE_PASAPORTE: TDateTimeField;
    TGeneralFECH_VENC_PASAPORTE: TDateTimeField;
    TGeneralLUGA_EXPE_PASAPORTE: TStringField;
    TGeneralNUME_LIBR_MILITAR: TStringField;
    TGeneralFECH_EXPE_LIBR_MILITAR: TDateTimeField;
    TGeneralNUME_SEGU_SOCIAL: TStringField;
    TGeneralNUME_HIJOS: TIntegerField;
    TGeneralCONS_SEXO: TIntegerField;
    TGeneralCONS_ESTA_CIVIL: TIntegerField;
    TGeneralIMAGEN: TBlobField;
    TGeneralAJUS_IMAGEN: TIntegerField;
    DSGeneral: TDataSource;
    Fami_Acciones: TActionList;
    Acti_Nuev_Familiar: TAction;
    Acti_Elim_Familiar: TAction;
    QSexos: TQuery;
    QEstado_Civil: TQuery;
    QTipo_Documento: TQuery;
    QPaises: TQuery;
    QDepartamentos: TQuery;
    QCiudades: TQuery;
    QPais_Nacimiento: TQuery;
    DSQPais_Nacimiento: TDataSource;
    QDepartamento_Nacimiento: TQuery;
    DSQDepartamento_Nacimiento: TDataSource;
    QCiudades_Nacimiento: TQuery;
    DSQCiudades_Nacimiento: TDataSource;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    Acti_Modi_Familiar: TAction;
    TBXItem3: TTBXItem;
    PMFamiliares: TTBXPopupMenu;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    QFamiliares: TQuery;
    DSQFamiliares: TDataSource;
    QFamiliaresCONS_PERS_FAMILIAR: TIntegerField;
    QFamiliaresNOMB_PERS_TIPO_DOCUMENTO: TStringField;
    QFamiliaresNUME_DOCUMENTO: TStringField;
    QFamiliaresPRIM_APELLIDO: TStringField;
    QFamiliaresSEGU_APELLIDO: TStringField;
    QFamiliaresNOMBRES: TStringField;
    QFamiliaresNOMB_SEXO: TStringField;
    QFamiliaresNOMB_PARENTESCO: TStringField;
    QFamiliaresFECH_NACIMIENTO: TDateTimeField;
    QFamiliaresNOMB_PAIS: TStringField;
    QFamiliaresNOMB_DEPARTAMENTO: TStringField;
    QFamiliaresNOMB_CIUDAD: TStringField;
    QFamiliaresDIRECCION: TStringField;
    QFamiliaresTELE_RESIDENCIA: TStringField;
    QFamiliaresTELE_OTRO: TStringField;
    QFamiliaresTELE_MOVIL: TStringField;
    QFamiliaresOCUPACION: TStringField;
    QFamiliaresNOMB_EMPRESA: TStringField;
    QFamiliaresDIRE_EMPRESA: TStringField;
    QFamiliaresTELE_EMPRESA: TStringField;
    QFamiliaresCORR_ELECTRONICO: TStringField;
    QFamiliaresFECH_SISTEMA: TDateTimeField;
    QFamiliaresUSUA_SISTEMA: TStringField;
    QEliminar_Familiar: TQuery;
    PCPFrame7: TPCPFrame;
    SCLDBLabel27: TSCLDBLabel;
    dxDateEdit1: TdxDBDateEdit;
    SCLDBLabel28: TSCLDBLabel;
    SCLDBLabel30: TSCLDBLabel;
    SCLButton13: TTBXButtonSCL;
    SCLButton12: TTBXButtonSCL;
    SCLDBLabel29: TSCLDBLabel;
    PCPLookUpComboEdit16: TPCPLookUpComboEdit;
    SCLButton14: TTBXButtonSCL;
    PCPLookUpComboEdit17: TPCPLookUpComboEdit;
    PCPLookUpComboEdit15: TPCPLookUpComboEdit;
    QCentro_Costos: TQuery;
    DSQCentro_Costos: TDataSource;
    QSub_Centros: TQuery;
    DSQSub_Centros: TDataSource;
    pane_nombre: Tffra_mens_atencion;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    quer_esta_personal: TQuery;
    PANE_INACTIVO: TPanel;
    SCLShape1: TSCLShape;
    labe_pers_inactivo: THTMLabel;
    SCLShape2: TSCLShape;
    PCPFrame6: TPCPFrame;
    SCLDBLabel53: TSCLDBLabel;
    SCLDBLabel54: TSCLDBLabel;
    SCLDBLabel55: TSCLDBLabel;
    SCLDBLabel56: TSCLDBLabel;
    SCLDBLabel57: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBEdit7: TdxDBEdit;
    TGeneralNUME_CONDUCCION: TStringField;
    TGeneralFECH_EXPE_CONDUCCION: TDateTimeField;
    TGeneralFECH_VENC_CONDUCCION: TDateTimeField;
    TGeneralCATE_CONDUCCION: TStringField;
    TGeneralLUGA_EXPE_CONDUCCION: TStringField;
    procedure FormCreate(Sender: TObject);
		procedure TGeneralBeforePost(DataSet: TDataSet);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure Acti_Nuev_FamiliarExecute(Sender: TObject);
    procedure Acti_Elim_FamiliarExecute(Sender: TObject);
    procedure Tabla_VentanaBeforeCancel(DataSet: TDataSet);
    procedure DSGeneralStateChange(Sender: TObject);
    procedure Acti_Modi_FamiliarExecute(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure CambiarPagina(Sender: TObject);
    procedure padr_acti_modificarUpdate(Sender: TObject);
    procedure Tabla_VentanaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Ejecutar(peCons_personal : Integer);
    Procedure DoActualizarEstadoPersonal;
  end;

var
  FN1_Pers_General1: TFN1_Pers_General1;

implementation

uses _cons_pcp, _func_varias, _MDI, UN1_Pers_Familiares1, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 11 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_General1.FormCreate(Sender: TObject);
begin
  inherited;
  pane_nombre.SetWarningColors;
  pane_inactivo.BevelOuter := bvNone;
  //Verifica que se pueda abrir los DataSet
  AbrirDataSet(QSexos);
  AbrirDataSet(QEstado_Civil);
  AbrirDataSet(QTipo_Documento);

  AbrirDataSet(QCentro_Costos);
  AbrirDataSet(QSub_Centros);

  AbrirDataSet(QPaises);
  AbrirDataSet(QDepartamentos);
  AbrirDataSet(QCiudades);
  AbrirDataSet(QPais_Nacimiento);
  AbrirDataSet(QDepartamento_Nacimiento);
  AbrirDataSet(QCiudades_Nacimiento);
  AbrirDataSet(QFamiliares);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : TGeneralBeforePost
Objetivo        : Verifico que no falte ningún campo requerido
									en la tabla de datos generales
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 11 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_General1.TGeneralBeforePost(DataSet: TDataSet);
begin
  inherited;
  TGeneral.FieldByName('CONS_PERSONAL').AsInteger :=
    Tabla_Ventana.FieldByName('CONS_PERSONAL').AsInteger;

  //Verifico que no falte ningún campo requerido
  ValidarDatosDataSet(TGeneral);
end;

{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Guardo la información general y familiar
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 11 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_General1.Tabla_VentanaBeforePost(DataSet: TDataSet);
begin
  inherited;
	//Grabo los datos de la tabla generales
	If (TGeneral.State In [dsInsert, dsEdit]) Then
    Try
      TGeneral.Post;
    Except
			Abort;
    End;
end;

{****************************************************************
Procedimiento   : Acti_NuevoExecute
Objetivo        : Poner en modo de inserción el registro de familiares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 11 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_General1.Acti_Nuev_FamiliarExecute(Sender: TObject);
begin
  inherited;
  //--------------PENDIENTE-------------
  FN1_Pers_Familiares1 := TFN1_Pers_Familiares1.Create(Self);
  FN1_Pers_Familiares1.Ejecutar(Tabla_Ventana.FieldByName('CONS_PERSONAL').AsInteger, taInsert);
  RefreshDataSet(QFamiliares);
end;

{****************************************************************
Procedimiento   : Acti_EliminarExecute
Objetivo        : Eliminar el registro de familiares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 11 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_General1.Acti_Elim_FamiliarExecute(Sender: TObject);
begin
  inherited;
  If QFamiliares.RecordCount < 1 Then
  	Exit;
  If EjecutarMensaje(cosDeseaEliminar, mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
  Begin
    QEliminar_Familiar.Close;
    try
      QEliminar_Familiar.ExecSQL;
    except
			QEliminar_Familiar.Close;
      Exit;
    end;
		QEliminar_Familiar.Close;
    QFamiliares.Close;
    QFamiliares.Open;
  End;
end;

{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Habilitar y deshabilitar los controles de datos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 14 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_General1.Tabla_VentanaBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  TGeneral.Cancel;
end;

{****************************************************************
Procedimiento   : DSGeneralStateChange
Objetivo        : Si se cambia el estadi de datos generales se cambia
									el estado del maestro
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 17 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_General1.DSGeneralStateChange(Sender: TObject);
begin
  inherited;
	//Si se cambia el estado de Datos Generales se cambia el estado del maestro
	If ((TGeneral.State In [dsEdit, dsInsert]) And Not
  	(Tabla_Ventana.State In [dsEdit, dsInsert])) Then
    Tabla_Ventana.Edit;
end;

{****************************************************************
Procedimiento   : Acti_Modi_FamiliarExecute
Objetivo        : Modificar familiar
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 14 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_General1.Acti_Modi_FamiliarExecute(Sender: TObject);
begin
  inherited;
  //--------------PENDIENTE-------------
  If QFamiliares.RecordCount = 0 Then
    Exit;
  FN1_Pers_Familiares1 := TFN1_Pers_Familiares1.Create(Self);
  FN1_Pers_Familiares1.Ejecutar(Tabla_Ventana.FieldByName('CONS_PERSONAL').AsInteger, taEdit,
          QFamiliares.FieldByName('CONS_PERS_FAMILIAR').AsInteger); 
  RefreshDataSet(QFamiliares);
end;

{****************************************************************
Procedimiento   : DBFamiliaresDblClick
Objetivo        : Modificar Personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 14 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_General1.GridDblClick(Sender: TObject);
begin
  inherited;
  Acti_Modi_Familiar.Execute;
end;
{****************************************************************
Procedimiento   : CambiarPagina
Objetivo        : Cambia la página del pageControl cuando
                  salte del último control de cada página
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_General1.CambiarPagina(Sender: TObject);
begin
  inherited;
  if PCPrincipal.Focused Then
        PCPrincipal.DoNextTab;
end;
{****************************************************************
Procedimiento   : padr_acti_modificarUpdate
Objetivo        : Actualiza el estado de la acción de edición
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 11-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_General1.padr_acti_modificarUpdate(Sender: TObject);
begin
  //inherited;
  padr_acti_modificar.Enabled := (tabla_Ventana.State = dsBrowse);
end;
{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecuta y muestra la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure TFN1_Pers_General1.Ejecutar(peCons_personal : Integer);
Begin
    Tabla_Ventana.Locate('CONS_PERSONAL', peCons_Personal, []);
    //Abrir las consultas de apoyo
    AbrirDataSet(quer_esta_personal);
    AbrirDataSet(tGeneral);
End;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterScroll
Objetivo        : Actualizar la ventana al cambiar el registro activo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_General1.Tabla_VentanaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DoActualizarEstadoPersonal;
end;
{****************************************************************
Procedimiento   : DoActualizarEstadoPersonal
Objetivo        : Actualiza el panel que indica el estado INACTIVO
                  del personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure TFN1_Pers_General1.DoActualizarEstadoPersonal;
Begin
  if quer_esta_personal.Active Then
     pane_inactivo.Visible := (quer_Esta_personal.FieldByName('cons_estado').asInteger = 2)
  Else
     pane_inactivo.Visible := False;
End;
end.
