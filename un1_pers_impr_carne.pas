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
        Unit            : un1_pers_impr_carne
        Objetivo        : Impresión de carné de identificación del
                          personal y diseños adicionales
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Febrero 04 de 2005
        Versión         : pcp4.0.20.0
*******************************************************************}
unit un1_pers_impr_carne;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ucn1_pers_ubicacion, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, TBXDkPanels,
  TBXButtonSCL, dxEditor, dxEdLib, StdCtrls, SoCtrls, SCLDBLabel,
  ufra_maqu_ubicacion, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TB2Dock,
  TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid, dfsSplitter, dxPageControl,
  ufra_edit_reportes, kbmMemTable, dxDBTLCl, dxGrClms;

type
  TCambiarSeleccion     = (csTodos, csNinguno, csInvertir);
  Tfn1_pers_impr_carne = class(Tcn1_pers_ubicacion)
    consultaPRIM_APELLIDO: TStringField;
    consultaSEGU_APELLIDO: TStringField;
    consultaNOMBRES: TStringField;
    consultaIMAGEN: TBlobField;
    consultaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    consultaCONS_FAMI_MOVIMIENTO: TIntegerField;
    consultaCONS_ESTADO: TIntegerField;
    consultaNOMB_ESTADO: TStringField;
    quer_formatos: TQuery;
    fram_reporte: Tffra_edit_reportes;
    quer_formatosCONS_PERS_FORM_IDENTIFICACION: TIntegerField;
    quer_formatosNOMB_PERS_FORM_IDENTIFICACION: TStringField;
    quer_formatosFORMATO: TBlobField;
    tabl_Seleccion: TkbmMemTable;
    tabl_SeleccionCONS_PERSONAL: TIntegerField;
    tabl_SeleccionCODI_PERSONAL: TStringField;
    tabl_SeleccionNOMB_COMPLETO: TStringField;
    tabl_SeleccionCONS_UBIC_TIPO: TIntegerField;
    tabl_SeleccionNOMB_UBIC_TIPO: TStringField;
    tabl_SeleccionCONS_EMPRESA: TIntegerField;
    tabl_SeleccionNOMB_EMPRESA: TStringField;
    tabl_SeleccionCONS_AREA: TIntegerField;
    tabl_SeleccionNOMB_AREA: TStringField;
    tabl_SeleccionCONS_PLANTA: TIntegerField;
    tabl_SeleccionNOMB_PLANTA: TStringField;
    tabl_SeleccionCONS_PLAN_LINEA: TIntegerField;
    tabl_SeleccionNOMB_PLAN_LINEA: TStringField;
    tabl_SeleccionCONS_LINE_SECCION: TIntegerField;
    tabl_SeleccionNOMB_LINE_SECCION: TStringField;
    tabl_SeleccionCONS_BODEGA: TIntegerField;
    tabl_SeleccionNOMB_BODEGA: TStringField;
    tabl_SeleccionOTRA_UBICACION: TStringField;
    tabl_SeleccionCONS_TURNO: TIntegerField;
    tabl_SeleccionCODI_TURNO: TStringField;
    tabl_SeleccionNOMB_TIPO_TURNO: TStringField;
    tabl_SeleccionCONS_PERS_CARGO: TIntegerField;
    tabl_SeleccionNOMB_PERS_CARGO: TStringField;
    tabl_SeleccionCONS_PERS_CENT_COSTO: TIntegerField;
    tabl_SeleccionNOMB_PERS_CENT_COSTO: TStringField;
    tabl_SeleccionCONS_COST_GRUPO: TIntegerField;
    tabl_SeleccionNOMB_COST_GRUPO: TStringField;
    tabl_SeleccionPRIM_APELLIDO: TStringField;
    tabl_SeleccionSEGU_APELLIDO: TStringField;
    tabl_SeleccionNOMBRES: TStringField;
    tabl_SeleccionIMAGEN: TBlobField;
    tabl_SeleccionCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    tabl_SeleccionCONS_FAMI_MOVIMIENTO: TIntegerField;
    tabl_SeleccionCONS_ESTADO: TIntegerField;
    tabl_SeleccionNOMB_ESTADO: TStringField;
    Grid2: TSCLDBGrid;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Panel3: TPanel;
    data_seleccion: TDataSource;
    acti_Ventana: TActionList;
    acti_adic_1: TAction;
    acti_adic_todos: TAction;
    acti_elim_1: TAction;
    acti_elim_todos: TAction;
    boto_adic_1: TTBXButtonSCL;
    boto_adic_todos: TTBXButtonSCL;
    boto_elim_1: TTBXButtonSCL;
    boto_elim_todos: TTBXButtonSCL;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    pop_Grid2: TTBXPopupMenu;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    procedure padr_acti_imprimirExecute(Sender: TObject);
    procedure BImprimirPopup(Sender: TTBCustomItem; FromLink: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure acti_VentanaUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure acti_adic_1Execute(Sender: TObject);
    procedure acti_adic_todosExecute(Sender: TObject);
    procedure acti_elim_1Execute(Sender: TObject);
    procedure acti_elim_todosExecute(Sender: TObject);
    procedure doGridDblClick(Sender: TObject);
    procedure Grid2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_pers_impr_carne: Tfn1_pers_impr_carne;

implementation

uses _func_varias, _cons_pcp, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : padr_acti_imprimirExecute
Objetivo        : Imprimir con el formato dado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_pers_impr_carne.padr_acti_imprimirExecute(Sender: TObject);
begin
  //inherited;
    //Salir si no es una acción desde el menú
    If Not (Sender is tTBXItem) Then Exit;
    With (Sender as tTBXItem) do
    Begin
         //Ubicar el registro
         if Not quer_formatos.Locate('cons_pers_form_identificacion', Tag, []) Then
            EjecutarMensajeError(Format(cosNoSeEncontroReporte, [Caption]))
         Else
         Begin
             fram_reporte.acti_abrir.Execute;
             tabl_Seleccion.DisableControls;
             Try
               if not tabl_Seleccion.Active Then AbrirDataSet(tabl_Seleccion);
               tabl_seleccion.sort([]);
               tabl_Seleccion.First;
               fram_reporte.ReportDataSet := tabl_seleccion;
               fram_reporte.acti_vist_previa.Execute;
             Except
                On E:Exception do
                   EjecutarMensajeError(e.Message);
             End;
             tabl_seleccion.EnableControls;
         End;
    End;
end;
{****************************************************************
Procedimiento   : BImprimirPopup
Objetivo        : Crear los menús con las opciones de impresión disponibles
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_pers_impr_carne.BImprimirPopup(Sender: TTBCustomItem;
  FromLink: Boolean);
var
    var_i   : Integer;
    vMenuItem       :       TTBXItem;
begin
    //Inherited
    //Llamar los informes creados
    RefreshDataSet(quer_Formatos);
    //Borrar los anteriores
    For var_i := 4 to BImprimir.Count do
        bImprimir.Delete(3);
    //Recorrer la tabla de formatos
    With quer_Formatos do
    Begin
         While not eof do
         Begin
               vMenuItem := TTBXItem.Create(Nil);
               vMenuItem.Caption := FieldByName('nomb_pers_form_identificacion').AsString;
               vMenuItem.Tag := FieldByName('cons_pers_form_identificacion').AsInteger;
               vMenuItem.OnClick := padr_acti_imprimir.OnExecute;
               {$IFDEF PCP4}
                      vMenuItem.Images := _fmdi.ImagenesMenus;
                      vMenuItem.ImageIndex := 43;
               {$ENDIF}
               BImprimir.Add(vMenuItem);
               Next;
         End;
    End;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_pers_impr_carne.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar el frame del reporte
  fram_reporte.CampoFormato := quer_formatosFORMATO;
  fram_reporte.SoloLectura := True;
  //Abrir las consultas requeridas
  AbrirDataSet(quer_Formatos);
  AbrirDataSet(tabl_Seleccion);
  fram_reporte.ReportDataSet := tabl_seleccion;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : acti_VentanaUpdate
Objetivo        : Actualizar el estado de las acciones adicionales
                  de la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_pers_impr_carne.acti_VentanaUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  acti_adic_1.Enabled := (Consulta.Active) and (Consulta.RecordCount > 0) and (padr_grid.SelectedCount > 0);
  acti_adic_Todos.Enabled := (Consulta.Active) and (Consulta.RecordCount > 0);
  acti_elim_1.Enabled := (tabl_Seleccion.Active) and (tabl_Seleccion.RecordCount > 0) and (grid2.SelectedCount > 0);
  acti_elim_Todos.Enabled := (tabl_Seleccion.Active) and (tabl_Seleccion.RecordCount > 0);
end;
{****************************************************************
Procedimiento   : acti_adic_1Execute
Objetivo        : Adiciona un registro a la selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_pers_impr_carne.acti_adic_1Execute(Sender: TObject);
var
    var_i   : Integer;
    var_campo   : Integer;
begin
  inherited;
  Consulta.DisableControls;
  Tabl_Seleccion.DisableControls;
  Try
      For var_i := 1 to Consulta.RecordCount do
        //Verificar que el reg. esté seleccionado
        if padr_grid.Items[var_i - 1].Selected then
          With tabl_Seleccion do
          Begin
                //Buscar el registro
                if Not (Locate('cons_personal', padr_grid.items[var_i - 1].Values[0], [])) Then
                Begin
                    //Ubicar el registro en la tabla consulta
                    Consulta.Locate('cons_personal', padr_grid.items[var_i - 1].Values[0], []);
                    //Insertar el registro
                    Insert;
                    For var_campo := 1 to FieldCount do
                        Fields[var_campo - 1].Value := Consulta.Fields[var_campo - 1].Value;
                    Post;
                End;
          End;
  Except
        On E:Exception do
           EjecutarMensajeError(e.Message);
  End;
  Consulta.EnableControls;
  tabl_seleccion.EnableControls;
end;
{****************************************************************
Procedimiento   : acti_adic_todosExecute
Objetivo        : Adicionar TODOS los registros a la selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_pers_impr_carne.acti_adic_todosExecute(Sender: TObject);
var
    var_i : Integer;
    var_Campo : IntegeR;
begin
  inherited;
  Try
      Consulta.DisableControls;
      tabl_seleccion.DisableControls;
      //Ir al primer registro
      Consulta.First;
      var_i := 0;
      While not Consulta.Eof do
      Begin
          With tabl_seleccion do
          Begin
                ProgresoBarraEstado(cosTrabajando, var_i, Consulta.RecordCount);
                //Buscar el registro
                if Not (Locate('cons_personal', Consulta.FieldByName('cons_personal').AsInteger, [])) Then
                Begin
                    //Insertar el registro
                    Insert;
                    For var_campo := 1 to FieldCount do
                        Fields[var_campo - 1].Value := Consulta.Fields[var_campo - 1].Value;
                    Post;
                End;
          End;
          Consulta.Next;
          inc(var_i);
      End;
  Except
    on e:Exception do
        EjecutarMensajeError(e.Message);
  End;
  ProgresoBarraEstado;
  Consulta.EnableControls;
  tabl_seleccion.EnableControls;

end;
{****************************************************************
Procedimiento   : acti_elim_1Execute
Objetivo        : Eliminar la selección activa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_pers_impr_carne.acti_elim_1Execute(Sender: TObject);
begin
  inherited;
  Grid2.DeleteSelection;
end;
{****************************************************************
Procedimiento   : acti_elim_todosExecute
Objetivo        : Eliminar toda la selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_pers_impr_carne.acti_elim_todosExecute(Sender: TObject);
begin
  inherited;
  //Cerrar y abrir la tabla temporal
  tabl_seleccion.Close;
  tabl_seleccion.Open;
end;
{****************************************************************
Procedimiento   : doGridDblClick
Objetivo        : Pasar el personal con doble click (hacia el temoral)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_pers_impr_carne.doGridDblClick(Sender: TObject);
begin
  //inherited;
  if (acti_adic_1.Enabled) then acti_adic_1.Execute;
end;
{****************************************************************
Procedimiento   : Grid2DblClick
Objetivo        : Pasar el personal con doble click (desde el temoral)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_pers_impr_carne.Grid2DblClick(Sender: TObject);
begin
  inherited;
  if (acti_elim_1.Enabled) then acti_elim_1.Execute;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 11-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure Tfn1_pers_impr_carne.FormShow(Sender: TObject);
begin
  //Abrir la consulta del personal
  edit_Fecha.Date := NowDate;
  boto_hoyClick(Sender);
  inherited;
end;

end.

