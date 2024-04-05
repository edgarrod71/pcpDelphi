unit ufra_mens_atencion;
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
        Unit            : ufra_mens_atencion
        Objetivo        : Frame para mensajes de advertencia al usuario
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Julio 12 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, AdvPanel, PictureContainer, DBCtrls, Buttons;

type
  Tffra_mens_atencion = class(TFrame)
    fram_label: TAdvPanel;
    fram_pict_container: TPictureContainer;
    data_label: TDBText;
    padr_shap_top: TShape;
    padr_shap_bottom: TShape;
    padr_shap_right: TShape;
    padr_shap_left: TShape;
    boto_Salir: TSpeedButton;
    procedure fram_labelResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
    Procedure SetColors(ColorInicial, ColorFinal, ColorBorde: TColor;
        ColorFuente : TColor = clNone);
    Procedure SetNormalColors(Borde : Boolean = False);
    Procedure SetHardColors(Borde : Boolean = False);
    Procedure SetWarningColors(Borde : Boolean = False);
    Procedure SetCaption(peValor : String);
  end;

implementation

uses _cons_pcp, _cons_colores;

{$R *.DFM}

{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el Frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 12 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_mens_atencion.Create (Owner : TComponent);
Begin
     //Heredar la creacion
     Inherited Create (Owner);
     //Inicializar el frame
     fram_label.Color := cocFrameAtencion;
     fram_label.ColorTo := cocFrameAtencionTo;
     fram_label.Font.Color := cocFrameAtencionText;
     fram_label.BorderColor := cocFrameAtencionBorder;
End;
{****************************************************************
Procedimiento   : SetColors
Objetivo        : Asigna los colores al panel
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 05 de 2004
Versión         : pcp4006
*****************************************************************}
Procedure Tffra_mens_atencion.SetColors(ColorInicial, ColorFinal, ColorBorde: TColor;
        ColorFuente : TColor = clNone);
Begin
     With fram_label do
       Begin
            Color := ColorInicial;
            ColorTo := ColorFinal;
            BorderColor := ColorBorde;
            //Bordes
            padr_shap_top.Visible := (ColorBorde <> clNone);
            padr_shap_top.Pen.Color := ColorBorde;
            padr_shap_bottom.Visible := (ColorBorde <> clNone);
            padr_shap_bottom.Pen.Color := ColorBorde;
            padr_shap_Left.Visible := (ColorBorde <> clNone);
            padr_shap_Left.Pen.Color := ColorBorde;
            padr_shap_Right.Visible := (ColorBorde <> clNone);
            padr_shap_Right.Pen.Color := ColorBorde;

            //Fuente
            if (ColorFuente <> clNone) then
              Begin
                 if data_label.Visible then data_label.font.color := colorFuente;
                 font.color := colorFuente;
              End;
       End;
End;
{****************************************************************
Procedimiento   : SetHardColors
Objetivo        : Asigna los colores fuertes al gradiente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 05 de 2004
Versión         : pcp4006
*****************************************************************}
Procedure Tffra_mens_atencion.SetHardColors(Borde : Boolean = False);
Begin
   if Borde then
     SetColors(clInicioGradienteHard, clFinGradienteHard, clLineaGradiente, clTextoGradienteHard)
   Else
     SetColors(clInicioGradienteHard, clFinGradienteHard, clNone, clTextoGradienteHard);
End;
{****************************************************************
Procedimiento   : SetWarningColors
Objetivo        : Asigna los colores de mensaje de alerta al gradiente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 05 de 2004
Versión         : pcp4006
*****************************************************************}
Procedure Tffra_mens_atencion.SetWarningColors(Borde : Boolean = False);
Begin
   if Borde then
     SetColors(clInicioGradienteWarning, clFinGradienteWarning, clLineaGradienteWarning, clTextoGradienteWarning)
   Else
     SetColors(clInicioGradienteWarning, clFinGradienteWarning, clNone, clTextoGradienteWarning);
End;
{****************************************************************
Procedimiento   : SetNormalColors
Objetivo        : Asigna los colores normal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 26 de 2004
Versión         : pcp4006
*****************************************************************}
Procedure Tffra_mens_atencion.SetNormalColors(Borde : Boolean = False);
Begin
   if Borde then
     SetColors(clInicioGradiente, clFinGradiente, clLineaGradiente, clTextoGradiente)
   Else
     SetColors(clInicioGradiente, clFinGradiente, clNone, clTextoGradiente);
End;
{****************************************************************
Procedimiento   : SetCaption
Objetivo        : Asigna el caption al panel
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_mens_atencion.SetCaption(peValor : String);
Begin
    fram_label.Text := peValor;
    fram_label.Update
End;

{****************************************************************
Procedimiento   : fram_labelResize
Objetivo        : Reposicionar el botón de cerrar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 04-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}

procedure Tffra_mens_atencion.fram_labelResize(Sender: TObject);
begin
        boto_salir.Left := boto_Salir.Parent.Width - boto_Salir.Width - 2;
end;

end.
