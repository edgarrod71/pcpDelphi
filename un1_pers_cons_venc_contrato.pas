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
        Unit            : un1_pers_cons_venc_contrato
        Objetivo        : Consulta general de contratos de personal
                          próximos a vencerse y cuyos días faltantes
                          han sobrepasado el tiempo del aviso
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 09-Ago-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit un1_pers_cons_venc_contrato;

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
  Tfn1_pers_cons_venc_contrato = class(T_fvent_child)
    consultaCONS_PERSONAL: TIntegerField;
    consultaCODI_PERSONAL: TStringField;
    consultaNOMB_COMPLETO: TStringField;
    consultaNOMB_EMPRESA: TStringField;
    consultaNOMB_AREA: TStringField;
    consultaNOMB_PLANTA: TStringField;
    consultaNOMB_LINEA: TStringField;
    consultaNOMB_SECCION: TStringField;
    consultaNOMB_BODEGA: TStringField;
    consultaNOMB_PERS_CARGO: TStringField;
    consultaNOMB_PERS_CENT_COSTO: TStringField;
    consultaNOMB_COST_GRUPO: TStringField;
    consultaNOMB_PERS_TIPO_CONTRATO: TStringField;
    consultaNUME_CONTRATO: TStringField;
    consultaNOMB_PERI_PAGO: TStringField;
    consultaESTADO: TStringField;
    consultaCODI_TURNO: TStringField;
    consultaTIPO_TURNO: TStringField;
    consultaFECH_INGRESO: TDateTimeField;
    consultaDURACION: TFloatField;
    consultaDIAS_VENCIMIENTO: TIntegerField;
    consultaFECH_VENCIMIENTO: TDateTimeField;
    padr_gridCONS_PERSONAL: TdxDBGridMaskColumn;
    padr_gridCODI_PERSONAL: TdxDBGridMaskColumn;
    padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn;
    padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn;
    padr_gridNOMB_AREA: TdxDBGridMaskColumn;
    padr_gridNOMB_PLANTA: TdxDBGridMaskColumn;
    padr_gridNOMB_LINEA: TdxDBGridMaskColumn;
    padr_gridNOMB_SECCION: TdxDBGridMaskColumn;
    padr_gridNOMB_BODEGA: TdxDBGridMaskColumn;
    padr_gridCODI_TURNO: TdxDBGridMaskColumn;
    padr_gridTIPO_TURNO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_CARGO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_CENT_COSTO: TdxDBGridMaskColumn;
    padr_gridNOMB_COST_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn;
    padr_gridNUME_CONTRATO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERI_PAGO: TdxDBGridMaskColumn;
    padr_gridESTADO: TdxDBGridImageColumn;
    padr_gridFECH_INGRESO: TdxDBGridDateColumn;
    padr_gridDURACION: TdxDBGridMaskColumn;
    padr_gridFECH_VENCIMIENTO: TdxDBGridDateColumn;
    padr_gridDIAS_VENCIMIENTO: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_pers_cons_venc_contrato: Tfn1_pers_cons_venc_contrato;

implementation

{$R *.DFM}

end.
