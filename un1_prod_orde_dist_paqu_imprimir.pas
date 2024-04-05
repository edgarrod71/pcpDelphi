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
        Unit            : un1_prod_orde_dist_paqu_imprimir
        Objetivo        : Ventana previa de impresión de distribución
                          de paquetes
        Realizado por   : Tecnologia
        Fecha           : 13-Oct-2005
        Versión         : pcp4000 RC20.19
*******************************************************************}
unit un1_prod_orde_dist_paqu_imprimir;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal_alone, PictureContainer, DBTables, AdvPanel,
  _vent_modal, dxExEdtr, dxEdLib, TBXDkPanels, JvExControls, JvComponent,
  JvImageSquare, Db, kbmMemTable, StdCtrls, CheckLst, JvExCheckLst,
  JvCheckListBox, RxLookup, PCPLookUpComboEdit, SCLShape, dxCntner,
  SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes, PCPProceso,
  dxEditor, dxDBELib, SoCtrls, SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock,
  TB2Toolbar, Menus, RLReport;
type
  Tfn1_prod_orde_dist_paqu_imprimir = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    comb_prod_orden: TPCPLookUpComboEdit;
    tabl_prod_ordenes: TkbmMemTable;
    tabl_prod_ordenescons_prod_orden: TIntegerField;
    tabl_prod_ordenesnume_prod_orden: TStringField;
    quer_prod_ordenes: TQuery;
    data_prod_ordenes: TDataSource;
    SCLDBLabel2: TSCLDBLabel;
    list_lotes: TJvCheckListBox;
    SCLShape1: TSCLShape;
    SCLDBLabel3: TSCLDBLabel;
    list_tipo_distribucion: TJvCheckListBox;
    SCLShape2: TSCLShape;
    SCLDBLabel4: TSCLDBLabel;
    quer_lotes: TQuery;
    list_lotes2: TJvCheckListBox;
    quer_tipo_dist_paquetes: TQuery;
    tabl_tipo_dist_paquetes: TkbmMemTable;
    list_tipo_distribucion2: TJvCheckListBox;
    tabl_tipo_dist_paquetesCONS_PROD_PAQU_TIPO: TIntegerField;
    tabl_tipo_dist_paquetesNOMB_PROD_PAQU_TIPO: TStringField;
    imag_dire_impresion: TJvImageSquare;
    Panel2: TPanel;
    chec_por_filas: TTBXRadioButton;
    chec_por_Columnas: TTBXRadioButton;
    chec_colorear: TdxCheckEdit;
    popLotes: TTBXPopupMenu;
    boto_lote_ninguno: TTBXItem;
    boto_lote_todos: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    boto_lote_Invertir: TTBXItem;
    popTipoDistribucion: TTBXPopupMenu;
    boto_tipo_dist_todos: TTBXItem;
    boto_tipo_dist_ninguno: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    boto_tipo_dist_invertir: TTBXItem;
    chec_salt_tipo_distribucion: TdxCheckEdit;
    chec_salt_lotes: TdxCheckEdit;
    procedure boto_impr_por_filasClick(Sender: TObject);
    procedure boto_impr_por_columnasClick(Sender: TObject);
    procedure comb_prod_ordenChange(Sender: TObject);
    procedure ActualizarListaTipoDePaquetes(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure chec_por_filasChange(Sender: TObject);
    procedure chec_por_ColumnasChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure boto_lote_todosClick(Sender: TObject);
    procedure boto_lote_ningunoClick(Sender: TObject);
    procedure boto_lote_InvertirClick(Sender: TObject);
    procedure boto_tipo_dist_todosClick(Sender: TObject);
    procedure boto_tipo_dist_ningunoClick(Sender: TObject);
    procedure boto_tipo_dist_invertirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Ejecutar(peCons_Prod_orden : Integer; peCons_prod_lote : Integer = 0; peCons_tipo_dist_paquetes : Integer = 0;
              peDataSet_prod_ordenes : TDataSet = Nil; peDataSet_prod_lotes : TDataSet = Nil; peDataSet_Tipo_Dist_Paqetes : TDataSet = Nil;
              peSeleccionarOF : Boolean = False; peFormStyle : TFormStyle = fsNormal);
  end;

var
  fn1_prod_orde_dist_paqu_imprimir: Tfn1_prod_orde_dist_paqu_imprimir;

implementation

uses _MDI, urn1_prod_dist_paquetes1, _cons_pcp, _func_varias, _cons_colores,
  _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecuta la ventana
Realizado por   : Tecnologia
Fecha           : 13-Oct-2005
Argumentos      : peCons_Prod_orden : Integer; pe_Cons_prod_lote : Integer = 0; peDataSet_prod_ordenes : TQuery = Nil; peDataSet_prod_lotes : TQuery = Nil
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure Tfn1_prod_orde_dist_paqu_imprimir.Ejecutar(peCons_Prod_orden : Integer; peCons_prod_lote : Integer = 0; peCons_tipo_dist_paquetes : Integer = 0;
              peDataSet_prod_ordenes : TDataSet = Nil; peDataSet_prod_lotes : TDataSet = Nil; peDataSet_Tipo_Dist_Paqetes : TDataSet = Nil;
              peSeleccionarOF : Boolean = False; peFormStyle : TFormStyle = fsNormal);
Var
        var_i   : Integer;
Begin
        //Cargar los datos de las ordenes de producción
        If peDataSet_Prod_ordenes = Nil Then
           peDataSet_Prod_Ordenes := quer_prod_ordenes;
        tabl_prod_ordenes.Close;
        tabl_prod_ordenes.Open;
        if peSeleccionarOf Then
        Begin
            //Cargar todas las of en una tabla temporal
            tabl_prod_ordenes.LoadFromDataSet(peDataSet_prod_ordenes, [mtcpoAppend]);
            tabl_prod_ordenes.Sort([]);
        End
        Else
        Begin
            //Si no se va a seleccionar orden, solamente crear el registro activo
            tabl_prod_ordenes.Insert;
            tabl_prod_ordenes.FieldByName('cons_prod_orden').Value := peCons_prod_orden;
            tabl_prod_ordenes.FieldByName('nume_prod_orden').Value := peDataSet_Prod_Ordenes.FieldByName('nume_prod_orden').asString;
            tabl_prod_ordenes.Post;
        End;
        if tabl_prod_ordenes.Locate('cons_prod_orden', peCons_prod_orden, []) Then
           comb_prod_orden.KeyValue := peCons_prod_orden;
        comb_prod_orden.Enabled := peSeleccionarOF;
        comb_prod_orden.hideButton := Not peSeleccionarOF;
        //Consultar los lotes
        quer_lotes.Open;
        comb_prod_ordenChange(Self);
        //Consultar los tipos de distribución de paquetes
        If (peDataSet_Tipo_Dist_Paqetes = Nil) Then
           peDataSet_Tipo_Dist_Paqetes := quer_tipo_dist_paquetes;
        tabl_tipo_dist_paquetes.Close;
        tabl_tipo_dist_paquetes.loadFromDataSet(peDataSet_Tipo_Dist_Paqetes, [mtcpoAppend]);
        tabl_tipo_dist_paquetes.Open;
        ActualizarListaTipoDePaquetes(Self);
        //Seleccionar el lote enviado
        if peCons_prod_lote = 0 Then
                list_lotes.CheckAll
        Else
        Begin
             var_i := list_lotes2.Items.IndexOf(intToStr(peCons_prod_lote));
             if var_i > -1 Then
                list_lotes.State[var_i] := cbChecked;
        End;
        //Seleccionar el tipo de distribución de paquetes enviada
        if peCons_tipo_dist_paquetes = 0 Then
                list_tipo_distribucion.CheckAll
        Else
        Begin
             var_i := list_tipo_distribucion2.Items.IndexOf(intToStr(peCons_tipo_dist_paquetes));
             if var_i > -1 Then
                list_tipo_distribucion.State[var_i] := cbChecked;
        End;
        if comb_prod_orden.EstaVacio Then
           InicializarCombo(comb_prod_orden);
        if (peFormStyle = fsNormal) Then
            ShowModal
        Else
        Begin
            WindowState := wsMaximized;
            FormStyle := peFormStyle;
            padr_acti_aceptar.ImageIndex := 8;
        End;
End;

{****************************************************************
Procedimiento   : boto_impr_por_filasClick
Objetivo        : Seleccionar el tipo de impresión por filas
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_imprimir.boto_impr_por_filasClick(
  Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : boto_impr_por_columnasClick
Objetivo        : Seleccionar el tipo de impresión por columnas
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_imprimir.boto_impr_por_columnasClick(
  Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : comb_prod_ordenChange
Objetivo        : Actualizar la lista de los lotes
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_imprimir.comb_prod_ordenChange(
  Sender: TObject);
begin
  inherited;
  //Cargar los lotes
  if quer_lotes.Active then
  Begin
      list_lotes.Clear;
      list_lotes2.Clear;
      quer_lotes.First;
      While not quer_lotes.EOF do
      Begin
           list_lotes.Items.Add(quer_lotes.FieldByName('nume_lote').asString);
           list_lotes2.Items.Add(quer_lotes.FieldByName('cons_prod_lote').asString);
           quer_lotes.Next;
      End;
  End;
end;
{****************************************************************
Procedimiento   : ActualizarListaTipoDePaquetes
Objetivo        : Llenar la lista de tipos de distribución de paquetes
                  luego de abrir la tabla temporal
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : DataSet: TDataSet
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_imprimir.ActualizarListaTipoDePaquetes(Sender: TObject);
begin
  inherited;
  list_tipo_distribucion.Clear;
  list_tipo_distribucion2.Clear;
  tabl_tipo_dist_paquetes.First;
  While not tabl_tipo_dist_paquetes.Eof do
  Begin
      list_tipo_distribucion.Items.Add(tabl_tipo_dist_paquetes.FieldByName('nomb_prod_paqu_tipo').asString);
      list_tipo_distribucion2.Items.Add(tabl_tipo_dist_paquetes.FieldByName('cons_prod_paqu_tipo').asString);
      tabl_tipo_dist_paquetes.Next;
  End;
end;
{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Imprimir la distribución (ACEPTAR)
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_imprimir.padr_acti_aceptarExecute(
  Sender: TObject);
var
        var_HaySeleccion        : Boolean;
        var_i   : Integer;
        var_Organizacion : TRLDetailGridOrganization;
        var_Lotes       : String;
        var_TiposDistribucion   : String;
begin
  inherited;
  //Validar la orden de producción
  if Comb_prod_orden.EstaVacio Then
        Raise Exception.Create(Format(cosCampoObligatorio, [cosOrdenDeProduccion]));
  //Validar por lo menos un lote seleccionado
  var_HaySeleccion := False;
  For var_i := 1 to list_lotes.Items.Count do
  Begin
          if (list_lotes.State[var_i - 1] = cbChecked) then
          Begin
              var_HaySeleccion := True;
              Break;
          End;
  End;
  If Not var_HaySeleccion Then
        Raise Exception.Create(cosDebeSeleccionarUnLote);
  //Validar que haya algún tipo de distribución
  var_HaySeleccion := False;
  For var_i := 1 to list_tipo_distribucion.Items.Count do
  Begin
          if (list_tipo_distribucion.State[var_i - 1] = cbChecked) then
          Begin
              var_HaySeleccion := True;
              Break;
          End;
  End;
  If Not var_HaySeleccion Then
        Raise Exception.Create(cosDebeSeleccionarUnTipoDeDistribucion);
  //Organización
  if chec_por_Filas.Checked then
     var_Organizacion := goInRows
  Else
     var_Organizacion := goInColumns;
  //Lotes
  var_Lotes := '';
  For var_i := 1 to list_lotes.Items.Count do
  Begin
      if list_lotes.State[Var_i - 1] = cbChecked Then
      Begin
          if var_lotes <> '' Then
            var_lotes := var_lotes + ',';
          var_lotes := var_lotes + list_lotes.Items.Strings[var_i - 1];
      End;
  End;
  //Tipos de distribución (utiliza un listbox auxiliar por que se filtra con consecutivos)
  var_TiposDistribucion := '';
  For var_i := 1 to list_tipo_distribucion.Items.Count do
  Begin
      if list_tipo_distribucion.State[Var_i - 1] = cbChecked Then
      Begin
          if var_TiposDistribucion <> '' Then
            var_TiposDistribucion := var_TiposDistribucion + ',';
          var_TiposDistribucion := var_TiposDistribucion + list_tipo_distribucion2.Items.Strings[var_i - 1];
      End;
  End;
  //Generar el reporte
  Application.CreateForm(Trn1_prod_dist_paquetes1, rn1_prod_dist_paquetes1);
  rn1_prod_dist_paquetes1.Ejecutar(comb_prod_orden.keyValue, var_Lotes, var_TiposDistribucion, var_Organizacion, chec_Colorear.Checked,
        chec_salt_lotes.Checked, chec_salt_tipo_distribucion.Checked);
  if FormStyle <> fsMDIChild Then
        Close;
end;
{****************************************************************
Procedimiento   : chec_por_filasChange
Objetivo        : Actualizar la imágen de selección por filas
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_imprimir.chec_por_filasChange(
  Sender: TObject);
begin
  inherited;
  imag_dire_impresion.ImageIndex := 58;
end;
{****************************************************************
Procedimiento   : chec_por_ColumnasChange
Objetivo        : Actualizar la imágen de selección por columnas
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_imprimir.chec_por_ColumnasChange(
  Sender: TObject);
begin
  inherited;
  imag_dire_impresion.ImageIndex := 59;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles al mostrar la ventana
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_imprimir.FormShow(Sender: TObject);
begin
  inherited;
  imag_dire_impresion.HiColor := clFondoAplicacion;
  chec_colorear.Color := clFondoAplicacion;
  chec_salt_tipo_distribucion.Color := clFondoAplicacion;
  chec_salt_lotes.Color := clFondoAplicacion;
end;
{****************************************************************
Procedimiento   : boto_lote_todosClick
Objetivo        : Seleccionar todos los lotes
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_imprimir.boto_lote_todosClick(Sender: TObject);
begin
  inherited;
  list_lotes.CheckAll;
end;
{****************************************************************
Procedimiento   : boto_lote_ningunoClick
Objetivo        : Deseleccionar los lotes
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_imprimir.boto_lote_ningunoClick(
  Sender: TObject);
begin
  inherited;
  list_lotes.UnselectAll;
end;
{****************************************************************
Procedimiento   : boto_lote_InvertirClick
Objetivo        : Invertir la selección de lotes
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_imprimir.boto_lote_InvertirClick(
  Sender: TObject);
begin
  inherited;
  list_lotes.InvertSelection;
end;
{****************************************************************
Procedimiento   : boto_tipo_dist_todosClick
Objetivo        : Seleccionar todos los tipos de distribución
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_imprimir.boto_tipo_dist_todosClick(
  Sender: TObject);
begin
  inherited;
  list_tipo_distribucion.SelectAll;
end;
{****************************************************************
Procedimiento   : boto_tipo_dist_ningunoClick
Objetivo        : Deseleccionar los tipos de distribución
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_imprimir.boto_tipo_dist_ningunoClick(
  Sender: TObject);
begin
  inherited;
  list_tipo_distribucion.UnSelectAll;
end;
{****************************************************************
Procedimiento   : boto_tipo_dist_invertirClick
Objetivo        : Invertir la selección de los tipos de distribución
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_prod_orde_dist_paqu_imprimir.boto_tipo_dist_invertirClick(
  Sender: TObject);
begin
  inherited;
  list_tipo_distribucion.InvertSelection;
end;

procedure Tfn1_prod_orde_dist_paqu_imprimir.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

