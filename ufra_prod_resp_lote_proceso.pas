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
        Unit            : ufra_prod_resp_lote_proceso
        Objetivo        : Frame para el control de avance de tareas
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Julio 24 de 2004
        Versión         : pcp4003
*******************************************************************}

unit ufra_prod_resp_lote_proceso;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, Boxes, PCPFrame, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, JvExControls, JvComponent, JvTracker, RxLookup,
  PCPLookUpComboEdit, dxCntner, StdCtrls, SoCtrls, SCLDBLabel, RxMemDS,
  TB2Dock, TBX, DBActns, ActnList, TB2Item, TB2Toolbar, ufra_prod_sele_lote;

type
  Tffra_prod_resp_lote_proceso = class(TFrame)
    quer_sele_responsables: TQuery;
    data_sele_responsables: TDataSource;
    ActionList1: TActionList;
    acti_cancelar: TDataSetCancel;
    acti_guardar: TDataSetPost;
    quer_upda_responsables: TQuery;
    myTabla_ventana: TRxMemoryData;
    myTabla_ventanacons_prod_orde_responsable: TIntegerField;
    myTabla_ventanacons_prod_lote: TIntegerField;
    myTabla_ventanacons_proceso: TIntegerField;
    myTabla_ventanausua_responsable: TStringField;
    myTabla_ventanahecho2: TIntegerField;
    myTabla_ventanaporc_avance: TIntegerField;
    myTabla_ventanafech_sistema: TDateField;
    myTabla_ventanaobservaciones: TStringField;
    data_ventana: TDataSource;
    data_usuarios: TDataSource;
    pane_arriba: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    comb_usua_responsable: TPCPLookUpComboEdit;
    dxDBEdit2: TdxDBEdit;
    edit_avance: TJvTracker;
    pane_finalizacion: TPanel;
    SCLDBLabel6: TSCLDBLabel;
    edit_fech_finalizacion: TdxDBDateEdit;
    pane_observaciones: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
    pane_seleccion: TPanel;
    fram_lote: Tffra_prod_sele_lote;
    myTabla_ventanafech_estimada: TDateField;
    chec_hecho: TdxDBCheckEdit;
    SCLDBLabel5: TSCLDBLabel;
    PCPFrame1: TPCPFrame;
    dxDBMemo1: TdxDBMemo;
    procedure pane_frameResize(Sender: TObject);
    procedure doActualizarAvance(Sender: TObject; NewValue: Integer);
    procedure data_ventanaDataChange(Sender: TObject; Field: TField);
    procedure myTabla_ventanaBeforePost(DataSet: TDataSet);
    procedure fram_lotecomb_nume_loteChange(Sender: TObject);
    procedure acti_cancelarExecute(Sender: TObject);
    procedure myTabla_ventanaAfterCancel(DataSet: TDataSet);
    procedure chec_hechoChange(Sender: TObject);
  private
    { Private declarations }
    var_resp_inicial : String;
    var_inicializado : Boolean;
    var_cons_prod_lote  : Integer;
    var_cons_proceso    : Integer;
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
    Procedure doEjecutarFrame(cons_prod_lote, cons_proceso : Integer; conSeleccion : Boolean = False);
  end;


ResourceString
        cosAvanceProceso = 'Avance del proceso';
        cosProcesoFinalizado = ' (el proceso fué finalizado el día %s)';
        cosAdvertenciaCambiarResponsable = 'Si cambia el responsable del proceso, el avance solamente podrá se editado por %s.'+#13+
                'Desea continuar?';

  
  
implementation

uses _MDI, _vari_pcp, _func_varias, _func_pcp, _cons_pcp, _cons_colores;


{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear e inicializar el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 28 de 2004
Versión         : pcp4003
*****************************************************************}
Constructor Tffra_prod_resp_lote_proceso.Create(Owner : TComponent);
Begin
    //Heredar la creación
    Inherited Create(Owner);
    //Inicializar los controles de la ventana
    edit_avance.Width := edit_Fech_finalizacion.Width;
    AutoHints(Self);
    With edit_avance do
      begin
           BackColor := clZebra;
           BorderColor := clLineaGradiente;
           ThumbColor := clGroupPanel;
           TrackColor := clFinGradiente;
           CaptionColor := clGroupPanelTexto;
      End;
    chec_hecho.Style.BorderColor := clLineaGradiente;
End;

{****************************************************************
Procedimiento   : pane_frameResize
Objetivo        : Cambiar el tamaño del frame cuando cambie el del
                  panel tipo XP
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_resp_lote_proceso.pane_frameResize(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : doEjecutarPanel
Objetivo        : Ejecutar el panel
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_resp_lote_proceso.doEjecutarFrame(cons_prod_lote, cons_proceso : Integer;
        ConSeleccion : Boolean = False);
Begin
     //Abrir  e inicializar la tabla de memoria
     edit_avance.Width := edit_Fech_finalizacion.Width;
     var_inicializado := False;
     With myTabla_ventana do
     Begin
          Open;
          Insert;
          FieldByName('cons_prod_lote').Value := cons_prod_lote;
          FieldByName('cons_proceso').Value := cons_proceso;
          Post;
          //Abrir la consulta de responsables
          quer_sele_responsables.open;
          //Editar el registro activo de la tabla temporal con los datos de la consulta
          Edit;
          FieldByName('cons_prod_orde_responsable').Value := quer_sele_responsables.FieldByName('cons_prod_orde_responsable').asInteger;
          FieldByName('usua_responsable').Value := quer_sele_responsables.FieldByName('usua_responsable').AsString;
          var_resp_inicial := quer_sele_responsables.FieldByName('usua_responsable').AsString;
          FieldByName('porc_avance').Value := quer_sele_responsables.FieldByName('porc_avance').asInteger;
          edit_avance.Value := quer_sele_responsables.FieldByName('porc_avance').asInteger;
          FieldByName('hecho').Value := quer_sele_responsables.FieldByName('hecho').asInteger;
          FieldByName('fech_estimada').Value := quer_sele_responsables.FieldByName('fech_estimada').asDateTime;
          FieldByName('fech_sistema').Value := quer_sele_responsables.FieldByName('fech_sistema').asDateTime;
          FieldByName('observaciones').Value := quer_sele_responsables.FieldByName('observaciones').AsString;
          Post;
      End;
     //Guardar los valores actuales en variables
     var_cons_prod_lote := myTabla_ventana.FieldByName('cons_prod_lote').asInteger;
     var_cons_proceso := myTabla_ventana.FieldByName('cons_proceso').AsInteger;
     //Si no es el usuario responsable, no editar
     SetControlEnabled(pane_arriba, (UpperCase(var_resp_inicial)=UpperCase(var_usua_activo)));
     SetControlEnabled(pane_observaciones, (UpperCase(var_resp_inicial)=UpperCase(var_usua_activo)));
     //Si tiene seleccion, habilitar el combo
     if conSeleccion then
     Begin
          //Mostrar el panel
          pane_seleccion.Visible := True;
          pane_arriba.Top := 100;
          //Abrir la consulta
          if not fram_lote.quer_lotes.active then fram_lote.quer_lotes.Open;
     End;
     var_inicializado := True;
End;
{****************************************************************
Procedimiento   : edit_avanceChangedValue
Objetivo        : Actualizar el avance en la tabla temporal
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_resp_lote_proceso.doActualizarAvance(
  Sender: TObject; NewValue: Integer);
begin
    With myTabla_Ventana do
    Begin    
        //Verificar el estado de la tabla
        if Not(State in [dsEdit, dsInsert]) Then
                Edit;
        //Actualizar el avance
        FieldByName('porc_avance').Value := edit_avance.value;
        if edit_avance.value = 100 then
                FieldByName('hecho').Value := 1
        Else
                FieldByName('hecho').Value := -1;
        pane_finalizacion.visible := edit_avance.value = 100;
    End;
end;
{****************************************************************
Procedimiento   : data_ventanaDataChange
Objetivo        : Actualizar el frame cuando cambien los datos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_resp_lote_proceso.data_ventanaDataChange(
  Sender: TObject; Field: TField);
begin
    With myTabla_Ventana do
    Begin
        pane_finalizacion.visible := edit_avance.value = 100;
    End;
end;
{****************************************************************
Procedimiento   : myTabla_ventanaBeforePost
Objetivo        : Guardar los cambios
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_resp_lote_proceso.myTabla_ventanaBeforePost(
  DataSet: TDataSet);
begin
        if not var_inicializado then
            Exit;
        //Verificar si cambió el usuario
        if UpperCase(var_resp_inicial)<>UpperCase(var_usua_activo) Then
                if confirmar(Format(cosAdvertenciaCambiarResponsable, [var_resp_inicial]))=mrNo then Exit;
        //Actualizar
        Try
                //Iniciar la transacción
                StartDBTransaction;
                quer_upda_responsables.ExecSQL;
                //Guardar los cambios
                CommitDBWork;
        Except
             //Error
             on E:Exception do
             Begin
                  //Cancelar la transacción
                  RollBackDBWork;
                  //Mostrar mensaje de error
                  EjecutarMensajeError(e.Message);
                  Abort;
             End;
        End;
end;

procedure Tffra_prod_resp_lote_proceso.fram_lotecomb_nume_loteChange(
  Sender: TObject);
var
        var_cons_proceso        : Integer;
begin
     //Si cambia pero no está visible, salir
     if not pane_Seleccion.Visible then Exit;
     var_cons_proceso := myTabla_ventana.FieldByName('cons_proceso').asInteger;
     myTabla_ventana.Cancel;
     myTabla_ventana.Close;
     DoEjecutarFrame(fram_lote.quer_lotes.FieldByName('cons_prod_lote').asInteger,
        var_cons_proceso, True);
end;
{****************************************************************
Procedimiento   : acti_cancelarExecute
Objetivo        : Actualizar luego de cancelar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_resp_lote_proceso.acti_cancelarExecute(
  Sender: TObject);
var
        var_cons_proceso        : Integer;  
begin
       if Confirmar(cosDeseaCancelar)=mrNo then Exit;
       var_cons_proceso := myTabla_ventana.FieldByName('cons_proceso').asInteger;
       myTabla_ventana.Cancel;
       myTabla_ventana.Close;
       DoEjecutarFrame(fram_lote.quer_lotes.FieldByName('cons_prod_lote').asInteger,
          var_cons_proceso, pane_seleccion.Visible);
end;
{****************************************************************
Procedimiento   : myTabla_ventanaAfterCancel
Objetivo        : Volver a ejecutar el frame al cancelar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 01 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_resp_lote_proceso.myTabla_ventanaAfterCancel(
  DataSet: TDataSet);
begin
    doEjecutarFrame(var_Cons_prod_lote, var_cons_proceso);
end;
{****************************************************************
Procedimiento   : chec_hechoChange
Objetivo        : Cambiar el %de avance cuando cambia el check FINALIZADO
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 01 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_resp_lote_proceso.chec_hechoChange(Sender: TObject);
begin
    if Not (myTabla_ventana.State = dsEdit) then Exit;
    if chec_hecho.Checked then
        edit_Avance.Value := 100
    Else
        edit_avance.Value := 0;
    //Referescar
    doActualizarAvance(Sender, edit_avance.Value);
end;

end.
