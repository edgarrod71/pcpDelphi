{ 17/03/2004 04:10:17 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:14 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:40:27 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:57 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 26/02/2004 06:10:29 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Cent_Costos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, DBTables, SCLDBLabel, dxExEdtr, SoCtrls,
  PictureContainer, AdvPanel, SohoBtns, SCLButton, RxLookup,
  PCPLookUpComboEdit, Boxes, PCPProceso;

type
  TFN1_Para_Cent_Costos1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    Tabla_VentanaCONS_PERS_CENT_COSTO: TIntegerField;
    Tabla_VentanaCODI_PERS_CENT_COSTO: TStringField;
    Tabla_VentanaNOMB_PERS_CENT_COSTO: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLDBLabel15: TSCLDBLabel;
    dxDBEdit10: TdxDBEdit;
    Tabla_VentanaOBSERVACIONES: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Cent_Costos1: TFN1_Para_Cent_Costos1;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}

procedure TFN1_Para_Cent_Costos1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
