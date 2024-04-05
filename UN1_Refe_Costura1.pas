unit UN1_Refe_Costura1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPFrame, ufra_fotografiaDB, dfsSplitter, _vent_child,
  PCPProceso;

type
  TFN1_Refe_Costura1 = class(T_fvent_modal)
    Tabla_VentanaCONS_REFE_VARI_COSTURA: TIntegerField;
    Tabla_VentanaCONS_REFE_VARIACION: TIntegerField;
    Tabla_VentanaTALL_MUESTRA: TStringField;
    Tabla_VentanaIMAGEN: TBlobField;
    Tabla_VentanaAJUS_IMAGEN: TIntegerField;
    Tabla_VentanaOBSERVACIONES: TMemoField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaDETA_IMAGEN: TBlobField;
    Tabla_VentanaAJUS_DETA_IMAGEN: TIntegerField;
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
    QReferenciaCONS_REFE_TEMPORADA: TIntegerField;
    QReferenciaCODI_REFE_TEMPORADA: TStringField;
    QReferenciaNOMB_REFE_TEMPORADA: TStringField;
    DSQReferencia: TDataSource;
    Bevel1: TBevel;
    Panel2: TPanel;
    dfsSplitter1: TdfsSplitter;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    ffra_fotografiaDB2: Tffra_fotografiaDB;
    PCPFrame1: TPCPFrame;
    dxDBMemo1: TdxDBMemo;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    procedure padr_acti_imprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Maestro : T_fvent_child;
  end;

var
  FN1_Refe_Costura1: TFN1_Refe_Costura1;

implementation

uses URN1_Refe_Costura1, _func_varias;

{$R *.DFM}

{****************************************************************
Procedimiento   : padr_acti_imprimirExecute
Objetivo        : Creo el módulo de impresión de hoja de Costura de
									referencias
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 27 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Refe_Costura1.padr_acti_imprimirExecute(Sender: TObject);
Var
	I : Integer;
begin
//  inherited;
	//Verifico que no exista el informe
	If ExisteVentana(TRN1_Refe_Costura1) Then
  	Exit;
  //Creo el informe
	RN1_Refe_Costura1 := TRN1_Refe_Costura1.Create(Self);
	With RN1_Refe_Costura1 Do
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
    QCostura.ParamByName('CONS_REFE_VARIACION').AsInteger :=
    	Tabla_Ventana.FieldByName('CONS_REFE_VARIACION').AsInteger;
    AbrirDataSet(QCostura);
    Show;
  End;
end;

end.
