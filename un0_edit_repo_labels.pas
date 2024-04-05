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
        Unit            : un0_edit_repo_labels
        Objetivo        : Ventana para la edición de propiedades
                          para labels en RL
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 13-Jul-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit un0_edit_repo_labels;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TypInfo,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TBX, TB2Item,
  TB2Dock, TB2Toolbar, SCLTabs, Boxes, PCPFrame, RLReport,
  ufra_edit_repo_distribucion, ufra_edit_repo_fuente,
  ufra_edit_Repo_band_bordes, JvExExtCtrls, JvComponent,
  JvOfficeColorButton, RLBarcode, ufra_edit_repo_system,
  ufra_edit_repo_alin_texto, ufra_edit_repo_codi_Barras,
  ufra_edit_repo_dbResult, PCPProceso;

type
  Tfn0_edit_repo_labels = class(T_fvent_modal)
    page: TSCLPageControl;
    page_general: TSCLTabSheet;
    PCPFrame1: TPCPFrame;
    SCLDBLabel3: TSCLDBLabel;
    edit_nomb_objeto: TdxEdit;
    chec_visible: TdxCheckEdit;
    chec_transparente: TdxCheckEdit;
    page_apariencia: TSCLTabSheet;
    pane_fuente: TPCPFrame;
    fram_fuente: Tffra_edit_repo_fuente;
    PCPFrame2: TPCPFrame;
    SCLDBLabel2: TSCLDBLabel;
    edit_color: TJvOfficeColorButton;
    PCPFrame3: TPCPFrame;
    fram_edit_Bordes: Tffra_edit_Repo_band_bordes;
    fram_distribucion: Tffra_edit_repo_distribucion;
    pane_db: TPanel;
    SCLDBLabel4: TSCLDBLabel;
    edit_campo: TdxButtonEdit;
    pane_texto: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    edit_texto: TdxEdit;
    pane_sys: TPanel;
    fram_sys: Tffra_edit_repo_system;
    pane_alin_texto: TPanel;
    fram_alin_texto: Tffra_edit_repo_alin_texto;
    page_codigo: TSCLTabSheet;
    fram_codi_barras: Tffra_edit_repo_codi_Barras;
    pane_mascara: TPanel;
    SCLDBLabel5: TSCLDBLabel;
    edit_mascara: TdxEdit;
    page_dbResult: TSCLTabSheet;
    fram_dbResult: Tffra_edit_repo_dbResult;
    procedure FormCreate(Sender: TObject);
    procedure padr_accionesUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure padr_acti_cancelarExecute(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edit_campoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    var_ControlRL : TRLCustomControl;
    Var_Resultado : Boolean;
    Procedure doSave;
  public
    { Public declarations }
    Function doEjecutar(peControl : TRLCustomControl) : Boolean;
  end;

var
  fn0_edit_repo_labels: Tfn0_edit_repo_labels;

implementation

Uses
        _cons_pcp,
        _func_Varias,
        _func_pcp;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn0_edit_repo_labels.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := cosPropiedades;
  edit_Color.Color := clFondoAplicacion;
  AutoHints(Self);
  var_ControlRL := Nil;
end;
{****************************************************************
Procedimiento   : padr_accionesUpdate
Objetivo        : Actualizar el estado de las acciones
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn0_edit_repo_labels.padr_accionesUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  //inherited;
  padr_acti_aceptar.Enabled := True;
  padr_acti_cancelar.Enabled := True;
end;
{****************************************************************
Procedimiento   : doEjecutar
Objetivo        : Ejecuta el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function Tfn0_edit_repo_labels.doEjecutar(peControl : TRLCustomControl) : Boolean;
Begin
        Result := False;
        //Validar
        if peControl = Nil Then
        Begin
            Raise Exception.Create(cosErrorComponenteNoValido);
            Close;
            Exit;
        End;
        var_ControlRL := peControl;
        //Nombre
        edit_nomb_objeto.Text := var_ControlRL.Name;
        Caption := Caption + ' - [' + var_ControlRL.Name + ']';
        //Datos generales
        chec_visible.Checked := var_ControlRL.Visible;
        chec_transparente.Checked := var_ControlRL.Transparent;
        fram_Fuente.Fuente := var_ControlRL.Font;
        fram_alin_texto.ControlRL := var_ControlRL;
        //Verificar si es DB
        if (IsPublishedProp(var_ControlRL, 'DataField')) Then
        Begin
            pane_texto.Visible := False;
            edit_texto.Text := '';
            pane_db.Visible := True;
            pane_db.Top := -1;
            edit_Campo.Text := VarToStr(GetPropValue(var_ControlRL, 'DataField'));
        End
        else
        Begin
            pane_db.Visible := False;
            edit_campo.Text := '';
            pane_texto.Visible := True;
            pane_texto.Top := -1;
            edit_texto.Text := var_ControlRL.Caption;
        End;

        //Verificar si tiene máscara
        if (IsPublishedProp(var_ControlRL, 'DisplayMask')) Then
        Begin
            pane_mascara.Visible := True;
            edit_mascara.Text := VarToStr(GetPropValue(var_ControlRL, 'DisplayMask'));
        End
        else
        Begin
            pane_mascara.Visible := False;
            edit_mascara.Text := '';
        End;

        //systemInfo
        pane_sys.Visible := (var_ControlRL is TRLSystemInfo);
        if pane_sys.Visible Then
        Begin
            pane_sys.Top := -1;
            fram_sys.ControlRL := (var_ControlRL as TRLSystemInfo);
            pane_Texto.Visible := False;
            edit_campo.Text := '';
        End;
        //Distribución
        fram_distribucion.ControlRL := peControl;
        //Apariencia
        edit_color.SelectedColor := var_ControlRL.Color;
        fram_edit_bordes.Objeto := var_ControlRL;
        //Codigo de barras
        page_codigo.TabVisible := (var_ControlRL is TRLCustomBarcode);
        if (var_ControlRL is TRLCustomBarcode) Then
           fram_codi_barras.ControlRL := (var_ControlRL as TRLCustomBarcode);
        //Formula - DBResult
        page_dbResult.TabVisible := (var_ControlRL is TRLCustomDBResult);
        if (var_ControlRL is TRLCustomDBResult) Then
            fram_dbResult.ControlRL := (var_ControlRL as TRLCustomDBResult);
        //Mostrar el diálogo
        var_Resultado := False;
        ShowModal;
        if (Var_Resultado) Then
        Begin
             doSave;
        End;
        Result := Var_Resultado;
End;
{****************************************************************
Procedimiento   : doSave
Objetivo        : Guardar los cambios
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tfn0_edit_repo_labels.doSave;
Begin
    //Validar
    if var_ControlRL = Nil Then
    Begin
        Raise Exception.Create(cosErrorComponenteNoValido);
        Close;
    End;
    //Generales
    if (edit_nomb_objeto.Text <> var_ControlRL.Name) Then
       var_ControlRL.Name := edit_nomb_objeto.Text;
    var_ControlRL.Visible := Chec_Visible.Checked;
    var_ControlRL.Transparent := chec_transparente.Checked;
    if (var_ControlRL is TRLSystemInfo) Then
       fram_sys.DoSave;
    fram_alin_texto.doSave;
    //Propiedades DB/NoDB
    if (IsPublishedProp(var_ControlRL, 'DataField')) Then
    Begin
        SetPropValue(var_ControlRL, 'DataField', edit_campo.Text);
    End
    else
    Begin
        var_ControlRL.Caption := edit_texto.Text;
    End;
    var_ControlRL.Font.Assign(fram_fuente.Fuente);
    //Propiedades de máscara
    if (IsPublishedProp(var_ControlRL, 'DisplayMask')) Then
    Begin
        SetPropValue(var_ControlRL, 'DisplayMask', edit_mascara.Text);
    End;
    //Distribucion
    fram_distribucion.doSave;
    //Apariencia
    var_ControlRL.Color := edit_color.SelectedColor;
    fram_Edit_Bordes.doSave;
    //Codigo de barras
    if (var_ControlRL is TRLCustomBarcode) Then
           fram_codi_barras.doSave;
    //DBResult
    if (var_ControlRL is TRLCustomDBResult) Then
            fram_dbResult.DoSave;
End;
{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Ejecutar la acción CANCELAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn0_edit_repo_labels.padr_acti_cancelarExecute(Sender: TObject);
begin
  //inherited;
  var_Resultado := False;
  Close;
end;
{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Ejecutar la acción ACEPTAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn0_edit_repo_labels.padr_acti_aceptarExecute(Sender: TObject);
begin
  //inherited;
  Var_Resultado := True;
  Close;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles al mostrar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn0_edit_repo_labels.FormShow(Sender: TObject);
begin
  inherited;
  DarFoco(edit_Texto);
end;
{****************************************************************
Procedimiento   : edit_campoButtonClick
Objetivo        : Asignar el campo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn0_edit_repo_labels.edit_campoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
Var
    var_DataSource : TDataSource;    
    var_DataSet : TDataSet;
    var_Campo : String;
begin
  inherited;
  //Obtener el DS
  var_DataSource := TDataSource(Integer(GetPropValue(var_ControlRL, 'DataSource', False)));
  if var_DataSource = Nil Then
     Raise Exception.Create(cosErrorComponenteNoTieneDataSet);
  if var_DataSource.DataSet = Nil Then
     Raise Exception.Create(cosErrorFuenteDatosNoValida);
  var_DataSet := var_DataSource.DataSet;
  //Buscar el campo
  if doEjecutarDialogoSeleccionCampos(var_DataSet, var_campo) Then
       edit_Campo.Text := UpperCase(var_Campo);
end;

end.
