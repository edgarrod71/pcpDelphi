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
        Unit            : un1_pers_sistema
        Objetivo        : Movimientos de personal -> interacción con el sistema
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 16-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}
unit un1_pers_sistema;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar, ufra_maqu_ubicacion,
  HTMLabel, SCLShape, PCPFrame, ufra_mens_atencion, ufra_sele_pers_lista,
  dfsSplitter;

type
  Tfn1_pers_sistema = class(T_fvent_modal)
    tabl_glo_pers_sistema: TTable;
    data_glo_pers_sistema: TDataSource;
    tabl_glo_pers_sistemaCONS_PERSONAL: TIntegerField;
    tabl_glo_pers_sistemaUSUA_PERSONAL: TStringField;
    tabl_glo_pers_sistemaPERS_MOVI_SOLICITAR: TIntegerField;
    tabl_glo_pers_sistemaPERS_MOVI_APROBAR: TIntegerField;
    tabl_glo_pers_sistemaPERS_AVIS_VENC_CONTRATOS: TIntegerField;
    pane_datos: TPanel;
    pane_sistema: TPCPFrame;
    Panel3: TPanel;
    fram_nomb_operario: Tffra_mens_atencion;
    PCPFrame3: TPCPFrame;
    fram_ubicacion: Tffra_maqu_ubicacion;
    PCPFrame2: TPCPFrame;
    SCLDBLabel51: TSCLDBLabel;
    SCLDBLabel52: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBCheckEdit3: TdxDBCheckEdit;
    PANE_INACTIVO: TPanel;
    SCLShape1: TSCLShape;
    labe_pers_inactivo: THTMLabel;
    SCLShape2: TSCLShape;
    dxDBCheckEdit4: TdxDBCheckEdit;
    spli: TdfsSplitter;
    fram_list_personal: Tffra_sele_pers_lista;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure padr_acti_modificarUpdate(Sender: TObject);
    procedure padr_acti_guardarUpdate(Sender: TObject);
    procedure padr_acti_cancelarUpdate(Sender: TObject);
    procedure padr_acti_guar_cerrarUpdate(Sender: TObject);
    procedure padr_acti_guardarExecute(Sender: TObject);
    procedure padr_acti_cancelarExecute(Sender: TObject);
    procedure padr_acti_guar_cerrarExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure fram_list_personalquer_pers_disponibleAfterScroll(
      DataSet: TDataSet);
    procedure fram_ubicacioncomb_tipo_ubicacionChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_pers_sistema: Tfn1_pers_sistema;

implementation

uses _func_varias, _cons_pcp, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_pers_sistema.FormCreate(Sender: TObject);
begin
  inherited;
  //Visualización
  pane_inactivo.BevelOuter := bvNone;
  fram_nomb_operario.SetHardColors(False);
  //Abrir las tablas
  AbrirDataSet(tabl_glo_pers_sistema);
  InicializarFrame(fram_Ubicacion);
  InicializarFrame(fram_list_personal);
  //Actualizar los controles
  fram_ubicacioncomb_tipo_ubicacionChange(Sender);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_pers_sistema.FormShow(Sender: TObject);
begin
  inherited;
  //Mostrar los botones de avance
  ver_Boton_Avance := True;
end;
{****************************************************************
Procedimiento   : padr_acti_modificarUpdate
Objetivo        : Actualizar el estado de la acción MODIFICAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_pers_sistema.padr_acti_modificarUpdate(Sender: TObject);
begin
  //Inherited;
  padr_acti_modificar.Enabled := (tabl_glo_pers_sistema.Active) and (tabl_glo_pers_sistema.State =dsBrowse);
end;
{****************************************************************
Procedimiento   : padr_acti_guardarUpdate
Objetivo        : Actualizar el estado de la acción GUARDAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_pers_sistema.padr_acti_guardarUpdate(Sender: TObject);
begin
  inherited;
  padr_acti_guardar.Enabled := (tabl_glo_pers_sistema.Active) and (tabl_glo_pers_sistema.State = dsEdit);
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarUpdate
Objetivo        : Actualizar el estado de la acción CANCELAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_pers_sistema.padr_acti_cancelarUpdate(Sender: TObject);
begin
  inherited;
  padr_acti_cancelar.Enabled := (tabl_glo_pers_sistema.Active) and (tabl_glo_pers_sistema.State = dsEdit);
end;
{****************************************************************
Procedimiento   : padr_acti_guar_cerrarUpdate
Objetivo        : Actualizar el estado de la acción GUARDAR Y CERRAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_pers_sistema.padr_acti_guar_cerrarUpdate(Sender: TObject);
begin
  inherited;
  padr_acti_guar_Cerrar.Enabled := (tabl_glo_pers_sistema.Active) and (tabl_glo_pers_sistema.State = dsEdit);
end;
{****************************************************************
Procedimiento   : padr_acti_guardarExecute
Objetivo        : Ejecutar la acción GUARDAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_pers_sistema.padr_acti_guardarExecute(Sender: TObject);
begin
  //inherited;
  CheckAndPostDataSet(tabl_glo_pers_sistema);
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Ejecutar la acción CANCELAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_pers_sistema.padr_acti_cancelarExecute(Sender: TObject);
begin
  //inherited;
  //Validar que se pueda cancelar
  if (Not tabl_glo_pers_sistema.Active) or (Not (tabl_glo_pers_sistema.State in [dsInsert, dsEdit])) Then
        Exit;
  //Cancelar
  if (Confirmar(cosDeseaCancelar) = mrYes) Then
     tabl_glo_pers_sistema.Cancel;
end;
{****************************************************************
Procedimiento   : padr_acti_guar_cerrarExecute
Objetivo        : Ejecutar la acción de GUARDAR Y CERRAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_pers_sistema.padr_acti_guar_cerrarExecute(Sender: TObject);
begin
  //inherited;
  CheckAndPostDataSet(tabl_glo_pers_sistema);
  Close;
end;
{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Verificar si hay datos sin guardar antes de cerrar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_pers_sistema.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  //inherited;
  if (tabl_glo_pers_sistema.Active) and ((tabl_glo_pers_sistema.State in [dsInsert, dsEdit])) Then
     Case (Confirmar(cosDeseaGuardar, mbYesNoCancel)) of
        mrYes   : tabl_glo_pers_sistema.Post;
        mrNo    : tabl_glo_pers_sistema.Cancel;
        mrCancel : canClose := False;
  End;
end;
{****************************************************************
Procedimiento   : fram_list_personalquer_pers_disponibleAfterScroll
Objetivo        : Actualizar el registro activo al cambiar el personal
                  seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_pers_sistema.fram_list_personalquer_pers_disponibleAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  pane_inactivo.Visible := fram_list_personal.quer_pers_disponible.FieldByName('cons_estado').asInteger = 2;
  fram_ubicacion.comb_tipo_ubicacionChange(Self);
end;

procedure Tfn1_pers_sistema.fram_ubicacioncomb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  fram_ubicacion.comb_tipo_ubicacionChange(Sender);
end;

end.
