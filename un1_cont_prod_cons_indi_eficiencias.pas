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
        Unit            : un1_cont_prod_cons_indi_eficiencias
        Objetivo        : Consulta individual de novedades diarias
                          (eficiencias)
        Realizado por   : Tecnologia
        Fecha           : 24-Oct-2005
        Versión         : pcp4000 RC20.19
*******************************************************************}
unit un1_cont_prod_cons_indi_eficiencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, xyData,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  kbmMemTable, dxEditor, dxEdLib, dxDBELib, RxLookup, PCPLookUpComboEdit,
  StdCtrls, SoCtrls, SCLDBLabel, dxDBGrid, dxDBCtrl, dxDBTLCl, dxGrClms,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ufra_edit_reportes,
  ExtCtrls, dfsSplitter, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels,
  TB2Dock, TB2Toolbar, SCLDBGrid, dxPageControl, xyGraph;


type
  Tfn1_cont_prod_cons_indi_eficiencias = class(T_fvent_child)
    myTabl_Ventana: TkbmMemTable;
    quer_pers_Codigo: TQuery;
    data_pers_codigo: TDataSource;
    quer_pers_nombre: TQuery;
    data_pers_nombre: TDataSource;
    myTabl_Ventanacons_personal: TIntegerField;
    myTabl_Ventanafech_inicial: TDateField;
    myTabl_Ventanafech_Final: TDateField;
    myData_Ventana: TDataSource;
    pane_filtros: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    comb_codi_personal: TPCPLookUpComboEdit;
    comb_nomb_personal: TPCPLookUpComboEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    padr_gridFECH_LECTURA: TdxDBGridDateColumn;
    padr_gridMINU_CONTRATADOS: TdxDBGridMaskColumn;
    padr_gridMINU_TRAB_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridMINU_TRAB_NO_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridMINU_TRAB_CURVA: TdxDBGridMaskColumn;
    padr_gridMINU_TRABAJADOS: TdxDBGridColumn;
    padr_gridMINU_EXTR_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridMINU_EXTR_NO_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridMINU_EXTRA: TdxDBGridColumn;
    padr_gridMINU_AUSE_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridMINU_AUSE_NO_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridMINU_AUSENTISMO: TdxDBGridColumn;
    padr_gridMINU_IMPR_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridMINU_IMPR_NO_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridMINU_IMPRODUCTIVOS: TdxDBGridColumn;
    padr_gridMINU_PROD_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridMINU_PROD_CORTE: TdxDBGridMaskColumn;
    padr_gridMINU_PROD_FABRICACION: TdxDBGridMaskColumn;
    padr_gridMINU_PROD_NO_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridMINU_PROD_CURVA: TdxDBGridMaskColumn;
    padr_gridMINU_PRODUCIDOS: TdxDBGridColumn;
    padr_gridINDI_1_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridINDI_2_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridINDI_3_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridINDI_1_NO_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridINDI_2_NO_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridINDI_3_NO_ESTANDAR: TdxDBGridMaskColumn;
    padr_gridINDI_1_TOTAL: TdxDBGridMaskColumn;
    padr_gridINDI_2_TOTAL: TdxDBGridMaskColumn;
    padr_gridINDI_3_TOTAL: TdxDBGridMaskColumn;
    dock_imagen: TTBXDock;
    dock_pane_imagen: TTBXDockablePanel;
    Panel1: TPanel;
    TBXVisibilityToggleItem1: TTBXVisibilityToggleItem;
    tabl_totales: TkbmMemTable;
    Grafica: TxyGraph;
    tabl_graf_datos: TkbmMemTable;
    tabl_grafica: TkbmMemTable;
    tabl_graficagrafica: TBlobField;
    data_Grafica: TDataSource;
    consultaFECH_LECTURA: TDateTimeField;
    consultaMINU_CONTRATADOS: TIntegerField;
    consultaMINU_TRAB_ESTANDAR: TIntegerField;
    consultaMINU_TRAB_NO_ESTANDAR: TIntegerField;
    consultaMINU_TRAB_CURVA: TIntegerField;
    consultaMINU_TRABAJADOS: TIntegerField;
    consultaMINU_EXTR_ESTANDAR: TIntegerField;
    consultaMINU_EXTR_NO_ESTANDAR: TIntegerField;
    consultaMINU_EXTRAS: TIntegerField;
    consultaMINU_AUSE_ESTANDAR: TIntegerField;
    consultaMINU_AUSE_NO_ESTANDAR: TIntegerField;
    consultaMINU_AUSENTISMOS: TIntegerField;
    consultaMINU_IMPR_ESTANDAR: TIntegerField;
    consultaMINU_IMPR_NO_ESTANDAR: TIntegerField;
    consultaMINU_IMPRODUCTIVOS: TIntegerField;
    consultaMINU_PROD_ESTANDAR: TFloatField;
    consultaMINU_PROD_CORTE: TFloatField;
    consultaMINU_PROD_FABRICACION: TFloatField;
    consultaMINU_PROD_NO_ESTANDAR: TFloatField;
    consultaMINU_PROD_CURVA: TFloatField;
    consultaINDI_1_ESTANDAR: TFloatField;
    consultaINDI_2_ESTANDAR: TFloatField;
    consultaINDI_3_ESTANDAR: TFloatField;
    consultaINDI_1_NO_ESTANDAR: TFloatField;
    consultaINDI_2_NO_ESTANDAR: TFloatField;
    consultaINDI_3_NO_ESTANDAR: TFloatField;
    consultaINDI_1_TOTAL: TFloatField;
    consultaINDI_2_TOTAL: TFloatField;
    consultaINDI_3_TOTAL: TFloatField;
    consultaMINU_PRODUCIDOS: TFloatField;
    tabl_totalesFECH_LECTURA: TDateTimeField;
    tabl_totalesMINU_CONTRATADOS: TIntegerField;
    tabl_totalesMINU_TRAB_ESTANDAR: TIntegerField;
    tabl_totalesMINU_TRAB_NO_ESTANDAR: TIntegerField;
    tabl_totalesMINU_TRAB_CURVA: TIntegerField;
    tabl_totalesMINU_TRABAJADOS: TIntegerField;
    tabl_totalesMINU_EXTR_ESTANDAR: TIntegerField;
    tabl_totalesMINU_EXTR_NO_ESTANDAR: TIntegerField;
    tabl_totalesMINU_EXTRAS: TIntegerField;
    tabl_totalesMINU_AUSE_ESTANDAR: TIntegerField;
    tabl_totalesMINU_AUSE_NO_ESTANDAR: TIntegerField;
    tabl_totalesMINU_AUSENTISMOS: TIntegerField;
    tabl_totalesMINU_IMPR_ESTANDAR: TIntegerField;
    tabl_totalesMINU_IMPR_NO_ESTANDAR: TIntegerField;
    tabl_totalesMINU_IMPRODUCTIVOS: TIntegerField;
    tabl_totalesMINU_PROD_ESTANDAR: TFloatField;
    tabl_totalesMINU_PROD_CORTE: TFloatField;
    tabl_totalesMINU_PROD_FABRICACION: TFloatField;
    tabl_totalesMINU_PROD_NO_ESTANDAR: TFloatField;
    tabl_totalesMINU_PROD_CURVA: TFloatField;
    tabl_totalesMINU_PRODUCIDOS: TFloatField;
    tabl_totalesINDI_1_ESTANDAR: TFloatField;
    tabl_totalesINDI_2_ESTANDAR: TFloatField;
    tabl_totalesINDI_3_ESTANDAR: TFloatField;
    tabl_totalesINDI_1_NO_ESTANDAR: TFloatField;
    tabl_totalesINDI_2_NO_ESTANDAR: TFloatField;
    tabl_totalesINDI_3_NO_ESTANDAR: TFloatField;
    tabl_totalesINDI_1_TOTAL: TFloatField;
    tabl_totalesINDI_2_TOTAL: TFloatField;
    tabl_totalesINDI_3_TOTAL: TFloatField;
    tabl_graf_datosFECH_LECTURA: TDateTimeField;
    tabl_graf_datosMINU_CONTRATADOS: TIntegerField;
    tabl_graf_datosMINU_TRAB_ESTANDAR: TIntegerField;
    tabl_graf_datosMINU_TRAB_NO_ESTANDAR: TIntegerField;
    tabl_graf_datosMINU_TRAB_CURVA: TIntegerField;
    tabl_graf_datosMINU_TRABAJADOS: TIntegerField;
    tabl_graf_datosMINU_EXTR_ESTANDAR: TIntegerField;
    tabl_graf_datosMINU_EXTR_NO_ESTANDAR: TIntegerField;
    tabl_graf_datosMINU_EXTRAS: TIntegerField;
    tabl_graf_datosMINU_AUSE_ESTANDAR: TIntegerField;
    tabl_graf_datosMINU_AUSE_NO_ESTANDAR: TIntegerField;
    tabl_graf_datosMINU_AUSENTISMOS: TIntegerField;
    tabl_graf_datosMINU_IMPR_ESTANDAR: TIntegerField;
    tabl_graf_datosMINU_IMPR_NO_ESTANDAR: TIntegerField;
    tabl_graf_datosMINU_IMPRODUCTIVOS: TIntegerField;
    tabl_graf_datosMINU_PROD_ESTANDAR: TFloatField;
    tabl_graf_datosMINU_PROD_CORTE: TFloatField;
    tabl_graf_datosMINU_PROD_FABRICACION: TFloatField;
    tabl_graf_datosMINU_PROD_NO_ESTANDAR: TFloatField;
    tabl_graf_datosMINU_PROD_CURVA: TFloatField;
    tabl_graf_datosMINU_PRODUCIDOS: TFloatField;
    tabl_graf_datosINDI_1_ESTANDAR: TFloatField;
    tabl_graf_datosINDI_2_ESTANDAR: TFloatField;
    tabl_graf_datosINDI_3_ESTANDAR: TFloatField;
    tabl_graf_datosINDI_1_NO_ESTANDAR: TFloatField;
    tabl_graf_datosINDI_2_NO_ESTANDAR: TFloatField;
    tabl_graf_datosINDI_3_NO_ESTANDAR: TFloatField;
    tabl_graf_datosINDI_1_TOTAL: TFloatField;
    tabl_graf_datosINDI_2_TOTAL: TFloatField;
    tabl_graf_datosINDI_3_TOTAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure myTabl_VentanaAfterInsert(DataSet: TDataSet);
    procedure actualizarConsulta(Sender: TObject);
    procedure myTabl_VentanaAfterOpen(DataSet: TDataSet);
    procedure consultaCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure ActualizarGrafica(Sender: TObject);
    procedure padr_gridFilterChanged(Sender: TObject; ADataSet: TDataSet;
      const AFilterText: String);
    procedure ImagenABaseDeDatos(Sender: TObject);
    procedure padr_acti_befo_print_fortesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_cont_prod_cons_indi_eficiencias: Tfn1_cont_prod_cons_indi_eficiencias;

implementation

uses _cons_pcp, _func_db, _MDI, _func_varias, _cons_colores, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Tecnologia
Fecha           : 24-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_cont_prod_cons_indi_eficiencias.FormCreate(Sender: TObject);
begin
  pane_filtros.Caption := cosFiltros;
  padr_repo_fortes.SetDataSourceDisponible(1, data_grafica, cosGraficaEficiencia);
  padr_repo_fortes.SetDataSourceDisponible(2, myData_Ventana, cosFiltros);
  padr_repo_fortes.SetDataSourceDisponible(3, data_pers_codigo, cosPersonal + ':' + cosCodigos);
  padr_repo_fortes.SetDataSourceDisponible(4, data_pers_nombre, cosPersonal + ':' + cosNombres);
  AbrirDataSet(myTabl_Ventana);
  AbrirDataSet(quer_pers_codigo);
  AbrirDataSet(quer_pers_nombre);
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : myTabl_VentanaAfterInsert
Objetivo        : Valores por defecto de la tabla de consulta auxiliar
Realizado por   : Tecnologia
Fecha           : 24-Oct-2005
Argumentos      : DataSet: TDataSet
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_cont_prod_cons_indi_eficiencias.myTabl_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  With myTabl_Ventana do
  Begin
      FieldByName('fech_inicial').Value := Date - 30;
      FieldByName('fech_final').Value := Date;
  End;
end;
{****************************************************************
Procedimiento   : actualizarConsulta
Objetivo        : Actualizar la consulta al cambiar los
                  parámetros
Realizado por   : Tecnologia
Fecha           : 26-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.21
*****************************************************************}
procedure Tfn1_cont_prod_cons_indi_eficiencias.actualizarConsulta(
  Sender: TObject);
begin
  inherited;
  CheckAndPostDataSet(myTabl_ventana);
  RefreshDataSet(Consulta);
  //Mover a una tabla temporal
  tabl_totales.Close;
  tabl_Totales.LoadFromDataSet(Consulta, [mtcpoStructure, mtcpoCalculated, mtcpoIgnoreErrors]);
  tabl_Totales.Open;
  ActualizarGrafica(Sender);

end;
{****************************************************************
Procedimiento   : myTabl_VentanaAfterOpen
Objetivo        : Crear un registro en blanco al abrir la tabla
                  auxiliar
Realizado por   : Tecnologia
Fecha           : 26-Oct-2005
Argumentos      : DataSet: TDataSet
*****************************************************************}
procedure Tfn1_cont_prod_cons_indi_eficiencias.myTabl_VentanaAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  //Crear un registro de trabajo
  myTabl_Ventana.Insert;
  myTabl_Ventana.Post;
end;

procedure Tfn1_cont_prod_cons_indi_eficiencias.consultaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
{  With Consulta do
  Begin
      FieldByName('minu_trabajados').Value := FieldByName('minu_trab_estandar').asFloat + FieldByName('minu_trab_no_estandar').asFloat;
      FieldByName('minu_extra').Value := FieldByName('minu_extr_estandar').asFloat + FieldByName('minu_extr_no_estandar').asFloat;
      FieldByName('minu_ausentismo').Value := FieldByName('minu_ause_estandar').asFloat + FieldByName('minu_ause_no_estandar').asFloat;
      FieldByName('minu_improductivos').Value := FieldByName('minu_impr_estandar').asFloat + FieldByName('minu_impr_no_estandar').asFloat;
      FieldByName('minu_producidos').Value := FieldByName('minu_prod_estandar').asFloat + FieldByName('minu_prod_no_estandar').asFloat;
  End;         }
end;
{****************************************************************
Procedimiento   : FormActivate
Objetivo        : Actualizar los controles al activar la ventana
Realizado por   : Tecnologia
Fecha           : 26-Oct-2005
Argumentos      : Sender: TObject
*****************************************************************}
procedure Tfn1_cont_prod_cons_indi_eficiencias.FormActivate(
  Sender: TObject);
begin
  inherited;
  //Titulos de los campos de indicadores
  With Consulta do
  Begin
      Fields[FieldByName('indi_1_estandar').Index].DisplayLabel := _fmdi.tabl_pcp_opciones.FieldByName('cont_prod_nomb_indi_1').asString + ' ' + cosEstandar;
      Fields[FieldByName('indi_2_estandar').Index].DisplayLabel := _fmdi.tabl_pcp_opciones.FieldByName('cont_prod_nomb_indi_2').asString + ' ' + cosEstandar;
      Fields[FieldByName('indi_3_estandar').Index].DisplayLabel := _fmdi.tabl_pcp_opciones.FieldByName('cont_prod_nomb_indi_3').asString + ' ' + cosEstandar;
      Fields[FieldByName('indi_1_no_estandar').Index].DisplayLabel := _fmdi.tabl_pcp_opciones.FieldByName('cont_prod_nomb_indi_1').asString + ' ' + cosNoEstandar;
      Fields[FieldByName('indi_2_no_estandar').Index].DisplayLabel := _fmdi.tabl_pcp_opciones.FieldByName('cont_prod_nomb_indi_2').asString + ' ' + cosNoEstandar;
      Fields[FieldByName('indi_3_no_estandar').Index].DisplayLabel := _fmdi.tabl_pcp_opciones.FieldByName('cont_prod_nomb_indi_3').asString + ' ' + cosNoEstandar;
      Fields[FieldByName('indi_1_total').Index].DisplayLabel := _fmdi.tabl_pcp_opciones.FieldByName('cont_prod_nomb_indi_1').asString + ' ' + cosTotal;
      Fields[FieldByName('indi_2_total').Index].DisplayLabel := _fmdi.tabl_pcp_opciones.FieldByName('cont_prod_nomb_indi_2').asString + ' ' + cosTotal;
      Fields[FieldByName('indi_3_total').Index].DisplayLabel := _fmdi.tabl_pcp_opciones.FieldByName('cont_prod_nomb_indi_3').asString + ' ' + cosTotal;
  End;
end;
{****************************************************************
Procedimiento   : ActualizarGrafica
Objetivo        : Actualizar la gráfica
Realizado por   : Tecnologia
Fecha           : 27-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.21
*****************************************************************}
procedure Tfn1_cont_prod_cons_indi_eficiencias.ActualizarGrafica(
  Sender: TObject);
begin
   inherited;
   Grafica.plotting := false;
   Grafica[1].clear;
   //Crear la tabla de la gráfica
   If tabl_graf_datos.Active then
      tabl_graf_datos.Close;
   tabl_graf_datos.Open;
   tabl_graf_datos.First;
   //Pintar los valores
   with Grafica[1] do
   begin
      AutoZero := false;
      InternalZero := 0;
      DrawPoints := true;
      PointSize := 5;
      PointShape := ps_circle;
      PointColor := clFinGradienteHard;
      DrawLine := true;
      LineStyle := psdashdot;
      LineColor := clInicioGradienteHard;
   End;

      Grafica.plotting := true;
      Grafica[1].holdupdates := true;  //Para darle mayor velocidad
      //Recorrer la tabla y agregar los valores
      While not tabl_graf_datos.Eof do
      Begin
         Grafica[1].Add(tabl_graf_datos.FieldByName('fech_lectura').AsDateTime, tabl_graf_datos.FieldbyName('indi_3_total').AsFloat);
         tabl_graf_datos.Next;
      end;
      Grafica[1].holdupdates := false;
      Grafica[1].RegressionLineColor := clGray;
      Grafica[1].RegressionLineStyle := psSolid;
      Grafica[1].regtype := rg_linear;
      tabl_graf_datos.Close;
      //titulos de la grafica
      Grafica.XAxis.Title:='Fecha';
      Grafica.yAxis.Title:='Eficiencia (%)';
      //Crear imagen en la base de datos
      ImagenABaseDeDatos(Sender);
end;
{****************************************************************
Procedimiento   : padr_gridFilterChanged
Objetivo        : Actualiza la gráfica al cambiar el filtro de la BD
Realizado por   : Tecnologia
Fecha           : 27-Oct-2005
Argumentos      : Sender: TObject; ADataSet: TDataSet; const AFilterText: String
*****************************************************************}
procedure Tfn1_cont_prod_cons_indi_eficiencias.padr_gridFilterChanged(
  Sender: TObject; ADataSet: TDataSet; const AFilterText: String);
begin
  inherited;
  ActualizarGrafica(Sender);
end;
{****************************************************************
Procedimiento   : ImagenABaseDeDatos
Objetivo        : Crea la imagen de la gráfica en la tabla temporal
                  de la base de datos
Realizado por   : Tecnologia
Fecha           : 28-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.21
*****************************************************************}
procedure Tfn1_cont_prod_cons_indi_eficiencias.ImagenABaseDeDatos(
  Sender: TObject);
var
        var_Bitmap      : TBitmap;
        var_Stream      : TMemoryStream;  
begin
  inherited;
      //Guardar la gráfica en la tabla del archivo
      tabl_grafica.Close;
      tabl_grafica.Open;
      tabl_grafica.Edit;
      var_Bitmap := TBitmap.Create;
      var_Stream := TMemoryStream.Create;
      Try
          var_Bitmap.Width := Grafica.Width;
          var_Bitmap.Height := Grafica.Height;
          Grafica.FillBitmap(var_Bitmap);
          var_Bitmap.saveToStream(var_Stream);
          tabl_graficagrafica.LoadFromStream(var_Stream);
      Finally
          var_Bitmap.Free;
          var_Stream.Free;
      End;
      tabl_grafica.Post;
end;
{****************************************************************
Procedimiento   : padr_acti_befo_print_fortesExecute
Objetivo        : Preparar la gráfica para imprimirla
Realizado por   : Tecnologia
Fecha           : 28-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.21
*****************************************************************}
procedure Tfn1_cont_prod_cons_indi_eficiencias.padr_acti_befo_print_fortesExecute(
  Sender: TObject);
begin
  inherited;
  ActualizarGrafica(Sender);
  ImagenABaseDeDatos(Sender);
end;

end.

