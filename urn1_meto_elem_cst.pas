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
        Unit            : urn1_meto_elem_cst
        Objetivo        : Listado de gestos por elemento CST
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Octubre 12 de 2004
        Versión         : pcp4003
*******************************************************************}

unit urn1_meto_elem_cst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _Informes, Menus, TB2Item, TBX, pcpQRControl, Db, ActnList, DBTables,
  dxfDesigner, QRExport, JvExControls, JvComponent, JvGradientHeaderPanel,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ZPropLst,
  dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame, ExtCtrls, dfsSplitter,
  TBXDkPanels, TB2Dock, TB2Toolbar, Qrctrls, PCPQRForma, PCPQrImage,
  PCPQrLabel, QuickRpt, PCPQRBand, PCPQuickReport, PCPQrDBText, SCLTabs;

type
  Trn1_meto_elem_cst = class(TFInformes)
    padr_cuad_1: TPCPQrForma;
    PCPQrForma1: TPCPQrForma;
    qrla_info_referencia: tPCPQrLabel;
    padr_cir: tPCPQrLabel;
    padr_cir_db: TPCPQRDBText;
    PCPQrForma2: TPCPQrForma;
    tPCPQrLabel1: tPCPQrLabel;
    PCPQRDBText1: TPCPQRDBText;
    PCPQrForma3: TPCPQrForma;
    tPCPQrLabel2: tPCPQrLabel;
    PCPQRDBText2: TPCPQRDBText;
    PCPQrForma4: TPCPQrForma;
    PCPQrForma5: TPCPQrForma;
    tPCPQrLabel3: tPCPQrLabel;
    PCPQRDBText3: TPCPQRDBText;
    tPCPQrLabel4: tPCPQrLabel;
    PCPQRDBText4: TPCPQRDBText;
    PCPQrForma6: TPCPQrForma;
    tPCPQrLabel5: tPCPQrLabel;
    PCPQRDBText5: TPCPQRDBText;
    PCPQrForma7: TPCPQrForma;
    tPCPQrLabel6: tPCPQrLabel;
    PCPQRDBText6: TPCPQRDBText;
    grup_detalle: TQRGroup;
    dato_detalle: TQRSubDetail;
    foot_detalle: TQRBand;
    tPCPQrLabel11: tPCPQrLabel;
    tPCPQrLabel7: tPCPQrLabel;
    PCPQrForma10: TPCPQrForma;
    tPCPQrLabel8: tPCPQrLabel;
    tPCPQrLabel9: tPCPQrLabel;
    tPCPQrLabel10: tPCPQrLabel;
    tPCPQrLabel12: tPCPQrLabel;
    qrla_tiempo2: tPCPQrLabel;
    PCPQRDBText7: TPCPQRDBText;
    PCPQRDBText8: TPCPQRDBText;
    PCPQRDBText9: TPCPQRDBText;
    PCPQRDBText10: TPCPQRDBText;
    PCPQRDBText11: TPCPQRDBText;
    PCPQRDBText12: TPCPQRDBText;
    PCPQRDBText13: TPCPQRDBText;
    quer_encabezado: TQuery;
    quer_detalle: TQuery;
    data_encabezado: TDataSource;
    quer_encabezadoCODI_ELEM_CST: TStringField;
    quer_encabezadoNOMB_ELEM_CST: TStringField;
    quer_encabezadoNOMB_CST_DIFICULTAD: TStringField;
    quer_encabezadoNOMB_CST_DISTANCIA: TStringField;
    quer_encabezadoNOMB_CST_POSICIONAMIENTO: TStringField;
    quer_encabezadoTIEM_CST: TFloatField;
    quer_encabezadoNOMB_ANALISTA: TStringField;
    quer_encabezadoFECH_MODIFICACION: TDateTimeField;
    quer_encabezadoDESCRIPCION: TStringField;
    quer_detalleSECU_MOVIMIENTO: TIntegerField;
    quer_detalleCODI_MANO_DERECHA: TStringField;
    quer_detalleNOMB_MANO_DERECHA: TStringField;
    quer_detalleCODI_MANO_IZQUIERDA: TStringField;
    quer_detalleNOMB_MANO_IZQUIERDA: TStringField;
    quer_detalleTIEM_MOVIMIENTO: TFloatField;
    quer_detalleTIEM_2: TFloatField;
    qrex_tiem_movimiento: TQRExpr;
    qrex_sum_tiem_2: TQRExpr;
    QRLabel1: TQRLabel;
    PCPQrForma8: TPCPQrForma;
    PCPQrForma9: TPCPQrForma;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    procedure quer_detalleCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure doEjectuarInforme(peCodi_elem_cst : String);
  end;


var
  rn1_meto_elem_cst: Trn1_meto_elem_cst;

implementation

uses _MDI, _func_pcp, _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : doEjectuarInforme
Objetivo        : Preparar y ejecutar el informe
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
Procedure Trn1_meto_elem_cst.doEjectuarInforme(peCodi_elem_cst : String);
Begin
    //Elimino las firmas, fecha de impresión, página, etc, que no esten
    //seleccionados en las opciones de impresión
    Opciones_Impresion[2]  := 'S'; //Habilitar la pagina
    Opciones_Impresion[3]  := 'S'; //Habilitar la fecha
    Opciones_Impresion[12] := ''; //Deshabilitar la priorida
    Elegir_Firmas;
    //Abrir la consulta
    with quer_encabezado do
        Begin
            ParamByName('codi_elem_cst').Value := peCodi_elem_cst;
            AbrirDataSet(quer_encabezado);
        End;
    //Abrir la consulta detalle
    AbrirDataSet(quer_Detalle);
    //Título de la columna de la segunda unidad de medida
    qrla_tiempo2.Caption := _fmdi.tabl_pcp_opciones.FieldByName('inge_meto_unid_medida').AsString;
    //Formato de los campos de tiempo
    quer_detalleTIEM_MOVIMIENTO.DisplayFormat :=  formatoFloat;
    quer_detalleTIEM_2.DisplayFormat :=  formatoFloat;
    qrex_tiem_movimiento.mask := formatoFloat;
    qrex_sum_tiem_2.mask := formatoFloat;
    //Mostrar el informe
    Acti_informe.Execute;
    Close;
End;

{****************************************************************
Procedimiento   : quer_detalleCalcFields
Objetivo        : Calcular los valores adicionales de la consulta
                  detalle
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Trn1_meto_elem_cst.quer_detalleCalcFields(DataSet: TDataSet);
begin
  inherited;
  //Tiempo en la unidad secundaria
  With quer_detalle do
    FieldByName('tiem_2').Value :=  FieldByName('tiem_movimiento').AsFloat * _fmdi.Tabl_pcp_opciones.FieldByName('inge_meto_unid_medi_factor').AsFloat;
end;

procedure Trn1_meto_elem_cst.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
