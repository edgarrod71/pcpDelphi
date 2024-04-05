unit URN1_Maqu_Traslados;

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
  TRN1_Maqu_Traslados = class(TFInformes)
    QRecursos: TQuery;
    DSQRecursos: TDataSource;
    QTraslados: TQuery;
    tPCPQrLabel1: tPCPQrLabel;
    tPCPQrLabel2: tPCPQrLabel;
    tPCPQrLabel3: tPCPQrLabel;
    tPCPQrLabel4: tPCPQrLabel;
    tPCPQrLabel5: tPCPQrLabel;
    tPCPQrLabel6: tPCPQrLabel;
    tPCPQrLabel7: tPCPQrLabel;
    PCPQRDBText1: TPCPQRDBText;
    PCPQRDBText2: TPCPQRDBText;
    PCPQRDBText3: TPCPQRDBText;
    PCPQRDBText4: TPCPQRDBText;
    PCPQRDBText5: TPCPQRDBText;
    PCPQRDBText6: TPCPQRDBText;
    PCPQRDBText7: TPCPQRDBText;
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
    tPCPQrLabel25: tPCPQrLabel;
    tPCPQrLabel26: tPCPQrLabel;
    tPCPQrLabel27: tPCPQrLabel;
    tPCPQrLabel28: tPCPQrLabel;
    tPCPQrLabel29: tPCPQrLabel;
    tPCPQrLabel30: tPCPQrLabel;
    tPCPQrLabel31: tPCPQrLabel;
    tPCPQrLabel32: tPCPQrLabel;
    tPCPQrLabel33: tPCPQrLabel;
    PCPQrForma1: TPCPQrForma;
    PCPQRDBText8: TPCPQRDBText;
    tPCPQrLabel8: tPCPQrLabel;
    procedure PCPQRDBText8Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RN1_Maqu_Traslados: TRN1_Maqu_Traslados;

implementation

uses _Traductor;

{$R *.DFM}

procedure TRN1_Maqu_Traslados.PCPQRDBText8Print(sender: TObject;
  var Value: String);
begin
  inherited;
	Value := ' ' + Value;
end;

procedure TRN1_Maqu_Traslados.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
