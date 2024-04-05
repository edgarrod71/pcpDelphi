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
        Unit            : un1_prod_dise_tiquetes1
        Objetivo        : Edición de tiquetes de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 09-Ago-2005
        Versión         : pcp4.0.20.17
*******************************************************************}
unit un1_prod_dise_tiquetes1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, ufra_edit_reportes, PCPFrame;

type
  Tfn1_prod_dise_tiquetes1 = class(T_fvent_modal)
    PCPFrame1: TPCPFrame;
    pane_diseno: TPCPFrame;
    fram_edicion: Tffra_edit_reportes;
    tabl_diseno: TTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    IntegerField4: TIntegerField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    IntegerField5: TIntegerField;
    FloatField2: TFloatField;
    StringField6: TStringField;
    IntegerField6: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    Tabla_VentanaCONS_USUA_INFORME: TIntegerField;
    Tabla_VentanaCONS_USUA_MODULO: TIntegerField;
    Tabla_VentanaIDEN_VENTANA: TIntegerField;
    Tabla_VentanaNOMB_USUA_INFORME: TStringField;
    Tabla_VentanaCONTROLES: TBlobField;
    Tabla_VentanaORDE_1: TStringField;
    Tabla_VentanaORDE_ASCE_1: TIntegerField;
    Tabla_VentanaORDE_2: TStringField;
    Tabla_VentanaORDE_ASCE_2: TIntegerField;
    Tabla_VentanaORDE_3: TStringField;
    Tabla_VentanaORDE_ASCE_3: TIntegerField;
    Tabla_VentanaORDE_EJECUCION: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLDBLabel1: TSCLDBLabel;
    edit_nombre: TdxDBEdit;
    quer_modulo: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure Tabla_VentanaAfterPost(DataSet: TDataSet);
    procedure fram_edicionELDesigner1Modified(Sender: TObject);
    procedure Tabla_VentanaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_dise_tiquetes1: Tfn1_prod_dise_tiquetes1;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.17
*****************************************************************}
procedure Tfn1_prod_dise_tiquetes1.FormCreate(Sender: TObject);
begin
  inherited;
  tabl_diseno.CreateTable;
  AbrirDataSet(tabl_diseno);
  fram_edicion.reportDataSet := tabl_diseno;
  fram_Edicion.acti_nuevoExecute(Sender);
  fram_edicion.CampoFormato := Tabla_VentanaCONTROLES;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar el estado de los componentes al
                  cambiar el estado de la tabla principal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.17
*****************************************************************}
procedure Tfn1_prod_dise_tiquetes1.data_ventanaStateChange(
  Sender: TObject);
begin
  inherited;
  pane_diseno.Visible := (tabla_Ventana.Active) and (tabla_Ventana.State <> dsInsert);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Generar los valores faltantes del registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_prod_dise_tiquetes1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  if (tabla_Ventana.State = dsInsert) Then
  Begin
    //Generar el consecutivo del módulo
    With quer_modulo do
    Begin
        If Active Then Close;
        ParamByName('nomb_modulo').Value := Caption;
        Open;
        tabla_ventana.FieldByName('cons_usua_modulo').Value := FieldByName('cons_usua_modulo').asInteger;
        Close;
    End;
    tabla_ventana.FieldByName('iden_Ventana').Value := 220500;
  End;
  //Guardar el diseño
  fram_edicion.acti_guardar.Execute;
  //Herencia al final
  inherited;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Crear un nuevo tiquete
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_prod_dise_tiquetes1.Tabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  fram_Edicion.acti_NuevoExecute(Self);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterPost
Objetivo        : Actualizar la vista del informe una vez guardado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_prod_dise_tiquetes1.Tabla_VentanaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  //Asignar el nombre del reporte
  fram_edicion.TituloReporte := tabla_Ventana.FieldByName('nomb_usua_informe').asString;
end;
{****************************************************************
Procedimiento   : fram_edicionELDesigner1Modified
Objetivo        : Reaccionar a las modificaciones en el diseño
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_prod_dise_tiquetes1.fram_edicionELDesigner1Modified(
  Sender: TObject);
begin
  inherited;
  CheckAndEditDataSet(tabla_Ventana);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterScroll
Objetivo        : Actualizar los controles al cambiar el registro activo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_prod_dise_tiquetes1.Tabla_VentanaAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if not var_vent_inicializada Then Exit;
  if not tabla_Ventana.Active then Exit;
  //fram_edicion.doResetear;
  if (tabla_ventana.State = dsInsert) Then Exit;
  //Asignar el nombre del reporte
  fram_edicion.TituloReporte := tabla_Ventana.FieldByName('nomb_usua_informe').asString;
  fram_Edicion.acti_nuevoExecute(Self);
  if (Tabla_VentanaCONTROLES.BlobSize > 0) Then
  Begin
     fram_edicion.LoadReportFromBlob(Tabla_VentanaCONTROLES);
  End;
end;

end.
