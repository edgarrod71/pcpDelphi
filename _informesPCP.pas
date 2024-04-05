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
        Unit            : _informesPCP
        Objetivo        : Ventana maestra de informes para la
                          versión 4 de PCP (a partir de RC20.9)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 24-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}
unit _informesPCP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLXLSFilter, RLRichFilter, RLFilters, RLPDFFilter, RLParser,
  RLDraftFilter, Db, ActnList;

type
  T_fInformesPCP = class(TForm)
    Reporte: TRLReport;
    padr_RLExpressionParser1: TRLExpressionParser;
    padr_band_titulo: TRLBand;
    padr_band_pie: TRLBand;
    padr_labe_pcp: TRLLabel;
    data_reporte: TDataSource;
    padr_acciones: TActionList;
    padr_pane_titulo: TRLPanel;
    padr_labe_nomb_reporte: TRLSystemInfo;
    padr_repo_pane_info_top: TRLPanel;
    padr_pane_rl_fech_pagina: TRLPanel;
    adr_repo_labe_fech_sistema: TRLLabel;
    padr_repo_labe_pagina: TRLLabel;
    padr_repo_edit_fech_sistema: TRLSystemInfo;
    padr_repo_edit_pagi_actual: TRLSystemInfo;
    padr_repo_edit_page_hasta: TRLSystemInfo;
    padr_repo_labe_page_separador: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Preview(peFormStyle : TFormStyle = fsMDIChild; peModal : Boolean = False;
         peWindowState : TWindowState = wsMaximized);
  end;

var
  _fInformesPCP: T_fInformesPCP;

implementation

uses _cons_pcp, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormClose
Objetivo        : Libera la ventana al cerrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure T_fInformesPCP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Release;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure T_fInformesPCP.FormCreate(Sender: TObject);
begin
        //Inicializar
        padr_labe_pcp.Caption := cosNombreAplicacion;
	Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Preview
Objetivo        : Mostrar la vista previa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure T_fInformesPCP.Preview;
Begin
    //Preparar la vista previa
    With Reporte.PreviewOptions do
    Begin
        FormStyle := peFormStyle;
        ShowModal := peModal;
        WindowState := peWindowState;
        Caption := Reporte.Title;
    End;
    Reporte.ShowProgress := True;
    Reporte.Preview;
    Close;
End;

end.
