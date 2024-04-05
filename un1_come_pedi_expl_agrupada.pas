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
        Unit            : un1_come_pedi_expl_agrupada
        Objetivo        : Permite hacer una explosión de materiales por pedidos
                          seleccionando varios pedidos dentro de un filtro
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 26 de 2005
        Versión         : pcp4.0.0.19
*******************************************************************}
unit un1_come_pedi_expl_agrupada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Boxes, PCPFrame, Db, DBTables, dxCntner, dxExEdtr,
  TB2Item, SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls,
  dfsSplitter, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar,
  dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl, dxEditor, dxEdLib,
  dxDBTLCl, dxGrClms, ufra_edit_reportes;

type
  Tfn1_come_pedi_expl_agrupada = class(T_fvent_child)
    TBXItem1: TTBXItem;
    ActionList1: TActionList;
    acti_asistente: TAction;
    consultaTIPO: TIntegerField;
    consultaCONS_PEDIDO: TIntegerField;
    consultaCONS_PEDI_REFERENCIA: TIntegerField;
    consultaNUME_PEDIDO: TStringField;
    consultaORDE_COMPRA: TStringField;
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
    consultaCONS_REFE_COLOR: TIntegerField;
    consultaCONS_COLOR: TIntegerField;
    consultaCODI_COLOR: TStringField;
    consultaNOMB_COLOR: TStringField;
    consultaCONS_UNIDAD: TFloatField;
    consultaREQUERIMIENTO: TFloatField;
    consultaCONS_TOTAL: TFloatField;
    consultaCOST_UNIDAD: TFloatField;
    consultaCOST_TOTAL: TFloatField;
    consultaCONS_UNID_MEDIDA: TIntegerField;
    consultaCODI_UNID_MEDIDA: TStringField;
    consultaNOMB_UNID_MEDIDA: TStringField;
    consultaTIEN_OBSERVACIONES: TIntegerField;
    consultaEXISTENTE: TFloatField;
    consultaDISPONIBLE: TFloatField;
    consultaENTREGADO: TFloatField;
    consultaDIFERENCIA: TFloatField;
    padr_gridTIPO: TdxDBGridImageColumn;
    padr_gridCONS_PEDIDO: TdxDBGridMaskColumn;
    padr_gridCONS_PEDI_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNUME_PEDIDO: TdxDBGridMaskColumn;
    padr_gridORDE_COMPRA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_MATERIAL: TdxDBGridMaskColumn;
    padr_gridCONS_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCONS_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_PROVEEDOR: TdxDBGridMaskColumn;
    padr_gridCODI_PROVEEDOR: TdxDBGridMaskColumn;
    padr_gridNOMB_PROVEEDOR: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_COLOR: TdxDBGridMaskColumn;
    padr_gridCONS_COLOR: TdxDBGridMaskColumn;
    padr_gridCODI_COLOR: TdxDBGridMaskColumn;
    padr_gridNOMB_COLOR: TdxDBGridMaskColumn;
    padr_gridCONS_UNIDAD: TdxDBGridMaskColumn;
    padr_gridCONS_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridCODI_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridNOMB_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridREQUERIMIENTO: TdxDBGridMaskColumn;
    padr_gridCONS_TOTAL: TdxDBGridMaskColumn;
    padr_gridCOST_UNIDAD: TdxDBGridMaskColumn;
    padr_gridCOST_TOTAL: TdxDBGridMaskColumn;
    padr_gridTIEN_OBSERVACIONES: TdxDBGridImageColumn;
    padr_gridEXISTENTE: TdxDBGridMaskColumn;
    padr_gridDISPONIBLE: TdxDBGridMaskColumn;
    padr_gridENTREGADO: TdxDBGridMaskColumn;
    padr_gridDIFERENCIA: TdxDBGridMaskColumn;
    procedure acti_asistenteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure consultaAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_come_pedi_expl_agrupada: Tfn1_come_pedi_expl_agrupada;

implementation

uses _MDI, uwn1_come_filt_pedidos, _cons_pcp, _func_pcp, _func_varias,
  _Traductor;

{$R *.DFM}

procedure Tfn1_come_pedi_expl_agrupada.acti_asistenteExecute(Sender: TObject);
var
    var_filtro  : String;
begin
  inherited;
  var_filtro := fwn1_come_filt_pedidos.doEjecutarAsistente;
  if var_filtro = cos_se_cancelo then Exit;
  //Eliminar el filtro activo y actualizar con el existente para los pedidos
  If var_filtro <> '' Then
      doAplicarFiltroUsuarioPCP('SELECT DISTINCT CONS_PEDI_REFERENCIA FROM VIS_PCP_PEDI_REFERENCIAS WHERE '+
                                 var_filtro + ' ORDER BY CONS_PEDI_REFERENCIA', 0)
  Else
      doAplicarFiltroUsuarioPCP('SELECT DISTINCT CONS_PEDI_REFERENCIA FROM VIS_PCP_PEDI_REFERENCIAS ORDER BY CONS_PEDI_REFERENCIA', 0);
  //Abrir la consulta
  If Not Consulta.Active Then AbrirDataSet(Consulta)
  Else RefreshDataSet(Consulta);
  AjustarGrid(padr_Grid);
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 26 de 2005
Versión         : pcp4.0.0.19
*****************************************************************}
procedure Tfn1_come_pedi_expl_agrupada.FormCreate(Sender: TObject);
begin
  inherited;
  //Crear la ventana del asistente para la consulta
  Application.CreateForm(Tfwn1_come_filt_pedidos, fwn1_come_filt_pedidos);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : consultaAfterOpen
Objetivo        : Actualizar la ventana al mostrar el grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 26 de 2005
Versión         : pcp4.0.0.19
*****************************************************************}
procedure Tfn1_come_pedi_expl_agrupada.consultaAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  //Mostrar el grid
  if not padr_grid.Visible then padr_grid.Visible := True;
end;
{****************************************************************
Procedimiento   : FormDestroy
Objetivo        : Liberara controles asociados a la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.0.20
*****************************************************************}
procedure Tfn1_come_pedi_expl_agrupada.FormDestroy(Sender: TObject);
begin
  inherited;
  //Cerrar el asistente
  fwn1_come_filt_pedidos.Free;
end;

end.
