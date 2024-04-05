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
        Unit            : ufra_edit_Repo_imagen
        Objetivo        : Frame para la edición de las propiedades
                          de un RLImage
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 15-Jul-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit ufra_edit_Repo_imagen;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, ufra_edit_repo_distribucion, EDBImage, StdCtrls, ExtCtrls,
  Boxes, PCPFrame, TBXDkPanels, TBXButtonSCL, dxCntner, dxExEdtr, dxEdLib;

type
  Tffra_edit_Repo_imagen = class(TFrame)
    pane_imagen: TPCPFrame;
    imagen: TEDBImage;
    pane_distribucion: TPCPFrame;
    fram_distribucion: Tffra_edit_repo_distribucion;
    boto_imag_seleccionar: TTBXButtonSCL;
    boto_imag_limpiar: TTBXButtonSCL;
    boto_imag_exportar: TTBXButtonSCL;
    procedure boto_imag_limpiarClick(Sender: TObject);
    procedure boto_imag_seleccionarClick(Sender: TObject);
  private
    { Private declarations }
    var_ControlRL       : TRLCustomImage;
    Procedure SetControlRL (peControl : TRLCustomImage);
  public
    { Public declarations }
    Constructor Create(Owner : TComponent);Override;
    Property ControlRL : TRLCustomImage Read var_ControlRL Write SetControlRL;
    Function doSave :Boolean;
  end;

implementation

uses _uData,
     _cons_colores,
     _cons_pcp, _MDI;

{$R *.DFM}

{****************************************************************
Procedimiento   : Create
Objetivo        : Crear e inicializar el componentes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Constructor Tffra_edit_Repo_imagen.Create(Owner : TComponent);
Begin
    Inherited Create(Owner);
    SetControlRL(Nil);
End;
{****************************************************************
Procedimiento   : SetControlRL
Objetivo        : Asignar el controlRL
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_Repo_imagen.SetControlRL (peControl : TRLCustomImage);
Begin
     var_ControlRL := peControl;
     fram_distribucion.ControlRL := var_ControlRL;
     if var_controlRL = Nil Then Exit;
     imagen.Picture.Assign(var_ControlRL.Picture);
End;

{****************************************************************
Procedimiento   : doSave
Objetivo        : Guarda las propiedades en el objeto enviado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function Tffra_edit_Repo_imagen.doSave :Boolean;
Begin
    //Inicializar
    Result := False;
    //Validar
    if (var_ControlRL = Nil) Then
    Begin
        Raise Exception.Create(cosErrorComponenteNoValido);
        Exit;
    End;
    fram_distribucion.DoSave;
    var_ControlRL.Picture.Assign(imagen.Picture);
End;
{****************************************************************
Procedimiento   : boto_imag_limpiarClick
Objetivo        : Limpiar la imágen
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_Repo_imagen.boto_imag_limpiarClick(Sender: TObject);
begin
   imagen.Picture.Assign(Nil);
end;
{****************************************************************
Procedimiento   : boto_imag_seleccionarClick
Objetivo        : Seleccionar una imágen
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_Repo_imagen.boto_imag_seleccionarClick(
  Sender: TObject);
begin
        if _fData.dial_imag_abrir.Execute Then
           if _fData.dial_imag_abrir.FileName <> '' Then
               imagen.Picture.LoadFromFile(_fData.dial_imag_abrir.FileName);
end;

end.
