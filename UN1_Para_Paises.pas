{ 05/03/2004 10:41:43 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:39:14 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 20/02/2004 06:03:10 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 20/02/2004 06:01:10 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 18/02/2004 03:30:30 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 16/02/2004 10:02:39 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 16/02/2004 09:49:19 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 13/02/2004 06:15:50 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 13/02/2004 06:13:18 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 13/02/2004 06:02:43 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 13/02/2004 03:29:09 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 13/02/2004 03:28:32 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Paises;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, ImgList, Menus, TB2Item, TBX, ActnList,
  ExtCtrls, TB2Toolbar, dxTLClms, dxTL, TB2Dock, TBXDkPanels, dxCntner,
  dxDBCtrl, dxDBGrid, SCLPropiedadesForm, dxDBTLCl, dxGrClms, dxPageControl,
  dxExEdtr, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  TFN1_Para_Paises = class(T_fvent_child)
    padr_gridCODI_PAIS: TdxDBGridMaskColumn;
    padr_gridNOMB_PAIS: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridCONS_PAIS: TdxDBGridColumn;
    consultaCONS_PAIS: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA2: TStringField;
    consultaCODI_PAIS: TStringField;
    consultaNOMB_PAIS: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Codigo_Busqueda : String;
  end;

var
  FN1_Para_Paises: TFN1_Para_Paises;

implementation

uses _Traductor;
{$R *.DFM}

procedure TFN1_Para_Paises.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
