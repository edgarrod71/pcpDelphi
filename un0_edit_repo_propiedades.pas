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
        Unit            : un0_edit_repo_propiedades
        Objetivo        : Edición de las propiedades de los reportes
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Febrero 03 de 2005
        Versión         : pcp4.0.20.0
*******************************************************************}
unit un0_edit_repo_propiedades;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Printers, RLTypes, RLReport,

  _vent_modal, dxEdLib, dxExEdtr, ufra_edit_repo_fuente,
  TBXDkPanels, TBXButtonSCL, dxEditor, PCPFrame, SCLTabs, PictureContainer,
  DBTables, AdvPanel, dxCntner, Db, SCLPropiedadesForm, DBActns,
  ActnList, ImgList, Boxes, PCPProceso, dxDBELib, StdCtrls, SoCtrls,
  SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar;

type
  Tfn0_edit_repo_propiedades = class(T_fvent_modal)
    Panel1: TPanel;
    page: TSCLPageControl;
    dxTabSheet1: TSCLTabSheet;
    dxTabSheet2: TSCLTabSheet;
    dxTabSheet3: TSCLTabSheet;
    PCPFrame1: TPCPFrame;
    comb_tama_papel: TdxPickEdit;
    labe_ancho: TSCLDBLabel;
    labe_alto: TSCLDBLabel;
    edit_ancho: TdxSpinEdit;
    edit_alto: TdxSpinEdit;
    PCPFrame2: TPCPFrame;
    boto_vertical: TTBXButtonSCL;
    imag_hoja: TImageList;
    boto_horizontal: TTBXButtonSCL;
    PCPFrame3: TPCPFrame;
    SCLDBLabel3: TSCLDBLabel;
    edit_marg_superior: TdxSpinEdit;
    SCLDBLabel4: TSCLDBLabel;
    edit_marg_inferior: TdxSpinEdit;
    SCLDBLabel5: TSCLDBLabel;
    edit_marg_izquierdo: TdxSpinEdit;
    SCLDBLabel6: TSCLDBLabel;
    edit_marg_derecho: TdxSpinEdit;
    PCPFrame4: TPCPFrame;
    SCLDBLabel7: TSCLDBLabel;
    edit_nume_Columnas: TdxSpinEdit;
    SCLDBLabel8: TSCLDBLabel;
    edit_espaciado: TdxSpinEdit;
    PCPFrame5: TPCPFrame;
    PCPFrame6: TPCPFrame;
    SCLDBLabel9: TSCLDBLabel;
    comb_unidades: TdxPickEdit;
    chec_encabezado: TdxCheckEdit;
    chec_pie: TdxCheckEdit;
    Panel2: TPanel;
    edit_nomb_reporte: TdxEdit;
    fram_edit_fuente: Tffra_edit_repo_fuente;
    procedure boto_Camb_fuenteClick(Sender: TObject);
    procedure doCambiarTamanoPapel(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure acti_padr_cancelar_2Execute(Sender: TObject);
    procedure padr_accionesUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    var_QR : TRLReport;
    procedure ActualizarValores;
    procedure VerificarValores;
    procedure AsignarValores;
  public
    { Public declarations }
    function doEjecutarVentana(AReport: TRLReport): Boolean;
  end;

var
  fn0_edit_repo_propiedades: Tfn0_edit_repo_propiedades;

ResourceString
    cosDebeSeleccionarTamanoPapel   = 'Debe seleccionar el tamaño del papel.';
    cosDebeSeleccionarUnidadDeMedida = 'Debe seleccionar una unidad de medida.';


implementation

uses _cons_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : boto_Camb_fuenteClick
Objetivo        : Cambia la fuente predeterminada del reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_edit_repo_propiedades.boto_Camb_fuenteClick(Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : doEjecutarVentana
Objetivo        : Ejecuta el dialogo de propiedades
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
function Tfn0_edit_repo_propiedades.doEjecutarVentana(AReport: TRLReport): Boolean;
begin
  var_QR := AReport;
  ActualizarValores;
  Result := ShowModal = mrOk;
end;
{****************************************************************
Procedimiento   : ActualizarValores
Objetivo        : Actualiza los valores del diálogo con el QR activo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_edit_repo_propiedades.ActualizarValores;
var
  LIndex: Integer;
begin
  //Nombre del reporte
  edit_nomb_reporte.Text := var_QR.Title;
  if (edit_nomb_reporte.Text = '') Then
    edit_nomb_reporte.Text := cosSinTitulo;
  //Tamaño del papel
//  LIndex := -1;
  case var_QR.PageSetup.PaperSize of
    fpA2: LIndex := 0;
    fpA3: LIndex := 1;
    fpA4: LIndex := 2;
    fpA4_Small: LIndex := 3;
    fpA5: LIndex := 4;
    fpB4: LIndex := 5;
    fpB5: LIndex := 6;
    fpLetter : LIndex := 7;
    Else LIndex := 8;
  end;
  comb_tama_papel.ItemIndex := LIndex;
  doCambiarTamanoPapel(Self);
  //Orientación del papel
  case var_QR.PageSetup.Orientation of
    poPortrait: boto_vertical.Checked := True;
    poLandscape: boto_horizontal.Checked := True;
  end;
  edit_marg_izquierdo.Value := (var_QR.Margins.LeftMargin);
  edit_marg_derecho.Value := (var_QR.Margins.RightMargin);
  edit_marg_superior.Value := (var_QR.Margins.TopMargin);
  edit_marg_inferior.Value := (var_QR.Margins.BottomMargin);
{  edit_espaciado.Value := (var_QR.Page.ColumnSpace);
  edit_nume_columnas.Value := var_QR.Page.Columns;}
  fram_edit_fuente.Fuente := var_QR.Font;
  //Unidad de medida
//  LIndex := -1;
  case var_QR.RealBounds.UsedUnit of
    buMilimeters: LIndex := 1;
    buInches: LIndex := 2;
    Else LIndex := 0;
  end;
  comb_unidades.ItemIndex := LIndex;
{  chec_encabezado.Checked := FirstPageHeader in var_QR.Options;
  chec_pie.Checked := LastPageFooter in var_QR.Options;}
end;


{****************************************************************
Procedimiento   : doCambiarTamanoPapel
Objetivo        : Actualiza los controles al cambiar el tamaño del papel
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_edit_repo_propiedades.doCambiarTamanoPapel(Sender: TObject);
begin
  inherited;
  //Edición del tamaño personalizado
  if comb_tama_papel.ItemIndex = 8 then
  begin
    Edit_Ancho.Value := var_QR.PageSetup.PaperWidth;
    Edit_Alto.Value := var_QR.PageSetup.PaperHeight;
    Edit_Ancho.Enabled := True;
    Edit_Alto.Enabled := True;
    labe_Ancho.Enabled := True;
    Labe_Alto.Enabled := True;
  end
  else
  begin
    Edit_Ancho.Value := 0;
    Edit_Alto.Value := 0;
    Edit_Ancho.Enabled := False;
    Edit_Alto.Enabled := False;
    labe_Ancho.Enabled := False;
    Labe_Alto.Enabled := False;
  end;

end;
{****************************************************************
Procedimiento   : VerificarValores
Objetivo        : Verificar los valores del diálogo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_edit_repo_propiedades.VerificarValores;
begin
  //Tamaño del papel
  if comb_tama_papel.ItemIndex = -1 then
    raise Exception.Create(cosDebeSeleccionarTamanoPapel);
  //Unidad de medida
  if comb_unidades.ItemIndex = -1 then
    raise Exception.Create(cosDebeSeleccionarUnidadDeMedida);
end;

{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Aceptar los cambios hechos al reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_edit_repo_propiedades.padr_acti_aceptarExecute(
  Sender: TObject);
begin
//  inherited;
  VerificarValores;
  AsignarValores;
  ModalResult := mrOk;
  Close;
end;
{****************************************************************
Procedimiento   : AsignarValores
Objetivo        : Guarda los valores asignados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_edit_repo_propiedades.AsignarValores;
begin
  //Nombre del reporte
  if (edit_nomb_reporte.Text = '') Then
    edit_nomb_reporte.Text := cosSinTitulo;
  var_QR.Title := edit_nomb_reporte.Text;
  //Tamaño del papel
  case comb_tama_papel.ItemIndex of
    0: var_QR.PageSetup.PaperSize := fpA2;
    1: var_QR.PageSetup.PaperSize := fpA3;
    2: var_QR.PageSetup.PaperSize := fpA4;
    3: var_QR.PageSetup.PaperSize := fpA4_Small;
    4: var_QR.PageSetup.PaperSize := fpA5;
    5: var_QR.PageSetup.PaperSize := fpB4;
    6: var_QR.PageSetup.PaperSize := fpB5;
    7: var_QR.PageSetup.PaperSize := fpLetter;
    8: var_QR.PageSetup.PaperSize := fpCustom;
  end;
  //Tamaño personalizado
  if comb_tama_papel.ItemIndex = 8 then
  begin
    var_QR.PageSetup.PaperWidth := edit_ancho.Value;
    var_QR.PageSetup.PaperHeight := edit_alto.Value;
  end;
  //Orientación
  if boto_vertical.Checked Then var_QR.PageSetup.Orientation := poPortrait
  Else var_QR.PageSetup.Orientation := poLandscape;
  //Margenes
  var_QR.Margins.LeftMargin := edit_marg_izquierdo.Value;
  var_QR.Margins.RightMargin := edit_marg_derecho.Value;
  var_QR.Margins.TopMargin := edit_marg_Superior.Value;
  var_QR.Margins.BottomMargin := edit_marg_Inferior.Value;
{  var_QR.Page.Columns := edit_nume_Columnas.IntValue;}
  var_QR.Font.Assign(fram_edit_fuente.Fuente);
  //Unidad de medida
  case comb_unidades.ItemIndex of
    0: var_QR.RealBounds.UsedUnit := buNone;
    1: var_QR.RealBounds.UsedUnit := buMilimeters;
    2: var_QR.RealBounds.UsedUnit := buInches;
  end;
{  if chec_encabezado.Checked then
    var_QR.Options := var_QR.Options + [FirstPageHeader]
  else
    var_QR.Options := var_QR.Options - [FirstPageHeader];
  if chec_pie.Checked then
    var_QR.Options := var_QR.Options + [LastPageFooter]
  else
    var_QR.Options := var_QR.Options - [LastPageFooter];}
end;
{****************************************************************
Procedimiento   : acti_padr_cancelar_2Execute
Objetivo        : Cancelar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_edit_repo_propiedades.acti_padr_cancelar_2Execute(
  Sender: TObject);
begin
  //inherited;
  ModalResult := mrCancel;
  Close;
end;
{****************************************************************
Procedimiento   : padr_accionesUpdate
Objetivo        : Actualizar las acciones
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_edit_repo_propiedades.padr_accionesUpdate(
  Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  padr_acti_aceptar.Enabled := True;
  padr_acti_aceptar.Visible := True;
  acti_padr_cancelar_2.Enabled := True;
  acti_padr_cancelar_2.Visible := True;
  padr_boto_Cancelar.Visible := True;
  padr_boto_Cancelar.Action := acti_padr_cancelar_2;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn0_edit_repo_propiedades.FormCreate(Sender: TObject);
begin
  inherited;
  page.ActivePageIndex := 0;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
