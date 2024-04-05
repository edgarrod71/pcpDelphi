unit UN1_Para_Sub_Improductivos;

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
  TFN1_Para_Sub_Improductivos = class(T_fvent_child)
    consultaCONS_SUB_IMPRODUCTIVO: TIntegerField;
    consultaCODI_SUB_IMPRODUCTIVO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCONS_IMPRODUCTIVO: TIntegerField;
    consultaNOMB_SUB_IMPRODUCTIVO: TStringField;
    consultaDESCRIPCION: TStringField;
    consultaDESC_INCENTIVOS: TIntegerField;
    consultaDESC_EFICIENCIA: TIntegerField;
    consultaACTIVO: TIntegerField;
    consultaCODI_IMPRODUCTIVO: TStringField;
    consultaNOMB_IMPRODUCTIVO: TStringField;
    padr_gridCONS_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn;
    padr_gridCODI_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn;
    padr_gridNOMB_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn;
    padr_gridCONS_IMPRODUCTIVO: TdxDBGridMaskColumn;
    padr_gridCODI_IMPRODUCTIVO: TdxDBGridMaskColumn;
    padr_gridNOMB_IMPRODUCTIVO: TdxDBGridMaskColumn;
    padr_gridACTIVO: TdxDBGridCheckColumn;
    padr_gridDESC_INCENTIVOS: TdxDBGridCheckColumn;
    padr_gridDESC_EFICIENCIA: TdxDBGridCheckColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    consultaPORCENTAJE: TFloatField;
    padr_gridPORCENTAJE: TdxDBGridColumn;
    padr_gridDESCRIPCION: TdxDBGridBlobColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Sub_Improductivos: TFN1_Para_Sub_Improductivos;

implementation

uses _Traductor;

{$R *.DFM}

procedure TFN1_Para_Sub_Improductivos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
