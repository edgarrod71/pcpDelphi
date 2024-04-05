{ 08/03/2004 12:24:13 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Grupos de maquinaria (Child)  }
unit un1_maqu_grupos;

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
  Tfn1_maqu_grupos = class(T_fvent_child)
    consultaCONS_RECU_GRUPO: TIntegerField;
    consultaCODI_RECU_GRUPO: TStringField;
    consultaNOMB_RECU_GRUPO: TStringField;
    consultaOBSERVACIONES: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_RECU_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_RECU_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_RECU_GRUPO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridOBSERVACIONES: TdxDBGridBlobColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_grupos: Tfn1_maqu_grupos;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_maqu_grupos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
