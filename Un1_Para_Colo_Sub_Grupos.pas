unit Un1_Para_Colo_Sub_Grupos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, dfsSplitter, StdCtrls, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid,
  ufra_edit_reportes, Boxes, PCPFrame;

type
  TFn1_Para_Colo_Sub_Grupos = class(T_fvent_child)
    consultaCONS_COLO_SUBGRUPO: TIntegerField;
    consultaCODI_COLO_SUBGRUPO: TStringField;
    consultaNOMB_COLO_SUBGRUPO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCONS_COLO_GRUPO: TIntegerField;
    consultaCODI_COLO_GRUPO: TStringField;
    consultaNOMB_COLO_GRUPO: TStringField;
    padr_gridCONS_COLO_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_COLO_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_COLO_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_COLO_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_COLO_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_COLO_GRUPO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fn1_Para_Colo_Sub_Grupos: TFn1_Para_Colo_Sub_Grupos;

implementation

uses _Traductor;

{$R *.DFM}

procedure TFn1_Para_Colo_Sub_Grupos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
