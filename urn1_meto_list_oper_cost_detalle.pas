unit urn1_meto_list_oper_cost_detalle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_refe_base_informe, Menus, TB2Item, TBX, pcpQRControl, Db, ActnList,
  DBTables, dxfDesigner, QRExport, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, ZPropLst, dxPageControl, StdCtrls, SoCtrls, Boxes,
  PCPFrame, ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar,
  Qrctrls, PCPQrDBText, PCPQRForma, PCPQrImage, PCPQrLabel, QuickRpt,
  PCPQRBand, PCPQuickReport, JvExControls, JvComponent,
  JvGradientHeaderPanel, SCLTabs;

type
  Trn1_meto_list_oper_cost_detalle = class(Trn1_refe_base_informe)
    PCPQrForma2: TPCPQrForma;
    PCPQrForma3: TPCPQrForma;
    tPCPQrLabel8: tPCPQrLabel;
    tPCPQrLabel9: tPCPQrLabel;
    qrla_nomb_material: tPCPQrLabel;
    qrla_codi_material: tPCPQrLabel;
    quer_detalles: TQuery;
    quer_detallesCONS_PROCESO: TIntegerField;
    quer_detallesCODI_PROCESO: TStringField;
    quer_detallesNOMB_PROCESO: TStringField;
    quer_detallesTIEM_PROCESO: TFloatField;
    quer_detallesCOST_MINUTO: TFloatField;
    quer_detallesCOST_PROCESO: TFloatField;
    grup_detalles: TQRGroup;
    PCPQrForma1: TPCPQrForma;
    tPCPQrLabel2: tPCPQrLabel;
    tPCPQrLabel3: tPCPQrLabel;
    tPCPQrLabel4: tPCPQrLabel;
    tPCPQrLabel5: tPCPQrLabel;
    tPCPQrLabel6: tPCPQrLabel;
    deta_detalles: TQRSubDetail;
    PCPQRDBText1: TPCPQRDBText;
    PCPQRDBText2: TPCPQRDBText;
    PCPQRDBText3: TPCPQRDBText;
    PCPQRDBText4: TPCPQRDBText;
    PCPQRDBText5: TPCPQRDBText;
    foot_detalles: TPCPQRBand;
    QRExpr1: TQRExpr;
    QRLabel1: TQRLabel;
    PCPQrForma4: TPCPQrForma;
    QRExpr2: TQRExpr;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure DoGenerar(aCodi_Material, aNomb_Material : String; aquer_detalles : TQuery);
  end;

var
  rn1_meto_list_oper_cost_detalle: Trn1_meto_list_oper_cost_detalle;

implementation

uses _Traductor;

{$R *.DFM}

Procedure Trn1_meto_list_oper_cost_detalle.DoGenerar(aCodi_Material, aNomb_Material : String;
    aquer_detalles : TQuery);
Begin
     //Textos del material
     qrla_codi_material.Caption := aCodi_material;
     qrla_nomb_material.Caption := aNomb_material;
     //Asignar la consulta
     quer_detalles.SQL.Assign(aquer_detalles.SQL);
     quer_detalles.Params.assign(aquer_detalles.params);
     quer_detalles.Params.AssignValues(aquer_detalles.Params);
     quer_detalles.open;
     //Generar la vista previa
     Acti_informe.Execute;
     //Cerrar
     Close;
End;

procedure Trn1_meto_list_oper_cost_detalle.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
