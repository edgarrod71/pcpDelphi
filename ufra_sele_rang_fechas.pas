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
        Unit            : ufra_sele_rang_fechas
        Objetivo        : Frame para la selecci�n de rangos de fechas
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 26 de 2005
        Versi�n         : pcp4.0.0.17
*******************************************************************}
unit ufra_sele_rang_fechas;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PictureContainer, dxExEdtr, dxEdLib, dxEditor, dxCntner, Boxes, PCPFrame,
  ExtCtrls;

  
type
  Tffra_sele_rang_fechas = class(TFrame)
    PictureContainer1: TPictureContainer;
    chec_desde: TdxCheckEdit;
    comb_fech_desde: TdxDateEdit;
    chec_hasta: TdxCheckEdit;
    comb_fech_hasta: TdxDateEdit;
    procedure chec_desdeChange(Sender: TObject);
    procedure chec_hastaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;

  end;

implementation
uses _func_varias;
{$R *.DFM}
{****************************************************************
Procedimiento   : chec_desdeChange
Objetivo        : Habilitar/Deshabilitar el panel de fecha inicial
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 01 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_sele_rang_fechas.chec_desdeChange(Sender: TObject);
begin
        comb_fech_desde.Enabled := chec_desde.checked;
end;
{****************************************************************
Procedimiento   : chec_hastaChange
Objetivo        : Habilitar/Deshabilitar el panel de fecha final
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 01 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_sele_rang_fechas.chec_hastaChange(Sender: TObject);
begin
        comb_fech_hasta.Enabled := chec_hasta.checked;
end;
{****************************************************************
Procedimiento   : Create
Objetivo        : Inicializar el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 26 de 2005
Versi�n         : pcp4.0.0.19
*****************************************************************}
Constructor Tffra_sele_rang_fechas.Create (Owner : TComponent);
Begin
     //Heredar la creacion
     Inherited Create (Owner);
     AutoHints(Self);
     comb_fech_desde.Date := NowDate;
     comb_fech_hasta.Date := NowDate;
End;


end.
