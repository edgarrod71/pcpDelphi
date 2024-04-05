unit URN1_Pers_Historial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _Informes, Menus, TB2Item, TBX, pcpQRControl, Db, ActnList, DBTables,
  dxfDesigner, QRExport, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ZPropLst, dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame,
  ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar, Qrctrls,
  PCPQRForma, PCPQrImage, PCPQrLabel, QuickRpt, PCPQRBand, PCPQuickReport,
  PCPQrDBText, QREDBImage, PCPQRDBImage, JvExControls, JvComponent,
  JvGradientHeaderPanel, SCLTabs;

type
  TRN1_Pers_Historial = class(TFInformes)
    tPCPQrLabel1: tPCPQrLabel;
    tPCPQrLabel2: tPCPQrLabel;
    PCPQRDBText1: TPCPQRDBText;
    tPCPQrLabel3: tPCPQrLabel;
    PCPQRDBText2: TPCPQRDBText;
    tPCPQrLabel4: tPCPQrLabel;
    PCPQRDBText3: TPCPQRDBText;
    PCPQRDBText4: TPCPQRDBText;
    tPCPQrLabel5: tPCPQrLabel;
    PCPQRDBText5: TPCPQRDBText;
    tPCPQrLabel6: tPCPQrLabel;
    tPCPQrLabel7: tPCPQrLabel;
    PCPQRDBText6: TPCPQRDBText;
    PCPQRDBText7: TPCPQRDBText;
    tPCPQrLabel8: tPCPQrLabel;
    PCPQRDBText8: TPCPQRDBText;
    tPCPQrLabel9: tPCPQrLabel;
    PCPQRDBImage1: TPCPQRDBImage;
    tPCPQrLabel10: tPCPQrLabel;
    tPCPQrLabel11: tPCPQrLabel;
    PCPQRDBText9: TPCPQRDBText;
    tPCPQrLabel12: tPCPQrLabel;
    PCPQRDBText10: TPCPQRDBText;
    tPCPQrLabel13: tPCPQrLabel;
    PCPQRDBText11: TPCPQRDBText;
    tPCPQrLabel14: tPCPQrLabel;
    PCPQRDBText12: TPCPQRDBText;
    tPCPQrLabel15: tPCPQrLabel;
    PCPQRDBText13: TPCPQRDBText;
    tPCPQrLabel16: tPCPQrLabel;
    PCPQRDBText14: TPCPQRDBText;
    PCPQrForma1: TPCPQrForma;
    PCPQrForma2: TPCPQrForma;
    tPCPQrLabel17: tPCPQrLabel;
    PCPQrForma3: TPCPQrForma;
    tPCPQrLabel18: tPCPQrLabel;
    tPCPQrLabel19: tPCPQrLabel;
    tPCPQrLabel20: tPCPQrLabel;
    QPersonal: TQuery;
    DSQPersonal: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QHistorial: TQuery;
    QHistorialTEXT_ANOTACION: TStringField;
    QHistorialFECH_SISTEMA: TDateTimeField;
    QHistorialUSUA_SISTEMA: TStringField;
    PCPQRDBText15: TPCPQRDBText;
    PCPQRDBText16: TPCPQRDBText;
    procedure PCPQRDBText1Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RN1_Pers_Historial: TRN1_Pers_Historial;

implementation

uses _Traductor;

{$R *.DFM}

procedure TRN1_Pers_Historial.PCPQRDBText1Print(sender: TObject;
  var Value: String);
begin
  inherited;
	Value := ' ' + Value;
end;

procedure TRN1_Pers_Historial.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
