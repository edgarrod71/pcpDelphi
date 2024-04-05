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
        Unit            : un0_dise_dial_guar_como
        Objetivo        : Dialogo para guardar objetos en la BD
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 08-Abr-2005
        Versión         : pcp4.0.20.6
*******************************************************************}

unit un0_dise_dial_guar_como;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, _cons_pcp,
  un0_dial_abrir, Menus, TB2Item, TBX, kbmMemTable, PictureContainer,
  DBTables, AdvPanel, dxExEdtr, dxCntner, Db, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, ComCtrls, JvExComCtrls, JvListView, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit;

type
  Tfn0_dise_dial_guar_como = class(Tfn0_dial_abrir)
    tabl_modulos: TkbmMemTable;
    data_modulos: TDataSource;
    tabl_moduloside: TIntegerField;
    tabl_modulosnomb_modulo: TStringField;
    pane_modulo: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    comb_modulos: TPCPLookUpComboEdit;
    Panel2: TPanel;
    SCLDBLabel2: TSCLDBLabel;
    edit_nombre: TdxEdit;
    quer_consulta: TQuery;
    procedure padr_acti_eliminarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure padr_acti_aceptarUpdate(Sender: TObject);
    procedure vistaChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure comb_modulosChange(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure padr_acti_cancelarExecute(Sender: TObject);
  private
    { Private declarations }
    var_SePuedeEliminar : Boolean;
    var_Resultado : Boolean;
    var_Cons_Objeto     : Integer;
    var_Nomb_Modulo     : String;
    var_Nomb_Objeto     : String;
    var_Tipo_Obje_adicional : TObjetoAdicionalPCP;
    Procedure SetSePuedeEliminar (peValor : Boolean);
    Procedure LlamarItems;
  public
    { Public declarations }
    Property SePuedeEliminar : Boolean Read var_SePuedeEliminar Write SetSePuedeEliminar;
    Function Execute (peTipoObjetoPCP : TObjetoAdicionalPCP; var peCons_objeto : Integer;
        var peNomb_Modulo : String; var peNomb_Objeto : String) : Boolean;
  end;

var
  fn0_dise_dial_guar_como: Tfn0_dise_dial_guar_como;

implementation

uses _MDI, _uData, _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar El form
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_dial_guar_como.FormCreate(Sender: TObject);
begin
  inherited;
  //Propiedades iniciales
  SetSePuedeEliminar(False);
  DebeSeleccionarItem := False;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : padr_acti_eliminarExecute
Objetivo        : Ejecutar la acción de eliminación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_dial_guar_como.padr_acti_eliminarExecute(
  Sender: TObject);
begin
  if var_SePuedeEliminar Then
     inherited;
end;
{****************************************************************
Procedimiento   : SetSePuedeEliminar
Objetivo        : Actualizar la propiedad de eliminación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tfn0_dise_dial_guar_como.SetSePuedeEliminar (peValor : Boolean);
Begin
    var_SePuedeEliminar := peValor;
    padr_acti_eliminar.Enabled := var_SePuedeEliminar;
    padr_acti_eliminar.Visible := var_SePuedeEliminar;
End;

Function Tfn0_dise_dial_guar_como.Execute(peTipoObjetoPCP : TObjetoAdicionalPCP; var peCons_objeto : Integer;
        var peNomb_Modulo : String; var peNomb_Objeto : String) : Boolean;
Var
        var_i   : Integer;
Begin
    //Inicializar las variables
    Result := False;
    var_Resultado := False;
    var_cons_objeto := peCons_objeto;
    var_nomb_modulo := peNomb_Modulo;
    var_Nomb_Objeto := peNomb_Objeto;
    var_Tipo_Obje_adicional := peTipoObjetoPCP;
    //Llenar la tabla de módulos
    With tabl_Modulos do
    Begin
        //Reabrir la consulta
        Close;
        Open;
        //Crear los registros
        For var_i := 1 To _fmdi.barra.Items.Count do
        Begin
            Insert;
            FieldByName('ide').Value := var_i - 1;
            FieldByName('nomb_modulo').Value := _fMDI.barra.Items[Var_i - 1].Caption;
            Post;
        End;
    End;
    //Ubicar el módulo
    tabl_modulos.Sort([]);
    tabl_modulos.Locate('nomb_modulo', var_nomb_modulo, []);
    comb_modulos.keyValue := tabl_modulos.FieldByName('ide').asInteger;


    //Seleccionar el edit
    if (peNomb_Objeto <> '') Then
       edit_nombre.Text := peNomb_Objeto
    Else
       edit_nombre.Text := cosEscribaAquiElNombre;
    edit_Nombre.SelectAll;
    DarFoco(edit_Nombre);

    //Mostrar
    ShowModal;
    Result := Var_Resultado;
    //Si dieron ACEPTAR, cambiar los valores de las variables
    if Result Then
    Begin
        peCons_Objeto := 0; //Revisar si es necesario
        peNomb_Modulo := comb_modulos.Text;
        peNomb_Objeto := edit_Nombre.Text;
    End;
End;
{****************************************************************
Procedimiento   : padr_acti_aceptarUpdate
Objetivo        : Actualizar el estado de la acción ACEPTAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_dial_guar_como.padr_acti_aceptarUpdate(
  Sender: TObject);
begin
      padr_acti_aceptar.Enabled :=  (Not comb_modulos.EstaVacio) and (edit_Nombre.Text <> '');
end;
{****************************************************************
Procedimiento   : vistaChange
Objetivo        : Actualizar los controles al cambiar el objeto seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_dial_guar_como.vistaChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
Var
        var_i   : Integer;
begin
  //inherited;
  //Buscar el item activo
  if (edit_nombre.Text = '') Then
  Begin
      if vista.Selected <> Nil Then
      Begin
        for var_i := 1 to vista.items.Count do
        Begin
              if (UpperCase(vista.Items[var_i - 1].Caption) = UpperCase(var_Nomb_Objeto)) Then
              Begin
                 vista.Items[var_i - 1].Selected := True;
                 edit_Nombre.Text := var_Nomb_Objeto;
                 Break;
              End;
        End
      End
  End
  Else
     if (Vista.Selected <> Nil) Then
      edit_Nombre.Text := vista.Selected.Caption;

end;

{****************************************************************
Procedimiento   : LlamarItems
Objetivo        : Llamar los items existentes en el módulo activo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tfn0_dise_dial_guar_como.LlamarItems;
Var
        var_item    : TListItem;
//        var_Inactivo    : Integer;
Begin
  //Abrir la consulta de items existentes
  With quer_consulta do
  Begin
      if Active Then Close;
      Case var_Tipo_Obje_adicional of
         toaConsultas : ParamByName('tipo').Value := 1;
         toaFormularios : ParamByName('tipo').Value := 2;
         toaInformes : ParamByName('tipo').Value := 3;
         toaImagenes : ParamByName('tipo').Value := 4;
      End;
      ParamByName('menu_padre').Value := comb_modulos.Text;
      Open;
  End;
  //Limpiar la lista
  Vista.Items.Clear;
  While not quer_Consulta.Eof do
  Begin
        //Crear el Item
        var_Item := Vista.Items.Add;
        var_Item.StateIndex := quer_Consulta.FieldByName('cons_conf_objeto').asInteger;
        var_Item.Caption := quer_Consulta.FieldByName('nomb_objeto').AsString;
        //Imagen
{        if (quer_Consulta.FieldByName('esta_activo').AsInteger = 1) Then
             var_Inactivo := 0
        Else
             var_Inactivo := 1;}
        var_Item.ImageIndex := coiIndexImagenesObjetoAdicionalPCP[var_Tipo_Obje_adicional];
        //Siguiente item
        quer_consulta.Next;
  End;
  //Cerrar la consulta
  quer_Consulta.Close;
End;

{****************************************************************
Procedimiento   : comb_modulosChange
Objetivo        : Actualizar los controles al cambiar el
                  módulo seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_dial_guar_como.comb_modulosChange(Sender: TObject);
begin
  inherited;
  LlamarItems;
end;
{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Ejecuta la acción ACEPTAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_dial_guar_como.padr_acti_aceptarExecute(
  Sender: TObject);
begin
  //inherited;
  var_Resultado := True;
  Close;
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Ejecuta la acción CANCELAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_dial_guar_como.padr_acti_cancelarExecute(
  Sender: TObject);
begin
  //inherited;
  var_Resultado := False;
  Close;
end;

end.
