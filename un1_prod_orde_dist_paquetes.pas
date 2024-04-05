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
        Unit            : un1_prod_orde_dist_paquetes
        Objetivo        : Distribución de paquetes de confección
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Diciembre 01 de 2004
        Versión         : pcp4.0.0.10
*******************************************************************}
unit un1_prod_orde_dist_paquetes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_prod_padre, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  TBXDkPanels, TBXButtonSCL, RxLookup, PCPLookUpComboEdit, Boxes, PCPFrame,
  dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls,
  TB2Item, TBX, TB2Dock, TB2Toolbar, ufra_prod_orde_dist_paquetes,
  dfsSplitter, ufra_prod_orde_unid_lote, ufra_prod_orde_tota, PCPProceso;

type
  Tfn1_prod_orde_dist_paquetes = class(Tfn1_prod_padre)
    pane_datos: TPCPFrame;
    dock_ventana: TTBXDock;
    PCPFrame2: TPCPFrame;
    fram_distribucion: Tffra_prod_orde_dist_paquetes;
    PCPFrame1: TPCPFrame;
    fram_tota_orden: Tffra_prod_orde_tota;
    dfsSplitter1: TdfsSplitter;
    procedure FormCreate(Sender: TObject);
    procedure comb_nume_ordenChange(Sender: TObject);
    procedure padr_comb_nume_loteChange(Sender: TObject);
    procedure fram_distribuciondata_guardarStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_orde_dist_paquetes: Tfn1_prod_orde_dist_paquetes;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 01 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_dist_paquetes.FormCreate(Sender: TObject);
begin
  inherited;
  LoteVisible := True;
  fram_distribucion.barr_opciones.DefaultDock := dock_ventana;
  fram_distribucion.barr_opciones.CurrentDock := dock_ventana;
  fram_Distribucion.var_DataSet_Prod_Ordenes := padr_quer_ordenes;
  fram_Distribucion.var_DataSet_Prod_Lotes := padr_quer_lotes;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : comb_nume_ordenChange
Objetivo        : Actualizar la ventana al cambiar la orden de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 01 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_dist_paquetes.comb_nume_ordenChange(
  Sender: TObject);
begin
  inherited;
  pane_datos.Visible := Not((comb_nume_orden.EstaVacio) or (padr_comb_nume_lote.EstaVacio))
end;
{****************************************************************
Procedimiento   : padr_comb_nume_loteChange
Objetivo        : Actualizar la ventana al cambiar el lote de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 01 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_dist_paquetes.padr_comb_nume_loteChange(
  Sender: TObject);
begin
  inherited;
  pane_datos.Visible := Not((comb_nume_orden.EstaVacio) or (padr_comb_nume_lote.EstaVacio));
  If not pane_Datos.Visible Then Exit;
  fram_tota_orden.DoEjecutarFrame(padr_comb_nume_lote.KeyValue);
  fram_distribucion.doEjecutarFrame(comb_nume_orden.KeyValue, padr_comb_nume_lote.KeyValue);
end;
{****************************************************************
Procedimiento   : fram_distribuciondata_guardarStateChange
Objetivo        : Actualizar la ventana cuando cambie el estado de la tabla
                  de guardado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 01 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_dist_paquetes.fram_distribuciondata_guardarStateChange(
  Sender: TObject);
begin
  inherited;
  fram_distribucion.data_guardarStateChange(Sender);
  SetControlEnabled(padr_fram_informacion, Not(fram_distribucion.tabl_guardar.State in [dsEdit, dsInsert]));
end;

end.
