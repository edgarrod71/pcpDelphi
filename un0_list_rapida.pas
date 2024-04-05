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
        Unit            : un0_list_rapida
        Objetivo        : Lista rápida para búsquedas
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 18-Abr-2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit un0_list_rapida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar, ufra_list_rapida;

type
  Tfn0_list_rapida = class(T_fvent_modal)
    Panel1: TPanel;
    fram_lista: Tffra_list_rapida;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Ejecutar(peDataSet : TDataSet; peKeyFieldName : String = '');
  end;

var
  fn0_list_rapida: Tfn0_list_rapida;

implementation

{$R *.DFM}
{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecutar la lista rápida
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tfn0_list_rapida.Ejecutar(peDataSet : TDataSet; peKeyFieldName : String = '');
Begin
    //Validar
    if (peDataSet = Nil) Then Exit;
    if (not peDataSet.Active) Then Exit;
    //Cambiar el nombre del campo por el primer campo (cuando es vacío)
    {if (peKeyFieldName = '') Then
        peKeyFieldName := peDataSet.Fields[0].FieldName;}
    //Abrir
    fram_lista.Ejecutar(peDataSet, peKeyFieldName);
    //Mostrar
    ShowModal;
End;

end.
