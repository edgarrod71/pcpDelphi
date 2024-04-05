unit un1_cont_nove_improductivos;

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
        Unit            : un1_cont_nove_improductivos
        Objetivo        : Ingreso de novedades de improductivos
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
  PCPProceso, JvExExtCtrls, JvComponent, JvDBRadioPanel, SCLShape;

type
  Tfn1_cont_nove_improductivos = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    Label1: TLabel;
    comb_codi_improductivo: TPCPLookUpComboEdit;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    PCPLookUpComboEdit3: TPCPLookUpComboEdit;
    PCPLookUpComboEdit4: TPCPLookUpComboEdit;
    PCPLookUpComboEdit5: TPCPLookUpComboEdit;
    PCPLookUpComboEdit6: TPCPLookUpComboEdit;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    data_improductivos: TDataSource;
    data_sub_improductivos: TDataSource;
    myTabla_ventana: TRxMemoryData;
    quer_upda_nove_improductivos: TQuery;
    data_prod_ordenes: TDataSource;
    data_recursos: TDataSource;
    edit_estandar: TJvDBRadioPanel;
    SCLShape1: TSCLShape;
    procedure FormCreate(Sender: TObject);
    procedure myTabla_ventanaBeforePost(DataSet: TDataSet);
    procedure comb_codi_improductivoKeyDown(Sender: TObject; var Key: Word;
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
        aDataImproductivos, aDataSubImproductivos, aDataProd_Ordenes, aDataRecursos : TDataSet);
  end;

var
  fn1_cont_nove_improductivos: Tfn1_cont_nove_improductivos;

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
procedure Tfn1_cont_nove_improductivos.FormCreate(Sender: TObject);
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
procedure Tfn1_cont_nove_improductivos.myTabla_ventanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  var_cons_prod_orden := myTabla_ventana.FieldByName('cons_prod_orden').AsInteger;
  quer_upda_nove_improductivos.ExecSQL;
end;
{****************************************************************
Procedimiento   : comb_codi_improductivoKeyDown
Objetivo        : Controlar las pulsaciones de teclas en el combo
                  de codigo improductivo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_improductivos.comb_codi_improductivoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Escape
  if (Key = vk_escape) Then 
     //Si no está vacío, limpiar
     if comb_codi_improductivo.Text <> '' Then comb_codi_improductivo.ClearValue
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
Procedure Tfn1_cont_nove_improductivos.doEjecutarVentana(cons_cont_nove_diaria : Integer; aDataSet : TDataSet; aInsert : Boolean;
        aDataImproductivos, aDataSubImproductivos, aDataProd_Ordenes, aDataRecursos : TDataSet);
Begin
     //Asginar los parametros    
     var_cons_cont_nove_diaria := cons_cont_nove_diaria;
     data_improductivos.DataSet := aDataImproductivos;
     data_Sub_improductivos.DataSet := aDataSubImproductivos;
     If (data_sub_improductivos.DataSet is TQuery) Then
        (data_sub_improductivos.DataSet as TQuery).DataSource := data_improductivos;
     data_prod_ordenes.DataSet := aDataProd_ordenes;
     data_recursos.DataSet := aDataRecursos;
     var_DataSet := aDataSet;       
     With myTabla_ventana do
     Begin
          if Not(State in [dsInsert, dsEdit]) Then Edit;
          FieldByName('cons_cont_nove_diaria').Value := cons_cont_nove_diaria;
          //Asignar el registro actual
          if (Not aInsert) and (aDataSet <> Nil) and (aDataSet.Active) and (aDataSet.RecordCount > 0) then
          Begin
              FieldByName('cons_cont_nove_improductivo').Value := aDataSet.FieldByName('cons_cont_nove_improductivo').Value;
              FieldByName('cons_improductivo').Value := aDataSet.FieldByName('cons_improductivo').Value;
              FieldByName('cons_sub_improductivo').Value := aDataSet.FieldByName('cons_sub_improductivo').Value;
              FieldByName('cons_prod_orden').Value := aDataSet.FieldByName('cons_prod_orden').Value;
              FieldByName('cons_recurso').Value := aDataSet.FieldByName('cons_recurso').Value;
              FieldByName('minu_improductivos').Value := aDataSet.FieldByName('minu_improductivos').asInteger;
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
procedure Tfn1_cont_nove_improductivos.myTabla_ventanaAfterInsert(
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
procedure Tfn1_cont_nove_improductivos.myTabla_ventanaAfterPost(
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
procedure Tfn1_cont_nove_improductivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (var_nece_actualizar) and (var_dataSet <> Nil) then
        RefreshDataSet(var_dataSet);
end;

procedure Tfn1_cont_nove_improductivos.dxDBCurrencyEdit1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Guardar e insertar en ENTER
  if key = vk_return then
  Begin
       CheckAndPostDataSet(myTabla_Ventana);
       if (Confirmar(cosDeseaIngresarOtroRegistro, [mbYes, mbNo],0) = mrYes) Then
       Begin
          myTabla_ventana.Insert;
          darFoco(comb_codi_improductivo);
       End
       Else
          Close;
  end;
end;

end.
