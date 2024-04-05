unit UN1_Pers_Movi_Tipo_Documento;

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
  TFN1_Pers_Movi_Tipo_Documento = class(T_fvent_child)
    consultaCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField;
    consultaCODI_PERS_MOVI_TIPO_DOCUMENTO: TStringField;
    consultaNOMB_PERS_MOVI_TIPO_DOCUMENTO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_PERS_MOVI_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridCODI_PERS_MOVI_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_MOVI_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaUSO: TStringField;
    padr_gridUSO: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Movi_Tipo_Documento: TFN1_Pers_Movi_Tipo_Documento;

implementation

uses _Traductor;

{$R *.DFM}

procedure TFN1_Pers_Movi_Tipo_Documento.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
