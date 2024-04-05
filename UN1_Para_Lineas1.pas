unit UN1_Para_Lineas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, dxTL, dxDBCtrl, dxDBGrid,
  RxLookup, PCPLookUpComboEdit, StdCtrls, ActnList, ImgList, ExtCtrls,
  dxEditor, dxEdLib, dxDBELib, TB2Item, TBX, TB2Dock, TB2Toolbar, SoCtrls,
  SCLDBLabel, Menus, Boxes, PCPProceso;

type
  TFN1_Para_Lineas1 = class(T_fvent_modal)
    Tabla_VentanaCONS_LINEA: TIntegerField;
    Tabla_VentanaCODI_LINEA: TStringField;
    Tabla_VentanaNOMB_LINEA: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    PPlantas: TPanel;
    DBPlantas: TdxDBGrid;
    DSQPlantas: TDataSource;
    QPlantas: TQuery;
    QPlantasCONS_PLANTA: TIntegerField;
    QPlantasNOMB_PLANTA: TStringField;
    QPlantasNOMB_EMPRESA: TStringField;
    DBPlantasNOMB_PLANTA: TdxDBGridMaskColumn;
    DBPlantasNOMB_EMPRESA: TdxDBGridMaskColumn;
    QPlantasCONS_PLAN_LINEA: TIntegerField;
    PMPlantas: TTBXPopupMenu;
    Acti_Nuev_Planta: TAction;
    Acti_Elim_Planta: TAction;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
    QEliminar_Planta: TQuery;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    DBDescripcion: TdxDBEdit;
    Bevel3: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure Acti_Nuev_PlantaExecute(Sender: TObject);
    procedure Acti_Elim_PlantaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Lineas1: TFN1_Para_Lineas1;

implementation

uses _func_varias, _MDI, UN1_Para_Plan_Lineas1, _cons_pcp, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar Variables
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Abril 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Lineas1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas auxiliares
  AbrirDataSet(QPlantas);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Habilitar / deshabilitar panel de plantas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Abril 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Lineas1.data_ventanaStateChange(Sender: TObject);
begin
  inherited;
	If data_ventana.DataSet.State = dsInsert Then
  	PPlantas.Enabled := False
  Else
  	PPlantas.Enabled := True;
end;

{****************************************************************
Procedimiento   : Acti_Nuev_PlantaExecute
Objetivo        : Adicionar Planta
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 14 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Lineas1.Acti_Nuev_PlantaExecute(Sender: TObject);
begin
  inherited;
	//Crea la forma para adicionar la nueva planta
	FN1_Para_Plan_Lineas1 := TFN1_Para_Plan_Lineas1.Create(Self);
  FN1_Para_Plan_Lineas1.Tabla_Ventana.Insert;
  FN1_Para_Plan_Lineas1.Cons_Linea :=
  	Tabla_Ventana.FieldByName('CONS_LINEA').AsInteger;
  FN1_Para_Plan_Lineas1.ShowModal;
  QPlantas.Close;
  QPlantas.Open;
end;

{****************************************************************
Procedimiento   : Acti_Elim_PlantaExecute
Objetivo        : Eliminar Planta
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 14 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Lineas1.Acti_Elim_PlantaExecute(Sender: TObject);
begin
  inherited;
  //Verifica que existan registros
	If QPlantas.RecordCount = 0 Then
  	Exit;
  //Se pregunta si desea eliminar el registro
  If EjecutarMensaje(cosDeseaEliminar, mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
  Begin
		QEliminar_Planta.Close;
    try
	    QEliminar_Planta.ExecSQL;
    except
	    QEliminar_Planta.Close;
      Exit;
    end;
    QEliminar_Planta.Close;
    QPlantas.Close;
    QPlantas.Open;
  End;
end;

end.
