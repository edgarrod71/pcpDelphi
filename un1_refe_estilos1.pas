{ 16/03/2004 05:46:38 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:45:00 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 04:49:22 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 04:48:54 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:41:25 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:51 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 01/03/2004 07:36:43 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 01/03/2004 07:36:27 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit un1_refe_estilos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, DBTables, SCLDBLabel, dxExEdtr, SoCtrls,
  PictureContainer, AdvPanel, Boxes, PCPProceso;

type
  Tfn1_refe_estilos1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    Tabla_VentanaCONS_REFE_ESTILO: TIntegerField;
    Tabla_VentanaCODI_REFE_ESTILO: TStringField;
    Tabla_VentanaNOMB_REFE_ESTILO: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_estilos1: Tfn1_refe_estilos1;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_refe_estilos1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
