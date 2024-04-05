{ 18/03/2004 11:46:48 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 18/03/2004 11:35:42 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 17/03/2004 04:22:33 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:43:53 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 04:46:18 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 04:45:30 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 04:43:37 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 04:40:46 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 08/03/2004 04:52:08 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Familias de maquinaria (Modal)  }
unit un1_maqu_familias1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, dxExEdtr, dxCntner, Db, DBTables, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, ExtCtrls, dxEditor, dxEdLib, dxDBELib,
  TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls, SCLDBLabel, RxLookup,
  PCPLookUpComboEdit, SoCtrls, SohoBtns, SCLButton, 
  PictureContainer, AdvPanel, dxTL, dxDBCtrl, dxDBGrid, Menus, TBXDkPanels,
  TBXButtonSCL, Boxes, PCPProceso;

type
  Tfn1_maqu_familias1 = class(T_fvent_modal)
    Tabla_VentanaCONS_RECU_FAMILIA: TIntegerField;
    Tabla_VentanaCONS_RECU_TIPO: TIntegerField;
    Tabla_VentanaCONS_RECU_GRUPO: TIntegerField;
    Tabla_VentanaCODI_RECU_FAMILIA: TStringField;
    Tabla_VentanaNOMB_RECU_FAMILIA: TStringField;
    Tabla_VentanaCARACTERISTICAS: TStringField;
    Tabla_VentanaPORC_SUPLEMENTO: TSmallintField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    DSQTipos: TDataSource;
    DSQGrupos: TDataSource;
    QTipos: TQuery;
    QGrupos: TQuery;
    QCaracteristicas_Asignadas: TQuery;
    QCaracteristicas_AsignadasCONS_TIPO_CARACTERISTICA: TIntegerField;
    QCaracteristicas_AsignadasCODI_TIPO_CARACTERISTICA: TStringField;
    QCaracteristicas_AsignadasNOMB_TIPO_CARACTERISTICA: TStringField;
    DSQCaracteristicas_Asignadas: TDataSource;
    QEliminar_Caracteristica: TQuery;
    PCaracteristicas: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    DBAsignados: TdxDBGrid;
    DBAsignadosCONS_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    DBAsignadosCODI_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    DBAsignadosNOMB_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    PMCaracteristicas: TTBXPopupMenu;
    Acti_Nuev_Tipo_Caracteristica: TAction;
    Acti_Elim_Tipo_Caracterisitica: TAction;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    QCaracteristicas_AsignadasCONS_RECU_TIPO_CARACTERISTICA: TIntegerField;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    CBTipo: TPCPLookUpComboEdit;
    DBFamilia: TdxDBEdit;
    SESuplemento: TdxDBSpinEdit;
    DBCaracteristicas: TdxDBMemo;
    SCLButton1: TTBXButtonSCL;
    CBGrupo: TPCPLookUpComboEdit;
    SCLButton2: TTBXButtonSCL;
    procedure FormCreate(Sender: TObject);
    procedure Acti_Nuev_Tipo_CaracteristicaExecute(Sender: TObject);
    procedure Acti_Elim_Tipo_CaracterisiticaExecute(Sender: TObject);
    procedure data_ventanaStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_familias1: Tfn1_maqu_familias1;

implementation

uses _func_varias, UN1_Maqu_Fami_tipo_caracteristica1, _MDI, _cons_pcp,
  _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_familias1.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas adicionales
  AbrirDataSet(QGrupos);
  AbrirDataSet(QTipos);
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
procedure Tfn1_maqu_familias1.Acti_Nuev_Tipo_CaracteristicaExecute(
  Sender: TObject);
begin
  inherited;
	FN1_Maqu_Fami_tipo_caracteristica1 := TFN1_Maqu_Fami_tipo_caracteristica1.Create(Self);
  FN1_Maqu_Fami_tipo_caracteristica1.Cons_Recu_Familia :=
    Tabla_Ventana.FieldByName('CONS_RECU_FAMILIA').AsInteger;
  FN1_Maqu_Fami_tipo_caracteristica1.Tabla_Ventana.Insert;
  FN1_Maqu_Fami_tipo_caracteristica1.ShowModal;
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
procedure Tfn1_maqu_familias1.Acti_Elim_Tipo_CaracterisiticaExecute(
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
procedure Tfn1_maqu_familias1.data_ventanaStateChange(Sender: TObject);
begin
  inherited;
 	PCaracteristicas.Enabled := Not (Tabla_Ventana.State In [dsEdit, dsInsert]);
end;

end.
