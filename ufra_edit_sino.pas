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
        Unit            : ufra_edit_sino
        Objetivo        : Frame para selección de valores false/true
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 18-Jul-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit ufra_edit_sino;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TBXDkPanels, mbTBXFixedStuff;

type
  Tffra_edit_sino = class(TFrame)
    chec_si: TmbTBXRadioButton;
    chec_no: TmbTBXRadioButton;
    procedure chec_siChange(Sender: TObject);
    procedure chec_noChange(Sender: TObject);
  private
    { Private declarations }
    var_Estado : Boolean;
    var_onEstadoChange : TNotifyEvent;
    var_Enabled : Boolean;
    var_InternalChanging : Boolean;
    Procedure SetEstado (peValor : Boolean);
  public
    { Public declarations }
    Procedure SetEnabled(peValor : Boolean);  Override;
    Constructor Create(Owner : TComponent);Override;
    Property Estado : Boolean Read var_Estado Write SetEstado;
    Property onEstadoChange : TNotifyEvent Read var_onEstadoChange Write var_onEstadoChange;
    Property Enabled : Boolean Read var_Enabled Write SetEnabled;
  end;

implementation

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear e inicializar el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Constructor Tffra_edit_sino.Create(Owner : TComponent);
Begin
    Inherited Create(Owner);
    var_InternalChanging := False;
    SetEnabled(True);
    SetEstado(True);
End;

{****************************************************************
Procedimiento   : SetEstado
Objetivo        : Asigna el estado al frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_sino.SetEstado (peValor : Boolean);
Begin
   if (var_Estado <> peValor) then
   Begin
     var_InternalChanging := True;
     var_Estado := peValor;
     if var_estado Then
        chec_si.Checked := True
     Else
        chec_no.Checked := True;
     //Cambiar
     If Assigned(OnEstadoChange) then
                var_OnEstadoChange(Self);
     var_InternalChanging := False;                   
   End;
End;
{****************************************************************
Procedimiento   : chec_siChange
Objetivo        : Asignar el estado TRUE
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_sino.chec_siChange(Sender: TObject);
begin
        if var_InternalChanging Then Exit;
        SetEstado(True);
end;
{****************************************************************
Procedimiento   : chec_noChange
Objetivo        : Asignar el estado False
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_sino.chec_noChange(Sender: TObject);
begin
        if var_InternalChanging Then Exit;
        SetEstado(False);
end;
{****************************************************************
Procedimiento   : SetEnabled
Objetivo        : Asigna la propiedad ENABLED al frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_sino.SetEnabled(peValor : Boolean);
Begin
    var_Enabled := peValor;
    chec_si.Enabled := var_Enabled;
    chec_no.Enabled := var_Enabled;
End;

end.
