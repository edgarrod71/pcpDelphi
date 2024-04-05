unit ufra_sele_refe_variacion;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, PCPLookUpComboEdit, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls,
  Boxes, PCPFrame, Db, DBTables, dxCntner, dxEditor, dxEdLib, dxDBELib,
  SohoBtns, SCLButton, TBXDkPanels, TBXButtonSCL;

type
  Tffra_sele_refe_variacion = class(TFrame)
    quer_referencias: TQuery;
    fram_pane_sele_referencia: TPCPFrame;
    fram_pane_referencia: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    comb_codi_referencia: TPCPLookUpComboEdit;
    comb_variacion: TPCPLookUpComboEdit;
    fram_pane_informacion: TPCPFrame;
    SCLDBLabel8: TSCLDBLabel;
    dxDBEdit4: TdxDBEdit;
    SCLDBLabel9: TSCLDBLabel;
    dxDBEdit6: TdxDBEdit;
    SCLDBLabel11: TSCLDBLabel;
    dxDBEdit7: TdxDBEdit;
    SCLDBLabel12: TSCLDBLabel;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    SCLDBLabel10: TSCLDBLabel;
    data_referencias: TDataSource;
    SCLDBLabel4: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    SCLDBLabel5: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    SCLDBLabel6: TSCLDBLabel;
    dxDBEdit3: TdxDBEdit;
    quer_refe_variaciones: TQuery;
    data_refe_variaciones: TDataSource;
    padr_boto_menu_Referencia: TTBXButtonSCL;
    procedure FrameResize(Sender: TObject);
    procedure comb_codi_referenciaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var_most_pane_informacion : Boolean;
  end;

Var
    var_refe_valida     : boolean;
  
implementation

uses  _cons_pcp, _MDI;

{$R *.DFM}
{****************************************************************
Procedimiento   : FrameResize
Objetivo        : Configurar el panel de información de la referencia
                  cuando sea cambiado su tamaño.  Se utilizó esta
                  propiedad ya que no tiene onCreate el Frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 14 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_sele_refe_variacion.FrameResize(Sender: TObject);
begin
  //Caption      
  fram_pane_sele_referencia.Caption := cosSeleccioneReferencia;
  fram_pane_informacion.Caption := cosInformacionDeLaReferencia;
end;
{****************************************************************
Procedimiento   : fram_pane_sele_referenciaResize
Objetivo        : Cambiar el tamaño del frame cuando se minimice
                  el pcpFrame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 14 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_sele_refe_variacion.comb_codi_referenciaChange(
  Sender: TObject);
begin
        //Actualizar la variable de validez de la referencia
        var_refe_valida := (comb_codi_referencia.Text<>'') and
                        (comb_variacion.Text<>'');
        //Mostrar/ocultar el panel de información de la referencia activa
        fram_pane_informacion.Visible :=  (var_refe_valida) and (var_most_pane_informacion);
        //Habilitar el combo de variacion
        comb_variacion.Enabled := (comb_codi_referencia.Text<>'');
        if not comb_variacion.Enabled then comb_variacion.ClearValue;
end;

Initialization

        var_refe_valida := True;

end.
