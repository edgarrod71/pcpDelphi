{ 16/03/2004 05:44:49 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:40:14 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:41 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Pers_Personal1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, DBTables, SCLDBLabel, dxExEdtr, dxDBEdtr, RxLookup,
  PCPLookUpComboEdit, SoCtrls, SohoBtns, SCLButton, PictureContainer,
  AdvPanel, ufra_fotografiaDB, Boxes, PCPFrame, dxPageControl, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, RxMemDS, PCPProceso;

type
  TFN1_Pers_Personal1 = class(T_fvent_modal)
    PCPrincipal: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    PCPFrame1: TPCPFrame;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel31: TSCLDBLabel;
    SCLDBLabel32: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    dxDBEdit6: TdxDBEdit;
    dxDateEdit2: TdxDBDateEdit;
    dxEdit6: TdxDBEdit;
    SCLButton8: TSCLButton;
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
    dxTabSheet2: TdxTabSheet;
    PCFamiliares: TdxPageControl;
    dxTabSheet6: TdxTabSheet;
    PCPFrame11: TPCPFrame;
    SCLDBLabel44: TSCLDBLabel;
    SCLDBLabel45: TSCLDBLabel;
    SCLDBLabel46: TSCLDBLabel;
    SCLDBLabel47: TSCLDBLabel;
    SCLDBLabel48: TSCLDBLabel;
    SCLDBLabel49: TSCLDBLabel;
    SCLDBLabel50: TSCLDBLabel;
    SCLDBLabel51: TSCLDBLabel;
    SCLDBLabel59: TSCLDBLabel;
    SCLDBLabel63: TSCLDBLabel;
    PCPLookUpComboEdit20: TPCPLookUpComboEdit;
    SCLButton18: TSCLButton;
    dxEdit13: TdxDBEdit;
    dxEdit14: TdxDBEdit;
    dxEdit15: TdxDBEdit;
    dxEdit16: TdxDBEdit;
    PCPLookUpComboEdit21: TPCPLookUpComboEdit;
    PCPLookUpComboEdit22: TPCPLookUpComboEdit;
    SCLButton19: TSCLButton;
    dxDateEdit6: TdxDBDateEdit;
    dxEdit21: TdxDBEdit;
    dxEdit25: TdxDBEdit;
    dxTabSheet7: TdxTabSheet;
    PCPFrame12: TPCPFrame;
    SCLDBLabel52: TSCLDBLabel;
    SCLDBLabel53: TSCLDBLabel;
    SCLDBLabel54: TSCLDBLabel;
    SCLDBLabel55: TSCLDBLabel;
    SCLDBLabel56: TSCLDBLabel;
    SCLDBLabel57: TSCLDBLabel;
    SCLDBLabel58: TSCLDBLabel;
    PCPLookUpComboEdit23: TPCPLookUpComboEdit;
    PCPLookUpComboEdit24: TPCPLookUpComboEdit;
    PCPLookUpComboEdit25: TPCPLookUpComboEdit;
    SCLButton20: TSCLButton;
    SCLButton21: TSCLButton;
    SCLButton22: TSCLButton;
    dxEdit17: TdxDBEdit;
    dxEdit18: TdxDBEdit;
    dxEdit19: TdxDBEdit;
    dxEdit20: TdxDBEdit;
    PCPFrame13: TPCPFrame;
    SCLDBLabel60: TSCLDBLabel;
    SCLDBLabel61: TSCLDBLabel;
    SCLDBLabel62: TSCLDBLabel;
    dxEdit22: TdxDBEdit;
    dxEdit23: TdxDBEdit;
    dxEdit24: TdxDBEdit;
    DBFamiliares: TdxDBGrid;
    DBFamiliaresNOMB_PERS_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    DBFamiliaresNUME_DOCUMENTO: TdxDBGridMaskColumn;
    DBFamiliaresPRIM_APELLIDO: TdxDBGridMaskColumn;
    DBFamiliaresSEGU_APELLIDO: TdxDBGridMaskColumn;
    DBFamiliaresNOMBRES: TdxDBGridMaskColumn;
    DBFamiliaresNOMB_SEXO: TdxDBGridMaskColumn;
    DBFamiliaresNOMB_PARENTESCO: TdxDBGridMaskColumn;
    DBFamiliaresFECH_NACIMIENTO: TdxDBGridDateColumn;
    DBFamiliaresNOMB_PAIS: TdxDBGridMaskColumn;
    DBFamiliaresNOMB_DEPARTAMENTO: TdxDBGridMaskColumn;
    DBFamiliaresNOMB_CIUDAD: TdxDBGridMaskColumn;
    DBFamiliaresDIRECCION: TdxDBGridMaskColumn;
    DBFamiliaresTELE_RESIDENCIA: TdxDBGridMaskColumn;
    DBFamiliaresTELE_OTRO: TdxDBGridMaskColumn;
    DBFamiliaresTELE_MOVIL: TdxDBGridMaskColumn;
    DBFamiliaresOCUPACION: TdxDBGridMaskColumn;
    DBFamiliaresCORR_ELECTRONICO: TdxDBGridMaskColumn;
    DBFamiliaresNOMB_EMPRESA: TdxDBGridMaskColumn;
    DBFamiliaresDIRE_EMPRESA: TdxDBGridMaskColumn;
    DBFamiliaresTELE_EMPRESA: TdxDBGridMaskColumn;
    dxTabSheet3: TdxTabSheet;
    PCPFrame4: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    Label1: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    SCLDBLabel27: TSCLDBLabel;
    dxDateEdit1: TdxDBDateEdit;
    SCLDBLabel41: TSCLDBLabel;
    PCPLookUpComboEdit18: TPCPLookUpComboEdit;
    SCLDBLabel43: TSCLDBLabel;
    PCPLookUpComboEdit19: TPCPLookUpComboEdit;
    SCLDBLabel69: TSCLDBLabel;
    dxDBEdit8: TdxDBEdit;
    dxTabSheet4: TdxTabSheet;
    PCPFrame6: TPCPFrame;
    SCLDBLabel28: TSCLDBLabel;
    SCLDBLabel29: TSCLDBLabel;
    SCLDBLabel30: TSCLDBLabel;
    PCPLookUpComboEdit17: TPCPLookUpComboEdit;
    PCPLookUpComboEdit16: TPCPLookUpComboEdit;
    PCPLookUpComboEdit15: TPCPLookUpComboEdit;
    SCLButton14: TSCLButton;
    SCLButton13: TSCLButton;
    SCLButton12: TSCLButton;
    PCPFrame5: TPCPFrame;
    SCLDBLabel20: TSCLDBLabel;
    SCLDBLabel21: TSCLDBLabel;
    SCLDBLabel22: TSCLDBLabel;
    SCLDBLabel23: TSCLDBLabel;
    SCLDBLabel24: TSCLDBLabel;
    SCLDBLabel25: TSCLDBLabel;
    SCLDBLabel26: TSCLDBLabel;
    PCPLookUpComboEdit12: TPCPLookUpComboEdit;
    SCLButton9: TSCLButton;
    PCPLookUpComboEdit13: TPCPLookUpComboEdit;
    SCLButton10: TSCLButton;
    PCPLookUpComboEdit14: TPCPLookUpComboEdit;
    SCLButton11: TSCLButton;
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
    TSexos: TTable;
    TEstado_Civil: TTable;
    DSSexos: TDataSource;
    DSEstado_Civil: TDataSource;
    TTipo_Documento: TTable;
    DSTipo_Documento: TDataSource;
    TParentescos: TTable;
    DSParentescos: TDataSource;
    TPaises: TTable;
    DSPaises: TDataSource;
    TDepartamentos: TTable;
    DSDepartamentos: TDataSource;
    TCiudades: TTable;
    DSCiudades: TDataSource;
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
    TFamiliares: TTable;
    TFamiliaresCONS_PERSONAL: TIntegerField;
    TFamiliaresCONS_PERS_TIPO_DOCUMENTO: TIntegerField;
    TFamiliaresNUME_DOCUMENTO: TStringField;
    TFamiliaresPRIM_APELLIDO: TStringField;
    TFamiliaresSEGU_APELLIDO: TStringField;
    TFamiliaresNOMBRES: TStringField;
    TFamiliaresCONS_SEXO: TIntegerField;
    TFamiliaresCONS_PARENTESCO: TIntegerField;
    TFamiliaresFECH_NACIMIENTO: TDateTimeField;
    TFamiliaresCONS_PAIS: TIntegerField;
    TFamiliaresCONS_DEPARTAMENTO: TIntegerField;
    TFamiliaresCONS_CIUDAD: TIntegerField;
    TFamiliaresDIRECCION: TStringField;
    TFamiliaresTELE_RESIDENCIA: TStringField;
    TFamiliaresTELE_OTRO: TStringField;
    TFamiliaresTELE_MOVIL: TStringField;
    TFamiliaresOCUPACION: TStringField;
    TFamiliaresNOMB_EMPRESA: TStringField;
    TFamiliaresDIRE_EMPRESA: TStringField;
    TFamiliaresTELE_EMPRESA: TStringField;
    TFamiliaresCORR_ELECTRONICO: TStringField;
    DSFamiliares: TDataSource;
    TFamiliaresNOMB_SEXO: TStringField;
    TFamiliaresNOMB_PARENTESCO: TStringField;
    TFamiliaresNOMB_PAIS: TStringField;
    TFamiliaresNOMB_DEPARTAMENTO: TStringField;
    TFamiliaresNOMB_CIUDAD: TStringField;
    TFamiliaresNOMB_PERS_TIPO_DOCUMENTO: TStringField;
    Fami_Acciones: TActionList;
    Acti_Nuevo: TAction;
    Acti_Grabar: TAction;
    Acti_Cancelar: TAction;
    Acti_Eliminar: TAction;
    SCLButton23: TSCLButton;
    SCLButton24: TSCLButton;
    SCLButton25: TSCLButton;
    SCLButton26: TSCLButton;
    procedure FormCreate(Sender: TObject);
		procedure TGeneralBeforePost(DataSet: TDataSet);
    procedure DSFamiliaresStateChange(Sender: TObject);
    procedure TFamiliaresBeforePost(DataSet: TDataSet);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure Acti_NuevoExecute(Sender: TObject);
    procedure Acti_GrabarExecute(Sender: TObject);
    procedure Acti_CancelarExecute(Sender: TObject);
    procedure Acti_EliminarExecute(Sender: TObject);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure Tabla_VentanaBeforeCancel(DataSet: TDataSet);
    procedure DSGeneralStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Personal1: TFN1_Pers_Personal1;

implementation

uses _cons_pcp, _func_varias;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 11 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Personal1.FormCreate(Sender: TObject);
begin
  inherited;
  //Verifica que se pueda abrir los DataSet
  AbrirDataSet(TSexos, False, False);
  AbrirDataSet(TEstado_Civil, False, False);
  AbrirDataSet(TTipo_Documento, False, False);
  AbrirDataSet(TParentescos, False, False);

  AbrirDataSet(TPaises, False, False);
  AbrirDataSet(TDepartamentos, False, False);
  AbrirDataSet(TCiudades, False, False);

  TGeneral.Filter := 'CONS_PERSONAL = ' +
    Tabla_Ventana.FieldByname('CONS_PERSONAL').AsString;
  TGeneral.Filtered := True;
  TFamiliares.Filter := 'CONS_PERSONAL = ' +
    Tabla_Ventana.FieldByname('CONS_PERSONAL').AsString;
  TFamiliares.Filtered := True;
  AbrirDataSet(TGeneral, False, False);
  AbrirDataSet(TFamiliares, False, False);

end;

{****************************************************************
Procedimiento   : DSFamiliaresStateChange
Objetivo        : Cuando modifiquen o adicionen datos familiares pongo
                  la tabla de personal en edición
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 11 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Personal1.DSFamiliaresStateChange(Sender: TObject);
begin
  inherited;
	//Si se cambia el estado de Familiares se cambia el estado del maestro
	If ((TGeneral.State In [dsEdit, dsInsert]) And Not
  	(Tabla_Ventana.State In [dsEdit, dsInsert])) Then
    Tabla_Ventana.Edit;

  //Habilitar y deshabilitar los botones de dataset de los familiares
	If (TFamiliares.State In [dsEdit, dsInsert]) Then
	Begin
    Acti_Nuevo.Enabled := False;
    Acti_Eliminar.Enabled := False;
    Acti_Grabar.Enabled := True;
    Acti_Cancelar.Enabled := True;
  End
  Else
	Begin
    Acti_Nuevo.Enabled := True;
    Acti_Eliminar.Enabled := True;
    Acti_Grabar.Enabled := False;
    Acti_Cancelar.Enabled := False;
    If TFamiliares.RecordCount < 1 Then
    	Acti_Eliminar.Enabled := False;
  End
end;

{****************************************************************
Procedimiento   : TGeneralBeforePost
Objetivo        : Verifico que no falte ningún campo requerido
									en la tabla de datos generales
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 11 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Personal1.TGeneralBeforePost(DataSet: TDataSet);
begin
  inherited;
	//Verifico que tenga el valor del maestro
  If TGeneral.FieldByname('CONS_PERSONAL').AsString = '' Then
  	TGeneral.FieldByname('CONS_PERSONAL').Value :=
    	Tabla_Ventana.FieldByname('CONS_PERSONAL').Value;

  //Verifico que no falte ningún campo requerido
  ValidarDatosDataSet(TGeneral);
end;

{****************************************************************
Procedimiento   : TFamiliaresBeforePost
Objetivo        : Verifico que no falte ningún campo requerido
									en la tabla de familiares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 11 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Personal1.TFamiliaresBeforePost(DataSet: TDataSet);
begin
  inherited;
	//Verifico que tenga el valor del maestro
  If TFamiliares.FieldByname('CONS_PERSONAL').AsString = '' Then
  	TFamiliares.FieldByname('CONS_PERSONAL').Value :=
    	Tabla_Ventana.FieldByname('CONS_PERSONAL').Value;

  //Verifico que no falte ningún campo requerido
  ValidarDatosDataSet(TFamiliares);
end;

procedure TFN1_Pers_Personal1.Tabla_VentanaBeforePost(DataSet: TDataSet);
begin
  inherited;
	//Grabo los datos de la tabla generales
	If (TGeneral.State In [dsInsert, dsEdit]) Then
    Try
      TGeneral.Post;
    Except
			Abort;
    End;
	//Grabo los datos de la tabla Familiares
	If (TFamiliares.State In [dsInsert, dsEdit]) Then
    Try
      TFamiliares.Post;
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
procedure TFN1_Pers_Personal1.Acti_NuevoExecute(Sender: TObject);
begin
  inherited;
  TFamiliares.Insert;
end;

{****************************************************************
Procedimiento   : Acti_GrabarExecute
Objetivo        : Grabar el registro de familiares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 11 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Personal1.Acti_GrabarExecute(Sender: TObject);
begin
  inherited;
  TFamiliares.Post;
end;

{****************************************************************
Procedimiento   : Acti_CancelarExecute
Objetivo        : Cancelar el registro de familiares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 11 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Personal1.Acti_CancelarExecute(Sender: TObject);
begin
  inherited;
  If TFamiliares.State = dsBrowse Then
  	Exit;
  Case EjecutarMensaje(cosDeseaCancelar, mtConfirmation, [mbYes, mbNo], 0) of
    mrYes : TFamiliares.Cancel;
    mrNo : Exit;
  End;
end;

{****************************************************************
Procedimiento   : Acti_EliminarExecute
Objetivo        : Eliminar el registro de familiares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 11 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Personal1.Acti_EliminarExecute(Sender: TObject);
begin
  inherited;
	If TFamiliares.RecordCount < 1 Then
  	Exit;
  Case EjecutarMensaje(cosDeseaEliminar, mtConfirmation, [mbYes, mbNo], 0) of
          mrYes : TFamiliares.Delete;
          mrNo  : Exit;
  End;
end;

{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Habilitar y deshabilitar los controles de datos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 14 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Personal1.data_ventanaStateChange(Sender: TObject);
begin
  inherited;
	SetControlEnabled(PCPrincipal, (Tabla_Ventana.State In [dsEdit, dsInsert]));
end;

{****************************************************************
Procedimiento   : Tabla_VentanaBeforeCancel
Objetivo        : Si se cancela el maestro se cancela los detalles
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 17 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Personal1.Tabla_VentanaBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  TGeneral.Cancel;
  TFamiliares.Cancel;
end;

{****************************************************************
Procedimiento   : DSGeneralStateChange
Objetivo        : Si se cambia el estadi de datos generales se cambia
									el estado del maestro
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 17 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Personal1.DSGeneralStateChange(Sender: TObject);
begin
  inherited;
	//Si se cambia el estado de Datos Generales se cambia el estado del maestro
	If ((TGeneral.State In [dsEdit, dsInsert]) And Not
  	(Tabla_Ventana.State In [dsEdit, dsInsert])) Then
    Tabla_Ventana.Edit;
end;

end.
