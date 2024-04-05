unit UN1_Refe_Pren_Terminada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, Db, ImgList, Menus, TBX, ActnList, ExtCtrls,
  dfsSplitter, dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl,
  dxDBGrid, dxPageControl, dxDBTLCl, dxGrClms, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  TFN1_Refe_Pren_Terminada = class(T_fvent_child)
    consultaCONS_REFERENCIA: TIntegerField;
    consultaCODI_REFERENCIA: TStringField;
    consultaMOLDE: TStringField;
    consultaCODI_INTE_REFERENCIA: TStringField;
    consultaNOMB_REFERENCIA: TStringField;
    consultaCODI_BARRAS: TStringField;
    consultaCONS_REFE_TIPO_VARIACION: TIntegerField;
    consultaCODI_REFE_TIPO_VARIACION: TStringField;
    consultaNOMB_REFE_TIPO_VARIACION: TStringField;
    consultaCONS_REFE_MARCA: TIntegerField;
    consultaCODI_REFE_MARCA: TStringField;
    consultaNOMB_REFE_MARCA: TStringField;
    consultaCONS_REFE_LINEA: TIntegerField;
    consultaCODI_REFE_LINEA: TStringField;
    consultaNOMB_REFE_LINEA: TStringField;
    consultaCONS_REFE_EDAD: TIntegerField;
    consultaCODI_REFE_EDAD: TStringField;
    consultaNOMB_REFE_EDAD: TStringField;
    consultaCONS_REFE_ESTILO: TIntegerField;
    consultaCODI_REFE_ESTILO: TStringField;
    consultaNOMB_REFE_ESTILO: TStringField;
    consultaCONS_REFE_GRUPO: TIntegerField;
    consultaCODI_REFE_GRUPO: TStringField;
    consultaNOMB_REFE_GRUPO: TStringField;
    consultaCONS_SEXO: TIntegerField;
    consultaCODI_SEXO: TStringField;
    consultaNOMB_SEXO: TStringField;
    consultaCONS_REFE_LAVADO: TIntegerField;
    consultaCODI_REFE_LAVADO: TStringField;
    consultaNOMB_REFE_LAVADO: TStringField;
    consultaCONS_REFE_BORDADO: TIntegerField;
    consultaCODI_REFE_BORDADO: TStringField;
    consultaNOMB_REFE_BORDADO: TStringField;
    consultaCONS_REFE_ESTAMPADO: TIntegerField;
    consultaCODI_REFE_ESTAMPADO: TStringField;
    consultaNOMB_REFE_ESTAMPADO: TStringField;
    consultaCONS_REFE_ESTADO: TIntegerField;
    consultaCODI_REFE_ESTADO: TStringField;
    consultaNOMB_REFE_ESTADO: TStringField;
    consultaGRUP_TALLAS: TStringField;
    consultaIMAGEN: TBlobField;
    consultaDESCRIPCION: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCONS_REFE_VARIACION: TIntegerField;
    padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridMOLDE: TdxDBGridMaskColumn;
    padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_BARRAS: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_LINEA: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_LINEA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_LINEA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_EDAD: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_EDAD: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_EDAD: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_ESTILO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_ESTILO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_ESTILO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_SEXO: TdxDBGridMaskColumn;
    padr_gridCODI_SEXO: TdxDBGridMaskColumn;
    padr_gridNOMB_SEXO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_LAVADO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_LAVADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_LAVADO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_BORDADO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_BORDADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_BORDADO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_ESTAMPADO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_ESTAMPADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_ESTAMPADO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_ESTADO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_ESTADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_ESTADO: TdxDBGridMaskColumn;
    padr_gridGRUP_TALLAS: TdxDBGridMaskColumn;
    padr_gridIMAGEN: TdxDBGridBlobColumn;
    padr_gridDESCRIPCION: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_VARIACION: TdxDBGridMaskColumn;
    procedure padr_acti_nuevoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Refe_Pren_Terminada: TFN1_Refe_Pren_Terminada;

implementation

uses UN1_Refe_Pren_Terminada1, _func_varias;

{$R *.DFM}

procedure TFN1_Refe_Pren_Terminada.padr_acti_nuevoExecute(Sender: TObject);
begin
//  inherited;
	//Verifico que no exista el módulo con el título
  If ExisteVentana('Prenda Terminada ' + Consulta.FieldByName('NOMB_REFERENCIA').AsString +
    	' Variación ' + Consulta.FieldByName('NOMB_REFE_TIPO_VARIACION').AsString) Then
		Exit;
  //Creo el módulo
  FN1_Refe_Pren_Terminada1 := TFN1_Refe_Pren_Terminada1.Create(Self);
	With FN1_Refe_Pren_Terminada1 Do
  Begin
  	Visible := False;
    //Asigno el título del módulo
    Caption := 'Prenda Terminada ' + Consulta.FieldByName('NOMB_REFERENCIA').AsString +
    	' Variación ' + Consulta.FieldByName('NOMB_REFE_TIPO_VARIACION').AsString;
    //Si no existe diseño de la referencia inserto el registro
		If Not Tabla_Ventana.Locate('CONS_REFE_VARIACION',
    	Consulta.FieldByName('CONS_REFE_VARIACION').AsInteger, []) Then
		Begin
      Tabla_Ventana.Insert;
      Tabla_Ventana.FieldByName('CONS_REFE_VARIACION').AsInteger :=
        consulta.FieldByName('CONS_REFE_VARIACION').AsInteger;
    End;
    //Si la aplicación esta para anclar los módulos
    If AnclarHijos Then
    Begin
      ManualDock(Self.padr_pagina, Nil);
      //Mostrar el formulario, porque está Visible = False
      Show;
    End
    Else
    Begin
      FormStyle := fsMDIChild;
      Visible := True;
    End;
		//Abrir tablas auxiliares
    AbrirDataSet(QReferencia);
    AbrirDataSet(QTallas);
    AbrirDataSet(QDenominaciones);
    AbrirDataSet(QTallas_Denominacion);
    //Asigno el self a la variable maestro para al momento de imprimir
    //poder ejecutar el acti de opciones de impresión
    // Maestro := Self;
  End;
end;

end.
