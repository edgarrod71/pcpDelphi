unit uDecisionCube;

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
        Unit            : uDecisionCube
        Objetivo        : Ventana padre para consultas en cubo
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Julio 26 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Grids, mxgrid, mxDB, mxstore, mxpivsrc, Boxes,
  PCPFrame, PCPProceso;

type
  TfDecisionCube = class(T_fvent_modal)
    Consulta: TQuery;
    DCub: TDecisionCube;
    Sour: TDecisionSource;
    padr_pane_grid: TPCPFrame;
    Grid: TDecisionGrid;
    padr_pane_pivote: TPanel;
    Control: TDecisionPivot;
    padr_pane_totales: TPanel;
    padr_chec_totales: TdxCheckEdit;
    padr_sepa_pivote: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure padr_chec_totalesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure doEjecutarCubo(aDataSetCubo : TDataSet = Nil;  aDataSourceParametros : TDataSource = Nil);
  end;

var
  fDecisionCube: TfDecisionCube;

implementation

uses _cons_pcp, _func_varias;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TfDecisionCube.FormCreate(Sender: TObject);
begin
  inherited;
  With grid do
  Begin
        DataSumColor := cocTotal;
        LabelSumColor := cocTotal;
        CaptionColor := clBtnShadow;
  End;
end;
{****************************************************************
Procedimiento   : doEjecutarCubo
Objetivo        : Valida y abre la consulta del cubo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure TfDecisionCube.doEjecutarCubo(aDataSetCubo : TDataSet = Nil;  aDataSourceParametros : TDataSource = Nil);
Var
        var_Query : TQuery;
Begin
      Try
          //Validar que no sea nula
          if (aDataSetCubo = Nil) and (DCub.DataSet = Nil) Then 
                Exception.Create(cosErrorFuenteDatosNoValida);
          //Si no es vacio, asignarlo
          if Not(aDataSetCubo = Nil) then DCub.DataSet := aDataSetCubo;
          //Llevar a una Temporal
          If (dCub.DataSet is TQuery) Then
                var_Query := (dCub.DataSet as TQuery)
          Else
                var_query := Nil;
          //Asignar la de parametros
          If Not (var_query = Nil) Then
                var_query.DataSource := aDataSourceParametros;
          If Not var_query.Active then var_query.Open;
          //Totales
          padr_chec_totales.Checked := Grid.Totals;
          ShowModal;
      Except
          On e:Exception do
          Begin
              EjecutarMensajeError(e.Message);
              Close;
          End;
      End;
End;
{****************************************************************
Procedimiento   : padr_chec_totalesChange
Objetivo        : Mostrar/Ocultar Totales
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TfDecisionCube.padr_chec_totalesChange(Sender: TObject);
begin
  inherited;
  Grid.Totals := padr_chec_totales.Checked;
end;

end.
