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
        Unit            : ufra_edit_repo_system
        Objetivo        : Frame para la edición de la propiedad del sistema
                          en componentes RLSystemInfo
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 14-Jul-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit ufra_edit_repo_system;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, Db, kbmMemTable, RxLookup, PCPLookUpComboEdit, StdCtrls,
  SoCtrls, SCLDBLabel;

type
  Tffra_edit_repo_system = class(TFrame)
    tabl_frame: TkbmMemTable;
    data_fram: TDataSource;
    SCLDBLabel1: TSCLDBLabel;
    comb_info: TPCPLookUpComboEdit;
    tabl_framenomb_info: TStringField;
    procedure tabl_frameAfterOpen(DataSet: TDataSet);
    procedure comb_infoChange(Sender: TObject);
  private
    { Private declarations }
    var_ControlRL       : TRLSystemInfo;
    var_InfoRL  : TRLInfoType;
    Procedure SetControlRL(peControl : TRLSystemInfo);
    Procedure SetInfoRL(peInfo : TRLInfoType);
  public
    { Public declarations }
    Constructor Create(Owner : TComponent); Override;
    Property ControlRL : TRLSystemInfo Read var_ControlRL Write SetControlRL;
    Property InfoRL : TRLInfoType Read var_InfoRL Write SetInfoRL;
    Function doSave :Boolean;
  end;

implementation

uses _func_varias,
     _cons_pcp;

Const
        cosInfoRL : Array[TRLInfoType] of
            String =
                ('Copia de carbón',
                 'Fecha actual',
                 'Cuenta (detalle)',
                 'Fecha y hora actual',
                 'Hora actual',
                 'Continúa...',
                 'Número de página (última)',
                 '...Continúa',
                 'Hoy',
                 'Número de página (actual)',
                 'Vista previa',
                 'Título del reporte',
                 'Número de registro',
                 'Número de copia');


{$R *.DFM}

{****************************************************************
Procedimiento   : Create
Objetivo        : Crear e inicializar el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Constructor Tffra_edit_repo_system.Create(Owner : TComponent); 
Begin
    Inherited Create(Owner);
    SetInfoRL(itDate);
    SetControlRL(Nil);
    AbrirDataSet(tabl_Frame);
End;
{****************************************************************
Procedimiento   : SetControlRL
Objetivo        : Asignar el control al frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_system.SetControlRL(peControl : TRLSystemInfo);
Begin
     var_ControlRL := peControl;
     if var_controlRL = Nil Then Exit;
     SetInfoRL(peControl.Info);
End;
{****************************************************************
Procedimiento   : SetInfoRL
Objetivo        : Asigna la propiedad INFO al componente activo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_system.SetInfoRL(peInfo : TRLInfoType);
Begin
     if (var_ControlRL = Nil) Then
        var_InfoRL := itDate
     Else
        var_InfoRL := peInfo;
     comb_Info.KeyValue := cosInfoRL[var_InfoRL];
End;

{****************************************************************
Procedimiento   : tabl_frameAfterOpen
Objetivo        : Insertar los textos de tipos
                  de información
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_repo_system.tabl_frameAfterOpen(DataSet: TDataSet);
var
        var_i   : TRLInfoType;
begin
     With tabl_frame do
     Begin
        For var_i := Low(TRLInfoType) to High(TRLInfoType) do
        Begin
            Insert;
            FieldByName('nomb_info').Value := cosInfoRL[var_i];
            Post;
        End;
        Sort([]);
     End;
end;
{****************************************************************
Procedimiento   : comb_infoChange
Objetivo        : Actualizar el estado al cambiar el combo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_repo_system.comb_infoChange(Sender: TObject);
Var
      var_i     : TRLInfoType;
Begin
        //Validar
        if comb_info.EstaVacio Then
                SetInfoRL(itDate)
        Else
        //Buscar
        For var_i := Low(TRLInfoType) to High(TRLInfoType) do
        Begin
             If cosInfoRL[var_i] = comb_info.Text Then
             Begin
                //Asignar
                SetInfoRL(var_i);
                Break;
             End;
        End;

end;

{****************************************************************
Procedimiento   : doSave
Objetivo        : Guarda las propiedades en el objeto enviado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function Tffra_edit_repo_system.doSave :Boolean;
Begin
    //Inicializar
    Result := False;
    //Validar
    if (var_ControlRL = Nil) Then
    Begin
        Raise Exception.Create(cosErrorComponenteNoValido);
        Exit;
    End;
    var_ControlRL.Info := var_InfoRL;
End;

end.
