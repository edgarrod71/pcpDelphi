unit UN1_Acce_Tipos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit,
  Menus, dxTL, dxDBCtrl, dxDBGrid, TBXDkPanels, TBXButtonSCL, Boxes,
  PCPProceso;

type
  TFN1_Acce_Tipos1 = class(T_fvent_modal)
    Tabla_VentanaCONS_ACCE_TIPO: TIntegerField;
    Tabla_VentanaCONS_ACCE_GRUPO: TIntegerField;
    Tabla_VentanaCODI_ACCE_TIPO: TStringField;
    Tabla_VentanaNOMB_ACCE_TIPO: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLDBLabel1: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    SCLDBLabel2: TSCLDBLabel;
    DBNombre: TdxDBEdit;
    SCLDBLabel3: TSCLDBLabel;
    DBObservaciones: TdxDBEdit;
    SCLDBLabel4: TSCLDBLabel;
    CBGrupos: TPCPLookUpComboEdit;
    SCLButton27: TTBXButtonSCL;
    TGrupos: TTable;
    DSGrupos: TDataSource;
    Bevel1: TBevel;
    PCaracteristicas: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
    DBAsignados: TdxDBGrid;
    QCaracteristicas_Asignadas: TQuery;
    DSQCaracteristicas_Asignadas: TDataSource;
    QEliminar_Caracteristica: TQuery;
    PMCaracteristicas: TTBXPopupMenu;
    TBXItem4: TTBXItem;
    TBXItem3: TTBXItem;
    Acti_Nuev_Tipo_Caracteristica: TAction;
    Acti_Elim_Tipo_Caracteristica: TAction;
    QCaracteristicas_AsignadasCONS_ACCE_TIPO_CARACTERISTICA: TIntegerField;
    QCaracteristicas_AsignadasCONS_ACCE_CARA_TIPO: TIntegerField;
    QCaracteristicas_AsignadasCODI_ACCE_TIPO_CARACTERISTICA: TStringField;
    QCaracteristicas_AsignadasNOMB_ACCE_TIPO_CARACTERISTICA: TStringField;
    DBAsignadosCONS_ACCE_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    DBAsignadosCODI_ACCE_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    DBAsignadosNOMB_ACCE_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    DBAsignadosCONS_ACCE_CARA_TIPO: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure Acti_Nuev_Tipo_CaracteristicaExecute(Sender: TObject);
    procedure Acti_Elim_Tipo_CaracteristicaExecute(Sender: TObject);
    procedure data_ventanaStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Acce_Tipos1: TFN1_Acce_Tipos1;

implementation

uses _func_varias, _MDI, UN1_Acce_Tipo_Tipo_Caracteristica1, _cons_pcp,
  _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir Tablas Auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Jueves 24 de junio de 2003
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Tipos1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir Tablas Auxiliares
  AbrirDataSet(TGrupos);
  AbrirDataSet(QCaracteristicas_Asignadas);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Acti_Nuev_Tipo_CaracteristicaExecute
Objetivo        : Crear el módulo de características
Realizado por   : Gustavo Muñoz (TECNOLOGIA)
Fecha           : Miercoles 23 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Tipos1.Acti_Nuev_Tipo_CaracteristicaExecute(
  Sender: TObject);
begin
  inherited;
	FN1_Acce_Tipo_Tipo_Caracteristica1 := TFN1_Acce_Tipo_Tipo_Caracteristica1.Create(Self);
  FN1_Acce_Tipo_Tipo_Caracteristica1.Cons_Acce_Tipo :=
    Tabla_Ventana.FieldByName('CONS_ACCE_TIPO').AsInteger;
  FN1_Acce_Tipo_Tipo_Caracteristica1.Tabla_Ventana.Insert;
  FN1_Acce_Tipo_Tipo_Caracteristica1.ShowModal;
  QCaracteristicas_Asignadas.Close;
  QCaracteristicas_Asignadas.Open;
end;

{****************************************************************
Procedimiento   : Acti_Elim_Tipo_CaracterisiticaExecute
Objetivo        : Eliminar características
Realizado por   : Gustavo Muñoz (TECNOLOGIA)
Fecha           : Miercoles 23 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Tipos1.Acti_Elim_Tipo_CaracteristicaExecute(
  Sender: TObject);
begin
  inherited;
	If QCaracteristicas_Asignadas.RecordCount = 0 Then
  	Exit;
	If EjecutarMensaje(cosDeseaEliminar, mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
  Begin
	  QEliminar_Caracteristica.Close;
    try
      QEliminar_Caracteristica.ExecSQL;
    except
			QEliminar_Caracteristica.Close;
      Exit;
    end;
		QEliminar_Caracteristica.Close;
    QCaracteristicas_Asignadas.Close;
    QCaracteristicas_Asignadas.Open;
  End;
end;

{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Habilitar / deshabilitar las características
Realizado por   : Gustavo Muñoz (TECNOLOGIA)
Fecha           : Miercoles 23 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Tipos1.data_ventanaStateChange(Sender: TObject);
begin
  inherited;
 	PCaracteristicas.Enabled := Not (Tabla_Ventana.State In [dsEdit, dsInsert]);
end;

end.
