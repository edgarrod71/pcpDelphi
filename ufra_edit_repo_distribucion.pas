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
        Unit            : ufra_edit_repo_alineacion
        Objetivo        : Frame para la edición de propiedades de distribución
                          componentes RL      
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 13-Jul-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit ufra_edit_repo_distribucion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, StdCtrls, RxLookup, PCPLookUpComboEdit, Db, kbmMemTable,
  SoCtrls, SCLDBLabel, dxCntner, dxExEdtr, dxEdLib, ExtCtrls, TBXDkPanels,
  TBXButtonSCL, dxEditor;

type
  Tffra_edit_repo_distribucion = class(TFrame)
    labe_alin_control: TSCLDBLabel;
    chec_autoSize: TdxCheckEdit;
    labe_dist_texto: TSCLDBLabel;
    edit_layout: TdxImageEdit;
    edit_cont_align: TdxImageEdit;
    procedure chec_autoSizeChange(Sender: TObject);
    procedure edit_layoutChange(Sender: TObject);
    procedure edit_cont_alignChange(Sender: TObject);
  private
    { Private declarations }
    var_ControlRL : TRLCustomControl;
    var_AlineacionRL      : TRLControlAlign;
    var_AutoSizeRL        : Boolean;
    var_LayoutRL        : TRLTextLayout;
    Procedure SetControlRL(peControl : TRLCustomControl);
    Procedure SetAlineacionRL (peAlineacion : TRLControlAlign);
    Procedure SetAutoSizeRL(peValor : Boolean);
    Procedure SetLayoutRL(peValor : TRLTextLayout);

  public
    { Public declarations }
    Constructor Create(Owner : TComponent);Override;
    //
    Property ControlRL : TRLCustomControl Read var_ControlRL Write SetControlRL;
    Property AlineacionRL : TRLControlAlign Read var_AlineacionRL Write SetAlineacionRL;
    Property AutoSizeRL : Boolean Read var_AutoSizeRL Write SetAutoSizeRL;
    Property LayoutRL : TRLTextLayout Read var_LayoutRL Write SetLayoutRL;
    Function doSave :Boolean;
    Procedure Enabled_alin_control(peValor : Boolean);
    Procedure Enabled_dist_texto(peValor : Boolean);
    Procedure Enabled_ajus_automatico(peValor : Boolean);
  end;

implementation

uses _func_db, _cons_pcp, _func_varias, _cons_colores, _uData;

Const
        cosAlineacionesRL : Array[TRLControlAlign] of
            String =
                ('Ninguna',
                 'Izquierda',
                 'Arriba',
                 'Derecha',
                 'Abajo',
                 'Izquierda (sobre todos)',
                 'Derecha (sobre todos)',
                 'Todo el espacio',
                 'Izquierda y arriba',
                 'Derecha y arriba',
                 'Izquierda y abajo',
                 'Derecha y abajo',
                 'Centrado',
                 'Centrado y a la izquierda',
                 'Centrado y arriba',
                 'Centrado y a la derecha',
                 'Centrado y abajo',
                 'Todo el espacio y a la izquierda',
                 'Todo el espacio y arriba',
                 'Todo el espacio y a la derecha',
                 'Todo el espacio y abajo',
                 'Ajustar al alto',
                 'Ajustar al ancho',
                 'Izquierda (último)',
                 'Derecha (último)',
                 'Arriba (último)',
                 'Abajo (último)');

            cosLayoutsRL : array [TRLTextLayout] of String = (
                 'Arriba',
                 'Centrado',
                 'Abajo',
                 'Justificado');



{$R *.DFM}

{****************************************************************
Procedimiento   : Create
Objetivo        : Inicializar el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Constructor Tffra_edit_repo_distribucion.Create(Owner : TComponent);
var
        var_j   : Integer;
Begin
    Inherited Create(Owner);
    chec_autoSize.Style.BorderColor := clLineaGradiente;
    SetControlRL(Nil);
    For var_j := 1 to edit_layout.Values.Count do
        edit_layout.Descriptions[var_j - 1] := edit_layout.Values[var_j - 1];
    For var_j := 1 to edit_cont_align.Values.Count do
        edit_cont_align.Descriptions[var_j - 1] := edit_cont_align.Values[var_j - 1];

End;
{****************************************************************
Procedimiento   : SetControlRL
Objetivo        : Asignar el control activo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_distribucion.SetControlRL(peControl : TRLCustomControl);
Begin
     var_ControlRL := peControl;
     if var_controlRL = Nil Then Exit;
     SetAlineacionRL(var_ControlRL.Align);
     SetAutoSizeRL(peControl.AutoSize);
     SetLayoutRL(peControl.LayOut);
End;
{****************************************************************
Procedimiento   : SetAlineacionRL
Objetivo        : Asigna el valor de la alineación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_distribucion.SetAlineacionRL (peAlineacion : TRLControlAlign);
Begin
     if (var_AlineacionRL <> peAlineacion) Then
     Begin
       if (var_ControlRL = Nil) Then
          var_AlineacionRL := faNone
       Else
          var_AlineacionRL := peAlineacion;
       edit_cont_align.Text := cosAlineacionesRL[var_AlineacionRL];
     End;
End;


{****************************************************************
Procedimiento   : doSave
Objetivo        : Guarda las propiedades en el objeto enviado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function Tffra_edit_repo_distribucion.doSave :Boolean;
Begin
    //Inicializar
    Result := False;
    //Validar
    if (var_ControlRL = Nil) Then
    Begin
        Raise Exception.Create(cosErrorComponenteNoValido);
        Exit;
    End;
    var_ControlRL.Align := var_AlineacionRL;
    var_ControlRL.AutoSize := var_AutoSizeRL;
    var_ControlRL.Layout := var_LayOutRL;
End;

{****************************************************************
Procedimiento   : SetAutoSizeRL
Objetivo        : Asigna la propiedad autosize
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_distribucion.SetAutoSizeRL(peValor : Boolean);
Begin
    //Validar
    if var_AutoSizeRL <> peValor Then
    Begin
        if var_controlRL = Nil Then
            Exit;
        var_AutoSizeRL := peValor;
        chec_autoSize.Checked := var_AutoSizeRL;
    End;
End;

{****************************************************************
Procedimiento   : chec_autoSizeChange
Objetivo        : Actualizar las propiedades al cambiar el
                  autosize
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_repo_distribucion.chec_autoSizeChange(
  Sender: TObject);
begin
        SetAutoSizeRL(chec_AutoSize.Checked);
end;
{****************************************************************
Procedimiento   : SetLayoutRL
Objetivo        : Asigna el layout al objeto
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_distribucion.SetLayoutRL(peValor : TRLTextLayout);
Begin
     if peValor <> var_LayOutRL Then
     Begin
       if (var_ControlRL = Nil) Then
          var_LayOutRL := RLReport.tlTop
       Else
          var_LayOutRL := peValor;
       edit_layout.Text := cosLayoutsRL[var_LayoutRL];
     End;
End;
{****************************************************************
Procedimiento   : boto_dist_text_Click
Objetivo        : Seleccionar la distribución del texto (layout)
                  desde los botones
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_repo_distribucion.edit_layoutChange(Sender: TObject);
Var
      var_i     : TRLTextLayout;
Begin
        //Validar
     if (edit_layout.Text = '') Then
            SetLayOutRL(RLReport.tlTop)
     Else
     //Buscar
     For var_i := Low(TRLTextLayout) to High(TRLTextLayout) do
     Begin
         If cosLayoutsRL[var_i] = edit_layout.Text Then
         Begin
            //Asignar
            SetLayOutRL(var_i);
            Break;
         End;
     End;
end;
{****************************************************************
Procedimiento   : edit_cont_alignChange
Objetivo        : Actualizar la propiedad ALINEACIÓN DEL COMPONENTE
                  al cambiar la selección del combo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_repo_distribucion.edit_cont_alignChange(
  Sender: TObject);
Var
      var_i     : TRLControlAlign;
Begin
        //Validar
        if edit_cont_align.Text = '' Then
                SetAlineacionRL(faNone)
        Else
        //Buscar
        For var_i := Low(TRLControlAlign) to High(TRLControlAlign) do
        Begin
             If cosAlineacionesRL[var_i] = edit_cont_align.Text Then
             Begin
                //Asignar
                SetAlineacionRL(var_i);
                Break;
             End;
        End;
End;
{****************************************************************
Procedimiento   : Enabled_alin_control
Objetivo        : Propiedad enabled de alineación del control
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_distribucion.Enabled_alin_control(peValor : Boolean);
Begin
        labe_alin_control.Enabled := peValor;
        edit_cont_align.Enabled := peValor;
End;
{****************************************************************
Procedimiento   : Enabled_dist_texto
Objetivo        : Propiedad enabled de Distribución del texto
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_distribucion.Enabled_dist_texto(peValor : Boolean);
Begin
        labe_dist_texto.Enabled := peValor;
        edit_layout.Enabled := peValor;
End;
{****************************************************************
Procedimiento   : Enabled_ajus_automatico
Objetivo        : Propiedad enabled de Autosize
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_distribucion.Enabled_ajus_automatico(peValor : Boolean);
Begin
        chec_autoSize.Enabled := peValor;
End;


end.


