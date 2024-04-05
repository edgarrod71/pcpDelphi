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
        Unit            : un1_refe_fich_administrador
        Objetivo        : Administrador de fichas técnicas
                          por referencia de producto      
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 01-Jun-2005
        Versión         : pcp4.0.20.10
*******************************************************************}
unit un1_refe_fich_administrador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  ExtCtrls, Db, kbmMemTable, dxDBTLCl, dxTL, dxDBCtrl, dxCntner, dxDBGrid,
  SCLDBGrid, dfsSplitter, ufra_sele_refe_variacion, SCLShape,
  SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes, PCPProceso,
  dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, TBX, TB2Item,
  TB2Dock, TB2Toolbar, dxGrClms;

  
type
  Tfn1_refe_fich_administrador = class(T_fvent_modal)
    pane_Seleccion: TPanel;
    fram_seleccion: Tffra_sele_refe_variacion;
    pane_fichas: TPanel;
    SCLShape1: TSCLShape;
    pane_arbol: TPanel;
    Arbol: TSCLDBGrid;
    dfsSplitter1: TdfsSplitter;
    quer_fichas: TQuery;
    myTabla_Ventana: TkbmMemTable;
    myTabla_Ventanacons_Referencia: TIntegerField;
    myTabla_Ventanacons_Refe_variacion: TIntegerField;
    data_fichas: TDataSource;
    ArbolCONS_REFE_TIPO_FICHA: TdxDBTreeListMaskColumn;
    ArbolNOMB_REFE_TIPO_FICHA: TdxDBTreeListMaskColumn;
    pane_contenedor: TPanel;
    ACTI_predeterminada: TAction;
    quer_predeterminar: TQuery;
    TBXItem1: TTBXItem;
    quer_eliminar: TQuery;
    quer_fich_disponibles: TQuery;
    data_fich_disponibles: TDataSource;
    LISTA: TSCLDBGrid;
    dxDBTreeListMaskColumn3: TdxDBTreeListMaskColumn;
    dxDBTreeListDateColumn1: TdxDBTreeListDateColumn;
    dxDBTreeListMaskColumn4: TdxDBTreeListMaskColumn;
    dxDBTreeListDateColumn2: TdxDBTreeListDateColumn;
    dxDBTreeListMaskColumn5: TdxDBTreeListMaskColumn;
    Timer1: TTimer;
    arbolCANTIDAD: TdxDBGridColumn;
    dxDBTreeListColumn1: TdxDBGridImageColumn;
    dxDBTreeListMaskColumn6: TdxDBGridImageColumn;
    procedure FormCreate(Sender: TObject);
    procedure fram_seleccioncomb_codi_referenciaChange(Sender: TObject);
    procedure padr_acti_nuevoExecute(Sender: TObject);
    procedure padr_acti_guardarUpdate(Sender: TObject);
    procedure padr_acti_guardarExecute(Sender: TObject);
    procedure ArbolChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure quer_fichasAfterOpen(DataSet: TDataSet);
    procedure padr_acti_imprimirUpdate(Sender: TObject);
    procedure padr_acti_imprimirExecute(Sender: TObject);
    procedure ArbolCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure padr_acti_cancelarExecute(Sender: TObject);
    procedure padr_acti_cancelarUpdate(Sender: TObject);
    procedure ACTI_predeterminadaUpdate(Sender: TObject);
    procedure ACTI_predeterminadaExecute(Sender: TObject);
    procedure ArbolDblClick(Sender: TObject);
    procedure padr_acti_eliminarUpdate(Sender: TObject);
    procedure padr_acti_eliminarExecute(Sender: TObject);
    procedure quer_fich_disponiblesBeforeOpen(DataSet: TDataSet);
    procedure padr_acti_salirExecute(Sender: TObject);
    procedure LISTADblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure LISTACustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure padr_acti_actualizarClick(Sender: TObject);
    procedure fram_seleccionquer_referenciasBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure fram_seleccionquer_refe_variacionesBeforeOpen(
      DataSet: TDataSet);
  private
    { Private declarations }
    var_VentanaReferencias      : Boolean;
    Function SeleccionValida : Boolean;
    Function FichaActivaValida : Boolean;
    Procedure DestruirFichas;
    Procedure EjecutarAccion(peCons_Ficha : Integer);
    Procedure ActualizarVista;
    Procedure SetVentanaReferencias(peValor : Boolean);
  public
    { Public declarations }
    Property VentanaReferencias : Boolean Read var_VentanaReferencias Write SetVentanaReferencias; 
  end;

var
  fn1_refe_fich_administrador: Tfn1_refe_fich_administrador;

implementation

uses _func_varias, _cons_pcp, un1_refe_fich_funciones,
  un1_refe_fich_edic_01_hoja_diseno, un1_refe_fich_edic_02_hoja_diseno,
  un1_refe_fich_00Edicion, un1_refe_Fich_edic_03_espe_gene_diseno,
  un1_refe_fich_edic_04_espe_dise_generales,
  un1_refe_fich_edic_05_espe_empaque, un1_refe_fich_edic_07_medi_especiales,
  un1_refe_fich_edic_06_espe_construccion,
  un1_refe_fich_edic_09_espe_presentacion,
  un1_refe_fich_edic_08_medi_pren_terminada, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar el form
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : fram_seleccioncomb_codi_referenciaChange
Objetivo        : Actualizar los controles de la
                  ventana al cambiar la referencia o variación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.fram_seleccioncomb_codi_referenciaChange(
  Sender: TObject);
begin
  inherited;
  refreshQuery(quer_fich_disponibles);
  fram_seleccion.comb_codi_referenciaChange(Sender);
  CheckAndPostDataSet(myTabla_Ventana);
  pane_fichas.Visible := Not ((fram_seleccion.comb_codi_referencia.EstaVacio) Or
                        (fram_seleccion.comb_variacion.EstaVacio));
end;
{****************************************************************
Procedimiento   : padr_acti_nuevoExecute
Objetivo        : Crear una nueva ficha técnica
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.padr_acti_nuevoExecute(
  Sender: TObject);
begin
  //Inherited;-->Invalidar la herencia
  EjecutarAccion(0);
end;
{****************************************************************
Procedimiento   : SeleccionValida
Objetivo        : Indica si hay una selección válida de referencia
                  y variación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Function Tfn1_refe_fich_administrador.SeleccionValida : Boolean;
Begin
    Result := Not((fram_seleccion.comb_codi_referencia.EstaVacio) Or
                            (fram_seleccion.comb_variacion.EstaVacio));
    Result := Result and (myTabla_Ventana.Active) and (quer_fichas.Active) and
             (quer_Fichas.RecordCount > 0);
End;
{****************************************************************
Procedimiento   : DestruirFichas
Objetivo        : Destruye las fichas que se encuentren activas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure Tfn1_refe_fich_administrador.DestruirFichas;
var
        var_i   : Integer;
Begin
        For var_i := 1 to pane_contenedor.ControlCount do
            pane_Contenedor.Controls[0].Free;
End;
{****************************************************************
Procedimiento   : padr_acti_guardarUpdate
Objetivo        : Actualizar el estado de la acción guardar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.padr_acti_guardarUpdate(
  Sender: TObject);
begin
  //inherited;
  //Se puede guardar si hay ventanas creadas del tipo edición
  padr_acti_Guardar.Enabled :=  FichaActivaValida;
  if padr_acti_Guardar.Enabled Then
     if (pane_contenedor.controlCount > 0) Then
        if (pane_contenedor.Controls[0] is Tfn1_refe_fich_00Edicion) Then
          padr_acti_Guardar.Enabled := ((pane_contenedor.Controls[0] as Tfn1_refe_fich_00Edicion).padr_tabl_fich_tecnicas.State in [dsInsert, dsEdit]);
end;
{****************************************************************
Procedimiento   : padr_acti_guardarExecute
Objetivo        : Ejecutar la acción GUARDAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.padr_acti_guardarExecute(
  Sender: TObject);
begin
  //inherited;
  if Not FichaActivaValida Then Exit;
  CheckAndPostDataSet((pane_contenedor.Controls[0] as Tfn1_refe_fich_00Edicion).padr_tabl_fich_tecnicas);
  ActualizarVista;  
end;
{****************************************************************
Procedimiento   : FichaActivaValida
Objetivo        : Consultar las ventanas creadas como editoras
                  para saber si existe una válida
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Function Tfn1_refe_fich_administrador.FichaActivaValida : Boolean;
Begin
        Result := (pane_Contenedor.ControlCount = 1) and
                  (pane_contenedor.Controls[0] is Tfn1_refe_fich_00Edicion);
End;

procedure Tfn1_refe_fich_administrador.ArbolChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  inherited;
  If (Node = Nil) Then Exit;
  refreshQuery(quer_fich_disponibles);
end;


Procedure Tfn1_refe_fich_administrador.EjecutarAccion(peCons_Ficha : Integer);
Var
        var_TipoFicha   : TFichasTecnicasDiseno;
        var_cons_Referencia     : Integer;
        var_cons_refe_variacion : Integer;
        var_Cons_Ficha  : Integer;
Begin
  if not SeleccionValida Then Exit;
  DestruirFichas;
  pane_arbol.Visible := False;
  Lista.Visible := False;
  //Casos del consecutivo
  var_cons_Ficha := peCons_Ficha;
  //--------------PENDIENTE------------- delete
  var_cons_Referencia := myTabla_Ventana.FieldByName('cons_Referencia').asInteger;
  var_cons_refe_variacion := myTabla_Ventana.FieldByName('cons_Refe_variacion').asInteger;
  var_TipoFicha := IntegerToTipoFichasTecnicas(quer_fichas.FieldByName('cons_Refe_tipo_ficha').asInteger);
  Case var_TipoFicha of
      ftdHojaDisenoCaratula : Begin
              Application.CreateForm(Tfn1_refe_fich_edic_01_hoja_diseno, fn1_refe_fich_edic_01_hoja_diseno);
              fn1_refe_fich_edic_01_hoja_diseno.ManualDock(pane_Contenedor);
              fn1_refe_fich_edic_01_hoja_diseno.Ejecutar(var_VentanaReferencias, var_cons_Ficha, var_cons_Referencia,var_cons_refe_variacion);
              fn1_refe_fich_edic_01_hoja_diseno.Show;
      End;
      ftdHojaDiseno : Begin
              Application.CreateForm(Tfn1_refe_fich_edic_02_hoja_diseno, fn1_refe_fich_edic_02_hoja_diseno);
              fn1_refe_fich_edic_02_hoja_diseno.ManualDock(pane_Contenedor);
              fn1_refe_fich_edic_02_hoja_diseno.Ejecutar(var_VentanaReferencias, var_cons_Ficha, var_cons_Referencia,var_cons_refe_variacion);
              fn1_refe_fich_edic_02_hoja_diseno.Show;
      End;
      ftdEspecificacionesGeneralesDiseno : Begin
              Application.CreateForm(Tfn1_refe_Fich_edic_03_espe_gene_diseno, fn1_refe_Fich_edic_03_espe_gene_diseno);
              fn1_refe_Fich_edic_03_espe_gene_diseno.ManualDock(pane_Contenedor);
              fn1_refe_Fich_edic_03_espe_gene_diseno.Ejecutar(var_VentanaReferencias, var_cons_Ficha, var_cons_Referencia,var_cons_refe_variacion);
              fn1_refe_Fich_edic_03_espe_gene_diseno.Show;
      End;
      ftdEspecificacionesDisenoDetalles : Begin
              Application.CreateForm(Tfn1_refe_fich_edic_04_espe_dise_generales, fn1_refe_fich_edic_04_espe_dise_generales);
              fn1_refe_fich_edic_04_espe_dise_generales.ManualDock(pane_Contenedor);
              fn1_refe_fich_edic_04_espe_dise_generales.Ejecutar(var_VentanaReferencias, var_cons_Ficha, var_cons_Referencia,var_cons_refe_variacion);
              fn1_refe_fich_edic_04_espe_dise_generales.Show;
      End;
      ftdEspecificacionesEmpaque : Begin
              Application.CreateForm(Tfn1_refe_fich_edic_05_espe_empaque, fn1_refe_fich_edic_05_espe_empaque);
              fn1_refe_fich_edic_05_espe_empaque.ManualDock(pane_Contenedor);
              fn1_refe_fich_edic_05_espe_empaque.Ejecutar(var_VentanaReferencias, var_cons_Ficha, var_cons_Referencia,var_cons_refe_variacion);
              fn1_refe_fich_edic_05_espe_empaque.Show;
      End;
      ftdEspecificacionesConstruccion : Begin
              Application.CreateForm(Tfn1_refe_fich_edic_06_espe_construccion, fn1_refe_fich_edic_06_espe_construccion);
              fn1_refe_fich_edic_06_espe_construccion.ManualDock(pane_Contenedor);
              fn1_refe_fich_edic_06_espe_construccion.Ejecutar(var_VentanaReferencias, var_cons_Ficha, var_cons_Referencia,var_cons_refe_variacion);
              fn1_refe_fich_edic_06_espe_construccion.Show;
      End;
      ftdMedidasEspecialesDetalles : Begin
              Application.CreateForm(Tfn1_refe_fich_edic_07_medi_especiales, fn1_refe_fich_edic_07_medi_especiales);
              fn1_refe_fich_edic_07_medi_especiales.ManualDock(pane_Contenedor);
              fn1_refe_fich_edic_07_medi_especiales.Ejecutar(var_VentanaReferencias, var_cons_Ficha, var_cons_Referencia,var_cons_refe_variacion);
              fn1_refe_fich_edic_07_medi_especiales.Show;
      End;
      ftdMedidasPrendaTerminada : Begin
              Application.CreateForm(Tfn1_refe_fich_edic_08_medi_pren_terminada, fn1_refe_fich_edic_08_medi_pren_terminada);
              fn1_refe_fich_edic_08_medi_pren_terminada.ManualDock(pane_Contenedor);
              fn1_refe_fich_edic_08_medi_pren_terminada.Ejecutar(var_VentanaReferencias, var_cons_Ficha, var_cons_Referencia, var_cons_refe_variacion);
              fn1_refe_fich_edic_08_medi_pren_terminada.Show;
      End;
      ftdEspecificacionesPresentacion : Begin
              Application.CreateForm(Tfn1_refe_fich_edic_09_espe_presentacion, fn1_refe_fich_edic_09_espe_presentacion);
              fn1_refe_fich_edic_09_espe_presentacion.ManualDock(pane_Contenedor);
              fn1_refe_fich_edic_09_espe_presentacion.Ejecutar(var_VentanaReferencias, var_cons_Ficha, var_cons_Referencia,var_cons_refe_variacion);
              fn1_refe_fich_edic_09_espe_presentacion.Show;
      End;
  End;
End;
{****************************************************************
Procedimiento   : quer_fichasAfterOpen
Objetivo        : Actualizar los controles luego de abrir
                  la consulta de las fichas existentes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.quer_fichasAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : padr_acti_imprimirUpdate
Objetivo        : Actualiza el estado de la acción de impresión
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.padr_acti_imprimirUpdate(
  Sender: TObject);
begin
  //inherited;
  if FichaActivaValida Then
     if (pane_contenedor.controlCount > 0) Then
        if (pane_contenedor.Controls[0] is Tfn1_refe_fich_00Edicion) Then
          padr_acti_Imprimir.Enabled := Not ((pane_contenedor.Controls[0] as Tfn1_refe_fich_00Edicion).padr_tabl_fich_tecnicas.State in [dsInsert, dsEdit]);
end;
{****************************************************************
Procedimiento   : padr_acti_imprimirExecute
Objetivo        : Imprimir la ficha técnica seleccionada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.padr_acti_imprimirExecute(
  Sender: TObject);
Var
        var_TipoFicha   : TFichasTecnicasDiseno;
        var_cons_Ficha  : Integer;
begin
  inherited;
  //Validar
  if Not FichaActivaValida Then Exit;
  if pane_contenedor.ControlCount = 0 Then exit;
  if not (pane_contenedor.Controls[0] is Tfn1_refe_fich_00Edicion) Then Exit;
  var_TipoFicha := (pane_contenedor.Controls[0] as Tfn1_refe_fich_00Edicion).TipoFicha;
  var_cons_Ficha := (pane_contenedor.Controls[0] as Tfn1_refe_fich_00Edicion).padr_tabl_fich_tecnicas.FieldByName('cons_Refe_ficha').asInteger;
  ImprimirFichaTecnica(var_TipoFicha, var_Cons_Ficha, True)
End;
{****************************************************************
Procedimiento   : ArbolCustomDrawCell
Objetivo        : Cambiar el estilo a los nodos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.ArbolCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  //Pintar los padres
//  if aNode.Parent = Nil Then
//    aText := aText + '   ('+IntToStr(aNode.Count)+')';
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Ejecutar la acción CANCELAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 04-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.padr_acti_cancelarExecute(
  Sender: TObject);
begin
  //inherited;
  if Not FichaActivaValida Then Exit;
  if pane_contenedor.ControlCount = 0 Then exit;
  if not (pane_contenedor.Controls[0] is Tfn1_refe_fich_00Edicion) Then Exit;
  if (Confirmar(cosDeseaCancelar)=mrYes) Then
        (pane_contenedor.Controls[0] as Tfn1_refe_fich_00Edicion).Close;
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarUpdate
Objetivo        : Actualizar el estado de la acción CANCELAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 04-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.padr_acti_cancelarUpdate(
  Sender: TObject);
begin
  inherited;
  //inherited;
  //Se puede Cancelar si hay ventanas creadas del tipo edición
  padr_acti_Cancelar.Enabled :=  FichaActivaValida;
  {if padr_acti_Cancelar.Enabled Then
     if (pane_contenedor.controlCount > 0) Then
        if (pane_contenedor.Controls[0] is Tfn1_refe_fich_00Edicion) Then
          padr_acti_Cancelar.Enabled := ((pane_contenedor.Controls[0] as Tfn1_refe_fich_00Edicion).padr_tabl_fich_tecnicas.State in [dsInsert, dsEdit]);
  }
end;
{****************************************************************
Procedimiento   : acit_predeterminadaUpdate
Objetivo        : Actualizar el estado de la acción PREDETERMINAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 04-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.ACTI_predeterminadaUpdate(
  Sender: TObject);
begin
  inherited;
  //inherited;
  //Se puede guardar si hay ventanas creadas del tipo edición
  acti_predeterminada.Enabled := (quer_Fich_disponibles.RecordCount > 0) or (FichaActivaValida);
  if FichaActivaValida Then
     if (pane_contenedor.controlCount > 0) Then
        if (pane_contenedor.Controls[0] is Tfn1_refe_fich_00Edicion) Then
          acti_predeterminada.Enabled := ((pane_contenedor.Controls[0] as Tfn1_refe_fich_00Edicion).padr_tabl_fich_tecnicas.State <> dsInsert);
end;
{****************************************************************
Procedimiento   : acit_predeterminadaExecute
Objetivo        : Ejecutar la acción PREDETERMINAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 04-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.ACTI_predeterminadaExecute(
  Sender: TObject);
begin
  inherited;
  //Ficha activa
  if FichaActivaValida Then
  Begin
      if pane_contenedor.ControlCount = 0 Then exit;
      if not (pane_contenedor.Controls[0] is Tfn1_refe_fich_00Edicion) Then Exit;
      quer_predeterminar.Close;
      quer_predeterminar.ParamByName('cons_Refe_ficha').Value := (pane_contenedor.Controls[0] as Tfn1_refe_fich_00Edicion).padr_tabl_fich_tecnicas.FieldByName('cons_refe_ficha').asInteger;
      quer_predeterminar.ExecSQL;
      EjecutarMensaje(cosInformacion, Format(cosProcesoFinalizadoConExito, [cosPredeterminarFichaTecnica]), mtInformation, [mbOk], 0, True, True);
      padr_acti_actualizar.Execute;
  End
  Else
  //El registro activo
  Begin
      If (quer_fich_Disponibles.RecordCount = 0) then Exit;
      quer_predeterminar.Close;
      quer_predeterminar.ParamByName('cons_Refe_ficha').Value := quer_fich_disponibles.FieldByName('cons_refe_ficha').asInteger;
      quer_predeterminar.ExecSQL;
      EjecutarMensaje(cosInformacion, Format(cosProcesoFinalizadoConExito, [cosPredeterminarFichaTecnica]), mtInformation, [mbOk], 0, True, True);
      padr_acti_actualizar.Execute;
  End;
end;
{****************************************************************
Procedimiento   : ArbolDblClick
Objetivo        : Ejecutar con DOBLE CLICK
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 04-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.ArbolDblClick(Sender: TObject);
begin
  inherited;
  //Verificar que la consulta esté abierta
  If Not (quer_fich_disponibles.Active) Then
        AbrirDataSet(quer_fich_disponibles);
  //Si no hay fichas del tipo, crearla
  If quer_fich_disponibles.RecordCount = 0 Then
        EjecutarAccion(0);
  //Si hay una sola ficha del tipo, abrirla
  If quer_fich_disponibles.RecordCount = 1 Then
        EjecutarAccion(quer_fich_disponibles.FieldByName('cons_Refe_ficha').asInteger);
end;
{****************************************************************
Procedimiento   : padr_acti_eliminarUpdate
Objetivo        : Actualizar el estado de la acción ELIMINAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 04-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_administrador.padr_acti_eliminarUpdate(
  Sender: TObject);
begin
  inherited;
  padr_acti_eliminar.Enabled :=  (quer_Fich_disponibles.RecordCount > 0) or (FichaActivaValida);
  if FichaActivaValida Then
     if (pane_contenedor.controlCount > 0) Then
        if (pane_contenedor.Controls[0] is Tfn1_refe_fich_00Edicion) Then
          padr_acti_eliminar.Enabled := ((pane_contenedor.Controls[0] as Tfn1_refe_fich_00Edicion).padr_tabl_fich_tecnicas.State <> dsInsert);
end;

procedure Tfn1_refe_fich_administrador.padr_acti_eliminarExecute(
  Sender: TObject);
begin
  inherited;
  //Eliminar la ficha activa
  if FichaActivaValida Then
  Begin
      if pane_contenedor.ControlCount = 0 Then exit;
      if not (pane_contenedor.Controls[0] is Tfn1_refe_fich_00Edicion) Then Exit;
      If (Confirmar(cosDeseaEliminar) = mrYes) Then
      Begin
          quer_Eliminar.Close;
          quer_Eliminar.ParamByName('cons_Refe_ficha').Value :=
              (pane_contenedor.Controls[0] as Tfn1_refe_fich_00Edicion).padr_tabl_fich_tecnicas.FieldByName('cons_refe_ficha').asInteger;
          quer_Eliminar.ExecSQL;
          pane_contenedor.Controls[0].Free;
          ActualizarVista;
      End;
  End
  //Si no hay ficha activa, eliminar el registro seleccionado
  Else
  Begin
      if quer_fich_disponibles.RecordCount = 0 Then Exit;
      If (Confirmar(cosDeseaEliminar) = mrYes) Then
      Begin
          quer_Eliminar.Close;
          quer_Eliminar.ParamByName('cons_Refe_ficha').Value := quer_fich_disponibles.FieldByName('cons_refe_ficha').asInteger;
          quer_Eliminar.ExecSQL;
          ActualizarVista;
      End;
  End;
end;
{****************************************************************
Procedimiento   : ActualizarVista
Objetivo        : Actualiza el arbol
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 04-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure Tfn1_refe_fich_administrador.ActualizarVista;
var
        var_Consecutivo : Integer;
Begin
        var_Consecutivo := quer_Fichas.FieldByName('cons_refe_tipo_ficha').asInteger;
        RefreshDataSet(quer_Fichas);
        //RefreshDataSet(quer_Fich_disponibles);
        quer_Fichas.locate('cons_refe_tipo_ficha', var_Consecutivo, []);
End;

procedure Tfn1_refe_fich_administrador.quer_fich_disponiblesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  if not quer_Fichas.Active Then Exit;
  With quer_fich_disponibles do
  Begin
      ParamByName('cons_Refe_tipo_Ficha').Value := quer_Fichas.FieldByName('cons_Refe_tipo_ficha').asInteger;
      ParamByName('cons_Refe_Variacion').Value := myTabla_Ventana.FieldByName('cons_Refe_variacion').asInteger;
  End;
end;

procedure Tfn1_refe_fich_administrador.padr_acti_salirExecute(
  Sender: TObject);
begin
  if (pane_contenedor.ControlCount = 0) Then
        inherited
  Else
        pane_contenedor.Controls[0].Free;
end;

procedure Tfn1_refe_fich_administrador.LISTADblClick(Sender: TObject);
begin
  inherited;
  If (quer_fich_disponibles.RecordCount = 0) Then
        EjecutarAccion(0)
  Else
        EjecutarAccion(quer_fich_disponibles.FieldByName('cons_Refe_ficha').asInteger);

end;

procedure Tfn1_refe_fich_administrador.Timer1Timer(Sender: TObject);
begin
  inherited;
  Lista.Visible := (Pane_Contenedor.ControlCount = 0);
  pane_Arbol.Visible := (Pane_Contenedor.ControlCount = 0);
end;

procedure Tfn1_refe_fich_administrador.LISTACustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
        var_s   : String;
begin
  inherited;
  Try
        var_s := ANode.Strings[Lista.ColumnByFieldName('predeterminada').Index];
        if (var_s <> '') Then
           if (StrToInt(var_s) = 1) Then
              aFont.Style := [fsBold];
  Except
  End;
end;

procedure Tfn1_refe_fich_administrador.padr_acti_actualizarClick(
  Sender: TObject);
Var
        var_Book        : TBookmark;
begin
  var_Book := quer_Fichas.GetBookMark;
  inherited;
  quer_Fichas.GotoBookmark(var_Book);
end;
{****************************************************************
Procedimiento   : SetVentanaReferencias
Objetivo        : Asignar el valor a la variable VentanaReferencia
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
Procedure Tfn1_refe_fich_administrador.SetVentanaReferencias(peValor : Boolean);
Begin
    var_VentanaReferencias := peValor;
    if var_VentanaReferencias Then
    Begin
        fram_seleccion.SCLDBLabel1.Caption := cosReferencia;

    End
    Else
    Begin
        fram_seleccion.SCLDBLabel1.Caption := cosPrototipo;

    End;
End;
{****************************************************************
Procedimiento   : fram_seleccionquer_referenciasBeforeOpen
Objetivo        : Preparar la consulta de referencias/prototipos antes de abrirla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_refe_fich_administrador.fram_seleccionquer_referenciasBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  //Asignar la consulta
  With fram_seleccion.quer_referencias Do
  Begin
      SQL.Clear;
      SQL.Add('Select * from');
      if var_VentanaReferencias Then
         SQL.Add('VIS_GLO_REFERENCIAS')
      Else
         SQL.Add('VIS_GLO_PROTOTIPOS');
      SQL.Add('ORDER BY CODI_REFERENCIA');
  End;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_refe_fich_administrador.FormShow(Sender: TObject);
begin
  inherited;
  if Not var_vent_inicializada Then
  Begin
      //Inicialización de frames y objetos DB
      InicializarFrame(fram_seleccion);
      AbrirDataSet(quer_fichas);
  End;
end;
{****************************************************************
Procedimiento   : fram_seleccionquer_refe_variacionesBeforeOpen
Objetivo        : Preparar la consulta de variaciones antes de abrirla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_refe_fich_administrador.fram_seleccionquer_refe_variacionesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  With fram_seleccion.quer_refe_variaciones Do
  Begin
      SQL.Clear;
      SQL.Add('select cons_refe_variacion, cons_refe_tipo_variacion,');
      SQL.Add('nomb_refe_tipo_variacion from');
      if var_VentanaReferencias Then
         SQL.Add('vis_pcp_refe_variaciones')
      Else
         SQL.Add('vis_pcp_prot_variaciones');
      SQL.Add('where cons_referencia = :cons_referencia');
      SQL.Add('order by nomb_refe_tipo_variacion');
  End;
end;

end.
