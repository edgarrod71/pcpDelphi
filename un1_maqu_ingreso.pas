{ 10/03/2004 04:40:17 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Ingreso de recursos  }
unit un1_maqu_ingreso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  Tfn1_maqu_ingreso = class(T_fvent_child)
    consultaCONS_RECU_MOVIMIENTO: TIntegerField;
    consultaCODI_TIPO_DOCUMENTO: TStringField;
    consultaNOMB_TIPO_DOCUMENTO: TStringField;
    consultaNUME_DOCUMENTO: TStringField;
    consultaCODI_SOLICITA: TStringField;
    consultaNOMB_SOLICITA: TStringField;
    consultaCODI_ENTREGA: TStringField;
    consultaNOMB_ENTREGA: TStringField;
    consultaCODI_RECIBE: TStringField;
    consultaNOMB_RECIBE: TStringField;
    consultaFECH_INICIAL: TDateTimeField;
    consultaFECH_FINAL: TDateTimeField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCODI_RECURSO: TStringField;
    consultaCODI_INTE_RECURSO: TStringField;
    consultaCODI_RECU_GRUPO: TStringField;
    consultaNOMB_RECU_GRUPO: TStringField;
    consultaCODI_RECU_TIPO: TStringField;
    consultaNOMB_RECU_TIPO: TStringField;
    consultaCODI_RECU_FAMILIA: TStringField;
    consultaNOMB_RECU_FAMILIA: TStringField;
    consultaCODI_RECU_MARCA: TStringField;
    consultaNOMB_RECU_MARCA: TStringField;
    consultaNUME_SERIE: TStringField;
    TBXSeparatorItem8: TTBXSeparatorItem;
    TBXItem21: TTBXItem;
    Acti_Movi_Traslados: TAction;
    consultaCONS_RECURSO: TIntegerField;
    QUbicacion: TQuery;
    QUbicacionCONS_RECU_MOVIMIENTO: TIntegerField;
    QUbicacionCONS_RECURSO: TIntegerField;
    QUbicacionCONS_EMPRESA: TIntegerField;
    QUbicacionCODI_EMPRESA: TStringField;
    QUbicacionNOMB_EMPRESA: TStringField;
    QUbicacionCONS_AREA: TIntegerField;
    QUbicacionCODI_AREA: TStringField;
    QUbicacionNOMB_AREA: TStringField;
    QUbicacionCONS_PLANTA: TIntegerField;
    QUbicacionCODI_PLANTA: TStringField;
    QUbicacionNOMB_PLANTA: TStringField;
    QUbicacionCONS_LINEA: TIntegerField;
    QUbicacionCODI_LINEA: TStringField;
    QUbicacionNOMB_LINEA: TStringField;
    QUbicacionCONS_SECCION: TIntegerField;
    QUbicacionCODI_SECCION: TStringField;
    QUbicacionNOMB_SECCION: TStringField;
    QUbicacionCONS_BODEGA: TIntegerField;
    QUbicacionCODI_BODEGA: TStringField;
    QUbicacionNOMB_BODEGA: TStringField;
    QUbicacionOTRA_UBICACION: TStringField;
    Acti_Movi_Bajas: TAction;
    TBXItem22: TTBXItem;
    Acti_Datos_Generales: TAction;
    Acti_Reingresos: TAction;
    TBXItem23: TTBXItem;
    TBXItem24: TTBXItem;
    consultaCONS_TIPO_DOCUMENTO: TIntegerField;
    consultaCONS_SOLICITA: TIntegerField;
    consultaCONS_ENTREGA: TIntegerField;
    consultaCONS_RECIBE: TIntegerField;
    consultaCONS_RECU_GRUPO: TIntegerField;
    consultaCONS_RECU_TIPO: TIntegerField;
    consultaCONS_RECU_FAMILIA: TIntegerField;
    consultaCONS_RECU_MARCA: TIntegerField;
    padr_gridCONS_RECU_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridCONS_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridCODI_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridNUME_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridCONS_RECURSO: TdxDBGridMaskColumn;
    padr_gridCODI_RECURSO: TdxDBGridMaskColumn;
    padr_gridCODI_INTE_RECURSO: TdxDBGridMaskColumn;
    padr_gridCONS_RECU_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_RECU_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_RECU_GRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_RECU_TIPO: TdxDBGridMaskColumn;
    padr_gridCODI_RECU_TIPO: TdxDBGridMaskColumn;
    padr_gridNOMB_RECU_TIPO: TdxDBGridMaskColumn;
    padr_gridCONS_RECU_FAMILIA: TdxDBGridMaskColumn;
    padr_gridCODI_RECU_FAMILIA: TdxDBGridMaskColumn;
    padr_gridNOMB_RECU_FAMILIA: TdxDBGridMaskColumn;
    padr_gridCONS_RECU_MARCA: TdxDBGridMaskColumn;
    padr_gridCODI_RECU_MARCA: TdxDBGridMaskColumn;
    padr_gridNOMB_RECU_MARCA: TdxDBGridMaskColumn;
    padr_gridNUME_SERIE: TdxDBGridMaskColumn;
    padr_gridCONS_SOLICITA: TdxDBGridMaskColumn;
    padr_gridCODI_SOLICITA: TdxDBGridMaskColumn;
    padr_gridNOMB_SOLICITA: TdxDBGridMaskColumn;
    padr_gridCONS_ENTREGA: TdxDBGridMaskColumn;
    padr_gridCODI_ENTREGA: TdxDBGridMaskColumn;
    padr_gridNOMB_ENTREGA: TdxDBGridMaskColumn;
    padr_gridCONS_RECIBE: TdxDBGridMaskColumn;
    padr_gridCODI_RECIBE: TdxDBGridMaskColumn;
    padr_gridNOMB_RECIBE: TdxDBGridMaskColumn;
    padr_gridFECH_INICIAL: TdxDBGridDateColumn;
    padr_gridFECH_FINAL: TdxDBGridDateColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    TBXSubmenuItem3: TTBXSubmenuItem;
    Acti_anul_traslados: TAction;
    Acti_anul_bajas: TAction;
    Acti_anul_reingresos: TAction;
    TBXSubmenuItem4: TTBXSubmenuItem;
    TBXItem25: TTBXItem;
    TBXItem26: TTBXItem;
    TBXItem27: TTBXItem;
    procedure padr_acti_modificarExecute(Sender: TObject);
    procedure padr_gridDblClick(Sender: TObject);
    procedure padr_acti_eliminarExecute(Sender: TObject);
    procedure Acti_Movi_TrasladosExecute(Sender: TObject);
    procedure Acti_Movi_BajasExecute(Sender: TObject);
    procedure Acti_ReingresosExecute(Sender: TObject);
    procedure Acti_anul_trasladosExecute(Sender: TObject);
    procedure Acti_anul_bajasExecute(Sender: TObject);
    procedure Acti_anul_reingresosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Consulta_Ubicacion(Consecutivo : Integer;
      Cons_Recurso, Codi_Empresa, Nomb_Empresa, Codi_Area, Nomb_Area, Codi_Planta, Nomb_Planta,
      Codi_Linea, Nomb_Linea, Codi_Seccion, Nomb_Seccion,
      Codi_Bodega, Nomb_Bodega, Otra_Ubicacion : TField);
  end;

var
  fn1_maqu_ingreso: Tfn1_maqu_ingreso;

Const
	CosModifarDatosGenerales 		= 'Modificando Datos Generales';
  CosNoModicarDatosGenerales 	= 'Solo se puede modificar los Datos Generales de un Recurso';
  CosModifarUbicacion 				= 'Modificando Ubicación de Recursos';
  CosBajas 										= 'Bajas de Recursos';
  CosReingresos 							= 'Reingresos de Recursos';
  CosAnularTraslados					= 'Anular Traslados';
  CosAnularBajas							= 'Anular Bajas';
  CosAnularReingresos					= 'Anular Reingresos';

implementation

uses Un1_maqu_generales1, _func_varias, un1_maqu_traslados1,
  un1_maqu_bajas1, un1_maqu_reingresos1, UN1_Maqu_Maes_Anulados, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : Consulta_Ubicacion
Objetivo        : Consultar ubicación del recurso
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 8 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso.Consulta_Ubicacion(Consecutivo : Integer;
  Cons_Recurso, Codi_Empresa, Nomb_Empresa, Codi_Area, Nomb_Area, Codi_Planta, Nomb_Planta,
  Codi_Linea, Nomb_Linea, Codi_Seccion, Nomb_Seccion,
  Codi_Bodega, Nomb_Bodega, Otra_Ubicacion : TField);
begin
  QUbicacion.Close;
  QUbicacion.ParamByName('CONS_RECU_MOVIMIENTO').AsInteger := Consecutivo;
  QUbicacion.Open;
  Cons_Recurso.AsInteger 	:= QUbicacion.FieldByName('CONS_RECURSO').AsInteger;
  Codi_Empresa.AsString  	:= QUbicacion.FieldByName('CODI_EMPRESA').AsString;
  Nomb_Empresa.AsString  	:= QUbicacion.FieldByName('NOMB_EMPRESA').AsString;
  Codi_Area.AsString 			:= QUbicacion.FieldByName('CODI_AREA').AsString;
  Nomb_Area.AsString 			:= QUbicacion.FieldByName('NOMB_AREA').AsString;
  Codi_Planta.AsString 		:= QUbicacion.FieldByName('CODI_PLANTA').AsString;
  Nomb_Planta.AsString 		:= QUbicacion.FieldByName('NOMB_PLANTA').AsString;
  Codi_Linea.AsString 	 	:= QUbicacion.FieldByName('CODI_LINEA').AsString;
  Nomb_Linea.AsString 	 	:= QUbicacion.FieldByName('NOMB_LINEA').AsString;
  Codi_Seccion.AsString  	:= QUbicacion.FieldByName('CODI_SECCION').AsString;
  Nomb_Seccion.AsString  	:= QUbicacion.FieldByName('NOMB_SECCION').AsString;
  Codi_Bodega.AsString 		:= QUbicacion.FieldByName('CODI_BODEGA').AsString;
  Nomb_Bodega.AsString 		:= QUbicacion.FieldByName('NOMB_BODEGA').AsString;
  Otra_Ubicacion.AsString	:= QUbicacion.FieldByName('OTRA_UBICACION').AsString;
  QUbicacion.Close;
end;

{****************************************************************
Procedimiento   : padr_acti_modificarExecute
Objetivo        : Modificar datos generales del personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 8 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso.padr_acti_modificarExecute(Sender: TObject);
begin
  inherited;
{ If consulta.RecordCount = 0 Then
    Exit;
  //Verifico que no exista la carpeta
  If Existe_Pagina(CosModifarDatosGenerales) Then
    Exit;
  //Verifico que no este mas de un personal seleccionado
  If padr_grid.SelectedCount > 1 Then
  Begin
    EjecutarMensaje(CosNoModicarDatosGenerales, mtInformation, [mbOk], 0);
    Exit;
  End;
  Fn1_maqu_generales1 := TFn1_maqu_generales1.Create(Self);
  Fn1_maqu_generales1.Tabla_Ventana.Locate('CONS_RECU_MOVIMIENTO',
  	consulta.FieldByName('CONS_RECU_MOVIMIENTO').AsInteger, []);
  Fn1_maqu_generales1.ManualDock(Self.padr_pagina, Nil);
  Fn1_maqu_generales1.Caption := CosModifarDatosGenerales;
  Fn1_maqu_generales1.Show;}
end;

{****************************************************************
Procedimiento   : padr_gridDblClick
Objetivo        : Modificar datos generales del personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 8 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso.padr_gridDblClick(Sender: TObject);
begin
  If var_colu_es_imagen Then
    inherited
  Else
    //Ejecuto la acción de modificar datos generales, no la del padre
    padr_acti_modificar.Execute
end;

{****************************************************************
Procedimiento   : padr_acti_eliminarExecute
Objetivo        : Eliminar Personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 8 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso.padr_acti_eliminarExecute(Sender: TObject);
begin
//  inherited;
  //Verifica que existan registros
  If consulta.RecordCount <> 0 Then
  with Eliminar do
  try
  //Se elimina primero el personal para que ejecute la eliminación en cascada de
  // sus movimientos
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM GLO_RECURSOS WHERE CONS_RECURSO = :CONS_RECURSO');
    Try
      ExecSQL;
      Close;
      SQL.Clear;
      padr_acti_actualizar.Execute;
    Except
      Close;
      SQL.Clear;
    End;
  finally
  end;
end;

{****************************************************************
Procedimiento   : Acti_Movi_TrasladosExecute
Objetivo        : Abrir módulo de traslados
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 9 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso.Acti_Movi_TrasladosExecute(Sender: TObject);
Var
  I, Indice : Integer;
begin
  inherited;
  If ((Existe_Pagina(CosModifarUbicacion)) Or (padr_grid.SelectedCount = 0)) Then
    Exit;
  Fn1_maqu_traslados1 := TFn1_maqu_traslados1.Create(Self);
  With Fn1_maqu_traslados1 Do Begin
    For I := 0 To padr_grid.Count - 1 Do
      If padr_grid.Items[I].Selected Then  Begin

        TRecursos_Temporal.Insert;
        Indice := padr_grid.ColumnByFieldName('CODI_RECURSO').Index;
        TRecursos_Temporal.FieldByName('CODI_RECURSO').AsString :=
          padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('CODI_INTE_RECURSO').Index;
        TRecursos_Temporal.FieldByName('CODI_INTE_RECURSO').AsString :=
          padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NOMB_RECU_GRUPO').Index;
        TRecursos_Temporal.FieldByName('NOMB_RECU_GRUPO').AsString :=
          padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NOMB_RECU_TIPO').Index;
        TRecursos_Temporal.FieldByName('NOMB_RECU_TIPO').AsString :=
          padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NOMB_RECU_FAMILIA').Index;
        TRecursos_Temporal.FieldByName('NOMB_RECU_FAMILIA').AsString :=
          padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NOMB_RECU_MARCA').Index;
        TRecursos_Temporal.FieldByName('NOMB_RECU_MARCA').AsString :=
          padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NUME_SERIE').Index;
        TRecursos_Temporal.FieldByName('NUME_SERIE').AsString :=
          padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('CONS_RECU_MOVIMIENTO').Index;
        Consulta_Ubicacion(padr_grid.Items[I].Values[Indice],
        	TRecursos_Temporal.FieldByName('CONS_RECURSO'),
          TRecursos_Temporal.FieldByName('CODI_EMPRESA'),
          TRecursos_Temporal.FieldByName('NOMB_EMPRESA'),
          TRecursos_Temporal.FieldByName('CODI_AREA'),
          TRecursos_Temporal.FieldByName('NOMB_AREA'),
          TRecursos_Temporal.FieldByName('CODI_PLANTA'),
          TRecursos_Temporal.FieldByName('NOMB_PLANTA'),
          TRecursos_Temporal.FieldByName('CODI_LINEA'),
          TRecursos_Temporal.FieldByName('NOMB_LINEA'),
          TRecursos_Temporal.FieldByName('CODI_SECCION'),
          TRecursos_Temporal.FieldByName('NOMB_SECCION'),
          TRecursos_Temporal.FieldByName('CODI_BODEGA'),
          TRecursos_Temporal.FieldByName('NOMB_BODEGA'),
          TRecursos_Temporal.FieldByName('OTRA_UBICACION'));
        TRecursos_Temporal.Post;
      End; //end_for
    ManualDock(Self.padr_pagina, Nil);
    Caption := CosModifarUbicacion;
    Show;
  End;
end;

{****************************************************************
Procedimiento   : Acti_Movi_BajasExecute
Objetivo        : Abrir módulo de bajas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 9 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso.Acti_Movi_BajasExecute(Sender: TObject);
Var
  I, Indice : Integer;
begin
  inherited;
  If ((Existe_Pagina(CosBajas)) Or (padr_grid.SelectedCount = 0)) Then
    Exit;
  Fn1_maqu_bajas1 := TFn1_maqu_bajas1.Create(Self);
  With Fn1_maqu_bajas1 Do Begin
    For I := 0 To padr_grid.Count - 1 Do
      If padr_grid.Items[I].Selected Then Begin
        TRecursos_Temporal.Insert;
        Indice := padr_grid.ColumnByFieldName('CODI_RECURSO').Index;
        TRecursos_Temporal.FieldByName('CODI_RECURSO').AsString :=
          padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('CODI_INTE_RECURSO').Index;
        TRecursos_Temporal.FieldByName('CODI_INTE_RECURSO').AsString :=
          padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NOMB_RECU_GRUPO').Index;
        TRecursos_Temporal.FieldByName('NOMB_RECU_GRUPO').AsString :=
          padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NOMB_RECU_TIPO').Index;
        TRecursos_Temporal.FieldByName('NOMB_RECU_TIPO').AsString :=
          padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NOMB_RECU_FAMILIA').Index;
        TRecursos_Temporal.FieldByName('NOMB_RECU_FAMILIA').AsString :=
          padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NOMB_RECU_MARCA').Index;
        TRecursos_Temporal.FieldByName('NOMB_RECU_MARCA').AsString :=
          padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NUME_SERIE').Index;
        TRecursos_Temporal.FieldByName('NUME_SERIE').AsString :=
          padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('CONS_RECU_MOVIMIENTO').Index;
        Consulta_Ubicacion(padr_grid.Items[I].Values[Indice],
        	TRecursos_Temporal.FieldByName('CONS_RECURSO'),
          TRecursos_Temporal.FieldByName('CODI_EMPRESA'),
          TRecursos_Temporal.FieldByName('NOMB_EMPRESA'),
          TRecursos_Temporal.FieldByName('CODI_AREA'),
          TRecursos_Temporal.FieldByName('NOMB_AREA'),
          TRecursos_Temporal.FieldByName('CODI_PLANTA'),
          TRecursos_Temporal.FieldByName('NOMB_PLANTA'),
          TRecursos_Temporal.FieldByName('CODI_LINEA'),
          TRecursos_Temporal.FieldByName('NOMB_LINEA'),
          TRecursos_Temporal.FieldByName('CODI_SECCION'),
          TRecursos_Temporal.FieldByName('NOMB_SECCION'),
          TRecursos_Temporal.FieldByName('CODI_BODEGA'),
          TRecursos_Temporal.FieldByName('NOMB_BODEGA'),
          TRecursos_Temporal.FieldByName('OTRA_UBICACION'));
        TRecursos_Temporal.Post;
      End;
    ManualDock(Self.padr_pagina, Nil);
    Caption := CosBajas;
    Show;
  End;
end;

{****************************************************************
Procedimiento   : Acti_ReingresosExecute
Objetivo        : Abrir módulo de reingresos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 9 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso.Acti_ReingresosExecute(Sender: TObject);
begin
  inherited;
  If Existe_Pagina(CosReingresos) Then
    Exit;
  Fn1_maqu_reingresos1 := TFn1_maqu_reingresos1.Create(Self);
  Fn1_maqu_reingresos1.ManualDock(Self.padr_pagina, Nil);
  Fn1_maqu_reingresos1.Caption := CosBajas;
  Fn1_maqu_reingresos1.Show;
end;

{****************************************************************
Procedimiento   : Acti_Anul_trasladosExecute
Objetivo        : Anular Traslados de Recursos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 28 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso.Acti_anul_trasladosExecute(Sender: TObject);
begin
  inherited;
  //Verifico que no exista la carpeta
  If Existe_Pagina(CosAnularTraslados) Then
    Exit;
  FN1_Maqu_Maes_Anulados := TFN1_Maqu_Maes_Anulados.Create(Self);
  FN1_Maqu_Maes_Anulados.Tipo_Movimiento := '2';
  FN1_Maqu_Maes_Anulados.QRecursos.Sql.Add(Cabeza_Consulta);
  FN1_Maqu_Maes_Anulados.QRecursos.Sql.Add(' AND T.CONS_FAMI_MOVIMIENTO = 2');
  FN1_Maqu_Maes_Anulados.QRecursos.Sql.Add(Pie_Consulta);
  FN1_Maqu_Maes_Anulados.QRecursos.Open;
  FN1_Maqu_Maes_Anulados.ManualDock(Self.padr_pagina, Nil);
  FN1_Maqu_Maes_Anulados.Caption := CosAnularTraslados;
  FN1_Maqu_Maes_Anulados.Show;
end;

{****************************************************************
Procedimiento   : Acti_anul_bajasExecute
Objetivo        : Anular Bajas de Recursos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 28 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso.Acti_anul_bajasExecute(Sender: TObject);
begin
  inherited;
  //Verifico que no exista la carpeta
  If Existe_Pagina(CosAnularBajas) Then
    Exit;
  FN1_Maqu_Maes_Anulados := TFN1_Maqu_Maes_Anulados.Create(Self);
  FN1_Maqu_Maes_Anulados.Tipo_Movimiento := '3,4';
  FN1_Maqu_Maes_Anulados.QRecursos.Sql.Add(Cabeza_Consulta);
  FN1_Maqu_Maes_Anulados.QRecursos.Sql.Add(' AND T.CONS_FAMI_MOVIMIENTO IN (3,4)');
  FN1_Maqu_Maes_Anulados.QRecursos.Sql.Add(Pie_Consulta);
  FN1_Maqu_Maes_Anulados.QRecursos.Open;
  FN1_Maqu_Maes_Anulados.ManualDock(Self.padr_pagina, Nil);
  FN1_Maqu_Maes_Anulados.Caption := CosAnularBajas;
  FN1_Maqu_Maes_Anulados.Show;
end;

{****************************************************************
Procedimiento   : Acti_anul_reingresosExecute
Objetivo        : Anular Reingresos de Recursos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 28 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso.Acti_anul_reingresosExecute(Sender: TObject);
begin
  inherited;
  //Verifico que no exista la carpeta
  If Existe_Pagina(CosAnularReingresos) Then
    Exit;
  FN1_Maqu_Maes_Anulados := TFN1_Maqu_Maes_Anulados.Create(Self);
  FN1_Maqu_Maes_Anulados.Tipo_Movimiento := '5';
  FN1_Maqu_Maes_Anulados.QRecursos.Sql.Add(Cabeza_Consulta);
  FN1_Maqu_Maes_Anulados.QRecursos.Sql.Add(' AND T.CONS_FAMI_MOVIMIENTO = 5');
  FN1_Maqu_Maes_Anulados.QRecursos.Sql.Add(Pie_Consulta);
  FN1_Maqu_Maes_Anulados.QRecursos.Open;
  FN1_Maqu_Maes_Anulados.ManualDock(Self.padr_pagina, Nil);
  FN1_Maqu_Maes_Anulados.Caption := CosAnularReingresos;
  FN1_Maqu_Maes_Anulados.Show;
end;

procedure Tfn1_maqu_ingreso.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
