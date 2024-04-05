{ 16/03/2004 05:46:22 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:45:05 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 05:03:30 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:41:16 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:40 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 01/03/2004 08:46:10 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 01/03/2004 08:45:54 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 20/02/2004 08:44:44 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 20/02/2004 07:34:00 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 20/02/2004 06:55:59 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Lavados de referencia (detalle)  }
unit un1_refe_lavados1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, Db, DBTables, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, StdCtrls, SCLDBLabel, dxExEdtr, ufra_fotografiaDB,
  SoCtrls, PictureContainer, AdvPanel, EDBImage, Boxes,
  PCPProceso;

type
  Tfn1_refe_lavados1 = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    NOMB_REFE_LAVADO: TdxDBEdit;
    OBSERVACIONES: TdxDBMemo;
    Tabla_VentanaCONS_REFE_LAVADO: TIntegerField;
    Tabla_VentanaCODI_REFE_LAVADO: TStringField;
    Tabla_VentanaNOMB_REFE_LAVADO: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaIMAGEN: TBlobField;
    Tabla_VentanaAJUS_IMAGEN: TIntegerField;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_lavados1: Tfn1_refe_lavados1;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los componentes de la ventana cuando se
                  muestre
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           :
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_lavados1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
