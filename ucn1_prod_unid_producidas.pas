
unit ucn1_prod_unid_producidas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_consulta, RLPrintDialog, RLParser, Db, DBTables, 
  dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, ImgList, Menus, TBX,
  ActnList, ufra_edit_reportes, ExtCtrls, RLReport, RLPreview, dfsSplitter,
  Boxes, PCPFrame, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels, dxEditor, dxEdLib,
  StdCtrls, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid,
  dxPageControl, SoCtrls, SCLDBLabel;

type
  Tcn1_prod_unid_producidas = class(T_fvent_consulta)
    pane_filtros: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    quer_orde_activas: TQuery;
    edit_fech_inicial: TdxDateEdit;
    edit_fech_final: TdxDateEdit;
    data_orde_activas: TDataSource;
    RLBand1: TRLBand;
    procedure FormCreate(Sender: TObject);
    procedure padr_acti_actualizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cn1_prod_unid_producidas: Tcn1_prod_unid_producidas;

implementation

uses _cons_pcp, _func_db, _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tcn1_prod_unid_producidas.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicialización visual
  pane_filtros.caption := CosFiltros;
	Insertar_Palabras(Self, WKLenguaje);
end;

procedure Tcn1_prod_unid_producidas.padr_acti_actualizarExecute(
  Sender: TObject);
begin
  //inherited;

  //Cerrar las consultas activas
  quer_orde_activas.Close;


  //Abrir las consultas requeridas
  AbrirDataSet(quer_orde_activas);



  //Mostrar la vista previa
  padr_reporte.preview(padr_preview);
End;

end.
