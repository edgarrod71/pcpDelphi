{ 18/03/2004 11:47:05 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 18/03/2004 11:46:56 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 17/03/2004 04:21:44 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:00 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 04:56:57 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 04:56:27 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 08/03/2004 05:32:45 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Marcas de recursos (modal)  }
unit un1_maqu_marcas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, dxExEdtr, dxCntner, Db, DBTables, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, ExtCtrls, dxEditor, dxEdLib, dxDBELib,
  TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls, SCLDBLabel, SoCtrls,
  PictureContainer, AdvPanel, Boxes, PCPProceso;

type
  Tfn1_maqu_marcas1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    Tabla_VentanaCONS_RECU_MARCA: TIntegerField;
    Tabla_VentanaCODI_RECU_MARCA: TStringField;
    Tabla_VentanaNOMB_RECU_MARCA: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_marcas1: Tfn1_maqu_marcas1;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_maqu_marcas1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
