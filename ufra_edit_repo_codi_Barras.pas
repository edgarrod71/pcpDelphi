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
        Unit            : ufra_edit_repo_codi_Barras
        Objetivo        : Frame para la edición de componentes
                          de códigos de barras
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 15-Jul-2005
        Versión         : pcp4.0.21.0
*******************************************************************}
unit ufra_edit_repo_codi_Barras;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLBarcode, Db, kbmMemTable, RxLookup, PCPLookUpComboEdit,
  StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, JvExExtCtrls, JvComponent,
  JvOfficeColorButton, dxCntner, dxExEdtr, dxEdLib, dxEditor;

type
  Tffra_edit_repo_codi_Barras = class(TFrame)
    tabl_type: TkbmMemTable;
    data_type: TDataSource;
    tabl_typenomb_type: TStringField;
    SCLDBLabel1: TSCLDBLabel;
    comb_type: TPCPLookUpComboEdit;
    SCLDBLabel2: TSCLDBLabel;
    edit_color: TJvOfficeColorButton;
    chec_digito: TdxCheckEdit;
    tabl_invalid: TkbmMemTable;
    data_invalid: TDataSource;
    SCLDBLabel3: TSCLDBLabel;
    comb_invalid: TPCPLookUpComboEdit;
    tabl_invalidnomb_invalid: TStringField;
    SCLDBLabel4: TSCLDBLabel;
    edit_module: TdxSpinEdit;
    tabl_orientacion: TkbmMemTable;
    data_orientacion: TDataSource;
    tabl_orientacionnomb_orientacion: TStringField;
    SCLDBLabel5: TSCLDBLabel;
    comb_orientacion: TPCPLookUpComboEdit;
    edit_codigo: TdxCheckEdit;
    procedure tabl_typeAfterOpen(DataSet: TDataSet);
    procedure tabl_invalidAfterOpen(DataSet: TDataSet);
    procedure tabl_orientacionAfterOpen(DataSet: TDataSet);
    procedure comb_typeChange(Sender: TObject);
    procedure comb_invalidChange(Sender: TObject);
    procedure comb_orientacionChange(Sender: TObject);
    procedure chec_digitoChange(Sender: TObject);
    procedure edit_codigoChange(Sender: TObject);
    procedure edit_colorColorChange(Sender: TObject);
  private
    { Private declarations }
    var_ControlRL       : TRLCustomBarCode;
    var_BarCodeTypeRL   : TRLBarCodeType;
    var_BarColorRL      : TColor;
    var_CheckSumRL      : Boolean;
    var_CheckSumMethodRL        : TRLBarcodeCheckSumMethod;
    var_InvalidCodeRL   : TRLBarcodeInvalidCode;
    var_ModuleRL        : Integer;
    var_OrientationRL   : TRLBarCodeOrientation;
    var_ShowTextRL      : TRLBarcodeTextOption;
    Procedure SetControlRL (peControl : TRLCustomBarCode);
    Procedure SetBarCodeTypeRL(peBarCodeType : TRLBarCodeType);
    Procedure SetBarColorRL(peBarColor : TColor);
    Procedure SetCheckSumRL(peValor : Boolean);
    Procedure SetInvalidCodeRL(peInvalidCode : TRLBarcodeInvalidCode);
    Procedure SetModuleRL(peModule : Integer);
    Procedure SetOrientationRL(peOrientation : TRLBarCodeOrientation);
    Procedure SetShowText(peShowText : Boolean);
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
    Property ControlRL : TRLCustomBarCode Read var_ControlRL Write SetControlRL;
    Function doSave :Boolean;
  end;


Const
     cosBarCodeTypeRL : Array[TRLBarCodeType] of String =
        ('Interleaved 2 of 5',
         'Industrial 2 of 5',
         'Matricial 2 of 5',
         'Code 39',
         'Code 39 Extended',
         'Code 128A',
         'Code 128B',
         'Code 128C',
         'Code 93',
         'Code 93 Extended',
         'MSI',
         'PostNet',
         'CodaBar',
         'EAN 8',
         'EAN 13',
         'UPC A',
         'UPC E0',
         'UPC E1',
         'UPC SUPP2',
         'UPC SUPP5',
         'EAN 128A',
         'EAN 128B',
         'EAN 128C');

       cosInvalidCodeRL : Array[TRLBarcodeInvalidCode] of
         String = (
         'No mostrar nada',
         'Mostrar tachado',
         'Mostrar normal');

       cosOrientationRL : Array[TRLBarcodeOrientation] of
         String = (
         'De izquierda a derecha',
         'De abajo hacia arriba',
         'De arriba hacia abajo');


implementation

Uses _func_varias,
     _cons_pcp
     ;

{$R *.DFM}

{****************************************************************
Procedimiento   : Create
Objetivo        : Crear e inicializar el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
Constructor Tffra_edit_repo_codi_Barras.Create (Owner : TComponent);
Begin
    Inherited Create(Owner);
    AbrirDataSet(tabl_type);
    AbrirDataSet(tabl_invalid);
    AbrirDataSet(tabl_orientacion);
    SetControlRL(Nil);
End;
{****************************************************************
Procedimiento   : SetControlRL
Objetivo        : Asignar el control al frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
Procedure Tffra_edit_repo_codi_Barras.SetControlRL (peControl : TRLCustomBarCode);
Begin
     var_ControlRL := peControl;
     if var_controlRL = Nil Then Exit;
     SetBarCodeTypeRL(peControl.BarcodeType);
     SetBarColorRL(peControl.BarColor);
     SetCheckSumRL(peControl.CheckSum);
     SetInvalidCodeRL(peControl.InvalidCode);
     SetModuleRL(peControl.Module);
     SetOrientationRL(peControl.Orientation);
     SetShowText(peControl.ShowText = boCode);
End;
{****************************************************************
Procedimiento   : SetBarCodeType
Objetivo        : Asignar el tipo de código de barras
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
Procedure Tffra_edit_repo_codi_Barras.SetBarCodeTypeRL(peBarCodeType : TRLBarCodeType);
Begin
     if (var_ControlRL <> Nil) Then
     Begin
        var_BarCodeTypeRL := peBarCodeType;
        //Asignar el tipo al combo
       comb_type.KeyValue := cosBarCodeTypeRL[peBarCodeType];
     End;
End;

{****************************************************************
Procedimiento   : tabl_typeAfterOpen
Objetivo        : Cargar los tipos de códigos de barras en la tabla
                  de memoria
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
procedure Tffra_edit_repo_codi_Barras.tabl_typeAfterOpen(
  DataSet: TDataSet);
var
        var_i   : TRLBarCodeType;
begin
     With tabl_type do
     Begin
        For var_i := Low(TRLBarCodeType) to High(TRLBarCodeType) do
        Begin
            Insert;
            FieldByName('nomb_type').Value := cosBarCodeTypeRL[var_i];
            Post;
        End;
        Sort([]);
     End;
end;
{****************************************************************
Procedimiento   : SetBarColorRL
Objetivo        : Asigna el color a las barras
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
Procedure Tffra_edit_repo_codi_Barras.SetBarColorRL(peBarColor : TColor);
Begin
     if (var_ControlRL <> Nil) Then
     Begin
        var_BarColorRL := peBarColor;
        edit_color.SelectedColor := peBarColor;
     End
End;
{****************************************************************
Procedimiento   : SetCheckSumRL
Objetivo        : Asigna el checkSum al componente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
Procedure Tffra_edit_repo_codi_Barras.SetCheckSumRL(peValor : Boolean);
Begin
     if (var_ControlRL <> Nil) Then
     Begin
        var_CheckSumRL := peValor;
        if peValor Then
           var_CheckSumMethodRL := cmModule10
        Else
           var_CheckSumMethodRL := cmNone;
        chec_digito.Checked := peValor;
     End
End;
{****************************************************************
Procedimiento   : SetInvalidCodeRL
Objetivo        : Asigna el valor InvalidCode al componente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
Procedure Tffra_edit_repo_codi_Barras.SetInvalidCodeRL(peInvalidCode : TRLBarcodeInvalidCode);
Begin
     if (var_ControlRL <> Nil) Then
     Begin
        var_InvalidCodeRL := peInvalidCode;
        //Asignar el tipo al combo
       comb_Invalid.KeyValue := cosInvalidCodeRL[peInvalidCode];
     End;
End;
{****************************************************************
Procedimiento   : SetModuleRL
Objetivo        : Asigna el valor MODULE (DENSIDAD) al componente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
Procedure Tffra_edit_repo_codi_Barras.SetModuleRL(peModule : Integer);
Begin
     if (var_ControlRL <> Nil) Then
     Begin
        var_ModuleRL := peModule;
        edit_module.Value := peModule;
     End;
End;
{****************************************************************
Procedimiento   : SetOrientationRL
Objetivo        : Asigna el tipo de orientación del código de barras
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
Procedure Tffra_edit_repo_codi_Barras.SetOrientationRL(peOrientation : TRLBarCodeOrientation);
Begin
     if (var_ControlRL <> Nil) Then
     Begin
        var_OrientationRL := peOrientation;
        //Asignar el tipo al combo
       comb_orientacion.KeyValue := cosOrientationRL[peOrientation];
     End;
End;
{****************************************************************
Procedimiento   : SetShowText
Objetivo        : Asignar la propiedad SHOWTEXT al código de barras
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
Procedure Tffra_edit_repo_codi_Barras.SetShowText(peShowText : Boolean);
Begin
     if (var_ControlRL <> Nil) Then
     Begin
        if peShowText Then
            var_ShowTextRL := boCode
        Else
            var_ShowTextRL := boNone;
        edit_codigo.Checked := peShowText;
     End;
End;
{****************************************************************
Procedimiento   : tabl_invalidAfterOpen
Objetivo        : Crear los registros de INVALIDCODE en la tabla
                  temporal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
procedure Tffra_edit_repo_codi_Barras.tabl_invalidAfterOpen(
  DataSet: TDataSet);
var
        var_i   : TRLBarcodeInvalidCode;
begin
     With tabl_invalid do
     Begin
        For var_i := Low(TRLBarcodeInvalidCode) to High(TRLBarcodeInvalidCode) do
        Begin
            Insert;
            FieldByName('nomb_invalid').Value := cosInvalidCodeRL[var_i];
            Post;
        End;
        Sort([]);
     End;
end;
{****************************************************************
Procedimiento   : tabl_orientacionAfterOpen
Objetivo        : Crear los registros de ORIENTACION en la tabla
                  temporal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
procedure Tffra_edit_repo_codi_Barras.tabl_orientacionAfterOpen(
  DataSet: TDataSet);
var
        var_i   : TRLBarCodeOrientation;
begin
     With tabl_orientacion do
     Begin
        For var_i := Low(TRLBarCodeOrientation) to High(TRLBarCodeOrientation) do
        Begin
            Insert;
            FieldByName('nomb_orientacion').Value := cosOrientationRL[var_i];
            Post;
        End;
        Sort([]);
     End;
end;
{****************************************************************
Procedimiento   : comb_typeChange
Objetivo        : Asignar el tipo de código de barras al cambiar el combo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
procedure Tffra_edit_repo_codi_Barras.comb_typeChange(Sender: TObject);
Var
      var_i     : TRLBarCodeType;
Begin
        //Validar
        if comb_type.EstaVacio Then
                SetBarCodeTypeRL(bcCode2OF5Interleaved)
        Else
        //Buscar
        For var_i := Low(TRLBarCodeType) to High(TRLBarCodeType) do
        Begin
             If cosBarCodeTypeRL[var_i] = comb_type.Text Then
             Begin
                //Asignar
                SetBarCodeTypeRL(var_i);
                Break;
             End;
        End;
end;
{****************************************************************
Procedimiento   : comb_invalidChange
Objetivo        : Asignar la propiedad INVALIDCODE cuando cambie
                  el combo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
procedure Tffra_edit_repo_codi_Barras.comb_invalidChange(Sender: TObject);
Var
      var_i     : TRLBarcodeInvalidCode;
Begin
        //Validar
        if comb_invalid.EstaVacio Then
                SetInvalidCodeRL(icEmptyRect)
        Else
        //Buscar
        For var_i := Low(TRLBarcodeInvalidCode) to High(TRLBarcodeInvalidCode) do
        Begin
             If cosInvalidCodeRL[var_i] = comb_invalid.Text Then
             Begin
                //Asignar
                SetInvalidCodeRL(var_i);
                Break;
             End;
        End;
end;
{****************************************************************
Procedimiento   : comb_orientacionChange
Objetivo        : Asignar el valor a la propiedad ORIENTATION
                  cuando cambie el combo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
procedure Tffra_edit_repo_codi_Barras.comb_orientacionChange(
  Sender: TObject);
Var
      var_i     : TRLBarCodeOrientation;
Begin
        //Validar
        if comb_orientacion.EstaVacio Then
                SetOrientationRL(boLeftToRight)
        Else
        //Buscar
        For var_i := Low(TRLBarCodeOrientation) to High(TRLBarCodeOrientation) do
        Begin
             If cosOrientationRL[var_i] = comb_orientacion.Text Then
             Begin
                //Asignar
                SetOrientationRL(var_i);
                Break;
             End;
        End;
end;
{****************************************************************
Procedimiento   : chec_digitoChange
Objetivo        : Asignar la propiedad dígito de chequeo del componente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
procedure Tffra_edit_repo_codi_Barras.chec_digitoChange(Sender: TObject);
begin
        SetCheckSumRL(chec_digito.Checked);
end;
{****************************************************************
Procedimiento   : edit_codigoChange
Objetivo        : Asignar la propiedad mostrar texto del componente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
procedure Tffra_edit_repo_codi_Barras.edit_codigoChange(Sender: TObject);
begin
        SetShowText(edit_codigo.Checked);
end;

{****************************************************************
Procedimiento   : doSave
Objetivo        : Guarda las propiedades en el objeto enviado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.21.0
*****************************************************************}
Function Tffra_edit_repo_codi_Barras.doSave :Boolean;
Begin
    //Inicializar
    Result := False;
    //Validar
    if (var_ControlRL = Nil) Then
    Begin
        Raise Exception.Create(cosErrorComponenteNoValido);
        Exit;
    End;
    var_ControlRL.BarcodeType := var_BarCodeTypeRL;
    var_ControlRL.BarColor := var_BarColorRL;
    var_ControlRL.CheckSum := var_CheckSumRL;
    var_ControlRL.CheckSumMethod := var_CheckSumMethodRL;
    var_ControlRL.InvalidCode := var_InvalidCodeRL;
    var_ControlRL.Module := var_ModuleRL;
    var_ControlRL.Orientation := var_OrientationRL;
    var_ControlRL.ShowText := var_ShowTextRL;
End;
{****************************************************************
Procedimiento   : edit_colorColorChange
Objetivo        : Asignar la propiedad del color
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_repo_codi_Barras.edit_colorColorChange(
  Sender: TObject);
begin
    SetBarColorRL(edit_Color.SelectedColor);
end;

end.
