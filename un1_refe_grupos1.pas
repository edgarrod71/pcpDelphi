{ 16/03/2004 05:46:28 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:45:03 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 05:04:04 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 05:03:34 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 11:37:15 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 11:36:58 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:41:23 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:49 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 01/03/2004 07:34:16 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 01/03/2004 07:33:58 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit un1_refe_grupos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, SCLDBLabel, DBTables, dxExEdtr, SoCtrls,
  PictureContainer, AdvPanel, Boxes, PCPProceso;

type
  Tfn1_refe_grupos1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    Tabla_VentanaCONS_REFE_GRUPO: TIntegerField;
    Tabla_VentanaCODI_REFE_GRUPO: TStringField;
    Tabla_VentanaNOMB_REFE_GRUPO: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_grupos1: Tfn1_refe_grupos1;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_refe_grupos1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
