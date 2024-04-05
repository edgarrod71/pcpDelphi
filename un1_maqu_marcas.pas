{ 08/03/2004 05:32:56 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Marcas de recursos (child)  }
unit un1_maqu_marcas;

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
  Tfn1_maqu_marcas = class(T_fvent_child)
    consultaCONS_RECU_MARCA: TIntegerField;
    consultaCODI_RECU_MARCA: TStringField;
    consultaNOMB_RECU_MARCA: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_RECU_MARCA: TdxDBGridMaskColumn;
    padr_gridCODI_RECU_MARCA: TdxDBGridMaskColumn;
    padr_gridNOMB_RECU_MARCA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_marcas: Tfn1_maqu_marcas;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_maqu_marcas.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
