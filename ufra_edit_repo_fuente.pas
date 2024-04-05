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
        Unit            : ufra_edit_repo_fuente
        Objetivo        : Frame para la edición del tipo de fuente
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Marzo 02 de 2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit ufra_edit_repo_fuente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TBXDkPanels, TBXButtonSCL, ExtCtrls;

type
  Tffra_edit_repo_fuente = class(TFrame)
    pane_fuente: TPanel;
    boto_Camb_fuente: TTBXButtonSCL;
    dial_Fuentes: TFontDialog;
    procedure boto_Camb_fuenteClick(Sender: TObject);
  private
    { Private declarations }
    var_Fuente  : TFont;
    Procedure SetFuente(peValor : TFont);
  public
    { Public declarations }
    Constructor Create(Owner : TComponent); Override;
    Destructor Destroy;
    Property Fuente : TFont Read var_Fuente Write SetFuente;
  end;

implementation

uses _uData, _MDI;


{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Constructor Tffra_edit_repo_fuente.Create(Owner : TComponent);
Begin
     Inherited Create(Owner);
     //AutoHints(Self);
     var_Fuente := TFont.Create;
End;
{****************************************************************
Procedimiento   : Destroy
Objetivo        : Liberar los objetos usados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Destructor Tffra_edit_repo_fuente.Destroy;
Begin
    var_Fuente.Free;
    Inherited;
End;

{****************************************************************
Procedimiento   : SetFuente
Objetivo        : Establecer la fuente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_edit_repo_fuente.SetFuente(peValor : TFont);
Begin
    var_Fuente.Assign(peValor);
    pane_fuente.Font.Assign(var_Fuente);
End;

{****************************************************************
Procedimiento   : boto_Camb_fuenteClick
Objetivo        : Abrir el diálogo de selección de la fuente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_repo_fuente.boto_Camb_fuenteClick(Sender: TObject);
begin
  dial_Fuentes.Font.Assign(Pane_fuente.Font);
  if dial_Fuentes.Execute then
    SetFuente(dial_Fuentes.Font);
end;

end.
