unit UN1_Acce_Ingreso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm,
  Db, DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  TFN1_Acce_Ingreso = class(T_fvent_child)
    consultaCONS_ACCE_MOVIMIENTO: TIntegerField;
    consultaCONS_ACCE_TIPO_MOVIMIENTO: TIntegerField;
    consultaCONS_TIPO_DOCUMENTO: TIntegerField;
    consultaCODI_TIPO_DOCUMENTO: TStringField;
    consultaNOMB_TIPO_DOCUMENTO: TStringField;
    consultaNUME_DOCUMENTO: TStringField;
    consultaCONS_SOLICITA: TIntegerField;
    consultaCODI_SOLICITA: TStringField;
    consultaNOMB_SOLICITA: TStringField;
    consultaCONS_ENTREGA: TIntegerField;
    consultaCODI_ENTREGA: TStringField;
    consultaNOMB_ENTREGA: TStringField;
    consultaCONS_RECIBE: TIntegerField;
    consultaCODI_RECIBE: TStringField;
    consultaNOMB_RECIBE: TStringField;
    consultaFECH_INICIAL: TDateTimeField;
    consultaFECH_FINAL: TDateTimeField;
    consultaOBSERVACIONES: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCONS_ACCESORIO: TIntegerField;
    consultaNUME_INVE_ACCESORIO: TStringField;
    consultaCONS_ACCE_GRUPO: TIntegerField;
    consultaCODI_ACCE_GRUPO: TStringField;
    consultaNOMB_ACCE_GRUPO: TStringField;
    consultaCONS_ACCE_TIPO: TIntegerField;
    consultaCODI_ACCE_TIPO: TStringField;
    consultaNOMB_ACCE_TIPO: TStringField;
    consultaCONS_RECU_MARCA: TIntegerField;
    consultaCODI_RECU_MARCA: TStringField;
    consultaNOMB_RECU_MARCA: TStringField;
    consultaNUME_SERIE: TStringField;
    consultaUSO: TStringField;
    consultaMATE_RECOMENDADO: TStringField;
    consultaIMAGEN: TBlobField;
    consultaDETA_IMAGEN: TBlobField;
    padr_gridCONS_ACCE_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridCONS_ACCESORIO: TdxDBGridMaskColumn;
    padr_gridNUME_INVE_ACCESORIO: TdxDBGridMaskColumn;
    padr_gridCONS_ACCE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_ACCE_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_ACCE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_ACCE_TIPO: TdxDBGridMaskColumn;
    padr_gridCODI_ACCE_TIPO: TdxDBGridMaskColumn;
    padr_gridNOMB_ACCE_TIPO: TdxDBGridMaskColumn;
    padr_gridCONS_RECU_MARCA: TdxDBGridMaskColumn;
    padr_gridCODI_RECU_MARCA: TdxDBGridMaskColumn;
    padr_gridNOMB_RECU_MARCA: TdxDBGridMaskColumn;
    padr_gridNUME_SERIE: TdxDBGridMaskColumn;
    padr_gridUSO: TdxDBGridMaskColumn;
    padr_gridMATE_RECOMENDADO: TdxDBGridMaskColumn;
    padr_gridCONS_ACCE_TIPO_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridCONS_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridCODI_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridNUME_DOCUMENTO: TdxDBGridMaskColumn;
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
    padr_gridOBSERVACIONES: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    Acti_Generales: TAction;
    TBXSubmenuItem3: TTBXSubmenuItem;
    TBXItem21: TTBXItem;
    QUbicacion: TQuery;
    QUbicacionCONS_ACCE_MOVIMIENTO: TIntegerField;
    QUbicacionCONS_ACCESORIO: TIntegerField;
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
    QUbicacionCONS_UBIC_TIPO: TIntegerField;
    QUbicacionCONS_PLAN_LINEA: TIntegerField;
    QUbicacionCONS_LINE_SECCION: TIntegerField;
    QUbicacionCONS_RECURSO: TIntegerField;
    QUbicacionCODI_RECURSO: TStringField;
    QUbicacionCODI_INTE_RECURSO: TStringField;
    QUbicacionNUME_SERIE: TStringField;
    Acti_Traslados: TAction;
    TBXItem22: TTBXItem;
    Acti_Bajas: TAction;
    TBXItem23: TTBXItem;
    Acti_Reingresos: TAction;
    TBXItem24: TTBXItem;
    Acti_anul_traslados: TAction;
    Acti_anul_bajas: TAction;
    Acti_anul_reingresos: TAction;
    TBXSubmenuItem4: TTBXSubmenuItem;
    TBXItem25: TTBXItem;
    TBXItem26: TTBXItem;
    TBXItem27: TTBXItem;
    padr_gridIMAGEN: TdxDBGridBlobColumn;
    padr_gridDETA_IMAGEN: TdxDBGridBlobColumn;
    consultaDIME_ENTRADA: TFloatField;
    consultaDIME_SALIDA: TFloatField;
    padr_gridDIME_ENTRADA: TdxDBGridMaskColumn;
    padr_gridDIME_SALIDA: TdxDBGridMaskColumn;
    procedure padr_gridDblClick(Sender: TObject);
    procedure padr_acti_modificarExecute(Sender: TObject);
    procedure Acti_TrasladosExecute(Sender: TObject);
    procedure Acti_BajasExecute(Sender: TObject);
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
      Cons_Recurso, Codi_Recurso, Codi_Inte_Recurso, Cons_Empresa, Codi_Empresa, Nomb_Empresa,
      Cons_Area, Codi_Area, Nomb_Area, Cons_Planta, Codi_Planta, Nomb_Planta,
      Cons_Linea, Codi_Linea, Nomb_Linea, Cons_Seccion, Codi_Seccion, Nomb_Seccion,
      Cons_Bodega, Codi_Bodega, Nomb_Bodega, Otra_Ubicacion, Cons_Plan_Linea,
      Cons_Line_Seccion, Cons_Ubic_Tipo : TField);
  end;

var
  FN1_Acce_Ingreso: TFN1_Acce_Ingreso;

Const
	CosModifarDatosGenerales 		= 'Modificando Datos Generales';
  CosNoModicarDatosGenerales 	= 'Solo se puede modificar los Datos Generales de un Accesorio';
  CosTraslados 								= 'Traslados de Accesorios';
  CosBajas 										= 'Bajas de Accesorios';
  CosReingresos								= 'Reingresos de Accesorios';
  CosAnularTraslados					= 'Anular Traslados';
  CosAnularBajas							= 'Anular Bajas';
  CosAnularReingresos					= 'Anular Reingresos';

implementation

uses UN1_Acce_General1, _func_varias, _cons_pcp, UN1_Acce_Traslados1,
  UN1_Acce_Bajas1, UN1_Acce_Reingresos1, UN1_Acce_Maes_Anulados, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : Consulta_Ubicacion
Objetivo        : Consultar ubicación del recurso
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 28 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso.Consulta_Ubicacion(Consecutivo : Integer;
  Cons_Recurso, Codi_Recurso, Codi_Inte_Recurso, Cons_Empresa, Codi_Empresa, Nomb_Empresa,
  Cons_Area, Codi_Area, Nomb_Area, Cons_Planta, Codi_Planta, Nomb_Planta,
  Cons_Linea, Codi_Linea, Nomb_Linea, Cons_Seccion, Codi_Seccion, Nomb_Seccion,
  Cons_Bodega, Codi_Bodega, Nomb_Bodega, Otra_Ubicacion, Cons_Plan_Linea,
  Cons_Line_Seccion, Cons_Ubic_Tipo : TField);
begin
  QUbicacion.Close;
  QUbicacion.ParamByName('CONS_ACCE_MOVIMIENTO').AsInteger := Consecutivo;
  QUbicacion.Open;

  Cons_Recurso.AsInteger 			:= QUbicacion.FieldByName('CONS_RECURSO').AsInteger;
  Codi_Recurso.AsString 			:= QUbicacion.FieldByName('CODI_RECURSO').AsString;
  Codi_Inte_Recurso.AsString 	:= QUbicacion.FieldByName('CODI_INTE_RECURSO').AsString;
  Cons_Empresa.AsInteger  		:= QUbicacion.FieldByName('CONS_EMPRESA').AsInteger;
  Codi_Empresa.AsString  			:= QUbicacion.FieldByName('CODI_EMPRESA').AsString;
  Nomb_Empresa.AsString  			:= QUbicacion.FieldByName('NOMB_EMPRESA').AsString;
  Cons_Area.AsInteger 				:= QUbicacion.FieldByName('CONS_AREA').AsInteger;
  Codi_Area.AsString 					:= QUbicacion.FieldByName('CODI_AREA').AsString;
  Nomb_Area.AsString 					:= QUbicacion.FieldByName('NOMB_AREA').AsString;
  Cons_Planta.AsInteger 			:= QUbicacion.FieldByName('CONS_PLANTA').AsInteger;
  Codi_Planta.AsString 				:= QUbicacion.FieldByName('CODI_PLANTA').AsString;
  Nomb_Planta.AsString 				:= QUbicacion.FieldByName('NOMB_PLANTA').AsString;
  Cons_Linea.AsInteger 	 			:= QUbicacion.FieldByName('CONS_LINEA').AsInteger;
  Codi_Linea.AsString 	 			:= QUbicacion.FieldByName('CODI_LINEA').AsString;
  Nomb_Linea.AsString 	 			:= QUbicacion.FieldByName('NOMB_LINEA').AsString;
  Cons_Seccion.AsINteger  		:= QUbicacion.FieldByName('CONS_SECCION').AsInteger;
  Codi_Seccion.AsString  			:= QUbicacion.FieldByName('CODI_SECCION').AsString;
  Nomb_Seccion.AsString  			:= QUbicacion.FieldByName('NOMB_SECCION').AsString;
  Cons_Bodega.AsInteger 			:= QUbicacion.FieldByName('CONS_BODEGA').AsInteger;
  Codi_Bodega.AsString 				:= QUbicacion.FieldByName('CODI_BODEGA').AsString;
  Nomb_Bodega.AsString 				:= QUbicacion.FieldByName('NOMB_BODEGA').AsString;
  Otra_Ubicacion.AsString			:= QUbicacion.FieldByName('OTRA_UBICACION').AsString;
  Cons_Plan_Linea.AsInteger 	:= QUbicacion.FieldByName('CONS_PLAN_LINEA').AsInteger;
  Cons_Line_Seccion.AsInteger := QUbicacion.FieldByName('CONS_LINE_SECCION').AsInteger;
  Cons_Ubic_Tipo.AsInteger 		:= QUbicacion.FieldByName('CONS_UBIC_TIPO').AsInteger;
  QUbicacion.Close;
end;

{****************************************************************
Procedimiento   : padr_gridDblClick
Objetivo        : Crear el módulo de modificación de datos generales
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 28 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso.padr_gridDblClick(Sender: TObject);
begin
	If var_colu_es_imagen Then
	  inherited
  Else
    //Ejecuto la acción de modificar datos generales, no la del padre
    padr_acti_modificar.Execute
end;

{****************************************************************
Procedimiento   : padr_acti_modificarExecute
Objetivo        : Crear el módulo de modificación de datos generales
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 28 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso.padr_acti_modificarExecute(Sender: TObject);
begin
  inherited;
{	If consulta.RecordCount = 0 Then
  	Exit;
  //Verifico que no exista la carpeta
  If Existe_Pagina(CosModifarDatosGenerales) Then
    Exit;
  //Verifico que no este mas de un accesorio seleccionado
  If padr_grid.SelectedCount > 1 Then
  Begin
    EjecutarMensaje(CosNoModicarDatosGenerales, mtInformation, [mbOk], 0);
    Exit;
  End;
  FN1_Acce_General1 := TFN1_Acce_General1.Create(Self);
  FN1_Acce_General1.Tabla_Ventana.Locate('CONS_ACCE_MOVIMIENTO',
  	consulta.FieldByName('CONS_ACCE_MOVIMIENTO').AsInteger, []);
  FN1_Acce_General1.ManualDock(Self.padr_pagina, Nil);
  FN1_Acce_General1.Caption := CosModifarDatosGenerales;
  FN1_Acce_General1.Show;}
end;

{****************************************************************
Procedimiento   : Acti_TrasladosExecute
Objetivo        : Crear el módulo de Traslados
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 28 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso.Acti_TrasladosExecute(Sender: TObject);
Var
	I, Indice : Integer;
begin
  inherited;
	If consulta.RecordCount = 0 Then
  	Exit;
  //Verifico que no exista la carpeta
  If Existe_Pagina(CosTraslados) Then
    Exit;
  //Verifico que no este mas de un accesorio seleccionado
  If padr_grid.SelectedCount = 0 Then
  Begin
    EjecutarMensaje(CosErrorAccesorioSeleccionado, mtInformation, [mbOk], 0);
    Exit;
  End;
  FN1_Acce_Traslados1 := TFN1_Acce_Traslados1.Create(Self);
  With FN1_Acce_Traslados1 Do
  Begin
		For I := 0 To padr_grid.Count - 1 Do
    	If padr_grid.Items[I].Selected Then
      Begin
        TAccesorios.Insert;
        Indice := padr_grid.ColumnByFieldName('CONS_ACCESORIO').Index;
        TAccesoriosCONS_ACCESORIO.AsInteger := padr_grid.Items[I].Values[Indice];
        Indice := padr_grid.ColumnByFieldName('NUME_INVE_ACCESORIO').Index;
        TAccesoriosNUME_INVE_ACCESORIO.AsString := padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('CODI_ACCE_GRUPO').Index;
        TAccesoriosCODI_ACCE_GRUPO.AsString := padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NOMB_ACCE_GRUPO').Index;
        TAccesoriosNOMB_ACCE_GRUPO.AsString := padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('CODI_ACCE_TIPO').Index;
        TAccesoriosCODI_ACCE_TIPO.AsString := padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NOMB_ACCE_TIPO').Index;
        TAccesoriosNOMB_ACCE_TIPO.AsString := padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('CODI_RECU_MARCA').Index;
        TAccesoriosCODI_RECU_MARCA.AsString := padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NOMB_RECU_MARCA').Index;
        TAccesoriosNOMB_RECU_MARCA.AsString := padr_grid.Items[I].Strings[Indice];

        Indice := padr_grid.ColumnByFieldName('CONS_ACCE_MOVIMIENTO').Index;
        Consulta_Ubicacion(padr_grid.Items[I].Values[Indice],
        	TAccesorios.FieldByName('CONS_RECURSO'),
        	TAccesorios.FieldByName('CODI_RECURSO'),
        	TAccesorios.FieldByName('CODI_INTE_RECURSO'),
        	TAccesorios.FieldByName('CONS_EMPRESA'),
          TAccesorios.FieldByName('CODI_EMPRESA'),
          TAccesorios.FieldByName('NOMB_EMPRESA'),
          TAccesorios.FieldByName('CONS_AREA'),
          TAccesorios.FieldByName('CODI_AREA'),
          TAccesorios.FieldByName('NOMB_AREA'),
          TAccesorios.FieldByName('CONS_PLANTA'),
          TAccesorios.FieldByName('CODI_PLANTA'),
          TAccesorios.FieldByName('NOMB_PLANTA'),
          TAccesorios.FieldByName('CONS_LINEA'),
          TAccesorios.FieldByName('CODI_LINEA'),
          TAccesorios.FieldByName('NOMB_LINEA'),
          TAccesorios.FieldByName('CONS_SECCION'),
          TAccesorios.FieldByName('CODI_SECCION'),
          TAccesorios.FieldByName('NOMB_SECCION'),
          TAccesorios.FieldByName('CONS_BODEGA'),
          TAccesorios.FieldByName('CODI_BODEGA'),
          TAccesorios.FieldByName('NOMB_BODEGA'),
          TAccesorios.FieldByName('OTRA_UBICACION'),
          TAccesorios.FieldByName('CONS_PLAN_LINEA'),
          TAccesorios.FieldByName('CONS_LINE_SECCION'),
          TAccesorios.FieldByName('CONS_UBIC_TIPO'));

        TAccesorios.Post;
      End;

    ManualDock(Self.padr_pagina, Nil);
    Caption := CosTraslados;
    Show;
  End;
end;

{****************************************************************
Procedimiento   : Acti_BajasExecute
Objetivo        : Crear el módulo de Bajas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 28 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso.Acti_BajasExecute(Sender: TObject);
Var
	I, Indice : Integer;
begin
  inherited;
	If consulta.RecordCount = 0 Then
  	Exit;
  //Verifico que no exista la carpeta
  If Existe_Pagina(CosTraslados) Then
    Exit;
  //Verifico que no este mas de un accesorio seleccionado
  If padr_grid.SelectedCount = 0 Then
  Begin
    EjecutarMensaje(CosErrorAccesorioSeleccionado, mtInformation, [mbOk], 0);
    Exit;
  End;
  FN1_Acce_Bajas1 := TFN1_Acce_Bajas1.Create(Self);
  With FN1_Acce_Bajas1 Do
  Begin
		For I := 0 To padr_grid.Count - 1 Do
    	If padr_grid.Items[I].Selected Then
      Begin
        TAccesorios.Insert;
        Indice := padr_grid.ColumnByFieldName('CONS_ACCESORIO').Index;
        TAccesoriosCONS_ACCESORIO.AsInteger := padr_grid.Items[I].Values[Indice];
        Indice := padr_grid.ColumnByFieldName('NUME_INVE_ACCESORIO').Index;
        TAccesoriosNUME_INVE_ACCESORIO.AsString := padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('CODI_ACCE_GRUPO').Index;
        TAccesoriosCODI_ACCE_GRUPO.AsString := padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NOMB_ACCE_GRUPO').Index;
        TAccesoriosNOMB_ACCE_GRUPO.AsString := padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('CODI_ACCE_TIPO').Index;
        TAccesoriosCODI_ACCE_TIPO.AsString := padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NOMB_ACCE_TIPO').Index;
        TAccesoriosNOMB_ACCE_TIPO.AsString := padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('CODI_RECU_MARCA').Index;
        TAccesoriosCODI_RECU_MARCA.AsString := padr_grid.Items[I].Strings[Indice];
        Indice := padr_grid.ColumnByFieldName('NOMB_RECU_MARCA').Index;
        TAccesoriosNOMB_RECU_MARCA.AsString := padr_grid.Items[I].Strings[Indice];

        Indice := padr_grid.ColumnByFieldName('CONS_ACCE_MOVIMIENTO').Index;
        Consulta_Ubicacion(padr_grid.Items[I].Values[Indice],
        	TAccesorios.FieldByName('CONS_RECURSO'),
        	TAccesorios.FieldByName('CODI_RECURSO'),
        	TAccesorios.FieldByName('CODI_INTE_RECURSO'),
        	TAccesorios.FieldByName('CONS_EMPRESA'),
          TAccesorios.FieldByName('CODI_EMPRESA'),
          TAccesorios.FieldByName('NOMB_EMPRESA'),
          TAccesorios.FieldByName('CONS_AREA'),
          TAccesorios.FieldByName('CODI_AREA'),
          TAccesorios.FieldByName('NOMB_AREA'),
          TAccesorios.FieldByName('CONS_PLANTA'),
          TAccesorios.FieldByName('CODI_PLANTA'),
          TAccesorios.FieldByName('NOMB_PLANTA'),
          TAccesorios.FieldByName('CONS_LINEA'),
          TAccesorios.FieldByName('CODI_LINEA'),
          TAccesorios.FieldByName('NOMB_LINEA'),
          TAccesorios.FieldByName('CONS_SECCION'),
          TAccesorios.FieldByName('CODI_SECCION'),
          TAccesorios.FieldByName('NOMB_SECCION'),
          TAccesorios.FieldByName('CONS_BODEGA'),
          TAccesorios.FieldByName('CODI_BODEGA'),
          TAccesorios.FieldByName('NOMB_BODEGA'),
          TAccesorios.FieldByName('OTRA_UBICACION'),
          TAccesorios.FieldByName('CONS_PLAN_LINEA'),
          TAccesorios.FieldByName('CONS_LINE_SECCION'),
          TAccesorios.FieldByName('CONS_UBIC_TIPO'));

        TAccesorios.Post;
      End;

    ManualDock(Self.padr_pagina, Nil);
    Caption := CosBajas;
    Show;
  End;
end;

{****************************************************************
Procedimiento   : Acti_ReingresosExecute
Objetivo        : Crear el módulo de Reingresos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 28 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso.Acti_ReingresosExecute(Sender: TObject);
begin
  inherited;
  //Verifico que no exista la carpeta
  If Existe_Pagina(CosReingresos) Then
    Exit;
  FN1_Acce_Reingresos1 := TFN1_Acce_Reingresos1.Create(Self);
  FN1_Acce_Reingresos1.ManualDock(Self.padr_pagina, Nil);
  FN1_Acce_Reingresos1.Caption := CosReingresos;
  FN1_Acce_Reingresos1.Show;
end;

{****************************************************************
Procedimiento   : Acti_Anul_trasladosExecute
Objetivo        : Anular Traslados de Recursos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 28 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso.Acti_anul_trasladosExecute(Sender: TObject);
begin
  inherited;
  //Verifico que no exista la carpeta
  If Existe_Pagina(CosAnularTraslados) Then
    Exit;
	FN1_Acce_Maes_Anulados := TFN1_Acce_Maes_Anulados.Create(Self);
  FN1_Acce_Maes_Anulados.Tipo_Movimiento := '2';
  FN1_Acce_Maes_Anulados.QAccesorios.Sql.Add(Cabeza_Consulta);
  FN1_Acce_Maes_Anulados.QAccesorios.Sql.Add(' AND T.CONS_FAMI_MOVIMIENTO = 2');
  FN1_Acce_Maes_Anulados.QAccesorios.Sql.Add(Pie_Consulta);
  FN1_Acce_Maes_Anulados.QAccesorios.Open;
  FN1_Acce_Maes_Anulados.ManualDock(Self.padr_pagina, Nil);
  FN1_Acce_Maes_Anulados.Caption := CosAnularTraslados;
  FN1_Acce_Maes_Anulados.Show;
end;

{****************************************************************
Procedimiento   : Acti_anul_bajasExecute
Objetivo        : Anular Bajas de Recursos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 28 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso.Acti_anul_bajasExecute(Sender: TObject);
begin
  inherited;
  //Verifico que no exista la carpeta
  If Existe_Pagina(CosAnularTraslados) Then
    Exit;
	FN1_Acce_Maes_Anulados := TFN1_Acce_Maes_Anulados.Create(Self);
  FN1_Acce_Maes_Anulados.Tipo_Movimiento := '3,4';
  FN1_Acce_Maes_Anulados.QAccesorios.Sql.Add(Cabeza_Consulta);
  FN1_Acce_Maes_Anulados.QAccesorios.Sql.Add(' AND T.CONS_FAMI_MOVIMIENTO IN (3,4)');
  FN1_Acce_Maes_Anulados.QAccesorios.Sql.Add(Pie_Consulta);
  FN1_Acce_Maes_Anulados.QAccesorios.Open;
  FN1_Acce_Maes_Anulados.ManualDock(Self.padr_pagina, Nil);
  FN1_Acce_Maes_Anulados.Caption := CosAnularTraslados;
  FN1_Acce_Maes_Anulados.Show;
end;

{****************************************************************
Procedimiento   : Acti_anul_reingresosExecute
Objetivo        : Anular Reingresos de Recursos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 28 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso.Acti_anul_reingresosExecute(Sender: TObject);
begin
  inherited;
  //Verifico que no exista la carpeta
  If Existe_Pagina(CosAnularTraslados) Then
    Exit;
	FN1_Acce_Maes_Anulados := TFN1_Acce_Maes_Anulados.Create(Self);
  FN1_Acce_Maes_Anulados.Tipo_Movimiento := '5';
  FN1_Acce_Maes_Anulados.QAccesorios.Sql.Add(Cabeza_Consulta);
  FN1_Acce_Maes_Anulados.QAccesorios.Sql.Add(' AND T.CONS_FAMI_MOVIMIENTO = 5');
  FN1_Acce_Maes_Anulados.QAccesorios.Sql.Add(Pie_Consulta);
  FN1_Acce_Maes_Anulados.QAccesorios.Open;
  FN1_Acce_Maes_Anulados.ManualDock(Self.padr_pagina, Nil);
  FN1_Acce_Maes_Anulados.Caption := CosAnularTraslados;
  FN1_Acce_Maes_Anulados.Show;
end;

procedure TFN1_Acce_Ingreso.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
