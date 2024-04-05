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
        Unit            : un0_dial_sele_campos
        Objetivo        : Dialogo de selección de campos de una fuente
                          de datos
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Febrero 04 de 2005
        Versión         : pcp4.0.20.0
*******************************************************************}
unit un0_dial_sele_campos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, dxTL, dxDBCtrl, dxDBGrid,
  SCLDBGrid, kbmMemTable;

type
  Tfn0_dial_sele_campos = class(T_fvent_modal)
    Panel1: TPanel;
    Panel2: TPanel;
    grid: TSCLDBGrid;
    myTabla_Ventana: TkbmMemTable;
    myTabla_Ventanaconsecutivo: TIntegerField;
    myTabla_Ventananomb_campo: TStringField;
    gridconsecutivo: TdxDBGridMaskColumn;
    gridnomb_campo: TdxDBGridMaskColumn;
    myTabla_VentanaDESC_CAMPO: TStringField;
    gridColumnDESC_CAMPO: TdxDBGridColumn;
    procedure padr_accionesUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure acti_padr_cancelar_2Execute(Sender: TObject);
  private
    { Private declarations }
    var_Resultado   : Boolean;
  public
    { Public declarations }
    function doEjecutarVentana(peDataSet: TDataSet; var peCampo: string): Boolean;
  end;

var
  fn0_dial_sele_campos: Tfn0_dial_sele_campos;

implementation

uses _cons_pcp, _func_pcp, _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : padr_accionesUpdate
Objetivo        : Actualizar el estado de las acciones
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_dial_sele_campos.padr_accionesUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  //Habilitar las acciones
  padr_acti_aceptar.Enabled := True;
  acti_padr_cancelar_2.Enabled := True;
  acti_padr_cancelar_2.Visible := True;
  padr_boto_cancelar.action := acti_padr_cancelar_2;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_dial_sele_campos.FormCreate(Sender: TObject);
begin
  inherited;
  var_Resultado := False;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : doEjecutarVentana
Objetivo        : Ejecutar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
function Tfn0_dial_sele_campos.doEjecutarVentana(peDataSet: TDataSet; var peCampo: string): Boolean;
var
  var_i: Integer;
begin
  //Validar
  if peDataSet = Nil Then
    Raise Exception.Create(cosErrorFuenteDatosNoValida);
  //Abrir la tabla de memoria
  if myTabla_ventana.Active then myTabla_Ventana.Close;
  myTabla_Ventana.Open;
  //Si la fuente de datos no tiene campos y no está activa, abrirla
  if peDataSet.fieldCount = 0 Then
    if not peDataSet.active then peDataSet.open;
  //Recorrer la fuente de datos
  for var_i := 1 TO  peDataSet.FieldCount  do
  Begin
    myTabla_Ventana.Insert;
    myTabla_ventana.FieldByName('consecutivo').Value := var_i;
    myTabla_ventana.FieldByName('nomb_campo').Value := peDataSet.Fields[var_i - 1].FieldName;
    myTabla_ventana.FieldByName('desc_campo').Value := peDataSet.Fields[var_i - 1].DisplayLabel;
    myTabla_Ventana.Post;
  End;
  //RC 20.6 Ordernarlo
  myTabla_Ventana.SortOn('consecutivo', []);
  //Si el campo ya está asignado, ubicarlo, de lo contrario ir al primero
  if (peCampo <> '') Then
  Begin
    if not myTabla_ventana.Locate('nomb_campo', peCampo, []) Then
      myTabla_Ventana.First;
  End
  Else
    myTabla_Ventana.First;
  //Mostrar el diálogo
  ShowModal;
  Result := var_Resultado;
  if Result then peCampo := myTabla_Ventana.FieldByName('nomb_campo').asString;
End;
{****************************************************************
Procedimiento   : gridDblClick
Objetivo        : Seleccionar con Doble Click
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_dial_sele_campos.gridDblClick(Sender: TObject);
begin
  inherited;
  padr_acti_aceptar.Execute;
end;
{****************************************************************
Procedimiento   : gridKeyDown
Objetivo        : Seleccionar con ENTER
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_dial_sele_campos.gridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_Return then
    padr_acti_aceptar.Execute
  else if key = vk_escape then
    acti_padr_cancelar_2.Execute;
end;
{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Aceptar los cambios realizados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_dial_sele_campos.padr_acti_aceptarExecute(Sender: TObject);
begin
  //inherited;
  var_Resultado := True;
  Close;
end;
{****************************************************************
Procedimiento   : acti_padr_cancelar_2Execute
Objetivo        : Cancelar el dialogo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_dial_sele_campos.acti_padr_cancelar_2Execute(
  Sender: TObject);
begin
  //inherited;
  if (Confirmar(cosDeseaCancelar) = mrYes) Then
  Begin
    var_Resultado := False;
    Close;
  End;
end;

end.
