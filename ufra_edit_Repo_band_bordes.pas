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
        Unit            : ufra_edit_Repo_band_bordes
        Objetivo        : Frame para la edición de bordes en las bandas
                          Fortes
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Marzo 02 de 2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit ufra_edit_Repo_band_bordes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, RLReport,
  ImgList, ExtCtrls, SCLShape, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  TBXDkPanels, TBXButtonSCL, StdCtrls;

type
  Tffra_edit_Repo_band_bordes = class(TFrame)
    imag_bordes: TImageList;
    boto_ninguno: TTBXButtonSCL;
    boto_todos: TTBXButtonSCL;
    boto_personalizado: TTBXButtonSCL;
    Image1: TImage;
    bord_arriba: TShape;
    bord_abajo: TShape;
    bord_izquierda: TShape;
    bord_derecha: TShape;
    boto_arriba: TTBXButtonSCL;
    boto_abajo: TTBXButtonSCL;
    boto_izquierda: TTBXButtonSCL;
    boto_derecha: TTBXButtonSCL;
    SCLShape1: TSCLShape;
    Label1: TLabel;
    procedure doNingunBorde(Sender: TObject);
    procedure doSeleccionarPersonalizado(Sender: TObject);
    procedure doTodosLosBordes(Sender: TObject);
    procedure boto_personalizadoClick(Sender: TObject);
  private
    { Private declarations }
    var_Banda   : TRLCustomSite;
    var_Objeto  : TRLCustomControl;
    var_OnBordersChange : TNotifyEvent;
    Procedure SetBanda(peValor : TRLCustomSite);
    Procedure SetObjeto(peValor : TRLCustomControl);
    Procedure DoChange;
  public
    { Public declarations }
    Constructor Create(Owner : TComponent);Override;
    Destructor Destroy;
    Property Banda : TRLCustomSite Read Var_Banda Write SetBanda;
    Property Objeto : TRLCustomControl Read var_Objeto Write SetObjeto;
    Function doSave :Boolean;
    Procedure doActualizarVistaPrevia;
    Property OnBordersChange : TNotifyEvent Read var_OnBordersChange Write var_OnBordersChange;
  end;

implementation

uses _cons_pcp, _func_varias;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Inicializar el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Constructor Tffra_edit_Repo_band_bordes.Create(Owner : TComponent);
Begin
    Inherited Create(Owner);
    //AutoHints(Self);
    SetBanda(Nil);
End;
{****************************************************************
Procedimiento   : Destroy
Objetivo        : Destruir el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Destructor Tffra_edit_Repo_band_bordes.Destroy;
Begin
    //Desasignar el onChange de los bordes
    var_OnBordersChange := Nil;
    OnBordersChange := Nil;
    Inherited;
End;

{****************************************************************
Procedimiento   : SetBanda
Objetivo        : Asigna una RLBand al frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_edit_Repo_band_bordes.SetBanda(peValor : TRLCustomSite);
Begin
    var_Banda := peValor;
    SetControlEnabled(Self, (var_Banda <> Nil));
    if (peValor = Nil) Then
    Begin
        doNingunBorde(Self);
        Exit;
    End;
    //Asignar las propiedades de la banda
    Case var_Banda.Borders.Sides of
        sdNone : doNingunBorde(Self);
        sdAll : doTodosLosBordes(Self);
        sdCustom : Begin
             boto_personalizado.Checked := True;
             boto_arriba.checked := var_banda.Borders.DrawTop;
             boto_Abajo.checked := var_banda.Borders.DrawBottom;
             boto_Izquierda.checked := var_banda.Borders.DrawLeft;
             boto_Derecha.checked := var_banda.Borders.DrawRight;
             doActualizarVistaPrevia;
        End;
    End;
End;
{****************************************************************
Procedimiento   : doNingunBorde
Objetivo        : Elimina los bordes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_Repo_band_bordes.doNingunBorde(Sender: TObject);
begin
    boto_ninguno.Checked := True;
    boto_arriba.Checked := False;
    boto_abajo.Checked := False;
    boto_izquierda.Checked := False;
    boto_derecha.Checked := False;
    doActualizarVistaPrevia;
    doChange;
end;
{****************************************************************
Procedimiento   : doActualizarVistaPrevia
Objetivo        : Actualiza la vista previa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_edit_Repo_band_bordes.doActualizarVistaPrevia;
Begin
     bord_arriba.Visible := boto_arriba.Checked;
     bord_abajo.Visible := boto_abajo.Checked;
     bord_Izquierda.Visible := boto_Izquierda.Checked;
     bord_derecha.Visible := boto_derecha.Checked;
End;
{****************************************************************
Procedimiento   : doSeleccionarPersonalizado
Objetivo        : Activa el modo personalizado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_Repo_band_bordes.doSeleccionarPersonalizado(
  Sender: TObject);
begin
    boto_personalizado.Checked := True;
    doActualizarVistaPrevia;
    doChange;
end;
{****************************************************************
Procedimiento   : doTodosLosBordes
Objetivo        : Habilita todos los bordes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_Repo_band_bordes.doTodosLosBordes(Sender: TObject);
begin
    boto_Todos.Checked := True;
    boto_arriba.Checked := True;
    boto_abajo.Checked := True;
    boto_izquierda.Checked := True;
    boto_derecha.Checked := True;
    doActualizarVistaPrevia;
    doChange;
end;

{****************************************************************
Procedimiento   : doSave
Objetivo        : Guarda los cambios
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function Tffra_edit_Repo_band_bordes.doSave :Boolean;
Begin
    //Inicializar
    Result := False;
    //Validar
    if (var_Banda = Nil) and (var_Objeto = Nil) Then
    Begin
        Raise Exception.Create(cosErrorComponenteNoValido);
        Exit;
    End;
    if (var_Banda <> Nil) Then
    Begin
          //Asignar las propiedades de la banda
          if boto_ninguno.Checked Then
              var_Banda.Borders.Sides := sdNone
          Else
          if boto_Todos.Checked Then
              var_Banda.Borders.Sides := sdAll
          Else
          if boto_Personalizado.Checked Then
          Begin
              var_banda.Borders.Sides := sdCustom;
              var_banda.Borders.DrawTop := boto_arriba.checked;
              var_banda.Borders.DrawBottom := boto_Abajo.checked;
              var_banda.Borders.DrawLeft := boto_Izquierda.checked;
              var_banda.Borders.DrawRight := boto_Derecha.checked;
          End;
    End
    Else
    if (var_Objeto <> Nil) Then
    Begin
          //Asignar las propiedades de la banda
          if boto_ninguno.Checked Then
              var_Objeto.Borders.Sides := sdNone
          Else
          if boto_Todos.Checked Then
              var_Objeto.Borders.Sides := sdAll
          Else
          if boto_Personalizado.Checked Then
          Begin
              var_Objeto.Borders.Sides := sdCustom;
              var_Objeto.Borders.DrawTop := boto_arriba.checked;
              var_Objeto.Borders.DrawBottom := boto_Abajo.checked;
              var_Objeto.Borders.DrawLeft := boto_Izquierda.checked;
              var_Objeto.Borders.DrawRight := boto_Derecha.checked;
          End;
    End;
    Result := True;
End;


{****************************************************************
Procedimiento   : TRCustomControl
Objetivo        : Asigna una RLBand al frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_edit_Repo_band_bordes.SetObjeto(peValor : TRLCustomControl);
Begin
    var_objeto := peValor;
    SetControlEnabled(Self, (var_Objeto <> Nil));
    if (peValor = Nil) Then
    Begin
        doNingunBorde(Self);
        Exit;
    End;
    //Asignar las propiedades de la banda
    Case var_Objeto.Borders.Sides of
        sdNone : doNingunBorde(Self);
        sdAll : doTodosLosBordes(Self);
        sdCustom : Begin
             boto_personalizado.Checked := True;
             boto_arriba.checked := var_objeto.Borders.DrawTop;
             boto_Abajo.checked := var_objeto.Borders.DrawBottom;
             boto_Izquierda.checked := var_objeto.Borders.DrawLeft;
             boto_Derecha.checked := var_objeto.Borders.DrawRight;
             doActualizarVistaPrevia;
        End;
    End;
End;
{****************************************************************
Procedimiento   : DoChange
Objetivo        : Notificar que cambiaron los bordes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_Repo_band_bordes.DoChange;
Begin
    Try
        If Assigned(OnBordersChange) then
                var_OnBordersChange(Self);
    Except
    End;
End;
{****************************************************************
Procedimiento   : boto_personalizadoClick
Objetivo        : Selección de Bordes personalizados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_Repo_band_bordes.boto_personalizadoClick(
  Sender: TObject);
begin
    doChange;
end;

end.
