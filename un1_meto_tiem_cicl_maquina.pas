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
        Unit            : un1_meto_tiem_cicl_maquina
        Objetivo        : Maestro de tiempos de ciclo para máquinas
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 14-Abr-2005
        Versión         : pcp4.0.20.6
*******************************************************************}

unit un1_meto_tiem_cicl_maquina;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ufra_edit_reportes,
  ExtCtrls, dfsSplitter, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels,
  TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms;

type
  Tfn1_meto_tiem_cicl_maquina = class(T_fvent_child)
    consultaCONS_METO_TIEM_CICLO: TIntegerField;
    consultaCODI_METO_TIEM_CICLO: TStringField;
    consultaNOMB_METO_TIEM_CICLO: TStringField;
    consultaCONS_RECU_GRUPO: TIntegerField;
    consultaCODI_RECU_GRUPO: TStringField;
    consultaNOMB_RECU_GRUPO: TStringField;
    consultaCONS_RECU_TIPO: TIntegerField;
    consultaCODI_RECU_TIPO: TStringField;
    consultaNOMB_RECU_TIPO: TStringField;
    consultaCONS_RECU_FAMILIA: TIntegerField;
    consultaCODI_RECU_FAMILIA: TStringField;
    consultaNOMB_RECU_FAMILIA: TStringField;
    consultaCARACTERISTICAS: TStringField;
    consultaTIEM_CST: TFloatField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_METO_TIEM_CICLO: TdxDBGridMaskColumn;
    padr_gridCODI_METO_TIEM_CICLO: TdxDBGridMaskColumn;
    padr_gridNOMB_METO_TIEM_CICLO: TdxDBGridMaskColumn;
    padr_gridCONS_RECU_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_RECU_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_RECU_GRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_RECU_TIPO: TdxDBGridMaskColumn;
    padr_gridCODI_RECU_TIPO: TdxDBGridMaskColumn;
    padr_gridNOMB_RECU_TIPO: TdxDBGridMaskColumn;
    padr_gridCONS_RECU_FAMILIA: TdxDBGridMaskColumn;
    padr_gridCODI_RECU_FAMILIA: TdxDBGridMaskColumn;
    padr_gridNOMB_RECU_FAMILIA: TdxDBGridMaskColumn;
    padr_gridCARACTERISTICAS: TdxDBGridMaskColumn;
    padr_gridTIEM_CST: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaTIEM_ASIGNADO: TFloatField;
    padr_gridTIEM_ASIGNADO: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_meto_tiem_cicl_maquina: Tfn1_meto_tiem_cicl_maquina;

implementation

uses _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles de la ventana al
                  mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_meto_tiem_cicl_maquina.FormShow(Sender: TObject);
begin
  inherited;
  //Titulo de la columna de tiempo asignado (unidad de medida)
  padr_gridTIEM_ASIGNADO.Caption := _fmdi.tabl_pcp_opciones.FieldByName('inge_meto_unid_medida').AsString;
end;

procedure Tfn1_meto_tiem_cicl_maquina.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
