unit UN1_Refe_Diseno1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, ufra_fotografiaDB, Boxes, PCPFrame, dfsSplitter, _vent_child,
  PCPProceso;

type
  TFN1_Refe_Diseno1 = class(T_fvent_modal)
    Tabla_VentanaCONS_REFE_VARI_DISENO: TIntegerField;
    Tabla_VentanaCONS_REFE_VARIACION: TIntegerField;
    Tabla_VentanaTALL_MUESTRA: TStringField;
    Tabla_VentanaIMAGEN: TBlobField;
    Tabla_VentanaAJUS_IMAGEN: TIntegerField;
    Tabla_VentanaOBSERVACIONES: TMemoField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    QReferencia: TQuery;
    QReferenciaCONS_REFERENCIA: TIntegerField;
    QReferenciaCODI_REFERENCIA: TStringField;
    QReferenciaMOLDE: TStringField;
    QReferenciaCODI_INTE_REFERENCIA: TStringField;
    QReferenciaNOMB_REFERENCIA: TStringField;
    QReferenciaCODI_BARRAS: TStringField;
    QReferenciaCONS_REFE_TIPO_VARIACION: TIntegerField;
    QReferenciaCODI_REFE_TIPO_VARIACION: TStringField;
    QReferenciaNOMB_REFE_TIPO_VARIACION: TStringField;
    QReferenciaCONS_REFE_MARCA: TIntegerField;
    QReferenciaCODI_REFE_MARCA: TStringField;
    QReferenciaNOMB_REFE_MARCA: TStringField;
    QReferenciaCONS_REFE_LINEA: TIntegerField;
    QReferenciaCODI_REFE_LINEA: TStringField;
    QReferenciaNOMB_REFE_LINEA: TStringField;
    QReferenciaCONS_REFE_EDAD: TIntegerField;
    QReferenciaCODI_REFE_EDAD: TStringField;
    QReferenciaNOMB_REFE_EDAD: TStringField;
    QReferenciaCONS_REFE_ESTILO: TIntegerField;
    QReferenciaCODI_REFE_ESTILO: TStringField;
    QReferenciaNOMB_REFE_ESTILO: TStringField;
    QReferenciaCONS_REFE_GRUPO: TIntegerField;
    QReferenciaCODI_REFE_GRUPO: TStringField;
    QReferenciaNOMB_REFE_GRUPO: TStringField;
    QReferenciaCONS_SEXO: TIntegerField;
    QReferenciaCODI_SEXO: TStringField;
    QReferenciaNOMB_SEXO: TStringField;
    QReferenciaCONS_REFE_LAVADO: TIntegerField;
    QReferenciaCODI_REFE_LAVADO: TStringField;
    QReferenciaNOMB_REFE_LAVADO: TStringField;
    QReferenciaCONS_REFE_BORDADO: TIntegerField;
    QReferenciaCODI_REFE_BORDADO: TStringField;
    QReferenciaNOMB_REFE_BORDADO: TStringField;
    QReferenciaCONS_REFE_ESTAMPADO: TIntegerField;
    QReferenciaCODI_REFE_ESTAMPADO: TStringField;
    QReferenciaNOMB_REFE_ESTAMPADO: TStringField;
    QReferenciaCONS_REFE_ESTADO: TIntegerField;
    QReferenciaCODI_REFE_ESTADO: TStringField;
    QReferenciaNOMB_REFE_ESTADO: TStringField;
    QReferenciaGRUP_TALLAS: TStringField;
    QReferenciaIMAGEN: TBlobField;
    QReferenciaDESCRIPCION: TStringField;
    QReferenciaFECH_SISTEMA: TDateTimeField;
    QReferenciaUSUA_SISTEMA: TStringField;
    QReferenciaCONS_REFE_VARIACION: TIntegerField;
    SCLDBLabel1: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit3: TdxDBEdit;
    SCLDBLabel4: TSCLDBLabel;
    dxDBEdit4: TdxDBEdit;
    SCLDBLabel5: TSCLDBLabel;
    dxDBEdit5: TdxDBEdit;
    SCLDBLabel6: TSCLDBLabel;
    dxDBEdit6: TdxDBEdit;
    SCLDBLabel7: TSCLDBLabel;
    dxDBEdit7: TdxDBEdit;
    SCLDBLabel8: TSCLDBLabel;
    dxDBEdit8: TdxDBEdit;
    SCLDBLabel9: TSCLDBLabel;
    dxDBEdit9: TdxDBEdit;
    SCLDBLabel10: TSCLDBLabel;
    dxDBEdit10: TdxDBEdit;
    DSQReferencia: TDataSource;
    Bevel1: TBevel;
    Panel1: TPanel;
    PCPFrame1: TPCPFrame;
    dxDBMemo1: TdxDBMemo;
    QReferenciaCONS_REFE_TEMPORADA: TIntegerField;
    QReferenciaCODI_REFE_TEMPORADA: TStringField;
    QReferenciaNOMB_REFE_TEMPORADA: TStringField;
    Panel2: TPanel;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    dfsSplitter1: TdfsSplitter;
    ffra_fotografiaDB2: Tffra_fotografiaDB;
    Tabla_VentanaDETA_IMAGEN: TBlobField;
    Tabla_VentanaAJUS_DETA_IMAGEN: TIntegerField;
    dxDBEdit11: TdxDBEdit;
    SCLDBLabel11: TSCLDBLabel;
    procedure padr_acti_imprimirExecute(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Maestro : T_fvent_child;
  end;

var
  FN1_Refe_Diseno1: TFN1_Refe_Diseno1;

implementation

uses URN1_Refe_Diseno1, _func_varias;

{$R *.DFM}

{****************************************************************
Procedimiento   : padr_acti_imprimirExecute
Objetivo        : Creo el módulo de impresión de hoja de diseño de
									referencias
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 27 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Refe_Diseno1.padr_acti_imprimirExecute(Sender: TObject);
Var
	I : Integer;
begin
//  inherited;
	//Verifico que no exista el informe
	If ExisteVentana(TRN1_Refe_Diseno1) Then
  	Exit;
  //Creo el informe
	RN1_Refe_Diseno1 := TRN1_Refe_Diseno1.Create(Self);
	With RN1_Refe_Diseno1 Do
  Begin
    //Asigno el child a la variable para que filtre la consulta de
    //informes guardados con el título del módulo
    var_vent_child := Maestro;
    //Lleno el arreglo de opciones de impresión
    Maestro.Padr_Acti_Opci_Impresion.Execute;
		//Asigno las opciones de impresión
    For I := 0 To 12 Do
    	Opciones_Impresion[I] := Maestro.Arreglo_Opciones[I];
    //Elimino las firmas, fecha de impresión, página, etc, que no esten
    //seleccionados en las opciones de impresión
    Elegir_Firmas;
    //Asigno la referencia activa al parametro de la consulta
    //del informe
    QDiseno.ParamByName('CONS_REFE_VARIACION').AsInteger :=
    	Tabla_Ventana.FieldByName('CONS_REFE_VARIACION').AsInteger;
    AbrirDataSet(QDiseno);
    Show;
  End;
end;

procedure TFN1_Refe_Diseno1.Tabla_VentanaBeforePost(DataSet: TDataSet);
begin
  inherited;
  GenerarSecuencia(tabla_Ventana);
end;

end.
