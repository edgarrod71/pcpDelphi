unit ufra_prod_orde_bala_proceso;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, RxMemDS, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxCurrencyEditPCP,
  ExtCtrls, StdCtrls, Boxes, PCPFrame, dxTL, dxDBCtrl, dxDBGrid,
  dfsSplitter, DBTables, dxCore, dxContainer, TBXDkPanels, SohoBtns,
  SCLButton;

type
  Tffra_prod_orde_bala_proceso = class(TFrame)
    myTabla_Ventana: TRxMemoryData;
    myData_Ventana: TDataSource;
    Panel1: TPanel;
    PCPFrame3: TPCPFrame;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Bevel1: TBevel;
    Label14: TLabel;
    EditTotalLote: TdxCurrencyEditPCP;
    EditTotaltc: TdxCurrencyEditPCP;
    EditTotalMinutos: TdxCurrencyEditPCP;
    EditTotalPH: TdxCurrencyEditPCP;
    EditProduccionMaxima: TdxCurrencyEditPCP;
    EditProduccionRequerida: TdxCurrencyEditPCP;
    EditTotalUnidades: TdxCurrencyEditPCP;
    quer_list_operaciones: TQuery;
    data_list_operaciones: TDataSource;
    myTabla_Ventanacons_prod_lote: TIntegerField;
    myTabla_Ventanacons_proceso: TIntegerField;
    quer_list_operacionesSECU_OPERACION: TIntegerField;
    quer_list_operacionesCODI_OPER_COSTURA: TStringField;
    quer_list_operacionesNOMB_OPER_COSTURA: TStringField;
    quer_list_operacionesTIEMPO: TFloatField;
    quer_list_operacionesCONS_PROD_PAQU_TIPO: TIntegerField;
    quer_list_operacionesCODI_RECU_FAMILIA: TStringField;
    PCPFrame1: TPCPFrame;
    grid_operaciones: TdxDBGrid;
    grid_operacionesSECU_OPERACION: TdxDBGridMaskColumn;
    grid_operacionesCODI_OPER_COSTURA: TdxDBGridMaskColumn;
    grid_operacionesNOMB_OPER_COSTURA: TdxDBGridMaskColumn;
    grid_operacionesTIEMPO: TdxDBGridMaskColumn;
    grid_operacionesCONS_PROD_PAQU_TIPO: TdxDBGridMaskColumn;
    grid_operacionesCODI_RECU_FAMILIA: TdxDBGridMaskColumn;
    quer_unid_lote: TQuery;
    PCPFrame2: TPCPFrame;
    Label6: TLabel;
    Label7: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    ApPt: TLabel;
    x: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Bevel2: TBevel;
    EditMinutosContratados: TdxCurrencyEditPCP;
    EditMinutosDescanso: TdxCurrencyEditPCP;
    EditOperariosDisponibles: TdxCurrencyEditPCP;
    EditMinutosDisponibles: TdxCurrencyEditPCP;
    EditPresencia: TdxCurrencyEditPCP;
    EditMinutosPresencia: TdxCurrencyEditPCP;
    EditEficienciaGrupo: TdxCurrencyEditPCP;
    EditAprovechamientoGrupo: TdxCurrencyEditPCP;
    EditMinutosReales: TdxCurrencyEditPCP;
    edi_factor_c: TdxCurrencyEditPCP;
    quer_pers_disponible: TQuery;
    myTabla_Ventanacons_planta: TIntegerField;
    myTabla_Ventanacons_plan_linea: TIntegerField;
    myTabla_Ventanacons_line_seccion: TIntegerField;
    quer_pers_disponibleNUME_OPERARIOS: TIntegerField;
    dxContainer6: TdxContainer;
    fra_diferencias: TPCPFrame;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    EditDiferenciaMinutos: TdxCurrencyEditPCP;
    EditEquivalenciaOperarias: TdxCurrencyEditPCP;
    EditHorasExtras: TdxCurrencyEditPCP;
    PCPFrame5: TPCPFrame;
    Label21: TLabel;
    Label22: TLabel;
    EditTiempoMedio: TdxCurrencyEditPCP;
    EditTcr: TdxCurrencyEditPCP;
    PCPFrame6: TPCPFrame;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EditPaquetePorPuesto: TdxCurrencyEditPCP;
    EditTamanoPaquete: TdxCurrencyEditPCP;
    EditPuestosSimultaneos: TdxCurrencyEditPCP;
    PCPFrame7: TPCPFrame;
    Label26: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Editr1p: TdxCurrencyEditPCP;
    editrup: TdxCurrencyEditPCP;
    editrcp: TdxCurrencyEditPCP;
    editc1op: TdxCurrencyEditPCP;
    Bevel3: TBevel;
    Bevel4: TBevel;
    dfsSplitter1: TdfsSplitter;
    Panel2: TPanel;
    chk_capacidad: TRadioButton;
    chk_unidades: TRadioButton;
    ajus1: TTBXRadioButton;
    ajus2: TTBXRadioButton;
    ajus3: TTBXRadioButton;
    Bevel5: TBevel;
    boto_aplicar: TSCLButton;
    procedure grid_operacionesTIEMPODrawSummaryFooter(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; var AText: String;
      var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
      var ADone: Boolean);
    procedure doHacerCalculos(Sender: TObject);
    procedure chk_capacidadClick(Sender: TObject);
    procedure EditProduccionRequeridaEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create(Owner : TComponent); Override;
    Procedure doEjecutarFrame(cons_prod_lote, cons_proceso,
        cons_planta, cons_plan_linea, cons_line_seccion : Integer);
  end;

implementation

uses _func_varias, _MDI;

{$R *.DFM}

Constructor Tffra_prod_orde_bala_proceso.Create(Owner : TComponent); 
Begin
    Inherited Create(Owner);
    colorGrid(grid_operaciones);
    myTabla_ventana.open;
    myTabla_ventana.Insert;
    myTabla_ventana.Post;
    AbrirDataSet(quer_list_operaciones);
    AbrirDataSet(quer_unid_lote);
End;

Procedure Tffra_prod_orde_bala_proceso.doEjecutarFrame(cons_prod_lote, cons_proceso,    
        cons_planta, cons_plan_linea, cons_line_seccion : Integer);
var
        tiem_referencia : Real;
Begin
     //Asignar los parámetros a la tabla en memoria     
     With myTabla_ventana do
     Begin
         if not (state in [dsEdit, dsInsert]) Then
                Edit;
         FieldByName('cons_prod_lote').Value := cons_prod_lote;
         FieldByName('cons_proceso').Value := cons_proceso;
         FieldByName('cons_planta').Value := cons_planta;
         FieldByName('cons_plan_linea').Value := cons_plan_linea;
         FieldByName('cons_line_seccion').Value := cons_line_seccion;
         Post;
     End;
     //Unidades del lote
     EditTotalLote.Value := quer_unid_lote.FieldByName('cant_unidades').AsInteger;
     //Tiempo de la ref
     tiem_referencia := 0;
     With quer_list_operaciones do
     Begin      
          first;
          while not eof
          do begin
                tiem_referencia := tiem_referencia + FieldByName('tiempo').asFloat;
                Next;
          End;
          first;
     End;
     EditTotalTC.Value := tiem_referencia;
     //Personal disponible
     With quer_pers_disponible do
     Begin
        // Open;
        // EditOperariosDisponibles.Value := FieldByName('nume_operarios').AsInteger;
        { if  EditOperariosDisponibles.AsInteger = 0 then} EditOperariosDisponibles.value := 20;
         {Close; }
     End;
     doHacerCalculos(Self);
      

End;

procedure Tffra_prod_orde_bala_proceso.grid_operacionesTIEMPODrawSummaryFooter(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; var AText: String;
  var AAlignment: TAlignment; AFont: TFont; var AColor: TColor;
  var ADone: Boolean);
begin
        EditTotalTC.Value := grid_operacionesTIEMPO.SummaryFooterValue;
end;

procedure Tffra_prod_orde_bala_proceso.doHacerCalculos(Sender: TObject);
begin
         Try
            EditProduccionMaxima.Value := (EditMinutosReales.Value/EditTotalTc.Value);
         Except
            EditProduccionMaxima.Value := 0;
         End;
         if chk_capacidad.checked then
            EditProduccionRequerida.Value := EditProduccionMaxima.Value;

         EditTotalMinutos.Value := EditTotalLote.Value * EditTotalTc.Value;

         //Actualizar la info de la orden
         EditTotalUnidades.Value := editProduccionRequerida.Value;

         //Produccion por hora
         Try
             EditTotalPH.Value := (EditTotalUnidades.Value/(EditMinutosContratados.Value - EditMinutosDescanso.Value))*
                                 (60*(1-(EditMinutosDescanso.Value/EditMinutosContratados.Value)));
         Except
             EditTotalPH.Value := 0;
         End;
         //DiferenciaMinutos
         EditDiferenciaMinutos.Value:=EditMinutosReales.Value-(EditTotalUnidades.Value*EditTotalTc.Value);
         //Equivalencia
         Try
             EditEquivalenciaOperarias.Value:=EditDiferenciaMinutos.Value/(EditMinutosContratados.Value-EditMinutosDescanso.Value)/
                    (EditPresencia.Value/100)/(EditAprovechamientoGrupo.Value/100)/(EditEficienciaGrupo.Value/100);
         Except
             EditEquivalenciaOperarias.Value:=0;
         End;
         //EditHoras Extras
         Try
            EditHorasExtras.Value:=-1*(EditDiferenciaMinutos.Value/EditOperariosDisponibles.Value/60);
         Except
            EditHorasExtras.Value:=0;
         End;
         //TCR
         Try
           EditTCR.Value:=EditTotalTc.Value/(EditPresencia.Value/100)/(EditAprovechamientoGrupo.Value/100)/(EditEficienciaGrupo.Value/100);
         Except
           EditTCR.Value:=0;
         End;
         //Tiempo Medio
         Try
            EditTiempoMedio.Value:=EditTCR.Value/EditOperariosDisponibles.Value;
         Except
            EditTiempoMedio.Value:=0;
         End;

         //R1p
         Try
            EditR1p.Value:=(EdittiempoMedio.Value*(EditOperariosDisponibles.Value-EditPuestosSimultaneos.Value)*EditPaquetePorPuesto.Value*EditTamanoPaquete.Value)/
                    (EditMinutosContratados.Value-EditMinutosDescanso.Value);
         Except
            EditR1p.Value:=0;
         End;
         //RUP
         Try
           EditRup.Value:=(EditTiempomedio.Value*(EditTotalLote.Value-EditTamanoPaquete.Value))/
                    (EditMinutosContratados.Value-EditMinutosDescanso.Value);
         Except
           EditRup.Value:=0;
         End;
         //RCP
         EditRCP.Value:=EditR1p.Value+Editrup.Value;
         //C1o
         Try
                 EditC1op.Value:=(EditTiempoMedio.Value*EditTotalLote.Value)/
                    (EditMinutosContratados.Value-EditMinutosDescanso.Value);
         Except
                 EditC1op.Value:=0;
         End;
         //Capacidad PCP
         //Minutos disponibles
         EditMinutosDisponibles.Value:=EditOperariosDisponibles.Value*(EditMinutosContratados.Value-EditMinutosDescanso.Value);
         //Minutos presencia
         EditMinutosPresencia.Value:=EditMinutosDisponibles.Value*(EditPresencia.Value/100);
         //Minutos Reales
         EditMinutosReales.Value:=EditMinutosPresencia.Value*(EditAprovechamientoGrupo.Value/100)*(EditEficienciaGrupo.Value/100);
         //Factor C
         Edi_Factor_C.Value := ((EditPresencia.Value/100) * (EditAprovechamientoGrupo.Value/100) * (EditEficienciaGrupo.Value/100))*100;
         
end;

procedure Tffra_prod_orde_bala_proceso.chk_capacidadClick(Sender: TObject);
begin
        EditProduccionRequerida.Enabled := chk_unidades.Checked;
        fra_diferencias.Visible := chk_unidades.Checked;
        doHacerCalculos(Sender);
end;

procedure Tffra_prod_orde_bala_proceso.EditProduccionRequeridaEnter(
  Sender: TObject);
begin
        editProduccionRequerida.Value := Trunc(editProduccionRequerida.Value);
        editProduccionRequerida.SelectAll;
end;

end.
