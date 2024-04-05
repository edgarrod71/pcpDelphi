{ 05/03/2004 10:41:38 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:39:08 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 19/02/2004 04:46:13 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 19/02/2004 04:01:44 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 18/02/2004 12:16:28 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 17/02/2004 10:39:39 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 17/02/2004 10:07:01 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Departamentos;

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
  TFN1_Para_Departamentos = class(T_fvent_child)
    padr_gridCODI_PAIS: TdxDBGridMaskColumn;
    padr_gridCODI_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridNOMB_PAIS: TdxDBGridMaskColumn;
    padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridColumn7: TdxDBGridColumn;
    padr_gridColumn8: TdxDBGridColumn;
    consultaCONS_DEPARTAMENTO: TIntegerField;
    consultaCONS_PAIS: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCODI_DEPARTAMENTO: TStringField;
    consultaNOMB_DEPARTAMENTO: TStringField;
    consultaCODI_PAIS: TStringField;
    consultaNOMB_PAIS: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Departamentos: TFN1_Para_Departamentos;

implementation

uses _Traductor;
{$R *.DFM}

procedure TFN1_Para_Departamentos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
