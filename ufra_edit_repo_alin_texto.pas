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
        Unit            : ufra_edit_repo_alin_texto
        Objetivo        : Frame para la selección de alineación del texto
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 14-Jul-2005
        Versión         : pcp4.0.20.13
*******************************************************************}

unit ufra_edit_repo_alin_texto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RxLookup, PCPLookUpComboEdit, StdCtrls, SoCtrls, SCLDBLabel,
  Db, kbmMemTable, dxCntner, dxEditor, dxExEdtr, dxEdLib;

type
  Tffra_edit_repo_alin_texto = class(TFrame)
    labe_alin_texto: TSCLDBLabel;
    edit_alin_texto: TdxImageEdit;
    procedure edit_alin_textoChange(Sender: TObject);
  private
    { Private declarations }
    var_ControlRL       : TRLCustomControl;
    var_AlineacionRL    : TRLTextAlignment;
    Procedure SetControlRL(peControl : TRLCustomControl);
    Procedure setAlineacionRL(peAlineacionRL : TRLTextAlignment);
  public
    { Public declarations }
    Constructor Create(Owner : TComponent); Override;
    Property ControlRL : TRLCustomControl Read var_ControlRL Write SetControlRL;
    Property AlineacionRL : TRLTextAlignment Read var_AlineacionRL Write SetAlineacionRL;
    Function doSave :Boolean;
    Procedure Enabled_Alin_Texto (peValor : Boolean);
  end;

Const
        cosAlineacionesRL : Array[TRLTextAlignment] of
            String =
                ('Izquierda',
                 'Derecha',
                 'Centrado',
                 'Justificado');  


implementation
Uses
        _func_db,
        _cons_pcp, _uData;
{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear e inicializar el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Constructor Tffra_edit_repo_alin_texto.Create(Owner : TComponent);
var
        var_i   : Integer;
Begin
    Inherited Create(Owner);
    setAlineacionRL(taLeftJustify);
    SetControlRL(Nil);
    For var_i := 1 to edit_alin_texto.Values.Count do
        edit_alin_texto.Descriptions[var_i - 1] := edit_alin_texto.Values[var_i - 1];
End;

{****************************************************************
Procedimiento   : SetControlRL
Objetivo        : Asigna el control activo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_alin_texto.SetControlRL;
Begin
     var_ControlRL := peControl;
     if var_controlRL = Nil Then Exit;
     SetAlineacionRL(var_ControlRL.Alignment);
End;
{****************************************************************
Procedimiento   : setAlineacionRL
Objetivo        : Asigna la alineación al control
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_alin_texto.setAlineacionRL(peAlineacionRL : TRLTextAlignment);
Begin
     if (var_ControlRL = Nil) Then
        var_AlineacionRL := taLeftJustify
     Else
        var_AlineacionRL := peAlineacionRL;
     edit_alin_texto.Text := cosAlineacionesRL[var_AlineacionRL];
End;

{****************************************************************
Procedimiento   : doSave
Objetivo        : Guarda las propiedades en el objeto enviado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function Tffra_edit_repo_alin_texto.doSave :Boolean;
Begin
    //Inicializar
    Result := False;
    //Validar
    if (var_ControlRL = Nil) Then
    Begin
        Raise Exception.Create(cosErrorComponenteNoValido);
        Exit;
    End;
    var_ControlRL.Alignment := var_AlineacionRL;
End;

{****************************************************************
Procedimiento   : edit_alin_textoChange
Objetivo        : Asignar la alineación cuando cambie
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_repo_alin_texto.edit_alin_textoChange(
  Sender: TObject);
Var
      var_i     : TRLTextAlignment;
Begin
        //Validar
        if edit_alin_texto.Text = '' Then
                SetAlineacionRL(taLeftJustify)
        Else
        //Buscar
        For var_i := Low(TRLTextAlignment) to High(TRLTextAlignment) do
        Begin
             If cosAlineacionesRL[var_i] = edit_alin_texto.Text Then
             Begin
                //Asignar
                SetAlineacionRL(var_i);
                Break;
             End;
        End;
end;
{****************************************************************
Procedimiento   : Enabled_Alin_Texto
Objetivo        : Propiedad ENABLED del fram
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_alin_texto.Enabled_Alin_Texto (peValor : Boolean);
Begin
     labe_alin_texto.Enabled := peValor;
     edit_alin_texto.Enabled := peValor;
End;

end.
