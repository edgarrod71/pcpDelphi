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
        Unit            : un0_edit_campos
        Objetivo        : Edición de campos (nombres) para mostrar
                          en un DataSet
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 29-mar-2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit un0_edit_campos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, kbmMemTable, dxTL, dxDBCtrl,
  dxDBGrid;

type
  Tfn0_edit_campos = class(T_fvent_modal)
    Panel1: TPanel;
    myTabla_Ventana: TkbmMemTable;
    myTabla_Ventanacons_campo: TIntegerField;
    myTabla_Ventananomb_campo: TStringField;
    myTabla_Ventanatext_campo: TStringField;
    Grid: TdxDBGrid;
    Gridcons_campo: TdxDBGridMaskColumn;
    Gridnomb_campo: TdxDBGridMaskColumn;
    Gridtext_campo: TdxDBGridMaskColumn;
    myTabla_Ventananume_campo: TIntegerField;
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure acti_padr_cancelar_2Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    var_dataSet : TDataSet;
    var_Resultado : Boolean;
  public
    { Public declarations }
    Function Execute(peDataSet : TDataSet): Boolean;
  end;

var
  fn0_edit_campos: Tfn0_edit_campos;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : Execute
Objetivo        : Ejecuta el díalogo de edición de los campos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 29-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function Tfn0_edit_campos.Execute(peDataSet : TDataSet): Boolean;
var
        var_Esta_Abierta        : Boolean;
        var_cont_activos        : Boolean;
        var_i   : Integer;
Begin
    Result := False;
    //Validar el ds
    if (peDataSet = Nil) Then Exit;
    var_DataSet := peDataSet;
    //Verificar si el ds está abierto
    var_Esta_Abierta := (var_DataSet.Active);
    var_Cont_activos := Not(var_DataSet.ControlsDisabled);
    //Recrear la tabla de la ventana (memoria)
    myTabla_Ventana.Close;
    myTabla_Ventana.Open;
    Try
       //Preparar el DS
       var_DataSet.DisableControls;
       var_DataSet.Open;
       //Recorrer los campos
       For var_i := 1 to var_DataSet.fields.Count do
       Begin
           myTabla_Ventana.Insert;
           myTabla_Ventana.FieldByName('cons_campo').Value := var_i;
           myTabla_Ventana.FieldByName('nomb_campo').Value := var_dataSet.Fields[var_i - 1].FieldName;
           myTabla_Ventana.FieldByName('text_campo').Value := var_dataSet.Fields[var_i - 1].DisplayLabel;
           myTabla_ventana.FieldByName('nume_campo').Value := var_dataSet.Fields[var_i - 1].FieldNo;
           myTabla_Ventana.Post;
       End;
       //Ordenar e ir al primer registro
       myTabla_Ventana.Sort([]);
       myTabla_Ventana.First;
       //Generar el resultado
       ShowModal;
       //Si el resultado es positivo, cambiar los nombres
       if var_Resultado Then
       Begin
           myTabla_Ventana.DisableControls;
           myTabla_Ventana.First;
           While Not myTabla_Ventana.Eof do
           Begin
                //Asignar el texto
                var_DataSet.Fields[myTabla_Ventana.FieldByName('nume_campo').AsInteger - 1].DisplayLabel := myTabla_Ventana.FieldByName('text_campo').AsString;
                //Siguiente campo
                myTabla_Ventana.Next;
           End;
       End;
       //Generar el resultado de la función
       Result := var_Resultado;
    Finally
        //Cerrar el DS si no estaba activo
        if Not var_Esta_Abierta Then var_DataSet.Close;
        //Habilitar los controles asociados al DS
        if var_Cont_Activos Then var_DataSet.EnableControls;
    End;
End;
{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Ejecuta la acción ACEPTAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 29-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_edit_campos.padr_acti_aceptarExecute(Sender: TObject);
begin
  //inherited;
  var_Resultado := True;
  if (myTabla_Ventana.State in [dsEdit, dsInsert]) then
        myTabla_Ventana.Post;
  Close;
end;
{****************************************************************
Procedimiento   : acti_padr_cancelar_2Execute
Objetivo        : Ejecuta la acción CANCELAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 29-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_edit_campos.acti_padr_cancelar_2Execute(Sender: TObject);
begin
  //inherited;
  var_Resultado := False;
  if (myTabla_Ventana.State in [dsEdit, dsInsert]) then
        myTabla_Ventana.Post;
  Close;
end;

procedure Tfn0_edit_campos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
