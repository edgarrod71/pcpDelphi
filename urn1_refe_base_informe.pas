unit urn1_refe_base_informe;

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
  Trn1_refe_base_informe = class(TFInformes)
    quer_refe_variaciones: TQuery;
    quer_refe_variacionesCONS_REFE_VARIACION: TIntegerField;
    quer_refe_variacionesCONS_REFE_TIPO_VARIACION: TIntegerField;
    quer_refe_variacionesNOMB_REFE_TIPO_VARIACION: TStringField;
    quer_referencias: TQuery;
    data_Refe_variaciones: TDataSource;
    tPCPQrLabel1: tPCPQrLabel;
    padr_cuad_3: TPCPQrForma;
    padr_cuad_2: TPCPQrForma;
    padr_codigo: tPCPQrLabel;
    padr_cir: tPCPQrLabel;
    padr_padr_5: TPCPQrForma;
    padr_variacion: tPCPQrLabel;
    padr_padr_7: TPCPQrForma;
    padr_padr_6: TPCPQrForma;
    padr_nombre: tPCPQrLabel;
    padr_temporada: tPCPQrLabel;
    padr_padr_8: TPCPQrForma;
    padr_padr_9: TPCPQrForma;
    padr_padr_10: TPCPQrForma;
    padr_marca: tPCPQrLabel;
    padr_linea: tPCPQrLabel;
    padr_estilo: tPCPQrLabel;
    padr_codigo_db: TPCPQRDBText;
    padr_cir_db: TPCPQRDBText;
    padr_variacion_db: TPCPQRDBText;
    padr_nombre_db: TPCPQRDBText;
    padr_temporada_db: TPCPQRDBText;
    padr_marca_db: TPCPQRDBText;
    padr_linea_db: TPCPQRDBText;
    padr_estilo_db: TPCPQRDBText;
    padr_cuad_1: TPCPQrForma;
    qrla_info_referencia: tPCPQrLabel;
    procedure FormCreate(Sender: TObject);
    procedure _QRInformePrint(sender: TObject; var Value: String);
    procedure qrla_info_referenciaPrint(sender: TObject;
      var Value: String);
  private
    { Private declarations }
    var_es_prototipo    : Boolean;
  public
    { Public declarations }
    Procedure doGenerarEncabezado(acons_referencia, acons_refe_variacion : Integer;
        aEs_prototipo : Boolean);
  end;

var
  rn1_refe_base_informe: Trn1_refe_base_informe;

implementation

uses _cons_pcp, _func_varias, _Traductor;

{$R *.DFM}

Procedure Trn1_refe_base_informe.doGenerarEncabezado(acons_referencia, acons_refe_variacion : Integer;
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
End;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Trn1_refe_base_informe.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar las variables
  var_es_prototipo := False;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : _QRInformePrint
Objetivo        : Cambiar el titulo del reporte dependiendo
                  de si es una referencia o un prototipo
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Trn1_refe_base_informe._QRInformePrint(sender: TObject;
  var Value: String);
begin
  inherited;
  //Cambiar el titulo del reporte
  if var_es_prototipo then
        value := value + cosPrototipos
  Else
        value := value + cosReferencias;
end;
{****************************************************************
Procedimiento   : qrla_info_referenciaPrint
Objetivo        : Cambiar el titulo del panel de información
                  de acuerdo a si es referencia/prototipo  
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Trn1_refe_base_informe.qrla_info_referenciaPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  if var_es_prototipo then
        value := format(cosInformacionDel, [cosPrototipo])
  Else
        value := format(cosInformacionDe, [cosLa + cosReferencia]);
end;

end.
