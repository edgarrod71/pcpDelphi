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
        Unit            : urn1_prod_base_informe
        Objetivo        : Base para los informes de producción
        Realizado por   : Tecnologia
        Fecha           : 07-Oct-2005
        Versión         : pcp4000 RC20.19
*******************************************************************}
unit urn1_prod_base_informe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, _Cons_pcp,
  _informesPCP, ActnList, Db, RLParser, RLReport, DBTables;

type
  Trn1_prod_base_informe = class(T_fInformesPCP)
    quer_prod_orden: TQuery;
    data_info_of: TDataSource;
    quer_prod_lote: TQuery;
    padr_pane_info_header: TRLPanel;
    RLLabel1: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel2: TRLLabel;
    quer_nume_lote: TQuery;
    text_lote2: TRLLabel;
    padr_band_deta_titulo: TRLBand;
    padr_pane_info_title: TRLPanel;
    padr_draw_12: TRLDraw;
    padr_draw_11: TRLDraw;
    padr_labe_9: TRLLabel;
    padr_draw_10: TRLDraw;
    padr_draw_4: TRLDraw;
    padr_draw_3: TRLDraw;
    padr_draw_1: TRLDraw;
    labe_info_Referencia: TRLLabel;
    padr_draw_2: TRLDraw;
    padr_labe_1: TRLLabel;
    padr_labe_2: TRLLabel;
    padr_labe_3: TRLLabel;
    padr_draw_5: TRLDraw;
    padr_labe_4: TRLLabel;
    padr_labe_10: TRLLabel;
    padr_draw_7: TRLDraw;
    padr_draw_8: TRLDraw;
    padr_labe_7: TRLLabel;
    padr_labe_8: TRLLabel;
    padr_draw_13: TRLDraw;
    padr_labe_11: TRLLabel;
    padr_draw_14: TRLDraw;
    padr_labe_13: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText16: TRLDBText;
    padr_labe_6: TRLLabel;
    padr_draw_9: TRLDraw;
    padr_labe_12: TRLLabel;
    RLDBText1: TRLDBText;
    padr_draw_6: TRLDraw;
    RLDBText2: TRLDBText;
    padr_labe_5: TRLLabel;
    text_lote: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure ReportePageStarting(Sender: TObject);
    procedure padr_pane_info_headerBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure padr_pane_tituloBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
    var_TipoInformeOP   : TInformeOP;
    var_Consecutivo     : Integer;
    Procedure SetTipoInformeOP(peValor : TInformeOP);
    Procedure SetConsecutivo(peValor : Integer);
  public
    { Public declarations }
    Property TipoInformeOP : TInformeOP Read var_TipoInformeOP Write var_TipoInformeOP;
    Property Consecutivo : Integer Read var_Consecutivo Write SetConsecutivo;
    Procedure PrepararEncabezado(peTipoInformeOP : TInformeOP; peConsecutivo : Integer);

  end;

var
  rn1_prod_base_informe: Trn1_prod_base_informe;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar el formulario
Realizado por   : Tecnologia
Fecha           : 07-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Trn1_prod_base_informe.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar las variables
  var_tipoInformeOP := iopOP;
  SetConsecutivo(0);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : SetTipoInformeOP
Objetivo        : Asignar el tipo de informe
Realizado por   : Tecnologia
Fecha           : 07-Oct-2005
Argumentos      : peValor : TInformeOP
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure Trn1_prod_base_informe.SetTipoInformeOP(peValor : TInformeOP);
Begin
     var_TipoInformeOp := peValor;
     Case var_TipoInformeOp of
        iopOP    : data_info_of.DataSet := quer_prod_orden;
        iopLote  : data_info_of.DataSet := quer_prod_lote;
     End;
     if (data_info_of.DataSet = Nil) Then Exit;
     //Asignar el consecutivo
     SetConsecutivo(var_Consecutivo);
End;
{****************************************************************
Procedimiento   : SetConsecutivo
Objetivo        : Asigna el consecutivo
Realizado por   : Tecnologia
Fecha           : 07-Oct-2005
Argumentos      : peValor : Integer
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure Trn1_prod_base_informe.SetConsecutivo(peValor : Integer);
Begin
     var_Consecutivo := peValor;
     //Reasignar el DS
     if (data_info_of.DataSet = Nil) Then Exit;
     if data_info_of.DataSet.Active Then
        data_info_of.DataSet.Close;
     if (data_info_of.DataSet is TQuery) Then
     Begin
        if ((data_info_of.DataSet as TQuery).Params.Count > 0) Then
           (data_info_of.DataSet as TQuery).Params[0].Value := var_Consecutivo;
     End;
End;
{****************************************************************
Procedimiento   : PrepararEncabezado
Objetivo        : Prepara el encabezado para la op dada
Realizado por   : Tecnologia
Fecha           : 07-Oct-2005
Argumentos      : peTipoInformeOP : TInformeOP; peConsecutivo : Integer
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure Trn1_prod_base_informe.PrepararEncabezado(peTipoInformeOP : TInformeOP; peConsecutivo : Integer);
Begin
    if (peTipoInformeOP <> var_TipoInformeOP) Then
        SetTipoInformeOP(peTipoInformeOP);
    SetConsecutivo(peConsecutivo);
     if (data_info_of.DataSet = Nil) Then Exit;
     AbrirDataSet(data_info_of.DataSet);
     //Información del lote
     Case peTipoInformeOp of
         iopOP : text_lote.Caption := cosTodosLosLotes;
         iopLote : Begin
                   //Buscar información del número de lote
                   quer_nume_lote.Close;
                   quer_nume_lote.paramByName('cons_prod_lote').Value := peConsecutivo;
                   quer_nume_lote.Open;
                   text_lote.Caption := quer_nume_lote.FieldByName('nume_lote').asString;
                   quer_nume_lote.Close;
         End;
     End;
     text_lote2.Caption := Text_lote.Caption;
End;
{****************************************************************
Procedimiento   : ReportePageStarting
Objetivo        : Seleccionar las bandas del titulo a imprimir
                  según la página
Realizado por   : Tecnologia
Fecha           : 07-Oct-2005
Argumentos      : Sender: TObject; var PrintIt: Boolean
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Trn1_prod_base_informe.ReportePageStarting(Sender: TObject);
begin
  inherited;
  //padr_pane_info_title.Visible := reporte.PageNumber = 1;
  //padr_pane_info_header.Visible := reporte.PageNumber > 1;
  {If Reporte.PageNumber = 1 Then
        padr_band_titulo.Height := padr_pane_titulo.Height + padr_pane_info_title.Height
  Else
        padr_band_titulo.Height := padr_pane_titulo.Height + padr_pane_info_header.Height;}
  //padr_band_titulo.Update;
end;

procedure Trn1_prod_base_informe.padr_pane_info_headerBeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
  inherited;
  PrintIt := Reporte.PageNumber > 1;
end;
{****************************************************************
Procedimiento   : padr_pane_tituloBeforePrint
Objetivo        : Verificar si se requiere imprimir o no el título del
                  reporte (información de la OF)
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject; var PrintIt: Boolean
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Trn1_prod_base_informe.padr_pane_tituloBeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
  inherited;
  padr_repo_pane_info_top.Visible := Reporte.PageNumber = 1;
end;

end.
