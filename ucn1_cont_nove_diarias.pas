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
        Unit            : ucn1_cont_nove_diarias
        Objetivo        : Consulta general de novedades diarias por fecha
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 09 de 2005
        Versión         : pcp4.0.0.16
*******************************************************************}
unit ucn1_cont_nove_diarias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, TBXButtonSCL, dxEditor, dxEdLib, StdCtrls,
  SoCtrls, SCLDBLabel, ufra_maqu_ubicacion, Boxes, PCPFrame, dxDBTLCl,
  dxGrClms, ufra_edit_reportes;

type
  Tcn1_cont_nove_diarias = class(T_fvent_child)
    PCPFrame1: TPCPFrame;
    Panel1: TPanel;
    fram_filtro: Tffra_maqu_ubicacion;
    Panel2: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    edit_fecha: TdxDateEdit;
    boto_hoy: TTBXButtonSCL;
    consultaCONS_PERSONAL: TIntegerField;
    consultaCODI_PERSONAL: TStringField;
    consultaNOMB_COMPLETO: TStringField;
    consultaTIPO_REGISTRO: TIntegerField;
    consultaCONS_CONT_NOVE_DIARIA: TIntegerField;
    consultaNUME_LECTURA: TIntegerField;
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
    padr_gridCONS_PERSONAL: TdxDBGridMaskColumn;
    padr_gridCODI_PERSONAL: TdxDBGridMaskColumn;
    padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn;
    padr_gridTIPO_REGISTRO: TdxDBGridCheckColumn;
    padr_gridCONS_CONT_NOVE_DIARIA: TdxDBGridMaskColumn;
    padr_gridNUME_LECTURA: TdxDBGridMaskColumn;
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
    procedure boto_hoyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fram_filtrocomb_tipo_ubicacionChange(Sender: TObject);
    procedure doActualizarConsulta(Sender: TObject);
    procedure consultaBeforeOpen(DataSet: TDataSet);
    procedure edit_fechaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    var_needToReopen    : Boolean;
  public
    { Public declarations }
  end;

var
  cn1_cont_nove_diarias: Tcn1_cont_nove_diarias;

implementation

uses _func_varias, _func_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : boto_hoyClick
Objetivo        : Actualizar la consulta al dia de hoy
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tcn1_cont_nove_diarias.boto_hoyClick(Sender: TObject);
begin
  inherited;
  edit_fecha.Date := NowDate;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tcn1_cont_nove_diarias.FormCreate(Sender: TObject);
begin
  inherited;
  var_needToReopen := False;
  if edit_Fecha.Text = '' Then  Edit_Fecha.Date := NowDate;
  inherited;
  //Abrir las consultas
  InicializarFrame(fram_filtro);
	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : fram_filtrocomb_tipo_ubicacionChange
Objetivo        : Cambiar el filtro de ubicación del personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tcn1_cont_nove_diarias.fram_filtrocomb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  fram_filtro.comb_tipo_ubicacionChange(Sender);
  doActualizarConsulta(Sender);
end;
{****************************************************************
Procedimiento   : doActualizarConsulta
Objetivo        : Actualizar la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tcn1_cont_nove_diarias.doActualizarConsulta(
  Sender: TObject);
Var
    var_filtro : String;
begin
  inherited;
  Try
      Consulta.DisAbleControls;
      Repaint;
      if var_needToReopen then Consulta.Close;
      //Filtro de la ubicación
      var_Filtro := fram_filtro.GetFilter(True);
      //Filtros adicionales

      //Asignar el filtro
      Consulta.Filter := var_Filtro;
      Consulta.Filtered := (var_Filtro <> '');
      //Ocultar/Mostrar las columnas
      padr_gridNOMB_EMPRESA.Visible := (fram_filtro.comb_ubic_empresa.Text = '');
      padr_gridNOMB_AREA.Visible := (fram_filtro.comb_ubic_AREA.Text = '');
      padr_gridNOMB_PLANTA.Visible := (fram_filtro.comb_ubic_PLANTA.Text = '');
      padr_gridNOMB_PLAN_LINEA.Visible := (fram_filtro.comb_ubic_LINEA.Text = '');
      padr_gridNOMB_LINE_SECCION.Visible := (fram_filtro.comb_ubic_SECCION.Text = '');
      if Not Consulta.Active then AbrirDataSet(Consulta, True);
      var_needToReopen := False;
  Except
      On e:Exception do
        EjecutarMensajeError(e.Message);
  End;
  Consulta.EnableControls;
  padr_acti_mejo_ajuste.Execute;
end;
{****************************************************************
Procedimiento   : consultaBeforeOpen
Objetivo        : Actualizar la fecha de la consulta antes de abrirla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tcn1_cont_nove_diarias.consultaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Consulta.paramByName('pe_fecha').Value := edit_Fecha.Date;
end;

procedure Tcn1_cont_nove_diarias.edit_fechaChange(Sender: TObject);
begin
  inherited;
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
procedure Tcn1_cont_nove_diarias.FormActivate(Sender: TObject);
begin
  inherited;
  //Caption de los indicadores
  doCambiarTextoIndicadoresProduccion(Consulta);  
end;

end.
