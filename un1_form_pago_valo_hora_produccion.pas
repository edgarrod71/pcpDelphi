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
        Unit            : un1_form_pago_valo_hora_produccion
        Objetivo        : Parametrización de formas de pago
                          Pago por valor hora producción (Base piece rate)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Diciembre 23 de 2004
        Versión         : pcp4.0.0.14
*******************************************************************}
unit un1_form_pago_valo_hora_produccion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_form_pago_para_maestro, Db, RxMemDS, PictureContainer, DBTables,
  AdvPanel, dxExEdtr, dxCntner, SCLPropiedadesForm, DBActns,
  ActnList, ImgList, ufra_maqu_ubicacion, Boxes, PCPFrame, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, SCLShape,
  ufra_mens_atencion, dxCurrencyEditPCP, TBXDkPanels, TBXButtonSCL,
  PCPProceso;

type
  Tfn1_form_pago_valo_hora_produccion = class(Tfn1_form_pago_para_maestro)
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    comb_1: TPCPLookUpComboEdit;
    comb_2: TPCPLookUpComboEdit;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    valo_1: TdxCurrencyEditPCP;
    valo_2: TdxCurrencyEditPCP;
    quer_vhg: TQuery;
    quer_vhp: TQuery;
    data_vhg: TDataSource;
    data_vhp: TDataSource;
    TBXButtonSCL1: TTBXButtonSCL;
    TBXButtonSCL2: TTBXButtonSCL;
    SCLDBLabel5: TSCLDBLabel;
    comb_3: TPCPLookUpComboEdit;
    SCLDBLabel6: TSCLDBLabel;
    valo_3: TdxCurrencyEditPCP;
    TBXButtonSCL3: TTBXButtonSCL;
    SCLDBLabel7: TSCLDBLabel;
    comb_4: TPCPLookUpComboEdit;
    SCLDBLabel8: TSCLDBLabel;
    valo_4: TdxCurrencyEditPCP;
    TBXButtonSCL4: TTBXButtonSCL;
    SCLDBLabel9: TSCLDBLabel;
    comb_5: TPCPLookUpComboEdit;
    SCLDBLabel10: TSCLDBLabel;
    valo_5: TdxCurrencyEditPCP;
    TBXButtonSCL5: TTBXButtonSCL;
    SCLDBLabel11: TSCLDBLabel;
    comb_6: TPCPLookUpComboEdit;
    SCLDBLabel12: TSCLDBLabel;
    valo_6: TdxCurrencyEditPCP;
    TBXButtonSCL6: TTBXButtonSCL;
    SCLDBLabel13: TSCLDBLabel;
    comb_7: TPCPLookUpComboEdit;
    SCLDBLabel14: TSCLDBLabel;
    valo_7: TdxCurrencyEditPCP;
    TBXButtonSCL7: TTBXButtonSCL;
    SCLDBLabel15: TSCLDBLabel;
    porc_1: TdxCurrencyEditPCP;
    SCLDBLabel16: TSCLDBLabel;
    porc_2: TdxCurrencyEditPCP;
    SCLDBLabel17: TSCLDBLabel;
    porc_3: TdxCurrencyEditPCP;
    SCLDBLabel18: TSCLDBLabel;
    porc_4: TdxCurrencyEditPCP;
    SCLDBLabel19: TSCLDBLabel;
    porc_5: TdxCurrencyEditPCP;
    SCLDBLabel20: TSCLDBLabel;
    porc_6: TdxCurrencyEditPCP;
    SCLDBLabel21: TSCLDBLabel;
    porc_7: TdxCurrencyEditPCP;
    procedure FormCreate(Sender: TObject);
    procedure tabl_guardarAfterInsert(DataSet: TDataSet);
    procedure comb_1Change(Sender: TObject);
    procedure comb_2Change(Sender: TObject);
    procedure tabl_guardarBeforePost(DataSet: TDataSet);
    procedure comb_3Change(Sender: TObject);
    procedure comb_4Change(Sender: TObject);
    procedure comb_5Change(Sender: TObject);
    procedure comb_6Change(Sender: TObject);
    procedure comb_7Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_form_pago_valo_hora_produccion: Tfn1_form_pago_valo_hora_produccion;

implementation

uses _func_varias, _func_pcp, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 23 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_valo_hora_produccion.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar variables
  var_cons_sis_form_pago := 1;
  //Abrir las consultas adicionales
  AbrirDataSet(quer_vhg);
  AbrirDataSet(quer_vhp);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : tabl_guardarAfterInsert
Objetivo        : Actualizar los controles de la ventana después
                  de iniciar la inserción de un registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 27 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_valo_hora_produccion.tabl_guardarAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : comb_1Change
Objetivo        : Actualizar los cambios en el combo 1
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 27 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_valo_hora_produccion.comb_1Change(
  Sender: TObject);
begin
  inherited;
  //Localizar el valor del parámetro
  LocalizarValorFormaPago(quer_form_pago_parametros, comb_1, valo_1, porc_1);
end;
{****************************************************************
Procedimiento   : comb_2Change
Objetivo        : Actualizar los cambios en el combo 2
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 27 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_valo_hora_produccion.comb_2Change(
  Sender: TObject);
begin
  inherited;
  LocalizarValorFormaPago(quer_form_pago_parametros, comb_2, valo_2, porc_2);
end;
{****************************************************************
Procedimiento   : tabl_guardarBeforePost
Objetivo        : Guardar los cambios realizados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 28 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_valo_hora_produccion.tabl_guardarBeforePost(
  DataSet: TDataSet);
var
    var_cons_form_pago  : Integer;
begin
  inherited;
  Try
     StartDBTransaction;
     //Eliminar el registro actual (si lo hay)
     if (quer_seleccionar.RecordCount > 0) Then
     Begin
         With quer_elim_valores do
         Begin
             ParamByName('cons_form_pago').Value := quer_seleccionar.FieldByName('cons_form_pago').asInteger;
             ExecSQL;
         End;
     End;
     //Crear el registro maestro y/o generar la secuencia
     var_cons_form_pago := doCrearRegistroMaestro;
     //Crear el detalle de los valores
     With quer_guar_valores do
     Begin
         ParamByName('cons_form_pago').Value := var_Cons_Form_pago;
         //Combo 1
         ParamByName('cons_tabl_auxi_detalle').Value := quer_vhg.FieldByName('cons_tabl_auxi_detalle').asInteger;
         ParamByName('valo_parametro').Value := valo_1.Value;
         ParamByName('porc_parametro').Value := 0;
         ExecSQL;
         //Combo 2
         if comb_2.Visible Then
         Begin
           ParamByName('cons_tabl_auxi_detalle').Value := quer_vhp.FieldByName('cons_tabl_auxi_detalle').asInteger;
           ParamByName('valo_parametro').Value := valo_2.Value;
           ParamByName('porc_parametro').Value := 0;
           ExecSQL;
         End;
         //Combo 3
         if comb_3.Visible Then
         Begin
           ParamByName('cons_tabl_auxi_detalle').Value := quer_vhp.FieldByName('cons_tabl_auxi_detalle').asInteger;
           ParamByName('valo_parametro').Value := valo_3.Value;
           ParamByName('porc_parametro').Value := 0;
           ExecSQL;
         End;
         //Combo 4
         if comb_4.Visible Then
         Begin
           ParamByName('cons_tabl_auxi_detalle').Value := quer_vhp.FieldByName('cons_tabl_auxi_detalle').asInteger;
           ParamByName('valo_parametro').Value := valo_4.Value;
           ParamByName('porc_parametro').Value := 0;
           ExecSQL;
         End;
         //Combo 5
         if comb_5.Visible Then
         Begin
           ParamByName('cons_tabl_auxi_detalle').Value := quer_vhp.FieldByName('cons_tabl_auxi_detalle').asInteger;
           ParamByName('valo_parametro').Value := valo_5.Value;
           ParamByName('porc_parametro').Value := 0;
           ExecSQL;
         End;
         //Combo 6
         if comb_6.Visible Then
         Begin
           ParamByName('cons_tabl_auxi_detalle').Value := quer_vhp.FieldByName('cons_tabl_auxi_detalle').asInteger;
           ParamByName('valo_parametro').Value := valo_6.Value;
           ParamByName('porc_parametro').Value := 0;
           ExecSQL;
         End;
         //Combo 7
         if comb_7.Visible Then
         Begin
           ParamByName('cons_tabl_auxi_detalle').Value := quer_vhp.FieldByName('cons_tabl_auxi_detalle').asInteger;
           ParamByName('valo_parametro').Value := valo_7.Value;
           ParamByName('porc_parametro').Value := 0;
           ExecSQL;
         End;
     End;
     //Hacer los cambios permanentes
     CommitDBWork;
  Except
      On e:Exception do
      Begin
          RollBackDBWork;
          EjecutarMensajeError(e.Message);
          Abort;
      End;
  End;
end;

procedure Tfn1_form_pago_valo_hora_produccion.comb_3Change(
  Sender: TObject);
begin
  inherited;
  LocalizarValorFormaPago(quer_form_pago_parametros, comb_3, valo_3, porc_3);
end;

procedure Tfn1_form_pago_valo_hora_produccion.comb_4Change(
  Sender: TObject);
begin
  inherited;
  LocalizarValorFormaPago(quer_form_pago_parametros, comb_4, valo_4, porc_4);
end;

procedure Tfn1_form_pago_valo_hora_produccion.comb_5Change(
  Sender: TObject);
begin
  inherited;
  LocalizarValorFormaPago(quer_form_pago_parametros, comb_5, valo_5, porc_5);
end;

procedure Tfn1_form_pago_valo_hora_produccion.comb_6Change(
  Sender: TObject);
begin
  inherited;
  LocalizarValorFormaPago(quer_form_pago_parametros, comb_6, valo_6, porc_6);
end;

procedure Tfn1_form_pago_valo_hora_produccion.comb_7Change(
  Sender: TObject);
begin
  inherited;
  LocalizarValorFormaPago(quer_form_pago_parametros, comb_7, valo_7, porc_7);
end;

end.
