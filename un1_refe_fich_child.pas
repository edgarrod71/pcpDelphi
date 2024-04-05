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
        Unit            : un1_refe_fich_child
        Objetivo        : Ventana maestra de fichas técnicas (child)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 23-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}
unit un1_refe_fich_child;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_refe_fich_maestro, Db, DBTables, Placemnt, dxCntner, dxExEdtr,
  TB2Item, SCLPropiedadesForm, ImgList, Menus, TBX, ActnList,
  ufra_edit_reportes, ExtCtrls, dxEditor, dxEdLib, RxLookup,
  PCPLookUpComboEdit, StdCtrls, SoCtrls, SCLDBLabel, dfsSplitter, Boxes,
  PCPFrame, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar,
  dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl;

type
  Tfn1_refe_fich_00child = class(Tfn1_refe_fich_maestro)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_fich_00child: Tfn1_refe_fich_00child;

implementation


{$R *.DFM}
end.
