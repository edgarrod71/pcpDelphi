{ 05/03/2004 10:40:31 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:38:00 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Cargos;

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
  TFN1_Para_Cargos = class(T_fvent_child)
    consultaCONS_PERS_CARGO: TIntegerField;
    consultaCODI_PERS_CARGO: TStringField;
    consultaNOMB_PERS_CARGO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_PERS_CARGO: TdxDBGridMaskColumn;
    padr_gridCODI_PERS_CARGO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_CARGO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaOBSERVACIONES: TStringField;
    padr_gridOBSERVACIONES: TdxDBGridBlobColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Cargos: TFN1_Para_Cargos;

implementation

uses _Traductor;
{$R *.DFM}

procedure TFN1_Para_Cargos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
