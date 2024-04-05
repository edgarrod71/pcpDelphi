unit un1_cont_nove_hora_extras;


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
        Unit            : un1_cont_nove_hora_extras
        Objetivo        : Ingreso de novedades de horas extra
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Julio 28 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, RxMemDS, Boxes,
  JvExExtCtrls, JvComponent, JvDBRadioPanel, SCLShape, PCPProceso;

type
  Tfn1_cont_nove_hora_extras = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    Label1: TLabel;
    comb_codi_hora_extra: TPCPLookUpComboEdit;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    PCPLookUpComboEdit5: TPCPLookUpComboEdit;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    data_hora_extras: TDataSource;
    myTabla_ventana: TRxMemoryData;
    quer_upda_nove_hora_extras: TQuery;
    data_prod_ordenes: TDataSource;
    SCLShape1: TSCLShape;
    edit_estandar: TJvDBRadioPanel;
    myTabla_ventanacons_cont_nove_hora_extra: TIntegerField;
    myTabla_ventanacons_cont_nove_diaria: TIntegerField;
    myTabla_ventanacons_hora_extra: TIntegerField;
    myTabla_ventanacons_prod_orden: TIntegerField;
    myTabla_ventanaminu_extras: TIntegerField;
    myTabla_ventanaestandar: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure myTabla_ventanaBeforePost(DataSet: TDataSet);
    procedure comb_codi_hora_extraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure myTabla_ventanaAfterInsert(DataSet: TDataSet);
    procedure myTabla_ventanaAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBCurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    var_cons_prod_orden : Integer;
    var_cons_cont_nove_diaria   : Integer;
    var_nece_actualizar : Boolean;
    var_DataSet   : TDataSet;
  public
    { Public declarations }
    Procedure doEjecutarVentana(cons_cont_nove_diaria : Integer; aDataSet : TDataSet; aInsert : Boolean;
        aDatahora_extras, aDataProd_Ordenes : TDataSet);
  end;

var
  fn1_cont_nove_hora_extras: Tfn1_cont_nove_hora_extras;

implementation

uses _func_varias, _cons_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_hora_extras.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  var_cons_prod_orden := -1;
  var_cons_cont_nove_diaria := -1;
  var_nece_actualizar := False;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : myData_ventanaBeforePost
Objetivo        : Insertar/Actualizar el registro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_hora_extras.myTabla_ventanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  var_cons_prod_orden := myTabla_ventana.FieldByName('cons_prod_orden').AsInteger;
  quer_upda_nove_hora_extras.ExecSQL;
end;
{****************************************************************
Procedimiento   : comb_codi_hora_extraKeyDown
Objetivo        : Controlar las pulsaciones de teclas en el combo
                  de codigo hora_extra
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_hora_extras.comb_codi_hora_extraKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Escape
  if (Key = vk_escape) Then 
     //Si no está vacío, limpiar
     if comb_codi_hora_extra.Text <> '' Then comb_codi_hora_extra.ClearValue
     //Si está vacío, cerrar
     Else 
     Begin
        if (myTabla_ventana.State in [dsEdit, dsInsert]) Then myTabla_ventana.Cancel;
        Close;
     End;
End;
{****************************************************************
Procedimiento   : doEjecutarVentana
Objetivo        : Ejecuta la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tfn1_cont_nove_hora_extras.doEjecutarVentana(cons_cont_nove_diaria : Integer; aDataSet : TDataSet; aInsert : Boolean;
        aDatahora_extras, aDataProd_Ordenes : TDataSet);
Begin
     //Asginar los parametros    
     var_cons_cont_nove_diaria := cons_cont_nove_diaria;
     data_hora_extras.DataSet := aDatahora_extras;
     data_prod_ordenes.DataSet := aDataProd_ordenes;
     var_DataSet := aDataSet;       
     With myTabla_ventana do
     Begin
          if Not(State in [dsInsert, dsEdit]) Then Edit;
          FieldByName('cons_cont_nove_diaria').Value := cons_cont_nove_diaria;
          //Asignar el registro actual
          if (Not aInsert) and (aDataSet <> Nil) and (aDataSet.Active) and (aDataSet.RecordCount > 0) then
          Begin
              FieldByName('cons_cont_nove_hora_extra').Value := aDataSet.FieldByName('cons_cont_nove_hora_extra').Value;
              FieldByName('cons_hora_extra').Value := aDataSet.FieldByName('cons_hora_extra').Value;
              FieldByName('cons_prod_orden').Value := aDataSet.FieldByName('cons_prod_orden').Value;
              FieldByName('minu_extras').Value := aDataSet.FieldByName('minu_extras').asInteger;
              FieldByName('estandar').Value := aDataSet.FieldByName('estandar').asInteger;
              //Guardr en variables los parámetros
              var_Cons_prod_orden := FieldByName('cons_prod_orden').AsInteger;
          End;
     End;

     //Mostrar la ventana
     ShowModal;
End;
{****************************************************************
Procedimiento   : myData_ventanaAfterInsert
Objetivo        : Inicializar el registro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_hora_extras.myTabla_ventanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Valores iniciales del registro
  With myTabla_ventana do
  Begin
      if var_cons_cont_nove_diaria <> -1 then 
        FieldByName('cons_cont_nove_diaria').Value := var_cons_cont_nove_diaria;
      if var_cons_prod_orden <> -1 then 
        FieldByName('cons_prod_orden').Value := var_cons_prod_orden;
      FieldByName('estandar').Value := 1;
  End;
end;
{****************************************************************
Procedimiento   : myData_ventanaAfterPost
Objetivo        : Actualizar la variable que indica si se 
                  necesita actualizar los registros
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_hora_extras.myTabla_ventanaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  //Se modificaron registros
  var_nece_actualizar := True;
end;
{****************************************************************
Procedimiento   : FormClose
Objetivo        : Actualizar la consulta del padre si hubo cambios
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_hora_extras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (var_nece_actualizar) and (var_dataSet <> Nil) then
        RefreshDataSet(var_dataSet);
end;

procedure Tfn1_cont_nove_hora_extras.dxDBCurrencyEdit1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Guardar e insertar en ENTER
  if key = vk_return then
  Begin
       CheckAndPostDataSet(myTabla_ventana);
       if (Confirmar(cosDeseaIngresarOtroRegistro, [mbYes, mbNo],0) = mrYes) Then
       Begin
            myTabla_ventana.Insert;
            darFoco(comb_codi_hora_extra);
       End
       Else
            Close;
  end;
end;

end.
