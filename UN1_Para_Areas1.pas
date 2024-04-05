{ 17/03/2004 04:21:08 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:07 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:41:03 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:11 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Areas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, DBTables, SCLDBLabel, SohoBtns, PCPButton2,
  dxExEdtr, SoCtrls, PictureContainer, AdvPanel, Boxes,
  PCPProceso;

type
  TFN1_Para_Areas1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit3: TdxDBEdit;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit4: TdxDBEdit;
    SCLDBLabel4: TSCLDBLabel;
    dxDBEdit5: TdxDBEdit;
    SCLDBLabel5: TSCLDBLabel;
    dxDBEdit6: TdxDBEdit;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    dxDBEdit7: TdxDBEdit;
    SCLDBLabel8: TSCLDBLabel;
    dxDBEdit8: TdxDBEdit;
    Tabla_VentanaCODI_AREA: TStringField;
    Tabla_VentanaNOMB_AREA: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaTELE_1: TStringField;
    Tabla_VentanaTELE_2: TStringField;
    Tabla_VentanaFAX: TStringField;
    Tabla_VentanaTELE_MOVIL: TStringField;
    Tabla_VentanaRESPONSABLE: TStringField;
    Tabla_VentanaDESCRIPCION: TStringField;
    Tabla_VentanaCONS_AREA: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Areas1: TFN1_Para_Areas1;

implementation

uses _Traductor;

{$R *.DFM}

procedure TFN1_Para_Areas1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
