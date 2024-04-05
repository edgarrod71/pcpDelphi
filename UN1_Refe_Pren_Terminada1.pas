unit UN1_Refe_Pren_Terminada1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, ufra_fotografiaDB, dfsSplitter, Boxes, PCPFrame,
  Grids, BaseGrid, AdvGrid, AdvCGrid, SCLColumnGrid, PCPProceso;

type
  TFN1_Refe_Pren_Terminada1 = class(T_fvent_modal)
    Tabla_VentanaCONS_REFE_VARI_PREN_TERMINADA: TIntegerField;
    Tabla_VentanaCONS_REFE_VARIACION: TIntegerField;
    Tabla_VentanaTALL_MUESTRA: TStringField;
    Tabla_VentanaIMAGEN: TBlobField;
    Tabla_VentanaAJUS_IMAGEN: TIntegerField;
    Tabla_VentanaDETA_IMAGEN: TBlobField;
    Tabla_VentanaAJUS_DETA_IMAGEN: TIntegerField;
    Tabla_VentanaOBSERVACIONES: TMemoField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
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
    PCPFrame4: TPCPFrame;
    QTallas: TQuery;
    GMedidas: TSCLColumnGrid;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    Acciones_Medida: TActionList;
    Acti_Nuev_Denominacion: TAction;
    Acti_Elim_Denominacion: TAction;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    QDenominaciones: TQuery;
    DSQDenominaciones: TDataSource;
    QTallas_Denominacion: TQuery;
    Acti_Guar_Denominacion: TAction;
    procedure Acti_Nuev_DenominacionExecute(Sender: TObject);
    procedure Acti_Elim_DenominacionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Asignar_Titulos;
    procedure Asignar_Denominaciones;
  end;

var
  FN1_Refe_Pren_Terminada1: TFN1_Refe_Pren_Terminada1;

implementation

uses _MDI;

{$R *.DFM}

procedure TFN1_Refe_Pren_Terminada1.Asignar_Titulos;
Var
	I : Integer;
begin
  GMedidas.Clear;
  GMedidas.ColCount := QTallas.RecordCount + 4;
  GMedidas.RowCount := 2;
  GMedidas.FixedRows := 1;
  GMedidas.ColWidths[0] := 80;
  GMedidas.Cells[0, 0] := 'Ubicación';
  GMedidas.ColWidths[1] := 300;
  GMedidas.Cells[1, 0] := 'Denominación';
  GMedidas.Cells[2, 0] := '+';
  GMedidas.Cells[3, 0] := '-';
  I := 4;
	QTallas.First;
  While Not QTallas.EOF Do
  Begin
		GMedidas.Cells[I, 0] := QTallas.FieldByName('TALLA').AsString;
		QTallas.Next;
    Inc(I);
  End;
end;

procedure TFN1_Refe_Pren_Terminada1.Asignar_Denominaciones;
Var
	Fila, Columna: Integer;
begin
  GMedidas.ClearRows(1, GMedidas.RowCount);
  GMedidas.RowCount := QDenominaciones.RecordCount + 1;
  Fila := 1;
	QDenominaciones.First;
  While Not QDenominaciones.EOF Do   Begin
    GMedidas.Cells[0, Fila] := QDenominaciones.FieldByName('UBICACION').AsString;
    GMedidas.Cells[1, Fila] := QDenominaciones.FieldByName('NOMB_REFE_VARI_PREN_DENOMI').AsString;
    GMedidas.Cells[2, Fila] := QDenominaciones.FieldByName('TOLE_MAYOR').AsString;
    GMedidas.Cells[3, Fila] := QDenominaciones.FieldByName('TOLE_MENOR').AsString;

    For Columna := 4 To GMedidas.ColCount - 1 Do Begin
      QTallas.Locate('TALLA', GMedidas.Cells[Columna, 0], []);
      If QTallas_Denominacion.Locate('CONS_GRUP_TALL_DETALLE',
      	QTallas.FieldByName('CONS_GRUP_TALL_DETALLE').AsInteger, []) Then
        GMedidas.Cells[Columna, Fila] := QTallas_Denominacion.FieldByName('VALOR').AsString;
    End;
		QDenominaciones.Next;
  End;
end;

procedure TFN1_Refe_Pren_Terminada1.Acti_Nuev_DenominacionExecute(
  Sender: TObject);
begin
  inherited;
  GMedidas.AddRow;
end;

procedure TFN1_Refe_Pren_Terminada1.Acti_Elim_DenominacionExecute(
  Sender: TObject);
begin
  inherited;
  GMedidas.Rows[GMedidas.Row].Destroy;
end;

end.
