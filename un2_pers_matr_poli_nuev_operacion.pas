unit un2_pers_matr_poli_nuev_operacion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, TBXDkPanels, Boxes, PCPFrame, RxLookup,
  PCPLookUpComboEdit, RxMemDS, PCPProceso;

type
  Tfn2_pers_matr_poli_nuev_operacion = class(T_fvent_modal)
    Panel1: TPanel;
    comb_codi_operacion: TPCPLookUpComboEdit;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    PCPFrame1: TPCPFrame;
    TBXRadioButton1: TTBXRadioButton;
    TBXRadioButton2: TTBXRadioButton;
    TBXRadioButton3: TTBXRadioButton;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    myTabla_ventana: TRxMemoryData;
    quer_oper_codigo: TQuery;
    data_oper_codigo: TDataSource;
    quer_oper_nombre: TQuery;
    data_oper_nombre: TDataSource;
    myTabla_ventanacons_oper_costura: TIntegerField;
    myTabla_ventanacalificacion: TIntegerField;
    quer_upda_polifuncionalidad: TQuery;
    myTabla_ventanacons_personal: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure doAsignarCalificacion(Sender: TObject);
    procedure myTabla_ventanaAfterInsert(DataSet: TDataSet);
    procedure padr_accionesUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure comb_codi_operacionChange(Sender: TObject);
    procedure padr_acti_cancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure DoEjecutarFrame(cons_personal : Integer);
  end;

var
  fn2_pers_matr_poli_nuev_operacion: Tfn2_pers_matr_poli_nuev_operacion;

implementation

uses _func_varias, _cons_pcp;

{$R *.DFM}

procedure Tfn2_pers_matr_poli_nuev_operacion.FormCreate(Sender: TObject);
begin
  inherited;
  AbrirDataset(quer_oper_Codigo);
  AbrirDataset(quer_oper_nombre);
  padr_acti_aceptar.enabled := True;
end;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar los controles cuando cambie
                  el estado del dataSet
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_pers_matr_poli_nuev_operacion.doAsignarCalificacion(
  Sender: TObject);
begin
  inherited;
  if Not (Sender is TTBXRadioButton) Then Exit;
  With myTabla_Ventana do
  Begin
        if not (state in [dsEdit, dsInsert]) then Edit;
        FieldByName('calificacion').Value := (Sender as TTBXRadioButton).tag;
        Post;
  End;
end;

procedure Tfn2_pers_matr_poli_nuev_operacion.myTabla_ventanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  myTabla_ventana.FieldByName('calificacion').Value := 2;
end;

procedure Tfn2_pers_matr_poli_nuev_operacion.padr_accionesUpdate(
  Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  padr_acti_cancelar.Enabled := True;
end;

procedure Tfn2_pers_matr_poli_nuev_operacion.padr_acti_aceptarExecute(
  Sender: TObject);
begin
  inherited;
  //Insertarlo
  if comb_codi_operacion.text <> '' Then
     quer_upda_polifuncionalidad.ExecSQL;
  Close;
end;

Procedure Tfn2_pers_matr_poli_nuev_operacion.DoEjecutarFrame(cons_personal : Integer);
Begin
     With myTabla_ventana do
     Begin
          if not (state in [dsEdit, dsInsert]) then Edit;
          FieldByName('cons_personal').Value := cons_personal;
          Post;
     End;
     ShowModal;
End;

procedure Tfn2_pers_matr_poli_nuev_operacion.comb_codi_operacionChange(
  Sender: TObject);
begin
  inherited;
     With myTabla_ventana do
     Begin
          if (state in [dsEdit, dsInsert]) then
          Post;
     End;
end;

procedure Tfn2_pers_matr_poli_nuev_operacion.padr_acti_cancelarExecute(
  Sender: TObject);
begin
  inherited;
  if confirmar(cosDeseaCancelar)=mrNo then Exit;
  Close;
end;

end.
