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
        Unit            : un1_pers_hist_movimientos
        Objetivo        : Consulta del historial de movimientos
                          de personal
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 09-Ago-2005
        Versión         : pcp4.0.20.17
*******************************************************************}
unit un1_pers_hist_movimientos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ufra_edit_reportes,
  ExtCtrls, dfsSplitter, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels,
  TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, kbmMemTable, StdCtrls, SoCtrls, SCLDBLabel, dxEditor,
  dxEdLib, dxDBELib, RxLookup, PCPLookUpComboEdit;

type
  Tfn1_pers_hist_movimientos = class(T_fvent_child)
    consultaCONS_PERS_MOVIMIENTO: TIntegerField;
    consultaFECH_INICIAL: TDateTimeField;
    consultaFECH_FINAL: TDateTimeField;
    consultaES_ANULADO: TIntegerField;
    consultaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    consultaCODI_PERS_TIPO_MOVIMIENTO: TStringField;
    consultaNOMB_PERS_TIPO_MOVIMIENTO: TStringField;
    consultaCONS_FAMI_MOVIMIENTO: TIntegerField;
    consultaCODI_FAMI_MOVIMIENTO: TStringField;
    consultaNOMB_FAMI_MOVIMIENTO: TStringField;
    consultaCONS_ESTADO: TIntegerField;
    consultaCODI_ESTADO: TStringField;
    consultaNOMB_ESTADO: TStringField;
    consultaCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField;
    consultaCODI_PERS_MOVI_TIPO_DOCUMENTO: TStringField;
    consultaNOMB_PERS_MOVI_TIPO_DOCUMENTO: TStringField;
    consultaNUME_DOCUMENTO: TStringField;
    consultaCONS_SOLICITA: TIntegerField;
    consultaCODI_SOLICITA: TStringField;
    consultaNOMB_SOLICITA: TStringField;
    consultaCONS_APROBO: TIntegerField;
    consultaCODI_APROBO: TStringField;
    consultaNOMB_APROBO: TStringField;
    consultaOBSERVACIONES: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_PERS_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridFECH_INICIAL: TdxDBGridDateColumn;
    padr_gridFECH_FINAL: TdxDBGridDateColumn;
    padr_gridES_ANULADO: TdxDBGridImageColumn;
    padr_gridCONS_FAMI_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridCODI_FAMI_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_FAMI_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridCONS_PERS_TIPO_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridCODI_PERS_TIPO_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_TIPO_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridCONS_ESTADO: TdxDBGridImageColumn;
    padr_gridCODI_ESTADO: TdxDBGridMaskColumn;
    padr_gridNOMB_ESTADO: TdxDBGridMaskColumn;
    padr_gridCONS_PERS_MOVI_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridCODI_PERS_MOVI_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_MOVI_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridNUME_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridCONS_SOLICITA: TdxDBGridMaskColumn;
    padr_gridCODI_SOLICITA: TdxDBGridMaskColumn;
    padr_gridNOMB_SOLICITA: TdxDBGridMaskColumn;
    padr_gridCONS_APROBO: TdxDBGridMaskColumn;
    padr_gridCODI_APROBO: TdxDBGridMaskColumn;
    padr_gridNOMB_APROBO: TdxDBGridMaskColumn;
    padr_gridOBSERVACIONES: TdxDBGridBlobColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    tabl_filtro: TkbmMemTable;
    data_filtro: TDataSource;
    tabl_filtrocons_personal: TIntegerField;
    tabl_filtrofech_inicial: TDateField;
    tabl_filtrofech_final: TDateField;
    PCPFrame1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    quer_pers_codigo: TQuery;
    quer_pers_nombres: TQuery;
    data_pers_codigo: TDataSource;
    data_pers_nombres: TDataSource;
    comb_pers_codigo: TPCPLookUpComboEdit;
    comb_pers_nombre: TPCPLookUpComboEdit;
    comb_fech_inicial: TdxDBDateEdit;
    comb_fech_final: TdxDBDateEdit;
    chec_ver_anulados: TdxCheckEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GuardarLosCambios(Sender: TObject);
    procedure chec_ver_anuladosChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_pers_hist_movimientos: Tfn1_pers_hist_movimientos;

implementation

uses _uData, _func_varias, _MDI;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles al mostrar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.17
*****************************************************************}
procedure Tfn1_pers_hist_movimientos.FormShow(Sender: TObject);
begin
  inherited;
  //Asignar la consulta principal al DS de la ventana
  if (data_ventana.DataSet = Nil) Then
     data_Ventana.DataSet := Consulta;
  if Not Consulta.Active Then AbrirDataSet(Consulta);
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.17
*****************************************************************}
procedure Tfn1_pers_hist_movimientos.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  AbrirDataSet(tabl_filtro);
  AbrirDataSet(quer_pers_codigo);
  AbrirDataSet(quer_pers_nombres);
end;
{****************************************************************
Procedimiento   : GuardarLosCambios
Objetivo        : Guardar los cambios para actualizar la consulta
                  del personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_hist_movimientos.GuardarLosCambios(
  Sender: TObject);
begin
  inherited;
  CheckAndPostDataSet(tabl_Filtro);
end;
{****************************************************************
Procedimiento   : chec_ver_anuladosChange
Objetivo        : Filtrar para mostrar los anulados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_hist_movimientos.chec_ver_anuladosChange(
  Sender: TObject);
begin
  inherited;
  CheckAndPostDataSet(tabl_Filtro);
  Consulta.Filtered := Not chec_ver_anulados.Checked;
end;

end.
