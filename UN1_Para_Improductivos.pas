unit UN1_Para_Improductivos;

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
  TFN1_Para_Improductivos = class(T_fvent_child)
    consultaCONS_IMPRODUCTIVO: TIntegerField;
    consultaCODI_IMPRODUCTIVO: TStringField;
    consultaCONS_IMPR_FAMILIA: TIntegerField;
    consultaNOMB_IMPRODUCTIVO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCODI_IMPR_FAMILIA: TStringField;
    consultaNOMB_IMPR_FAMILIA: TStringField;
    padr_gridCONS_IMPRODUCTIVO: TdxDBGridMaskColumn;
    padr_gridCODI_IMPRODUCTIVO: TdxDBGridMaskColumn;
    padr_gridNOMB_IMPRODUCTIVO: TdxDBGridMaskColumn;
    padr_gridCONS_IMPR_FAMILIA: TdxDBGridMaskColumn;
    padr_gridCODI_IMPR_FAMILIA: TdxDBGridMaskColumn;
    padr_gridNOMB_IMPR_FAMILIA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaACTIVO: TIntegerField;
    consultaDESC_INCENTIVOS: TIntegerField;
    consultaDESC_EFICIENCIA: TIntegerField;
    padr_gridACTIVO1: TdxDBGridCheckColumn;
    padr_gridEFICIENCIA: TdxDBGridCheckColumn;
    padr_gridINCENTIVOS: TdxDBGridCheckColumn;
    consultaPORCENTAJE: TFloatField;
    padr_gridPORCENTAJE: TdxDBGridColumn;
    consultaADICIONAL_1: TStringField;
    padr_gridADICIONAL_1: TdxDBGridColumn;
    consultaCONS_VALO_HORA: TIntegerField;
    consultaNOMB_FORM_PAGO_VALO_HORA: TStringField;
    padr_gridCONS_VALO_HORA: TdxDBGridMaskColumn;
    padr_gridNOMB_FORM_PAGO_VALO_HORA: TdxDBGridMaskColumn;
    padr_gridVALO_HORA: TdxDBGridMaskColumn;
    consultaVALO_HORA: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Improductivos: TFN1_Para_Improductivos;

implementation

uses _Traductor;

{$R *.DFM}

procedure TFN1_Para_Improductivos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
