unit UN1_Pers_Movimientos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, dxExEdtr, dxCntner, Db, DBTables, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, ExtCtrls, dxEditor, dxEdLib, dxDBELib,
  TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls, SoCtrls, SCLDBLabel,
  SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit, PictureContainer,
  AdvPanel, TBXDkPanels, TBXButtonSCL, Boxes, PCPProceso;

type
  TFN1_Pers_Movimientos1 = class(T_fvent_modal)
    Tabla_VentanaSECU_MOVIMIENTO: TIntegerField;
    Tabla_VentanaCODI_PERSONAL: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaFECH_INICIAL: TDateTimeField;
    Tabla_VentanaFECH_FINAL: TDateTimeField;
    Tabla_VentanaCODI_FAMI_MOVI_PERSONAL: TStringField;
    Tabla_VentanaCODI_TIPO_MOVI_PERSONAL: TStringField;
    Tabla_VentanaOBSERVACIONES: TMemoField;
    Tabla_VentanaCODI_EMPR_ANTERIOR: TStringField;
    Tabla_VentanaCODI_EMPR_NUEVO: TStringField;
    Tabla_VentanaCODI_AREA_ANTERIOR: TStringField;
    Tabla_VentanaCODI_AREA_NUEVO: TStringField;
    Tabla_VentanaCODI_PLAN_ANTERIOR: TStringField;
    Tabla_VentanaCODI_PLAN_NUEVO: TStringField;
    Tabla_VentanaCODI_SECC_ANTERIOR: TStringField;
    Tabla_VentanaCODI_SECC_NUEVO: TStringField;
    Tabla_VentanaSOLICITA: TStringField;
    Tabla_VentanaAPRUEBA: TStringField;
    Tabla_VentanaEJECUTA: TStringField;
    SCLDBLabel1: TSCLDBLabel;
    DBConsecutivo: TdxDBEdit;
    TPersonal: TTable;
    DSPersonal: TDataSource;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    CBPersonal: TPCPLookUpComboEdit;
    CBCodigo: TPCPLookUpComboEdit;
    BPersonal: TTBXButtonSCL;
    DBFecha_Inicial: TdxDBDateEdit;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    DBFecha_Final: TdxDBDateEdit;
    SCLDBLabel6: TSCLDBLabel;
    CBMovimiento: TPCPLookUpComboEdit;
    BTipo_Movimiento: TTBXButtonSCL;
    SCLDBLabel5: TSCLDBLabel;
    CBEmpresa_Anterior: TPCPLookUpComboEdit;
    SCLDBLabel7: TSCLDBLabel;
    CBEmpresa_Nueva: TPCPLookUpComboEdit;
    BEmpresa_Nueva: TTBXButtonSCL;
    SCLDBLabel8: TSCLDBLabel;
    CBArea_Anterior: TPCPLookUpComboEdit;
    SCLDBLabel9: TSCLDBLabel;
    CBArea_Nueva: TPCPLookUpComboEdit;
    BArea_Nueva: TTBXButtonSCL;
    SCLDBLabel11: TSCLDBLabel;
    CBPLanta_Anterior: TPCPLookUpComboEdit;
    SCLDBLabel12: TSCLDBLabel;
    CBPlanta_Nueva: TPCPLookUpComboEdit;
    BPlanta_Nueva: TTBXButtonSCL;
    SCLDBLabel13: TSCLDBLabel;
    CBSeccion_Anterior: TPCPLookUpComboEdit;
    SCLDBLabel14: TSCLDBLabel;
    CBSeccion_Nueva: TPCPLookUpComboEdit;
    BSeccion_Nueva: TTBXButtonSCL;
    SCLDBLabel15: TSCLDBLabel;
    DBSolicito: TdxDBEdit;
    SCLDBLabel16: TSCLDBLabel;
    DBAprobo: TdxDBEdit;
    SCLDBLabel17: TSCLDBLabel;
    DBEjecuto: TdxDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Movimientos1: TFN1_Pers_Movimientos1;

implementation

{$R *.DFM}

end.
