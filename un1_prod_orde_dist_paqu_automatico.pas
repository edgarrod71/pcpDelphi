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
        Unit            : un1_prod_orde_dist_paqu_automatico
        Objetivo        : Paqueteo automático en la distribución de paquetes
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Julio 26 de 2004
        Versión         : pcp4.0.0.10
*******************************************************************}
unit un1_prod_orde_dist_paqu_automatico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, Db, RxMemDS, Grids, BaseGrid, AdvGrid, AdvCGrid,
  SCLColumnGrid, dxEditor, dxExEdtr, dxEdLib, StdCtrls, SohoBtns,
  SCLButton, dxTL, dxDBCtrl, dxDBGrid, dxCntner, PCPFrame, SCLTabs,
  PictureContainer, DBTables, AdvPanel, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, Boxes, PCPProceso, dxDBELib, SoCtrls,
  SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar;

  
type
  Tfn1_prod_orde_dist_paqu_automatico = class(T_fvent_modal)
    page: TSCLPageControl;
    page_reglas: TSCLTabSheet;
    page_vista: TSCLTabSheet;
    Panel1: TPCPFrame;
    Panel2: TPanel;
    boto_atras: TSCLButton;
    boto_adelante: TSCLButton;
    Panel3: TPCPFrame;
    grid_tallas: TdxDBGrid;
    grid_distribucion: TdxDBGrid;
    quer_unidades: TQuery;
    data_tallas: TDataSource;
    grid_tallasCONS_GRUP_TALL_DETALLE: TdxDBGridMaskColumn;
    grid_tallasTALLA: TdxDBGridMaskColumn;
    myTabla_ventana: TRxMemoryData;
    grid_distribucioncons_prod_talla: TdxDBGridMaskColumn;
    grid_distribuciontalla: TdxDBGridMaskColumn;
    grid_distribucioncant_paquete: TdxDBGridMaskColumn;
    Panel4: TPanel;
    Bevel1: TBevel;
    SCLDBLabel1: TSCLDBLabel;
    edit_cant_paquete: TdxSpinEdit;
    quer_tallas: TQuery;
    quer_tallasCONS_GRUP_TALL_DETALLE: TIntegerField;
    quer_tallasTALLA: TStringField;
    grid: TSCLColumnGrid;
    myTabla_ventanacons_grup_tall_detalle: TIntegerField;
    myTabla_ventanatalla: TStringField;
    myTabla_ventanacant_paquete: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure boto_adelanteClick(Sender: TObject);
    procedure boto_atrasClick(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acti_padr_cancelar_2Execute(Sender: TObject);
    procedure doPaquetear(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    var_Grid     : TAdvColumnGrid;
  public
    { Public declarations }
    Procedure doEjecutarVentana(cons_prod_lote : Integer; aGrid : TAdvColumnGrid);
  end;

ResourceString
        cosUnidadesPorPaquete   =       'Unidades por paquete:';

var
  fn1_prod_orde_dist_paqu_automatico: Tfn1_prod_orde_dist_paqu_automatico;

implementation

uses _MDI, _func_varias, _cons_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Julio 26 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_automatico.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar la ventana
  ColorGrid(grid_tallas);
  ColorGrid(grid_distribucion);
  ColorGrid(Grid);
  padr_acti_aceptar.visible := True;
  padr_boto_aceptar.visible := True;
  page.ActivePage := page_reglas;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : boto_adelanteClick
Objetivo        : Agregar la selección a la tabla temporal
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_automatico.boto_adelanteClick(
  Sender: TObject);
Var
        var_fila        : Integer;
        var_cantidad    : Integer;
        var_cons_grup_tall_detalle : Integer;
        var_talla       : String;
begin
  inherited;
  var_cantidad := pcpInputForm(cosEditando, cosUnidadesPorPaquete, tvInteger, edit_cant_paquete.value);
  if var_cantidad = -1 then Exit;
  //Recorrer e insertar las seleccionadas
  With myTabla_ventana, Grid_tallas do
      For var_fila := 1 to data_tallas.DataSet.RecordCount do
          //Verificar que esté seleccionado
          if Items[var_fila - 1].Selected Then
          Begin
              //Asignar los valores a variables
              var_cons_grup_tall_detalle := Items[var_fila - 1].Values[0];
              var_talla := Items[var_fila - 1].Values[1];
              //Buscar en la tabla de memoria
              if Locate('cons_grup_tall_detalle', var_cons_grup_tall_detalle, []) Then
                //Si existe, editar
                Edit
              Else
              Begin
                //Si no existe, crear
                myTabla_ventana.Insert;
                FieldByName('cons_grup_tall_detalle').Value := var_cons_grup_tall_detalle;
                FieldByName('talla').Value := var_talla;
              End;
              FieldByName('cant_paquete').Value := var_cantidad;
              Post;
          End;
end;
{****************************************************************
Procedimiento   : boto_atrasClick
Objetivo        : Eliminar los seleccionados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_automatico.boto_atrasClick(
  Sender: TObject);
begin
  inherited;
  grid_distribucion.DeleteSelection;
end;
{****************************************************************
Procedimiento   : doEjecutarVentana
Objetivo        : Mostrar al usuario
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tfn1_prod_orde_dist_paqu_automatico.doEjecutarVentana(cons_prod_lote : Integer; aGrid : TAdvColumnGrid);
Begin
     //Asignar el grid a una var
     var_Grid := aGrid;
     //Abrir la consulta de tallas
     quer_tallas.paramByName('cons_prod_lote').Value := cons_prod_lote;
     abrirDataSet(quer_tallas);
     //Abrir la consulta de unidades
     quer_unidades.paramByName('cons_prod_lote').Value := cons_prod_lote;
     abrirDataSet(quer_unidades);
     //Mostrar
     ShowModal;
End;

procedure Tfn1_prod_orde_dist_paqu_automatico.padr_acti_aceptarExecute(
  Sender: TObject);
Var
        var_fila        : integer;
begin
  inherited;
  //Generar los paquetes
  doPaquetear(Sender);
  //Validar el grid de entrada
  if (var_grid = Nil) then Exit;
  //Limpiar el grid de destino
  LimpiarGrid(var_grid, 1);
  var_grid.RowCount := 1;
  //Asignar el número de filas
  var_grid.RowCount := Grid.RowCount;
  for var_fila := 1 to Grid.RowCount - 1 do
        var_grid.Rows[var_fila] := Grid.Rows[var_fila];
  Close;
end;

{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Liberar el DataVentana para que no guarde
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_automatico.FormCloseQuery(
  Sender: TObject; var CanClose: Boolean);
begin
  data_ventana.DataSet := Nil;
  inherited;
end;
{****************************************************************
Procedimiento   : acti_padr_cancelar_2Execute
Objetivo        : Cancelar la distribución automática
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_automatico.acti_padr_cancelar_2Execute(
  Sender: TObject);
begin
  inherited;
  Close;
end;
{****************************************************************
Procedimiento   : doPaquetear
Objetivo        : Generar el paqueteo automático
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_automatico.doPaquetear(Sender: TObject);
Var
   var_cons_grup_tall_detalle   : Integer;
   var_cantidad :Integer;
   paqx         :Integer;
   var_maxi_paquete     :Integer;
begin
  inherited;
  With grid, quer_unidades do
  Begin
       LimpiarGrid(Grid, 1);
       RowCount := 1;
       var_cons_grup_tall_detalle := -1;
       First;
       //Abrir la consulta de unidades de la orden
       While not Eof do
       Begin
                //Buscar la talla (si es diferente)
                if (var_cons_grup_tall_detalle <> FieldByName('cons_grup_tall_detalle').AsInteger) Then
                Begin
                    //Trabajar esta talla
                    var_cons_grup_tall_Detalle := FieldByName('cons_grup_tall_detalle').AsInteger;    
                    //Buscar la cantidad
                    if myTabla_ventana.Locate('cons_grup_tall_detalle',var_cons_grup_tall_detalle,[]) Then
                        var_maxi_paquete := myTabla_ventana.FieldByName('cant_paquete').AsInteger
                    Else
                        var_maxi_paquete := edit_cant_paquete.IntValue;
                    //Validar el valor máximo
                    if (var_maxi_paquete <= 0) then var_maxi_paquete := 1;
                End;
                //Asignar la cantidad actual
                var_cantidad := FieldByName('cant_unidades').AsInteger;  
                //Crear paquetes hasta alcanzar el total de unidades
                While (var_cantidad >= var_maxi_paquete) do
                Begin
                      //Agregar una fila
                      RowCount := RowCount + 1;
                      Cells[ColumnByName['CONS_REFE_COLOR'].Index, RowCount - 1]:= FieldByName('cons_refe_color').asString;
                      Cells[ColumnByName['CONS_GRUP_TALL_DETALLE'].Index, RowCount - 1]:= FieldByName('cons_grup_tall_detalle').asString;
                      Cells[ColumnByName['NOMB_COLOR'].Index, RowCount - 1]:= FieldByName('nomb_color').asString;
                      Cells[ColumnByName['TALLA'].Index, RowCount - 1]:= FieldByName('talla').asString;
                      Cells[ColumnByName['CANT_UNIDADES'].Index, RowCount - 1]:= IntToStr(var_maxi_paquete);
                      //Restar las unidades paqueteadas
                      var_cantidad := var_cantidad  - var_Maxi_paquete;
                End;
                //Paquetear el sobrante
                If (var_cantidad > 0) Then
                Begin
                      RowCount := RowCount + 1;
                      Cells[ColumnByName['CONS_REFE_COLOR'].Index, RowCount - 1]:= FieldByName('cons_refe_color').asString;
                      Cells[ColumnByName['CONS_GRUP_TALL_DETALLE'].Index, RowCount - 1]:= FieldByName('cons_grup_tall_detalle').asString;
                      Cells[ColumnByName['NOMB_COLOR'].Index, RowCount - 1]:= FieldByName('nomb_color').asString;
                      Cells[ColumnByName['TALLA'].Index, RowCount - 1]:= FieldByName('talla').asString;
                      Cells[ColumnByName['CANT_UNIDADES'].Index, RowCount - 1]:= IntToStr(var_cantidad);
                      //Restar las unidades paqueteadas
                      var_cantidad := 0;
               End;
               Next; 
       End;
       AutoNumberCol(ColumnByName['NUME_PAQUETE'].Index);
  End;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Preparar los controles de la ventana antes de mostrarla
Realizado por   : Tecnologia
Fecha           : 24-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_automatico.FormShow(Sender: TObject);
begin
  inherited;
  darFoco(edit_Cant_paquete);
end;

end.
