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
        Unit            : un0_dise_consultas
        Objetivo        : Diseñador de consultas y reportes en general
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 30-mar-2005
        Versión         : pcp4.0.20.6
*******************************************************************}

unit un0_dise_consultas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, _cons_pcp, comctrls,
  _vent_modal, Menus, TB2Item, TBX, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxExEdtr, dxEdLib, dxDBELib, SCLTabs, ufra_mens_atencion,
  cxControls, cxContainer, cxTreeView, JvExControls, JvComponent,
  JvOutlookBar, SCLOutlookBar, PCPFrame, ExtCtrls, dfsSplitter,
  PictureContainer, DBTables, AdvPanel, Db, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, Boxes, PCPProceso, dxEditor, StdCtrls,
  SoCtrls, SCLDBLabel, TB2Dock, TB2Toolbar;
  
type
  TItemActivo = TObjetoAdicionalPCP;
  Tfn0_dise_consultas = class(T_fvent_modal)
    quer_consulta: TQuery;
    PCPFrame2: TPCPFrame;
    barr_objetos: TSCLOutlookBar;
    PCPFrame1: TPCPFrame;
    fram_Titulo: Tffra_mens_atencion;
    dfsSplitter1: TdfsSplitter;
    quer_auxiliar: TQuery;
    POP_Items: TTBXPopupMenu;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem3: TTBXItem;
    quer_Eliminar: TQuery;
    acciones: TActionList;
    acti_ejecutar: TAction;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    acti_Editar: TAction;
    TBXItem6: TTBXItem;
    Arbol: TcxTreeView;
    TBXItem7: TTBXItem;
    acti_expandir: TAction;
    acti_contraer: TAction;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem8: TTBXItem;
    TBXItem9: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    PCPFrame3: TPCPFrame;
    dfsSplitter2: TdfsSplitter;
    fram_titu_Vist_previa: Tffra_mens_atencion;
    quer_vist_previa: TQuery;
    data_vist_previa: TDataSource;
    page: TSCLPageControl;
    page_consultas: TSCLTabSheet;
    Panel1: TPanel;
    split_descripcion: TdfsSplitter;
    memo_descripcion: TdxDBMemo;
    page_Formularios: TSCLTabSheet;
    page_informes: TSCLTabSheet;
    page_imagenes: TSCLTabSheet;
    quer_vist_consulta: TQuery;
    Grid: TSCLDBGrid;
    procedure doEditarConsulta(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure barr_objetosButtonClick(Sender: TObject; Index: Integer);
    procedure padr_acti_nuevoExecute(Sender: TObject);
    procedure padr_acti_nuevoUpdate(Sender: TObject);
    procedure padr_acti_eliminarUpdate(Sender: TObject);
    procedure padr_acti_eliminarExecute(Sender: TObject);
    procedure padr_acti_actualizarClick(Sender: TObject);
    procedure acti_ejecutarExecute(Sender: TObject);
    procedure acti_ejecutarUpdate(Sender: TObject);
    procedure acti_EditarExecute(Sender: TObject);
    procedure acti_EditarUpdate(Sender: TObject);
    procedure acti_expandirExecute(Sender: TObject);
    procedure acti_contraerExecute(Sender: TObject);
    procedure ArbolChange(Sender: TObject; Node: TTreeNode);
  private
    { Private declarations }
    var_ItemActivo      : TItemActivo;
    Function nomb_menu_actual        : String;
    Procedure CargarListaInicial;
    Procedure SetItemActivo(peValor : TItemActivo);
  public
    { Public declarations }
    Property ItemActivo : TItemActivo Read var_ItemActivo Write SetItemActivo;
  end;

var
  fn0_dise_consultas: Tfn0_dise_consultas;


implementation

uses un0_wiza_fuen_datos, _MDI, _uData, _cons_colores, _func_varias,
  un0_dise_child, _func_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : CargarListaInicial
Objetivo        : Carga la lista con los items principales del menú
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tfn0_dise_consultas.CargarListaInicial;
Var
        var_i   : Integer;
        var_item    : TListItem;
        var_Item_Arbol  : TTreeNode;
        var_Item_Hijo   : TTreeNode;
        var_Inactivo    : Integer;
Const
        //Numero de menús deshabilitados al final
        coiMenusDeshabilitados  = 0;
Begin
    Try
        //Arbol
        Arbol.Items.Clear;
        For var_i := 1 To _fMDI.barra.Items.Count - coiMenusDeshabilitados do
        Begin
            var_Item_Arbol := Arbol.Items.Add(Nil, _fMDI.barra.Items[Var_i - 1].Caption);
            var_Item_Arbol.ImageIndex := 0;
            var_Item_Arbol.StateIndex := var_i - 1;
            var_Item_Arbol.SelectedIndex := 0;
            //Crear los hijos
            With quer_Consulta do
            Begin
                if Active Then Close;
                ParamByName('tipo').Value := ObjetoAdicionalPCPToInteger(var_ItemActivo);
                ParamByName('menu_padre').Value := _fMDI.barra.Items[Var_i - 1].Caption;
                Open;
                While not EOF do
                Begin
                    //Crear el Item
                    var_Item_Hijo := Arbol.Items.AddChild(var_Item_Arbol, quer_Consulta.FieldByName('nomb_objeto').AsString);
                    var_Item_Hijo.StateIndex := quer_Consulta.FieldByName('cons_conf_objeto').asInteger;
                    //Imagen
                    if (quer_Consulta.FieldByName('esta_activo').AsInteger = 1) Then
                         var_Inactivo := 0
                    Else
                         var_Inactivo := 1;
                    var_Item_Hijo.ImageIndex := coiIndexImagenesObjetoAdicionalPCP[var_ItemActivo] + var_Inactivo;
                    var_Item_Hijo.SelectedIndex := var_Item_Hijo.ImageIndex;
                    //Siguiente
                    Next;
                End;
                Close;
            End;
        End;
    Except
        on E:Exception do
             EjecutarMensajeError(e.Message);
    End;
End;
{****************************************************************
Procedimiento   : doEditarConsulta
Objetivo        : Editar la consulta seleccionada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_consultas.doEditarConsulta(Sender: TObject);
begin
  inherited;
  Application.CreateForm(Tfwiza_fuen_datos, fwiza_fuen_datos);
  fwiza_fuen_datos.doEjecutarAsistente(quer_consulta);
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_consultas.FormCreate(Sender: TObject);
begin
  inherited;
  fram_Titulo.SetNormalColors;
  fram_Titulo.fram_label.Font.Color := clTextoGradiente;
  fram_titu_Vist_previa.SetNormalColors;
  barr_Objetos.onCustomDraw := _fmdi.DoOutLookBarCustomDraw;
  page.HideTabs := True;
  SetItemActivo(toaConsultas);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : barr_objetosButtonClick
Objetivo        : Ejecutar el cambio de selección en la barra
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_consultas.barr_objetosButtonClick(Sender: TObject;
  Index: Integer);
begin
  inherited;
  If (barr_Objetos.ActivePageIndex = 0) Then
  Begin
      Case Index of
         0 : SetItemActivo(toaConsultas);
         1 : SetItemActivo(toaFormularios);
         2 : SetItemActivo(toaInformes);
      End;
  End;
end;
{****************************************************************
Procedimiento   : SetItemActivo
Objetivo        : Activa el tipo de item en el cual se esté trabajando
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tfn0_dise_consultas.SetItemActivo(peValor : TItemActivo);
Begin
        var_ItemActivo := peValor;
        //Estado de los botones
        barr_Objetos.pages[0].Buttons[0].Down := (var_ItemActivo = toaConsultas);
        barr_Objetos.pages[0].Buttons[1].Down := (var_ItemActivo = toaFormularios);
        barr_Objetos.pages[0].Buttons[2].Down := (var_ItemActivo = toaInformes);
        barr_Objetos.pages[0].Buttons[3].Down := (var_ItemActivo = toaImagenes);
        //Pagina de la vista previa
        Case var_ItemActivo of
            toaConsultas : page.ActivePage := page_consultas;
            toaFormularios :  page.ActivePage := page_formularios;
            toaInformes :  page.ActivePage := page_Informes;
            toaImagenes :  page.ActivePage := page_Imagenes;
        End;
        //Mover los controles de descripción
        memo_descripcion.parent := page.ActivePage;
        split_descripcion.Parent := page.ActivePage;
        memo_descripcion.Top := 0;
        //Cargar la lista inicial
        CargarListaInicial;
        fram_Titulo.SetCaption(cosTitulosObjetoAdicionalPCP[var_ItemActivo]);
End;
{****************************************************************
Procedimiento   : padr_acti_nuevoExecute
Objetivo        : Ejecutar la acción NUEVO
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_consultas.padr_acti_nuevoExecute(Sender: TObject);
var
        var_nombre : String;
begin
  inherited;
//  Application.CreateForm(Tfwiza_fuen_datos, fwiza_fuen_datos);
//
//  If fwiza_fuen_datos.doEjecutarAsistente(var_Nombre, var_nomb_menu_actual, quer_auxiliar, True, True, True) Then
//        LlamarItems(var_nomb_menu_actual);
    Case var_ItemActivo  of
         toaConsultas : Begin
              Application.CreateForm(tfn0_dise_child, fn0_dise_child);
              fn0_dise_Child.ejecutar(tivdEdicion, 0, nomb_menu_actual);
              fn0_dise_Child.padr_acti_dise_guar_comoExecute(Sender);
         End;
    End;
end;
{****************************************************************
Procedimiento   : padr_acti_nuevoUpdate
Objetivo        : Controlar el estado de la acción NUEVO
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_consultas.padr_acti_nuevoUpdate(Sender: TObject);
begin
  inherited;
  //Activar la acción NUEVO solamente cuando esté en un nodo principal
  padr_acti_nuevo.Enabled := (Arbol.Selected <> Nil) and (Arbol.Selected.Parent = Nil);
end;
{****************************************************************
Procedimiento   : padr_acti_eliminarUpdate
Objetivo        : Controlar el estado de la acción ELIMINAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_consultas.padr_acti_eliminarUpdate(Sender: TObject);
begin
  inherited;
  padr_acti_eliminar.Enabled := (Arbol.Selected <> Nil) and (Arbol.Selected.Parent <> Nil);
end;
{****************************************************************
Procedimiento   : padr_acti_eliminarExecute
Objetivo        : Elimina el item seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_consultas.padr_acti_eliminarExecute(Sender: TObject);
begin
  inherited;
  //Verificar que no esté vacío
  If (Arbol.Selected = Nil) Then Exit;
  If (Arbol.Selected.Parent = Nil) Then Exit;
  //Confirmar que desea eliminar
  If (Confirmar(cosDeseaEliminar) = mrYes) Then
    With quer_Eliminar do
    Begin
        ParamByName('cons_conf_objeto').Value := Arbol.Selected.StateIndex;
        ExecSQL;
        //Actualizar la consulta
        padr_acti_actualizar.Execute;

    End;
end;
{****************************************************************
Procedimiento   : padr_acti_actualizarClick
Objetivo        : Actualizar los items existentes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_consultas.padr_acti_actualizarClick(Sender: TObject);
begin
  inherited;
  CargarListaInicial;   
end;
{****************************************************************
Procedimiento   : acti_ejecutarExecute
Objetivo        : Ejecutar la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_consultas.acti_ejecutarExecute(Sender: TObject);
begin
  inherited;
  //Verificar el item seleccionado
  if (Arbol.Selected = Nil) Then Exit;
  If (Arbol.Selected.Parent = Nil) Then Exit;
  //Evaluar el caso del item activo
  Case var_ItemActivo of
     toaConsultas : Begin
        Application.CreateForm(tfn0_dise_child, fn0_dise_child);
        fn0_dise_Child.ejecutar(tivdEjecucion, Arbol.Selected.StateIndex, _fmdi.barra.Items[Arbol.Selected.StateIndex].Caption);
     End;
  End;
end;
{****************************************************************
Procedimiento   : acti_ejecutarUpdate
Objetivo        : Actualizar el estado de la acción EJECUTAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_consultas.acti_ejecutarUpdate(Sender: TObject);
begin
  inherited;
  acti_ejecutar.Enabled := (Arbol.Selected <> Nil) and (Arbol.Selected.Parent <> Nil);
end;
{****************************************************************
Procedimiento   : acti_EditarExecute
Objetivo        : Ejecuta el objeto seleccionado en modo de edición
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 05-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_consultas.acti_EditarExecute(Sender: TObject);
begin
  inherited;
  //Verificar la selección
  if (Arbol.Selected = Nil) Then Exit;
  if (Arbol.Selected.Parent = Nil) Then Exit;

  Case var_ItemActivo of
     toaConsultas : Begin
        Application.CreateForm(tfn0_dise_child, fn0_dise_child);
        fn0_dise_Child.ejecutar(tivdEdicion, Arbol.Selected.StateIndex, _fmdi.barra.Items[Arbol.Selected.StateIndex].Caption);
     End;
  End;
end;
{****************************************************************
Procedimiento   : acti_EditarUpdate
Objetivo        : Ejecutar la acción de editar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_consultas.acti_EditarUpdate(Sender: TObject);
begin
  inherited;
  acti_editar.Enabled := (Arbol.Selected <> Nil) and (Arbol.Selected.Parent <> Nil);
end;
{****************************************************************
Procedimiento   : acti_expandirExecute
Objetivo        : Expandir todos los items del árbol
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_consultas.acti_expandirExecute(Sender: TObject);
begin
  inherited;
  Arbol.FullExpand;
end;
{****************************************************************
Procedimiento   : acti_contraerExecute
Objetivo        : Contraer los items del arbol
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_consultas.acti_contraerExecute(Sender: TObject);
begin
  inherited;
  Arbol.FullCollapse;
end;

procedure Tfn0_dise_consultas.ArbolChange(Sender: TObject;
  Node: TTreeNode);
var
        var_Columna     : tdxDBTreeListColumn;
        var_i   : IntegeR;
begin
  inherited;
  //Limpiar la vista previa
  quer_Vist_previa.Close;
  For var_i := 1 to Grid.ColumnCount do
     Grid.Columns[0].Free;
  //Validar la selección
  if (Arbol.Selected = Nil) Then Exit;
  if (Arbol.Selected.Parent = Nil) Then Exit;
  //Abrir la consulta de descripción
  With quer_vist_previa do
  Begin
        ParamByName('cons_conf_objeto').Value := Arbol.Selected.StateIndex;
        Open;
  End;
  //Evaluar los casos de la vista previa
  Case var_ItemActivo of
        //Consultas
        toaConsultas : Begin
                With quer_Vist_consulta do
                Begin
                     Close;
                     ParamByName('cons_Conf_objeto').Value := Arbol.Selected.StateIndex;
                     Open;
                     //Recorrer los campos
                     While not Eof do
                     Begin
                          //Crear la columna
                          if (FieldByName('visible').asInteger = 1) Then
                          Begin
                            var_Columna := Grid.createColumn(TdxDBGridColumn);
                            var_Columna.Caption := FieldByName('text_campo').asString;
                          End;
                          Next;
                     End;
                     Close;
                     Grid.Filter.Active := False;
                     AjustarGrid(Grid);
                End;
        End;

  End;
end;
{****************************************************************
Procedimiento   : nomb_menu_actual
Objetivo        : Nombre del menú seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function Tfn0_dise_consultas.nomb_menu_actual : String;
Begin
    Result := '';
    If Arbol.Selected = Nil Then Exit;
    if Arbol.Selected.Parent = Nil Then
       Result := Arbol.Selected.Text;
End;

end.


