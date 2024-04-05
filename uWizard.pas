unit uWizard;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Boxes, PCPFrame, StdCtrls, JvWizard, JvWizardRouteMapNodes,
  JvExControls, JvComponent, dxCntner;
type
  TfWizard = class(TForm)
    padr_pane_info: TPCPFrame;
    pane_wizard: TPanel;
    padr_wizard: TJvWizard;
    padr_pane_softconf: TPanel;
    padr_labe_softconf: TLabel;
    padr_pane_separador: TPanel;
    padr_beve_separador: TBevel;
    padr_nodos: TJvWizardRouteMapNodes;
    padr_estilo: TdxEditStyleController;
    procedure padr_wizardCancelButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var_se_cancelo  : Boolean;
  end;

var
  fWizard: TfWizard;

ResourceString
        cosDeseaCancelarAsistente = 'Desea cancelar el %s?';

implementation

uses _func_varias, _cons_colores, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : padr_wizardCancelButtonClick
Objetivo        : Cancelar el asistente 
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TfWizard.padr_wizardCancelButtonClick(Sender: TObject);
begin
        var_se_cancelo := True;
        Close;
end;
{****************************************************************
Procedimiento   : FormClose
Objetivo        : Cerrar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TfWizard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Release;
end;
{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Confirmar que se desea cerrar el asistente
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TfWizard.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if var_se_cancelo then
     if Confirmar(Format(cosDeseaCancelarAsistente, [caption]))=mrNo then
     Begin
        CanClose := False ;
        var_se_cancelo := False;
     End;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 28 de 2004
Versión         : pcp4003
*****************************************************************}
procedure TfWizard.FormCreate(Sender: TObject);
begin
    //Configurar los controles
    AutoHints(Self);
    padr_nodos.Color := clFondoAplicacion;
    padr_wizard.Color := clFondoAplicacion;
    padr_pane_softconf.Color := clFondoAplicacion;
    var_se_cancelo := False;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
