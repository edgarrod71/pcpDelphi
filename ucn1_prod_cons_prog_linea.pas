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
        Unit            : ucn1_prod_cons_prog_linea
        Objetivo        : Consulta de la programación de producción
                          por línea
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Diciembre 10 de 2004
        Versión         : pcp4.0.0.10
*******************************************************************}
unit ucn1_prod_cons_prog_linea;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, RxMemDS, Db, ufra_prod_plan_detallada, dxEditor, dxExEdtr,
  dxEdLib, RxLookup, PCPLookUpComboEdit, Boxes, PCPFrame, PictureContainer,
  DBTables, AdvPanel, dxCntner, SCLPropiedadesForm, DBActns,
  ActnList, ImgList, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls,
  TB2Item, TBX, TB2Dock, TB2Toolbar, PCPProceso;

type
  Tcn1_prod_cons_prog_linea = class(T_fvent_modal)
    quer_empresas: TQuery;
    quer_empresasCONS_EMPRESA: TIntegerField;
    quer_empresasNOMB_EMPRESA: TStringField;
    data_empresas: TDataSource;
    quer_plantas: TQuery;
    quer_plantasCONS_PLANTA: TIntegerField;
    quer_plantasNOMB_PLANTA: TStringField;
    data_plantas: TDataSource;
    quer_plan_lineas: TQuery;
    quer_plan_lineasCONS_PLAN_LINEA: TIntegerField;
    quer_plan_lineasCONS_LINEA: TIntegerField;
    quer_plan_lineasCODI_LINEA: TStringField;
    quer_plan_lineasNOMB_LINEA: TStringField;
    data_plan_lineas: TDataSource;
    myTabla_Ventana: TRxMemoryData;
    pane_info_destino: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel12: TSCLDBLabel;
    SCLDBLabel13: TSCLDBLabel;
    comb_empresa: TPCPLookUpComboEdit;
    comb_planta: TPCPLookUpComboEdit;
    comb_turno: TPCPLookUpComboEdit;
    comb_linea: TPCPLookUpComboEdit;
    pane_sele_fechas: TPanel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    edit_fech_inicial: TdxDateEdit;
    edit_fech_final: TdxDateEdit;
    fram_plan_Detallada: Tffra_prod_plan_detallada;
    procedure FormCreate(Sender: TObject);
    procedure doActualizarFrame(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cn1_prod_cons_prog_linea: Tcn1_prod_cons_prog_linea;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 10 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tcn1_prod_cons_prog_linea.FormCreate(Sender: TObject);
begin
  inherited;
  edit_fech_inicial.Date := NowDate - 15;
  edit_fech_final.Date := NowDate + 15;
  //Abrir las consultas
  AbrirDataSet(quer_empresas);
  AbrirDataSet(quer_plantas);
  AbrirDataSet(quer_plan_lineas);
  fram_plan_Detallada.Grid.GridLineColor := clWhite;
  fram_plan_Detallada.Grid.GridLineWidth := 1;
	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : doActualizarFrame
Objetivo        : Actualiza el frame de planeación con los datos dados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 10 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tcn1_prod_cons_prog_linea.doActualizarFrame(Sender: TObject);
begin
  inherited;
  CheckAndPostDataSet(myTabla_Ventana);
  With myTabla_Ventana do
     fram_plan_detallada.doEjecutarFrame(edit_Fech_inicial.Date, edit_fech_Final.Date,
        0, FieldByName('cons_empresa').asInteger, FieldByName('cons_planta').asInteger,
        FieldByName('cons_plan_linea').asInteger);
end;

end.
