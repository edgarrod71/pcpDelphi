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
        Unit            : ucn1_cont_nove_defe_orde_produccion
        Objetivo        : Consulta de defectos de producción por
                          orden de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 14 de 2005
        Versión         : pcp4.0.0.17
*******************************************************************}

unit ucn1_cont_nove_defe_orde_produccion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, Boxes, PCPFrame, StdCtrls, SoCtrls, SCLDBLabel,
  RxLookup, PCPLookUpComboEdit, dxDBTLCl, dxGrClms, ufra_edit_reportes;

type
  Tfcn1_cont_nove_defe_orde_produccion = class(T_fvent_child)
    PCPFrame1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    comb_prod_orden: TPCPLookUpComboEdit;
    comb_prod_lote: TPCPLookUpComboEdit;
    quer_prod_ordenes: TQuery;
    data_prod_ordenes: TDataSource;
    quer_prod_ordenesCONS_PROD_ORDEN: TIntegerField;
    quer_prod_ordenesNUME_PROD_ORDEN: TStringField;
    quer_prod_ordenesCONS_REFERENCIA: TIntegerField;
    quer_prod_ordenesCODI_REFERENCIA: TStringField;
    quer_prod_ordenesCODI_INTE_REFERENCIA: TStringField;
    quer_prod_ordenesNOMB_REFERENCIA: TStringField;
    quer_prod_ordenesANULADA: TIntegerField;
    quer_prod_ordenesFINALIZADO: TIntegerField;
    quer_prod_lotes: TQuery;
    data_prod_lotes: TDataSource;
    consultaCONS_CONT_NOVE_DEFE_FABRICACION: TIntegerField;
    consultaCONS_CALI_DEFECTO: TIntegerField;
    consultaCODI_CALI_DEFECTO: TStringField;
    consultaNOMB_CALI_DEFECTO: TStringField;
    consultaCONS_PROD_ORDEN: TIntegerField;
    consultaNUME_PROD_ORDEN: TStringField;
    consultaCONS_PROD_LOTE: TIntegerField;
    consultaNUME_LOTE: TIntegerField;
    consultaNUME_PAQUETE: TIntegerField;
    consultaSECU_OPERACION: TIntegerField;
    consultaCODI_OPER_COSTURA: TStringField;
    consultaNOMB_OPER_COSTURA: TStringField;
    consultaFECH_DEFECTO: TDateTimeField;
    consultaCONS_CONT_NOVE_DIARIA: TIntegerField;
    consultaCANT_UNID_DEFECTUOSAS: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_CONT_NOVE_DEFE_FABRICACION: TdxDBGridMaskColumn;
    padr_gridCONS_CALI_DEFECTO: TdxDBGridMaskColumn;
    padr_gridCODI_CALI_DEFECTO: TdxDBGridMaskColumn;
    padr_gridNOMB_CALI_DEFECTO: TdxDBGridMaskColumn;
    padr_gridCONS_PROD_ORDEN: TdxDBGridMaskColumn;
    padr_gridNUME_PROD_ORDEN: TdxDBGridMaskColumn;
    padr_gridCONS_PROD_LOTE: TdxDBGridMaskColumn;
    padr_gridNUME_LOTE: TdxDBGridMaskColumn;
    padr_gridNUME_PAQUETE: TdxDBGridMaskColumn;
    padr_gridSECU_OPERACION: TdxDBGridMaskColumn;
    padr_gridCODI_OPER_COSTURA: TdxDBGridMaskColumn;
    padr_gridNOMB_OPER_COSTURA: TdxDBGridMaskColumn;
    padr_gridFECH_DEFECTO: TdxDBGridDateColumn;
    padr_gridCONS_CONT_NOVE_DIARIA: TdxDBGridMaskColumn;
    padr_gridCONS_PERS_ASIGNADO: TdxDBGridMaskColumn;
    padr_gridCANT_UNID_DEFECTUOSAS: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure consultaAfterOpen(DataSet: TDataSet);
    procedure consultaBeforeOpen(DataSet: TDataSet);
    procedure doActualizarConsulta(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcn1_cont_nove_defe_orde_produccion: Tfcn1_cont_nove_defe_orde_produccion;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 14 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfcn1_cont_nove_defe_orde_produccion.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  AbrirDataSet(quer_prod_ordenes);
  AbrirDataSet(quer_prod_lotes);
	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : consultaAfterOpen
Objetivo        : Actualizar los controles una vez abierta la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 14 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfcn1_cont_nove_defe_orde_produccion.consultaAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  //Mostrar el grid
  padr_grid.Visible := True;
  padr_acti_mejo_ajuste.Execute;
end;
{****************************************************************
Procedimiento   : consultaBeforeOpen
Objetivo        : Preparar la consulta antes de abrirla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfcn1_cont_nove_defe_orde_produccion.consultaBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  //Parametros de la consulta
  With consulta do
  Begin
       //Validar que exista orden de producción
       If comb_prod_orden.EstaVacio then Exit;
       //Filtrar si hay lote
       if Not comb_prod_lote.EstaVacio Then
            Consulta.Filter := 'cons_prod_lote ='+ IntToStr(comb_prod_lote.KeyValue)
       Else
            Consulta.Filter := '';
       Consulta.Filtered := Not comb_prod_lote.EstaVacio;
       Consulta.ParamByName('cons_prod_orden').Value := comb_prod_orden.KeyValue;
       //Abrir la consulta
       data_Ventana.DataSet := Consulta;
  End;
end;
{****************************************************************
Procedimiento   : comb_prod_ordenChange
Objetivo        : Actualizar la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 15 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfcn1_cont_nove_defe_orde_produccion.doActualizarConsulta(
  Sender: TObject);
begin
  inherited;
  RefreshDataSet(Consulta);
end;

end.
