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
        Unit            : ufra_edit_repo_band_color
        Objetivo        : Frame para la edición de colores en los
                          reportes
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Marzo 02 de 2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit ufra_edit_repo_band_color;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, RLReport,
  typInfo,
  ExtCtrls, JvExExtCtrls, JvComponent, JvOfficeColorButton, dxCntner,
  dxExEdtr, dxEdLib, StdCtrls, SoCtrls, SCLDBLabel, JvExControls,
  JvGradient, SCLShape, TBXDkPanels, TBXButtonSCL;

type
  Tffra_edit_repo_band_color = class(TFrame)
    SCLDBLabel1: TSCLDBLabel;
    chec_gradiente: TdxCheckEdit;
    edit_color: TJvOfficeColorButton;
    edit_colo_gradiente: TJvOfficeColorButton;
    pane_gradiente: TPanel;
    boto_Grad_vertical: TTBXButtonSCL;
    boto_Grad_horizontal: TTBXButtonSCL;
    procedure chec_gradienteChange(Sender: TObject);
    Procedure doChange;
    procedure edit_colorColorChange(Sender: TObject);
    procedure edit_colo_gradienteColorChange(Sender: TObject);
    procedure boto_Grad_verticalClick(Sender: TObject);
    procedure boto_Grad_horizontalClick(Sender: TObject);
  private
    { Private declarations }
    var_Banda   : TRLCustomControl;
    var_InternalChanging : Boolean;
    var_OnColorsChange : TNotifyEvent;
    Procedure SetBanda(peValor : TRLCustomControl);
  public
    { Public declarations }
    Constructor Create(Owner : TComponent); Override;
    Property Banda : TRLCustomControl Read Var_Banda Write SetBanda;
    Property onColorsChange : TNotifyEvent Read var_OnColorsChange Write var_OnColorsChange; 
    Function doSave :Boolean;
  end;

implementation

uses _cons_pcp, _func_varias, _MDI, _cons_colores;

{$R *.DFM}

{****************************************************************
Procedimiento   : Create
Objetivo        : Crea e inicializa el frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 02 de 2005
Versión         : pcp4006
*****************************************************************}
Constructor Tffra_edit_repo_band_color.Create(Owner : TComponent);
Begin
      Inherited Create(Owner);
      var_InternalChanging := False;
      pane_gradiente.BevelOuter := bvNone;
      edit_color.Color := clFondoAplicacion;
      edit_colo_gradiente.Color := clFondoAplicacion;
      SetBanda(Nil);
End;
{****************************************************************
Procedimiento   : SetBanda
Objetivo        : Asigna una RLBand al frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_edit_repo_band_color.SetBanda(peValor : TRLCustomControl);
var
        var_tien_gradiente      : Boolean;
Begin
    var_InternalChanging := True;
    Try
        var_Banda := peValor;
        chec_gradiente.Enabled := False;
        edit_colo_gradiente.Enabled := False;
        boto_Grad_vertical.Enabled := False;
        boto_Grad_horizontal.Enabled := False;
        edit_Color.Enabled := (var_Banda <> Nil);
        chec_gradiente.Enabled := (var_Banda <> Nil);
        chec_gradiente.Checked := False;
        if (peValor = Nil) Then Exit;
        //Asignar las propiedades de la banda
        edit_Color.SelectedColor := var_Banda.Color;
        if (var_Banda is TRLCustomSite) Then
        Begin
           chec_gradiente.Checked := ((var_Banda as TRLCustomSite).Degrade.Direction <> ddNone);
           edit_colo_gradiente.SelectedColor := (var_Banda as TRLCustomSite).Degrade.OppositeColor;
           case (var_Banda as TRLCustomSite).Degrade.Direction Of
                 ddHorizontal : (boto_Grad_horizontal.Checked := True);
                 ddVertical : (boto_Grad_Vertical.Checked := True);
           End;
        End
        Else
        Begin
           chec_gradiente.Checked := False;
           edit_colo_gradiente.SelectedColor := clBtnFace;
        End;
        //Habilitar/Deshabilitar controles
        var_tien_gradiente := IsPublishedProp(var_Banda, 'Degrade');
        chec_gradiente.Enabled := var_tien_gradiente;
        edit_colo_gradiente.Enabled := var_tien_gradiente;
        boto_Grad_vertical.Enabled := var_tien_gradiente;
        boto_Grad_horizontal.Enabled := var_tien_gradiente;
    Except
        on E:Exception do
            EjecutarMensajeError(e.Message);
    End;
    var_InternalChanging := False;
End;

{****************************************************************
Procedimiento   : chec_gradienteChange
Objetivo        : Habilitar/Deshabilitar el color del gradiente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_repo_band_color.chec_gradienteChange(Sender: TObject);
begin
  edit_colo_gradiente.Enabled := chec_gradiente.Checked;
  pane_Gradiente.Visible := chec_Gradiente.Checked;
  if not var_internalChanging then doChange;
end;
{****************************************************************
Procedimiento   : doSave
Objetivo        : Guarda los cambios
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function Tffra_edit_repo_band_color.doSave :Boolean;
Begin
    //Inicializar
    Result := False;
    //Validar
    if (var_Banda = Nil) Then
    Begin
        Raise Exception.Create(cosErroBandaReporteNoValida);
        Exit;
    End;
    var_banda.Color := edit_Color.SelectedColor;
    //Gradiente
    If (var_banda is TRLCustomSite) then
    Begin
        if (Not chec_Gradiente.Checked) Then (var_banda as TRLCustomSite).Degrade.Direction := ddNone
        Else if boto_Grad_horizontal.Checked Then (var_banda as TRLCustomSite).Degrade.Direction := ddHorizontal
        Else (var_banda as TRLCustomSite).Degrade.Direction := ddVertical;
        (var_banda as TRLCustomSite).Degrade.OppositeColor := edit_colo_gradiente.SelectedColor;
    End;
End;
{****************************************************************
Procedimiento   : doChange
Objetivo        : Reaccionar al cambio en el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 21-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_band_color.doChange;
Begin
    if var_InternalChanging Then Exit;
     //Cambiar
     If Assigned(OnColorsChange) then
                var_OnColorsChange(Self);
End;
{****************************************************************
Procedimiento   : edit_colorColorChange
Objetivo        : Actualizar los cambios cuando cambie el color
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 21-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_repo_band_color.edit_colorColorChange(
  Sender: TObject);
begin
        if not var_internalChanging then doChange;
end;
{****************************************************************
Procedimiento   : edit_colo_gradienteColorChange
Objetivo        : Actualizar los cambios cuando cambie el color del
                  gradiente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 21-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_repo_band_color.edit_colo_gradienteColorChange(
  Sender: TObject);
begin
        if not var_internalChanging then doChange;
end;
{****************************************************************
Procedimiento   : boto_Grad_verticalClick
Objetivo        : Actualizar los cambios cuando cambie el tipo de gradiente
                  (vertical)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 21-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_repo_band_color.boto_Grad_verticalClick(
  Sender: TObject);
begin
        if not var_internalChanging then doChange;
end;
{****************************************************************
Procedimiento   : boto_Grad_horizontalClick
Objetivo        : Actualizar los cambios cuando cambie el tipo de gradiente
                  (horizontal)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 21-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_repo_band_color.boto_Grad_horizontalClick(
  Sender: TObject);
begin
        if not var_internalChanging then doChange;
end;

end.
