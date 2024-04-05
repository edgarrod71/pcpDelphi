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
        Unit            : un1_come_pedi_expl_detallada
        Objetivo        : Explosión detallada de materiales por pedido
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 23 de 2004
        Versión         : pcp4006
*******************************************************************}

unit un1_come_pedi_expl_detallada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, ufra_info_refe_basico, ufra_come_sele_pedido,
  RxMemDS, dxDBTLCl, dxGrClms, un1_come_expl_padre, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  Tfn1_come_pedi_expl_detallada = class(Tfn1_come_expl_padre)
    consultaTIPO: TIntegerField;
    consultaCONS_PEDI_REFERENCIA: TIntegerField;
    consultaNUME_PEDIDO: TStringField;
    consultaORDE_COMPRA: TStringField;
    consultaCONS_REFE_MATERIAL: TIntegerField;
    consultaCONS_MATE_REFERENCIA: TIntegerField;
    consultaCODI_MATE_REFERENCIA: TStringField;
    consultaNOMB_MATE_REFERENCIA: TStringField;
    consultaCONS_MATE_GRUPO: TIntegerField;
    consultaCODI_MATE_GRUPO: TStringField;
    consultaNOMB_MATE_GRUPO: TStringField;
    consultaCONS_MATE_SUBGRUPO: TIntegerField;
    consultaCODI_MATE_SUBGRUPO: TStringField;
    consultaNOMB_MATE_SUBGRUPO: TStringField;
    consultaCONS_PROVEEDOR: TIntegerField;
    consultaCODI_PROVEEDOR: TIntegerField;
    consultaNOMB_PROVEEDOR: TIntegerField;
    consultaCONS_COLOR: TIntegerField;
    consultaCODI_COLOR: TStringField;
    consultaNOMB_COLOR: TStringField;
    consultaNOMB_UNID_MEDIDA: TStringField;
    consultaCONS_UNIDAD: TFloatField;
    consultaCONS_TOTAL: TFloatField;
    consultaEXISTENTE: TFloatField;
    consultaDISPONIBLE: TFloatField;
    consultaENTREGADO: TFloatField;
    consultaDIFERENCIA: TFloatField;
    padr_gridTIPO: TdxDBGridImageColumn;
    padr_gridCONS_PEDI_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNUME_PEDIDO: TdxDBGridMaskColumn;
    padr_gridORDE_COMPRA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_MATERIAL: TdxDBGridMaskColumn;
    padr_gridCONS_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCONS_PROVEEDOR: TdxDBGridMaskColumn;
    padr_gridCODI_PROVEEDOR: TdxDBGridMaskColumn;
    padr_gridNOMB_PROVEEDOR: TdxDBGridMaskColumn;
    padr_gridCONS_COLOR: TdxDBGridMaskColumn;
    padr_gridCODI_COLOR: TdxDBGridMaskColumn;
    padr_gridNOMB_COLOR: TdxDBGridMaskColumn;
    padr_gridCONS_UNIDAD: TdxDBGridMaskColumn;
    padr_gridNOMB_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridCONS_TOTAL: TdxDBGridMaskColumn;
    padr_gridEXISTENTE: TdxDBGridMaskColumn;
    padr_gridDISPONIBLE: TdxDBGridMaskColumn;
    padr_gridENTREGADO: TdxDBGridMaskColumn;
    padr_gridDIFERENCIA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_come_pedi_expl_detallada: Tfn1_come_pedi_expl_detallada;

implementation

uses _func_varias, _MDI, _Traductor;

{$R *.DFM}

procedure Tfn1_come_pedi_expl_detallada.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
