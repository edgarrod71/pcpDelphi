{ 10/03/2004 08:54:51 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 08:51:48 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 08:48:51 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Tipos de puntada  }
unit un1_maqu_tipo_puntada;

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
  Tfn1_maqu_tipo_puntada = class(T_fvent_child)
    consultaCONS_RECU_TIPO_PUNTADA: TIntegerField;
    consultaCODI_RECU_TIPO_PUNTADA: TStringField;
    consultaCARACTERISTICAS: TStringField;
    consultaIMAGEN: TBlobField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_RECU_TIPO_PUNTADA: TdxDBGridMaskColumn;
    padr_gridCODI_RECU_TIPO_PUNTADA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridIMAGEN: TdxDBGridBlobColumn;
    consultaFORMULA: TStringField;
    padr_gridCARACTERISTICAS: TdxDBGridBlobColumn;
    padr_gridFORMULA: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_tipo_puntada: Tfn1_maqu_tipo_puntada;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_maqu_tipo_puntada.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
