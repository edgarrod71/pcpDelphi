{ 18/03/2004 11:33:10 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 18/03/2004 11:33:02 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 17/03/2004 04:22:20 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:43:55 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 04:48:18 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 04:47:19 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 08/03/2004 12:24:00 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Grupos de maquinaria (modal)  }
unit un1_maqu_grupos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLDBLabel, dxExEdtr, dxCntner, Db, DBTables,
  SCLPropiedadesForm, DBActns, ActnList, ImgList, ExtCtrls, dxEditor,
  dxEdLib, dxDBELib, TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls, SoCtrls,
  PictureContainer, AdvPanel, Boxes, PCPProceso;

type
  Tfn1_maqu_grupos1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    Tabla_VentanaCONS_RECU_GRUPO: TIntegerField;
    Tabla_VentanaCODI_RECU_GRUPO: TStringField;
    Tabla_VentanaNOMB_RECU_GRUPO: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_grupos1: Tfn1_maqu_grupos1;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_maqu_grupos1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
