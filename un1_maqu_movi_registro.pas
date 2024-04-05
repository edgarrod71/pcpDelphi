unit un1_maqu_movi_registro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, ufra_edit_reportes, dfsSplitter, Boxes,
  PCPFrame, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, SCLDBGrid;

type
  Tfn1_maqu_movi_registro = class(T_fvent_child)
    consultaSECU_REGISTRO: TIntegerField;
    consultaSECU_MOVIMIENTO: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaOBSERVACIONES: TMemoField;
    padr_gridSECU_REGISTRO: TdxDBGridMaskColumn;
    padr_gridSECU_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridOBSERVACIONES: TdxDBGridMemoColumn;
    procedure padr_gridDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure MostrarVentana(Sender : TObject; secu_movimiento : Integer = 0);
  end;

var
  fn1_maqu_movi_registro: Tfn1_maqu_movi_registro;

implementation

{$R *.DFM}
{****************************************************************
Procedimiento   : MostrarVentana
Objetivo        : Muestra la ventana luego de inicializarla
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           :
Versión         : pcp4000
*****************************************************************}
Procedure Tfn1_maqu_movi_registro.MostrarVentana(Sender : TObject; secu_movimiento : Integer = 0);
Begin
     //Cambiar el titulo (mostrar el no. documento)
     padr_pane_titulo.Caption := padr_pane_titulo.Caption +
          ' - (Documento : '+IntToStr(secu_movimiento)+')';
     Caption := padr_pane_titulo.Caption;
     //Configurar la consulta
     With consulta do
     Begin
         Sql.Add('Select * from PCP_MAQU_MOVI_REGISTRO');
         Sql.Add('Where secu_movimiento = '+IntToStr(secu_movimiento));
         Sql.Add('order by secu_registro');
         Open;
     End;
     //Asignar el DataSet al DataSource de la ventana
     data_ventana.DataSet := Consulta;
     //Llamar todos los registros de la consulta
     padr_acti_llam_todosExecute(Sender);
     Sincronizar_Columnas;
     //Mostrar la ventana
     ShowModal;
End;
{****************************************************************
Procedimiento   : padr_gridDblClick
Objetivo        : Anular el doble click en el grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_movi_registro.padr_gridDblClick(Sender: TObject);
begin
//  inherited;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_movi_registro.FormCreate(Sender: TObject);
begin
  //Deshabilitar la consulta principal
  data_ventana.DataSet := Nil;
  consulta.Sql.Clear;
  inherited;
end;

end.
