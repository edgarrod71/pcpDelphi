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
        Unit            : urn1_cont_nove_pago_bruto
        Objetivo        : Reporte en pantalla del pago bruto
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 16-Jun-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit urn1_cont_nove_pago_bruto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _informesPCP, ActnList, Db, RLParser, RLReport, kbmMemTable, DBTables;

type
  Trn1_cont_nove_pago_bruto = class(T_fInformesPCP)
    pane_filtro: TRLPanel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    labe_planta: TRLLabel;
    labe_linea: TRLLabel;
    labe_seccion: TRLLabel;
    myTabla_Reporte: TkbmMemTable;
    RLBand1: TRLBand;
    pane_periodo: TRLPanel;
    RLLabel6: TRLLabel;
    labe_fech_inicial: TRLLabel;
    labe_fech_Final: TRLLabel;
    RLLabel8: TRLLabel;
    pane_titulos: TRLPanel;
    pane_operarios: TRLPanel;
    RLLabel5: TRLLabel;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLMemo7: TRLMemo;
    RLMemo8: TRLMemo;
    RLMemo9: TRLMemo;
    RLMemo10: TRLMemo;
    RLMemo11: TRLMemo;
    RLMemo12: TRLMemo;
    RLDBMemo1: TRLDBMemo;
    myTabla_ReporteCONS_PERSONAL: TIntegerField;
    myTabla_ReporteCODI_PERSONAL: TStringField;
    myTabla_ReporteNOMB_COMPLETO: TStringField;
    myTabla_ReporteCONS_EMPRESA: TIntegerField;
    myTabla_ReporteNOMB_EMPRESA: TStringField;
    myTabla_ReporteCONS_PLANTA: TIntegerField;
    myTabla_ReporteNOMB_PLANTA: TStringField;
    myTabla_ReporteCONS_PLAN_LINEA: TIntegerField;
    myTabla_ReporteNOMB_PLAN_LINEA: TStringField;
    myTabla_ReporteCONS_LINE_SECCION: TIntegerField;
    myTabla_ReporteNOMB_LINE_SECCION: TStringField;
    myTabla_ReporteTIEM_TRAB_ESTANDAR: TFloatField;
    myTabla_ReporteTIEM_TRAB_NO_ESTANDAR: TFloatField;
    myTabla_ReporteTIEM_TRAB_TOTAL: TFloatField;
    myTabla_ReporteTIEM_PROD_ESTANDAR: TFloatField;
    myTabla_ReporteTIEM_PROD_NO_ESTANDAR: TFloatField;
    myTabla_ReporteTIEM_PROD_TOTAL: TFloatField;
    myTabla_ReporteEFIC_ESTANDAR: TFloatField;
    myTabla_ReporteEFIC_NO_ESTANDAR: TFloatField;
    myTabla_ReporteEFIC_TOTAL: TFloatField;
    myTabla_ReporteVALO_GANA_PROD_ESTANDAR: TFloatField;
    myTabla_ReporteVALO_GANA_PROD_NO_ESTANDA: TFloatField;
    myTabla_ReporteVALO_GANA_PROD_TOTAL: TFloatField;
    myTabla_ReporteVALO_AJUS_MINI_ESTANDAR: TFloatField;
    myTabla_ReporteVALO_AJUS_MINI_NO_ESTANDA: TFloatField;
    myTabla_ReporteVALO_AJUS_MINI_TOTAL: TFloatField;
    myTabla_ReporteVALO_BONO_PROD_ESTANDAR: TFloatField;
    myTabla_ReporteVALO_BONO_PROD_NO_ESTANDA: TFloatField;
    myTabla_ReporteVALO_BONO_PROD_TOTAL: TFloatField;
    myTabla_ReporteTIEM_EXTR_ESTANDAR: TFloatField;
    myTabla_ReporteTIEM_EXTR_NO_ESTANDAR: TFloatField;
    myTabla_ReporteTIEM_EXTR_TOTAL: TFloatField;
    myTabla_ReporteVALO_BONO_EXTR_ESTANDAR: TFloatField;
    myTabla_ReporteVALO_BONO_EXTR_NO_ESTANDA: TFloatField;
    myTabla_ReporteVALO_BONO_EXTR_TOTAL: TFloatField;
    myTabla_ReporteVALO_DEVE_ESTANDAR: TFloatField;
    myTabla_ReporteVALO_DEVE_NO_ESTANDAR: TFloatField;
    myTabla_ReporteVALO_DEVE_TOTAL: TFloatField;
    RLDBText1: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDraw1: TRLDraw;
    labe_cuenta: TRLLabel;
    RLBand2: TRLBand;
    RLMemo13: TRLMemo;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraw2: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLDBResult12: TRLDBResult;
    RLDBResult13: TRLDBResult;
    RLDBResult14: TRLDBResult;
    RLDBResult15: TRLDBResult;
    RLDBResult16: TRLDBResult;
    RLDBResult17: TRLDBResult;
    RLDBResult18: TRLDBResult;
    RLDBResult19: TRLDBResult;
    RLDBResult20: TRLDBResult;
    RLDBResult21: TRLDBResult;
    RLDBResult22: TRLDBResult;
    RLDBResult23: TRLDBResult;
    RLDBResult24: TRLDBResult;
    RLDBResult25: TRLDBResult;
    RLDBResult26: TRLDBResult;
    RLDBResult27: TRLDBResult;
    RLDBResult7: TRLDBResult;
    quer_Cuenta: TQuery;
    procedure pane_filtroBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure SoloImprimirPrimera(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure DatosReporte
        (peDataSet : TDataSet; peFech_inicial, peFech_Final : TDate;
         pePlanta : String = ''; peLinea : String = '';
         peSeccion : String = '');
  end;

var
  rn1_cont_nove_pago_bruto: Trn1_cont_nove_pago_bruto;

implementation

uses _func_varias, _cons_pcp, _Traductor;

{$R *.DFM}

Procedure Trn1_cont_nove_pago_bruto.DatosReporte
        (peDataSet : TDataSet; peFech_inicial, peFech_Final : TDate;
         pePlanta : String = ''; peLinea : String = '';
         peSeccion : String = '');
Var
        var_Orden       : String;
Begin
    if peDataSet = Nil Then Exit;
    peDataSet.DisableControls;
    Try
        //Mover los datos
        myTabla_Reporte.LoadFromDataSet(peDataSet, [mtcpoAppend]);
        //Buscar el orden
        var_Orden := '';
        pane_filtro.Visible := False;
        if pePlanta <> '' Then
        Begin
            var_Orden := 'cons_planta';
            pane_Filtro.Visible := True;
            labe_planta.Caption := pePlanta
        End;
        if peLinea <> '' Then
        Begin
            if var_orden <> '' Then var_orden := var_orden + ',';
            var_Orden := 'cons_plan_linea';
            pane_Filtro.Visible := True;
            labe_linea.Caption := peLinea;
        End;
        if peSeccion <> '' Then
        Begin
            if var_orden <> '' Then var_orden := var_orden + ',';
            var_Orden := 'cons_line_Seccion';
            pane_Filtro.Visible := True;
            labe_seccion.Caption := peSeccion;
        End;
        if var_orden <> '' Then var_orden := var_orden + ',';
        var_Orden := 'cons_personal';
        myTabla_Reporte.SortFields := var_Orden;
        AbrirDataSet(myTabla_Reporte);
        myTabla_Reporte.Sort([]);
        labe_fech_inicial.Caption := FormatDateTime(cosFormatoFecha, peFech_Inicial);
        labe_fech_final.Caption := FormatDateTime(cosFormatoFecha, peFech_Final);
        quer_Cuenta.Open;
        labe_cuenta.Caption := IntToStr(quer_Cuenta.FieldByName('cuantos').asInteger);
        quer_Cuenta.Close;
    Except
          on E:Exception do
          Begin
             EjecutarMensajeError(e.Message);
          End;
    End;
    peDataSet.EnableControls;
End;

{****************************************************************
Procedimiento   : pane_filtroBeforePrint
Objetivo        : Decidir si imprimir el filtro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Trn1_cont_nove_pago_bruto.pane_filtroBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  PrintIt := (pane_filtro.Visible) and (Reporte.PageNumber = 1);
end;
{****************************************************************
Procedimiento   : SoloImprimirPrimera
Objetivo        : Objetos que solo se imprimen en la primera pagina
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Trn1_cont_nove_pago_bruto.SoloImprimirPrimera(
  Sender: TObject; var PrintIt: Boolean);
begin
  inherited;
  PrintIt := Reporte.PageNumber = 1;
end;

procedure Trn1_cont_nove_pago_bruto.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
