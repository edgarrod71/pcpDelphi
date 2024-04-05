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
        Unit            : ufra_edit_SQL
        Objetivo        : Frame para la edición de consultas SQL
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 28-mar-2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit ufra_edit_SQL;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  JvExControls, JvComponent, JvEditorCommon, JvUnicodeEditor,
  JvUnicodeHLEditor, TB2Item, TBX, TB2Dock, TB2Toolbar, QBuilder, QBEBDE,
  Db, DBTables, OQBEbde;

type
  Tffra_edit_sql = class(TFrame)
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    boto_dise_visual: TTBXItem;
    boto_vali_consulta: TTBXItem;
    MemoSQL: TJvWideHLEditor;
    OQBDEEngine: TOQBEngineBDE;
    OQDLG: TOQBuilderDialog;
    auxi_query: TQuery;
    procedure boto_dise_visualClick(Sender: TObject);
    procedure boto_vali_consultaClick(Sender: TObject);
    procedure MemoSQLChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses _func_varias, _cons_pcp;

{$R *.DFM}
{****************************************************************
Procedimiento   : boto_dise_visualClick
Objetivo        : Abrir el diseñador visual
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_sql.boto_dise_visualClick(Sender: TObject);
begin
  if OQDLG.Execute then
    MemoSQL.Lines.Assign(OQBDEEngine.SQL);
end;
{****************************************************************
Procedimiento   : boto_vali_consultaClick
Objetivo        : Validar la consulta SQL
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_sql.boto_vali_consultaClick(Sender: TObject);
Var
        var_I : Integer;
begin
  auxi_Query.Close;
  auxi_Query.SQL.Assign(MemoSQL.Lines);
  Try
      auxi_Query.Open;
      //Verificar si tiene parametros y los tiene con valores
      if (auxi_Query is TQuery) Then
      Begin
       For var_i := 1 to (auxi_Query as TQuery).ParamCount do
          if ((auxi_Query as TQuery).Params[var_i - 1].DataType = ftUnknown)
            Then (auxi_Query as TQuery).Params[var_i - 1].DataType := ftString;
      End;
  Except
      on E:Exception do
        EjecutarMensaje('Error'{cosPanelFiltrosEditConexionError}, e.Message, mtError, [mbOk], 0);
  End;
  auxi_Query.Close;
end;
{****************************************************************
Procedimiento   : MemoSQLChange
Objetivo        : Asignar el SQL a la consulta auxiliar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_sql.MemoSQLChange(Sender: TObject);
begin
        auxi_Query.Close;
        auxi_Query.SQL.Assign(MemoSQL.Lines);
end;

end.
