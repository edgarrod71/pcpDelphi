unit UN1_Para_Tipo_Caracteristicas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm,
  Db, DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  TFN1_Para_Tipo_Caracteristicas = class(T_fvent_child)
    consultaCONS_TIPO_CARACTERISTICA: TIntegerField;
    consultaCODI_TIPO_CARACTERISTICA: TStringField;
    consultaNOMB_TIPO_CARACTERISTICA: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    padr_gridCODI_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    padr_gridNOMB_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaOBSERVACIONES: TMemoField;
    padr_gridOBSERVACIONES: TdxDBGridBlobColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Tipo_Caracteristicas: TFN1_Para_Tipo_Caracteristicas;

implementation

uses _Traductor;

{$R *.DFM}

procedure TFN1_Para_Tipo_Caracteristicas.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
