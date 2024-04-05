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
        Unit            : un0_edit_repo_imagenes
        Objetivo        : Ventana para la edición de objetos
                          RLImage
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 15-Jul-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit un0_edit_repo_imagenes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TBX, TB2Item,
  TB2Dock, TB2Toolbar, ufra_edit_Repo_imagen, RLReport, SCLTabs,
  ufra_edit_Repo_band_bordes, Boxes, PCPFrame, PCPProceso;

type
  Tfn0_edit_repo_imagenes = class(T_fvent_modal)
    page: TSCLPageControl;
    page_general: TSCLTabSheet;
    Panel1: TPanel;
    fram_edit_imagen: Tffra_edit_Repo_imagen;
    TSCLTabSheet1: TSCLTabSheet;
    PCPFrame3: TPCPFrame;
    fram_edit_Bordes: Tffra_edit_Repo_band_bordes;
    PCPFrame1: TPCPFrame;
    chec_visible: TdxCheckEdit;
    chec_transparente: TdxCheckEdit;
    chec_centrado: TdxCheckEdit;
    chec_ajustar: TdxCheckEdit;
    pane_nombre: TPCPFrame;
    SCLDBLabel3: TSCLDBLabel;
    edit_nomb_objeto: TdxEdit;
    pane_db: TPanel;
    SCLDBLabel4: TSCLDBLabel;
    edit_campo: TdxButtonEdit;
    procedure FormCreate(Sender: TObject);
    procedure padr_accionesUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure padr_acti_cancelarExecute(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure edit_campoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure chec_centradoChange(Sender: TObject);
    procedure chec_ajustarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    var_ControlRL       :  TRLCustomImage;
    Var_Resultado : Boolean;
    Procedure doSave;
  public
    { Public declarations }
    Function doEjecutar(peControl : TRLCustomImage) : Boolean;
  end;

var
  fn0_edit_repo_imagenes: Tfn0_edit_repo_imagenes;

implementation

Uses
        _cons_pcp,
        _func_varias,
        _func_pcp,
        typInfo, _Traductor;
        
{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn0_edit_repo_imagenes.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := cosPropiedades;
  AutoHints(Self);
  var_ControlRL := Nil;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : padr_accionesUpdate
Objetivo        : Actualizar el estado de las acciones
                  ACEPTAR/CANCELAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn0_edit_repo_imagenes.padr_accionesUpdate(Action: TBasicAction;
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
Function Tfn0_edit_repo_imagenes.doEjecutar(peControl : TRLCustomImage) : Boolean;
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
        fram_edit_imagen.ControlRL := var_ControlRL;
        fram_edit_Bordes.Objeto := var_ControlRL;
        chec_visible.Checked := var_ControlRL.Visible;
        chec_transparente.Checked := var_ControlRL.Transparent;
        chec_centrado.Checked := var_ControlRL.Center;
        chec_ajustar.Checked := var_ControlRL.Stretch;
        //Verificar si es DB
        if (IsPublishedProp(var_ControlRL, 'DataField')) Then
        Begin
            pane_db.Visible := True;
            pane_db.Top := fram_edit_imagen.top - 1;
            edit_Campo.Text := VarToStr(GetPropValue(var_ControlRL, 'DataField'));
            fram_edit_imagen.pane_imagen.Visible := False;
        End
{****************************************************************
Procedimiento   : doSave
Objetivo        :
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}        else
        Begin
            pane_db.Visible := False;
            edit_campo.Text := '';
            fram_edit_imagen.pane_imagen.Visible := True;
        End;
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
Procedure Tfn0_edit_repo_imagenes.doSave;
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
    var_ControlRL.Center := chec_centrado.Checked;
    var_ControlRL.Stretch := chec_ajustar.Checked;
    //Propiedades DB/NoDB
    if (IsPublishedProp(var_ControlRL, 'DataField')) Then
    Begin
        SetPropValue(var_ControlRL, 'DataField', edit_campo.Text);
    End;
    //Apariencia
    fram_Edit_Bordes.doSave;
    fram_Edit_imagen.doSave;
End;

{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Ejecutar la acción CANCELAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn0_edit_repo_imagenes.padr_acti_cancelarExecute(
  Sender: TObject);
begin
  //inherited;
  var_Resultado := False;
  Close;
end;
{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Ejecutar la acción ACEPTAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn0_edit_repo_imagenes.padr_acti_aceptarExecute(
  Sender: TObject);
begin
  //inherited;
  Var_Resultado := True;
  Close;
end;
{****************************************************************
Procedimiento   : edit_campoButtonClick
Objetivo        : Seleccionar el campo (para imágenes DB)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn0_edit_repo_imagenes.edit_campoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
Var
    var_DataSet : TDataSet;
    var_Campo : String;
begin
  inherited;
  //Obtener el DS
  if (var_ControlRL.FindParentReport <> Nil) Then
    if (var_ControlRL.FindParentReport.DataSource <> Nil) Then
       if (var_ControlRL.FindParentReport.DataSource.DataSet <> Nil) Then
          var_DataSet := var_ControlRL.FindParentReport.DataSource.DataSet;
  if (var_DataSet = Nil) Then
     Raise Exception.Create(cosErrorReporteNoTieneDataSet);
  //Buscar el campo
  if doEjecutarDialogoSeleccionCampos(var_DataSet, var_campo) Then
       edit_Campo.Text := UpperCase(var_Campo);
end;
{****************************************************************
Procedimiento   : chec_centradoChange
Objetivo        : Cambiar la propiedad CENTER de la imágen
                  al cambiar el check de centrado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn0_edit_repo_imagenes.chec_centradoChange(Sender: TObject);
begin
  inherited;
  fram_edit_imagen.imagen.Center := chec_centrado.Checked;
end;
{****************************************************************
Procedimiento   : chec_ajustarChange
Objetivo        : Cambiar la propiedad SHRINKTOFIT de la imágen
                  al cambiar el check de centrado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn0_edit_repo_imagenes.chec_ajustarChange(Sender: TObject);
begin
  inherited;
  fram_edit_imagen.imagen.ShrinkToFit := chec_ajustar.Checked;

end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles al crear la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn0_edit_repo_imagenes.FormShow(Sender: TObject);
begin
  inherited;
  DarFoco(edit_nomb_objeto);
end;

end.
