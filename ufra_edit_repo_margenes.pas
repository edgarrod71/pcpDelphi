{****************************************************************
Procedimiento   : ufra_edit_repo_margenes
Objetivo        : Frame para la edición de margenes                         
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
unit ufra_edit_repo_margenes;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, SoCtrls, SCLDBLabel;

type
  TMargenes = Record
      Arriba : Real;
      Abajo : Real;
      Izquierda : Real;
      Derecha : Real;
  End;

  Tffra_edit_repo_margenes = class(TFrame)
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    edit_marg_arriba: TdxSpinEdit;
    edit_marg_abajo: TdxSpinEdit;
    edit_marg_izquierda: TdxSpinEdit;
    edit_marg_derecha: TdxSpinEdit;
    procedure edit_marg_arribaChange(Sender: TObject);
    procedure edit_marg_abajoChange(Sender: TObject);
    procedure edit_marg_izquierdaChange(Sender: TObject);
    procedure edit_marg_derechaChange(Sender: TObject);
  private
    { Private declarations }
    var_Margenes    : TMargenes;
  public
    { Public declarations }
    Constructor Create(Owner : TComponent);Override;
    Property Margenes : TMargenes Read var_Margenes Write var_Margenes;
    Procedure SetMargenes(Arriba, Abajo, Izquierda, Derecha : Real);
  end;

implementation

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear e inicializar el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Constructor Tffra_edit_repo_margenes.Create(Owner : TComponent);
Begin
    inherited Create(Owner);
    SetMargenes(0,0,0,0);
End;
{****************************************************************
Procedimiento   : SetMargenes
Objetivo        : Asigna los valores del márgen actual
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_edit_repo_margenes.SetMargenes(Arriba, Abajo, Izquierda, Derecha : Real);
Begin
    //Asignar las márgenes
    var_margenes.Arriba := Arriba;
    var_margenes.Abajo := Abajo;
    var_margenes.Izquierda := Izquierda;
    var_margenes.Derecha := Derecha;
    //Asignar los controles
    if Edit_marg_arriba.Value <> var_margenes.Arriba then
        Edit_marg_arriba.Value := var_margenes.Arriba;
    if Edit_marg_Abajo.Value <> var_margenes.Abajo then
        Edit_marg_Abajo.Value := var_margenes.Abajo;
    if Edit_marg_Izquierda.Value <> var_margenes.Izquierda then
        Edit_marg_Izquierda.Value := var_margenes.Izquierda;
    if Edit_marg_Derecha.Value <> var_margenes.Derecha then
        Edit_marg_Derecha.Value := var_margenes.Derecha;
End;
{****************************************************************
Procedimiento   : edit_marg_ArribaChange
Objetivo        : Asigna el valor del margen a la Arriba
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_repo_margenes.edit_marg_arribaChange(Sender: TObject);
begin
    if Edit_marg_arriba.Value <> var_margenes.Arriba then
        var_margenes.Arriba := Edit_marg_arriba.Value;
end;
{****************************************************************
Procedimiento   : edit_marg_AbajoChange
Objetivo        : Asigna el valor del margen a la Abajo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_repo_margenes.edit_marg_abajoChange(Sender: TObject);
begin
    if Edit_marg_Abajo.Value <> var_margenes.Abajo then
        var_margenes.Abajo := Edit_marg_Abajo.Value;
end;
{****************************************************************
Procedimiento   : edit_marg_IzquierdaChange
Objetivo        : Asigna el valor del margen a la Izquierda
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_repo_margenes.edit_marg_izquierdaChange(
  Sender: TObject);
begin
    if Edit_marg_Izquierda.Value <> var_margenes.Izquierda then
        var_margenes.Izquierda := Edit_marg_Izquierda.Value;

end;
{****************************************************************
Procedimiento   : edit_marg_derechaChange
Objetivo        : Asigna el valor del margen a la derecha
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_repo_margenes.edit_marg_derechaChange(
  Sender: TObject);
begin
    if Edit_marg_Derecha.Value <> var_margenes.Derecha then
        var_margenes.Derecha := Edit_marg_Derecha.Value;
end;

end.
