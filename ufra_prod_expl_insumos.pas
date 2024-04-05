unit ufra_prod_expl_insumos;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, Db, DBTables, ActnList, Menus,
  TB2Item, TBX;
type
  Tffra_prod_expl_insumos = class(TFrame)
    quer_explosion: TQuery;
    data_explosion: TDataSource;
    quer_explosionCONS_REFE_INSUMO: TIntegerField;
    quer_explosionCONS_INSU_REFERENCIA: TIntegerField;
    quer_explosionCODI_INSU_REFERENCIA: TStringField;
    quer_explosionNOMB_INSU_REFERENCIA: TStringField;
    quer_explosionCONS_INSU_GRUPO: TIntegerField;
    quer_explosionCODI_INSU_GRUPO: TStringField;
    quer_explosionNOMB_INSU_GRUPO: TStringField;
    quer_explosionCONS_INSU_SUBGRUPO: TIntegerField;
    quer_explosionCODI_INSU_SUBGRUPO: TStringField;
    quer_explosionNOMB_INSU_SUBGRUPO: TStringField;
    quer_explosionES_FABRICACION: TIntegerField;
    quer_explosionCONS_PROVEEDOR: TIntegerField;
    quer_explosionCODI_PROVEEDOR: TIntegerField;
    quer_explosionNOMB_PROVEEDOR: TIntegerField;
    quer_explosionCONS_REFE_COLOR: TIntegerField;
    quer_explosionCONS_COLOR: TIntegerField;
    quer_explosionCODI_COLOR: TStringField;
    quer_explosionNOMB_COLOR: TStringField;
    quer_explosionCONS_UNIDAD: TFloatField;
    quer_explosionREQUERIMIENTO: TFloatField;
    quer_explosionCONS_TOTAL: TFloatField;
    quer_explosionCOST_UNIDAD: TFloatField;
    quer_explosionCOST_TOTAL: TFloatField;
    quer_explosionCONS_UNID_MEDIDA: TIntegerField;
    quer_explosionCODI_UNID_MEDIDA: TStringField;
    quer_explosionNOMB_UNID_MEDIDA: TStringField;
    quer_explosionCOMBINACION: TIntegerField;
    quer_explosionTALLAJE: TIntegerField;
    quer_explosionTIEN_OBSERVACIONES: TIntegerField;
    quer_explosionEXISTENTE: TFloatField;
    quer_explosionDISPONIBLE: TFloatField;
    quer_explosionENTREGADO: TFloatField;
    quer_explosionDIFERENCIA: TFloatField;
    fram_grid: TdxDBGrid;
    dxDBGrid1CONS_REFE_INSUMO: TdxDBGridMaskColumn;
    dxDBGrid1CONS_INSU_REFERENCIA: TdxDBGridMaskColumn;
    dxDBGrid1CODI_INSU_REFERENCIA: TdxDBGridMaskColumn;
    dxDBGrid1NOMB_INSU_REFERENCIA: TdxDBGridMaskColumn;
    dxDBGrid1CONS_INSU_GRUPO: TdxDBGridMaskColumn;
    dxDBGrid1CODI_INSU_GRUPO: TdxDBGridMaskColumn;
    dxDBGrid1NOMB_INSU_GRUPO: TdxDBGridMaskColumn;
    dxDBGrid1CONS_INSU_SUBGRUPO: TdxDBGridMaskColumn;
    dxDBGrid1CODI_INSU_SUBGRUPO: TdxDBGridMaskColumn;
    dxDBGrid1NOMB_INSU_SUBGRUPO: TdxDBGridMaskColumn;
    dxDBGrid1ES_FABRICACION: TdxDBGridMaskColumn;
    dxDBGrid1CONS_PROVEEDOR: TdxDBGridMaskColumn;
    dxDBGrid1CODI_PROVEEDOR: TdxDBGridMaskColumn;
    dxDBGrid1NOMB_PROVEEDOR: TdxDBGridMaskColumn;
    dxDBGrid1CONS_REFE_COLOR: TdxDBGridMaskColumn;
    dxDBGrid1CONS_COLOR: TdxDBGridMaskColumn;
    dxDBGrid1CODI_COLOR: TdxDBGridMaskColumn;
    dxDBGrid1NOMB_COLOR: TdxDBGridMaskColumn;
    dxDBGrid1CONS_UNIDAD: TdxDBGridMaskColumn;
    dxDBGrid1NOMB_UNID_MEDIDA: TdxDBGridMaskColumn;
    dxDBGrid1REQUERIMIENTO: TdxDBGridMaskColumn;
    dxDBGrid1CONS_TOTAL: TdxDBGridMaskColumn;
    dxDBGrid1COST_UNIDAD: TdxDBGridMaskColumn;
    dxDBGrid1COST_TOTAL: TdxDBGridMaskColumn;
    dxDBGrid1CONS_UNID_MEDIDA: TdxDBGridMaskColumn;
    dxDBGrid1CODI_UNID_MEDIDA: TdxDBGridMaskColumn;
    dxDBGrid1COMBINACION: TdxDBGridMaskColumn;
    dxDBGrid1TALLAJE: TdxDBGridMaskColumn;
    dxDBGrid1TIEN_OBSERVACIONES: TdxDBGridMaskColumn;
    dxDBGrid1EXISTENTE: TdxDBGridMaskColumn;
    dxDBGrid1DISPONIBLE: TdxDBGridMaskColumn;
    dxDBGrid1ENTREGADO: TdxDBGridMaskColumn;
    dxDBGrid1DIFERENCIA: TdxDBGridMaskColumn;
    fram_pop: TTBXPopupMenu;
    fram_acciones: TActionList;
    fram_acti_agru_color: TAction;
    fram_acti_expandir: TAction;
    fram_acti_contraer: TAction;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    procedure quer_explosionAfterOpen(DataSet: TDataSet);
    procedure dxDBGrid1DIFERENCIACustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure fram_acti_expandirExecute(Sender: TObject);
    procedure fram_acti_contraerExecute(Sender: TObject);
    procedure fram_acti_agru_colorExecute(Sender: TObject);
    procedure quer_explosionBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    fAgruparColor       : Boolean;
    Constructor Create (Owner : TComponent); Override;
    Destructor Destroy;
    Procedure SetAgruparColor   (Value : Boolean);
  public
    { Public declarations }
  Published
    Property AgruparColor : Boolean Read fAgruparColor Write SetAgruparColor Default False;    
  end;

implementation

uses _func_varias, _MDI;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el Frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junlio 14 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_expl_insumos.Create (Owner : TComponent);
Begin
     //Heredar la creacion
     Inherited Create (Owner);
     //Inicializar
     ColorGrid(fram_Grid);
End;
{****************************************************************
Procedimiento   : Destroy
Objetivo        : Liberar las consultas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 19 de 2004
Versión         : pcp4000
*****************************************************************}
Destructor Tffra_prod_expl_insumos.Destroy;
Begin
        unPrepare(quer_explosion);
        Inherited;
End;
{****************************************************************
Procedimiento   : quer_explosionAfterOpen
Objetivo        : Expandir los nodos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 14 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_expl_insumos.quer_explosionAfterOpen(
  DataSet: TDataSet);
begin
        fram_grid.FullExpand;
end;
{****************************************************************
Procedimiento   : dxDBGrid1DIFERENCIACustomDrawCell
Objetivo        : Dar color al negativo en los requerimientos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 14 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_expl_insumos.dxDBGrid1DIFERENCIACustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
        var_auxiliar    : Real;
begin
        //Si la diferencia es negativa, pintar de rojo
        If (aText <> '') Then
        Try
              //Intentar convertirlo a float  
              var_auxiliar := StrToFloat(aText);
        Except
              var_auxiliar := 0;
        End;
        if var_auxiliar < 0 Then aFont.Color := clRed;
end;
{****************************************************************
Procedimiento   : SetAgruparColor
Objetivo        : Agrupar/Desagrupar la explosión por el color
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 14 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_expl_insumos.SetAgruparColor(Value : Boolean);
Begin
    If (Value <> fAgruparColor) then
    Begin
        //Asignar el valor
        fAgruparColor := Value;
        //Agrupar por el color
        If fAgruparColor then
        Begin
            if dxDBGrid1NOMB_COLOR.GroupIndex = -1 Then
              fram_grid.AddGroupColumn(dxDBGrid1NOMB_COLOR);
        End
        Else
        //Desagrupar el color
        Begin
            if dxDBGrid1NOMB_COLOR.GroupIndex > -1 Then
              fram_grid.DeleteGroupColumn(dxDBGrid1NOMB_COLOR.GroupIndex );
        End;
    End;
    //Cambiar el estado de la accion
    fram_acti_agru_color.Checked := fAgruparColor;
End;
{****************************************************************
Procedimiento   : fram_acti_expandirExecute
Objetivo        : Expandir todos los nodos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 14 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_expl_insumos.fram_acti_expandirExecute(
  Sender: TObject);
begin
        fram_grid.FullExpand;
end;
{****************************************************************
Procedimiento   : fram_acti_contraerExecute
Objetivo        : Contraer todos los nodos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 14 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_expl_insumos.fram_acti_contraerExecute(
  Sender: TObject);
begin
        fram_grid.FullCollapse;
end;
{****************************************************************
Procedimiento   : fram_acti_agru_colorExecute
Objetivo        : Ejecutar la acción de agrupar por el color
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 14 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_expl_insumos.fram_acti_agru_colorExecute(
  Sender: TObject);
begin
        SetAgruparColor(Not fAgruparColor);
end;
{****************************************************************
Procedimiento   : quer_explosionBeforeOpen
Objetivo        : Preparar la consulta antes de abrirla
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 19 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_expl_insumos.quer_explosionBeforeOpen(
  DataSet: TDataSet);
begin
        If Not quer_explosion.Prepared then quer_explosion.Prepare;
end;


end.
