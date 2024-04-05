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
        Unit            : ufra_edit_Campos
        Objetivo        : Frame para la edición de campos en un DS
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 06-Abr-2005
        Versión         : pcp4.0.20.6
*******************************************************************}unit ufra_edit_campos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, dxTL, dxDBCtrl, dxDBGrid, dxCntner, kbmMemTable, dxDBTLCl, dxGrClms,
  DBTables;

type
  Tffra_edit_campos = class(TFrame)
    myTabla_Ventana: TkbmMemTable;
    myTabla_Ventanacons_campo: TIntegerField;
    myTabla_Ventananume_campo: TIntegerField;
    myTabla_Ventanatext_campo: TStringField;
    myTabla_Ventananomb_campo: TStringField;
    data_ventana: TDataSource;
    Grid: TdxDBGrid;
    myTabla_Ventanavisible: TBooleanField;
    myTabla_Ventanaformato: TStringField;
    Gridcons_campo: TdxDBGridMaskColumn;
    Gridnume_campo: TdxDBGridMaskColumn;
    Gridtext_campo: TdxDBGridMaskColumn;
    Gridnomb_campo: TdxDBGridMaskColumn;
    Gridvisible: TdxDBGridCheckColumn;
    Gridformato: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create(Owner : TComponent);Override;
    Procedure Execute(peDataSet : TDataSet);

  end;

implementation

uses _func_varias;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear e inicializar el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Constructor Tffra_edit_campos.Create(Owner : TComponent);
Begin
        Inherited Create(Owner);
        //Inicalizar
        AutoHints(Self);
End;


Procedure Tffra_edit_campos.Execute(peDataSet : TDataSet);
var
        var_Esta_Abierta        : Boolean;
        var_cont_activos        : Boolean;
        var_i   : Integer;
Begin
    //Validar el ds
    if (peDataSet = Nil) Then Exit;
    //Verificar si el ds está abierto
    var_Esta_Abierta := (peDataSet.Active);
    var_Cont_activos := Not(peDataSet.ControlsDisabled);
    //Recrear la tabla de la ventana (memoria)
    myTabla_Ventana.Close;
    myTabla_Ventana.Open;
    Try
       //Preparar el DS
       peDataSet.DisableControls;
       //Verificar si tiene parametros y los tiene con valores
       if (peDataSet is TQuery) Then
       Begin
         For var_i := 1 to (peDataSet as TQuery).ParamCount do
            if ((peDataSet as TQuery).Params[var_i - 1].DataType = ftUnknown)
              Then (peDataSet as TQuery).Params[var_i - 1].DataType := ftString;
       End;
       peDataSet.Open;
       //Recorrer los campos
       For var_i := 1 to peDataSet.fields.Count do
       Begin
           myTabla_Ventana.Insert;
           myTabla_Ventana.FieldByName('cons_campo').Value := var_i;
           myTabla_Ventana.FieldByName('nomb_campo').Value := peDataSet.Fields[var_i - 1].FieldName;
           myTabla_Ventana.FieldByName('text_campo').Value := peDataSet.Fields[var_i - 1].DisplayLabel;
           myTabla_ventana.FieldByName('nume_campo').Value := peDataSet.Fields[var_i - 1].FieldNo;
           myTabla_Ventana.FieldByName('visible').Value := peDataSet.Fields[var_i - 1].Visible;
           if (peDataSet.Fields[var_i - 1].DataType  = ftInteger) Then
              myTabla_Ventana.FieldByName('formato').Value := TIntegerField(peDataSet.Fields[var_i - 1]).DisplayFormat
           Else
           if (peDataSet.Fields[var_i - 1].DataType  = ftFloat) Then
              myTabla_Ventana.FieldByName('formato').Value := TFloatField(peDataSet.Fields[var_i - 1]).DisplayFormat
           Else
              myTabla_Ventana.FieldByName('formato').Value := '';
           myTabla_Ventana.Post;
       End;
       //Ordenar e ir al primer registro
       myTabla_Ventana.Sort([]);
       myTabla_Ventana.First;
    Finally
        //Cerrar el DS si no estaba activo
        if Not var_Esta_Abierta Then peDataSet.Close;
        //Habilitar los controles asociados al DS
        if var_Cont_Activos Then peDataSet.EnableControls;
    End;

    {FUNCION DE GUARDADO------------------------------------
           //Si el resultado es positivo, cambiar los nombres
       if var_Resultado Then
       Begin
           myTabla_Ventana.DisableControls;
           myTabla_Ventana.First;
           While Not myTabla_Ventana.Eof do
           Begin
                //Asignar el texto
                peDataSet.Fields[myTabla_Ventana.FieldByName('nume_campo').AsInteger - 1].DisplayLabel := myTabla_Ventana.FieldByName('text_campo').AsString;
                //Siguiente campo
                myTabla_Ventana.Next;
           End;
       End;
       //Generar el resultado de la función
       Result := var_Resultado;
       ------------------------------------------------}

End;
end.
