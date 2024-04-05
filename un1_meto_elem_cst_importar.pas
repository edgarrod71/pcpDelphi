unit un1_meto_elem_cst_importar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_meto_elem_cst, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBTLCl, dxGrClms, dxDBGrid, dxDBCtrl,
  dxPageControl, dfsSplitter, Grids, BaseGrid, AdvGrid, AdvCGrid, 
  JvExControls, JvComponent, JvGradientHeaderPanel, StdCtrls, SCLColumnGrid,
  ufra_edit_reportes, Boxes, PCPFrame, PCPTituloGradiente, SCLDBGrid;

type
  Tfn1_meto_elem_cst_importar = class(Tfn1_meto_elem_cst)
    grid: TSCLColumnGrid;
    procedure FormActivate(Sender: TObject);
    procedure padr_acti_salirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    canCloseWindow : Boolean;
  end;

var
  fn1_meto_elem_cst_importar: Tfn1_meto_elem_cst_importar;

implementation

uses un1_meto_elem_cst1;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_elem_cst_importar.FormActivate(Sender: TObject);
begin
  inherited;
  //Mostrar la barra
  padr_barra.Visible := True;
end;
{****************************************************************
Procedimiento   : padr_acti_salirExecute
Objetivo        : Actualizar las ventanas dependientes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_elem_cst_importar.padr_acti_salirExecute(
  Sender: TObject);
begin
  inherited;
  //Estado del botón que importa
  fn1_meto_elem_cst1.acti_importar.Checked := False;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_elem_cst_importar.FormCreate(Sender: TObject);
begin
  inherited;
  canCloseWindow := False;
end;
{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Verificar si se puede cerrar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_elem_cst_importar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  //Verificar si se está cerrando desde la ventana de métodos
  canClose := canCloseWindow;
end;

end.
