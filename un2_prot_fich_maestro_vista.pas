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
        Unit            : un2_prot_fich_maestro_vista
        Objetivo        : Maestro visual de prototipos (para fichas técnicas)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 10-Jun-2005
        Versión         : pcp4.0.20.12
*******************************************************************}
unit un2_prot_fich_maestro_vista;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_refe_fich_maestro_vista, TB2Item, DBTables, dxCntner,
  dxExEdtr, SCLPropiedadesForm, Db, ImgList, Menus, TBX, ActnList,
  ufra_edit_reportes, ExtCtrls, JvTracker, StdCtrls, ThumbnailList,
  SCLTabs, dxEditor, dxEdLib, RxLookup, PCPLookUpComboEdit, SoCtrls,
  SCLDBLabel, dfsSplitter, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels,
  TB2Dock, TB2Toolbar, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, SCLDBGrid,
  dxPageControl;

type
  Tfn2_prot_fich_maestro_vista = class(Tfn1_refe_fich_maestro_vista)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn2_prot_fich_maestro_vista: Tfn2_prot_fich_maestro_vista;

implementation

uses _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn2_prot_fich_maestro_vista.FormCreate(Sender: TObject);
begin
  VentanaReferencias := False;
  inherited;
  VentanaReferencias := False;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
