unit un2_come_vendedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm,
  Db, DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  Tfn2_come_vendedores = class(T_fvent_child)
    consultaCONS_COME_VENDEDOR: TIntegerField;
    consultaCODI_COME_VENDEDOR: TStringField;
    consultaIDEN_COME_VENDEDOR: TStringField;
    consultaNOMB_COME_VENDEDOR: TStringField;
    consultaCONS_PAIS: TIntegerField;
    consultaCONS_DEPARTAMENTO: TIntegerField;
    consultaCONS_CIUDAD: TIntegerField;
    consultaNOMB_CIUDAD: TStringField;
    consultaNOMB_DEPARTAMENTO: TStringField;
    consultaNOMB_PAIS: TStringField;
    consultaDIRECCION: TStringField;
    consultaAPAR_AEREO: TStringField;
    consultaTELEFONO1: TStringField;
    consultaTELEFONO2: TStringField;
    consultaTELEFONO3: TStringField;
    consultaTELE_FAX: TStringField;
    consultaTELE_MOVIL: TStringField;
    consultaCORR_ELECTRONICO: TStringField;
    consultaPAGI_WEB: TStringField;
    consultaOBSERVACIONES: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_COME_VENDEDOR: TdxDBGridMaskColumn;
    padr_gridCODI_COME_VENDEDOR: TdxDBGridMaskColumn;
    padr_gridIDEN_COME_VENDEDOR: TdxDBGridMaskColumn;
    padr_gridNOMB_COME_VENDEDOR: TdxDBGridMaskColumn;
    padr_gridCONS_PAIS: TdxDBGridMaskColumn;
    padr_gridNOMB_PAIS: TdxDBGridMaskColumn;
    padr_gridCONS_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridCONS_CIUDAD: TdxDBGridMaskColumn;
    padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn;
    padr_gridDIRECCION: TdxDBGridMaskColumn;
    padr_gridAPAR_AEREO: TdxDBGridMaskColumn;
    padr_gridTELEFONO1: TdxDBGridMaskColumn;
    padr_gridTELEFONO2: TdxDBGridMaskColumn;
    padr_gridTELEFONO3: TdxDBGridMaskColumn;
    padr_gridTELE_FAX: TdxDBGridMaskColumn;
    padr_gridTELE_MOVIL: TdxDBGridMaskColumn;
    padr_gridCORR_ELECTRONICO: TdxDBGridMaskColumn;
    padr_gridPAGI_WEB: TdxDBGridMaskColumn;
    padr_gridOBSERVACIONES: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn2_come_vendedores: Tfn2_come_vendedores;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn2_come_vendedores.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
