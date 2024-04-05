{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeación y Control de la Producción                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza  Softconf Limitada                    }
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
        Unit            : _vent_consulta
        Objetivo        : Ventana maestra para consultas en reportes
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 27-Jun-2005
        Versión         : pcp4.0.20.14
*******************************************************************}
unit _vent_consulta;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ufra_edit_reportes,
  ExtCtrls, dfsSplitter, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels,
  TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl,
  RLPreview, RLReport, RLParser, StdCtrls, dxEdLib, dxEditor, RLPrintDialog,
  RLPreviewForm;

type
  T_fvent_consulta = class(T_fvent_child)
    padr_pane_vist_previa: TPCPFrame;
    padr_preview: TRLPreview;
    padr_RLExpressionParser1: TRLExpressionParser;
    padr_Reporte: TRLReport;
    padr_repo_band_header: TRLBand;
    padr_repo_pane_header: TRLPanel;
    padr_labe_nomb_reporte: TRLSystemInfo;
    padr_repo_band_footer: TRLBand;
    padr_labe_pcp: TRLLabel;
    padr_repo_labe_fecha: TRLLabel;
    padr_repo_fecha: TRLSystemInfo;
    padr_repo_labe_pagina: TRLLabel;
    padr_repo_labe_page_inicial: TRLSystemInfo;
    padr_repo_labe_page_final: TRLSystemInfo;
    padr_repo_labe_de: TRLLabel;
    padr_acti_repo_page_1: TAction;
    padr_acti_repo_page_anterior: TAction;
    padr_acti_repo_page_siguiente: TAction;
    padr_acti_repo_page_ultima: TAction;
    padr_boto_repo_page_ultima: TTBXItem;
    padr_boto_repo_page_siguiente: TTBXItem;
    padr_boto_repo_page_anterior: TTBXItem;
    padr_boto_repo_page_1: TTBXItem;
    padr_sepa_27: TTBXSeparatorItem;
    padr_Sepa_71: TTBXSeparatorItem;
    padr_acti_repo_page_ir: TAction;
    padr_acti_repo_page_buscar: TAction;
    padr_repo_page_ir: TTBXItem;
    padr_repo_buscar: TTBXItem;
    padr_acti_repo_imprirmir: TAction;
    TBXItem1: TTBXItem;
    n: TRLPrintDialogSetup;
    padr_acti_repo_ampliar: TAction;
    padr_acti_repo_reducir: TAction;
    padr_sepa_81: TTBXSeparatorItem;
    padr_boto_repo_reducir: TTBXItem;
    padr_boto_repo_ampliar: TTBXItem;
    pop_zoom: TTBXPopupMenu;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    item_zoom_100: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXItem8: TTBXItem;
    TBXItem9: TTBXItem;
    TBXItem10: TTBXItem;
    TBXItem11: TTBXItem;
    TBXItem12: TTBXItem;
    TBXItem13: TTBXItem;
    TBXItem14: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem15: TTBXItem;
    TBXItem16: TTBXItem;
    TBXItem17: TTBXItem;
    TBXItem4: TTBXItem;
    TBControlItem1: TTBControlItem;
    pane_zoom: TPanel;
    Label1: TLabel;
    edit_zoom: TdxButtonEdit;
    procedure FormCreate(Sender: TObject);
    procedure consultaAfterOpen(DataSet: TDataSet);
    procedure padr_previewChangeView(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure padr_acti_repo_page_1Execute(Sender: TObject);
    procedure padr_acti_repo_page_anteriorExecute(Sender: TObject);
    procedure padr_acti_repo_page_siguienteExecute(Sender: TObject);
    procedure padr_acti_repo_page_ultimaExecute(Sender: TObject);
    procedure padr_previewMouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure padr_previewMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure doZoomFromPopUp(Sender: TObject);
    procedure edit_zoomChange(Sender: TObject);
    procedure edit_zoomButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure padr_acti_repo_ampliarExecute(Sender: TObject);
    procedure padr_acti_repo_reducirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function GetCurrentZoomFactor : Real;
  end;

var
  _fvent_consulta: T_fvent_consulta;

implementation

uses _cons_pcp, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fvent_consulta.FormCreate(Sender: TObject);
begin
  //Inicializar el reporte antes de crear la ventana
  padr_reporte.Visible := False;
  padr_labe_pcp.Caption := cosNombreAplicacion;
  padr_Reporte.Title := padr_pane_titulo.Caption;
  inherited;
  //Inicialización visual y de variables
  If padr_pane_vist_previa.Visible then
  Begin
      padr_pane_vist_previa.Align := alClient;
  End;
	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : consultaAfterOpen
Objetivo        : Actualizar los controles al abrir la consulta
                  principal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-Jun-2005
Versión         : pcp4.0.20.14
*****************************************************************}
procedure T_fvent_consulta.consultaAfterOpen(DataSet: TDataSet);
begin
  //inherited;--> Cancelar la sincronización de columnas

end;
{****************************************************************
Procedimiento   : padr_previewChangeView
Objetivo        : Actualizar los controles al cambiar la vista previa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fvent_consulta.padr_previewChangeView(Sender: TObject);
begin
  inherited;
  //Control de páginas
  padr_acti_repo_page_1.enabled := padr_preview.PageIndex > 0;
  padr_acti_repo_page_anterior.enabled := padr_preview.PageIndex > 0;
  padr_acti_repo_page_siguiente.enabled := padr_preview.PageIndex < padr_preview.Pages.PageCount - 1;
  padr_acti_repo_page_ultima.enabled := padr_preview.PageIndex < padr_preview.Pages.PageCount - 1;
  padr_acti_repo_page_buscar.Enabled := True;
  padr_acti_repo_page_ir.Enabled := True;
  padr_acti_repo_imprirmir.Enabled := True;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles de la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fvent_consulta.FormShow(Sender: TObject);
begin
  inherited;
  //Actualizar el estado de las acciones del reporte
  //padr_previewChangeView(Sender);
end;
{****************************************************************
Procedimiento   : padr_acti_repo_page_1Execute
Objetivo        : Ir a la primera pagina del reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fvent_consulta.padr_acti_repo_page_1Execute(Sender: TObject);
begin
  inherited;
  padr_preview.FirstPage;
end;
{****************************************************************
Procedimiento   : padr_acti_repo_page_anteriorExecute
Objetivo        : Ir a la anterior página del reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fvent_consulta.padr_acti_repo_page_anteriorExecute(
  Sender: TObject);
begin
  inherited;
  padr_preview.PriorPage;
end;
{****************************************************************
Procedimiento   : padr_acti_repo_page_siguienteExecute
Objetivo        : Ir a la siguiente pagina del reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fvent_consulta.padr_acti_repo_page_siguienteExecute(
  Sender: TObject);
begin
  inherited;
  padr_preview.NextPage;
end;
{****************************************************************
Procedimiento   : padr_acti_repo_page_ultimaExecute
Objetivo        : Ir a la ultima pagina del reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fvent_consulta.padr_acti_repo_page_ultimaExecute(
  Sender: TObject);
begin
  inherited;
  padr_preview.LastPage;
end;
procedure T_fvent_consulta.padr_previewMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  padr_preview.ScrollDown;
end;

procedure T_fvent_consulta.padr_previewMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  padr_preview.ScrollUp;
end;
{****************************************************************
Procedimiento   : doZoomFromPopUp
Objetivo        : Cambia el factor de zoom desde el menú
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fvent_consulta.doZoomFromPopUp(Sender: TObject);
var
        var_Factor      : Real;
begin
  inherited;
  If Not (Sender is TTBXItem) Then Exit;
  var_Factor := (Sender as TTBXItem).Tag;
  //Evaluar los casos negativos (páginas completas)
  if (var_Factor < 0) Then
  Begin
      //Ajustar pagina
      if (var_Factor = -1) Then
              var_Factor := padr_preview.GetZoomFactorFullPage
      Else
      //Tamaño real
      if (var_Factor = -2) Then
              var_Factor := 100
      Else
      //Ajustar ancho
      if (var_Factor = -3) Then
              var_Factor := padr_preview.GetZoomFactorFullWidth
      Else
      //Varias paginas
      if (var_Factor = -4) Then
              var_Factor := padr_preview.GetZoomFactorMultiplePages;
  End;
  edit_Zoom.Text := FloatToStr(var_Factor);
  edit_zoomChange(Sender);
end;
{****************************************************************
Procedimiento   : edit_zoomChange
Objetivo        : Cambiar el zoom
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fvent_consulta.edit_zoomChange(Sender: TObject);
Var
        var_zoom        : Real;
begin
  inherited;
  var_zoom := GetCurrentZoomFactor;
  if var_Zoom = 100 Then
      item_zoom_100.Checked := True;
  padr_preview.ZoomFactor := var_zoom;
  edit_Zoom.Text := FormatFloat('0%', var_zoom);
end;
{****************************************************************
Procedimiento   : edit_zoomButtonClick
Objetivo        : Desplegar el pop del zoom
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fvent_consulta.edit_zoomButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  pop_zoom.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);
end;
{****************************************************************
Procedimiento   : GetCurrentZoomFactor
Objetivo        : Zoom actual de la vista previa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function T_fvent_consulta.GetCurrentZoomFactor : Float;
Var
        var_zoom        : Real;
        var_texto       : String;
begin
  inherited;
  //Borrar los caracteres indeseados
  var_Texto := edit_zoom.Text;
  While (Pos('%', var_Texto) > 0) do
      Delete(var_Texto, Pos('%', var_Texto), 1);
  While (Pos(' ', var_Texto) > 0) do
      Delete(var_Texto, Pos('%', var_Texto), 1);
  //Intentar convertirlo
  Try
      var_zoom := StrToFloat(var_Texto);
  Except
      var_Zoom := 100;
  End;
  Result := var_zoom;
End;
{****************************************************************
Procedimiento   : padr_acti_repo_ampliarExecute
Objetivo        : Ampliar la vista
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fvent_consulta.padr_acti_repo_ampliarExecute(Sender: TObject);
var
        var_Zoom : Real;
begin
  inherited;
  var_Zoom := GetCurrentZoomFactor;
  var_Zoom := var_Zoom + 25;
  edit_Zoom.Text := FloatToStr(var_Zoom);
  edit_zoomChange(Sender);
end;
{****************************************************************
Procedimiento   : padr_acti_repo_reducirExecute
Objetivo        : Reducir la vista
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fvent_consulta.padr_acti_repo_reducirExecute(Sender: TObject);
var
        var_Zoom : Real;
begin
  inherited;
  var_Zoom := GetCurrentZoomFactor;
  if (var_Zoom <= 30) Then Exit;
  var_Zoom := var_Zoom -25;
  edit_Zoom.Text := FloatToStr(var_Zoom);
  edit_zoomChange(Sender);
end;

end.
