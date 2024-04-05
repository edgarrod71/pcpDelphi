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
        Unit            : un1_come_pedi_expl_vari_pedidos
        Objetivo        : Explosión de materiales para varios pedidos
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Febrero 02 de 2005
        Versión         : pcp4.0.20.0
*******************************************************************}
unit un1_come_pedi_expl_vari_pedidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLTabs, PictureContainer, DBTables, AdvPanel,
  dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  Boxes, PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls,
  SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar;

  
type
  Tfn1_come_pedi_expl_vari_pedidos = class(T_fvent_modal)
    page: TSCLPageControl;
    boto_apli_filtro: TTBXSubmenuItem;
    procedure FormCreate(Sender: TObject);
    procedure pageChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    var_ya_mostro_asistente : Boolean;
  public
    { Public declarations }
  end;

var
  fn1_come_pedi_expl_vari_pedidos: Tfn1_come_pedi_expl_vari_pedidos;

implementation

uses un1_come_pedi_expl_agrupada, _MDI, _vent_child,
  un1_come_pedi_expl_vari_pedi_agru_material, _func_varias, _func_pcp,
  un1_come_pedi_expl_vari_pedi_agru_supb_material, _Traductor;
{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 02 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_come_pedi_expl_vari_pedidos.FormCreate(Sender: TObject);
begin
  inherited;
  var_ya_mostro_asistente := False;
  //Limpiar el filtro activo
  doAplicarFiltroUsuarioPCP('');
  //Vista detallada
  Application.CreateForm(Tfn1_come_pedi_expl_agrupada, fn1_come_pedi_expl_agrupada);
  With fn1_come_pedi_expl_agrupada do
  Begin
       ManualDock(page, Nil);
       Visible := True;
       padr_acti_salir.onExecute := Self.padr_acti_salir.onExecute;
       padr_titu_ventana.Visible := False;
  End;
  //Vista agrupada por subpedido material
  Application.CreateForm(Tfn1_come_pedi_expl_vari_pedi_agru_subp_material, fn1_come_pedi_expl_vari_pedi_agru_subp_material);
  With fn1_come_pedi_expl_vari_pedi_agru_subp_material do
  Begin
       ManualDock(page, Nil);
       Visible := True;
       padr_acti_salir.onExecute := Self.padr_acti_salir.onExecute;
       padr_titu_ventana.Visible := False;
  End;
  //Vista agrupada por material
  Application.CreateForm(Tfn1_come_pedi_expl_vari_pedi_agru_material, fn1_come_pedi_expl_vari_pedi_agru_material);
  With fn1_come_pedi_expl_vari_pedi_agru_material do
  Begin
       ManualDock(page, Nil);
       Visible := True;
       padr_acti_salir.onExecute := Self.padr_acti_salir.onExecute;
       padr_titu_ventana.Visible := False;
  End;
  Page.ActivePageIndex := 0;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : pageChange
Objetivo        : Cambiar la página activa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 02 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_come_pedi_expl_vari_pedidos.pageChange(Sender: TObject);
begin
  inherited;
  If not var_vent_inicializada Then Exit;
  //Validar
  If (Page.ActivePage = Nil) then Exit;
  if Page.ActivePage.ControlCount = 0 Then Exit;
  if not (Page.ActivePage.Controls[0] is T_fvent_child) Then Exit;
  //Actualizar la consulta
  RefreshDataSet((Page.ActivePage.Controls[0] as T_fvent_child).Consulta);
  //Ajustar columnas
  (Page.ActivePage.Controls[0] as T_fvent_child).padr_acti_mejo_ajuste.Execute;
end;
{****************************************************************
Procedimiento   : FormDestroy
Objetivo        : Destruir las ventanas hijas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 02 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_come_pedi_expl_vari_pedidos.FormDestroy(Sender: TObject);
begin
  inherited;
  //Liberar las ventanas auxiliares
  if (fn1_come_pedi_expl_agrupada <> Nil) Then
    fn1_come_pedi_expl_agrupada.Free;
  if (fn1_come_pedi_expl_vari_pedi_agru_subp_material <> Nil) Then
    fn1_come_pedi_expl_vari_pedi_agru_subp_material.Free;
  if (fn1_come_pedi_expl_vari_pedi_agru_material <> Nil) Then
    fn1_come_pedi_expl_vari_pedi_agru_material.Free;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles de la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 02 de 2005
Versión         : pcp4.0.20.1
*****************************************************************}

procedure Tfn1_come_pedi_expl_vari_pedidos.FormShow(Sender: TObject);
begin
  inherited;
  if not (var_ya_mostro_asistente) Then
  Begin
      //Ejecutar el asistente al entrar
      fn1_come_pedi_expl_agrupada.acti_asistente.Execute;
      var_ya_mostro_asistente := True;
  End;
end;

end.
