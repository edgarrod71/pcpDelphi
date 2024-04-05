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
        Unit            : un1_refe_fich_maestro_vista
        Objetivo        : Maestro de fichas técnicas (con visualización)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 01-Jun-2005
        Versión         : pcp4.0.20.11
*******************************************************************}
unit un1_refe_fich_maestro_vista;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_refe_00_maestro, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ufra_edit_reportes,
  ExtCtrls, JvTracker, StdCtrls, ThumbnailList, SCLTabs, dxEditor, dxEdLib,
  RxLookup, PCPLookUpComboEdit, SoCtrls, SCLDBLabel, dfsSplitter, Boxes,
  PCPFrame, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar,
  dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl;

type
  Tfn1_refe_fich_maestro_vista = class(Tfn1_refe_00_maestro)
    acti_Ventana: TActionList;
    acti_fich_01_hoja_dise_caratula: TAction;
    acti_fich_00_ver_todos: TAction;
    acti_fich_02_hoja_diseno: TAction;
    acti_fich_03_espe_gene_diseno: TAction;
    acti_fich_04_espe_dise_detalles: TAction;
    acti_fich_05_espe_empaque: TAction;
    acti_fich_06_espe_construccion: TAction;
    acti_fich_07_medi_especiales: TAction;
    acti_fich_08_medi_pren_terminada: TAction;
    acti_fich_09_espe_presentacion: TAction;
    acti_fich_10_espe_materiales: TAction;
    acti_fich_11_espe_insu_fabricacion: TAction;
    acti_fich_12_espe_insu_empaque: TAction;
    pop_Fichas_fake: TTBXPopupMenu;
    TBXItem1: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXItem8: TTBXItem;
    TBXItem9: TTBXItem;
    TBXItem10: TTBXItem;
    TBXItem11: TTBXItem;
    TBXItem12: TTBXItem;
    TBXItem13: TTBXItem;
    pop_item_fichas: TTBXSubmenuItem;
    pop_fichas: TTBXPopupMenu;
    TBGroupItem1: TTBGroupItem;
    consultaESTA_EDIT_MAESTRO: TIntegerField;
    consultaESTA_MOST_METODOS: TIntegerField;
    consultaESTA_MOST_ORDE_TRABAJO: TIntegerField;
    consultaESTA_MOST_INVE_MATERIALES: TIntegerField;
    consultaIMAGEN: TBlobField;
    consultaAJUS_IMAGEN: TIntegerField;
    consultaCON_ENTREPIERNAS: TIntegerField;
    padr_acti_gene_vistas: TAction;
    TBXItem14: TTBXItem;
    procedure doDobleClick(Sender: TObject);
    procedure doKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure acti_fich_01_hoja_dise_caratulaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure padr_acti_nuevoExecute(Sender: TObject);
    procedure acti_fich_00_ver_todosExecute(Sender: TObject);
    procedure MostrarDialogoSeleccionFichas(Sender: TObject);
    procedure VistasMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Var
   fn1_refe_fich_maestro_vista: Tfn1_refe_fich_maestro_vista;

implementation

uses un1_refe_fich_funciones, _cons_pcp, _MDI, un1_refe_fich_administrador,
  un1_refe_fich_sele_tipo, _func_varias, un1_refe_fich_00Seleccion,
  _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_maestro_vista.FormCreate(Sender: TObject);
begin
  inherited;
  VentanaReferencias := True;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : VistasDblClick
Objetivo        : Abrir el popup con doble click
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.11
*****************************************************************}
procedure Tfn1_refe_fich_maestro_vista.doDobleClick(Sender: TObject);
begin
  //inherited; -> Invalidar la herencia
  //Validar la consulta
  if Not ConsultaValida Then Exit;
  //Verificar el tipo de vista activa
  //Lista
  If padr_page_seleccion.ActivePage = padr_page_lista then
      pop_fichas.PopUp(Mouse.CursorPos.X, Mouse.CursorPos.Y)
  Else
  //Vista de imágenes
  If padr_page_seleccion.ActivePage = padr_page_imagenes then
     if (Vistas.ItemIndex > -1) Then
      pop_fichas.PopUp(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;
{****************************************************************
Procedimiento   : doKeyDown
Objetivo        : Abrir el pop-up con el teclado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_maestro_vista.doKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //inherited;-> Invalidar la herencia
  If (Key = vk_Return) or (key = vk_Escape) Then
     doDobleClick(Sender);
end;
{****************************************************************
Procedimiento   : acti_fich_01_hoja_dise_caratulaExecute
Objetivo        : Imprimir la ficha técnica de la referencia
                  01 - hoja de diseño (carátula)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_maestro_vista.acti_fich_01_hoja_dise_caratulaExecute(
  Sender: TObject);
begin
  inherited;
  if Not ConsultaValida Then Exit;
  ImprimirFichaTecnica(ftdHojaDisenoCaratula, Consulta.FieldByName('cons_Referencia').asInteger, VentanaReferencias);
end;

procedure Tfn1_refe_fich_maestro_vista.padr_acti_nuevoExecute(
  Sender: TObject);
var
        var_TipoFicha   : TFichasTecnicasDiseno;
begin
  //Inherited --> Anular la herencia
  Begin
      //Mostrar la ventana para la selección del tipo de ficha técnica
      Application.CreateForm(Tfn1_refe_fich_sele_tipo, fn1_refe_fich_sele_tipo);
      var_TipoFicha := fn1_Refe_fich_sele_tipo.Ejecutar;
      if (var_TipoFicha <> ftdSinAsignar) then
          ModificarFichaTecnica(var_TipoFicha, taInsert, 0, Caption);
  End;
end;
{****************************************************************
Procedimiento   : acti_fich_00_ver_todosExecute
Objetivo        : Abrir el editor de fichas técnicas para esta
                  referencia
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_maestro_vista.acti_fich_00_ver_todosExecute(
  Sender: TObject);
begin
  inherited;
  Application.CreateForm(Tfn1_refe_fich_administrador, fn1_refe_fich_administrador);
  fn1_refe_fich_administrador.VentanaReferencias := VentanaReferencias;
  InicializarFrame(fn1_refe_fich_administrador.fram_seleccion);
  AbrirDataSet(fn1_refe_fich_administrador.quer_fichas);
  fn1_refe_fich_administrador.myTabla_Ventana.Insert;
  fn1_refe_fich_administrador.myTabla_Ventana.FieldByName('cons_referencia').Value := Consulta.FieldByName('cons_referencia').AsInteger;
  fn1_refe_fich_administrador.fram_seleccioncomb_codi_referenciaChange(Sender);
  InicializarCombo(fn1_refe_fich_administrador.fram_seleccion.comb_variacion);
  fn1_refe_fich_administrador.fram_seleccioncomb_codi_referenciaChange(Sender);
  DarFoco(fn1_refe_fich_administrador.fram_seleccion.comb_variacion);
end;
{****************************************************************
Procedimiento   : acti_fich_02_hoja_disenoExecute
Objetivo        : Mostrar el dialogo de selección de la ficha técnica
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_maestro_vista.MostrarDialogoSeleccionFichas(
  Sender: TObject);
begin
  inherited;
  If (Sender is TAction) Then
  Begin
        Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
        fn1_refe_fich_00Seleccion.Ejecutar((sender as TAction).Tag, Consulta.FieldByName('cons_Referencia').asInteger, 0, VentanaReferencias);
  End;
  If (Sender is TTBXItem) Then
  Begin
        Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
        fn1_refe_fich_00Seleccion.Ejecutar((sender as TTBXItem).Tag, Consulta.FieldByName('cons_Referencia').asInteger, 0, VentanaReferencias);
  End;
end;
{****************************************************************
Procedimiento   : VistasMouseDown
Objetivo        : Seleccionar el item con cualquier botón
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_refe_fich_maestro_vista.VistasMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  //Seleccionar el registro
  if (Vistas.ItemAtPos(Point(X, y), True) > -1) Then
     Vistas.ItemIndex := Vistas.ItemAtPos(Point(X, y), True);
end;

end.
