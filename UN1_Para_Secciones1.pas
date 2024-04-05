{ 17/03/2004 02:38:46 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:33 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:41:00 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:07 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Secciones1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, DBTables, SCLDBLabel, dxExEdtr, dxDBEdtr, DBCtrls,
  RxLookup, PCPLookUpComboEdit, SoCtrls, SohoBtns, SCLButton, AdvPanel,
  PictureContainer, dxTL, dxDBCtrl, dxDBGrid, Menus, Boxes,
  PCPProceso;

type
  TFN1_Para_Secciones1 = class(T_fvent_modal)
    Tabla_VentanaCODI_SECCION: TStringField;
    Tabla_VentanaNOMB_SECCION: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaDESCRIPCION: TStringField;
    Tabla_VentanaCONS_SECCION: TIntegerField;
    PLineas: TPanel;
    padr_grid: TdxDBGrid;
    QLineas: TQuery;
    DSQLineas: TDataSource;
    QLineasCONS_SECCION: TIntegerField;
    QLineasNOMB_LINEA: TStringField;
    QLineasNOMB_PLANTA: TStringField;
    QLineasNOMB_EMPRESA: TStringField;
    QLineasCONS_LINE_SECCION: TIntegerField;
    QLineasSUPERVISOR: TStringField;
    QLineasRESPONSABLE: TStringField;
    QLineasTIPO_SECCION: TStringField;
    padr_gridCONS_SECCION: TdxDBGridMaskColumn;
    padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn;
    padr_gridNOMB_PLANTA: TdxDBGridMaskColumn;
    padr_gridNOMB_LINEA: TdxDBGridMaskColumn;
    padr_gridTIPO_SECCION: TdxDBGridMaskColumn;
    padr_gridSUPERVISOR: TdxDBGridMaskColumn;
    padr_gridRESPONSABLE: TdxDBGridMaskColumn;
    padr_gridCONS_LINE_SECCION: TdxDBGridMaskColumn;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    Acti_Nuev_Linea: TAction;
    Acti_Elim_Linea: TAction;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    PMLineas: TTBXPopupMenu;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    QEliminar: TQuery;
    Acti_modi_linea: TAction;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel15: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    DBDescripcion: TdxDBEdit;
    DBObservaciones: TdxDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure Acti_Nuev_LineaExecute(Sender: TObject);
    procedure Acti_Elim_LineaExecute(Sender: TObject);
    procedure Acti_modi_lineaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Secciones1: TFN1_Para_Secciones1;

implementation

uses _func_varias, _MDI, UN1_Para_Line_Secciones1, _cons_pcp, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 23 de febrero de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Secciones1.FormCreate(Sender: TObject);
begin
  inherited;
	//Verifica que si se pueda abrir el DataSet
  AbrirDataSet(QLineas);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Cuando en modo de inserción o edición no deja
									adicionar líneas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 4 de Abril de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Secciones1.data_ventanaStateChange(Sender: TObject);
begin
  inherited;
  //Si esta en modo de edición o Inserción oculto el panel de las líneas
	If (data_ventana.DataSet.State In [dsInsert, dsEdit]) Then
	Begin
  	PLineas.Enabled := False;
    QLineas.Close;
  End
  Else
  Begin
  	PLineas.Enabled := True;
    QLineas.Close;
    QLineas.Open;
  End;
end;

{****************************************************************
Procedimiento   : Acti_Nuev_LineaExecute
Objetivo        : Adicionar Línea
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 14 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Secciones1.Acti_Nuev_LineaExecute(Sender: TObject);
begin
  inherited;
	FN1_Para_Line_Secciones1 := TFN1_Para_Line_Secciones1.Create(Self);
  FN1_Para_Line_Secciones1.Tabla_Ventana.Insert;
  FN1_Para_Line_Secciones1.Cons_Seccion :=
    Tabla_Ventana.FieldByName('CONS_SECCION').AsInteger;
	FN1_Para_Line_Secciones1.ShowModal;
  QLineas.Close;
  QLineas.Open;
end;

{****************************************************************
Procedimiento   : Acti_Elim_LineaExecute
Objetivo        : Eliminar Línea
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 14 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Secciones1.Acti_Elim_LineaExecute(Sender: TObject);
begin
  inherited;
	If QLineas.RecordCount = 0 Then
  	Exit;
  If EjecutarMensaje(cosDeseaEliminar, mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
  Begin
	  QEliminar.Close;
    try
      QEliminar.ExecSQL;
    except
			QEliminar.Close;
      Exit;
    end;
		QEliminar.Close;
    QLineas.Close;
    QLineas.Open;
  End;    
end;

procedure TFN1_Para_Secciones1.Acti_modi_lineaExecute(Sender: TObject);
begin
  inherited;
	FN1_Para_Line_Secciones1 := TFN1_Para_Line_Secciones1.Create(Self);
  FN1_Para_Line_Secciones1.Tabla_Ventana.Locate('CONS_LINE_SECCION',
  	QLineas.FieldByName('CONS_LINE_SECCION').AsInteger, []);
  FN1_Para_Line_Secciones1.Tabla_Ventana.Edit;
  FN1_Para_Line_Secciones1.Cons_Seccion :=
    Tabla_Ventana.FieldByName('CONS_SECCION').AsInteger;
	FN1_Para_Line_Secciones1.ShowModal;
  QLineas.Close;
  QLineas.Open;
end;

end.
