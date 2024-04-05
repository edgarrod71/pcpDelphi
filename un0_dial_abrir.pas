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
        Unit            : un0_dial_abrir
        Objetivo        : Dialogo para abrir cualquier elemento desde la DB
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Marzo 10 de 2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit un0_dial_abrir;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, _cons_pcp,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, kbmMemTable, ComCtrls,
  JvExComCtrls, JvListView, Menus;

type
  TTipoDialogoAbrir = TObjetoAdicionalPCP;
  Tfn0_dial_abrir = class(T_fvent_modal)
    myTabla_Ventana: TkbmMemTable;
    Panel1: TPanel;
    vista: TJvListView;
    imag_objetos32: TTBImageList;
    imag_objetos16: TTBImageList;
    quer_reportes: TQuery;
    imag_tipo_vista: TImageList;
    boto_vistas: TTBXSubmenuItem;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    quer_elim_reportes: TQuery;
    TBXSeparatorItem1: TTBXSeparatorItem;
    pop: TTBXPopupMenu;
    TBXItem6: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXSubmenuItem2: TTBXSubmenuItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem5: TTBXItem;
    TBXItem7: TTBXItem;
    procedure FormShow(Sender: TObject);
    procedure padr_acti_cancelarExecute(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure padr_acti_aceptarUpdate(Sender: TObject);
    procedure padr_acti_cancelarUpdate(Sender: TObject);
    procedure TBXItem4Click(Sender: TObject);
    procedure TBXItem3Click(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure vistaDblClick(Sender: TObject);
    procedure vistaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure padr_acti_eliminarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    var_tipo_dialogo    : TTipoDialogoAbrir;
    var_Resultado   : Variant;
    var_parametros  : Variant;
    var_DebeSeleccionarItem     : Boolean;

  public
    { Public declarations }
    Function Execute(peTipoDialogo : TTipoDialogoAbrir; peParametros : Variant) : Integer;
    Property DebeSeleccionarItem : Boolean Read var_DebeSeleccionarItem Write var_DebeSeleccionarItem;
  end;

var
  fn0_dial_abrir: Tfn0_dial_abrir;

ResourceString
    cosAbrirReporte = 'Abrir formato de reporte';


implementation

uses _func_varias, _MDI, _uData, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : Execute
Objetivo        : Ejecuta el diálogo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function Tfn0_dial_abrir.Execute(peTipoDialogo : TTipoDialogoAbrir; peParametros : Variant) : Integer;
var
    var_item    : TListItem;
Begin
    var_Resultado := -1;
    //Guardar los parametros
    var_tipo_dialogo := peTipoDialogo;
    var_parametros := peParametros;
    //Limpiar los existentes
    vista.Items.Clear;
    Case peTipoDialogo Of
        //Informe
        toaInformesEnChild : Begin
            Caption := cosAbrirReporte;
            //Abrir la consulta
            With quer_Reportes do
            Begin
                Close;
                ParamByName('modulo').Value := peParametros;
                Open;
                //Crear los item
                While not Eof do
                Begin
                  var_Item := vista.Items.Add;
                  var_Item.StateIndex := FieldByName('cons_usua_informe').asInteger;
                  var_Item.Caption := FieldByName('nomb_usua_informe').asString;
                  var_Item.ImageIndex := coiIndexImagenesObjetoAdicionalPCP[peTipoDialogo];
                  Next;
                End;
                Close;
            End;
        End;
    End;
    If not Visible Then
       ShowModal;
    Result := var_Resultado;
End;

{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles de la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 10 de 2004
Versión         : pcp4.0.20.6
*****************************************************************}

procedure Tfn0_dial_abrir.FormShow(Sender: TObject);
begin
  inherited;
  //Mostrar botones de acciones
  padr_boto_aceptar.Visible := True;
  padr_Acti_Aceptar.visible := True;
  padr_boto_Cancelar.Visible := True;
  padr_Acti_Cancelar.visible := True;
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Cancela el diálogo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dial_abrir.padr_acti_cancelarExecute(Sender: TObject);
begin
  //inherited;
  var_Resultado := -1;
  Close;
end;
{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Acepta los cambios realizados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dial_abrir.padr_acti_aceptarExecute(Sender: TObject);
begin
  //inherited;
  if var_DebeSeleccionarItem Then 
     if (vista.Selected = Nil) then Exit;
  var_Resultado := vista.Selected.StateIndex;
  Close;
end;
{****************************************************************
Procedimiento   : padr_acti_aceptarUpdate
Objetivo        : Actualizar el estado de la acción de aceptar el diálogo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dial_abrir.padr_acti_aceptarUpdate(Sender: TObject);
begin
  inherited;
  padr_acti_aceptar.enabled := (vista.Items.Count > 0);
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarUpdate
Objetivo        : Actualizar el estado de la acción de cancelar el diálogo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dial_abrir.padr_acti_cancelarUpdate(Sender: TObject);
begin
  inherited;
  padr_Acti_Cancelar.Enabled := True;
end;

procedure Tfn0_dial_abrir.TBXItem4Click(Sender: TObject);
begin
  inherited;
  vista.viewStyle := vsIcon;
end;

procedure Tfn0_dial_abrir.TBXItem3Click(Sender: TObject);
begin
  inherited;
  vista.viewStyle := vsSmallIcon;
end;

procedure Tfn0_dial_abrir.TBXItem2Click(Sender: TObject);
begin
  inherited;
  vista.viewStyle := vsList;
end;

procedure Tfn0_dial_abrir.TBXItem1Click(Sender: TObject);
begin
  inherited;
  vista.viewStyle := vsReport;
end;
{****************************************************************
Procedimiento   : vistaDblClick
Objetivo        : Abrir con doble click
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dial_abrir.vistaDblClick(Sender: TObject);
begin
  inherited;
  if (Vista.Selected <> Nil) Then
    if padr_acti_aceptar.Enabled Then padr_acti_aceptar.Execute;
end;
{****************************************************************
Procedimiento   : vistaKeyDown
Objetivo        : Ejecutar con teclas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dial_abrir.vistaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //Enter
  if key = vk_Return then vistaDBLClick(Sender)
  Else
  if key = vk_Escape then padr_Acti_cancelar.Execute;
end;
{****************************************************************
Procedimiento   : padr_acti_eliminarExecute
Objetivo        : Eliminar el registro seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dial_abrir.padr_acti_eliminarExecute(Sender: TObject);
begin
  //inherited;
  If (Confirmar(cosDeseaEliminar) = mrYes) Then
  Begin
      Case var_Tipo_Dialogo of
            //Reporte en ventanas Child
            toaInformesEnChild : Begin
              With quer_elim_reportes do
              Begin
                 ParamByName('cons_usua_informe').Value := vista.Selected.StateIndex;
                 ExecSQL;
              End;
            End;
      End;
      //Actualizar
      Execute(var_tipo_dialogo, var_parametros);
  End;


end;

procedure Tfn0_dial_abrir.FormCreate(Sender: TObject);
begin
  inherited;
	Insertar_Palabras(Self, WKLenguaje);
end;

end.
