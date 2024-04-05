{ 05/03/2004 10:41:28 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:56 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit un1_refe_estados;

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
  Tfn1_refe_estados = class(T_fvent_child)
    padr_gridCONS_REFE_ESTADO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_ESTADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_ESTADO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridEDIT_MAESTRO1: TdxDBGridCheckColumn;
    padr_gridMOST_METODOS1: TdxDBGridCheckColumn;
    padr_gridMOST_ORDE_TRABAJO1: TdxDBGridCheckColumn;
    padr_gridMOST_INVE_MATERIALES1: TdxDBGridCheckColumn;
    consultaCONS_REFE_ESTADO: TIntegerField;
    consultaCODI_REFE_ESTADO: TStringField;
    consultaNOMB_REFE_ESTADO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaEDIT_MAESTRO: TIntegerField;
    consultaMOST_METODOS: TIntegerField;
    consultaMOST_ORDE_TRABAJO: TIntegerField;
    consultaMOST_INVE_MATERIALES: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_estados: Tfn1_refe_estados;

implementation

uses _Traductor;
{$R *.DFM}

procedure Tfn1_refe_estados.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
