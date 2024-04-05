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
        Unit            : un1_pers_form_pago
        Objetivo        : Historial y asignación de formas de pago por
                          operario
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 13-Jun-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit un1_pers_form_pago;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ufra_edit_reportes,
  ExtCtrls, dfsSplitter, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels,
  TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl,
  dxEditor, dxEdLib, dxDBELib, RxLookup, PCPLookUpComboEdit, StdCtrls,
  SoCtrls, SCLDBLabel, kbmMemTable, dxDBTLCl, dxGrClms;

type
  Tfn1_pers_form_pago = class(T_fvent_child)
    pane_filtros: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    comb_codi_personal: TPCPLookUpComboEdit;
    comb_nomb_personal: TPCPLookUpComboEdit;
    chec_fech_inicial: TdxCheckEdit;
    comb_fech_inicial: TdxDBDateEdit;
    chec_fech_final: TdxCheckEdit;
    comb_fech_final: TdxDBDateEdit;
    quer_pers_codigo: TQuery;
    quer_pers_nombres: TQuery;
    data_pers_codigo: TDataSource;
    data_pers_nombres: TDataSource;
    myTabla_Ventana: TkbmMemTable;
    myData_Ventana: TDataSource;
    myTabla_Ventanacons_personal: TIntegerField;
    myTabla_Ventanafech_inicial: TDateField;
    myTabla_Ventanafech_final: TDateField;
    consultaFECH_INICIAL: TDateTimeField;
    consultaVALO_HORA_MINI_GARANTIZADO: TFloatField;
    consultaVALO_HORA_PRODUCCION: TFloatField;
    consultaCONS_SIS_FORM_PAGO: TIntegerField;
    consultaNOMB_SIS_FORM_PAGO: TStringField;
    consultaPARA_1: TStringField;
    consultaCONS_FORM_PAGO_APRENDIZAJE: TIntegerField;
    consultaCODI_FORM_PAGO_APRENDIZAJE: TStringField;
    consultaNOMB_FORM_PAGO_APRENDIZAJE: TStringField;
    consultaFECH_FINA_PAGO_APRENDIZAJE: TDateTimeField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_CONSULTA: TdxDBGridMaskColumn;
    padr_gridFECH_INICIAL: TdxDBGridDateColumn;
    padr_gridVALO_HORA_MINI_GARANTIZADO: TdxDBGridMaskColumn;
    padr_gridVALO_HORA_PRODUCCION: TdxDBGridMaskColumn;
    padr_gridCONS_SIS_FORM_PAGO: TdxDBGridMaskColumn;
    padr_gridNOMB_SIS_FORM_PAGO: TdxDBGridMaskColumn;
    padr_gridPARA_1: TdxDBGridMaskColumn;
    padr_gridCONS_FORM_PAGO_APRENDIZAJE: TdxDBGridMaskColumn;
    padr_gridCODI_FORM_PAGO_APRENDIZAJE: TdxDBGridMaskColumn;
    padr_gridNOMB_FORM_PAGO_APRENDIZAJE: TdxDBGridMaskColumn;
    padr_gridFECH_FINA_PAGO_APRENDIZAJE: TdxDBGridDateColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaCONS_FORM_PAGO_PERSONAL: TIntegerField;
    consultaCONS_OPER_COSTURA: TIntegerField;
    consultaCODI_OPER_COSTURA: TStringField;
    consultaNOMB_OPER_COSTURA: TStringField;
    padr_gridCONS_OPER_COSTURA: TdxDBGridColumn;
    padr_gridCODI_OPER_COSTURA: TdxDBGridColumn;
    padr_gridNOMB_OPER_COSTURA: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure chec_fech_inicialChange(Sender: TObject);
    procedure chec_fech_finalChange(Sender: TObject);
    procedure GuardarYActualizar(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure consultaBeforeOpen(DataSet: TDataSet);
    procedure padr_acti_nuevoExecute(Sender: TObject);
    procedure padr_acti_modificarExecute(Sender: TObject);
    procedure padr_acti_consultarExecute(Sender: TObject);
  private
    { Private declarations }
    var_Vent_inicializada      : Boolean;
  public
    { Public declarations }
  end;

var
  fn1_pers_form_pago: Tfn1_pers_form_pago;

implementation

uses _cons_pcp, _func_varias, _vari_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago.FormCreate(Sender: TObject);
begin
  //Inicialización previa a la herencia
  var_Vent_inicializada := False;
  AbrirDataSet(myTabla_Ventana);
  inherited;
  //Inicialización visual y de variables
  pane_filtros.Caption := cosFiltros;
  //Abrir las consultas
  AbrirDataSet(quer_pers_codigo);
  AbrirDataSet(quer_pers_nombres);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : chec_fech_inicialChange
Objetivo        : Habilitar/Deshabilitar el combo de fecha inicial
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago.chec_fech_inicialChange(Sender: TObject);
begin
  inherited;
  comb_fech_inicial.Enabled := chec_fech_inicial.Checked;
  CheckAndEditDataSet(myTabla_Ventana);
  If not Chec_Fech_Inicial.Checked Then
      myTabla_Ventana.FieldByName('fech_inicial').Clear;
end;
{****************************************************************
Procedimiento   : chec_fech_finalChange
Objetivo        : Habilitar/Deshabilitar el combo de fecha final
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago.chec_fech_finalChange(Sender: TObject);
begin
  inherited;
  comb_fech_final.Enabled := chec_fech_final.Checked;
  CheckAndEditDataSet(myTabla_Ventana);
  If not Chec_Fech_final.Checked Then
      myTabla_Ventana.FieldByName('fech_final').Clear;
end;
{****************************************************************
Procedimiento   : GuardarYActualizar
Objetivo        : Guardar la tabla auxiliar y actualizar la consulta
                  principal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago.GuardarYActualizar(Sender: TObject);
begin
  inherited;
  if Not var_vent_inicializada Then Exit;
  CheckAndPostDataSet(myTabla_Ventana);
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago.FormShow(Sender: TObject);
begin
  inherited;
  //Dar la ventana por inicializada
  var_Vent_inicializada := True;
end;
{****************************************************************
Procedimiento   : consultaBeforeOpen
Objetivo        : Preparar la consulta principal antes de abrirla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago.consultaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  //Verificar que los rangos de fechas se deseen aplicar
  If Not (chec_fech_inicial.checked) Then
        Consulta.ParamByName('fech_inicial').Clear;
  If Not (chec_fech_final.checked) Then
        Consulta.ParamByName('fech_final').Clear;
end;
{****************************************************************
Procedimiento   : padr_acti_nuevoExecute
Objetivo        : Ejecutar la acción NUEVO (enviando el parámetro
                  del personal activo en una variable global de PCP)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago.padr_acti_nuevoExecute(Sender: TObject);
begin
  var_glob_integer := myTabla_Ventana.FieldByName('cons_personal').asInteger;
  inherited;
end;
{****************************************************************
Procedimiento   : padr_acti_modificarExecute
Objetivo        : Ejecutar la acción MODIFICAR (enviando el parámetro
                  del personal activo en una variable global de PCP)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago.padr_acti_modificarExecute(Sender: TObject);
begin
  var_glob_integer := myTabla_Ventana.FieldByName('cons_personal').asInteger;
  inherited;
end;
{****************************************************************
Procedimiento   : padr_acti_consultarExecute
Objetivo        : Ejecutar la acción CONSULTAR (enviando el parámetro
                  del personal activo en una variable global de PCP)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago.padr_acti_consultarExecute(Sender: TObject);
begin
  var_glob_integer := myTabla_Ventana.FieldByName('cons_personal').asInteger;
  inherited;
end;

end.
