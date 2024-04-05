{ 16/03/2004 05:45:54 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:45:10 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 05:01:37 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 05:00:56 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 11:39:06 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 11:38:19 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:41:18 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:43 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 01/03/2004 07:43:03 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 01/03/2004 07:42:39 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 01/03/2004 07:41:58 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 01/03/2004 07:41:34 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit un1_refe_temporadas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, Db, DBTables, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, StdCtrls, SCLDBLabel, dxExEdtr, SoCtrls,
  PictureContainer, AdvPanel, Boxes, PCPProceso;

type
  Tfn1_refe_temporadas1 = class(T_fvent_modal)
    Tabla_VentanaCONS_REFE_TEMPORADA: TIntegerField;
    Tabla_VentanaCODI_REFE_TEMPORADA: TStringField;
    Tabla_VentanaNOMB_REFE_TEMPORADA: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    SCLDBLabel3: TSCLDBLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    Tabla_VentanaFECH_INICIAL: TDateTimeField;
    Tabla_VentanaFECH_FINAL: TDateTimeField;
    SCLDBLabel4: TSCLDBLabel;
    dxDBDateEdit2: TdxDBDateEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_temporadas1: Tfn1_refe_temporadas1;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_refe_temporadas1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
