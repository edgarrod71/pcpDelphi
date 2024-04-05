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
        Unit            : un1_cont_nove_gene_tiquete
        Objetivo        : Genera tiquetes de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 06 de 2005
        Versión         : pcp4.0.0.14
*******************************************************************}
unit un1_cont_nove_gene_tiquete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, Boxes, PCPFrame, dxTL,
  dxDBCtrl, dxDBGrid, SCLDBGrid, RxMemDS, PCPProceso;

type
  Tfn1_cont_nove_gene_tiquete = class(T_fvent_modal)
    Panel1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    comb_nume_orden: TPCPLookUpComboEdit;
    comb_nume_lote: TPCPLookUpComboEdit;
    SCLDBLabel3: TSCLDBLabel;
    dxDBMaskEdit1: TdxDBMaskEdit;
    comb_prod_paqu_tipo: TPCPLookUpComboEdit;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    dxDBMaskEdit2: TdxDBMaskEdit;
    pane_seleccion: TPanel;
    PCPFrame1: TPCPFrame;
    PCPFrame2: TPCPFrame;
    grid_paquetes: TSCLDBGrid;
    grid_operaciones: TSCLDBGrid;
    quer_prod_ordenes: TQuery;
    Data_prod_ordenes: TDataSource;
    quer_prod_paqu_tipos: TQuery;
    data_prod_paqu_tipos: TDataSource;
    quer_prod_lotes: TQuery;
    data_prod_lotes: TDataSource;
    pane_ocultar: TPanel;
    acti_Ventana: TActionList;
    acti_generar: TAction;
    TBXItem1: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    quer_paquetes: TQuery;
    data_paquetes: TDataSource;
    myTabla_Ventana: TRxMemoryData;
    myTabla_VentanaCONS_PROD_ORDEN: TIntegerField;
    myTabla_VentanaCONS_PROD_LOTE: TIntegerField;
    myTabla_VentanaCONS_PROD_PAQU_TIPO: TIntegerField;
    quer_prod_ordenesCONS_PROD_ORDEN: TIntegerField;
    quer_prod_ordenesNUME_PROD_ORDEN: TStringField;
    quer_prod_ordenesCODI_REFERENCIA: TStringField;
    quer_prod_paqu_tiposCONS_PROD_PAQU_TIPO: TIntegerField;
    quer_prod_paqu_tiposNOMB_PROD_PAQU_TIPO: TStringField;
    quer_prod_lotesCONS_PROD_LOTE: TIntegerField;
    quer_prod_lotesNUME_LOTE: TStringField;
    quer_paquetesNUME_PAQUETE: TIntegerField;
    grid_paquetesNUME_PAQUETE: TdxDBGridMaskColumn;
    quer_operaciones: TQuery;
    quer_operacionesSECU_OPERACION: TIntegerField;
    quer_operacionesCODI_OPER_COSTURA: TStringField;
    quer_operacionesNOMB_OPER_COSTURA: TStringField;
    data_operaciones: TDataSource;
    grid_operacionesSECU_OPERACION: TdxDBGridMaskColumn;
    grid_operacionesCODI_OPER_COSTURA: TdxDBGridMaskColumn;
    grid_operacionesNOMB_OPER_COSTURA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure doCambiarOrden(Sender: TObject);
    procedure doCambiarLote(Sender: TObject);
    procedure acti_generarExecute(Sender: TObject);
    procedure acti_generarUpdate(Sender: TObject);
  private
    { Private declarations }
    var_Control    : tdxEdit;
    var_KeyDown  : TKeyEvent;
  public
    { Public declarations }
    Procedure doEjecutarVentana(peControl : tdxEdit; peKeyDown : TKeyEvent);
  end;

var
  fn1_cont_nove_gene_tiquete: Tfn1_cont_nove_gene_tiquete;

implementation

uses _func_pcp, _MDI, _func_varias, _cons_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_cont_nove_gene_tiquete.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  AbrirDataSet(quer_prod_ordenes);
  AbrirDataSet(quer_prod_lotes);
  AbrirDataSet(quer_prod_paqu_tipos);
  AbrirDataSet(quer_operaciones);
  AbrirDataSet(quer_paquetes);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : doCambiarOrden
Objetivo        : Actualizar la ventana cuando cambie la orden
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_cont_nove_gene_tiquete.doCambiarOrden(
  Sender: TObject);
begin
  inherited;
  checkAndPostDataSet(myTabla_Ventana);
  //Ocultar los datos cuando no hay selección de orden
  pane_ocultar.Visible := (comb_nume_orden.EstaVacio);
  //Limpiar el lote
  comb_nume_lote.ClearValue;
  doCambiarLote(Sender);
end;
{****************************************************************
Procedimiento   : doCambiarLote
Objetivo        : Actualizar la ventana cuando cambie el lote
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_cont_nove_gene_tiquete.doCambiarLote(
  Sender: TObject);
begin
  inherited;
  checkAndPostDataSet(myTabla_Ventana);
  //Ocultar selección
  pane_seleccion.Visible := Not ((comb_nume_orden.EstaVacio) or (comb_nume_lote.EstaVacio));
  acti_generar.Enabled := pane_seleccion.Visible;
  

end;
{****************************************************************
Procedimiento   : acti_generarExecute
Objetivo        : Ejecutar la acción de ejecutar el tiquete
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_cont_nove_gene_tiquete.acti_generarExecute(Sender: TObject);
Var
    var_i   : Integer;
    var_cons_prod_paqu_tipo : Integer;
    var_cons_prod_lote  : Integer;
    var_nume_paquete    : Integer;
    var_secu_operacion  : Integer;
    var_codi_Barras : String;
    var_key : Word;
begin
  inherited;
  Try
      var_key := vk_Return;
      //Valores generales del tiquete
      var_cons_prod_paqu_tipo := quer_prod_paqu_tipos.FieldByName('cons_prod_paqu_tipo').asInteger;
      var_cons_prod_lote := quer_prod_lotes.FieldByName('cons_prod_lote').asInteger;
      var_secu_operacion := quer_operaciones.FieldByName('secu_operacion').asInteger;
      //Recorrer la tabla de paquetes
      For var_i := 1 to grid_paquetes.Count do
      Begin
        //Verificar si está seleccionado el paquete
        if grid_paquetes.Items[Var_i - 1].Selected Then
        Begin
            //Numero del paquete
            var_nume_paquete := grid_paquetes.Items[var_i - 1].Values[0];
            //Generar el codigo de barras
            var_codi_barras :=
                IntToStr(var_cons_prod_paqu_tipo)+              //1 [1] - Tipo de paqueteo
                IntToCodBarras(var_cons_prod_lote, 6)+          //6 [2-7] - Consecutivo de la orden
                IntToCodBarras(var_nume_paquete, 4)+            //4 [8-11] - Consecutivo del número de paquete
                IntToCodBarras(var_secu_operacion, 3);          //3 [12-14] - Consecutivo de la operación
            //Asignarlo al control edit
            var_control.Text := var_codi_barras;
            var_keyDown(Sender, var_key, []);
        End;
        //Reportar avance
        ProgresoBarraEstado(cosTrabajando, var_i, grid_paquetes.Count);
      End;
  Except
    on e:Exception do
        EjecutarMensajeError(e.Message);
  End;
  ProgresoBarraEstado;
end;
{****************************************************************
Procedimiento   : acti_generarUpdate
Objetivo        : Actualizar el estado de la acción de generar el tiquete
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_cont_nove_gene_tiquete.acti_generarUpdate(Sender: TObject);
begin
  inherited;
  acti_generar.Enabled := Not ((comb_nume_orden.EstaVacio) or (comb_nume_lote.EstaVacio));
end;
{****************************************************************
Procedimiento   : doEjecutarVentana
Objetivo        : Ejecuta la ventana de generación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
Procedure Tfn1_cont_nove_gene_tiquete.doEjecutarVentana(peControl : tdxEdit; peKeyDown : TKeyEvent);
Begin
    var_control := peControl;
    var_KeyDown := peKeyDown;
    ShowModal;
End;
end.
