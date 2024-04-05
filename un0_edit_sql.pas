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
        Unit            : un0_edit_SQL
        Objetivo        : Editor de consultas SQL (directo)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 29-mar-2005
        Versión         : pcp4.0.20.6
*******************************************************************}unit un0_edit_sql;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, ufra_edit_SQL;

type
  Tfn0_edit_sql = class(T_fvent_modal)
    fram_edit_SQL: Tffra_edit_sql;
    procedure acti_padr_cancelar_2Execute(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    var_Resultado       : Boolean;
    var_Query   : TQuery;
  public
    { Public declarations }
    Function Ejecutar(peQuery : TQuery) : Boolean;

  end;

var
  fn0_edit_sql: Tfn0_edit_sql;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : acti_padr_cancelar_2Execute
Objetivo        : Ejecuta la acción CANCELAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 29-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_edit_sql.acti_padr_cancelar_2Execute(Sender: TObject);
begin
  //inherited;
  //Cerrar
  var_Resultado := False;
  Close;
end;

{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecuta la ventana con el Query enviado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 29-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function Tfn0_edit_sql.Ejecutar(peQuery : TQuery) : Boolean;
Var
    var_i   : Integer;
Begin
    //Inicializar el resultado
    var_Resultado := False;
    //Validar los parametros
    if peQuery = Nil Then
    Begin
        Result := False;
        Close;
        Exit;
    End;
    //Inicializar los controles
    fram_edit_SQL.OQDLG.OQBEngine.DatabaseName := peQuery.DatabaseName;
    fram_edit_SQL.auxi_query.DatabaseName := peQuery.DatabaseName;
    fram_edit_SQL.MemoSQL.Lines.Assign(peQuery.SQL);
    //Asignarlo
    var_Query := peQuery;
    //Mostrarlo
    ShowModal;
    Result := var_Resultado;
End;

{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Ejecuta la acción ACEPTAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 29-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_edit_sql.padr_acti_aceptarExecute(Sender: TObject);
Var
    var_i   : Integer;
    var_s   : String;
begin
  inherited;
  var_Query.SQL.Assign(fram_edit_SQL.MemoSQL.Lines);
  //Cerrar
  var_Resultado := True;
  Close;
end;

procedure Tfn0_edit_sql.FormShow(Sender: TObject);
begin
  inherited;
  acti_padr_cancelar_2.Visible := True;
end;

procedure Tfn0_edit_sql.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
