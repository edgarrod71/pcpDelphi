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
        Unit            : un1_come_expl_padre
        Objetivo        : Ventana padre de explosión de materiales
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 24 de 2004
        Versión         : pcp4006
*******************************************************************}

unit un1_come_expl_padre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, ufra_info_refe_basico, ufra_come_sele_pedido,
  RxMemDS, ufra_edit_reportes, Boxes, PCPFrame;

type
  Tfn1_come_expl_padre = class(T_fvent_child)
    myTabla_ventana: TRxMemoryData;
    myTabla_ventanacons_pedido: TIntegerField;
    myTabla_ventanacons_pedi_referencia: TIntegerField;
    myTabla_ventanatodos: TBooleanField;
    myData_ventana: TDataSource;
    fram_sele_pedido: Tffra_come_sele_pedido;
    fram_info_referencia: Tffra_info_refe_basico;
    procedure FormCreate(Sender: TObject);
    procedure fram_sele_pedidocomb_pedidoChange(Sender: TObject);
    procedure fram_sele_pedidocomb_orde_compraChange(Sender: TObject);
    procedure fram_sele_pedidoboto_limpiarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_come_expl_padre: Tfn1_come_expl_padre;

implementation

uses _func_varias, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 24 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfn1_come_expl_padre.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  AbrirDataSet(myTabla_ventana);
  fram_info_referencia.Visible := AbrirDataSet(fram_info_referencia.quer_referencias);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : fram_sele_pedidocomb_pedidoChange
Objetivo        : Actualizar los controles cuando cambie el pedido
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 22 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfn1_come_expl_padre.fram_sele_pedidocomb_pedidoChange(
  Sender: TObject);
begin
  inherited;
  CheckAndPostDataSet(myTabla_Ventana);
  if Not Consulta.Active then Consulta.Open;
  fram_sele_pedido.comb_pedidoChange(Sender);
end;
{****************************************************************
Procedimiento   : fram_sele_pedidocomb_orde_compraChange
Objetivo        : Cambiar la orden de compra
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 22 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfn1_come_expl_padre.fram_sele_pedidocomb_orde_compraChange(
  Sender: TObject);
begin
  inherited;
  fram_sele_pedido.comb_orde_compraChange(Sender);
  CheckAndPostDataSet(myTabla_Ventana);
  //Aplicar el filtro
  Consulta.DisableControls;
  if Not (fram_sele_pedido.comb_orde_compra.EstaVacio) Then
    Consulta.Filter := 'cons_pedi_referencia = '+'''' + myTabla_ventana.FieldByName('cons_pedi_referencia').AsString + '''';
  Consulta.Filtered := Not (fram_sele_pedido.comb_orde_compra.EstaVacio);
  Consulta.EnableControls;
end;
{****************************************************************
Procedimiento   : fram_sele_pedidoboto_limpiarClick
Objetivo        : Limpiar la orden de compra
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 22 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfn1_come_expl_padre.fram_sele_pedidoboto_limpiarClick(
  Sender: TObject);
begin
  inherited;
  //Heredar la limpieza
  fram_sele_pedido.boto_limpiarClick(Sender);
  //Ejecutar el cambio en el comboBox de la Orden de compra
  fram_sele_pedidocomb_orde_compraChange(Sender);
end;

end.
