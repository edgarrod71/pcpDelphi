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
        Unit            : un1_form_pago_diferencial2
        Objetivo        : Edición de rangos para la forma de pago diferencial
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Diciembre 05 de 2004
        Versión         : pcp4.0.0.14
*******************************************************************}
unit un1_form_pago_diferencial2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, _cons_pcp, RxMemDS, Boxes, PCPProceso;

type
  Tfn1_form_pago_diferencial2 = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    edit_rang_inicial: TdxDBCurrencyEdit;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    dxDBCurrencyEdit3: TdxDBCurrencyEdit;
    myTabla_Ventana: TRxMemoryData;
    myTabla_VentanaCONS_FORM_PAGO_DIFERENCIAL: TIntegerField;
    myTabla_VentanaCODI_FORM_PAGO_DIFERENCIAL: TStringField;
    myTabla_VentanaRANG_INICIAL: TFloatField;
    myTabla_VentanaRANG_FINAL: TFloatField;
    myTabla_VentanaVALO_PROD_HORA: TFloatField;
    quer_actualizar: TQuery;
    procedure doGuardar(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure myTabla_VentanaBeforePost(DataSet: TDataSet);
    procedure myTabla_VentanaAfterPost(DataSet: TDataSet);
    procedure edit_rang_inicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    varTipo_Accion  : TTipoAccion;
    varQuery    : TQuery;
  public
    { Public declarations }
    Procedure doEjecutarVentana(
        peQuery : TQuery;
        pecons_form_pago_diferencial : Integer;
        peCodi_form_pago_diferencial : String;
        peTipo_Accion   : TTipoAccion;
        peRang_inicial  : Real = 0;
        peRang_final    : Real = 0;
        peValo_prod_hora    : Real = 0);
  end;

var
  fn1_form_pago_diferencial2: Tfn1_form_pago_diferencial2;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}

Procedure Tfn1_form_pago_diferencial2.doEjecutarVentana(
    peQuery : TQuery;
    pecons_form_pago_diferencial : Integer;
    peCodi_form_pago_diferencial : String;
    peTipo_Accion   : TTipoAccion;
    peRang_inicial  : Real = 0;
    peRang_final    : Real = 0;
    peValo_prod_hora    : Real = 0);
Begin
    //Dar por NO inicializada la ventana para que no ejecute el AFTERPOST
    //de la tabla temporal
    var_vent_inicializada := False;
    varQuery := peQuery;
    //Inicializar el registro de la tabla temporal
    With myTabla_Ventana do
    Begin
        Edit;
        FieldByName('cons_form_pago_diferencial').Value := pecons_form_pago_diferencial;
        FieldByName('codi_form_pago_diferencial').Value := pecodi_form_pago_diferencial;
        FieldByName('rang_inicial').Value := perang_inicial;
        FieldByName('rang_final').Value := perang_final;
        FieldByName('valo_prod_hora').Value := pevalo_prod_hora;
        varTipo_Accion := peTipo_Accion;
        Post;
    End;
    var_vent_inicializada := True;
    ShowModal;
End;
{****************************************************************
Procedimiento   : doGuardar
Objetivo        : Guarda el registro al dar ENTER
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 05 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_diferencial2.doGuardar(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Guardar con ENTER  
  If (key = vk_return) then
    if (padr_acti_guardar.Enabled) then
    Begin
        padr_acti_guardar.Execute;
        //Si era solo edicion, cerrar
        //if (varTipo_accion = taEdit) Then //--> Comentado en RC16 para que cierre siempre
        Close;
    End;
end;
{****************************************************************
Procedimiento   : myTabla_VentanaBeforePost
Objetivo        : Actualiza el registro en la base de datos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 05 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_diferencial2.myTabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If not var_vent_inicializada Then Exit;
  quer_actualizar.ExecSQL;
end;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterPost
Objetivo        : Si estaba insertando (nuevo rango) sugerir el siguiente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 05 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_diferencial2.myTabla_VentanaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  //Si era nuevo, sugerir seguir insertando
  {//DESHABILITADO EN RC16 POR TENER POCA UTILIDAD Y SER CONFUSO
  if (varTipo_Accion = taInsert) Then
  With myTabla_Ventana do
  Begin
      //Actualizar la vista de la consulta
      if Not (varQuery = Nil) Then
        RefreshDataSet(varQuery);
      if not (State in [dsInsert, dsEdit]) then
         Edit;
      //Pasar el rango
      FieldByName('rang_inicial').Value := 0;
      FieldByName('rang_final').Value := 0;
      FieldByName('VALO_PROD_HORA').Value := 0;
      //Enfocar el cuadro de edición del rango inicial
      darFoco(edit_rang_inicial);
      edit_rang_inicial.SelectAll;
  End; }
end;
{****************************************************************
Procedimiento   : edit_rang_inicialKeyDown
Objetivo        : Controlar las pulsaciones sobre el primer edit
                  (rango inicial) para cancelar desde el teclado  
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 05 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_diferencial2.edit_rang_inicialKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Si es ESCAPE cancelar
  if (key = vk_Return) and (myTabla_Ventana.FieldByName('rang_inicial').asFloat = 0) Then
    if padr_acti_cancelar.Enabled then
        padr_acti_cancelar.Execute;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Abr-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_form_pago_diferencial2.FormShow(Sender: TObject);
begin
  inherited;
  //Ocultar los botones de avance
  ver_Boton_Avance := False;
end;

procedure Tfn1_form_pago_diferencial2.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
