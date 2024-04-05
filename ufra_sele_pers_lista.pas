{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeaci�n y Control de la Producci�n                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo est� protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducci�n no autorizada, la ingenier�a inversa y la   }
{       distribuci�n total o parcial del c�digo contenido en este   }
{       archivo est� estrictamente prohibido y podr� tener severas  }
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
        Unit            : ufra_sele_pers_lista
        Objetivo        : Frame de selecci�n de personal mediante una lista
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           :
        Versi�n         : pcp4006
*******************************************************************}
unit ufra_sele_pers_lista;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ufra_maqu_ubicacion, ExtCtrls, Boxes, PCPFrame, dxTL,
  dxDBCtrl, dxDBGrid, dxCntner, SCLDBGrid, TBXDkPanels, TBXButtonSCL;

type
  Tffra_sele_pers_lista = class(TFrame)
    pane_filtros: TPCPFrame;
    Panel1: TPanel;
    fram_filt_personal: Tffra_maqu_ubicacion;
    quer_pers_disponible: TQuery;
    quer_pers_disponibleCONS_PERSONAL: TIntegerField;
    quer_pers_disponibleCODI_PERSONAL: TStringField;
    quer_pers_disponibleNOMB_COMPLETO: TStringField;
    quer_pers_disponibleCONS_UBIC_TIPO: TIntegerField;
    quer_pers_disponibleCONS_EMPRESA: TIntegerField;
    quer_pers_disponibleCONS_AREA: TIntegerField;
    quer_pers_disponibleCONS_PLANTA: TIntegerField;
    quer_pers_disponibleCONS_PLAN_LINEA: TIntegerField;
    quer_pers_disponibleCONS_LINE_SECCION: TIntegerField;
    data_pers_disponible: TDataSource;
    PCPFrame1: TPCPFrame;
    grid_pers_disponible: TSCLDBGrid;
    grid_pers_disponibleCONS_PERSONAL: TdxDBGridMaskColumn;
    grid_pers_disponibleCODI_PERSONAL: TdxDBGridMaskColumn;
    grid_pers_disponibleNOMB_COMPLETO: TdxDBGridMaskColumn;
    quer_pers_disponibleCONS_ESTADO: TIntegerField;
    quer_pers_disponibleOTRA_UBICACION: TStringField;
    quer_pers_disponibleCONS_BODEGA: TIntegerField;
    quer_pers_disponibleCONS_TURNO: TIntegerField;
    quer_pers_disponibleCONS_PERS_CARGO: TIntegerField;
    quer_pers_disponibleCONS_PERS_CENT_COSTO: TIntegerField;
    quer_pers_disponibleCONS_COST_GRUPO: TIntegerField;
    procedure quer_pers_disponibleBeforeOpen(DataSet: TDataSet);
    procedure fram_filt_personalcomb_tipo_ubicacionChange(Sender: TObject);
    procedure doActualizarConsultaPersonal(Sender: TObject);
    procedure fram_filt_personalResize(Sender: TObject);
  private
    { Private declarations }
    fConsultaEstandar   : Boolean;
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
  Published
    Property ConsultaEstandar   : Boolean Read fConsultaEstandar Write fConsultaEstandar;
  end;

implementation

uses _func_varias;

{$R *.DFM}

Constructor Tffra_sele_pers_lista.Create (Owner : TComponent);
Begin
     //Heredar la creacion
     Inherited Create (Owner);
     fConsultaEstandar := True;
     AutoHints(Self);
     InicializarFrame(fram_filt_personal);
     fram_filt_personalResize(Self);
End;
{****************************************************************
Procedimiento   : quer_pers_disponibleBeforeOpen
Objetivo        : Parametrizar la consulta de personal disponible
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 05 de 2004
Versi�n         : pcp4006
*****************************************************************}
procedure Tffra_sele_pers_lista.quer_pers_disponibleBeforeOpen(
  DataSet: TDataSet);
begin
    Try
       if fConsultaEstandar Then
         if quer_pers_disponible.ParamByName('pe_fecha').asString = '' Then
           quer_pers_disponible.paramByName('pe_fecha').Value := NowDate;
    Except
    End;
end;
{****************************************************************
Procedimiento   : fram_filt_personalcomb_tipo_ubicacionChange
Objetivo        : Actualizar el frame cuando cambie el tipo de ubicaci�n
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 05 de 2004
Versi�n         : pcp4006
*****************************************************************}
procedure Tffra_sele_pers_lista.fram_filt_personalcomb_tipo_ubicacionChange(
  Sender: TObject);
begin
  fram_filt_personal.comb_tipo_ubicacionChange(Sender);
  doActualizarConsultaPersonal(Sender);
end;
{****************************************************************
Procedimiento   : doActualizarConsultaPersonal
Objetivo        : Actualizar la consulta de personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 05 de 2004
Versi�n         : pcp4006
*****************************************************************}
procedure Tffra_sele_pers_lista.doActualizarConsultaPersonal(
  Sender: TObject);
Var
    var_filtro  : String;
begin
  inherited;
  Try
      quer_pers_disponible.DisableControls;
      //Asignar el filtro
      var_filtro := fram_filt_personal.getFilter;
      quer_pers_disponible.Filter := var_filtro;
      quer_pers_disponible.Filtered := (var_filtro <> '');
  Except
       On e:Exception do
         EjecutarMensajeError(e.Message);
  End;
  quer_pers_disponible.EnableControls;
end;
{****************************************************************
Procedimiento   : fram_filt_personalResize
Objetivo        : Cambiar el tama�o del panel al cambiar la selecci�n
                  de los filtros
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tffra_sele_pers_lista.fram_filt_personalResize(Sender: TObject);
begin
        //--------------PENDIENTE-------------RESIZE AUTOMATICO
        //pane_Filtros.Height := fram_filt_personal.Height + pane_filtros.p1.Height + 10; 
end;

end.
