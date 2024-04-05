unit un1_meto_comp_variaciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  Tfn1_meto_comp_variaciones = class(T_fvent_child)
    consultaCONS_COMP_VARIACION: TIntegerField;
    consultaCODI_COMP_VARIACION: TStringField;
    consultaNOMB_COMP_VARIACION: TStringField;
    consultaCONS_COMP_GRUPO: TIntegerField;
    consultaCODI_COMP_GRUPO: TStringField;
    consultaNOMB_COMP_GRUPO: TStringField;
    consultaDESCRIPCION: TStringField;
    consultaIMAGEN: TBlobField;
    consultaAJUS_IMAGEN: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_COMP_VARIACION: TdxDBGridMaskColumn;
    padr_gridCODI_COMP_VARIACION: TdxDBGridMaskColumn;
    padr_gridNOMB_COMP_VARIACION: TdxDBGridMaskColumn;
    padr_gridCONS_COMP_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_COMP_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_COMP_GRUPO: TdxDBGridMaskColumn;
    padr_gridDESCRIPCION: TdxDBGridMaskColumn;
    padr_gridAJUS_IMAGEN: TdxDBGridCheckColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridIMAGEN: TdxDBGridBlobColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_meto_comp_variaciones: Tfn1_meto_comp_variaciones;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_meto_comp_variaciones.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
