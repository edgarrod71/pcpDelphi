unit urn1_refe_list_mate_colores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _Informes, Menus, TB2Item, TBX, pcpQRControl, Db, ActnList, DBTables,
  dxfDesigner, QRExport, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ZPropLst, dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame,
  ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar, Qrctrls,
  PCPQRForma, PCPQrImage, PCPQrLabel, QuickRpt, PCPQRBand, PCPQuickReport,
  PCPQrDBText, qrRRect, JvExControls, JvComponent, JvGradientHeaderPanel,
  SCLTabs;

type
  TRn1_refe_list_mate_colores = class(TFInformes)
    quer_refe_variaciones: TQuery;
    quer_refe_variacionesCONS_REFE_VARIACION: TIntegerField;
    quer_refe_variacionesCONS_REFE_TIPO_VARIACION: TIntegerField;
    quer_refe_variacionesNOMB_REFE_TIPO_VARIACION: TStringField;
    quer_referencias: TQuery;
    data_Refe_variaciones: TDataSource;
    quer_colo_unidades: TQuery;
    quer_colores: TQuery;
    tPCPQrLabel1: tPCPQrLabel;
    PCPQrForma3: TPCPQrForma;
    PCPQrForma2: TPCPQrForma;
    tPCPQrLabel2: tPCPQrLabel;
    tPCPQrLabel3: tPCPQrLabel;
    PCPQrForma4: TPCPQrForma;
    tPCPQrLabel4: tPCPQrLabel;
    PCPQrForma5: TPCPQrForma;
    PCPQrForma6: TPCPQrForma;
    tPCPQrLabel5: tPCPQrLabel;
    tPCPQrLabel6: tPCPQrLabel;
    PCPQrForma7: TPCPQrForma;
    PCPQrForma8: TPCPQrForma;
    PCPQrForma9: TPCPQrForma;
    tPCPQrLabel7: tPCPQrLabel;
    tPCPQrLabel8: tPCPQrLabel;
    tPCPQrLabel9: tPCPQrLabel;
    PCPQRDBText1: TPCPQRDBText;
    PCPQRDBText2: TPCPQRDBText;
    PCPQRDBText3: TPCPQRDBText;
    PCPQRDBText4: TPCPQRDBText;
    PCPQRDBText5: TPCPQRDBText;
    PCPQRDBText6: TPCPQRDBText;
    PCPQRDBText7: TPCPQRDBText;
    PCPQRDBText8: TPCPQRDBText;
    PCPQrForma1: TPCPQrForma;
    qrla_info_referencia: tPCPQrLabel;
    grup_tallas: TQRGroup;
    PCPQrForma18: TPCPQrForma;
    tPCPQrLabel34: tPCPQrLabel;
    deta_tallas: TQRSubDetail;
    PCPQrForma19: TPCPQrForma;
    PCPQRDBText29: TPCPQRDBText;
    PCPQRDBText30: TPCPQRDBText;
    PCPQRDBText31: TPCPQRDBText;
    PCPQRDBText9: TPCPQRDBText;
    PCPQRDBText10: TPCPQRDBText;
    PCPQRDBText11: TPCPQRDBText;
    PCPQRDBText12: TPCPQRDBText;
    PCPQRDBText13: TPCPQRDBText;
    PCPQRDBText14: TPCPQRDBText;
    PCPQRDBText15: TPCPQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    PCPQRDBText16: TPCPQRDBText;
    PCPQRDBText17: TPCPQRDBText;
    PCPQRDBText18: TPCPQRDBText;
    PCPQRDBText19: TPCPQRDBText;
    PCPQRDBText20: TPCPQRDBText;
    PCPQRDBText21: TPCPQRDBText;
    PCPQRDBText22: TPCPQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    tPCPQrLabel11: tPCPQrLabel;
    tPCPQrLabel12: tPCPQrLabel;
    PCPQRDBText23: TPCPQRDBText;
    PCPQRDBText24: TPCPQRDBText;
    procedure PCPQRDBText16Print(sender: TObject; var Value: String);
    procedure _QRInformePrint(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure qrla_info_referenciaPrint(sender: TObject;
      var Value: String);
  private
    { Private declarations }
    var_es_prototipo    : Boolean;
  public
    { Public declarations }
    Procedure doGenerar(acons_referencia, acons_refe_variacion : Integer;
        aEs_prototipo : Boolean);
  end;

var
  Rn1_refe_list_mate_colores: TRn1_refe_list_mate_colores;

implementation

uses _cons_pcp, _func_pcp, _func_varias, _Traductor;

{$R *.DFM}

procedure TRn1_refe_list_mate_colores.PCPQRDBText16Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if Not(sender is tpcpQRDBText) then exit;
  (Sender as TPCPQRDBText).WordWrap := False;
end;
{****************************************************************
Procedimiento   : _QRInformePrint
Objetivo        : Cambiar el titulo dependiendo si
                  es prototipo/referencia
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TRn1_refe_list_mate_colores._QRInformePrint(sender: TObject;
  var Value: String);
begin
  inherited;
  if var_es_prototipo then
        value := value + cosPrototipos
  Else
        value := value + cosReferencias;
end;

{****************************************************************
Procedimiento   : doGenerar
Objetivo        : Generar el informe
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 25 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure TRn1_refe_list_mate_colores.doGenerar(acons_referencia, acons_refe_variacion : Integer;
        aEs_prototipo : Boolean);
Begin
    var_es_prototipo := aEs_prototipo;
    //Elimino las firmas, fecha de impresión, página, etc, que no esten
    //seleccionados en las opciones de impresión
    Elegir_Firmas;
    //Consulta de referencias
    With quer_referencias do
    Begin
       //Modificar la consulta
       sql.Clear;
       if var_es_prototipo then
            Sql.Add(Format(cSQL_referencias, ['VIS_GLO_PROTOTIPOS']))
       Else
            Sql.Add(Format(cSQL_referencias, ['VIS_GLO_REFERENCIAS']));
       //Modificar los parámetros
       ParamByName('cons_referencia').DataType := ftInteger;
       ParamByName('cons_referencia').ParamType := ptInput;
    End;
    //Consulta de variaciones
    With quer_refe_variaciones do
    Begin
       //Modificar la consulta
       sql.Clear;
       if var_es_prototipo then
            Sql.Add(Format(cSQL_refe_variaciones,['vis_pcp_prot_variaciones']))
       Else
            Sql.Add(Format(cSQL_refe_variaciones,['vis_pcp_refe_variaciones']));
       //Modificar los parámetros
       ParamByName('cons_refe_variacion').DataType := ftInteger;
       ParamByName('cons_refe_variacion').ParamType := ptInput;
    End;
    //Parametros de las consultas
    quer_referencias.paramByName('cons_referencia').Value := acons_referencia;
    quer_refe_variaciones.paramByName('cons_refe_variacion').Value := acons_refe_variacion;
    AbrirDataSet(quer_referencias);
    AbrirDataSet(quer_refe_variaciones);
    AbrirDataSet(quer_colo_unidades);
    AbrirDataSet(quer_colores);
    _QRPadre.Preview;
    Close;
End;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TRn1_refe_list_mate_colores.FormCreate(Sender: TObject);
begin
  inherited;
  var_es_prototipo := False;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : qrla_info_referenciaPrint
Objetivo        : Actualizar el label de información
                  de la referencia
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TRn1_refe_list_mate_colores.qrla_info_referenciaPrint(
  sender: TObject; var Value: String);
begin
  inherited;
  if var_es_prototipo then
        value := format(cosInformacionDe, [cosEl + cosPrototipo])
  Else
        value := format(cosInformacionDe, [cosLa + cosReferencia]);
end;

end.
