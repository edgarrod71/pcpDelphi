unit UN1_Acce_Tipos;

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
  TFN1_Acce_Tipos = class(T_fvent_child)
    consultaCONS_ACCE_TIPO: TIntegerField;
    consultaCONS_ACCE_GRUPO: TIntegerField;
    consultaCODI_ACCE_TIPO: TStringField;
    consultaNOMB_ACCE_TIPO: TStringField;
    consultaOBSERVACIONES: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCODI_ACCE_GRUPO: TStringField;
    consultaNOMB_ACCE_GRUPO: TStringField;
    padr_gridCONS_ACCE_TIPO: TdxDBGridMaskColumn;
    padr_gridCODI_ACCE_TIPO: TdxDBGridMaskColumn;
    padr_gridNOMB_ACCE_TIPO: TdxDBGridMaskColumn;
    padr_gridOBSERVACIONES: TdxDBGridMaskColumn;
    padr_gridCONS_ACCE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_ACCE_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_ACCE_GRUPO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Acce_Tipos: TFN1_Acce_Tipos;

implementation

uses _Traductor;

{$R *.DFM}

procedure TFN1_Acce_Tipos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
