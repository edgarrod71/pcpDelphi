unit URN1_Acce_Traslados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _Informes, Menus, TB2Item, TBX, pcpQRControl, Db, ActnList, DBTables,
  dxfDesigner, QRExport, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ZPropLst, dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame,
  ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar, Qrctrls,
  PCPQRForma, PCPQrImage, PCPQrLabel, QuickRpt, PCPQRBand, PCPQuickReport,
  PCPQrDBText, JvExControls, JvComponent, JvGradientHeaderPanel, SCLTabs;

type
  TRN1_Acce_Traslados = class(TFInformes)
    QAccesorios: TQuery;
    DSQAccesorios: TDataSource;
    QTraslados: TQuery;
    tPCPQrLabel1: tPCPQrLabel;
    tPCPQrLabel2: tPCPQrLabel;
    tPCPQrLabel3: tPCPQrLabel;
    tPCPQrLabel4: tPCPQrLabel;
    tPCPQrLabel8: tPCPQrLabel;
    PCPQRDBText1: TPCPQRDBText;
    PCPQRDBText2: TPCPQRDBText;
    PCPQRDBText3: TPCPQRDBText;
    PCPQRDBText4: TPCPQRDBText;
    tPCPQrLabel25: tPCPQrLabel;
    tPCPQrLabel26: tPCPQrLabel;
    tPCPQrLabel27: tPCPQrLabel;
    tPCPQrLabel28: tPCPQrLabel;
    tPCPQrLabel29: tPCPQrLabel;
    tPCPQrLabel30: tPCPQrLabel;
    tPCPQrLabel32: tPCPQrLabel;
    tPCPQrLabel33: tPCPQrLabel;
    PCPQRDBText8: TPCPQRDBText;
    tPCPQrLabel31: tPCPQrLabel;
    PCPQrForma1: TPCPQrForma;
    QRSubDetail1: TQRSubDetail;
    PCPQRDBText15: TPCPQRDBText;
    PCPQRDBText16: TPCPQRDBText;
    PCPQRDBText17: TPCPQRDBText;
    PCPQRDBText18: TPCPQRDBText;
    PCPQRDBText19: TPCPQRDBText;
    PCPQRDBText20: TPCPQRDBText;
    PCPQRDBText21: TPCPQRDBText;
    PCPQRDBText22: TPCPQRDBText;
    PCPQRDBText23: TPCPQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RN1_Acce_Traslados: TRN1_Acce_Traslados;

implementation

uses _Traductor;

{$R *.DFM}

procedure TRN1_Acce_Traslados.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
