unit URN1_Refe_Presentacion1;

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
  TRN1_Refe_Presentacion1 = class(TFInformes)
    QPresentacion: TQuery;
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
    PCPQrForma2: TPCPQrForma;
    PCPQrForma3: TPCPQrForma;
    PCPQrForma4: TPCPQrForma;
    PCPQrForma5: TPCPQrForma;
    PCPQrForma6: TPCPQrForma;
    PCPQrForma7: TPCPQrForma;
    PCPQrForma8: TPCPQrForma;
    tPCPQrLabel10: tPCPQrLabel;
    PCPQRDBText10: TPCPQRDBText;
    tPCPQrLabel11: tPCPQrLabel;
    PCPQRDBText11: TPCPQRDBText;
    PCPQrForma9: TPCPQrForma;
    PCPQrForma1: TPCPQrForma;
    tPCPQrLabel12: tPCPQrLabel;
    PCPQRDBText12: TPCPQRDBText;
    tPCPQrLabel13: tPCPQrLabel;
    PCPQRDBText13: TPCPQRDBText;
    PCPQRDBImage1: TPCPQRDBImage;
    PCPQRDBImage2: TPCPQRDBImage;
    QRSubDetail1: TQRSubDetail;
    DSQPresentacion: TDataSource;
    QMateriales_Empaque: TQuery;
    PCPQRDBText14: TPCPQRDBText;
    tPCPQrLabel14: tPCPQrLabel;
    PCPQRDBText15: TPCPQRDBText;
    tPCPQrLabel15: tPCPQrLabel;
    PCPQrForma10: TPCPQrForma;
    PCPQrForma11: TPCPQrForma;
    PCPQRDBImage3: TPCPQRDBImage;
    QPresentacionTALL_MUESTRA: TStringField;
    QPresentacionIMAGEN: TBlobField;
    QPresentacionDETA_IMAGEN: TBlobField;
    QPresentacionOBSERVACIONES: TMemoField;
    QPresentacionNOMB_REFE_MARCA: TStringField;
    QPresentacionNOMB_REFE_LINEA: TStringField;
    QPresentacionNOMB_REFE_EDAD: TStringField;
    QPresentacionNOMB_REFERENCIA: TStringField;
    QPresentacionNOMB_REFE_ESTILO: TStringField;
    QPresentacionGRUP_TALLAS: TStringField;
    QPresentacionNOMB_REFE_GRUPO: TStringField;
    QPresentacionDESCRIPCION: TStringField;
    QPresentacionFECH_SISTEMA: TDateTimeField;
    QPresentacionUSUA_SISTEMA: TStringField;
    QPresentacionNOMB_REFE_TEMPORADA: TStringField;
    QPresentacionNOMB_REFE_TIPO_VARIACION: TStringField;
    QPresentacionCONS_REFE_VARI_PRESENTACION: TIntegerField;
    QMateriales_EmpaqueUSUA_SISTEMA: TStringField;
    QMateriales_EmpaqueFECH_SISTEMA: TDateTimeField;
    QMateriales_EmpaqueIMAGEN: TBlobField;
    QMateriales_EmpaqueOBSERVACIONES: TMemoField;
    QRDBRichText1: TQRDBRichText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RN1_Refe_Presentacion1: TRN1_Refe_Presentacion1;

implementation

{$R *.DFM}

end.
