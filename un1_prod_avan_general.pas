unit un1_prod_avan_general;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_prod_padre, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, StdCtrls,
  SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit, Boxes, PCPFrame,
  dxEditor, dxEdLib, dxDBELib, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, ufra_prod_resp_lote_proceso, ufra_mens_atencion,
  TBXDkPanels, TBXButtonSCL, PCPProceso;

type
  Tfn1_prod_avan_general = class(Tfn1_prod_padre)
    fram_avance: Tffra_prod_resp_lote_proceso;
    edit_proc_actual: TdxSpinEdit;
    fram_mensaje: Tffra_mens_atencion;
    procedure doCambiarOrden(Sender: TObject);
    procedure fram_avancedata_ventanaStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_avan_general: Tfn1_prod_avan_general;

implementation

{$R *.DFM}

procedure Tfn1_prod_avan_general.doCambiarOrden(Sender: TObject);
begin
  inherited;
  fram_avance.Visible := (comb_nume_orden.Text <> '') and (padr_comb_nume_lote.Text <> '');
  fram_mensaje.Visible := Not fram_avance.Visible;
  //Salir si no es válido
  if ((comb_nume_orden.Text <> '') or (padr_comb_nume_lote.Text <> '')) Then Exit;
  //Cargar el frame
  fram_avance.doEjecutarFrame(padr_quer_ordenes.FieldByName('cons_prod_lote').AsInteger,
        edit_proc_actual.IntValue, True);
end;

procedure Tfn1_prod_avan_general.fram_avancedata_ventanaStateChange(
  Sender: TObject);
begin
  inherited;
  comb_nume_orden.Enabled := (fram_avance.myTabla_Ventana.Active) and Not (fram_avance.myTabla_ventana.State in [dsEdit, dsInsert]);
  padr_comb_nume_lote.Enabled := (fram_avance.myTabla_Ventana.Active) and Not (fram_avance.myTabla_ventana.State in [dsEdit, dsInsert]);
end;

end.
