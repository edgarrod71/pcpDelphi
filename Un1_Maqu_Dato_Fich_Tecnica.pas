unit Un1_Maqu_Dato_Fich_Tecnica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, _vent_child, PCPQRLabel, Boxes, PCPProceso;

type
  TFn1_Maqu_Dato_Fich_Tecnica = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    EFicha: TdxEdit;
    SCLDBLabel2: TSCLDBLabel;
    DBCodigo_Grupo: TdxDBEdit;
    SCLDBLabel3: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    SCLDBLabel4: TSCLDBLabel;
    ECaracteristicas: TdxEdit;
    SCLDBLabel5: TSCLDBLabel;
    ECodigo_Proveedor: TdxEdit;
    SCLDBLabel6: TSCLDBLabel;
    EProveedor: TdxEdit;
    SCLDBLabel7: TSCLDBLabel;
    DBMarca: TdxDBEdit;
    SCLDBLabel8: TSCLDBLabel;
    DBCodigo_Interno: TdxDBEdit;
    SCLDBLabel9: TSCLDBLabel;
    DBCodigo_Maquina: TdxDBEdit;
    SCLDBLabel10: TSCLDBLabel;
    DBClase: TdxDBEdit;
    SCLDBLabel11: TSCLDBLabel;
    DBNumero_Serie: TdxDBEdit;
    SCLDBLabel12: TSCLDBLabel;
    ECabezote: TdxEdit;
    SCLDBLabel14: TSCLDBLabel;
    SCLDBLabel15: TSCLDBLabel;
    EArrastre: TdxEdit;
    EDientes: TdxEdit;
    SCLDBLabel16: TSCLDBLabel;
    EPie: TdxEdit;
    SCLDBLabel17: TSCLDBLabel;
    SCLDBLabel18: TSCLDBLabel;
    EMotor: TdxEdit;
    SCLDBLabel19: TSCLDBLabel;
    ENumero_Motor: TdxEdit;
    SCLDBLabel20: TSCLDBLabel;
    DBRPM: TdxDBEdit;
    SCLDBLabel21: TSCLDBLabel;
    ETipo_Fase: TdxEdit;
    SCLDBLabel22: TSCLDBLabel;
    EModificaciones: TdxEdit;
    ETransporte: TdxEdit;
    SCLDBLabel13: TSCLDBLabel;
    ELargo: TdxEdit;
    SCLDBLabel23: TSCLDBLabel;
    EAncho: TdxEdit;
    SCLDBLabel24: TSCLDBLabel;
    EAltura: TdxEdit;
    SCLDBLabel25: TSCLDBLabel;
    EAgujas: TdxEdit;
    SCLDBLabel27: TSCLDBLabel;
    EMarca1: TdxEdit;
    SCLDBLabel28: TSCLDBLabel;
    ESistema: TdxEdit;
    SCLDBLabel29: TSCLDBLabel;
    EEquivalencias: TdxEdit;
    SCLDBLabel30: TSCLDBLabel;
    EHilo_Aguja: TdxEdit;
    SCLDBLabel31: TSCLDBLabel;
    EHilo_Bobina: TdxEdit;
    SCLDBLabel32: TSCLDBLabel;
    EMaterial: TdxEdit;
    SCLDBLabel33: TSCLDBLabel;
    SCLDBLabel34: TSCLDBLabel;
    DBCodigo_Tipo: TdxDBEdit;
    DBTipo: TdxDBEdit;
    QGrupos: TQuery;
    QTipos: TQuery;
    QMarcas: TQuery;
    DSQGrupos: TDataSource;
    DSQTipos: TDataSource;
    DSQMarcas: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure padr_acti_imprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Arreglo_Opciones : Array [0..12] of String;
    ventana_child : T_fvent_child;
  end;

var
  Fn1_Maqu_Dato_Fich_Tecnica: TFn1_Maqu_Dato_Fich_Tecnica;

implementation

uses _func_varias, URn1_Maqu_Dato_Fich_Tecnica, UCN1_Maqu_General,
  _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Viernes 16 de julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFn1_Maqu_Dato_Fich_Tecnica.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir tablas auxiliares
  AbrirDataSet(QGrupos);
  AbrirDataSet(QTipos);
  AbrirDataSet(QMarcas);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : padr_acti_imprimirExecute
Objetivo        : Abrir el módulo parametrización de impresión
									de la ficha técnica
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Viernes 16 de julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFn1_Maqu_Dato_Fich_Tecnica.padr_acti_imprimirExecute(
  Sender: TObject);
Var
	I : Integer;
begin
  inherited;
  If ExisteVentana(TRn1_Maqu_Dato_Fich_Tecnica) Then
    Exit;
  Rn1_Maqu_Dato_Fich_Tecnica := TRn1_Maqu_Dato_Fich_Tecnica.Create(Self);
  With Rn1_Maqu_Dato_Fich_Tecnica Do
  Begin
		var_vent_child := ventana_child;
		//Asigno las opciones de impresión
    For I := 0 To 12 Do
    	Opciones_Impresion[I] := Arreglo_Opciones[I];
    //Elimino las firmas, fecha de impresión, página, etc, que no esten
    //seleccionados en las opciones de impresión
    Elegir_Firmas;
		//Recorro los componentes de la forma, si el tag esta entre 1 y 23
    //asigno el text del componente al arreglo en la posicion del tag
		For I := 0 To Fn1_Maqu_Dato_Fich_Tecnica.ComponentCount - 1 Do
    	If ((Fn1_Maqu_Dato_Fich_Tecnica.Components[I].Tag > 0) And
      	(Fn1_Maqu_Dato_Fich_Tecnica.Components[I].Tag < 24)) Then
        If (Fn1_Maqu_Dato_Fich_Tecnica.Components[I] Is TdxEdit) Then
          Arreglo_Datos[Fn1_Maqu_Dato_Fich_Tecnica.Components[I].Tag] :=
						(Fn1_Maqu_Dato_Fich_Tecnica.Components[I] As TdxEdit).Text;
    //Asigno el consecutivo del recurso a la consulta del informe
    QRecursos.ParamByName('CONS_RECURSO').Asinteger :=
      Tabla_Ventana.FieldByName('CONS_RECURSO').Asinteger;
    QRecursos.Open;
    //Recorro los componentes de la forma, si el tag esta entre 1 y 23
    //asigno el text arreglo al componente de la posicion del tag
    For I := 0 To Rn1_Maqu_Dato_Fich_Tecnica.ComponentCount - 1 Do
      If ((Rn1_Maqu_Dato_Fich_Tecnica.Components[I].Tag > 0) And
        (Rn1_Maqu_Dato_Fich_Tecnica.Components[I].Tag < 24) And
        (Rn1_Maqu_Dato_Fich_Tecnica.Components[I] Is TPCPQRLabel)) Then
        (Rn1_Maqu_Dato_Fich_Tecnica.Components[I] As TPCPQRLabel).Caption :=
          Arreglo_Datos[Components[I].Tag];
		Destroy;
  End;
end;

end.
