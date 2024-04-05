unit UN1_Refe_Costura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, DBTables, Placemnt, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, Db, ImgList, Menus, TBX, ActnList, ExtCtrls,
  dfsSplitter, dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl,
  dxDBGrid, dxPageControl, dxDBTLCl, dxGrClms, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid;

type
  TFN1_Refe_Costura = class(T_fvent_child)
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
    QExiste_Costura: TQuery;
    procedure padr_acti_nuevoExecute(Sender: TObject);
    procedure padr_acti_imprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Refe_Costura: TFN1_Refe_Costura;

implementation

uses UN1_Refe_Costura1, URN1_Refe_Costura1, _func_varias;

{$R *.DFM}

{****************************************************************
Procedimiento   : padr_acti_nuevoExecute
Objetivo        : Crea el m�dulo hoja de Costura de referencias.
									Se utiliza para los acti nuevo y modificar, no
                  hereda
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Martes 27 de Julio de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure TFN1_Refe_Costura.padr_acti_nuevoExecute(Sender: TObject);
begin
//  inherited;
	//Verifico que no exista el m�dulo con el t�tulo
  If ExisteVentana('Costura referencia ' + Consulta.FieldByName('NOMB_REFERENCIA').AsString +
    	' Variaci�n ' + Consulta.FieldByName('NOMB_REFE_TIPO_VARIACION').AsString) Then
		Exit;
  //Creo el m�dulo
  FN1_Refe_Costura1 := TFN1_Refe_Costura1.Create(Self);
	With FN1_Refe_Costura1 Do
  Begin
  	Visible := False;
    //Asigno el t�tulo del m�dulo
    Caption := 'Dise�o referencia ' + Consulta.FieldByName('NOMB_REFERENCIA').AsString +
    	' Variaci�n ' + Consulta.FieldByName('NOMB_REFE_TIPO_VARIACION').AsString;
    //Si no existe dise�o de la referencia inserto el registro
		If Not Tabla_Ventana.Locate('CONS_REFE_VARIACION',
    	Consulta.FieldByName('CONS_REFE_VARIACION').AsInteger, []) Then
		Begin
      Tabla_Ventana.Insert;
      Tabla_Ventana.FieldByName('CONS_REFE_VARIACION').AsInteger :=
        consulta.FieldByName('CONS_REFE_VARIACION').AsInteger;
    End;
    //Si la aplicaci�n esta para anclar los m�dulos
    If AnclarHijos Then
    Begin
      ManualDock(Self.padr_pagina, Nil);
      //Mostrar el formulario, porque est� Visible = False
      Show;
    End
    Else
    Begin
      FormStyle := fsMDIChild;
      Visible := True;
    End;
    AbrirDataSet(QReferencia);
    //Asigno el self a la variable maestro para al momento de imprimir
    //poder ejecutar el acti de opciones de impresi�n
    Maestro := Self;
  End;
end;

{****************************************************************
Procedimiento   : padr_acti_imprimirExecute
Objetivo        : Crea el m�dulo de impresi�n hoja de costura de referencias.
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Martes 27 de Julio de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure TFN1_Refe_Costura.padr_acti_imprimirExecute(Sender: TObject);
Var
	I : Integer;
Const
	CosNoExisteDiseno = 'No existe especificaciones de costura de la referencia %s variaci�n %s';
begin
//  inherited;
	//Verifico que exista hoja de costura de la referencia
	QExiste_Costura.Close;
  QExiste_Costura.Open;
  If QExiste_Costura.FieldByName('EXISTE').AsInteger = 0 Then
  Begin
    EjecutarMensaje(Format(CosNoExisteDiseno,
    	[Consulta.FieldByName('NOMB_REFERENCIA').AsString,
       Consulta.FieldByName('NOMB_REFE_TIPO_VARIACION').AsString]),
    	mtInformation, [mbOk], 0);
    Exit;
  End;
	//Verifico que no exista el informe
	If ExisteVentana(TRN1_Refe_Costura1) Then
  	Exit;
  //Creo el informe
	RN1_Refe_Costura1 := TRN1_Refe_Costura1.Create(Self);
	With RN1_Refe_Costura1 Do
  Begin
    //Lleno el arreglo de opciones de impresi�n
    Padr_Acti_Opci_Impresion.Execute;
		//Asigno las opciones de impresi�n
    For I := 0 To 12 Do
    	Opciones_Impresion[I] := Arreglo_Opciones[I];
    //Elimino las firmas, fecha de impresi�n, p�gina, etc, que no esten
    //seleccionados en las opciones de impresi�n
    Elegir_Firmas;
    //Asigno la referencia activa al parametro de la consulta
    //del informe
    QCostura.ParamByName('CONS_REFE_VARIACION').AsInteger :=
    	Consulta.FieldByName('CONS_REFE_VARIACION').AsInteger;
    QCostura.Open;
    Show;
  End;
end;

end.
