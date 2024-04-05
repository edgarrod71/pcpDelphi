unit un1_cali_defectos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, dxDBTLCl, dxGrClms, ufra_edit_reportes, Boxes,
  PCPFrame;

type
  Tfn1_cali_defectos = class(T_fvent_child)
    consultaCONS_CALI_DEFECTO: TIntegerField;
    consultaCODI_CALI_DEFECTO: TStringField;
    consultaNOMB_CALI_DEFECTO: TStringField;
    consultaESTA_ACTIVO: TIntegerField;
    consultaES_IMPUTABLE: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_CALI_DEFECTO: TdxDBGridMaskColumn;
    padr_gridCODI_CALI_DEFECTO: TdxDBGridMaskColumn;
    padr_gridNOMB_CALI_DEFECTO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridESTA_ACTIVO: TdxDBGridCheckColumn;
    padr_gridES_IMPUTABLE: TdxDBGridCheckColumn;
    consultaTIEMPO: TFloatField;
    consultaVALOR: TFloatField;
    consultaIMAGEN: TBlobField;
    padr_gridTIEMPO: TdxDBGridColumn;
    padr_gridVALOR: TdxDBGridColumn;
    padr_gridIMAGEN: TdxDBGridBlobColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_cali_defectos: Tfn1_cali_defectos;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_cali_defectos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
