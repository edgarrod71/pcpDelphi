{ 05/03/2004 10:40:19 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:47 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Tipo_Contrato;

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
  TFN1_Para_Tipo_Contrato = class(T_fvent_child)
    consultaCONS_PERS_TIPO_CONTRATO: TIntegerField;
    consultaCODI_PERS_TIPO_CONTRATO: TStringField;
    consultaNOMB_PERS_TIPO_CONTRATO: TStringField;
    consultaCONS_UNID_MEDI_TIEMPO: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCODI_UNID_MEDI_TIEMPO: TStringField;
    consultaNOMB_UNID_MEDI_TIEMPO: TStringField;
    consultaDURA_DIAS: TFloatField;
    padr_gridCONS_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn;
    padr_gridCODI_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn;
    padr_gridCONS_UNID_MEDI_TIEMPO: TdxDBGridMaskColumn;
    padr_gridCODI_UNID_MEDI_TIEMPO: TdxDBGridMaskColumn;
    padr_gridNOMB_UNID_MEDI_TIEMPO: TdxDBGridMaskColumn;
    padr_gridDURA_DIAS: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaDURACION: TFloatField;
    padr_gridDURACION: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Tipo_Contrato: TFN1_Para_Tipo_Contrato;

implementation

uses _Traductor;

{$R *.DFM}

procedure TFN1_Para_Tipo_Contrato.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
