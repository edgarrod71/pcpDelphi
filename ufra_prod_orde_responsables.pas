unit ufra_prod_orde_responsables;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, DBTables, dxDBTLCl, dxGrClms, Db,
  DBActns, ActnList, TB2Dock, TB2Toolbar, TBX, TB2Item, dxLayout, dxGrClEx;

type
  Tffra_prod_orde_responsables = class(TFrame)
    grid_responsables: TdxDBGrid;
    tabl_responsables: TTable;
    data_responsables: TDataSource;
    quer_prod_etapas: TQuery;
    fram_dock: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    acti_ventana: TActionList;
    fram_acti_cancelar: TDataSetCancel;
    fram_acti_guardar: TDataSetPost;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    tabl_responsablesCONS_PROD_ORDE_RESPONSABLE: TIntegerField;
    tabl_responsablesCONS_PROD_ORDEN: TIntegerField;
    tabl_responsablesCONS_PROD_ETAPA: TIntegerField;
    tabl_responsablesUSUA_RESPONSABLE: TStringField;
    tabl_responsablesFECH_ESTIMADA: TDateTimeField;
    tabl_responsablesNOMB_PROD_ETAPA: TStringField;
    grid_responsablesCONS_PROD_ORDE_RESPONSABLE: TdxDBGridMaskColumn;
    grid_responsablesCONS_PROD_ORDEN: TdxDBGridMaskColumn;
    grid_responsablesCONS_PROD_ETAPA: TdxDBGridMaskColumn;
    grid_responsablesNOMB_PROD_ETAPA: TdxDBGridColumn;
    grid_responsablesFECH_ESTIMADA: TdxDBGridDateColumn;
    tabl_responsablesCODI_PROD_ETAPA: TStringField;
    grid_responsablesCODI_PROD_ETAPA: TdxDBGridColumn;
    data_usuarios: TDataSource;
    grid_layout: TdxDBGridLayoutList;
    grid_layo_usuarios: TdxDBGridLayout;
  private
    { Private declarations }
    fCanEdit    : Boolean;
    Constructor Create (Owner : TComponent); Override;
    Procedure setCanEdit(Value : Boolean);
  public
    { Public declarations }
  Published
     Property canEdit : Boolean Read fCanEdit Write SetCanEdit Default False;
  end;

implementation

uses _MDI, _func_varias;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el Frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_orde_responsables.Create (Owner : TComponent);
Begin
     //Heredar la creacion
     Inherited Create (Owner);
     //Inicializar el frame
     ColorGrid(Grid_Responsables);
     setCanEdit(False);
End;
{****************************************************************
Procedimiento   : SetCanEdit
Objetivo        : Asigna el valor a la propiedad canEdit
                  que indica si se pueden editar los valores
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 09 de 2004
Versión         : pcp4000
***************************************************************}
Procedure Tffra_prod_orde_responsables.SetCanEdit(Value : Boolean);
Begin
    If (Value <> fcanEdit) then
    Begin
        fCanEdit := Value;
        With grid_responsables do
        Begin
            //Permitir la edicion
            if fCanEdit Then
              OptionsBehavior :=  OptionsBehavior + [edgoEditing, edgoEnterShowEditor, edgoimmediateEditor]
            Else
            //Anular la edicion
              OptionsBehavior :=  OptionsBehavior - [edgoEditing, edgoEnterShowEditor, edgoimmediateEditor]
        End;
        //Acciones y menu
        fram_dock.Visible := fcanEdit;
        fram_acti_guardar.Enabled := fcanEdit;
        fram_acti_cancelar.Enabled := fcanEdit;
    End;
End;

end.
