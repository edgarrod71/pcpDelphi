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
        Unit            : un0_dial_strings
        Objetivo        : Editor de líneas (String y StringList)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Febrero 04 de 2005
        Versión         : pcp4.0.20.0
*******************************************************************}
unit un0_dial_strings;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar;

type
  Tfn0_dial_strings = class(T_fvent_modal)
    ActionList1: TActionList;
    acti_sele_campos: TAction;
    TBXItem1: TTBXItem;
    Panel1: TPanel;
    memo_lineas: TdxMemo;
    procedure acti_sele_camposExecute(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure acti_padr_cancelar_2Execute(Sender: TObject);
    procedure padr_accionesUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure memo_lineasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    var_DataSet: TDataSet;
    var_Resultado : Boolean;
  public
    { Public declarations }
    function doEjecutarVentana(peLineas: TStrings; peDataSet: TDataSet): Boolean; overload;
    function doEjecutarVentana(var peStr: string; peDataSet: TDataSet): Boolean; overload;
  end;

var
  fn0_dial_strings: Tfn0_dial_strings;

implementation

uses _MDI, un0_dial_sele_campos, _cons_pcp, _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : doEjecutarVentana
Objetivo        : Ejecuta el diáologo con un TStrings
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
function Tfn0_dial_strings.doEjecutarVentana(peLineas: TStrings; peDataSet: TDataSet): Boolean;
begin
  var_DataSet := peDataSet;
  //Estado de las acciones
  acti_sele_campos.Enabled := (peDataSet <> nil);
  //Asignar las líneas
  Memo_lineas.Lines.Assign(peLineas);
  //Mostrar
  ShowModal;
  Result := var_Resultado;
  if Result then peLineas.Assign(Memo_Lineas.Lines);
end;
{OVERLOAD}
function Tfn0_dial_strings.doEjecutarVentana(var peStr: string; peDataSet: TDataSet): Boolean;
begin
  var_DataSet := peDataSet;
  //Estado de las acciones
  acti_sele_campos.Enabled := (peDataSet <> nil);
  //Asignar las líneas
  Memo_lineas.Text := peStr;
  //Mostrar
  ShowModal;
  Result := var_Resultado;
  if Result then peStr := memo_lineas.lines.Text;
end;


{****************************************************************
Procedimiento   : acti_sele_camposExecute
Objetivo        : Ejecutar la selección de campos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_dial_strings.acti_sele_camposExecute(Sender: TObject);
var
  LS: string;
  LSelStart, LSelLength: Integer;
begin
  Inherited;
  Application.CreateForm(Tfn0_dial_sele_campos, fn0_dial_sele_campos);
  if fn0_dial_sele_Campos.doEjecutarVentana(var_DataSet, LS) Then
  Begin
    //Buscar la selección del memo
    LSelStart := Memo_Lineas.SelStart;
    LSelLength := Memo_Lineas.SelLength;
    //Insertar
    Memo_Lineas.Lines.Text := Copy(Memo_Lineas.Lines.Text, 1, LSelStart) + LS +
      Copy(Memo_Lineas.Lines.Text, LSelStart + LSelLength + 1, MaxInt);
    Memo_Lineas.SelLength := Length(LS);
  end;
end;
{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Aceptar el diálogo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_dial_strings.padr_acti_aceptarExecute(Sender: TObject);
begin
  inherited;
  var_Resultado := True;
  Close;
end;
{****************************************************************
Procedimiento   : acti_padr_cancelar_2Execute
Objetivo        : Cancelar el diálogo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_dial_strings.acti_padr_cancelar_2Execute(Sender: TObject);
begin
  inherited;
  if (Confirmar(cosDeseaCancelar) = mrYes) Then
  Begin
    var_Resultado := False;
    Close;
  End;
end;
{****************************************************************
Procedimiento   : padr_accionesUpdate
Objetivo        : Actualizar las acciones
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_dial_strings.padr_accionesUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  //Habilitar las acciones
  padr_acti_aceptar.Enabled := True;
  acti_padr_cancelar_2.Enabled := True;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles de la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.0.20
*****************************************************************}
procedure Tfn0_dial_strings.FormShow(Sender: TObject);
begin
  inherited;
  padr_acti_aceptar.Visible := True;
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
procedure Tfn0_dial_strings.FormCreate(Sender: TObject);
begin
  inherited;
  var_Resultado := False;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : memo_lineasKeyDown
Objetivo        : Cancelar con ESC
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_dial_strings.memo_lineasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_Escape then
    acti_padr_cancelar_2.Execute;
end;

end.
