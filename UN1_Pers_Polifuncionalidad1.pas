unit UN1_Pers_Polifuncionalidad1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal_alone, RxLookup, PCPLookUpComboEdit, PCPFrame,
  PictureContainer, DBTables, AdvPanel, dxExEdtr, dxCntner, Db,
  SCLPropiedadesForm, DBActns, ActnList, ImgList, ExtCtrls, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  TBX, TB2Item, TB2Dock, TB2Toolbar, dxTL, dxDBCtrl, dxDBGrid, dfsSplitter;

type
  TFN1_Pers_Polifuncionalidad1 = class(T_fvent_modal_alone)
    QPersonal: TQuery;
    PCPFrame1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    DBCodigo: TPCPLookUpComboEdit;
    DBPersonal: TPCPLookUpComboEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    PCPFrame2: TPCPFrame;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    Acci_Maquinas: TActionList;
    Acti_Nuev_Maquina: TAction;
    Acti_Modi_Maquina: TAction;
    Acti_Elim_Maquina: TAction;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    dxDBGrid1: TdxDBGrid;
    QMaquinas_Utilizadas: TQuery;
    DSQMaquinas_Utilizadas: TDataSource;
    QPersonalCONS_PERSONAL: TIntegerField;
    QPersonalCODI_PERSONAL: TStringField;
    QPersonalPRIM_APELLIDO: TStringField;
    QPersonalSEGU_APELLIDO: TStringField;
    QPersonalNOMBRES: TStringField;
    QPersonalNOMB_COMPLETO: TStringField;
    QPersonalCONS_UBIC_TIPO: TIntegerField;
    QPersonalCONS_EMPRESA: TIntegerField;
    QPersonalCODI_EMPRESA: TStringField;
    QPersonalNOMB_EMPRESA: TStringField;
    QPersonalCONS_AREA: TIntegerField;
    QPersonalCODI_AREA: TStringField;
    QPersonalNOMB_AREA: TStringField;
    QPersonalCONS_PLAN_LINEA: TIntegerField;
    QPersonalCONS_PLANTA: TIntegerField;
    QPersonalCODI_PLANTA: TStringField;
    QPersonalNOMB_PLANTA: TStringField;
    QPersonalCONS_LINE_SECCION: TIntegerField;
    QPersonalCONS_LINEA: TIntegerField;
    QPersonalCODI_LINEA: TStringField;
    QPersonalNOMB_LINEA: TStringField;
    QPersonalCONS_SECCION: TIntegerField;
    QPersonalCODI_SECCION: TStringField;
    QPersonalNOMB_SECCION: TStringField;
    QPersonalCONS_BODEGA: TIntegerField;
    QPersonalCODI_BODEGA: TStringField;
    QPersonalNOMB_BODEGA: TStringField;
    QPersonalOTRA_UBICACION: TStringField;
    QPersonalCONS_PERS_CARGO: TIntegerField;
    QPersonalCODI_PERS_CARGO: TStringField;
    QPersonalNOMB_PERS_CARGO: TStringField;
    QPersonalCONS_PERS_CENT_COSTO: TIntegerField;
    QPersonalCODI_PERS_CENT_COSTO: TStringField;
    QPersonalNOMB_PERS_CENT_COSTO: TStringField;
    QPersonalCONS_COST_GRUPO: TIntegerField;
    QPersonalCODI_COST_GRUPO: TStringField;
    QPersonalNOMB_COST_GRUPO: TStringField;
    QPersonalCONS_PERS_NIVE_SALARIAL: TIntegerField;
    QPersonalCODI_PERS_NIVE_SALARIAL: TStringField;
    QPersonalNOMB_PERS_NIVE_SALARIAL: TStringField;
    QPersonalCONS_PERS_TIPO_CONTRATO: TIntegerField;
    QPersonalCODI_PERS_TIPO_CONTRATO: TStringField;
    QPersonalNOMB_PERS_TIPO_CONTRATO: TStringField;
    QPersonalNUME_CONTRATO: TStringField;
    QPersonalCONS_PERI_PAGO: TIntegerField;
    QPersonalCODI_PERI_PAGO: TStringField;
    QPersonalNOMB_PERI_PAGO: TStringField;
    QPersonalVALO_SALARIO: TIntegerField;
    QPersonalAUXI_TRANSPORTE: TIntegerField;
    QPersonalAUXI_SALARIAL: TIntegerField;
    QPersonalAPLI_INCENTIVO: TStringField;
    QPersonalCONS_PERS_MOVIMIENTO: TIntegerField;
    QPersonalESTADO: TStringField;
    QPersonalCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    QPersonalCODI_PERS_TIPO_MOVIMIENTO: TStringField;
    QPersonalNOMB_PERS_TIPO_MOVIMIENTO: TStringField;
    QPersonalFECH_INICIAL: TDateTimeField;
    QPersonalFECH_FINAL: TDateTimeField;
    QPersonalCONS_TURNO: TIntegerField;
    QPersonalCODI_TURNO: TStringField;
    QPersonalTIPO_TURNO: TStringField;
    QPersonalANTIGUEDAD: TIntegerField;
    QPersonalFECH_INGRESO: TDateTimeField;
    QPersonalDURACION: TFloatField;
    QPersonalTIEMPO: TStringField;
    QPersonalANO: TSmallintField;
    QPersonalMES: TSmallintField;
    QPersonalDIA: TSmallintField;
    QPersonalDIAS_VENCIMIENTO: TIntegerField;
    QPersonalFECH_VENCIMIENTO: TDateTimeField;
    QPersonalDIAS_VENC_CONTRATO: TIntegerField;
    QMaquinas_UtilizadasCONS_PERS_MAQU_UTILIZADA: TIntegerField;
    QMaquinas_UtilizadasCODI_RECU_FAMILIA: TStringField;
    QMaquinas_UtilizadasNOMB_RECU_FAMILIA: TStringField;
    QMaquinas_UtilizadasNOMB_GRAD_HABILIDAD: TStringField;
    dxDBGrid1CONS_PERS_MAQU_UTILIZADA: TdxDBGridMaskColumn;
    dxDBGrid1CODI_RECU_FAMILIA: TdxDBGridMaskColumn;
    dxDBGrid1NOMB_RECU_FAMILIA: TdxDBGridMaskColumn;
    dxDBGrid1NOMB_GRAD_HABILIDAD: TdxDBGridMaskColumn;
    dfsSplitter2: TdfsSplitter;
    PCPFrame3: TPCPFrame;
    TBXDock2: TTBXDock;
    TBXToolbar2: TTBXToolbar;
    Acci_Operaciones: TActionList;
    Acti_Nuev_Operacion: TAction;
    Acti_Modi_Operacion: TAction;
    Acti_Elim_Operacion: TAction;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    dxDBGrid2: TdxDBGrid;
    QOperaciones: TQuery;
    DSQOperaciones: TDataSource;
    QOperacionesCONS_PERS_OPER_EJECUTADA: TIntegerField;
    QOperacionesCODI_OPER_COST_TIPO: TStringField;
    QOperacionesNOMB_OPER_COST_TIPO: TStringField;
    QOperacionesNOMB_RANG_EFICIENCIA: TStringField;
    dxDBGrid2CONS_PERS_OPER_EJECUTADA: TdxDBGridMaskColumn;
    dxDBGrid2CODI_OPER_COST_TIPO: TdxDBGridMaskColumn;
    dxDBGrid2NOMB_OPER_COST_TIPO: TdxDBGridMaskColumn;
    dxDBGrid2NOMB_RANG_EFICIENCIA: TdxDBGridMaskColumn;
    QEliminar_Maquinas: TQuery;
    QEliminar_Operaciones: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure Acti_Nuev_MaquinaExecute(Sender: TObject);
    procedure Acti_Modi_MaquinaExecute(Sender: TObject);
    procedure Acti_Nuev_OperacionExecute(Sender: TObject);
    procedure Acti_Modi_OperacionExecute(Sender: TObject);
    procedure QMaquinas_UtilizadasAfterOpen(DataSet: TDataSet);
    procedure QOperacionesAfterOpen(DataSet: TDataSet);
    procedure Acti_Elim_MaquinaExecute(Sender: TObject);
    procedure Acti_Elim_OperacionExecute(Sender: TObject);
    procedure DBCodigoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Polifuncionalidad1: TFN1_Pers_Polifuncionalidad1;

implementation

uses _func_varias, UN1_Pers_Poli_Maquinas1, _cons_pcp,
  UN1_Pers_Poli_Operaciones1;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 24 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Polifuncionalidad1.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir tablas auxiliares
  AbrirDataSet(QMaquinas_Utilizadas);
  AbrirDataSet(QOperaciones);
end;

{****************************************************************
Procedimiento   : Acti_Nuev_MaquinaExecute
Objetivo        : Adicionar maquina
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 24 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Polifuncionalidad1.Acti_Nuev_MaquinaExecute(
  Sender: TObject);
begin
  inherited;
  //Crear la forma
	FN1_Pers_Poli_Maquinas1 := TFN1_Pers_Poli_Maquinas1.Create(Self);
	With FN1_Pers_Poli_Maquinas1 DO
  Begin
		Visible := False;
    FormStyle := fsNormal;
    Position := poScreenCenter;
    Cons_Personal := QPersonal.FieldByName('CONS_PERSONAL').AsInteger;
    FN1_Pers_Poli_Maquinas1.Caption := 'Adicionando ' + FN1_Pers_Poli_Maquinas1.Caption;
    FN1_Pers_Poli_Maquinas1.Tabla_Ventana.Insert;
    ShowModal;
  End;

  //Actualizar la consulta
  RefreshDataSet(QMaquinas_Utilizadas);
end;

{****************************************************************
Procedimiento   : Acti_Modi_MaquinaExecute
Objetivo        : Modificar maquina
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 24 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Polifuncionalidad1.Acti_Modi_MaquinaExecute(
  Sender: TObject);
begin
  inherited;
  //Crear la forma
	FN1_Pers_Poli_Maquinas1 := TFN1_Pers_Poli_Maquinas1.Create(Self);
	With FN1_Pers_Poli_Maquinas1 DO
  Begin
		Visible := False;
    FormStyle := fsNormal;
    Position := poScreenCenter;
    Cons_Personal := QPersonal.FieldByName('CONS_PERSONAL').AsInteger;
    FN1_Pers_Poli_Maquinas1.Caption := 'Modificando ' + FN1_Pers_Poli_Maquinas1.Caption;
    FN1_Pers_Poli_Maquinas1.Tabla_Ventana.Locate('CONS_PERS_MAQU_UTILIZADA',
    	QMaquinas_Utilizadas.FieldByname('CONS_PERS_MAQU_UTILIZADA').AsInteger, []);
    FN1_Pers_Poli_Maquinas1.Tabla_Ventana.Edit;
    ShowModal;
  End;

  //Actualizar la consulta
  RefreshDataSet(QMaquinas_Utilizadas);
end;

{****************************************************************
Procedimiento   : Acti_Nuev_OperacionExecute
Objetivo        : Adicionar operación
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 24 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Polifuncionalidad1.Acti_Nuev_OperacionExecute(
  Sender: TObject);
begin
  inherited;
  //Crear la forma
  FN1_Pers_Poli_Operaciones1 := TFN1_Pers_Poli_Operaciones1.Create(Self);
  With FN1_Pers_Poli_Operaciones1 DO Begin
    Visible := False;
    FormStyle := fsNormal;
    Position := poScreenCenter;
    Cons_Pers_Maqu_Utilizada := QMaquinas_Utilizadas.FieldByName('CONS_PERS_MAQU_UTILIZADA').AsInteger;
    FN1_Pers_Poli_Operaciones1.Caption := 'Adicionando ' + FN1_Pers_Poli_Operaciones1.Caption;
    FN1_Pers_Poli_Operaciones1.Tabla_Ventana.Insert;
    ShowModal;
  End;

  //Actualizar la consulta
  RefreshDataSet(QOperaciones);
end;

{****************************************************************
Procedimiento   : Acti_Modi_OperacionExecute
Objetivo        : Modificar operación
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 24 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Polifuncionalidad1.Acti_Modi_OperacionExecute(
  Sender: TObject);
begin
  inherited;
  //Crear la forma
	FN1_Pers_Poli_Operaciones1 := TFN1_Pers_Poli_Operaciones1.Create(Self);
	With FN1_Pers_Poli_Operaciones1 DO
  Begin
		Visible := False;
    FormStyle := fsNormal;
    Position := poScreenCenter;
    Cons_Pers_Maqu_Utilizada := QMaquinas_Utilizadas.FieldByName('CONS_PERS_MAQU_UTILIZADA').AsInteger;
    FN1_Pers_Poli_Operaciones1.Caption := 'Modificando ' + FN1_Pers_Poli_Operaciones1.Caption;
    FN1_Pers_Poli_Operaciones1.Tabla_Ventana.Locate('CONS_PERS_OPER_EJECUTADA',
    	FN1_Pers_Poli_Operaciones1.QOperaciones.FieldByname('CONS_PERS_OPER_EJECUTADA').AsInteger, []);
    FN1_Pers_Poli_Operaciones1.Tabla_Ventana.Edit;
    ShowModal;
  End;

  //Actualizar la consulta
  RefreshDataSet(QOperaciones);
end;

{****************************************************************
Procedimiento   : QMaquinas_UtilizadasAfterOpen
Objetivo        : Habilitar / deshabilitar acciones de maquinas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 24 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Polifuncionalidad1.QMaquinas_UtilizadasAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
	//Habilitar / deshabilitar acciones de maquinas
  Acti_Modi_Maquina.Enabled := (QMaquinas_Utilizadas.RecordCount > 0);
  Acti_Elim_Maquina.Enabled := (QMaquinas_Utilizadas.RecordCount > 0);
end;

{****************************************************************
Procedimiento   : QOperacionesAfterOpen
Objetivo        : Habilitar / deshabilitar acciones de operaciones
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 24 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Polifuncionalidad1.QOperacionesAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
	//Habilitar / deshabilitar acciones de maquinas
  Acti_Nuev_Operacion.Enabled := (QMaquinas_Utilizadas.RecordCount > 0);
  Acti_Modi_Operacion.Enabled := (QOperaciones.RecordCount > 0);
  Acti_Elim_Operacion.Enabled := (QOperaciones.RecordCount > 0);
end;

procedure TFN1_Pers_Polifuncionalidad1.Acti_Elim_MaquinaExecute(
  Sender: TObject);
begin
  inherited;
	//Eliminar maquinas
  QEliminar_Maquinas.Close;
  QEliminar_Maquinas.ExecSQL;
  QEliminar_Maquinas.Close;
  //Actualizar la consulta
  RefreshDataSet(QMaquinas_Utilizadas);
end;

procedure TFN1_Pers_Polifuncionalidad1.Acti_Elim_OperacionExecute(
  Sender: TObject);
begin
  inherited;
	//Eliminar maquinas
  QEliminar_Operaciones.Close;
  QEliminar_Operaciones.ExecSQL;
  QEliminar_Operaciones.Close;
  //Actualizar la consulta
  RefreshDataSet(QOperaciones);
end;

procedure TFN1_Pers_Polifuncionalidad1.DBCodigoChange(Sender: TObject);
begin
  inherited;
	If (Sender Is TPCPLookUpComboEdit) Then
  	If (Sender As TPCPLookUpComboEdit).Name = 'DBCodigo' Then
      DBPersonal.KeyValue := DBCodigo.KeyValue
    Else If (Sender As TPCPLookUpComboEdit).Name = 'DBCodigo' Then
      DBCodigo.KeyValue := DBPersonal.KeyValue
end;

end.
