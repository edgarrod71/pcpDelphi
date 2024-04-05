{ 10/03/2004 08:55:27 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 08:55:18 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 09/03/2004 12:04:43 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Tipos de movimiento de maquinaria  }
unit un1_maqu_tipo_movimiento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, StdCtrls, RxLookup, PCPLookUpComboEdit, 
  dfsSplitter, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes, Boxes, PCPFrame;

type
  Tfn1_maqu_tipo_movimiento = class(T_fvent_child)
    consultaCONS_RECU_TIPO_MOVIMIENTO: TIntegerField;
    consultaCONS_FAMI_MOVIMIENTO: TIntegerField;
    consultaCODI_RECU_TIPO_MOVIMIENTO: TStringField;
    consultaNOMB_RECU_TIPO_MOVIMIENTO: TStringField;
    consultaOBSERVACIONES: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaCODI_FAMI_MOVIMIENTO: TStringField;
    consultaNOMB_FAMI_MOVIMIENTO: TStringField;
    consultaCODI_ESTADO: TStringField;
    consultaNOMB_ESTADO: TStringField;
    padr_gridCONS_RECU_TIPO_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridCODI_RECU_TIPO_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_RECU_TIPO_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridCONS_FAMI_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridCODI_FAMI_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_FAMI_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridCODI_ESTADO: TdxDBGridMaskColumn;
    padr_gridNOMB_ESTADO: TdxDBGridMaskColumn;
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
  fn1_maqu_tipo_movimiento: Tfn1_maqu_tipo_movimiento;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_maqu_tipo_movimiento.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
