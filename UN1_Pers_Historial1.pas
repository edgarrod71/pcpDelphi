unit UN1_Pers_Historial1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, dxExEdtr, dxCntner, Db, DBTables, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, ExtCtrls, dxEditor, dxEdLib, dxDBELib,
  TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls, SoCtrls, SCLDBLabel,
  SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit;

type
  TFN1_Pers_Historial1 = class(T_fvent_modal)
    TPersonal: TTable;
    DSPersonal: TDataSource;
    Tabla_VentanaCODI_PERSONAL: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaTEXT_ANOTACION: TMemoField;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    CBPersonal: TPCPLookUpComboEdit;
    CBCodigo: TPCPLookUpComboEdit;
    SCLButton1: TSCLButton;
    SCLDBLabel1: TSCLDBLabel;
    DBAnotacion: TdxDBMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Historial1: TFN1_Pers_Historial1;

implementation

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 18 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Historial1.FormCreate(Sender: TObject);
begin
  inherited;
  TPersonal.Open;
end;

end.
