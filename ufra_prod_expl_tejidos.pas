unit ufra_prod_expl_tejidos;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, Db, DBTables, TB2Item, TBX, Menus,
  ActnList;
type
  Tffra_prod_expl_tejidos = class(TFrame)
    quer_explosion: TQuery;
    data_explosion: TDataSource;
    quer_explosionCONS_REFE_MATERIAL: TIntegerField;
    quer_explosionCONS_MATE_REFERENCIA: TIntegerField;
    quer_explosionCODI_MATE_REFERENCIA: TStringField;
    quer_explosionNOMB_MATE_REFERENCIA: TStringField;
    quer_explosionCONS_MATE_GRUPO: TIntegerField;
    quer_explosionCODI_MATE_GRUPO: TStringField;
    quer_explosionNOMB_MATE_GRUPO: TStringField;
    quer_explosionCONS_MATE_SUBGRUPO: TIntegerField;
    quer_explosionCODI_MATE_SUBGRUPO: TStringField;
    quer_explosionNOMB_MATE_SUBGRUPO: TStringField;
    quer_explosionES_PRINCIPAL: TIntegerField;
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
    dxDBGrid1CONS_REFE_MATERIAL: TdxDBGridMaskColumn;
    dxDBGrid1CONS_MATE_REFERENCIA: TdxDBGridMaskColumn;
    dxDBGrid1CODI_MATE_REFERENCIA: TdxDBGridMaskColumn;
    dxDBGrid1NOMB_MATE_REFERENCIA: TdxDBGridMaskColumn;
    dxDBGrid1CONS_MATE_GRUPO: TdxDBGridMaskColumn;
    dxDBGrid1CODI_MATE_GRUPO: TdxDBGridMaskColumn;
    dxDBGrid1NOMB_MATE_GRUPO: TdxDBGridMaskColumn;
    dxDBGrid1CONS_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    dxDBGrid1CODI_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    dxDBGrid1NOMB_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    dxDBGrid1ES_PRINCIPAL: TdxDBGridMaskColumn;
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
    fram_acciones: TActionList;
    fram_acti_agru_color: TAction;
    fram_acti_expandir: TAction;
    fram_acti_contraer: TAction;
    fram_pop: TTBXPopupMenu;
    TBXItem3: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
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

uses _func_varias;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el Frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junlio 13 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_expl_tejidos.Create (Owner : TComponent);
Begin
     //Heredar la creacion
     Inherited Create (Owner);
     //Inicializar
     fram_grid.LookAndFeel := lfFlat;
     SetAgruparColor(False);
End;
{****************************************************************
Procedimiento   : Destroy
Objetivo        : Liberar las consultas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 19 de 2004
Versión         : pcp4000
*****************************************************************}
Destructor Tffra_prod_expl_tejidos.Destroy;
Begin
        unPrepare(quer_explosion);
        Inherited;
End;
procedure Tffra_prod_expl_tejidos.quer_explosionAfterOpen(
  DataSet: TDataSet);
begin
        fram_grid.FullExpand;
end;

procedure Tffra_prod_expl_tejidos.dxDBGrid1DIFERENCIACustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
        var_auxiliar    : Real;
begin
        //Si la diferencia es negativa, pintar de rojo
  var_auxiliar := 0;
  If (aText <> '') Then
  Try
    var_auxiliar := StrToFloat(aText);        //Intentar convertirlo a float
  Except
  End;
  if (var_auxiliar < 0) Then
    aFont.Color := clRed;
end;
{****************************************************************
Procedimiento   : SetAgruparColor
Objetivo        : Agrupar/Desagrupar la explosión por el color
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 14 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_expl_tejidos.SetAgruparColor(Value : Boolean);
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
procedure Tffra_prod_expl_tejidos.fram_acti_expandirExecute(
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
procedure Tffra_prod_expl_tejidos.fram_acti_contraerExecute(
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
procedure Tffra_prod_expl_tejidos.fram_acti_agru_colorExecute(
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
procedure Tffra_prod_expl_tejidos.quer_explosionBeforeOpen(
  DataSet: TDataSet);
begin
        If Not quer_explosion.Prepared then quer_explosion.Prepare;
end;

end.
