{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeaci�n y Control de la Producci�n                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo est� protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducci�n no autorizada, la ingenier�a inversa y la   }
{       distribuci�n total o parcial del c�digo contenido en este   }
{       archivo est� estrictamente prohibido y podr� tener severas  }
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
        Unit            : ufra_list_rapida
        Objetivo        : Frame de listas r�pidas para b�squedas
                          y visualizaci�n de datos
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 18-Abr-2005
        Versi�n         : pcp4.0.20.6
*******************************************************************}
unit ufra_list_rapida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Db;

type
  Tffra_list_rapida = class(TFrame)
    GridGrid: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    data_lista: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Ejecutar(peDataSet : TDataSet; peKeyFieldName : String);
  end;

implementation

uses _uData, {_func_grids_cx,} _func_varias;

{$R *.DFM}
{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecuta con el DS seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Abr-2005
Versi�n         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_list_rapida.Ejecutar(peDataSet : TDataSet; peKeyFieldName : String);
Var
        var_ControlesActivos    : Boolean;
Begin
{        Try
          var_ControlesActivos := Not peDataSet.ControlsDisabled;
          peDataSet.DisableControls;
          //Validar
          if (peDataSet = Nil) Then Exit;
          if (Not peDataSet.Active) Then Exit;
          //Crear las columnas
          GridCrearColumnas(GridGrid, peDataSet);
          //Configurar el Grid
          GridGrid.DataController.KeyFieldNames := peKeyFieldName;
          data_lista.DataSet := peDataSet;
        Except
           On e:Exception do
              EjecutarMensajeError(e.Message);
        End;
        //Reactivar los controles
        if var_ControlesActivos Then
              peDataSet.EnableControls;}

End;

end.
