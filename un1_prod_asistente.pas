unit un1_prod_asistente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SoExpertTree, Db, PictureContainer, DBTables, 
  AdvPanel, dxExEdtr, dxCntner, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, Boxes, PCPFrame, RxLookup,
  PCPLookUpComboEdit, JvExControls, JvComponent, JvgWizardHeader,
  dfsSplitter, PCPProceso;
type
  Tfn1_prod_asistente = class(T_fvent_modal)
    padr_quer_prod_referencias: TQuery;
    padr_data_prod_referencias: TDataSource;
    Tabla_VentanaCONS_PROD_ORDEN: TIntegerField;
    Tabla_VentanaNUME_PROD_ORDEN: TStringField;
    Tabla_VentanaANULADA: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    acti_anterior: TAction;
    acti_siguiente: TAction;
    quer_avance: TQuery;
    panel1: TPanel;
    PCPFrame1: TPCPFrame;
    pane_contenedor: TPanel;
    padr_SCLDBLabel1: TSCLDBLabel;
    padr_SCLDBLabel2: TSCLDBLabel;
    padr_SCLDBLabel3: TSCLDBLabel;
    padr_scllabel4: TSCLDBLabel;
    padr_scllabel5: TSCLDBLabel;
    padr_scllabel6: TSCLDBLabel;
    padr_scllabel7: TSCLDBLabel;
    padr_dxDBEdit1: TdxDBEdit;
    padr_dxDBEdit2: TdxDBEdit;
    padr_dxDBEdit3: TdxDBEdit;
    padr_dxDBEdit4: TdxDBEdit;
    padr_dxDBEdit5: TdxDBEdit;
    padr_dxDBEdit6: TdxDBEdit;
    padr_dxDBEdit7: TdxDBEdit;
    comb_nume_orden: TPCPLookUpComboEdit;
    list_consecutivos: TListBox;
    Titulos: TJvgWizardHeader;
    Shape1: TShape;
    dfsSplitter1: TdfsSplitter;
    arbol: TsohoExpertTree;
    procedure FormCreate(Sender: TObject);
    procedure comb_nume_ordenChange(Sender: TObject);
    procedure doCargarArbol(Sender: TObject);
    procedure quer_avanceAfterOpen(DataSet: TDataSet);
    procedure arbolChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_asistente: Tfn1_prod_asistente;

ResourceString
        cosLotesDeProduccion = 'Lotes de producción';

implementation

uses _MDI, _cons_pcp, ufra_prod_lotes, _func_varias, ufra_prod_orde_trazo,
  ufra_prod_orde_avance, ufra_prod_tiqu_corte, ufra_prod_liqu_corte,
  ufra_prod_lanz_of, 
  ufra_prod_orde_balanceo, ufra_prod_orde_tiqu_fabricacion;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_prod_asistente.FormCreate(Sender: TObject);
begin
  inherited;
  //Cargar el arbol
  Titulos.Visible := False;
  DoCargarArbol(Sender);
  //Ubicar el registro
  with tabla_ventana do
      if (active) and (recordCount>0) Then
          comb_nume_orden.keyValue := FieldByName('cons_prod_orden').asInteger;
  //Abrir las consultas
  AbrirDataSet(padr_quer_prod_referencias);
end;
{****************************************************************
Procedimiento   : comb_nume_ordenChange
Objetivo        : Actualizar los controles de la ventana
                  al cambiar la orden activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 21 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_prod_asistente.comb_nume_ordenChange(Sender: TObject);
begin
  inherited;
  caption := cosOrdenDeProduccion+' : '+comb_nume_orden.Text;
end;
{****************************************************************
Procedimiento   : doCargarArbol
Objetivo        : Carga el arbol de procesos de PCP
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_prod_asistente.doCargarArbol(Sender: TObject);
begin
  inherited;
  //Borrar los existentes
  list_consecutivos.items.Clear; 
  Titulos.Captions.Clear;
  With arbol.items, quer_avance do
  Begin
      if not active then open;
      First;
      Clear;
      //Ingresar un nodo de inicio
      add(cosInicio);
      list_consecutivos.items.add('-1');
      //Ingresar un nodo de lotes
      add(cosLotesDeProduccion);
      list_consecutivos.items.add('0');
      While not eof do
      Begin
          add(FieldByName('nomb_proceso').asString);
          list_consecutivos.items.add(FieldByName('cons_proceso').asString);
          Next;
      End;
      Titulos.captions.Assign(arbol.Items);
  End;
end;

procedure Tfn1_prod_asistente.quer_avanceAfterOpen(DataSet: TDataSet);
begin
  inherited;
  doCargarArbol(Self);
end;

procedure Tfn1_prod_asistente.arbolChange(Sender: TObject);
Var
        i : Integer;
        fram_prod_lotes : tffra_prod_lotes;
        fram_prod_orde_trazo : tffra_prod_orde_trazo;
        fram_prod_orde_avance : tffra_prod_orde_avance;
        fram_prod_tiqu_corte    : tffra_prod_tiqu_corte;
        fram_prod_liqu_corte    : Tffra_prod_liqu_corte;
        fram_prod_lanz_of       : Tffra_prod_lanz_of;
        fram_prod_orde_tiqu_fabricacion : Tffra_prod_orde_tiqu_fabricacion;
        fram_prod_orde_balanceo        : Tffra_prod_orde_balanceo;
begin
  inherited;
  //Eliminar el contenido
  for i:=1 to pane_contenedor.ControlCount do
      pane_contenedor.controls[0].Free;
  //Titulos
  Try
     Titulos.PageNo := StrToInt(list_consecutivos.items[arbol.ItemIndex + 1]);
     Titulos.Visible := (Titulos.PageNo > 0);
  Except
     Titulos.Visible := False;
  End;
  //Ubicar el proceso
  if quer_avance.Locate('cons_proceso', list_consecutivos.items[arbol.ItemIndex], []) Then
  Begin
       case quer_avance.FieldByName('cons_proceso').AsInteger of
             //Programación de la orden de trazo
             1 : Begin
                  fram_prod_orde_trazo := tffra_prod_orde_trazo.Create(Self);
                  fram_prod_orde_trazo.Align := alClient;
                  fram_prod_orde_trazo.Parent := pane_contenedor;
                  fram_prod_orde_trazo.fram_refe_material.quer_refe_materiales.DataSource := padr_data_prod_referencias;
                  fram_prod_orde_trazo.SetDataSet(tabla_ventana);
             End;
             //Tiquetes de corte
             3: Begin
                  fram_prod_tiqu_corte := tffra_prod_tiqu_corte.Create(Self);
                  fram_prod_tiqu_corte.Align := alClient;
                  fram_prod_tiqu_corte.Parent := pane_contenedor;
                  fram_prod_tiqu_corte.fram_refe_material.quer_refe_materiales.DataSource := padr_data_prod_referencias;
                  fram_prod_tiqu_corte.SetDataSet(tabla_ventana);
             End;
             //Liquidación de corte
             7: Begin
                  fram_prod_liqu_corte := tffra_prod_liqu_corte.Create(Self);
                  fram_prod_liqu_corte.Align := alClient;
                  fram_prod_liqu_corte.Parent := pane_contenedor;
                  fram_prod_liqu_corte.fram_produccion.fram_refe_material.quer_refe_materiales.DataSource := padr_data_prod_referencias;
                  fram_prod_liqu_corte.fram_produccion.SetDataSet(tabla_ventana);
             End;
             //Lanzamiento OF
             9: Begin
                  fram_prod_lanz_of := tffra_prod_lanz_of.Create(Self);
                  fram_prod_lanz_of.Align := alClient;
                  fram_prod_lanz_of.Parent := pane_contenedor;
                  fram_prod_lanz_of.fram_produccion.fram_refe_material.quer_refe_materiales.DataSource := padr_data_prod_referencias;
                  fram_prod_lanz_of.fram_produccion.SetDataSet(tabla_ventana);
             End;
             //Tiquetes OF
             10: Begin
                  fram_prod_orde_tiqu_fabricacion := tffra_prod_orde_tiqu_fabricacion.Create(Self);
                  fram_prod_orde_tiqu_fabricacion.Align := alClient;
                  fram_prod_orde_tiqu_fabricacion.Parent := pane_contenedor;
                  fram_prod_orde_tiqu_fabricacion.fram_produccion.fram_refe_material.quer_refe_materiales.DataSource := padr_data_prod_referencias;
                  fram_prod_orde_tiqu_fabricacion.fram_produccion.SetDataSet(tabla_ventana);
             End;
             //Programación de producción
             11: Begin
                  fram_prod_orde_balanceo := tffra_prod_orde_balanceo.Create(Self);
                  fram_prod_orde_balanceo.Align := alClient;
                  fram_prod_orde_balanceo.Parent := pane_contenedor;
                  fram_prod_orde_balanceo.fram_produccion.fram_refe_material.quer_refe_materiales.DataSource := padr_data_prod_referencias;
                  fram_prod_orde_balanceo.fram_produccion.SetDataSet(tabla_ventana);
             End;

             
                      
             Else  Begin
                  fram_prod_orde_avance := Tffra_prod_orde_avance.Create(Self);
                  fram_prod_orde_avance.ProcesoActual := quer_avance.FieldByName('cons_proceso').AsInteger;
                  fram_prod_orde_avance.Align := alClient;
                  fram_prod_orde_avance.Parent := pane_contenedor;
                  fram_prod_orde_Avance.SetDataSet(tabla_ventana);
             End;             
       

       End;
  End
  Else
  //Es el nodo de inicio o el de lotes
        if list_consecutivos.items[arbol.ItemIndex] = '0' Then
        //Nodo de lotes
        Begin
            fram_prod_lotes := tffra_prod_lotes.Create(Self);
            fram_prod_lotes.Align := alClient;
            fram_prod_lotes.parent := pane_contenedor;
            fram_prod_lotes.SetDataSet(tabla_ventana);
        End;
end;
end.
