unit UN1_Pers_Traslados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, ExtCtrls,
  dxEditor, dxEdLib, dxDBELib, TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls,
  SoCtrls, SCLDBLabel, SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit,
  Boxes, PCPFrame, RxMemDS, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dfsSplitter, ufra_maqu_ubicacion, PCPProceso;

type
  TFN1_Pers_Traslados = class(T_fvent_modal)
    Tabla_VentanaCONS_PERS_MOVIMIENTO: TIntegerField;
    Tabla_VentanaCONS_PERSONAL: TIntegerField;
    Tabla_VentanaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    Tabla_VentanaFECH_INICIAL: TDateTimeField;
    Tabla_VentanaFECH_FINAL: TDateTimeField;
    Tabla_VentanaCONS_TIPO_DOCUMENTO: TIntegerField;
    Tabla_VentanaNUME_DOCUMENTO: TStringField;
    Tabla_VentanaANULADO: TIntegerField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    PCPFrame2: TPCPFrame;
    SCLDBLabel40: TSCLDBLabel;
    SCLDBLabel42: TSCLDBLabel;
    SCLDBLabel64: TSCLDBLabel;
    SCLDBLabel68: TSCLDBLabel;
    SCLDBLabel65: TSCLDBLabel;
    CBTipo_Documento: TPCPLookUpComboEdit;
    SCLButton27: TSCLButton;
    ENumero_Documento: TdxEdit;
    DBInicial: TdxDateEdit;
    DBObservaciones: TdxEdit;
    DBFinal: TdxDateEdit;
    TTemporal: TRxMemoryData;
    DSTemporal: TDataSource;
    TTemporalCONS_PERSONAL: TIntegerField;
    TTemporalNOMB_COMPLETO: TStringField;
    TTemporalCONS_UBIC_TIPO: TIntegerField;
    TTemporalCONS_EMPRESA: TIntegerField;
    TTemporalCONS_AREA: TIntegerField;
    TTemporalCONS_PLANTA: TIntegerField;
    TTemporalCONS_PLAN_LINEA: TIntegerField;
    TTemporalCONS_LINE_SECCION: TIntegerField;
    TTemporalCONS_BODEGA: TIntegerField;
    TTemporalOTRA_UBICACION: TStringField;
    TTemporalCONS_TURNO: TIntegerField;
    TTemporalCONS_UBIC_TIPO1: TIntegerField;
    TTemporalCONS_EMPRESA1: TIntegerField;
    TTemporalCONS_AREA1: TIntegerField;
    TTemporalCONS_PLANTA1: TIntegerField;
    TTemporalCONS_PLAN_LINEA1: TIntegerField;
    TTemporalCONS_LINE_SECCION1: TIntegerField;
    TTemporalCONS_BODEGA1: TIntegerField;
    TTemporalOTRA_UBICACION1: TStringField;
    TTemporalCONS_TURNO1: TIntegerField;
    PCPFrame1: TPCPFrame;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1CODI_PERSONAL: TdxDBGridMaskColumn;
    dxDBGrid1NOMB_COMPLETO: TdxDBGridMaskColumn;
    TTemporalCODI_PERSONAL: TStringField;
    dfsSplitter1: TdfsSplitter;
    Panel1: TPanel;
    PCPFrame3: TPCPFrame;
    PCPFrame4: TPCPFrame;
    dfsSplitter2: TdfsSplitter;
    ffra_maqu_ubicacion1: Tffra_maqu_ubicacion;
    Panel2: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    SCLButton1: TSCLButton;
    ffra_maqu_ubicacion2: Tffra_maqu_ubicacion;
    Panel3: TPanel;
    SCLDBLabel2: TSCLDBLabel;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    SCLButton2: TSCLButton;
    TTurnos: TTable;
    DSTurnos: TDataSource;
    TTipo_Documento_Movimiento: TTable;
    DSTipo_Documento_Movimiento: TDataSource;
    dfsSplitter3: TdfsSplitter;
    procedure ffra_maqu_ubicacion2comb_tipo_ubicacionChange(
      Sender: TObject);
    procedure TTemporalBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Traslados: TFN1_Pers_Traslados;

implementation

{$R *.DFM}

procedure TFN1_Pers_Traslados.ffra_maqu_ubicacion2comb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  ffra_maqu_ubicacion2.comb_tipo_ubicacionChange(Sender);

  If TTemporal.State In [dsEdit, dsInsert] Then
    With ffra_maqu_ubicacion2 Do
    Begin
      If quer_maqu_ubicaciones.FieldByName('VER_EMPRESA').AsInteger = -1 Then
      Begin
        TTemporal.FieldByName('CONS_EMPRESA1').AsString := '';
        TTemporal.FieldByName('CONS_AREA1').AsString := '';
      End;
      If quer_maqu_ubicaciones.FieldByName('VER_PLANTA').AsInteger = -1 Then
      Begin
        TTemporal.FieldByName('CONS_PLANTA1').AsString := '';
        TTemporal.FieldByName('CONS_PLAN_LINEA1').AsString := '';
        TTemporal.FieldByName('CONS_LINE_SECCION1').AsString := '';
      End;
      If quer_maqu_ubicaciones.FieldByName('VER_BODEGA').AsInteger = -1 Then
        TTemporal.FieldByName('CONS_BODEGA1').AsString := '';
      If quer_maqu_ubicaciones.FieldByName('VER_OTRA_UBICACION').AsInteger = -1 Then
        TTemporal.FieldByName('OTRA_UBICACION1').AsString := '';
    End;

end;

procedure TFN1_Pers_Traslados.TTemporalBeforePost(DataSet: TDataSet);
begin
  inherited;
	//Si no a elegido el tipo de ubicación le dejo Desconocido
  If TTemporalCONS_UBIC_TIPO1.AsString = '' Then
  	TTemporalCONS_UBIC_TIPO1.AsInteger := 0;
	//Si no a elegido la empresa le dejo Desconocido
  If TTemporalCONS_EMPRESA1.AsString = '' Then
  	TTemporalCONS_EMPRESA1.AsInteger := 0;
	//Si no a elegido el área le dejo Desconocido
  If TTemporalCONS_AREA1.AsString = '' Then
  	TTemporalCONS_AREA1.AsInteger := 0;
	//Si no a elegido la planta le dejo Desconocido
  If TTemporalCONS_PLANTA1.AsString = '' Then
  	TTemporalCONS_PLANTA1.AsInteger := 0;
	//Si no a elegido la línea le dejo Desconocido
  If TTemporalCONS_PLAN_LINEA1.AsString = '' Then
  	TTemporalCONS_PLAN_LINEA1.AsInteger := 0;
	//Si no a elegido la sección le dejo Desconocido
  If TTemporalCONS_LINE_SECCION1.AsString = '' Then
  	TTemporalCONS_LINE_SECCION1.AsInteger := 0;
	//Si no a elegido la bodega le dejo Desconocido
  If TTemporalCONS_BODEGA1.AsString = '' Then
  	TTemporalCONS_BODEGA1.AsInteger := 0;
end;

procedure TFN1_Pers_Traslados.FormCreate(Sender: TObject);
begin
  inherited;
//  TTipo_Contrato
end;

end.
