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
        Unit            : un1_refe_fich_00Seleccion
        Objetivo        : Diálogo para la selección de fichas técnicas
        
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 07-Jun-2005
        Versión         : pcp4.0.20.10
*******************************************************************}
unit un1_refe_fich_00Seleccion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit;

type
  Tfn1_refe_fich_00Seleccion = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    labe_referencia: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    comb_tipo_ficha: TPCPLookUpComboEdit;
    quer_fichas: TQuery;
    data_fichas: TDataSource;
    quer_referencias: TQuery;
    data_referencias: TDataSource;
    quer_refe_variaciones: TQuery;
    data_refe_variaciones: TDataSource;
    comb_codi_referencia: TPCPLookUpComboEdit;
    comb_variacion: TPCPLookUpComboEdit;
    quer_ficha_activa: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure padr_acti_imprimirUpdate(Sender: TObject);
    procedure padr_acti_imprimirExecute(Sender: TObject);
    procedure quer_referenciasBeforeOpen(DataSet: TDataSet);
    procedure quer_refe_variacionesBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    var_EsReferencia : Boolean;
    Function SeleccionValida : Boolean;
  public
    { Public declarations }
    Procedure Ejecutar(peCons_Tipo_Ficha, peCons_Referencia, peCons_Refe_Variacion : Integer; peEsReferencia : Boolean = True;
         peDeshabilitarControles : Boolean = False);
  end;

var
  fn1_refe_fich_00Seleccion: Tfn1_refe_fich_00Seleccion;

implementation

uses _func_varias, _cons_pcp, un1_refe_fich_funciones, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_00Seleccion.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : padr_acti_imprimirUpdate
Objetivo        : Actualizar el estado de la acción IMPRIMIR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_00Seleccion.padr_acti_imprimirUpdate(
  Sender: TObject);
begin
  inherited;
  padr_acti_imprimir.Enabled := SeleccionValida;
end;

Function Tfn1_refe_fich_00Seleccion.SeleccionValida : Boolean;
Begin
    Result := Not((comb_tipo_ficha.EstaVacio) or (comb_codi_Referencia.EstaVacio) or
                (comb_variacion.EstaVacio));
End;
{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecutar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure Tfn1_refe_fich_00Seleccion.Ejecutar(peCons_Tipo_Ficha, peCons_Referencia, peCons_Refe_Variacion : Integer;
        peEsReferencia : Boolean = True; peDeshabilitarControles : Boolean = False);
Begin
    var_EsReferencia := peEsReferencia;
    AbrirDataSet(quer_fichas);
    AbrirDataSet(quer_Referencias);
    AbrirDataSet(quer_Refe_variaciones);
    if var_EsReferencia Then labe_referencia.Caption := cosReferencia
    Else labe_referencia.Caption := cosPrototipo;
    if (peCons_Tipo_Ficha <> 0) Then
    Begin
       comb_Tipo_Ficha.KeyValue := peCons_Tipo_Ficha;
       darFoco(comb_codi_referencia);
    End;
    if (peCons_Referencia <> 0) then
    Begin
        comb_codi_referencia.KeyValue := peCons_referencia;
        darFoco(comb_variacion);
    End;
    if (peDeshabilitarControles) Then
    Begin
         comb_tipo_ficha.Enabled := comb_tipo_ficha.EstaVacio;
         comb_codi_Referencia.Enabled := comb_codi_Referencia.EstaVacio;
    End;
    If (peCons_refe_Variacion <> 0) Then
       comb_variacion.KeyValue := peCons_Refe_Variacion
    Else
    Begin
       if Not comb_codi_referencia.EstaVacio then
          InicializarCombo(comb_variacion);
       ShowModal;
    End;
End;
{****************************************************************
Procedimiento   : padr_acti_imprimirExecute
Objetivo        : Ejecutar la acción IMPRIMIR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_00Seleccion.padr_acti_imprimirExecute(
  Sender: TObject);
var
        var_TipoFicha   : TFichasTecnicasDiseno;
        var_Cons_refe_ficha : Integer;
begin
  inherited;
  if Not SeleccionValida Then Close;
  //Tipo de ficha
  var_TipoFicha := IntegerToTipoFichasTecnicas(quer_Fichas.FieldByName('cons_Refe_tipo_ficha').asInteger);
  //Ubicar la ficha activa
  With quer_Ficha_activa do
  Begin
      Close;
      ParamByName('cons_Refe_tipo_ficha').Value := quer_Fichas.FieldByName('cons_Refe_tipo_ficha').asInteger;
      ParamByName('cons_Refe_variacion').Value := quer_refe_variaciones.FieldByName('cons_Refe_variacion').AsInteger;
      Open;
      if (var_TipoFicha <> ftdHojaDisenoCaratula) and (RecordCount = 0) Then
         Raise Exception.Create(cosErrorFichasNoHayPredeterminada);
      var_Cons_refe_ficha := FieldByName('cons_refe_ficha').AsInteger;
      Close;
  End;
  if (var_TipoFicha = ftdHojaDisenoCaratula) Then
        ImprimirFichaTecnica(var_TipoFicha, quer_referencias.FieldByName('cons_Referencia').asInteger, var_EsReferencia)
  Else
        ImprimirFichaTecnica(var_TipoFicha, var_Cons_refe_ficha, var_EsReferencia);
  Close;
end;
{****************************************************************
Procedimiento   : quer_referenciasBeforeOpen
Objetivo        : Preparar la consulta de referencias
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_refe_fich_00Seleccion.quer_referenciasBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  With quer_referencias do
  Begin
      SQL.Clear;
      SQL.Add('Select CONS_REFERENCIA, CODI_REFERENCIA from');
      if var_EsReferencia Then
          SQL.Add('VIS_GLO_REFERENCIAS')
      Else
          SQL.Add('VIS_GLO_PROTOTIPOS');
      SQL.Add('order by codi_referencia');
  End;
end;
{****************************************************************
Procedimiento   : quer_refe_variacionesBeforeOpen
Objetivo        : Preparar la consulta de variaciones antes de abrirla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_refe_fich_00Seleccion.quer_refe_variacionesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  With quer_refe_variaciones Do
  Begin
      SQL.Clear;
      SQL.Add('select cons_refe_variacion, cons_refe_tipo_variacion,');
      SQL.Add('nomb_refe_tipo_variacion from');
      if var_EsReferencia Then
         SQL.Add('vis_pcp_refe_variaciones')
      Else
         SQL.Add('vis_pcp_prot_variaciones');
      SQL.Add('where cons_referencia = :cons_referencia');
      SQL.Add('order by nomb_refe_tipo_variacion');
  End;
end;

end.
