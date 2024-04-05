{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeación y Control de la Producción                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo está protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducción no autorizada, la ingeniería inversa y la   }
{       distribución total o parcial del código contenido en este   }
{       archivo está estrictamente prohibido y podrá tener severas  }
{       consecuencias civiles y penales.                            }
{                                                                   }
{       RESTRICCIONES                                               }
{                                                                   }
{       ESTE CODIGO Y TODOS LOS ARCHIVOS RELACIONADOS               }
{       (DCU, OBJ, DLL, ETC.) SON CONFIDENCIALES Y SU               }
{       PROPIETARIO ES SOFTCONF LIMITADA.                           }
{                                                                   }
{                                                                   }
{       www.softwaredeconfianza.com                                 }
{       tecnologia@softwaredeconfianza.com                          }
{*******************************************************************
        Unit            : urn1_refe_list_materiales
        Objetivo        : Reporte de la lista de materiales
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Agosto 25 de 2004
        Versión         : pcp4000
*******************************************************************}

unit urn1_refe_list_materiales;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _Informes, Menus, TB2Item, TBX, pcpQRControl, Db, ActnList, DBTables,
  dxfDesigner, QRExport, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ZPropLst, dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame,
  ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar, Qrctrls,
  PCPQRForma, PCPQrImage, PCPQrLabel, QuickRpt, PCPQRBand, PCPQuickReport,
  PCPQrDBText, qrcb, qrRRect, JvExControls, JvComponent,
  JvGradientHeaderPanel, SCLTabs;

type
  TRn1_refe_list_materiales = class(TFInformes)
    PCPQrForma1: TPCPQrForma;
    qrla_info_referencia: tPCPQrLabel;
    PCPQrForma2: TPCPQrForma;
    tPCPQrLabel2: tPCPQrLabel;
    tPCPQrLabel3: tPCPQrLabel;
    PCPQrForma3: TPCPQrForma;
    tPCPQrLabel4: tPCPQrLabel;
    PCPQrForma4: TPCPQrForma;
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
    quer_refe_variaciones: TQuery;
    quer_referencias: TQuery;
    quer_tejidos: TQuery;
    grup_tejidos: TQRGroup;
    PCPQrForma10: TPCPQrForma;
    tPCPQrLabel10: tPCPQrLabel;
    deta_tejidos: TQRSubDetail;
    data_Refe_variaciones: TDataSource;
    PCPQRDBText9: TPCPQRDBText;
    PCPQrForma11: TPCPQrForma;
    PCPQRDBText10: TPCPQRDBText;
    PCPQRDBText11: TPCPQRDBText;
    PCPQRDBText12: TPCPQRDBText;
    PCPQRDBText13: TPCPQRDBText;
    quer_refe_variacionesCONS_REFE_VARIACION: TIntegerField;
    quer_refe_variacionesCONS_REFE_TIPO_VARIACION: TIntegerField;
    quer_refe_variacionesNOMB_REFE_TIPO_VARIACION: TStringField;
    tPCPQrLabel11: tPCPQrLabel;
    tPCPQrLabel12: tPCPQrLabel;
    tPCPQrLabel13: tPCPQrLabel;
    quer_forros: TQuery;
    grup_forros: TQRGroup;
    PCPQrForma12: TPCPQrForma;
    tPCPQrLabel14: tPCPQrLabel;
    tPCPQrLabel15: tPCPQrLabel;
    tPCPQrLabel16: tPCPQrLabel;
    tPCPQrLabel17: tPCPQrLabel;
    deta_forros: TQRSubDetail;
    PCPQrForma13: TPCPQrForma;
    PCPQRDBText14: TPCPQRDBText;
    PCPQRDBText15: TPCPQRDBText;
    PCPQRDBText16: TPCPQRDBText;
    PCPQRDBText17: TPCPQRDBText;
    PCPQRDBText18: TPCPQRDBText;
    T1: TQRCheckBox;
    C1: TQRCheckBox;
    t2: TQRCheckBox;
    c2: TQRCheckBox;
    tPCPQrLabel18: tPCPQrLabel;
    tPCPQrLabel19: tPCPQrLabel;
    tPCPQrLabel20: tPCPQrLabel;
    tPCPQrLabel21: tPCPQrLabel;
    grup_fabricacion: TQRGroup;
    PCPQrForma14: TPCPQrForma;
    tPCPQrLabel22: tPCPQrLabel;
    tPCPQrLabel23: tPCPQrLabel;
    tPCPQrLabel24: tPCPQrLabel;
    tPCPQrLabel25: tPCPQrLabel;
    tPCPQrLabel26: tPCPQrLabel;
    tPCPQrLabel27: tPCPQrLabel;
    quer_fabricacion: TQuery;
    quer_empaque: TQuery;
    grup_empaque: TQRGroup;
    PCPQrForma16: TPCPQrForma;
    tPCPQrLabel28: tPCPQrLabel;
    tPCPQrLabel29: tPCPQrLabel;
    tPCPQrLabel30: tPCPQrLabel;
    tPCPQrLabel31: tPCPQrLabel;
    tPCPQrLabel32: tPCPQrLabel;
    tPCPQrLabel33: tPCPQrLabel;
    deta_fabricacion: TQRSubDetail;
    PCPQrForma15: TPCPQrForma;
    PCPQRDBText19: TPCPQRDBText;
    PCPQRDBText20: TPCPQRDBText;
    PCPQRDBText21: TPCPQRDBText;
    PCPQRDBText22: TPCPQRDBText;
    PCPQRDBText23: TPCPQRDBText;
    t3: TQRCheckBox;
    c3: TQRCheckBox;
    deta_empaque: TQRSubDetail;
    PCPQrForma17: TPCPQrForma;
    PCPQRDBText24: TPCPQRDBText;
    PCPQRDBText25: TPCPQRDBText;
    PCPQRDBText26: TPCPQRDBText;
    PCPQRDBText27: TPCPQRDBText;
    PCPQRDBText28: TPCPQRDBText;
    t4: TQRCheckBox;
    c4: TQRCheckBox;
    grup_tallas: TQRGroup;
    PCPQrForma18: TPCPQrForma;
    tPCPQrLabel34: tPCPQrLabel;
    deta_tallas: TQRSubDetail;
    PCPQrForma19: TPCPQrForma;
    circulo: TQRRoundRect;
    quer_tall_unidades: TQuery;
    PCPQRDBText29: TPCPQRDBText;
    PCPQRDBText30: TPCPQRDBText;
    PCPQRDBText31: TPCPQRDBText;
    PCPQRDBText32: TPCPQRDBText;
    PCPQRDBText33: TPCPQRDBText;
    PCPQRDBText34: TPCPQRDBText;
    PCPQRDBText35: TPCPQRDBText;
    PCPQRDBText36: TPCPQRDBText;
    PCPQRDBText37: TPCPQRDBText;
    PCPQRDBText38: TPCPQRDBText;
    PCPQRDBText39: TPCPQRDBText;
    PCPQRDBText42: TPCPQRDBText;
    PCPQRDBText43: TPCPQRDBText;
    PCPQRDBText44: TPCPQRDBText;
    PCPQRDBText45: TPCPQRDBText;
    PCPQRDBText46: TPCPQRDBText;
    PCPQRDBText47: TPCPQRDBText;
    PCPQRDBText48: TPCPQRDBText;
    PCPQRDBText49: TPCPQRDBText;
    quer_tallas: TQuery;
    PCPQRDBText40: TPCPQRDBText;
    PCPQRDBText41: TPCPQRDBText;
    PCPQRDBText50: TPCPQRDBText;
    PCPQRDBText51: TPCPQRDBText;
    PCPQRDBText52: TPCPQRDBText;
    PCPQRDBText53: TPCPQRDBText;
    PCPQRDBText54: TPCPQRDBText;
    PCPQRDBText55: TPCPQRDBText;
    procedure deta_tejidosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure deta_forrosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure deta_fabricacionBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure deta_empaqueBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
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
  Rn1_refe_list_materiales: TRn1_refe_list_materiales;

implementation

uses _cons_pcp, _func_varias, _Traductor;

{$R *.DFM}

procedure TRn1_refe_list_materiales.deta_tejidosBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  t1.Checked := quer_tejidos.FieldByName('tallaje').AsInteger = 1;
  c1.Checked := quer_tejidos.FieldByName('combinacion').AsInteger = 1;
end;

procedure TRn1_refe_list_materiales.deta_forrosBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  t2.Checked := quer_forros.FieldByName('tallaje').AsInteger = 1;
  c2.Checked := quer_forros.FieldByName('combinacion').AsInteger = 1;
end;

procedure TRn1_refe_list_materiales.deta_fabricacionBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  t3.Checked := quer_fabricacion.FieldByName('tallaje').AsInteger = 1;
  c3.Checked := quer_fabricacion.FieldByName('combinacion').AsInteger = 1;
end;

procedure TRn1_refe_list_materiales.deta_empaqueBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  t4.Checked := quer_empaque.FieldByName('tallaje').AsInteger = 1;
  c4.Checked := quer_empaque.FieldByName('combinacion').AsInteger = 1;
end;

procedure TRn1_refe_list_materiales._QRInformePrint(sender: TObject;
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
Procedure TRn1_refe_list_materiales.doGenerar(acons_referencia, acons_refe_variacion : Integer;
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
    AbrirDataSet(quer_tejidos);
    AbrirDataSet(quer_forros);
    AbrirDataSet(quer_fabricacion);
    AbrirDataSet(quer_empaque);
    AbrirDataSet(quer_tall_unidades);
    AbrirDataSet(quer_tallas);
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
procedure TRn1_refe_list_materiales.FormCreate(Sender: TObject);
begin
  inherited;
  var_es_prototipo := False;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : qrla_info_referenciaPrint
Objetivo        : Actualizar el label del titulo de información
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TRn1_refe_list_materiales.qrla_info_referenciaPrint(
  sender: TObject; var Value: String);
begin
  inherited;
  if var_es_prototipo then
        value := format(cosInformacionDe, [cosEl + cosPrototipo])
  Else
        value := format(cosInformacionDe, [cosLa + cosReferencia]);
end;

end.
