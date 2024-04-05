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
        Unit            : un1_pers_dise_carne1
        Objetivo        : Diseño del carné de personal
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Febrero 04 de 2005
        Versión         : pcp4.0.20.0
*******************************************************************}
unit un1_pers_dise_carne1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, Db, ufra_edit_reportes, dxExEdtr, dxEdLib, dxDBELib,
  PCPFrame, SCLTabs, PictureContainer, DBTables, AdvPanel,
  dxCntner, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TBX,
  TB2Item, TB2Dock, TB2Toolbar;



type
  Tfn1_pers_dise_carne1 = class(T_fvent_modal)
    Tabla_VentanaCONS_PERS_FORM_IDENTIFICACION: TIntegerField;
    Tabla_VentanaCODI_PERS_FORM_IDENTIFICACION: TStringField;
    Tabla_VentanaNOMB_PERS_FORM_IDENTIFICACION: TStringField;
    Tabla_VentanaDESC_PERS_FORM_IDENTIFICACIN: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaFORMATO: TBlobField;
    page: TSCLPageControl;
    page_informacion: TSCLTabSheet;
    page_diseno: TSCLTabSheet;
    PCPFrame2: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    fram_reporte: Tffra_edit_reportes;
    quer_personal: TQuery;
    Tabla_VentanaACTIVO: TIntegerField;
    dxDBCheckEdit1: TdxDBCheckEdit;
    Tabla_VentanaDATOS: TBlobField;
    quer_personalCONS_PERSONAL: TIntegerField;
    quer_personalCODI_PERSONAL: TStringField;
    quer_personalPRIM_APELLIDO: TStringField;
    quer_personalSEGU_APELLIDO: TStringField;
    quer_personalNOMBRES: TStringField;
    quer_personalNOMB_COMPLETO: TStringField;
    quer_personalIMAGEN: TBlobField;
    quer_personalCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    quer_personalCONS_FAMI_MOVIMIENTO: TIntegerField;
    quer_personalCONS_ESTADO: TIntegerField;
    quer_personalNOMB_ESTADO: TStringField;
    quer_personalCONS_UBIC_TIPO: TIntegerField;
    quer_personalNOMB_UBIC_TIPO: TStringField;
    quer_personalCONS_EMPRESA: TIntegerField;
    quer_personalNOMB_EMPRESA: TStringField;
    quer_personalCONS_AREA: TIntegerField;
    quer_personalNOMB_AREA: TStringField;
    quer_personalCONS_PLANTA: TIntegerField;
    quer_personalNOMB_PLANTA: TStringField;
    quer_personalCONS_PLAN_LINEA: TIntegerField;
    quer_personalNOMB_PLAN_LINEA: TStringField;
    quer_personalCONS_LINE_SECCION: TIntegerField;
    quer_personalNOMB_LINE_SECCION: TStringField;
    quer_personalCONS_BODEGA: TIntegerField;
    quer_personalNOMB_BODEGA: TStringField;
    quer_personalOTRA_UBICACION: TStringField;
    quer_personalCONS_TURNO: TIntegerField;
    quer_personalCODI_TURNO: TStringField;
    quer_personalNOMB_TIPO_TURNO: TStringField;
    quer_personalCONS_PERS_CARGO: TIntegerField;
    quer_personalNOMB_PERS_CARGO: TStringField;
    quer_personalCONS_PERS_CENT_COSTO: TIntegerField;
    quer_personalNOMB_PERS_CENT_COSTO: TStringField;
    quer_personalCONS_COST_GRUPO: TIntegerField;
    quer_personalNOMB_COST_GRUPO: TStringField;
    Data_quer_personal: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure Tabla_VentanaAfterScroll(DataSet: TDataSet);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure page_disenoShow(Sender: TObject);
    procedure fram_reporteELDesigner1Modified(Sender: TObject);
  private
    { Private declarations }
    var_se_refresco : Boolean;
  public
    { Public declarations }
  end;

var
  fn1_pers_dise_carne1: Tfn1_pers_dise_carne1;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_pers_dise_carne1.FormCreate(Sender: TObject);
begin
  fram_reporte.CampoFormato := Tabla_VentanaFORMATO;
  fram_reporte.CampoDatos := Tabla_VentanaDATOS;
  fram_reporte.ReportDataSet := quer_personal;
  AbrirDataset(quer_personal);
  page.ActivePageIndex := 0;
  var_se_refresco := False;
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Guardar el reporte asociado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_pers_dise_carne1.Tabla_VentanaBeforePost(DataSet: TDataSet);
begin
  inherited;
  //Guardar el reporte
  fram_reporte.acti_guardar.Execute;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Crear un nuevo reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_pers_dise_carne1.Tabla_VentanaAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if (tabla_ventana.State in [dsEdit, dsBrowse]) Then
  Begin
          fram_reporte.acti_abrir.Execute;
          fram_reporte.doResetear;
  End;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Insertar un reporte al insertar un registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_pers_dise_carne1.Tabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  if (tabla_ventana.State in [dsInsert]) Then
  Begin
          fram_reporte.acti_nuevo.Execute;
          fram_reporte.doResetear;
  End;
end;
{****************************************************************
Procedimiento   : page_disenoShow
Objetivo        : Actualizar el diseño
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_pers_dise_carne1.page_disenoShow(Sender: TObject);
begin
  inherited;
  if Not var_se_refresco Then
  Begin
      if (tabla_ventana.State in [dsBrowse, dsEdit]) Then
           fram_reporte.acti_abrir.Execute
      Else
      if (tabla_Ventana.State in [dsInsert]) Then
           fram_reporte.acti_nuevo.Execute;
      var_se_Refresco := True;
  End;
end;
{****************************************************************
Procedimiento   : fram_reporteELDesigner1Modified
Objetivo        : Iniciar la edición al insertar un control
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_pers_dise_carne1.fram_reporteELDesigner1Modified(
  Sender: TObject);
begin
  inherited;
  CheckAndEditDataSet(Tabla_Ventana);
  padr_acti_cancelar.Visible := true;
  padr_acti_guardar.Visible := true;
  padr_acti_guar_cerrar.Visible := true;
end;

end.
