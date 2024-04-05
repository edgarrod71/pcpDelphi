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
        Unit            : un1_prod_lanz_orde_sin_pedido
        Objetivo        : Ventana de lanzamiento de órdenes de
                          producción sin pedidos
        Realizado por   : Tecnologia
        Fecha           : 12-Oct-2005
        Versión         : pcp4000 RC20.19
*******************************************************************}
unit un1_prod_lanz_orde_sin_pedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit,
  PCPFrame, dfsSplitter;

type
  Tfn1_prod_lanz_orde_sin_pedido = class(T_fvent_modal)
    p_op: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    edit_nume_orden: TdxDBEdit;
    SCLDBLabel2: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    pane_detalles: TPanel;
    PCPFrame1: TPCPFrame;
    Panel2: TPanel;
    PCPFrame2: TPCPFrame;
    Panel5: TPanel;
    SCLDBLabel11: TSCLDBLabel;
    SCLDBLabel12: TSCLDBLabel;
    SCLDBLabel13: TSCLDBLabel;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxDBSpinEdit2: TdxDBSpinEdit;
    PCPLookUpComboEdit7: TPCPLookUpComboEdit;
    dfsSplitter1: TdfsSplitter;
    p_unidades: TPCPFrame;
    labe_auto_Generar: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_lanz_orde_sin_pedido: Tfn1_prod_lanz_orde_sin_pedido;

implementation

uses _MDI, _cons_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Tecnologia
Fecha           : 12-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_lanz_orde_sin_pedido.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar
  labe_auto_Generar.Caption := cosProduccionAutoGenerar;
  p_unidades.Caption := cosUnidades;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
