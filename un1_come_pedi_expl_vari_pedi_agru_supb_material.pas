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
        Unit            : un1_come_pedi_expl_vari_pedi_agru_subp_material
        Objetivo        : Consulta de explosión de materiales por varios pedidos
                          agrupada por subpedido y material
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           :
        Versión         : pcp4.0.20.0
*******************************************************************}
unit un1_come_pedi_expl_vari_pedi_agru_supb_material;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, dxDBTLCl, dxGrClms, ufra_edit_reportes, Boxes,
  PCPFrame;

type
  Tfn1_come_pedi_expl_vari_pedi_agru_subp_material = class(T_fvent_child)
    boto_asistente: TTBXItem;
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
    procedure boto_asistenteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_come_pedi_expl_vari_pedi_agru_subp_material: Tfn1_come_pedi_expl_vari_pedi_agru_subp_material;

implementation

uses _MDI, uwn1_come_filt_pedidos, _cons_pcp, _func_varias, _func_pcp,
  _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : boto_asistenteClick
Objetivo        : Abrir el asistente de filtro de pedidos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 02 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_come_pedi_expl_vari_pedi_agru_subp_material.boto_asistenteClick(
  Sender: TObject);
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

procedure Tfn1_come_pedi_expl_vari_pedi_agru_subp_material.FormCreate(
  Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
