{ 17/03/2004 03:02:57 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:22 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:40:23 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:52 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Nive_Salariales1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, DBTables, SCLDBLabel, dxExEdtr, SoCtrls,
  PictureContainer, AdvPanel, Boxes, PCPProceso;

type
  TFN1_Para_Nive_Salariales1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    Tabla_VentanaCONS_PERS_NIVE_SALARIAL: TIntegerField;
    Tabla_VentanaCODI_PERS_NIVE_SALARIAL: TStringField;
    Tabla_VentanaNOMB_PERS_NIVE_SALARIAL: TStringField;
    Tabla_VentanaVALO_MINIMO: TIntegerField;
    Tabla_VentanaVALO_MAXIMO: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    SCLDBLabel4: TSCLDBLabel;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Nive_Salariales1: TFN1_Para_Nive_Salariales1;

implementation

uses _Traductor;

{$R *.DFM}

procedure TFN1_Para_Nive_Salariales1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
