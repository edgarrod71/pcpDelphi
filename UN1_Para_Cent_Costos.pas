{ 05/03/2004 10:40:28 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:58 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Cent_Costos;

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
  TFN1_Para_Cent_Costos = class(T_fvent_child)
    consultaCONS_PERS_CENT_COSTO: TIntegerField;
    consultaCODI_PERS_CENT_COSTO: TStringField;
    consultaNOMB_PERS_CENT_COSTO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_PERS_CENT_COSTO: TdxDBGridMaskColumn;
    padr_gridCODI_PERS_CENT_COSTO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_CENT_COSTO: TdxDBGridMaskColumn;
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
  FN1_Para_Cent_Costos: TFN1_Para_Cent_Costos;

implementation

uses _Traductor;
{$R *.DFM}

procedure TFN1_Para_Cent_Costos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
