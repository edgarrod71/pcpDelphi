{ 05/03/2004 10:41:29 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:57 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 01/03/2004 07:30:38 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 01/03/2004 07:29:35 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 20/02/2004 06:03:07 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 20/02/2004 06:01:32 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 19/02/2004 06:19:03 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Edades de producto (ventana maestra)  }
unit un1_refe_edades;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, SCLPropiedadesForm, Db, DBTables, ImgList, Menus, TB2Item,
  TBX, ActnList, ExtCtrls, TB2Toolbar, dxTLClms, dxTL, TB2Dock,
  TBXDkPanels, dxCntner, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  dxPageControl, dxExEdtr, dfsSplitter, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid,
  ufra_edit_reportes, Boxes, PCPFrame;

type
  Tfn1_refe_edades = class(T_fvent_child)
    consultaCONS_REFE_EDAD: TIntegerField;
    consultaCODI_REFE_EDAD: TStringField;
    consultaNOMB_REFE_EDAD: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_REFE_EDAD: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_EDAD: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_EDAD: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaRANGO: TStringField;
    padr_gridRANGO: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_edades: Tfn1_refe_edades;

implementation

uses _Traductor;
{$R *.DFM}

procedure Tfn1_refe_edades.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
