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
        Unit            : un1_plan_orde_expl_materiales
        Objetivo        : Explosión de materiales por orden de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Febrero 01 de 2005
        Versión         : pcp4.0.20.0
*******************************************************************}
unit un1_plan_orde_expl_materiales;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_prod_padr_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, TBXDkPanels,
  TBXButtonSCL, RxLookup, PCPLookUpComboEdit, dxEditor, dxEdLib, dxDBELib,
  StdCtrls, SoCtrls, SCLDBLabel, Boxes, PCPFrame, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid,
  dxPageControl, dxDBTLCl, dxGrClms, ufra_edit_reportes;

type
  Tfn1_plan_orde_expl_materiales = class(Tfn1_prod_padr_child)
    consultaTIPO: TIntegerField;
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
    consultaCOST_UNIDAD: TFloatField;
    consultaCOST_TOTAL: TFloatField;
    consultaEXISTENTE: TFloatField;
    consultaDISPONIBLE: TFloatField;
    consultaENTREGADO: TFloatField;
    consultaDIFERENCIA: TFloatField;
    padr_gridTIPO: TdxDBGridImageColumn;
    padr_gridCONS_REFE_MATERIAL: TdxDBGridMaskColumn;
    padr_gridCONS_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCONS_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_PROVEEDOR: TdxDBGridMaskColumn;
    padr_gridCODI_PROVEEDOR: TdxDBGridMaskColumn;
    padr_gridNOMB_PROVEEDOR: TdxDBGridMaskColumn;
    padr_gridCONS_COLOR: TdxDBGridMaskColumn;
    padr_gridCODI_COLOR: TdxDBGridMaskColumn;
    padr_gridNOMB_COLOR: TdxDBGridMaskColumn;
    padr_gridNOMB_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridCONS_UNIDAD: TdxDBGridMaskColumn;
    padr_gridCONS_TOTAL: TdxDBGridMaskColumn;
    padr_gridCOST_UNIDAD: TdxDBGridMaskColumn;
    padr_gridCOST_TOTAL: TdxDBGridMaskColumn;
    padr_gridEXISTENTE: TdxDBGridMaskColumn;
    padr_gridDISPONIBLE: TdxDBGridMaskColumn;
    padr_gridENTREGADO: TdxDBGridMaskColumn;
    padr_gridDIFERENCIA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure padr_comb_nume_ordenChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_plan_orde_expl_materiales: Tfn1_plan_orde_expl_materiales;

implementation

uses _func_varias, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 01 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_plan_orde_expl_materiales.FormCreate(Sender: TObject);
begin
  inherited;
  LoteVisible := False; 
  Insertar_Palabras(Self, WKLenguaje);
end;

procedure Tfn1_plan_orde_expl_materiales.padr_comb_nume_ordenChange(
  Sender: TObject);
begin
  inherited;
  if Not Consulta.Active then Exit;
  //Ajustar el grid
  AjustarGrid(padr_grid);
end;

end.
