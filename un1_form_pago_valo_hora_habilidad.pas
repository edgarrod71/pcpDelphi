unit un1_form_pago_valo_hora_habilidad;

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
  Tfn1_form_pago_valo_hora_habilidad = class(T_fvent_child)
    consultaCONS_FORM_PAGO_HABILIDAD: TIntegerField;
    consultaCODI_FORM_PAGO_HABILIDAD: TStringField;
    consultaVALO_HORA_PRODUCCION: TFloatField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_FORM_PAGO_HABILIDAD: TdxDBGridMaskColumn;
    padr_gridCODI_FORM_PAGO_HABILIDAD: TdxDBGridMaskColumn;
    padr_gridVALO_HORA_PRODUCCION: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_form_pago_valo_hora_habilidad: Tfn1_form_pago_valo_hora_habilidad;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_form_pago_valo_hora_habilidad.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
