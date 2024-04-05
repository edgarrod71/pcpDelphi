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
        Unit            : un1_prod_cons_fechas
        Objetivo        : Consulta general de ordenes de producción por
                          rango de fechas
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 10 de 2004
        Versión         : pcp4006
*******************************************************************}
unit un1_prod_cons_general;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, Placemnt, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, Boxes, PCPFrame, dxEditor, dxEdLib, StdCtrls,
  SoCtrls, SCLDBLabel;

type
  T_fvent_child1 = class(T_fvent_child)
    PCPFrame1: TPCPFrame;
    chec_fech_desde: TdxCheckEdit;
    edit_Fech_desde: TdxDateEdit;
    chec_fech_hasta: TdxCheckEdit;
    edit_fech_hasta: TdxDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure chec_fech_desdeChange(Sender: TObject);
    procedure chec_fech_hastaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _fvent_child1: T_fvent_child1;

implementation

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 10 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fvent_child1.FormCreate(Sender: TObject);
begin
  inherited;
  edit_fech_desde.Date := NowDate;
  edif_fech_hasta.Date := NowDate;
end;
{****************************************************************
Procedimiento   : chec_fech_desdeChange
Objetivo        : Habilitar/deshabilitar la fecha inicial
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 09 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fvent_child1.chec_fech_desdeChange(Sender: TObject);
begin
  inherited;
  edit_fech_desde.Enabled := chec_fech_desde.Checked;
end;
{****************************************************************
Procedimiento   : chec_fech_hastaChange
Objetivo        : Habilitar/deshabilitar la fecha final
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 09 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fvent_child1.chec_fech_hastaChange(Sender: TObject);
begin
  inherited;
  edit_fech_hasta.Enabled := chec_fech_hasta.Checked;
end;

end.
