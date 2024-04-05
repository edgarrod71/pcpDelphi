{ 05/03/2004 10:40:24 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:53 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Nive_Salariales;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, SCLPropiedadesForm, Db, DBTables, ImgList, Menus, TB2Item,
  TBX, ActnList, ExtCtrls, TB2Toolbar, dxTLClms, dxTL, TB2Dock,
  TBXDkPanels, dxCntner, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  dxPageControl, dxExEdtr, dfsSplitter, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid,
  ufra_edit_reportes, Boxes, PCPFrame;

type
  TFN1_Para_Nive_Salariales = class(T_fvent_child)
    consultaCONS_PERS_NIVE_SALARIAL: TIntegerField;
    consultaCODI_PERS_NIVE_SALARIAL: TStringField;
    consultaNOMB_PERS_NIVE_SALARIAL: TStringField;
    consultaVALO_MINIMO: TIntegerField;
    consultaVALO_MAXIMO: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn;
    padr_gridCODI_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn;
    padr_gridVALO_MINIMO: TdxDBGridMaskColumn;
    padr_gridVALO_MAXIMO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Nive_Salariales: TFN1_Para_Nive_Salariales;

implementation

uses _Traductor;
{$R *.DFM}

procedure TFN1_Para_Nive_Salariales.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
