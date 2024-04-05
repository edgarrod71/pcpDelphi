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
        Unit            : ufra_edit_repo_dbResult
        Objetivo        : Frame para la edición de componentes
                          RLDBResult
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 18-Jul-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit ufra_edit_repo_dbResult;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, SoCtrls,
  SCLDBLabel, RxLookup, PCPLookUpComboEdit, Db, kbmMemTable;

type
  Tffra_edit_repo_dbResult = class(TFrame)
    SCLDBLabel1: TSCLDBLabel;
    edit_formula: TdxButtonEdit;
    chec_reset: TdxCheckEdit;
    chec_nulls: TdxCheckEdit;
    tabl_info: TkbmMemTable;
    data_info: TDataSource;
    SCLDBLabel2: TSCLDBLabel;
    comb_info: TPCPLookUpComboEdit;
    tabl_infonomb_info: TStringField;
    procedure tabl_infoAfterOpen(DataSet: TDataSet);
    procedure comb_infoChange(Sender: TObject);
  private
    { Private declarations }
    var_ControlRL : TRLCustomDBResult;
    var_DataFormulaRL   : String;
    var_ResetAfterPrintRL       : Boolean;
    var_ComputeNullsRL  : Boolean;
    var_InfoRL  : TRLResultInfo;
    Procedure SetControlRL (peControl : TRLCustomDBResult);
    Procedure SetDataFormulaRL (peDataFormula   : String);
    Procedure SetResetAfterPrintRL (peValor: Boolean);
    Procedure SetComputeNullsRL (peValor : Boolean);
    Procedure SetInfoRL  (peInfoRL : TRLResultInfo);
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
    Property ControlRL : TRLCustomDBResult Read var_ControlRL Write SetControlRL;
    Function doSave :Boolean;
  end;



Const
        cosInfoRL       : Array[TRLResultInfo] of String = (
                'Promedio',
                'Cuenta',
                'Primero',
                'Ultimo',
                'Máximo',
                'Mínimo',
                'Suma',
                'Primer texto',
                'Ultimo texto',
                'Simple');

implementation


Uses
        _func_varias,
        _cons_pcp;

{$R *.DFM}

{****************************************************************
Procedimiento   : Create
Objetivo        : Crear e inicializar el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Constructor Tffra_edit_repo_dbResult.Create (Owner : TComponent);
Begin
     Inherited Create(Owner);
     AbrirDataSet(tabl_info);
     SetDataFormulaRL('');
     SetResetAfterPrintRL(False);
     SetComputeNullsRL(False);
     SetInfoRL(riSimple);
     SetControlRL(Nil);
End;
{****************************************************************
Procedimiento   : SetControlRL
Objetivo        : Asignar el control activo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_dbResult.SetControlRL (peControl : TRLCustomDBResult);
Begin
     var_ControlRL := peControl;
     if var_controlRL = Nil Then Exit;
     SetDataFormulaRL(var_ControlRL.DataFormula);
     SetResetAfterPrintRL(var_ControlRL.ResetAfterPrint);
     SetComputeNullsRL(var_ControlRL.ComputeNulls);
     SetInfoRL(var_ControlRL.Info);
End;
{****************************************************************
Procedimiento   : SetDataFormulaRL
Objetivo        : Asigna el texo de la fórmula
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_dbResult.SetDataFormulaRL (peDataFormula   : String);
Begin
     if (var_ControlRL <> Nil) Then
     Begin
        var_DataFormulaRL := peDataFormula;
        edit_Formula.Text := peDataFormula;
     End;
End;
{****************************************************************
Procedimiento   : SetResetAfterPrintRL
Objetivo        : Asignar la propiedad RESET AFTER PRINT
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_dbResult.SetResetAfterPrintRL (peValor: Boolean);
Begin
     if (var_ControlRL <> Nil) Then
     Begin
        var_ResetAfterPrintRL := peValor;
        chec_reset.Checked := peValor;
     End;
End;
{****************************************************************
Procedimiento   : SetComputeNullsRL
Objetivo        : Asignar la propiedad COMPUTE NULLS
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_dbResult.SetComputeNullsRL (peValor : Boolean);
Begin
     if (var_ControlRL <> Nil) Then
     Begin
        var_ComputeNullsRL := peValor;
        chec_nulls.Checked := peValor;
     End;
End;
{****************************************************************
Procedimiento   : SetInfoRL
Objetivo        : Asingar el tipo de información
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_repo_dbResult.SetInfoRL  (peInfoRL : TRLResultInfo);
Begin
     if (var_ControlRL <> Nil) Then
     Begin
        var_InfoRL := peInfoRL;
        //Asignar el tipo al combo
       comb_info.KeyValue := cosInfoRL[peInfoRL];
     End;
End;
{****************************************************************
Procedimiento   : tabl_infoAfterOpen
Objetivo        : Cargar los tipos de información en la tabla
                  de memoria
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_repo_dbResult.tabl_infoAfterOpen(DataSet: TDataSet);
var
        var_i   : TRLResultInfo;
begin
     With tabl_info do
     Begin
        For var_i := Low(TRLResultInfo) to High(TRLResultInfo) do
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
Objetivo        : Asignar el tipo de información al cambiar el combo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_repo_dbResult.comb_infoChange(Sender: TObject);
Var
      var_i     : TRLResultInfo;
Begin
        //Validar
        if comb_info.EstaVacio Then
                SetInfoRL(riSimple)
        Else
        //Buscar
        For var_i := Low(TRLResultInfo) to High(TRLResultInfo) do
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
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
Function Tffra_edit_repo_dbResult.doSave :Boolean;
Begin
    //Inicializar
    Result := False;
    //Validar
    if (var_ControlRL = Nil) Then
    Begin
        Raise Exception.Create(cosErrorComponenteNoValido);
        Exit;
    End;
    var_ControlRL.DataFormula := var_DataFormulaRL;
    var_ControlRL.ResetAfterPrint := var_ResetAfterPrintRL;
    var_ControlRL.ComputeNulls := var_ComputeNullsRL;
    var_ControlRL.Info := var_InfoRL;
End;


end.
