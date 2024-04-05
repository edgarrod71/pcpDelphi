unit un1_maqu_tipos;

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
  Tfn1_maqu_tipos = class(T_fvent_child)
    consultaCONS_RECU_TIPO: TIntegerField;
    consultaCONS_RECU_GRUPO: TIntegerField;
    consultaCODI_RECU_TIPO: TStringField;
    consultaNOMB_RECU_TIPO: TStringField;
    consultaCARACTERISTICAS: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCODI_RECU_GRUPO: TStringField;
    consultaNOMB_RECU_GRUPO: TStringField;
    padr_gridCONS_RECU_TIPO: TdxDBGridMaskColumn;
    padr_gridCODI_RECU_TIPO: TdxDBGridMaskColumn;
    padr_gridNOMB_RECU_TIPO: TdxDBGridMaskColumn;
    padr_gridCARACTERISTICAS: TdxDBGridMaskColumn;
    padr_gridCONS_RECU_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_RECU_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_RECU_GRUPO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_tipos: Tfn1_maqu_tipos;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_maqu_tipos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
