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
        Unit            : un1_form_pago_parametrizacion
        Objetivo        : Parametrización de formas de pago
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Diciembre 23 de 2004
        Versión         : pcp4.0.0.14
*******************************************************************}
unit un1_form_pago_parametrizacion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, DBCtrls, Boxes,
  PCPFrame, RxMemDS, JvExExtCtrls, JvComponent, JvDBRadioPanel, SCLShape,
  PCPProceso, SCLTabs, dxTL, dxDBCtrl, dxDBGrid, SCLDBGrid, dxDBTLCl,
  dxGrClms, Menus, ufra_mens_atencion;

type
  Tfn1_form_pago_parametrizacion = class(T_fvent_modal)
    Tabla_VentanaCONS_PERI_PAGO: TIntegerField;
    quer_peri_pago: TQuery;
    data_peri_pago: TDataSource;
    Tabla_VentanaVALO_HORA_MINI_GARANTIZADO: TFloatField;
    Tabla_VentanaVALO_HORA_PRODUCCION: TFloatField;
    quer_form_pago: TQuery;
    data_form_pago: TDataSource;
    Tabla_VentanaCONS_SIS_FORM_PAGO: TIntegerField;
    Tabla_VentanaVALO_HORA_MINI_EMPRESA: TFloatField;
    Tabla_VentanaVALO_HORA_MEDI_EMPRESA: TFloatField;
    Tabla_VentanaVALO_HORA_MAXI_EMPRESA: TFloatField;
    Tabla_VentanaVALO_HORA_PERSONALIZADO: TFloatField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    tabl_valo_hora_usuario: TTable;
    tabl_valo_hora_usuarioCONS_FORM_PAGO_VALO_HORA: TIntegerField;
    tabl_valo_hora_usuarioNOMB_FORM_PAGO_VALO_HORA: TStringField;
    tabl_valo_hora_usuarioVALO_HORA_PRODUCCION: TFloatField;
    tabl_valo_hora_usuarioFECH_SISTEMA: TDateTimeField;
    tabl_valo_hora_usuarioUSUA_SISTEMA: TStringField;
    tabl_valo_hora_usuarioCALCULADO: TIntegerField;
    data_valo_hora_usuario: TDataSource;
    ActionList1: TActionList;
    acti_nuevo: TAction;
    acti_modificar: TAction;
    acti_eliminar: TAction;
    acti_expo_xls: TAction;
    acti_expo_txt: TAction;
    acti_expo_html: TAction;
    pop_grid: TTBXPopupMenu;
    TBXItem7: TTBXItem;
    TBXItem8: TTBXItem;
    TBXItem9: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBGroupItem1: TTBGroupItem;
    quer_valo_hora_sistema: TQuery;
    data_valo_hora_sistema: TDataSource;
    quer_valo_hora_sistemaCONS_FORM_PAGO_VALO_HORA: TIntegerField;
    quer_valo_hora_sistemaNOMB_FORM_PAGO_VALO_HORA: TStringField;
    quer_valo_hora_sistemaVALO_HORA_PRODUCCION: TFloatField;
    quer_valo_hora_sistemaCALCULADO: TIntegerField;
    quer_valo_hora_sistemaFECH_SISTEMA: TDateTimeField;
    quer_valo_hora_sistemaUSUA_SISTEMA: TStringField;
    Tabla_VentanaDIAS_CALC_PROMEDIOS: TIntegerField;
    PCPFrame2: TPCPFrame;
    SCLDBLabel14: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    DBText1: TDBText;
    SCLDBLabel1: TSCLDBLabel;
    DBText2: TDBText;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    dxDBEdit1: TdxDBCurrencyEdit;
    dxDBEdit2: TdxDBCurrencyEdit;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    dxDBEdit3: TdxDBCurrencyEdit;
    PCPFrame1: TPCPFrame;
    page_prod_usuario: TSCLPageControl;
    page_usuario: TSCLTabSheet;
    pane_hora_usuario: TPanel;
    grid_hora_usuario: TSCLDBGrid;
    grid_hora_usuarioCONS_FORM_PAGO_VALO_HORA: TdxDBGridMaskColumn;
    grid_hora_usuarioNOMB_FORM_PAGO_VALO_HORA: TdxDBGridMaskColumn;
    grid_hora_usuarioVALO_HORA_PRODUCCION: TdxDBGridMaskColumn;
    grid_hora_usuarioCALCULADO: TdxDBGridMaskColumn;
    grid_hora_usuarioFECH_SISTEMA: TdxDBGridDateColumn;
    grid_hora_usuarioUSUA_SISTEMA: TdxDBGridMaskColumn;
    dock_menu: TTBXDock;
    barr_opci_usuario: TTBXToolbar;
    TBXItem3: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    menu_exportar: TTBXSubmenuItem;
    TBXItem6: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem4: TTBXItem;
    page_prod_sistema: TSCLTabSheet;
    pane_hora_sistema: TPanel;
    SCLDBGrid1: TSCLDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    dxDBGridMaskColumn4: TdxDBGridMaskColumn;
    dxDBGridDateColumn1: TdxDBGridDateColumn;
    dxDBGridMaskColumn5: TdxDBGridMaskColumn;
    mens_calc_sistema: Tffra_mens_atencion;
    procedure FormCreate(Sender: TObject);
    procedure Tabla_VentanaBeforeInsert(DataSet: TDataSet);
    procedure acti_eliminarUpdate(Sender: TObject);
    procedure acti_nuevoExecute(Sender: TObject);
    procedure acti_modificarExecute(Sender: TObject);
    procedure acti_eliminarExecute(Sender: TObject);
    procedure tabl_valo_hora_usuarioBeforePost(DataSet: TDataSet);
    procedure tabl_valo_hora_usuarioAfterPostDeleteCancel(DataSet: TDataSet);
    procedure grid_hora_usuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acti_expo_xlsExecute(Sender: TObject);
    procedure acti_expo_txtExecute(Sender: TObject);
    procedure acti_expo_htmlExecute(Sender: TObject);
    procedure page_principalChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_form_pago_parametrizacion: Tfn1_form_pago_parametrizacion;

implementation

uses _MDI, _func_varias, un1_form_pago_parametrizacion1, _Cons_pcp,
  un1_form_pago_parametrizacion2, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 23 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_parametrizacion.FormCreate(Sender: TObject);
begin
  inherited;
  //Deshabilitar las acciones
  padr_Acti_nuevo.Enabled := False;
  padr_acti_modificar.Enabled := False;
  mens_calc_sistema.SetNormalColors(true);
  page_principalChange(Sender);//-->Actualizar los controles para la pagina inicial
  //Abrir consultas
  AbrirDataSet(quer_form_pago);
  AbrirDataSet(quer_peri_pago);
  AbrirDataSet(tabl_valo_hora_usuario);
  AbrirDataSet(quer_valo_hora_sistema);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaBeforeInsert
Objetivo        : Cancelar la creación de nuevos registros
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 23 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_parametrizacion.Tabla_VentanaBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  Abort;
end;
{****************************************************************
Procedimiento   : acti_eliminarUpdate
Objetivo        : Activar/Inactivar la acción de eliminación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure Tfn1_form_pago_parametrizacion.acti_eliminarUpdate(
  Sender: TObject);
begin
  inherited;
  acti_eliminar.Enabled := (tabl_valo_hora_usuario.RecordCount > 0)
end;
{****************************************************************
Procedimiento   : acti_nuevoExecute
Objetivo        : Crear un nuevo registro del usuario
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure Tfn1_form_pago_parametrizacion.acti_nuevoExecute(
  Sender: TObject);
begin
  inherited;
  tabl_valo_hora_usuario.Insert;
  Application.CreateForm(Tfn1_form_pago_parametrizacion1, fn1_form_pago_parametrizacion1);
  fn1_form_pago_parametrizacion1.EjecutarVentana(tabl_valo_hora_usuario);
end;
{****************************************************************
Procedimiento   : acti_modificarExecute
Objetivo        : Editar el registro activo del usuario
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure Tfn1_form_pago_parametrizacion.acti_modificarExecute(
  Sender: TObject);
begin
  inherited;
  tabl_valo_hora_usuario.Edit;
  Application.CreateForm(Tfn1_form_pago_parametrizacion1, fn1_form_pago_parametrizacion1);
  fn1_form_pago_parametrizacion1.EjecutarVentana(tabl_valo_hora_usuario);
end;
{****************************************************************
Procedimiento   : acti_eliminarExecute
Objetivo        : Eliminar el registro activo del usuario
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_form_pago_parametrizacion.acti_eliminarExecute(
  Sender: TObject);
begin
  inherited;
  if (confirmar(cosDeseaEliminar) = mrYes) Then
    tabl_valo_hora_usuario.Delete
end;

{****************************************************************
Procedimiento   : tabl_valo_hora_usuarioBeforePost
Objetivo        : Validar los datos antes de guardar la tabla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure Tfn1_form_pago_parametrizacion.tabl_valo_hora_usuarioBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  ValidarDatosDataSet(tabl_valo_hora_usuario);
end;
{****************************************************************
Procedimiento   : tabl_valo_hora_usuarioAfterPostDeleteCancel
Objetivo        : Actualizar la tabla del usuario al guardar
                  o cancelar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure Tfn1_form_pago_parametrizacion.tabl_valo_hora_usuarioAfterPostDeleteCancel(
  DataSet: TDataSet);
begin
  inherited;
  tabl_valo_hora_usuario.Refresh;
end;
{****************************************************************
Procedimiento   : grid_usuarioKeyDown
Objetivo        : Controlar las pulsaciones sobre el grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure Tfn1_form_pago_parametrizacion.grid_hora_usuarioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_Return Then
     acti_modificar.Execute;
end;
{****************************************************************
Procedimiento   : acti_expo_xlsExecute
Objetivo        : Exportar los datos a EXCEL
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure Tfn1_form_pago_parametrizacion.acti_expo_xlsExecute(
  Sender: TObject);
begin
  inherited;
  ExportarDbGridAExcel(grid_hora_usuario)
end;
{****************************************************************
Procedimiento   : acti_expo_txtExecute
Objetivo        : Exportar los datos a TXT
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_form_pago_parametrizacion.acti_expo_txtExecute(
  Sender: TObject);
begin
  inherited;
  ExportarDbGridATexto(grid_hora_usuario)
end;
{****************************************************************
Procedimiento   : acti_expo_htmlExecute
Objetivo        : Exportar los datos a HTML
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure Tfn1_form_pago_parametrizacion.acti_expo_htmlExecute(
  Sender: TObject);
begin
  inherited;
  ExportarDbGridAHTML(grid_hora_usuario)
end;
{****************************************************************
Procedimiento   : page_principalChange
Objetivo        : Actualizar la posición de los controles al cambiar
                  de página
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure Tfn1_form_pago_parametrizacion.page_principalChange(
  Sender: TObject);
begin
  inherited;
  dock_menu.Parent := pane_hora_usuario;
  mens_calc_sistema.Parent := pane_hora_sistema;
end;

end.
