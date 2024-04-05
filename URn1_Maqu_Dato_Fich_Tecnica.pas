unit URn1_Maqu_Dato_Fich_Tecnica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _Informes, Menus, TB2Item, TBX, pcpQRControl, Db, ActnList, DBTables,
  dxfDesigner, QRExport, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ZPropLst, dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame,
  ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar, Qrctrls,
  PCPQRForma, PCPQrImage, PCPQrLabel, QuickRpt, PCPQRBand, PCPQuickReport,
  QREDBImage, PCPQRDBImage, PCPQrDBText, JvExControls, JvComponent,
  JvGradientHeaderPanel, SCLTabs;

type
  TRn1_Maqu_Dato_Fich_Tecnica = class(TFInformes)
    tPCPQrLabel1: tPCPQrLabel;
    tPCPQrLabel2: tPCPQrLabel;
    DBCodigo_Grupo: TPCPQRDBText;
    DBGrupo: TPCPQRDBText;
    tPCPQrLabel5: tPCPQrLabel;
    tPCPQrLabel6: tPCPQrLabel;
    tPCPQrLabel7: tPCPQrLabel;
    tPCPQrLabel8: tPCPQrLabel;
    DBCodigo_Tipo: TPCPQRDBText;
    DBTipo: TPCPQRDBText;
    tPCPQrLabel11: tPCPQrLabel;
    tPCPQrLabel12: tPCPQrLabel;
    tPCPQrLabel13: tPCPQrLabel;
    tPCPQrLabel14: tPCPQrLabel;
    tPCPQrLabel15: tPCPQrLabel;
    tPCPQrLabel16: tPCPQrLabel;
    tPCPQrLabel17: tPCPQrLabel;
    tPCPQrLabel18: tPCPQrLabel;
    DBMarca: TPCPQRDBText;
    DBCodigo_Interno: TPCPQRDBText;
    tPCPQrLabel21: tPCPQrLabel;
    tPCPQrLabel22: tPCPQrLabel;
    DBCodigo: TPCPQRDBText;
    DBClase: TPCPQRDBText;
    tPCPQrLabel25: tPCPQrLabel;
    tPCPQrLabel26: tPCPQrLabel;
    DBNumero_Serie: TPCPQRDBText;
    tPCPQrLabel28: tPCPQrLabel;
    tPCPQrLabel29: tPCPQrLabel;
    tPCPQrLabel30: tPCPQrLabel;
    tPCPQrLabel31: tPCPQrLabel;
    tPCPQrLabel32: tPCPQrLabel;
    tPCPQrLabel33: tPCPQrLabel;
    tPCPQrLabel34: tPCPQrLabel;
    tPCPQrLabel35: tPCPQrLabel;
    tPCPQrLabel36: tPCPQrLabel;
    tPCPQrLabel37: tPCPQrLabel;
    tPCPQrLabel38: tPCPQrLabel;
    tPCPQrLabel39: tPCPQrLabel;
    tPCPQrLabel40: tPCPQrLabel;
    tPCPQrLabel41: tPCPQrLabel;
    tPCPQrLabel42: tPCPQrLabel;
    DBRPM: TPCPQRDBText;
    tPCPQrLabel44: tPCPQrLabel;
    tPCPQrLabel45: tPCPQrLabel;
    tPCPQrLabel46: tPCPQrLabel;
    PCPQrForma1: TPCPQrForma;
    tPCPQrLabel47: tPCPQrLabel;
    PCPQrForma2: TPCPQrForma;
    tPCPQrLabel48: tPCPQrLabel;
    tPCPQrLabel49: tPCPQrLabel;
    tPCPQrLabel50: tPCPQrLabel;
    tPCPQrLabel51: tPCPQrLabel;
    tPCPQrLabel52: tPCPQrLabel;
    tPCPQrLabel53: tPCPQrLabel;
    tPCPQrLabel54: tPCPQrLabel;
    tPCPQrLabel55: tPCPQrLabel;
    tPCPQrLabel56: tPCPQrLabel;
    tPCPQrLabel59: tPCPQrLabel;
    tPCPQrLabel60: tPCPQrLabel;
    tPCPQrLabel61: tPCPQrLabel;
    tPCPQrLabel62: tPCPQrLabel;
    tPCPQrLabel63: tPCPQrLabel;
    tPCPQrLabel64: tPCPQrLabel;
    tPCPQrLabel65: tPCPQrLabel;
    tPCPQrLabel66: tPCPQrLabel;
    tPCPQrLabel67: tPCPQrLabel;
    tPCPQrLabel68: tPCPQrLabel;
    tPCPQrLabel69: tPCPQrLabel;
    tPCPQrLabel70: tPCPQrLabel;
    QRecursos: TQuery;
    PCPQRDBImage1: TPCPQRDBImage;
    PCPQRDBImage2: TPCPQRDBImage;
    PCPQRDBText1: TPCPQRDBText;
    procedure tPCPQrLabel6Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Arreglo_Datos : Array [1..23] Of String;
  end;

var
  Rn1_Maqu_Dato_Fich_Tecnica: TRn1_Maqu_Dato_Fich_Tecnica;

implementation

uses _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : tPCPQrLabel6Print
Objetivo        : Asigno un espacio al principio a los controles de
									texto para que no se sobremonte en las líneas
                  del recuadro
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Viernes 16 de julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TRn1_Maqu_Dato_Fich_Tecnica.tPCPQrLabel6Print(sender: TObject;
  var Value: String);
begin
  inherited;
	Value := ' ' + Value;
end;

procedure TRn1_Maqu_Dato_Fich_Tecnica.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
