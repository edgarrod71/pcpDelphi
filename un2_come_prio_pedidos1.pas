unit un2_come_prio_pedidos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, DFSClrBn, Boxes, PCPProceso;

type
  Tfn2_come_prio_pedidos1 = class(T_fvent_modal)
    Tabla_VentanaCONS_COME_PRIO_PEDIDO: TIntegerField;
    Tabla_VentanaCOLOR: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    boto_color: TdfsColorButton;
    Tabla_VentanaCODI_COME_PRIO_PEDIDO: TStringField;
    Tabla_VentanaNOMB_COME_PRIO_PEDIDO: TStringField;
    procedure boto_colorColorChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn2_come_prio_pedidos1: Tfn2_come_prio_pedidos1;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : boto_colorColorChange
Objetivo        : Actualizar los controles cuando cambie el color
                  seleccionado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_prio_pedidos1.boto_colorColorChange(Sender: TObject);
begin
  inherited;
  //Editar la tabla de la ventana (si ya se inicializó)
  If var_vent_inicializada Then
  if not (tabla_ventana.State in [dsEdit, dsInsert]) then
    	tabla_ventana.Edit;

end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_prio_pedidos1.FormShow(Sender: TObject);
begin
  //Mostrar el color del registro
  If Not var_vent_inicializada then
     If tabla_ventana.FieldByName('color').AsString <> '' Then
	  boto_color.Color:=tabla_ventana.FieldByName('color').AsInteger;
  inherited;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Terminar de preparar el registro para guardarlo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_prio_pedidos1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //Asignar el color
  tabla_ventana.FieldByName('color').Value := boto_color.Color;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Inicializar el registro al insertarlo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_prio_pedidos1.Tabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Color blanco por defecto
  tabla_ventana.FieldByName('color').Value := clWhite;
  boto_color.Color := clWhite;
end;

procedure Tfn2_come_prio_pedidos1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
