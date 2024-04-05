unit UN1_Para_Sub_Improductivos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, AdvPanel, dxExEdtr, dxCntner, Db, DBTables, StdCtrls,
  SohoBtns, SCLButton, dxEdLib, dxDBELib, RxLookup, PCPLookUpComboEdit,
  PictureContainer, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, dxEditor, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, TBXDkPanels, TBXButtonSCL, Boxes, PCPProceso;
type
  TFN1_Para_Sub_Improductivos1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    CBCodigo: TPCPLookUpComboEdit;
    TImproductivos: TTable;
    DSImproductivos: TDataSource;
    SCLDBLabel2: TSCLDBLabel;
    CBImproductivo: TPCPLookUpComboEdit;
    SCLDBLabel3: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    SCLDBLabel4: TSCLDBLabel;
    DBSub_Improductivo: TdxDBEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    SCLDBLabel7: TSCLDBLabel;
    DBDescripcion: TdxDBMemo;
    SCLButton1: TTBXButtonSCL;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBCheckEdit3: TdxDBCheckEdit;
    Tabla_VentanaCONS_SUB_IMPRODUCTIVO: TIntegerField;
    Tabla_VentanaCONS_IMPRODUCTIVO: TIntegerField;
    Tabla_VentanaCODI_SUB_IMPRODUCTIVO: TStringField;
    Tabla_VentanaNOMB_SUB_IMPRODUCTIVO: TStringField;
    Tabla_VentanaDESCRIPCION: TStringField;
    Tabla_VentanaDESC_INCENTIVOS: TIntegerField;
    Tabla_VentanaDESC_EFICIENCIA: TIntegerField;
    Tabla_VentanaACTIVO: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLDBLabel5: TSCLDBLabel;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    Tabla_VentanaPORCENTAJE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Sub_Improductivos1: TFN1_Para_Sub_Improductivos1;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Sábado 20 de marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Sub_Improductivos1.FormCreate(Sender: TObject);
begin
  inherited;
  //Verifica que si se pueda abrir el DataSet
  AbrirDataSet(TImproductivos, False, False);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Inicializar el registro del sub improductivo
                  después de insertarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 02 de 2004
Versión         : pcp4003
*****************************************************************}
procedure TFN1_Para_Sub_Improductivos1.Tabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Valores por defecto del registro
  With tabla_ventana do
    Begin
         FieldByName('activo').Value := 1;
         FieldByName('desc_incentivos').Value := 1;
         FieldByName('desc_eficiencia').Value := 1;
    End;
end;

end.
