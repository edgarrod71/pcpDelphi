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
        Unit            : ucn1_cont_nove_efic_grupo
        Objetivo        : Consulta de eficiencias en un rango de fechas
                          para un grupo
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 27-Jun-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit ucn1_cont_nove_efic_grupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_consulta, RLParser, Db, DBTables, dxCntner, dxExEdtr,
  TB2Item, SCLPropiedadesForm, ImgList, Menus, TBX, ActnList,
  ufra_edit_reportes, ExtCtrls, RLReport, RLPreview, dfsSplitter, Boxes,
  PCPFrame, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar,
  dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl, StdCtrls,
  ufra_maqu_ubicacion, dxEditor, dxEdLib, SoCtrls, SCLDBLabel, SCLShape,
  RLPrintDialog, RLPreviewForm;

type
  Tcn1_cont_nove_efic_grupo = class(T_fvent_consulta)
    consulta_db: TQuery;
    pane_filtros: TPCPFrame;
    SCLShape1: TSCLShape;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    edit_fech_inicial: TdxDateEdit;
    edit_fech_final: TdxDateEdit;
    fram_ubicacion: Tffra_maqu_ubicacion;
    chec_horas: TRadioButton;
    chec_minutos: TRadioButton;
    data_ventana2: TDataSource;
    quer_promedios: TQuery;
    quer_promediosCONS_PERSONAL: TIntegerField;
    quer_promediosTIEM_TRAB_ESTANDAR: TFloatField;
    quer_promediosTIEM_TRAB_NO_ESTANDA: TFloatField;
    quer_promediosTIEM_TRAB_TOTAL: TFloatField;
    quer_promediosTIEM_PROD_ESTANDAR: TFloatField;
    quer_promediosTIEM_PROD_NO_ESTANDAR: TFloatField;
    quer_promediosTIEM_PROD_TOTAL: TFloatField;
    quer_promediosVALO_AJUS_MINI_ESTANDAR: TFloatField;
    quer_promediosVALO_AJUS_MINI_NO_ESTANDA: TFloatField;
    quer_promediosVALO_AJUS_MINI_TOTAL: TFloatField;
    quer_promediosTIEM_EXTR_TOTAL: TFloatField;
    quer_promediosVALO_BONO_EXTR_TOTAL: TFloatField;
    quer_promediosEFIC_ESTANDAR: TFloatField;
    quer_promediosEFIC_NO_ESTANDAR: TFloatField;
    quer_promediosEFIC_TOTAL: TFloatField;
    repo_pane_filtro: TRLPanel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    labe_planta: TRLLabel;
    labe_linea: TRLLabel;
    labe_seccion: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLBand3: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDraw1: TRLDraw;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    tabl_local: TTable;
    pane_periodo: TRLPanel;
    RLLabel6: TRLLabel;
    labe_fech_inicial: TRLLabel;
    labe_fech_Final: TRLLabel;
    RLLabel8: TRLLabel;
    pane_operarios: TRLPanel;
    RLLabel5: TRLLabel;
    labe_cuenta: TRLLabel;
    consultaFECHA: TDateTimeField;
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
    consultaREPORTA: TIntegerField;
    consultaTIEM_TRAB_ESTANDAR: TFloatField;
    consultaTIEM_TRAB_NO_ESTANDAR: TFloatField;
    consultaTIEM_TRAB_TOTAL: TFloatField;
    consultaTIEM_PROD_ESTANDAR: TFloatField;
    consultaTIEM_PROD_NO_ESTANDAR: TFloatField;
    consultaTIEM_PROD_TOTAL: TFloatField;
    consultaEFIC_ESTANDAR: TFloatField;
    consultaEFIC_NO_ESTANDAR: TFloatField;
    consultaEFIC_TOTAL: TFloatField;
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
    pane_titulos: TRLPanel;
    RLLabel10: TRLLabel;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLMemo7: TRLMemo;
    RLMemo8: TRLMemo;
    procedure FormCreate(Sender: TObject);
    procedure doActualizarConsulta(Sender: TObject);
    procedure fram_ubicacioncomb_tipo_ubicacionChange(Sender: TObject);
    procedure consultaBeforeOpen(DataSet: TDataSet);
    procedure consultaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cn1_cont_nove_efic_grupo: Tcn1_cont_nove_efic_grupo;

implementation

uses _cons_pcp, _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_grupo.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicialización visual y de variables
  pane_filtros.Caption := cosFiltros;
  //Abrir consultas
  InicializarFrame(fram_Ubicacion);
	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : doActualizarConsulta
Objetivo        : Actualiza la consulta con los parámetros dados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_grupo.doActualizarConsulta(
  Sender: TObject);
begin
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
Procedimiento   : fram_ubicacioncomb_tipo_ubicacionChange
Objetivo        : Actualiza los controles y la consulta
                  al cambiar el combo de tipo de ubicación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_grupo.fram_ubicacioncomb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  fram_ubicacion.comb_tipo_ubicacionChange(Sender);
  doActualizarConsulta(Sender);
end;
{****************************************************************
Procedimiento   : consultaBeforeOpen
Objetivo        : Prepara las tablas requeridas antes de abrir
                  la consulta principal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_grupo.consultaBeforeOpen(DataSet: TDataSet);
Var
        var_Filtro      : String;
        var_Orden       : String;
begin
  inherited;
  //Preparar el reporte
  repo_pane_filtro.Visible := False;
  var_orden := '';
  if Not fram_ubicacion.comb_ubic_planta.EstaVacio Then
  Begin
      var_Orden := 'cons_planta';
      repo_pane_Filtro.Visible := True;
      labe_planta.Caption := fram_ubicacion.comb_ubic_planta.Text;
  End;
  if Not fram_ubicacion.comb_ubic_linea.EstaVacio Then
  Begin
      if var_orden <> '' Then var_orden := var_orden + ',';
      var_Orden := var_orden + 'cons_plan_linea';
      repo_pane_Filtro.Visible := True;
      labe_linea.Caption := fram_ubicacion.comb_ubic_linea.Text;
  End;
  if Not fram_ubicacion.comb_ubic_seccion.EstaVacio  Then
  Begin
      if var_orden <> '' Then var_orden := var_orden + ',';
      var_Orden := var_orden + 'cons_line_Seccion';
      repo_pane_Filtro.Visible := True;
      labe_seccion.Caption := fram_ubicacion.comb_ubic_seccion.Text;
  End;
  if var_orden <> '' Then var_orden := var_orden + ',';
  var_Orden := var_orden + 'cons_personal';

  labe_fech_inicial.Caption := FormatDateTime(cosFormatoFecha, edit_Fech_inicial.Date);
  labe_fech_final.Caption := FormatDateTime(cosFormatoFecha, edit_Fech_Final.Date);
{  quer_Cuenta.Open;
  labe_cuenta.Caption := IntToStr(quer_Cuenta.FieldByName('cuantos').asInteger);
  quer_Cuenta.Close;}

  //Preparar la consulta
  With Consulta do
  Begin
      //Rehacer la consulta
      SQL.Clear;
      SQL.Add('SELECT *');
      SQL.Add('FROM tmpRpt_cont_efic_diarias');
      var_Filtro := fram_Ubicacion.GetFilter(True);
      If var_Filtro <> '' Then
          SQL.Add('Where ' + var_Filtro);
      SQL.Add('ORDER BY  cons_personal, fecha');
  End;
  quer_Promedios.Close;
  quer_promedios.Open;
end;
{****************************************************************
Procedimiento   : consultaAfterOpen
Objetivo        : Generar la vista previa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_grupo.consultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  padr_reporte.preview(padr_preview);
end;

end.
