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
        Unit            : ucn1_cont_nove_pago_grupal
        Objetivo        : Consulta de novedades grupal
                          de las novedades en el pago (por rango de fechas)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 11 de 2005
        Versión         : pcp4.0.0.16
*******************************************************************}
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
        Unit            : ucn1_cont_nove_pago_grupal
        Objetivo        : Consulta grupal de novedades de pago
                          (Incluye formas de pago e incentivos)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 14 de 2005
        Versión         : pcp4.0.0.17
*******************************************************************}
unit ucn1_cont_nove_pago_grupal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, TBXDkPanels, TBXButtonSCL, dxCntner, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, SoCtrls, SCLDBLabel, ufra_maqu_ubicacion, Boxes,
  PCPFrame, Db, DBTables, TB2Item, SCLPropiedadesForm, ImgList,
  Menus, TBX, ActnList, ExtCtrls, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TB2Dock,
  TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl,
  ufra_edit_reportes;

type
  Tcn1_cont_nove_pago_grupal = class(T_fvent_child)
    PCPFrame1: TPCPFrame;
    Panel1: TPanel;
    fram_filtro: Tffra_maqu_ubicacion;
    Panel2: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    edit_fecha: TdxDateEdit;
    boto_hoy: TTBXButtonSCL;
    SCLDBLabel2: TSCLDBLabel;
    edit_fech_final: TdxDateEdit;
    boto_hoy_2: TTBXButtonSCL;
    consultaCONS_PERSONAL: TIntegerField;
    consultaCODI_PERSONAL: TStringField;
    consultaNOMB_COMPLETO: TStringField;
    consultaCONS_EMPRESA: TIntegerField;
    consultaNOMB_EMPRESA: TStringField;
    consultaCONS_AREA: TIntegerField;
    consultaNOMB_AREA: TStringField;
    consultaCONS_PLANTA: TIntegerField;
    consultaNOMB_PLANTA: TStringField;
    consultaCONS_PLAN_LINEA: TIntegerField;
    consultaNOMB_PLAN_LINEA: TStringField;
    consultaCONS_LINE_SECCION: TIntegerField;
    consultaNOMB_LINE_SECCION: TStringField;
    consultaCONS_TURNO: TIntegerField;
    consultaCODI_TURNO: TStringField;
    consultaTIPO_TURNO: TStringField;
    consultaMINU_CONTRATADOS: TIntegerField;
    consultaMINU_AUSENTISMOS: TIntegerField;
    consultaMINU_EXTRAS: TIntegerField;
    consultaMINU_PRESENCIALES: TIntegerField;
    consultaMINU_IMPRODUCTIVOS: TIntegerField;
    consultaMINU_TRABAJADOS: TIntegerField;
    consultaMINU_TIQU_CORTE: TFloatField;
    consultaMINU_TIQU_FABRICACION: TFloatField;
    consultaMINU_ABONADOS: TFloatField;
    consultaMINU_OBTENIDOS: TFloatField;
    consultaINDI_1: TFloatField;
    consultaINDI_2: TFloatField;
    consultaINDI_3: TFloatField;
    consultaVALO_MINI_GARANTIZADO: TFloatField;
    consultaVALO_GANA_PRODUCCION: TFloatField;
    consultaVALO_AJUS_AL_MINIMO: TFloatField;
    consultaVALO_BONO_PRODUCCION: TFloatField;
    consultaVALO_TOTA_DEVENGADO: TFloatField;
    padr_gridCONS_PERSONAL: TdxDBGridMaskColumn;
    padr_gridCODI_PERSONAL: TdxDBGridMaskColumn;
    padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn;
    padr_gridCONS_EMPRESA: TdxDBGridMaskColumn;
    padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn;
    padr_gridCONS_AREA: TdxDBGridMaskColumn;
    padr_gridNOMB_AREA: TdxDBGridMaskColumn;
    padr_gridCONS_PLANTA: TdxDBGridMaskColumn;
    padr_gridNOMB_PLANTA: TdxDBGridMaskColumn;
    padr_gridCONS_PLAN_LINEA: TdxDBGridMaskColumn;
    padr_gridNOMB_PLAN_LINEA: TdxDBGridMaskColumn;
    padr_gridCONS_LINE_SECCION: TdxDBGridMaskColumn;
    padr_gridNOMB_LINE_SECCION: TdxDBGridMaskColumn;
    padr_gridCONS_TURNO: TdxDBGridMaskColumn;
    padr_gridCODI_TURNO: TdxDBGridMaskColumn;
    padr_gridTIPO_TURNO: TdxDBGridMaskColumn;
    padr_gridMINU_CONTRATADOS: TdxDBGridMaskColumn;
    padr_gridMINU_AUSENTISMOS: TdxDBGridMaskColumn;
    padr_gridMINU_EXTRAS: TdxDBGridMaskColumn;
    padr_gridMINU_PRESENCIALES: TdxDBGridMaskColumn;
    padr_gridMINU_IMPRODUCTIVOS: TdxDBGridMaskColumn;
    padr_gridMINU_TRABAJADOS: TdxDBGridMaskColumn;
    padr_gridMINU_TIQU_CORTE: TdxDBGridMaskColumn;
    padr_gridMINU_TIQU_FABRICACION: TdxDBGridMaskColumn;
    padr_gridMINU_ABONADOS: TdxDBGridMaskColumn;
    padr_gridMINU_OBTENIDOS: TdxDBGridMaskColumn;
    padr_gridINDI_1: TdxDBGridMaskColumn;
    padr_gridINDI_2: TdxDBGridMaskColumn;
    padr_gridINDI_3: TdxDBGridMaskColumn;
    padr_gridVALO_MINI_GARANTIZADO: TdxDBGridMaskColumn;
    padr_gridVALO_GANA_PRODUCCION: TdxDBGridMaskColumn;
    padr_gridVALO_AJUS_AL_MINIMO: TdxDBGridMaskColumn;
    padr_gridVALO_BONO_PRODUCCION: TdxDBGridMaskColumn;
    padr_gridVALO_TOTA_DEVENGADO: TdxDBGridMaskColumn;
    procedure boto_hoy_2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fram_filtrocomb_tipo_ubicacionChange(Sender: TObject);
    procedure doActualizarConsulta(Sender: TObject);
    procedure consultaBeforeOpen(DataSet: TDataSet);
    procedure edit_fechaChange(Sender: TObject);
    procedure edit_fech_finalChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure consultaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    var_needToReopen    : Boolean;
    var_vent_inicializada   : Boolean;
  public
    { Public declarations }
  end;

var
  cn1_cont_nove_pago_grupal: Tcn1_cont_nove_pago_grupal;

implementation

uses _func_varias, _func_pcp, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : boto_hoy_2Click
Objetivo        : Actualizar la fecha final
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tcn1_cont_nove_pago_grupal.boto_hoy_2Click(Sender: TObject);
begin
  //inherited;
  edit_Fech_Final.Date := NowDate;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 11 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tcn1_cont_nove_pago_grupal.FormCreate(Sender: TObject);
begin
  inherited;
  var_vent_inicializada := False;
  var_needToReopen := False;
  Edit_Fecha.Date := NowDate;
  Edit_Fech_final.Date := NowDate;
  inherited;
  //Abrir las consultas
  InicializarFrame(fram_filtro);
  data_ventana.DataSet := Consulta;
  var_vent_inicializada := True;
	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : fram_filtrocomb_tipo_ubicacionChange
Objetivo        : Actualizar el filtro de la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tcn1_cont_nove_pago_grupal.fram_filtrocomb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  fram_filtro.comb_tipo_ubicacionChange(Sender);
  doActualizarConsulta(Sender);
end;
{****************************************************************
Procedimiento   : fram_filtrocomb_ubic_empresaChange
Objetivo        : Actualizar la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tcn1_cont_nove_pago_grupal.doActualizarConsulta(
  Sender: TObject);
Var
    var_filtro : String;
    var_Query   : TQuery;
begin
  inherited;
  Try
      var_Query := Consulta;
      if (var_query = Nil) Then Exit;
      var_query.DisAbleControls;
      Repaint;
      if var_needToReopen then var_query.Close;
      //Filtro de la ubicación
      var_Filtro := fram_filtro.GetFilter(True);
      //Filtros adicionales

      //Asignar el filtro
      var_query.Filter := var_Filtro;
      var_query.Filtered := (var_Filtro <> '');
      //Ocultar/Mostrar las columnas
      padr_gridNOMB_EMPRESA.Visible := (fram_filtro.comb_ubic_empresa.Text = '');
      padr_gridNOMB_AREA.Visible := (fram_filtro.comb_ubic_AREA.Text = '');
      padr_gridNOMB_PLANTA.Visible := (fram_filtro.comb_ubic_PLANTA.Text = '');
      padr_gridNOMB_PLAN_LINEA.Visible := (fram_filtro.comb_ubic_LINEA.Text = '');
      padr_gridNOMB_LINE_SECCION.Visible := (fram_filtro.comb_ubic_SECCION.Text = '');
      if Not var_query.Active then AbrirDataSet(var_query, True);
      var_needToReopen := False;
  Except
      On e:Exception do
        EjecutarMensajeError(e.Message);
  End;
  var_query.EnableControls;
  padr_acti_mejo_ajuste.Execute;
end;
{****************************************************************
Procedimiento   : consultaBeforeOpen
Objetivo        : Actualizar los parámetros de la consulta antes de abrirla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tcn1_cont_nove_pago_grupal.consultaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Consulta.paramByName('pe_fech_inicial').Value := edit_Fecha.Date;
  Consulta.paramByName('pe_fech_final').Value := edit_Fech_final.Date;
end;
{****************************************************************
Procedimiento   : edit_fechaChange
Objetivo        : Actualizar la fecha inicial de la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tcn1_cont_nove_pago_grupal.edit_fechaChange(Sender: TObject);
begin
  inherited;
  if not var_vent_inicializada then exit;
  var_needToReopen := True;
  doActualizarConsulta(Sender);
end;
{****************************************************************
Procedimiento   : edit_fech_finalChange
Objetivo        : Actualizar la fecha final de la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tcn1_cont_nove_pago_grupal.edit_fech_finalChange(
  Sender: TObject);
begin
  inherited;
  if not var_vent_inicializada then exit;
  var_needToReopen := True;
  doActualizarConsulta(Sender);
end;
{****************************************************************
Procedimiento   : FormActivate
Objetivo        : Actualizar la ventana al activarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tcn1_cont_nove_pago_grupal.FormActivate(Sender: TObject);
begin
  inherited;
  //Caption de los indicadores
  doCambiarTextoIndicadoresProduccion(Consulta);
end;
{****************************************************************
Procedimiento   : consultaAfterOpen
Objetivo        : Actualizar la ventana una vez abierta la consulta                   
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tcn1_cont_nove_pago_grupal.consultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if Not padr_grid.Visible Then padr_grid.Visible := True;
end;

end.
