{ 17/03/2004 04:32:07 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 17/03/2004 04:31:55 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 17/03/2004 02:57:59 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:24 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 04:53:22 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 04:52:39 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:41:42 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:39:13 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 16/02/2004 10:01:47 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 16/02/2004 09:49:20 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 13/02/2004 06:02:34 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 13/02/2004 03:29:10 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 13/02/2004 03:15:45 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 12/02/2004 09:05:53 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out /Cambio de los mensajes }
unit UN1_Para_Paises1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, DBActns, ActnList, Db, ImgList, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, dxCntner, dxEditor, dxEdLib, dxDBELib, StdCtrls,
  DBTables, SCLDBLabel, SCLPropiedadesForm, dxExEdtr, SoCtrls,
  PictureContainer, AdvPanel, Boxes, PCPProceso;

type
  TFN1_Para_Paises1 = class(T_fvent_modal)
    DBCodigo: TdxDBEdit;
    DBDescripcion: TdxDBEdit;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    Tabla_VentanaNOMB_PAIS: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaCONS_PAIS: TIntegerField;
    Tabla_VentanaCODI_PAIS: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Paises1: TFN1_Para_Paises1;

implementation

uses _Traductor;

{$R *.DFM}

procedure TFN1_Para_Paises1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
