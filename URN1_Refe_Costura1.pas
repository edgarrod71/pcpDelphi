unit URN1_Refe_Costura1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _Informes, Menus, TB2Item, TBX, pcpQRControl, Db, ActnList, DBTables,
  dxfDesigner, QRExport, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ZPropLst, dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame,
  ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar, Qrctrls,
  PCPQRForma, PCPQrImage, PCPQrLabel, QuickRpt, PCPQRBand, PCPQuickReport,
  QREDBImage, PCPQRDBImage, PCPQrDBText, JvExControls, JvComponent,
  JvGradientHeaderPanel;

type
  TRN1_Refe_Costura1 = class(TFInformes)
    QCostura: TQuery;
    tPCPQrLabel1: tPCPQrLabel;
    PCPQRDBText1: TPCPQRDBText;
    PCPQRDBText2: TPCPQRDBText;
    tPCPQrLabel2: tPCPQrLabel;
    PCPQRDBText3: TPCPQRDBText;
    tPCPQrLabel3: tPCPQrLabel;
    tPCPQrLabel4: tPCPQrLabel;
    PCPQRDBText4: TPCPQRDBText;
    tPCPQrLabel5: tPCPQrLabel;
    PCPQRDBText5: TPCPQRDBText;
    PCPQRDBText6: TPCPQRDBText;
    tPCPQrLabel6: tPCPQrLabel;
    tPCPQrLabel7: tPCPQrLabel;
    PCPQRDBText7: TPCPQRDBText;
    tPCPQrLabel8: tPCPQrLabel;
    PCPQRDBText8: TPCPQRDBText;
    tPCPQrLabel9: tPCPQrLabel;
    PCPQRDBText9: TPCPQRDBText;
    PCPQRDBImage1: TPCPQRDBImage;
    tPCPQrLabel10: tPCPQrLabel;
    PCPQRDBText10: TPCPQRDBText;
    tPCPQrLabel11: tPCPQrLabel;
    PCPQRDBText11: TPCPQRDBText;
    tPCPQrLabel12: tPCPQrLabel;
    PCPQRDBText12: TPCPQRDBText;
    PCPQRDBImage2: TPCPQRDBImage;
    ChildBand1: TQRChildBand;
    QRDBRichText1: TQRDBRichText;
    PCPQrForma2: TPCPQrForma;
    PCPQrForma4: TPCPQrForma;
    PCPQrForma5: TPCPQrForma;
    PCPQrForma6: TPCPQrForma;
    PCPQrForma1: TPCPQrForma;
    PCPQrForma7: TPCPQrForma;
    PCPQrForma8: TPCPQrForma;
    PCPQrForma3: TPCPQrForma;
    PCPQrForma9: TPCPQrForma;
    tPCPQrLabel13: tPCPQrLabel;
    PCPQRDBText13: TPCPQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RN1_Refe_Costura1: TRN1_Refe_Costura1;

implementation

{$R *.DFM}

end.
