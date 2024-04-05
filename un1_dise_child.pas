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
        Unit            : un1_dise_child
        Objetivo        : Ventana para el diseño de consultas Child
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Marzo 16 de 2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit un1_dise_child;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ufra_edit_reportes,
  ExtCtrls, dfsSplitter, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar,
  dxDBCtrl, dxDBGrid, PanelFiltros, SCLDBGrid, dxPageControl, Boxes,
  PCPFrame;

type
  TTipoInicioVentanaDiseno = (tivdEdicion, tivdEjecucion);
  Tfn1_dise_child = class(T_fvent_child)
    consultaTIPO: TIntegerField;
    consultaCONS_REFE_MATERIAL: TIntegerField;
    consultaCONS_MATE_REFERENCIA: TIntegerField;
    consultaCODI_MATE_REFERENCIA: TStringField;
    consultaNOMB_MATE_REFERENCIA: TStringField;
    consultaCONS_MATE_GRUPO: TIntegerField;
    consultaCODI_MATE_GRUPO: TStringField;
    consultaNOMB_MATE_GRUPO: TStringField;
    consultaCONS_MATE_SUBGRUPO: TIntegerField;
    consultaCODI_MATE_SUBGRUPO: TStringField;
    consultaNOMB_MATE_SUBGRUPO: TStringField;
    consultaCONS_PROVEEDOR: TIntegerField;
    consultaCODI_PROVEEDOR: TIntegerField;
    consultaNOMB_PROVEEDOR: TIntegerField;
    consultaCONS_COLOR: TIntegerField;
    consultaCODI_COLOR: TStringField;
    consultaNOMB_COLOR: TStringField;
    consultaNOMB_UNID_MEDIDA: TStringField;
    consultaCONS_UNIDAD: TFloatField;
    consultaCONS_TOTAL: TFloatField;
    consultaCOST_UNIDAD: TFloatField;
    consultaCOST_TOTAL: TFloatField;
    consultaEXISTENTE: TFloatField;
    consultaDISPONIBLE: TFloatField;
    consultaENTREGADO: TFloatField;
    consultaDIFERENCIA: TFloatField;
    padr_acti_diseno: TActionList;
    padr_page_filtros: TdxTabSheet;
    padr_pane_filtros: TTBXDockablePanel;
    padr_filtros: TPanelFiltros;
    padr_Acti_dise_nuevo: TAction;
    padr_acti_dise_abrir: TAction;
    padr_barr_diseno: TTBXToolbar;
    padr_boto_dise_abrir: TTBXItem;
    padr_boto_dise_nuevo: TTBXItem;
    padr_acti_dise_guardar: TAction;
    padr_acti_dise_guar_como: TAction;
    padr_boto_dise_guardar: TTBXItem;
    padr_boto_dise_guar_Como: TTBXItem;
    padr_acti_dise_eliminar: TAction;
    padr_acti_dise_ejecutar: TAction;
    padr_acti_dise_actualizar: TAction;
    padr_boto_dise_eliminar: TTBXItem;
    padr_boto_dise_sepa1: TTBXSeparatorItem;
    padr_boto_dise_actualizar: TTBXItem;
    padr_boto_dise_vist_previa: TTBXItem;
    padr_acti_dise_parametros: TAction;
    padr_boto_dise_parametros: TTBXItem;
    padr_boto_dise_sepa2: TTBXSeparatorItem;
    padr_acti_dise_prop_campos: TAction;
    padr_boto_dise_columnas: TTBXItem;
    padr_acti_dise_salir: TAction;
    padr_boto_dise_sepa3: TTBXSeparatorItem;
    padr_boto_dise_salir: TTBXItem;
    padr_acti_dise_SQL: TAction;
    TBXItem1: TTBXItem;
    procedure padr_acti_actualizarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure padr_acti_dise_parametrosExecute(Sender: TObject);
    procedure padr_acti_dise_SQLExecute(Sender: TObject);
    procedure padr_acti_dise_prop_camposExecute(Sender: TObject);
  private
    { Private declarations }
    var_TipoInicioVentana : TTipoInicioVentanaDiseno;
    var_NombreModulo    : String;
    Function EnDiseno : Boolean;
  public
    { Public declarations }
    Procedure Ejecutar(peTipoInicio : TTipoInicioVentanaDiseno = tivdEdicion; peNombreModulo : String = '');
    Property TipoInicioVentana : TTipoInicioVentanaDiseno Read var_TipoInicioVentana;
    Property NombreModulo : String Read var_NombreModulo Write var_NombreModulo;
  end;

var
  fn1_dise_child: Tfn1_dise_child;

ResourceString
    cosSinNombre = 'Sin nombre';

implementation


uses _func_db, _func_varias, _MDI, un0_wiza_fuen_datos, un0_edit_campos;

{$R *.DFM}

procedure Tfn1_dise_child.padr_acti_actualizarExecute(Sender: TObject);
begin
  //padr_filtros.AsignarParametros(Consulta);
  //AbrirDataSet(Consulta);
  //inherited;
end;
{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecuta la ventana de acuerdo al modo solicitado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 16 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tfn1_dise_child.Ejecutar(peTipoInicio : TTipoInicioVentanaDiseno = tivdEdicion;
        peNombreModulo : String = '');
Begin
  //Asignar valores a las propiedades
  var_TipoInicioVentana := peTipoInicio;
  var_NombreModulo := peNombreModulo;
  //Inicializar los controles generales
  padr_barra.Visible := (peTipoInicio = tivdEjecucion);
  padr_barr_diseno.Visible := (peTipoInicio = tivdEdicion);
  //Evaluar el tipo de ejecución
  Case peTipoInicio of
        tivdEdicion : Begin
             padr_grid.PopupMenu := Nil;


        End;
        tivdEjecucion : Begin
             padr_grid.PopupMenu := padr_pop_grid;
        End;
  End;
End;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 16 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_dise_child.FormCreate(Sender: TObject);
begin
  inherited;
  var_NombreModulo := cosSinNombre;
  Ejecutar(tivdEdicion);
end;
{****************************************************************
Procedimiento   : padr_acti_dise_parametrosExecute
Objetivo        : Editar los parámetros del filtro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 16 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_dise_child.padr_acti_dise_parametrosExecute(
  Sender: TObject);
begin
  inherited;
  //Verificar que esté en diseño
  if Not EnDiseno Then Exit;
  //Si el panel de filtros no tiene filtros, cargarlos del QUERY
  if (padr_filtros.NumeroDeCampos = 0) Then
    padr_filtros.LlamarDesdeUnQuery(Consulta);
  padr_filtros.EditarCampos;
end;
{****************************************************************
Procedimiento   : EnDiseno
Objetivo        : Indica si la ventana está en modo de edición
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 16 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function Tfn1_dise_child.EnDiseno : Boolean;
Begin
    Result := (TipoInicioVentana = tivdEdicion);
End;
{****************************************************************
Procedimiento   : padr_acti_dise_SQLExecute
Objetivo        : Ejecutar el diálogo asistente para la creación de consultas
                  SQL
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 29-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_dise_child.padr_acti_dise_SQLExecute(Sender: TObject);
begin
  inherited;
  //Verificar que esté en diseño
  if Not EnDiseno Then Exit;
  //Ejecutar el asistente de consultas
  Application.CreateForm(tfwiza_fuen_datos, fwiza_fuen_datos);
  fwiza_fuen_datos.doEjecutarAsistente(Consulta, False);
end;
{****************************************************************
Procedimiento   : padr_acti_dise_prop_camposExecute
Objetivo        : Abre el diálogo de edición de campos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 29-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_dise_child.padr_acti_dise_prop_camposExecute(
  Sender: TObject);
begin
  inherited;
  Application.CreateForm(Tfn0_edit_campos, fn0_edit_campos);
  //Ejecutar el diálogo
  if fn0_edit_campos.Execute(Consulta) Then
            AjustarGrid(padr_Grid);
end;

end.
