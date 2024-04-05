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
        Unit            : urn1_prod_dist_paquetes1
        Objetivo        : Informe de distribución de paquetes
        Realizado por   : Tecnologia
        Fecha           : 07-Oct-2005
        Versión         : pcp4000 RC20.19
*******************************************************************}
unit urn1_prod_dist_paquetes1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_prod_base_informe, Db, DBTables, ActnList, RLParser, RLReport;

type
  Trn1_prod_dist_paquetes1 = class(Trn1_prod_base_informe)
    quer_dist_paquetes: TQuery;
    quer_prod_ordenNUME_PROD_ORDEN: TStringField;
    quer_prod_ordenUNIDADES: TIntegerField;
    quer_prod_ordenNOMB_CLIENTE: TStringField;
    quer_prod_ordenCODI_REFERENCIA: TStringField;
    quer_prod_ordenCODI_INTE_REFERENCIA: TStringField;
    quer_prod_ordenNOMB_REFERENCIA: TStringField;
    quer_prod_ordenMOLDE: TStringField;
    quer_prod_ordenNOMB_REFE_ESTILO: TStringField;
    quer_prod_ordenNOMB_REFE_TEMPORADA: TStringField;
    quer_prod_ordenNOMB_REFE_MARCA: TStringField;
    quer_prod_ordenNOMB_REFE_GRUPO: TStringField;
    quer_prod_ordenNOMB_REFE_EDAD: TStringField;
    quer_prod_ordenPEDIDOS: TStringField;
    quer_prod_loteNUME_LOTE: TIntegerField;
    quer_prod_loteNUME_PROD_ORDEN: TStringField;
    quer_prod_loteUNIDADES: TIntegerField;
    quer_prod_loteNOMB_CLIENTE: TStringField;
    quer_prod_loteCODI_REFERENCIA: TStringField;
    quer_prod_loteCODI_INTE_REFERENCIA: TStringField;
    quer_prod_loteNOMB_REFERENCIA: TStringField;
    quer_prod_loteMOLDE: TStringField;
    quer_prod_loteNOMB_REFE_ESTILO: TStringField;
    quer_prod_loteNOMB_REFE_TEMPORADA: TStringField;
    quer_prod_loteNOMB_REFE_MARCA: TStringField;
    quer_prod_loteNOMB_REFE_GRUPO: TStringField;
    quer_prod_loteNOMB_REFE_EDAD: TStringField;
    quer_prod_lotePEDIDOS: TStringField;
    quer_prod_ordenNUME_LOTE: TStringField;
    quer_dist_paquetesCONS_PROD_PAQU_TIPO: TIntegerField;
    quer_dist_paquetesNUME_PAQUETE: TIntegerField;
    quer_dist_paquetesTALLA: TStringField;
    quer_dist_paquetesNOMB_COLOR: TStringField;
    quer_dist_paquetesNUME_COLOR: TStringField;
    quer_dist_paquetesCANT_UNIDADES: TIntegerField;
    quer_dist_paquetesDESDE: TIntegerField;
    quer_dist_paquetesHASTA: TIntegerField;
    quer_dist_paquetesCONSECUTIVO: TStringField;
    grupo_lote: TRLGroup;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    band_detalle: TRLDetailGrid;
    RLDBText13: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel8: TRLLabel;
    RLBand2: TRLBand;
    RLLabel14: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult1: TRLDBResult;
    RLDraw3: TRLDraw;
    RLDraw2: TRLDraw;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    quer_dist_paquetesNUME_LOTE: TIntegerField;
    RLLabel16: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText21: TRLDBText;
    quer_tipo_dist_paquetes: TQuery;
    data_tipo_Dist_paquetes: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure band_detalleBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure quer_prod_ordenCalcFields(DataSet: TDataSet);
    procedure ReporteBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure ReportePageStarting(Sender: TObject);
    procedure band_detalleAfterPrint(Sender: TObject);
    procedure RLBand1AfterPrint(Sender: TObject);
  private
    { Private declarations }
    var_EsPaginaNueva   : Boolean;
    var_zebra_Counter   : Integer;
    var_colorearFilas   : Boolean;
    var_SaltosPorLote   : Boolean;
    var_SaltosPorTipoDeDistribucion     : Boolean;
    var_LoteActual      : Integer;
    var_TipoDistribucionActual  : Integer;
  public
    { Public declarations }
    
    Procedure Ejecutar(peCons_prod_orden : Integer; peLotes, peTiposDistribucion : String; peOrganizacion : TRLDetailGridOrganization = goInRows;
        peColorearFilas : Boolean = True; peSaltosPorLote : Boolean = True; peSaltosPorTipoDeDistribucion : Boolean = True);
  end;

Const
        cosLOrderBy     = 'ORDER BY NUME_LOTE, CONS_PROD_PAQU_TIPO, NUME_PAQUETE';

var
  rn1_prod_dist_paquetes1: Trn1_prod_dist_paquetes1;

implementation

uses _cons_pcp, _func_varias, _cons_colores, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Tecnologia
Fecha           : 07-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Trn1_prod_dist_paquetes1.FormCreate(Sender: TObject);
begin
  inherited;
  TipoInformeOP := iopOP;
  var_colorearFilas := True;
  var_SaltosPorLote := True;
  var_SaltosPorTipoDeDistribucion := True;
  var_loteActual := 0;
  var_TipoDistribucionActual := 0;
  var_EsPaginaNueva     := True;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : Ejecute
Objetivo        : Ejecuta la vista previa del informe
Realizado por   : Tecnologia
Fecha           : 07-Oct-2005
Argumentos      : peCons_prod_lote : Integer
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure Trn1_prod_dist_paquetes1.Ejecutar(peCons_prod_orden : Integer; peLotes, peTiposDistribucion : String; peOrganizacion : TRLDetailGridOrganization = goInRows;
        peColorearFilas : Boolean = True; peSaltosPorLote : Boolean = True; peSaltosPorTipoDeDistribucion : Boolean = True);
Begin
        PrepararEncabezado(TipoInformeOp, peCons_Prod_Orden);
        text_lote.Caption := peLotes;
        text_lote2.Caption := peLotes;
        quer_dist_paquetes.ParamByName('cons_prod_orden').Value := peCons_prod_orden;
        quer_dist_paquetes.SQL.Add('Where nume_lote in (' + peLotes + ')');
        quer_dist_paquetes.SQL.Add('and CONS_PROD_PAQU_TIPO in (' + peTiposDistribucion + ')');
        quer_dist_paquetes.SQL.Add(cosLOrderBy);
        abrirDataSet(quer_Dist_paquetes);
        AbrirDataSet(quer_tipo_dist_paquetes);
        band_detalle.Organization := peOrganizacion;
        var_colorearFilas := peColorearFilas;
        var_SaltosPorLote := peSaltosPorLote;
        var_SaltosPorTipoDeDistribucion := peSaltosPorTipoDeDistribucion;
        Preview;
End;
{****************************************************************
Procedimiento   : band_detalleBeforePrint
Objetivo        : Dar el color Zebra a las bandas
Realizado por   : Tecnologia
Fecha           : 13-Oct-2005
Argumentos      : Sender: TObject; var PrintIt: Boolean
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Trn1_prod_dist_paquetes1.band_detalleBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  if var_colorearFilas Then
  Begin
      if band_detalle.Organization = goInRows Then
      Begin
            inc(var_zebra_Counter);
            if var_Zebra_Counter = 2 then
            Begin
                if band_detalle.Color = clWhite Then
                   band_detalle.Color := clReportesZebra
                Else
                   band_detalle.Color := clWhite;
                var_Zebra_Counter := 0;
            End;
      End
      Else
      Begin
        if band_detalle.Color = clWhite Then
           band_detalle.Color := clReportesZebra
        Else
           band_detalle.Color := clWhite;
      End;
  End
  {Else
        band_detalle.Color := clWhite;} 
end;
{****************************************************************
Procedimiento   : quer_prod_ordenCalcFields
Objetivo        : Calcular campos en la consulta por orden
Realizado por   : Tecnologia
Fecha           : 13-Oct-2005
Argumentos      : DataSet: TDataSet
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Trn1_prod_dist_paquetes1.quer_prod_ordenCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  With quer_prod_orden do
  Begin
     //Simular un solo lote
     FieldByName('nume_lote').Value := '1';
  End;
end;
{****************************************************************
Procedimiento   : quer_dist_paquetesCalcFields
Objetivo        : Campos calculados en el maestro de la consulta
Realizado por   : Tecnologia
Fecha           : 13-Oct-2005
Argumentos      : DataSet: TDataSet
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Trn1_prod_dist_paquetes1.ReporteBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  var_zebra_Counter := 0;
end;
{****************************************************************
Procedimiento   : RLBand1BeforePrint
Objetivo        : Verificar los procedimientos previos a la impresión
                  del encabezado del grupo
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject; var PrintIt: Boolean
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Trn1_prod_dist_paquetes1.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
        var_HizoSalto   : Boolean;
begin
  inherited;
  //No saltar si está en una página nueva
  var_HizoSalto := False;
  //Verificar si requiere saltar por lote
  if var_SaltosPorLote Then
  Begin
      if (var_LoteActual <> quer_Dist_paquetes.FieldByName('nume_lote').asInteger) Then
      Begin
           //Si el lote actual es 0, no hacer nueva página porque es el primer lote
           if var_LoteActual <> 0 Then
           Begin
               if not var_EsPaginaNueva Then
                    RLBand1.PageBreaking := pbBeforePrint;
           End;
           var_LoteActual := quer_Dist_paquetes.FieldByName('nume_lote').asInteger;
           var_TipoDistribucionActual := quer_Dist_paquetes.FieldByName('cons_prod_paqu_tipo').asInteger;
           //Indicar que saltó por lote para que ya no salte por tipo de distribucion
           var_HizoSalto := True;
      End;
  End;
  //Verificar si requiere saltar por Tipo de distribución
  if var_SaltosPorTipoDeDistribucion Then
  Begin
      if (var_TipoDistribucionActual <> quer_Dist_paquetes.FieldByName('cons_prod_paqu_tipo').asInteger) Then
      Begin
           //Verificar que no haya saltado por lote
           if Not var_HizoSalto Then
             //Si el tipo de distribución actual es 0, no hacer nueva página porque es la primera distribución
             if var_TipoDistribucionActual <> 0 Then
             Begin
               if not var_EsPaginaNueva Then
                    RLBand1.PageBreaking := pbBeforePrint;
             End;
           var_TipoDistribucionActual := quer_Dist_paquetes.FieldByName('cons_prod_paqu_tipo').asInteger;
      End;
  End;
end;

procedure Trn1_prod_dist_paquetes1.ReportePageStarting(Sender: TObject);
begin
  inherited;
  var_EsPaginaNueva := True;
end;

procedure Trn1_prod_dist_paquetes1.band_detalleAfterPrint(Sender: TObject);
begin
  inherited;
  var_EsPaginaNueva := False;
end;

procedure Trn1_prod_dist_paquetes1.RLBand1AfterPrint(Sender: TObject);
begin
  inherited;
  RLBand1.PageBreaking := pbNone;

end;

end.
