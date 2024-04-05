{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeaci�n y Control de la Producci�n                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo est� protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducci�n no autorizada, la ingenier�a inversa y la   }
{       distribuci�n total o parcial del c�digo contenido en este   }
{       archivo est� estrictamente prohibido y podr� tener severas  }
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
        Objetivo        : Ventana maestra de fichas t�cnicas (child)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 23-May-2005
        Versi�n         : pcp4.0.20.8
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
