{ 05/03/2004 10:41:52 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:39:23 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 04/02/2004 06:32:09 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out /Creacion de la ventana de plantas }
{ 04/02/2004 06:30:50 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Cerrado  }
{ 04/02/2004 06:29:35 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out /Prueba2 }
{ 04/02/2004 06:29:25 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Final de la prueba  }
{ 04/02/2004 06:25:07 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out /Prueba }
unit n1_para_plantas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, DBActns, ActnList, Db, ImgList, TB2Item, TBX, TB2Dock,
  TB2Toolbar, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls,
  SCLPropiedadesForm, DBTables, Menus, dxTLClms, TBXDkPanels, dxDBTLCl,
  dxGrClms, dxPageControl, dxExEdtr, dfsSplitter, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid,
  ufra_edit_reportes, Boxes, PCPFrame;

type
  Tfn1_para_plantas = class(T_fvent_child)
    consultaCONS_PLANTA: TIntegerField;
    consultaCONS_EMPRESA: TIntegerField;
    consultaCODI_EMPRESA: TStringField;
    consultaNOMB_EMPRESA: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCODI_PLANTA: TStringField;
    consultaNOMB_PLANTA: TStringField;
    consultaCONS_PAIS: TIntegerField;
    consultaCODI_PAIS: TStringField;
    consultaNOMB_PAIS: TStringField;
    consultaCONS_DEPARTAMENTO: TIntegerField;
    consultaCODI_DEPARTAMENTO: TStringField;
    consultaNOMB_DEPARTAMENTO: TStringField;
    consultaCONS_CIUDAD: TIntegerField;
    consultaCODI_CIUDAD: TStringField;
    consultaNOMB_CIUDAD: TStringField;
    consultaDIRECCION: TStringField;
    consultaTELE_1: TStringField;
    consultaTELE_2: TStringField;
    consultaTELE_FAX: TStringField;
    consultaTELE_MOVIL: TStringField;
    consultaNOMB_RESPONSABLE: TStringField;
    consultaNOMB_SUPERVISOR: TStringField;
    consultaTIPO_PLANTA: TIntegerField;
    consultaDESCRIPCION: TStringField;
    consultaNOMB_TIPO_PLANTA: TStringField;
    padr_gridCONS_PLANTA: TdxDBGridMaskColumn;
    padr_gridCONS_EMPRESA: TdxDBGridMaskColumn;
    padr_gridCODI_EMPRESA: TdxDBGridMaskColumn;
    padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridCODI_PLANTA: TdxDBGridMaskColumn;
    padr_gridNOMB_PLANTA: TdxDBGridMaskColumn;
    padr_gridCONS_PAIS: TdxDBGridMaskColumn;
    padr_gridCODI_PAIS: TdxDBGridMaskColumn;
    padr_gridNOMB_PAIS: TdxDBGridMaskColumn;
    padr_gridCONS_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridCODI_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridCONS_CIUDAD: TdxDBGridMaskColumn;
    padr_gridCODI_CIUDAD: TdxDBGridMaskColumn;
    padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn;
    padr_gridDIRECCION: TdxDBGridMaskColumn;
    padr_gridTELE_1: TdxDBGridMaskColumn;
    padr_gridTELE_2: TdxDBGridMaskColumn;
    padr_gridTELE_FAX: TdxDBGridMaskColumn;
    padr_gridTELE_MOVIL: TdxDBGridMaskColumn;
    padr_gridNOMB_RESPONSABLE: TdxDBGridMaskColumn;
    padr_gridNOMB_SUPERVISOR: TdxDBGridMaskColumn;
    padr_gridTIPO_PLANTA: TdxDBGridMaskColumn;
    padr_gridNOMB_TIPO_PLANTA: TdxDBGridMaskColumn;
    padr_gridDESCRIPCION: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_para_plantas: Tfn1_para_plantas;

implementation

uses _Traductor;
{$R *.DFM}

procedure Tfn1_para_plantas.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
