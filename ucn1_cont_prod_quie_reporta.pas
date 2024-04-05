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
        Unit            : ucn1_cont_prod_quie_reporta
        Objetivo        : Consulta que indica quién reportó un tiquete
                          leido (en confección)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 02-Sep-2005
        Versión         : pcp4.0.20.19
*******************************************************************}
unit ucn1_cont_prod_quie_reporta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, Db, ufra_mens_atencion, PictureContainer, DBTables,
  AdvPanel, dxExEdtr, dxCntner, SCLPropiedadesForm, DBActns,
  ActnList, ImgList, Boxes, PCPProceso, dxEditor, dxEdLib, dxDBELib,
  StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock,
  TB2Toolbar, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, SCLDBGrid;

type
  Tcn1_cont_prod_quie_reporta = class(T_fvent_modal)
    mens_info_tiquete: Tffra_mens_atencion;
    quer_info_tiquete: TQuery;
    quer_info_tiqueteFECH_LECTURA: TDateTimeField;
    quer_info_tiqueteCODI_PERSONAL: TStringField;
    quer_info_tiqueteNOMB_COMPLETO: TStringField;
    quer_info_tiqueteNUME_PAQUETE: TIntegerField;
    quer_info_tiqueteTALLA: TStringField;
    quer_info_tiqueteNOMB_COLOR: TStringField;
    quer_info_tiqueteCODI_OPER_COSTURA: TStringField;
    quer_info_tiqueteNOMB_OPER_COSTURA: TStringField;
    quer_info_tiqueteCANT_UNIDADES: TIntegerField;
    quer_info_tiqueteSECU_OPERACION: TIntegerField;
    Panel1: TPanel;
    Grid: TSCLDBGrid;
    GridFECH_LECTURA: TdxDBGridDateColumn;
    GridCODI_PERSONAL: TdxDBGridMaskColumn;
    GridNOMB_COMPLETO: TdxDBGridMaskColumn;
    GridTALLA: TdxDBGridMaskColumn;
    GridNOMB_COLOR: TdxDBGridMaskColumn;
    GridNUME_PAQUETE: TdxDBGridMaskColumn;
    GridSECU_OPERACION: TdxDBGridMaskColumn;
    GridCODI_OPER_COSTURA: TdxDBGridMaskColumn;
    GridNOMB_OPER_COSTURA: TdxDBGridMaskColumn;
    GridCANT_UNIDADES: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Ejecutar(peCodi_Barras : String);
  end;

var
  cn1_cont_prod_quie_reporta: Tcn1_cont_prod_quie_reporta;

implementation

uses _func_grids, _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : Ejectutar
Objetivo        : Ejecuta la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Sep-2005
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure Tcn1_cont_prod_quie_reporta.Ejecutar(peCodi_Barras : String);
Begin
    mens_info_tiquete.SetNormalColors;    
    if quer_info_tiquete.Active Then
        quer_info_tiquete.Close;
    mens_info_tiquete.SetCaption(mens_info_tiquete.fram_label.Text + ' ' +  peCodi_Barras);
    quer_info_tiquete.ParamByName('codi_barras').Value := peCodi_Barras;
    quer_info_Tiquete.Open;
    AjustarGrid(Grid);
    //Mostrar
    ShowModal;
End;


procedure Tcn1_cont_prod_quie_reporta.FormCreate(Sender: TObject);
begin
  inherited;
	Insertar_Palabras(Self, WKLenguaje);
end;

end.
