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
        Unit            : ucn1_cont_nove_efic_diario
        Objetivo        : Consulta de Eficiencias diarias por Operario
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 16-Jun-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit ucn1_cont_nove_efic_diario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ufra_edit_reportes,
  ExtCtrls, dfsSplitter, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels,
  ufra_maqu_ubicacion, dxEditor, dxEdLib, StdCtrls, SoCtrls, SCLDBLabel,
  SCLShape, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, TB2Dock, TB2Toolbar,
  SCLDBGrid, dxPageControl, dxMasterView, dxMasterViewColumns, kbmMemTable;

type
  Tcn1_cont_nove_efic_diario = class(T_fvent_child)
    consulta_db: TQuery;
    tabl_local: TTable;
    pane_filtros: TPCPFrame;
    SCLShape1: TSCLShape;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    edit_fech_inicial: TdxDateEdit;
    edit_fech_final: TdxDateEdit;
    fram_ubicacion: Tffra_maqu_ubicacion;
    padr_gridFECHA: TdxDBGridDateColumn;
    padr_gridCODI_PERSONAL: TdxDBGridMaskColumn;
    padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn;
    padr_gridEFIC_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridEFIC_NO_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridEFIC_TOTAL: TdxDBGridMaskColumn;
    padr_gridVALO_AJUS_MINI_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridVALO_AJUS_MINI_NO_ESTANDA: TdxDBGridMaskColumn;
    padr_gridVALO_AJUS_MINI_TOTAL: TdxDBGridMaskColumn;
    padr_gridTIEM_EXTR_TOTAL: TdxDBGridMaskColumn;
    padr_gridVALO_BONO_EXTR_TOTAL: TdxDBGridMaskColumn;
    Panel2: TPanel;
    TBXItem1: TTBXItem;
    pane_reporte: TPCPFrame;
    grid: TdxMasterView;
    consulta2: TQuery;
    data_ventana2: TDataSource;
    consulta2FECHA: TDateTimeField;
    consulta2CONS_PERSONAL: TIntegerField;
    consulta2CODI_PERSONAL: TStringField;
    consulta2NOMB_COMPLETO: TStringField;
    consulta2CONS_EMPRESA: TIntegerField;
    consulta2NOMB_EMPRESA: TStringField;
    consulta2CONS_PLANTA: TIntegerField;
    consulta2NOMB_PLANTA: TStringField;
    consulta2CONS_PLAN_LINEA: TIntegerField;
    consulta2NOMB_PLAN_LINEA: TStringField;
    consulta2CONS_LINE_SECCION: TIntegerField;
    consulta2NOMB_LINE_SECCION: TStringField;
    consulta2REPORTA: TIntegerField;
    consulta2TIEM_TRAB_ESTANDAR: TFloatField;
    consulta2TIEM_TRAB_NO_ESTANDAR: TFloatField;
    consulta2TIEM_TRAB_TOTAL: TFloatField;
    consulta2TIEM_PROD_ESTANDAR: TFloatField;
    consulta2TIEM_PROD_NO_ESTANDAR: TFloatField;
    consulta2TIEM_PROD_TOTAL: TFloatField;
    consulta2EFIC_NO_ESTANDAR: TFloatField;
    consulta2EFIC_ESTANDAR: TFloatField;
    consulta2EFIC_TOTAL: TFloatField;
    consulta2VALO_GANA_PROD_ESTANDAR: TFloatField;
    consulta2VALO_GANA_PROD_NO_ESTANDA: TFloatField;
    consulta2VALO_GANA_PROD_TOTAL: TFloatField;
    consulta2VALO_AJUS_MINI_ESTANDAR: TFloatField;
    consulta2VALO_AJUS_MINI_NO_ESTANDA: TFloatField;
    consulta2VALO_AJUS_MINI_TOTAL: TFloatField;
    consulta2VALO_BONO_PROD_ESTANDAR: TFloatField;
    consulta2VALO_BONO_PROD_NO_ESTANDA: TFloatField;
    consulta2VALO_BONO_PROD_TOTAL: TFloatField;
    consulta2TIEM_EXTR_ESTANDAR: TFloatField;
    consulta2TIEM_EXTR_NO_ESTANDAR: TFloatField;
    consulta2TIEM_EXTR_TOTAL: TFloatField;
    consulta2VALO_BONO_EXTR_ESTANDAR: TFloatField;
    consulta2VALO_BONO_EXTR_NO_ESTANDA: TFloatField;
    consulta2VALO_BONO_EXTR_TOTAL: TFloatField;
    consulta2VALO_DEVE_ESTANDAR: TFloatField;
    consulta2VALO_DEVE_NO_ESTANDAR: TFloatField;
    consulta2VALO_DEVE_TOTAL: TFloatField;
    consultaCONS_PERSONAL: TIntegerField;
    consultaCODI_PERSONAL: TStringField;
    consultaNOMB_COMPLETO: TStringField;
    gridLevel1: TdxMasterViewLevel;
    gridLevel2: TdxMasterViewLevel;
    gridLevel2FECHA: TdxMasterViewColumn;
    gridLevel2EFIC_NO_ESTANDAR: TdxMasterViewColumn;
    gridLevel2EFIC_ESTANDAR: TdxMasterViewColumn;
    gridLevel2EFIC_TOTAL: TdxMasterViewColumn;
    gridLevel2VALO_AJUS_MINI_ESTANDAR: TdxMasterViewColumn;
    gridLevel2VALO_AJUS_MINI_NO_ESTANDA: TdxMasterViewColumn;
    gridLevel2VALO_AJUS_MINI_TOTAL: TdxMasterViewColumn;
    gridLevel2TIEM_EXTR_TOTAL: TdxMasterViewColumn;
    gridLevel2VALO_BONO_EXTR_TOTAL: TdxMasterViewColumn;
    gridLevel2REPORTA: TdxMasterViewCheckColumn;
    Estilo_Maestro: TdxMasterViewStyle;
    Estilo_detalle: TdxMasterViewStyle;
    quer_promedios: TQuery;
    gridLevel2CONS_PERSONAL: TdxMasterViewColumn;
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
    quer_ubicacion: TQuery;
    quer_ubicacionCONS_PERSONAL: TIntegerField;
    quer_ubicacionCONS_EMPRESA: TIntegerField;
    quer_ubicacionNOMB_EMPRESA: TStringField;
    quer_ubicacionCONS_PLANTA: TIntegerField;
    quer_ubicacionNOMB_PLANTA: TStringField;
    quer_ubicacionCONS_PLAN_LINEA: TIntegerField;
    quer_ubicacionNOMB_PLAN_LINEA: TStringField;
    quer_ubicacionCONS_LINE_SECCION: TIntegerField;
    quer_ubicacionNOMB_LINE_SECCION: TStringField;
    consultaCONS_EMPRESA: TIntegerField;
    consultaNOMB_EMPRESA: TStringField;
    consultaCONS_PLANTA: TIntegerField;
    consultaNOMB_PLANTA: TStringField;
    consultaCONS_PLAN_LINEA: TIntegerField;
    consultaNOMB_PLAN_LINEA: TStringField;
    consultaCONS_LINE_SECCION: TIntegerField;
    consultaNOMB_LINE_SECCION: TStringField;
    gridLevel1CONS_PERSONAL: TdxMasterViewColumn;
    gridLevel1CODI_PERSONAL: TdxMasterViewColumn;
    gridLevel1NOMB_COMPLETO: TdxMasterViewColumn;
    gridLevel1CONS_EMPRESA: TdxMasterViewColumn;
    gridLevel1NOMB_EMPRESA: TdxMasterViewColumn;
    gridLevel1CONS_PLANTA: TdxMasterViewColumn;
    gridLevel1NOMB_PLANTA: TdxMasterViewColumn;
    gridLevel1CONS_PLAN_LINEA: TdxMasterViewColumn;
    gridLevel1NOMB_PLAN_LINEA: TdxMasterViewColumn;
    gridLevel1CONS_LINE_SECCION: TdxMasterViewColumn;
    gridLevel1NOMB_LINE_SECCION: TdxMasterViewColumn;
    chec_horas: TRadioButton;
    chec_minutos: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure doActualizarConsulta(Sender: TObject);
    procedure padr_acti_actualizarExecute(Sender: TObject);
    procedure fram_ubicacioncomb_ubic_plantaChange(Sender: TObject);
    procedure fram_ubicacionComb_Ubic_LineaChange(Sender: TObject);
    procedure fram_ubicacioncomb_ubic_seccionChange(Sender: TObject);
    procedure consultaBeforeOpen(DataSet: TDataSet);
    procedure BImprimirPopup(Sender: TTBCustomItem; FromLink: Boolean);
    procedure consultaAfterOpen(DataSet: TDataSet);
    procedure padr_acti_imprimirExecute(Sender: TObject);
    procedure padr_acti_grid_expanderExecute(Sender: TObject);
    procedure padr_acti_grid_contraerExecute(Sender: TObject);
    procedure fram_ubicacioncomb_tipo_ubicacionChange(Sender: TObject);
    procedure fram_ubicacioncomb_ubic_empresaChange(Sender: TObject);
    procedure gridLevel2EFIC_ESTANDARCalcSummary(
      Sender: TdxMasterViewColumn; Node: TdxMasterViewNode;
      DataSet: TDataSet; var Value: Extended);
    procedure quer_promediosCalcFields(DataSet: TDataSet);
    procedure gridLevel2EFIC_NO_ESTANDARCalcSummary(
      Sender: TdxMasterViewColumn; Node: TdxMasterViewNode;
      DataSet: TDataSet; var Value: Extended);
    procedure gridLevel2EFIC_TOTALCalcSummary(Sender: TdxMasterViewColumn;
      Node: TdxMasterViewNode; DataSet: TDataSet; var Value: Extended);
    procedure consulta2BeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cn1_cont_nove_efic_diario: Tcn1_cont_nove_efic_diario;

implementation

uses _cons_pcp, _func_varias, _cons_colores, urn1_cont_nove_efic_personal,
  _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_diario.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicialización visual y de variables
  pane_filtros.Caption := cosFiltros;
  padr_Grid.ShowGroupPanel := False;
  padr_gridNOMB_COMPLETO.Visible := False;
  Estilo_Maestro.Font.Color := clTextoGradienteHard;
  Estilo_Maestro.Color := clFinGradienteHard;
  Estilo_Detalle.Color := clWhite;
  Estilo_Detalle.AnotherColor := clFondoAplicacion;
  //Abrir consultas
  InicializarFrame(fram_Ubicacion);
	Insertar_Palabras(Self, WKLenguaje);
end;

procedure Tcn1_cont_nove_efic_diario.doActualizarConsulta(
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
  padr_grid.FullExpand;
  Grid.FullExpand;
end;
{****************************************************************
Procedimiento   : padr_acti_actualizarExecute
Objetivo        : Actualizar la consulta desde la acción del padre
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_diario.padr_acti_actualizarExecute(
  Sender: TObject);
begin
  //inherited;
  doActualizarConsulta(Sender);
end;
{****************************************************************
Procedimiento   : fram_ubicacioncomb_tipo_ubicacionChange
Objetivo        : Actualizar la consulta al cambiar los combos de ubicación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_diario.fram_ubicacioncomb_ubic_plantaChange(
  Sender: TObject);
begin
  inherited;
  doActualizarConsulta(Sender);

end;

procedure Tcn1_cont_nove_efic_diario.fram_ubicacionComb_Ubic_LineaChange(
  Sender: TObject);
begin
  inherited;
  doActualizarConsulta(Sender);

end;

procedure Tcn1_cont_nove_efic_diario.fram_ubicacioncomb_ubic_seccionChange(
  Sender: TObject);
begin
  inherited;
  doActualizarConsulta(Sender);

end;
{****************************************************************
Procedimiento   : consultaBeforeOpen
Objetivo        : Aplicar los filtros de ubicación a la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_diario.consultaBeforeOpen(DataSet: TDataSet);
Var
        var_Filtro      : String;
begin
  inherited;
  With Consulta do
  Begin
      //Rehacer la consulta
      SQL.Clear;
      SQL.Add('SELECT DISTINCT');
      SQL.Add('CONS_PERSONAL,CODI_PERSONAL, NOMB_COMPLETO');
      SQL.Add('FROM tmpRpt_cont_efic_diarias');
      var_Filtro := fram_Ubicacion.GetFilter(True);
      If var_Filtro <> '' Then
          SQL.Add('Where ' + var_Filtro);
      SQL.Add('ORDER BY CODI_PERSONAL');
  End;
  quer_Promedios.Close;
  quer_promedios.Open;
end;
{****************************************************************
Procedimiento   : BImprimirPopup
Objetivo        : Anular el pop-up del botón de impresión
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_diario.BImprimirPopup(Sender: TTBCustomItem;
  FromLink: Boolean);
begin
  //inherited;

end;

procedure Tcn1_cont_nove_efic_diario.consultaAfterOpen(DataSet: TDataSet);
{var
        var_Cons_personal       : Integer;
        var_i   : Integer;}
begin
  inherited;
  Consulta2.Close;
  Consulta2.Open;
  //Cargar los datos en el grid
 { var_Cons_personal := 0;
  With Grid, Consulta do
  Begin
       LimpiarGrid(Grid, 1, 0);
       Grid.RowCount := 1;
       First;
       While not Eof do
       Begin
           if (FieldByName('cons_personal').asInteger <> var_Cons_personal) Then
           Begin
               Grid.RowCount := Grid.RowCount + 1;
               Grid.Cells[ColumnByName['FECHA'].Index, RowCount - 1] := FieldByName('codi_personal').asString;
               Grid.Colors[ColumnByName['FECHA'].Index, RowCount - 1] := clFondoAplicacion;
               Grid.Cells[ColumnByName['EFIC_ESTANDAR'].Index, RowCount - 1] := FieldByName('nomb_completo').asString;
               Grid.Alignments[ColumnByName['EFIC_ESTANDAR'].Index, RowCount - 1] :=  taLeftJustify;
               Grid.Colors[ColumnByName['EFIC_ESTANDAR'].Index, RowCount - 1] := clFondoAplicacion;
               MergeCells(ColumnByName['EFIC_ESTANDAR'].Index, RowCount - 1, ColCount - 1, 1);
               var_cons_personal := FieldByName('cons_personal').asInteger;
           End;
           //Insertarlo
           Grid.RowCount := Grid.RowCount + 1;
           For var_i := 2 to ColCount do
           Begin
               case var_i of
                     1 : Grid.Cells[var_i - 1, RowCount - 1] := FormatDateTime(cosFormatoFecha, FieldByName(Columns[var_i - 1].Name).asDateTime);
                     Else Grid.Cells[var_i - 1, RowCount - 1] := FormatFloat(',0.00', FieldByName(Columns[var_i - 1].Name).asFloat);
               End;
           End;
           //Siguiente
           Next;
       End;
  End; }
end;
{****************************************************************
Procedimiento   : padr_acti_imprimirExecute
Objetivo        : Crear el reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_diario.padr_acti_imprimirExecute(
  Sender: TObject);
begin
  //inherited;
  Application.CreateForm(Trn1_cont_nove_efic_personal, rn1_cont_nove_efic_personal);
  rn1_cont_nove_efic_personal.DatosReporte(Consulta2, edit_Fech_inicial.Date,
                edit_Fech_Final.Date, fram_ubicacion.comb_ubic_planta.Text,
                fram_ubicacion.comb_ubic_linea.Text, fram_ubicacion.comb_ubic_seccion.Text);
  rn1_cont_nove_efic_personal.Preview;
end;
{****************************************************************
Procedimiento   : padr_acti_grid_expanderExecute
Objetivo        : Expandir la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_diario.padr_acti_grid_expanderExecute(
  Sender: TObject);
begin
  //inherited;
  Grid.FullExpand;
end;
{****************************************************************
Procedimiento   : padr_acti_grid_contraerExecute
Objetivo        : Contraer el grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_diario.padr_acti_grid_contraerExecute(
  Sender: TObject);
begin
  //inherited;
  Grid.FullCollapse;

end;

procedure Tcn1_cont_nove_efic_diario.fram_ubicacioncomb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  fram_ubicacion.comb_tipo_ubicacionChange(Sender);
  doActualizarConsulta(Sender);
end;

procedure Tcn1_cont_nove_efic_diario.fram_ubicacioncomb_ubic_empresaChange(
  Sender: TObject);
begin
  inherited;
  doActualizarConsulta(Sender);
end;
{****************************************************************
Procedimiento   : gridLevel2EFIC_ESTANDARCalcSummary
Objetivo        : Dar valor al promedio de la eficiencia en Estándar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 25-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_diario.gridLevel2EFIC_ESTANDARCalcSummary(
  Sender: TdxMasterViewColumn; Node: TdxMasterViewNode; DataSet: TDataSet;
  var Value: Extended);
Var
        var_Consecutivo : String;
begin
  inherited;
  //Buscar el promedio en la consulta de promedios
  var_Consecutivo := Node.Strings[0];
  if var_Consecutivo = '' Then
        Value := 0
  Else
  Begin
       //Buscar el valor
       if quer_promedios.Locate('cons_personal', var_consecutivo, []) Then
           Value := quer_promedios.FieldByName('efic_estandar').asFloat
       Else
           Value := 0;
  End; 
end;
{****************************************************************
Procedimiento   : quer_promediosCalcFields
Objetivo        : Dar valor a los campos calculados de la consulta
                  de promedios
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 25-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_diario.quer_promediosCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  With quer_promedios do
  Begin
       //Eficiencia EN ESTANDAR
       if (FieldByName('tiem_trab_estandar').asInteger > 0) Then
            FieldByName('efic_estandar').Value := (FieldByName('tiem_prod_estandar').asFloat / FieldByName('tiem_trab_estandar').asFloat)*100
       Else
            FieldByName('efic_estandar').Value := 0;
       //Eficiencia NO ESTANDAR
       if (FieldByName('tiem_trab_no_estanda').asInteger > 0) Then
            FieldByName('efic_no_estandar').Value := (FieldByName('tiem_prod_no_estandar').asFloat / FieldByName('tiem_trab_no_estanda').asFloat)*100
       Else
            FieldByName('efic_no_estandar').Value := 0;
       //Eficiencia TOTAL
       if (FieldByName('tiem_trab_total').asInteger > 0) Then
            FieldByName('efic_total').Value := (FieldByName('tiem_prod_total').asFloat / FieldByName('tiem_trab_total').asFloat)*100
       Else
            FieldByName('efic_total').Value := 0;
  End;
end;
{****************************************************************
Procedimiento   : gridLevel2EFIC_NO_ESTANDARCalcSummary
Objetivo        : Dar valor al promedio de eficiencia en NO ESTANDAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 25-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_diario.gridLevel2EFIC_NO_ESTANDARCalcSummary(
  Sender: TdxMasterViewColumn; Node: TdxMasterViewNode; DataSet: TDataSet;
  var Value: Extended);
Var
        var_Consecutivo : String;
begin
  inherited;
  //Buscar el promedio en la consulta de promedios
  var_Consecutivo := Node.Strings[0];
  if var_Consecutivo = '' Then
        Value := 0
  Else
  Begin
       //Buscar el valor
       if quer_promedios.Locate('cons_personal', var_consecutivo, []) Then
           Value := quer_promedios.FieldByName('efic_no_estandar').asFloat
       Else
           Value := 0;
  End; 
end;
{****************************************************************
Procedimiento   : gridLevel2EFIC_TOTALCalcSummary
Objetivo        : Dar valor al promedio de eficiencia total
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 25-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_diario.gridLevel2EFIC_TOTALCalcSummary(
  Sender: TdxMasterViewColumn; Node: TdxMasterViewNode; DataSet: TDataSet;
  var Value: Extended);
Var
        var_Consecutivo : String;
begin
  inherited;
  //Buscar el promedio en la consulta de promedios
  var_Consecutivo := Node.Strings[0];
  if var_Consecutivo = '' Then
        Value := 0
  Else
  Begin
       //Buscar el valor
       if quer_promedios.Locate('cons_personal', var_consecutivo, []) Then
           Value := quer_promedios.FieldByName('efic_total').asFloat
       Else
           Value := 0;
  End; 
end;
{****************************************************************
Procedimiento   : consulta2BeforeOpen
Objetivo        : Prepara la consulta detalle antes de abrirla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 25-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_cont_nove_efic_diario.consulta2BeforeOpen(
  DataSet: TDataSet);
Var
        var_Filtro      : String;
begin
  inherited;
  With Consulta2 Do
  Begin
      SQL.Clear;
      SQL.Add('SELECT *');
      SQL.Add('FROM tmpRpt_cont_efic_diarias');
      var_Filtro := fram_Ubicacion.GetFilter(True);
      If var_Filtro <> '' Then
          SQL.Add('Where ' + var_Filtro);
       SQL.Add('order by cons_personal, fecha');
  End;
end;

end.




