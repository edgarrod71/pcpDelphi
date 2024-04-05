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
        Unit            : ucn1_prod_cons_maestro
        Objetivo        : Consulta del maestro de ordenes de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 11 de 2004
        Versión         : pcp4006
*******************************************************************}

unit ucn1_prod_cons_maestro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, dxDBTLCl, dxGrClms, ufra_historialDB, Boxes,
  PCPFrame, StdCtrls, SoCtrls, SCLDBLabel, dxEdLib, dxEditor, RxLookup,
  PCPLookUpComboEdit, ufra_edit_reportes;

type
  Tcn1_prod_cons_maestro = class(T_fvent_child)
    consultaCONS_PROD_ORDEN: TIntegerField;
    consultaNUME_PROD_ORDEN: TStringField;
    consultaANULADA: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaFINALIZADO: TIntegerField;
    consultaCONS_REFERENCIA: TIntegerField;
    consultaCODI_REFERENCIA: TStringField;
    consultaNOMB_REFE_TEMPORADA: TStringField;
    consultaMOLDE: TStringField;
    consultaCODI_INTE_REFERENCIA: TStringField;
    consultaNOMB_REFERENCIA: TStringField;
    consultaNOMB_REFE_MARCA: TStringField;
    consultaNOMB_REFE_LINEA: TStringField;
    consultaNOMB_REFE_EDAD: TStringField;
    consultaNOMB_REFE_ESTILO: TStringField;
    consultaNOMB_REFE_GRUPO: TStringField;
    consultaNOMB_SEXO: TStringField;
    consultaNOMB_REFE_LAVADO: TStringField;
    consultaNOMB_REFE_BORDADO: TStringField;
    consultaNOMB_REFE_ESTAMPADO: TStringField;
    consultaNOMB_GRUP_TALLAS: TStringField;
    consultaNOMB_REFE_ESTADO: TStringField;
    padr_gridCONS_PROD_ORDEN: TdxDBGridMaskColumn;
    padr_gridNUME_PROD_ORDEN: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridANULADA: TdxDBGridImageColumn;
    padr_gridFINALIZADO: TdxDBGridImageColumn;
    padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_TEMPORADA: TdxDBGridMaskColumn;
    padr_gridMOLDE: TdxDBGridMaskColumn;
    padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_LINEA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_EDAD: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_ESTILO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_SEXO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_LAVADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_BORDADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_ESTAMPADO: TdxDBGridMaskColumn;
    padr_gridNOMB_GRUP_TALLAS: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_ESTADO: TdxDBGridMaskColumn;
    TBXSubmenuItem2: TTBXSubmenuItem;
    boto_Finalizar: TTBXItem;
    acti_ventana: TActionList;
    acti_camb_finalizada: TAction;
    TBXItem2: TTBXItem;
    quer_anular: TQuery;
    quer_finalizar: TQuery;
    pane_historial: TPCPFrame;
    fram_historial: Tffra_historialDB;
    tabl_historial: TTable;
    tabl_historialCONS_ANOTACION: TIntegerField;
    tabl_historialCONS_PROD_ORDEN: TIntegerField;
    tabl_historialTEXT_ANOTACION: TStringField;
    tabl_historialFECH_SISTEMA: TDateTimeField;
    tabl_historialUSUA_SISTEMA: TStringField;
    dfsSplitter1: TdfsSplitter;
    acti_camb_anulada: TAction;
    TBXItem1: TTBXItem;
    TBXItem3: TTBXItem;
    PCPFrame1: TPCPFrame;
    edit_fech_inicial: TdxDateEdit;
    chec_fech_inicial: TdxCheckEdit;
    chec_fech_final: TdxCheckEdit;
    edit_fech_final: TdxDateEdit;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    comb_finalizada: TPCPLookUpComboEdit;
    comb_anulada: TPCPLookUpComboEdit;
    SCLDBLabel3: TSCLDBLabel;
    comb_codi_referencia: TPCPLookUpComboEdit;
    SCLDBLabel4: TSCLDBLabel;
    comb_cir_referencia: TPCPLookUpComboEdit;
    SCLDBLabel5: TSCLDBLabel;
    comb_temporada: TPCPLookUpComboEdit;
    SCLDBLabel6: TSCLDBLabel;
    comb_marca: TPCPLookUpComboEdit;
    SCLDBLabel7: TSCLDBLabel;
    comb_linea: TPCPLookUpComboEdit;
    SCLDBLabel8: TSCLDBLabel;
    comb_edad: TPCPLookUpComboEdit;
    SCLDBLabel9: TSCLDBLabel;
    comb_estilo: TPCPLookUpComboEdit;
    SCLDBLabel10: TSCLDBLabel;
    comb_grupo: TPCPLookUpComboEdit;
    procedure FormActivate(Sender: TObject);
    procedure acti_ventanaUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure acti_camb_anuladaExecute(Sender: TObject);
    procedure acti_camb_finalizadaExecute(Sender: TObject);
    procedure tabl_historialBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure chec_fech_inicialChange(Sender: TObject);
    procedure chec_fech_finalChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cn1_prod_cons_maestro: Tcn1_prod_cons_maestro;

implementation

uses _MDI, _cons_pcp, _func_pcp, _func_varias, _Traductor;

{$R *.DFM}

procedure Tcn1_prod_cons_maestro.FormActivate(Sender: TObject);
begin
  inherited;
  //Modificar las imágenes
  padr_boto_nuevo.Images := _fMDI.imag_grandes;
  padr_boto_nuevo2.Images := _fMDI.imagenesPCP;
  padr_boto_nuevo.ImageIndex := 0;
  padr_boto_nuevo2.ImageIndex := 0;
end;
{****************************************************************
Procedimiento   : acti_ventanaUpdate
Objetivo        : Actualizar el estado de las acciones anular y finalizar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_maestro.acti_ventanaUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  acti_camb_anulada.Enabled := (consulta.Active) and (padr_grid.Count > 0) and
        (padr_grid.SelectedCount = 1);
  acti_camb_finalizada.Enabled := (consulta.Active) and (padr_grid.Count > 0) and
        (padr_grid.SelectedCount = 1);
end;
{****************************************************************
Procedimiento   : acti_camb_anuladaExecute
Objetivo        : Ejecutar la acción de cambiar el estado ANULADA
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_maestro.acti_camb_anuladaExecute(Sender: TObject);
var
    var_esta_actual : String;
    var_esta_nuevo  : String;
    var_anulada     : Integer;
    var_cons_prod_orden  : Integer;
begin
  inherited;
  var_cons_prod_orden := consulta.FieldByName('cons_prod_orden').asInteger;
  //Identificar el estado
  if (consulta.FieldByName('anulada').AsInteger = 1) Then
    Begin
       var_esta_actual := cosAnulada;
       var_esta_nuevo := cosActiva;
       var_anulada := -1;
    End
  Else
    Begin
       var_esta_actual := cosActiva;
       var_esta_nuevo := cosAnulada;
       var_anulada := 1;
    End;
  If Confirmar(Format(cosCambiarEstado,[var_esta_actual, var_Esta_nuevo]))=mrYes then
    Begin
        quer_anular.ParamByName('pe_anulada').Value := var_anulada;
        quer_anular.ParamByName('pe_cons_prod_orden').Value := consulta.FieldByName('cons_prod_orden').AsInteger;
        quer_anular.ExecSQL;
        EjecutarMensaje(cosProcesoConExito, mtInformation, [mbok], 0);
        RefreshDataSet(Consulta);
        Consulta.Locate('cons_prod_orden', var_cons_prod_orden, []);
    End;
end;
{****************************************************************
Procedimiento   : acti_camb_finalizadaExecute
Objetivo        : Ejecutar la acción de ejecutar la acción FINALIZADA
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_maestro.acti_camb_finalizadaExecute(
  Sender: TObject);
var
    var_esta_actual : String;
    var_esta_nuevo  : String;
    var_finalizada     : Integer;
    var_cons_prod_orden  : Integer;
begin
  inherited;
  var_cons_prod_orden := consulta.FieldByName('cons_prod_orden').asInteger;
  //Identificar el estado
  if (consulta.FieldByName('finalizado').AsInteger = 1) Then
    Begin
       var_esta_actual := cosfinalizada;
       var_esta_nuevo := cosActiva;
       var_finalizada := -1;
    End
  Else
    Begin
       var_esta_actual := cosActiva;
       var_esta_nuevo := cosfinalizada;
       var_finalizada := 1;
    End;
  If Confirmar(Format(cosCambiarEstado,[var_esta_actual, var_Esta_nuevo]))=mrYes then
    Begin
        quer_finalizar.ParamByName('pe_finalizada').Value := var_finalizada;
        quer_finalizar.ParamByName('pe_cons_prod_orden').Value := consulta.FieldByName('cons_prod_orden').AsInteger;
        quer_finalizar.ExecSQL;
        EjecutarMensaje(cosProcesoConExito, mtInformation, [mbok], 0);
        RefreshDataSet(Consulta);
        Consulta.Locate('cons_prod_orden', var_cons_prod_orden, []);
    End;
end;
{****************************************************************
Procedimiento   : tabl_historialBeforePost
Objetivo        : Generar el consecutivo del historial
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_maestro.tabl_historialBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If (tabl_historial.State = dsInsert) then GenerarSecuencia(tabl_historial);
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_maestro.FormCreate(Sender: TObject);
begin
  inherited;
  pane_historial.Visible := AbrirDataSet(tabl_historial);
	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : chec_fech_inicialChange
Objetivo        : habilita/deshabilita la fecha inicial del filtro                         
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 19 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tcn1_prod_cons_maestro.chec_fech_inicialChange(Sender: TObject);
begin
  inherited;
  edit_fech_inicial.Enabled := chec_fech_inicial.Checked;
end;
{****************************************************************
Procedimiento   : chec_fech_finalChange
Objetivo        : Habilita/deshabilita la fecha final del filtro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 19 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tcn1_prod_cons_maestro.chec_fech_finalChange(Sender: TObject);
begin
  inherited;
  edit_Fech_final.Enabled := chec_fech_final.Checked;
end;

end.
