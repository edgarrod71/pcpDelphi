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
        Unit            : ucn1_cont_nove_pago_bruto
        Objetivo        : Consulta de formas de pago
                          Pago bruto      
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 16-Jun-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit ucn1_cont_nove_pago_bruto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ufra_edit_reportes,
  ExtCtrls, dfsSplitter, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels,
  TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl,
  StdCtrls, SoCtrls, SCLDBLabel, dxEditor, dxEdLib, SCLShape, DBCGrids,
  DBCtrls, ufra_maqu_ubicacion;

type
  Tcn1_cont_nove_pago_bruto = class(T_fvent_child)
    pane_filtros: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    chec_horas: TRadioButton;
    SCLDBLabel3: TSCLDBLabel;
    edit_fech_inicial: TdxDateEdit;
    edit_fech_final: TdxDateEdit;
    chec_minutos: TRadioButton;
    SCLShape1: TSCLShape;
    consulta_db: TQuery;
    tabl_local: TTable;
    consultaCONS_PERSONAL: TIntegerField;
    consultaCODI_PERSONAL: TStringField;
    consultaNOMB_COMPLETO: TStringField;
    consultaCONS_EMPRESA: TIntegerField;
    consultaNOMB_EMPRESA: TStringField;
    consultaCONS_PLANTA: TIntegerField;
    consultaNOMB_PLANTA: TStringField;
    consultaCONS_PLAN_LINEA: TIntegerField;
    consultaNOMB_PLAN_LINEA: TStringField;
    consultaCONS_LINE_SECCION: TIntegerField;
    consultaNOMB_LINE_SECCION: TStringField;
    consultaTIEM_TRAB_ESTANDAR: TFloatField;
    consultaTIEM_TRAB_NO_ESTANDAR: TFloatField;
    consultaTIEM_TRAB_TOTAL: TFloatField;
    consultaTIEM_PROD_ESTANDAR: TFloatField;
    consultaTIEM_PROD_NO_ESTANDAR: TFloatField;
    consultaTIEM_PROD_TOTAL: TFloatField;
    consultaVALO_GANA_PROD_ESTANDAR: TFloatField;
    consultaVALO_GANA_PROD_NO_ESTANDA: TFloatField;
    consultaVALO_GANA_PROD_TOTAL: TFloatField;
    consultaVALO_AJUS_MINI_ESTANDAR: TFloatField;
    consultaVALO_AJUS_MINI_NO_ESTANDA: TFloatField;
    consultaVALO_AJUS_MINI_TOTAL: TFloatField;
    consultaVALO_BONO_PROD_ESTANDAR: TFloatField;
    consultaVALO_BONO_PROD_NO_ESTANDA: TFloatField;
    consultaVALO_BONO_PROD_TOTAL: TFloatField;
    consultaTIEM_EXTR_ESTANDAR: TFloatField;
    consultaTIEM_EXTR_NO_ESTANDAR: TFloatField;
    consultaTIEM_EXTR_TOTAL: TFloatField;
    consultaVALO_BONO_EXTR_ESTANDAR: TFloatField;
    consultaVALO_BONO_EXTR_NO_ESTANDA: TFloatField;
    consultaVALO_BONO_EXTR_TOTAL: TFloatField;
    consultaVALO_DEVE_ESTANDAR: TFloatField;
    consultaVALO_DEVE_NO_ESTANDAR: TFloatField;
    consultaVALO_DEVE_TOTAL: TFloatField;
    consultaEFIC_ESTANDAR: TFloatField;
    consultaEFIC_NO_ESTANDAR: TFloatField;
    consultaEFIC_TOTAL: TFloatField;
    padr_gridCONS_PERSONAL: TdxDBGridMaskColumn;
    padr_gridCODI_PERSONAL: TdxDBGridMaskColumn;
    padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn;
    padr_gridCONS_EMPRESA: TdxDBGridMaskColumn;
    padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn;
    padr_gridCONS_PLANTA: TdxDBGridMaskColumn;
    padr_gridNOMB_PLANTA: TdxDBGridMaskColumn;
    padr_gridCONS_PLAN_LINEA: TdxDBGridMaskColumn;
    padr_gridNOMB_PLAN_LINEA: TdxDBGridMaskColumn;
    padr_gridCONS_LINE_SECCION: TdxDBGridMaskColumn;
    padr_gridNOMB_LINE_SECCION: TdxDBGridMaskColumn;
    padr_gridTIEM_TRAB_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridTIEM_TRAB_NO_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridTIEM_TRAB_TOTAL: TdxDBGridMaskColumn;
    padr_gridTIEM_PROD_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridTIEM_PROD_NO_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridTIEM_PROD_TOTAL: TdxDBGridMaskColumn;
    padr_gridEFIC_ESTANDAR: TdxDBGridColumn;
    padr_gridEFIC_NO_ESTANDAR: TdxDBGridColumn;
    padr_gridEFIC_TOTAL: TdxDBGridColumn;
    padr_gridVALO_GANA_PROD_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridVALO_GANA_PROD_NO_ESTANDA: TdxDBGridMaskColumn;
    padr_gridVALO_GANA_PROD_TOTAL: TdxDBGridMaskColumn;
    padr_gridVALO_AJUS_MINI_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridVALO_AJUS_MINI_NO_ESTANDA: TdxDBGridMaskColumn;
    padr_gridVALO_AJUS_MINI_TOTAL: TdxDBGridMaskColumn;
    padr_gridVALO_BONO_PROD_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridVALO_BONO_PROD_NO_ESTANDA: TdxDBGridMaskColumn;
    padr_gridVALO_BONO_PROD_TOTAL: TdxDBGridMaskColumn;
    padr_gridTIEM_EXTR_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridTIEM_EXTR_NO_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridTIEM_EXTR_TOTAL: TdxDBGridMaskColumn;
    padr_gridVALO_BONO_EXTR_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridVALO_BONO_EXTR_NO_ESTANDA: TdxDBGridMaskColumn;
    padr_gridVALO_BONO_EXTR_TOTAL: TdxDBGridMaskColumn;
    padr_gridVALO_DEVE_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridVALO_DEVE_NO_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridVALO_DEVE_TOTAL: TdxDBGridMaskColumn;
    pane_reporte: TPCPFrame;
    grid_reporte: TDBCtrlGrid;
    pane_titulos: TPanel;
    pane_registro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    shap_total: TSCLShape;
    DBText3: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText26: TDBText;
    DBText27: TDBText;
    DBText28: TDBText;
    DBText29: TDBText;
    fram_ubicacion: Tffra_maqu_ubicacion;
    TBXItem1: TTBXItem;
    procedure FormCreate(Sender: TObject);
    procedure doActualizarConsulta(Sender: TObject);
    procedure padr_acti_actualizarExecute(Sender: TObject);
    procedure consultaCalcFields(DataSet: TDataSet);
    procedure consultaAfterOpen(DataSet: TDataSet);
    procedure doResize(Sender: TObject);
    procedure fram_ubicacioncomb_tipo_ubicacionChange(Sender: TObject);
    procedure fram_ubicacioncomb_ubic_empresaChange(Sender: TObject);
    procedure fram_ubicacioncomb_ubic_areaChange(Sender: TObject);
    procedure fram_ubicacioncomb_ubic_plantaChange(Sender: TObject);
    procedure fram_ubicacionComb_Ubic_LineaChange(Sender: TObject);
    procedure fram_ubicacioncomb_ubic_seccionChange(Sender: TObject);
    procedure consultaBeforeOpen(DataSet: TDataSet);
    procedure padr_acti_imprimirExecute(Sender: TObject);
    procedure BImprimirPopup(Sender: TTBCustomItem; FromLink: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cn1_cont_nove_pago_bruto: Tcn1_cont_nove_pago_bruto;

implementation

uses _cons_pcp, _func_varias, _cons_colores, urn1_cont_nove_pago_bruto,
  _MDI, _Traductor;

{$R *.DFM}

procedure Tcn1_cont_nove_pago_bruto.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicialización visual y de variables
  pane_filtros.Caption := cosFiltros;
  pane_registro.Color := clWhite;
  pane_titulos.Font.Color := clTextoGradiente;
  //Abrir consultas
  InicializarFrame(fram_Ubicacion);
	Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : doActualizarConsulta
Objetivo        : Actualizar la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_pago_bruto.doActualizarConsulta(
  Sender: TObject);
begin
  inherited;
  Consulta.Close;
  Consulta_DB.Close;
  tabl_local.Close;
  if (edit_fech_inicial.Date < NowDate - 3000) or (edit_fech_final.Date < NowDate - 3000) Then Exit;
  Consulta.DisableControls;
  Try
        Consulta_DB.ParamByName('fech_inicial').Value := edit_fech_inicial.Date;
        Consulta_DB.ParamByName('fech_final').Value := edit_fech_final.Date;
        if chec_horas.Checked Then
            Consulta_DB.ParamByName('tiem_en_horas').Value := 1
        Else
            Consulta_DB.ParamByName('tiem_en_horas').Value := -1;
        tabl_local.BatchMove(consulta_DB, batCopy);
  Except
     on E:Exception do
       EjecutarMensajeError(e.Message);
  End;
  data_Ventana.DataSet := Consulta;
  Consulta.Open;
  Consulta.EnableControls;
end;
{****************************************************************
Procedimiento   : padr_acti_actualizarExecute
Objetivo        : Actualizar la consulta desde la accion de
                  actualización
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_pago_bruto.padr_acti_actualizarExecute(
  Sender: TObject);
begin
  //inherited;
  doActualizarConsulta(Sender);
end;
{****************************************************************
Procedimiento   : consultaCalcFields
Objetivo        : Dar valor a los campos calculados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_pago_bruto.consultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  With Consulta do
  Begin
      if FieldByName('tiem_trab_estandar').asFloat > 0 Then
          FieldByName('efic_estandar').Value := (FieldByName('tiem_prod_estandar').asFloat / FieldByName('tiem_trab_estandar').asFloat) * 100
      Else
          FieldByName('efic_estandar').Value := 0;

      if FieldByName('tiem_trab_no_estandar').asFloat > 0 Then
          FieldByName('efic_no_estandar').Value := (FieldByName('tiem_prod_no_estandar').asFloat / FieldByName('tiem_trab_no_estandar').asFloat) * 100
      Else
          FieldByName('efic_no_estandar').Value := 0;

      if (FieldByName('tiem_trab_estandar').asFloat + FieldByName('tiem_trab_no_estandar').asFloat > 0) Then
          FieldByName('efic_total').Value := ((FieldByName('tiem_prod_estandar').asFloat + FieldByName('tiem_prod_no_estandar').asFloat)/
                        (FieldByName('tiem_trab_estandar').asFloat + FieldByName('tiem_trab_no_estandar').asFloat)) * 100
      Else
          FieldByName('efic_total').Value := 0;
  End;
end;
{****************************************************************
Procedimiento   : consultaAfterOpen
Objetivo        : 
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_pago_bruto.consultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  doResize(Self);
end;

procedure Tcn1_cont_nove_pago_bruto.doResize(Sender: TObject);
begin
  inherited;
  Try
      grid_reporte.RowCount := Trunc(Int(grid_reporte.Height / pane_registro.Height));
  Except
      grid_reporte.RowCount := 1;
  End;
end;
{****************************************************************
Procedimiento   : fram_ubicacioncomb_tipo_ubicacionChange
Objetivo        : Actualizar la consulta al cambiar la ubicación (filtro)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_pago_bruto.fram_ubicacioncomb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  fram_ubicacion.comb_tipo_ubicacionChange(Sender);
  doActualizarConsulta(Sender);
end;

procedure Tcn1_cont_nove_pago_bruto.fram_ubicacioncomb_ubic_empresaChange(
  Sender: TObject);
begin
  inherited;
  doActualizarConsulta(Sender);

end;

procedure Tcn1_cont_nove_pago_bruto.fram_ubicacioncomb_ubic_areaChange(
  Sender: TObject);
begin
  inherited;
  doActualizarConsulta(Sender);
end;

procedure Tcn1_cont_nove_pago_bruto.fram_ubicacioncomb_ubic_plantaChange(
  Sender: TObject);
begin
  inherited;
  doActualizarConsulta(Sender);
end;

procedure Tcn1_cont_nove_pago_bruto.fram_ubicacionComb_Ubic_LineaChange(
  Sender: TObject);
begin
  inherited;
  doActualizarConsulta(Sender);
end;

procedure Tcn1_cont_nove_pago_bruto.fram_ubicacioncomb_ubic_seccionChange(
  Sender: TObject);
begin
  inherited;
  doActualizarConsulta(Sender);
end;

procedure Tcn1_cont_nove_pago_bruto.consultaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  With Consulta do
  Begin
      Filter := fram_Ubicacion.GetFilter(True);
      Filtered := (Filter <> '');
  End;
end;
{****************************************************************
Procedimiento   : padr_acti_imprimirExecute
Objetivo        : Imprimir el reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_pago_bruto.padr_acti_imprimirExecute(
  Sender: TObject);
begin
  //inherited;
  Application.CreateForm(Trn1_cont_nove_pago_bruto, rn1_cont_nove_pago_bruto);
  rn1_cont_nove_pago_bruto.DatosReporte(Consulta, edit_Fech_inicial.Date,
                edit_Fech_Final.Date, fram_ubicacion.comb_ubic_planta.Text,
                fram_ubicacion.comb_ubic_linea.Text, fram_ubicacion.comb_ubic_seccion.Text);
  rn1_cont_nove_pago_bruto.Preview;
end;
{****************************************************************
Procedimiento   : BImprimirPopup
Objetivo        : Anular el popup de impresión
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_pago_bruto.BImprimirPopup(Sender: TTBCustomItem;
  FromLink: Boolean);
begin
  //inherited;

end;

end.
