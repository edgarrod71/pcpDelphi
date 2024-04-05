unit UN1_Refe_Presentacion1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, ufra_fotografiaDB, dfsSplitter, Boxes, PCPFrame,
  dxTL, dxDBCtrl, dxDBGrid, RxMemDS, dxDBTLCl, dxGrClms, Menus, _vent_child,
  PCPProceso;

type
  TFN1_Refe_Presentacion1 = class(T_fvent_modal)
    Tabla_VentanaCONS_REFE_VARI_PRESENTACION: TIntegerField;
    Tabla_VentanaCONS_REFE_VARIACION: TIntegerField;
    Tabla_VentanaIMAGEN: TBlobField;
    Tabla_VentanaAJUS_IMAGEN: TIntegerField;
    Tabla_VentanaDETA_IMAGEN: TBlobField;
    Tabla_VentanaAJUS_DETA_IMAGEN: TIntegerField;
    Tabla_VentanaOBSERVACIONES: TMemoField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaTALL_MUESTRA: TStringField;
    QReferencia: TQuery;
    QReferenciaCONS_REFERENCIA: TIntegerField;
    QReferenciaCODI_REFERENCIA: TStringField;
    QReferenciaMOLDE: TStringField;
    QReferenciaCODI_INTE_REFERENCIA: TStringField;
    QReferenciaNOMB_REFERENCIA: TStringField;
    QReferenciaCODI_BARRAS: TStringField;
    QReferenciaCONS_REFE_TIPO_VARIACION: TIntegerField;
    QReferenciaCODI_REFE_TIPO_VARIACION: TStringField;
    QReferenciaNOMB_REFE_TIPO_VARIACION: TStringField;
    QReferenciaCONS_REFE_MARCA: TIntegerField;
    QReferenciaCODI_REFE_MARCA: TStringField;
    QReferenciaNOMB_REFE_MARCA: TStringField;
    QReferenciaCONS_REFE_LINEA: TIntegerField;
    QReferenciaCODI_REFE_LINEA: TStringField;
    QReferenciaNOMB_REFE_LINEA: TStringField;
    QReferenciaCONS_REFE_EDAD: TIntegerField;
    QReferenciaCODI_REFE_EDAD: TStringField;
    QReferenciaNOMB_REFE_EDAD: TStringField;
    QReferenciaCONS_REFE_ESTILO: TIntegerField;
    QReferenciaCODI_REFE_ESTILO: TStringField;
    QReferenciaNOMB_REFE_ESTILO: TStringField;
    QReferenciaCONS_REFE_GRUPO: TIntegerField;
    QReferenciaCODI_REFE_GRUPO: TStringField;
    QReferenciaNOMB_REFE_GRUPO: TStringField;
    QReferenciaCONS_SEXO: TIntegerField;
    QReferenciaCODI_SEXO: TStringField;
    QReferenciaNOMB_SEXO: TStringField;
    QReferenciaCONS_REFE_LAVADO: TIntegerField;
    QReferenciaCODI_REFE_LAVADO: TStringField;
    QReferenciaNOMB_REFE_LAVADO: TStringField;
    QReferenciaCONS_REFE_BORDADO: TIntegerField;
    QReferenciaCODI_REFE_BORDADO: TStringField;
    QReferenciaNOMB_REFE_BORDADO: TStringField;
    QReferenciaCONS_REFE_ESTAMPADO: TIntegerField;
    QReferenciaCODI_REFE_ESTAMPADO: TStringField;
    QReferenciaNOMB_REFE_ESTAMPADO: TStringField;
    QReferenciaCONS_REFE_ESTADO: TIntegerField;
    QReferenciaCODI_REFE_ESTADO: TStringField;
    QReferenciaNOMB_REFE_ESTADO: TStringField;
    QReferenciaGRUP_TALLAS: TStringField;
    QReferenciaIMAGEN: TBlobField;
    QReferenciaDESCRIPCION: TStringField;
    QReferenciaFECH_SISTEMA: TDateTimeField;
    QReferenciaUSUA_SISTEMA: TStringField;
    QReferenciaCONS_REFE_VARIACION: TIntegerField;
    QReferenciaCONS_REFE_TEMPORADA: TIntegerField;
    QReferenciaCODI_REFE_TEMPORADA: TStringField;
    QReferenciaNOMB_REFE_TEMPORADA: TStringField;
    DSQReferencia: TDataSource;
    Bevel1: TBevel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    PCPFrame1: TPCPFrame;
    dxDBMemo1: TdxDBMemo;
    PCPFrame2: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    PCPFrame3: TPCPFrame;
    Panel2: TPanel;
    dfsSplitter1: TdfsSplitter;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    ffra_fotografiaDB2: Tffra_fotografiaDB;
    QImagenes_Empaque: TQuery;
    DSQImagenes_Empaque: TDataSource;
    QImagenes_EmpaqueCONS_REFE_VARI_PRES_EMPAQUE: TIntegerField;
    QImagenes_EmpaqueCONS_REFE_VARI_PRESENTACION: TIntegerField;
    QImagenes_EmpaqueIMAGEN: TBlobField;
    QImagenes_EmpaqueAJUS_IMAGEN: TIntegerField;
    QImagenes_EmpaqueOBSERVACIONES: TMemoField;
    QImagenes_EmpaqueFECH_SISTEMA: TDateTimeField;
    QImagenes_EmpaqueUSUA_SISTEMA: TStringField;
    Acciones_Imagenes: TActionList;
    Acti_nuev_Imagen: TAction;
    Acti_Modi_Imagen: TAction;
    Acti_Elim_Imagen: TAction;
    MImagenes: TTBXPopupMenu;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    PCPFrame4: TPCPFrame;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem3: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1CONS_REFE_VARI_PRES_EMPAQUE: TdxDBGridMaskColumn;
    dxDBGrid1CONS_REFE_VARI_PRESENTACION: TdxDBGridMaskColumn;
    dxDBGrid1AJUS_IMAGEN: TdxDBGridMaskColumn;
    dxDBGrid1OBSERVACIONES: TdxDBGridMemoColumn;
    dxDBGrid1FECH_SISTEMA: TdxDBGridDateColumn;
    dxDBGrid1USUA_SISTEMA: TdxDBGridMaskColumn;
    QElimiar_Empaque: TQuery;
    dxDBGrid1IMAGEN: TdxDBGridBlobColumn;
    procedure Acti_nuev_ImagenExecute(Sender: TObject);
    procedure Acti_Modi_ImagenExecute(Sender: TObject);
    procedure Acti_Elim_ImagenExecute(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure padr_acti_imprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Maestro : T_fvent_child;
  end;

var
  FN1_Refe_Presentacion1: TFN1_Refe_Presentacion1;

implementation

uses _func_varias, _vari_pcp, _MDI, UN1_Refe_Pres_Empaque1,
  URN1_Refe_Presentacion1;

{$R *.DFM}

{****************************************************************
Procedimiento   : Acti_nuev_ImagenExecute
Objetivo        : Crear el módulo de ingreso de imagenes de material
									de empaque poner en inserción la tabla maestra
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 28 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Refe_Presentacion1.Acti_nuev_ImagenExecute(Sender: TObject);
begin
  inherited;
	//Verifica que la tabla maestra no este en edición o inserción o que no tenga
  //registros
	If ((Tabla_Ventana.State In [dsEdit, dsInsert]) Or
  	(Tabla_Ventana.RecordCount = 0)) Then
  	Exit;
	//Creo el módulo de ingreso de imagenes de material	de empaque
  FN1_Refe_Pres_Empaque1 := TFN1_Refe_Pres_Empaque1.Create(Self);
  With FN1_Refe_Pres_Empaque1 Do
  Begin
    Consecutivo_Presentacion :=
      FN1_Refe_Presentacion1.Tabla_Ventana.FieldByname('CONS_REFE_VARI_PRESENTACION').AsInteger;
    Tabla_Ventana.Insert;
    Tabla_Ventana.FieldByname('CONS_REFE_VARI_PRESENTACION').AsInteger :=
  	  FN1_Refe_Presentacion1.Tabla_Ventana.FieldByname('CONS_REFE_VARI_PRESENTACION').AsInteger;
    ShowModal;
  End;
  //Actualizo la consulta de los materiales de empaque
  QImagenes_Empaque.Close;
  QImagenes_Empaque.Open;
end;

{****************************************************************
Procedimiento   : Acti_Modi_ImagenExecute
Objetivo        : Crear el módulo de ingreso de imagenes de material
									de empaque poner en edición la tabla maestra
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 28 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Refe_Presentacion1.Acti_Modi_ImagenExecute(Sender: TObject);
begin
  inherited;
	//Verifica que la tabla maestra no este en edición o inserción o que no tenga
  //registros
	If ((Tabla_Ventana.State In [dsEdit, dsInsert]) Or
  	(Tabla_Ventana.RecordCount = 0) Or
    (QImagenes_Empaque.RecordCount = 0)) Then
  	Exit;
	//Creo el módulo de ingreso de imagenes de material	de empaque
  FN1_Refe_Pres_Empaque1 := TFN1_Refe_Pres_Empaque1.Create(Self);
  With FN1_Refe_Pres_Empaque1 Do
  Begin
    Consecutivo_Presentacion :=
      FN1_Refe_Presentacion1.Tabla_Ventana.FieldByname('CONS_REFE_VARI_PRESENTACION').AsInteger;
		//Si no encuentra el registro lo inserta
		If Not Tabla_Ventana.Locate('CONS_REFE_VARI_PRES_EMPAQUE',
    	QImagenes_Empaque.FieldByname('CONS_REFE_VARI_PRES_EMPAQUE').AsInteger, []) Then
    Begin
      Tabla_Ventana.Insert;
      Tabla_Ventana.FieldByname('CONS_REFE_VARI_PRESENTACION').AsInteger :=
	      FN1_Refe_Presentacion1.Tabla_Ventana.FieldByname('CONS_REFE_VARI_PRESENTACION').AsInteger;
    End;
    ShowModal;
  End;
  //Actualizo la consulta de los materiales de empaque
  QImagenes_Empaque.Close;
  QImagenes_Empaque.Open;
end;

{****************************************************************
Procedimiento   : Acti_Elim_ImagenExecute
Objetivo        : Eliminar un material de empaque
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 28 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Refe_Presentacion1.Acti_Elim_ImagenExecute(Sender: TObject);
Const
	CosEliminarMaterialEmpaque = 'Desea eliminar el material de empaque?.';
begin
  inherited;
	//Verifica que la tabla maestra no este en edición o inserción o que no tenga
  //registros y que tenga registro de materiales de empaque
	If ((Tabla_Ventana.State In [dsEdit, dsInsert]) Or
  	(Tabla_Ventana.RecordCount = 0) Or
    (QImagenes_Empaque.RecordCount = 0)) Then
  	Exit;
	//Pregunto antes de eliminar el material de empaque
	If EjecutarMensaje(CosEliminarMaterialEmpaque, mtInformation, [mbYes,mbNo], 0) = mrNo Then
  	Exit;
  //Elimino el material de empaque
  QElimiar_Empaque.Close;
  QElimiar_Empaque.ExecSQL;
  QElimiar_Empaque.Close;
	//Actualizo la consulta de los materiales de empaque
  QImagenes_Empaque.Close;
  QImagenes_Empaque.Open;
end;

{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Asignar el consecutivo identificador del registro
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 28 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Refe_Presentacion1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  GenerarSecuencia(Tabla_Ventana, 'CONS_REFE_VARI_PRESENTACION');
end;

{****************************************************************
Procedimiento   : padr_acti_imprimirExecute
Objetivo        : Creo el módulo de impresión de Presentació y
									materiales de empaque de la referencia - variación
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 28 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Refe_Presentacion1.padr_acti_imprimirExecute(
  Sender: TObject);
Var
	I : Integer;  
begin
//  inherited;
	//Verifico que no exista el informe
	If ExisteVentana(TRN1_Refe_Presentacion1) Then
  	Exit;
  //Creo el informe
	RN1_Refe_Presentacion1 := TRN1_Refe_Presentacion1.Create(Self);
	With RN1_Refe_Presentacion1 Do
  Begin
    //Asigno el child a la variable para que filtre la consulta de
    //informes guardados con el título del módulo
    var_vent_child := Maestro;
    //Lleno el arreglo de opciones de impresión
    Maestro.Padr_Acti_Opci_Impresion.Execute;
		//Asigno las opciones de impresión
    For I := 0 To 12 Do
    	Opciones_Impresion[I] := Maestro.Arreglo_Opciones[I];
    //Elimino las firmas, fecha de impresión, página, etc, que no esten
    //seleccionados en las opciones de impresión
    Elegir_Firmas;
    //Asigno la referencia activa al parametro de la consulta
    //del informe
    QPresentacion.ParamByName('CONS_REFE_VARIACION').AsInteger :=
    	Tabla_Ventana.FieldByName('CONS_REFE_VARIACION').AsInteger;
    AbrirDataSet(QPresentacion);
    AbrirDataSet(QMateriales_Empaque);
    Show;
  End;
end;

end.
