unit un2_prod_orde_etapas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPFrame, DFSClrBn, RxLookup,
  PCPLookUpComboEdit, PCPProceso;

type
  Tfn2_prod_orde_etapas1 = class(T_fvent_modal)
    PCPFrame1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    Tabla_VentanaCONS_PROD_ETAPA: TIntegerField;
    Tabla_VentanaCODI_PROD_ETAPA: TStringField;
    Tabla_VentanaNOMB_PROD_ETAPA: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    SCLDBLabel12: TSCLDBLabel;
    boto_color: TdfsColorButton;
    Tabla_VentanaCOLOR: TIntegerField;
    Tabla_VentanaUSUA_RESPONSABLE: TStringField;
    Tabla_VentanaDURA_ESTIMADA: TIntegerField;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    dxDBSpinEdit1: TdxDBSpinEdit;
    data_usuarios: TDataSource;
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure boto_colorColorChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn2_prod_orde_etapas1: Tfn2_prod_orde_etapas1;

implementation

uses _MDI;

{$R *.DFM}
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Inicializar el registro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 07 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_prod_orde_etapas1.Tabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Color por defecto
  tabla_ventana.FieldByName('color').Value := clWhite;
end;

procedure Tfn2_prod_orde_etapas1.FormCreate(Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Asignar el color antes de guardar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 07 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_prod_orde_etapas1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //Guardar la muestra del color
  tabla_ventana.FieldByName('color').Value := boto_color.Color;
end;
{****************************************************************
Procedimiento   : boto_colorColorChange
Objetivo        : Controla la rutina de cambio de color en el
                  botón de selección de color
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 07 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_prod_orde_etapas1.boto_colorColorChange(Sender: TObject);
begin
  inherited;
  //Si no se ha mostrado, editar
  If Not var_vent_inicializada Then Exit;
  If (tabla_ventana.State in [dsEdit, dsInsert]) Then
        //Cambiar el color en el campo
        tabla_ventana.FieldByName('Color').Value := boto_color.Color
  Else
    //Si el campo no está vacío, mostrar el color
    if tabla_ventana.FieldByName('Color').asInteger <> 0 then
        boto_color.Color := tabla_ventana.FieldByName('Color').asInteger
    //Si está vacío, color blanco
    Else
        boto_color.Color := clWhite;
end;

procedure Tfn2_prod_orde_etapas1.FormShow(Sender: TObject);
begin
  //Actualizar el color al mostrar el form
  if not var_vent_inicializada then
      If tabla_ventana.FieldByName('color').asInteger <> 0 Then
        boto_color.Color:=tabla_ventana.FieldByName('color').Value
      Else
        boto_color.Color:=clWhite;
  inherited;
end;
end.
