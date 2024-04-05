unit urn1_meto_list_operaciones;

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
  Trn1_meto_list_operaciones = class(TFInformes)
    quer_refe_variaciones: TQuery;
    quer_refe_variacionesCONS_REFE_VARIACION: TIntegerField;
    quer_refe_variacionesCONS_REFE_TIPO_VARIACION: TIntegerField;
    quer_refe_variacionesNOMB_REFE_TIPO_VARIACION: TStringField;
    quer_referencias: TQuery;
    data_Refe_variaciones: TDataSource;
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
    quer_listado: TQuery;
    grup_listado: TQRGroup;
    tPCPQrLabel10: tPCPQrLabel;
    PCPQrForma10: TPCPQrForma;
    tPCPQrLabel11: tPCPQrLabel;
    tPCPQrLabel12: tPCPQrLabel;
    tPCPQrLabel13: tPCPQrLabel;
    tPCPQrLabel14: tPCPQrLabel;
    tPCPQrLabel15: tPCPQrLabel;
    tPCPQrLabel16: tPCPQrLabel;
    tPCPQrLabel17: tPCPQrLabel;
    tPCPQrLabel18: tPCPQrLabel;
    tPCPQrLabel19: tPCPQrLabel;
    subd_listado: TQRSubDetail;
    fond_titulo: TPCPQrForma;
    PCPQRDBText9: TPCPQRDBText;
    PCPQRDBText10: TPCPQRDBText;
    PCPQRDBText11: TPCPQRDBText;
    PCPQRDBText12: TPCPQRDBText;
    PCPQRDBText13: TPCPQRDBText;
    PCPQRDBText14: TPCPQRDBText;
    PCPQRDBText15: TPCPQRDBText;
    PCPQRDBText16: TPCPQRDBText;
    PCPQRDBText17: TPCPQRDBText;
    PCPQRDBText18: TPCPQRDBText;
    quer_listadonumero: TIntegerField;
    quer_listadoes_titulo: TBooleanField;
    quer_listadoproceso: TStringField;
    quer_listadocomponente: TStringField;
    quer_listadooperacion: TStringField;
    quer_listadocodigo: TStringField;
    quer_listadonomb_operacion: TStringField;
    quer_listadofrecuencia: TFloatField;
    quer_listadotipo_maquina: TStringField;
    quer_listadoppc: TFloatField;
    quer_listadorpm: TFloatField;
    quer_listadotiempo: TFloatField;
    quer_listadoph: TIntegerField;
    foot_listado: TPCPQRBand;
    PCPQrForma11: TPCPQrForma;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    quer_nume_operaciones: TQuery;
    quer_nume_operacionesoperaciones: TIntegerField;
    QRDBText1: TQRDBText;
    quer_suma_tiempo: TQuery;
    PCPQRDBText19: TPCPQRDBText;
    tPCPQrLabel20: tPCPQrLabel;
    PCPQRDBText20: TPCPQRDBText;
    quer_listadoajuste: TStringField;
    procedure _QRInformePrint(sender: TObject; var Value: String);
    procedure qrla_info_referenciaPrint(sender: TObject;
      var Value: String);
    procedure subd_listadoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    var_es_prototipo    : Boolean;
  public
    { Public declarations }
    Procedure doGenerar(acons_referencia, acons_refe_variacion : Integer;
        aEs_prototipo : Boolean);    
  end;

var
  rn1_meto_list_operaciones: Trn1_meto_list_operaciones;

implementation

uses _cons_pcp, _func_varias, _Traductor;

{$R *.DFM}


Procedure trn1_meto_list_operaciones.doGenerar(acons_referencia, acons_refe_variacion : Integer;
        aEs_prototipo : Boolean);
Begin
    var_es_prototipo := aEs_prototipo;   
    //Elimino las firmas, fecha de impresión, página, etc, que no esten
    //seleccionados en las opciones de impresión
    Opciones_Impresion[2] := 'S'; //Habilitar la pagina
    Opciones_Impresion[3] := 'S'; //Habilitar la fecha
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
    AbrirDataSet(quer_listado);
    AbrirDataSet(quer_nume_operaciones);
    AbrirDataSet(quer_suma_tiempo);
    _QRPadre.Preview;
    Close;
End;
{****************************************************************
Procedimiento   : _QRInformePrint
Objetivo        : Cambiar el titulo del reporte
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Trn1_meto_list_operaciones._QRInformePrint(sender: TObject;
  var Value: String);
begin
  inherited;
  if var_es_prototipo then
        value := value + cosPrototipos
  Else
        value := value + cosReferencias;
end;
{****************************************************************
Procedimiento   : qrla_info_referenciaPrint
Objetivo        : Cambiar el titulo del panel de información
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Trn1_meto_list_operaciones.qrla_info_referenciaPrint(
  sender: TObject; var Value: String);
begin
  inherited;
  if var_es_prototipo then
        value := format(cosInformacionDe, [cosEl + cosPrototipo])
  Else
        value := format(cosInformacionDe, [cosLa + cosReferencia]);
end;

procedure Trn1_meto_list_operaciones.subd_listadoBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if quer_listado.FieldByName('es_titulo').AsBoolean then
    Begin
         fond_titulo.brush.color := cocTotal;
         fond_titulo.pen.Color := cocTotal;
    End
  Else
    Begin
         fond_titulo.brush.color := clWhite;
         fond_titulo.pen.Color := clWhite;
    End
end;

procedure Trn1_meto_list_operaciones.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
