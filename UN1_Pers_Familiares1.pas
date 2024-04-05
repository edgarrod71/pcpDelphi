{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeación y Control de la Producción                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo está protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducción no autorizada, la ingeniería inversa y la   }
{       distribución total o parcial del código contenido en este   }
{       archivo está estrictamente prohibido y podrá tener severas  }
{       consecuencias civiles y penales.                            }
{                                                                   }
{       RESTRICCIONES                                               }
{                                                                   }
{       ESTE CODIGO Y TODOS LOS ARCHIVOS RELACIONADOS               }
{       (DCU, OBJ, DLL, ETC.) SON CONFIDENCIALES Y SU               }
{       PROPIETARIO ES SOFTCONF LIMITADA.                           }
{                                                                   }
{                                                                   }
{       www.softwaredeconfianza.com                                 }
{       tecnologia@softwaredeconfianza.com                          }
{*******************************************************************
        Unit            : UN1_Pers_Familiares1
        Objetivo        : Creación y edición de los datos familiares
                          del personal
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 13-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}
unit UN1_Pers_Familiares1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _cons_pcp,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  Db, dxEditor, dxEdLib, dxDBELib, RxLookup, PCPLookUpComboEdit, PCPFrame,
  SCLTabs, dxCntner, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TBX, TB2Item,
  TB2Dock, TB2Toolbar;

  
type
  TFN1_Pers_Familiares1 = class(T_fvent_modal)
    PCFamiliares: TSCLPageControl;
    page_identificacion: TSCLTabSheet;
    PCPFrame11: TPCPFrame;
    SCLDBLabel44: TSCLDBLabel;
    SCLDBLabel45: TSCLDBLabel;
    SCLDBLabel46: TSCLDBLabel;
    SCLDBLabel47: TSCLDBLabel;
    SCLDBLabel48: TSCLDBLabel;
    SCLDBLabel49: TSCLDBLabel;
    SCLDBLabel50: TSCLDBLabel;
    SCLDBLabel51: TSCLDBLabel;
    SCLDBLabel59: TSCLDBLabel;
    SCLDBLabel63: TSCLDBLabel;
    PCPLookUpComboEdit20: TPCPLookUpComboEdit;
    dxEdit13: TdxDBEdit;
    dxEdit14: TdxDBEdit;
    dxEdit15: TdxDBEdit;
    dxEdit16: TdxDBEdit;
    PCPLookUpComboEdit21: TPCPLookUpComboEdit;
    PCPLookUpComboEdit22: TPCPLookUpComboEdit;
    dxDateEdit6: TdxDBDateEdit;
    dxEdit21: TdxDBEdit;
    dxEdit25: TdxDBEdit;
    page_ubicacion: TSCLTabSheet;
    PCPFrame12: TPCPFrame;
    SCLDBLabel52: TSCLDBLabel;
    SCLDBLabel53: TSCLDBLabel;
    SCLDBLabel54: TSCLDBLabel;
    SCLDBLabel55: TSCLDBLabel;
    SCLDBLabel56: TSCLDBLabel;
    SCLDBLabel57: TSCLDBLabel;
    SCLDBLabel58: TSCLDBLabel;
    PCPLookUpComboEdit23: TPCPLookUpComboEdit;
    PCPLookUpComboEdit24: TPCPLookUpComboEdit;
    PCPLookUpComboEdit25: TPCPLookUpComboEdit;
    dxEdit17: TdxDBEdit;
    dxEdit18: TdxDBEdit;
    dxEdit19: TdxDBEdit;
    dxEdit20: TdxDBEdit;
    PCPFrame13: TPCPFrame;
    SCLDBLabel60: TSCLDBLabel;
    SCLDBLabel61: TSCLDBLabel;
    SCLDBLabel62: TSCLDBLabel;
    dxEdit22: TdxDBEdit;
    dxEdit23: TdxDBEdit;
    dxEdit24: TdxDBEdit;
    Tabla_VentanaCONS_PERS_FAMILIAR: TIntegerField;
    Tabla_VentanaCONS_PERSONAL: TIntegerField;
    Tabla_VentanaCONS_PERS_TIPO_DOCUMENTO: TIntegerField;
    Tabla_VentanaNUME_DOCUMENTO: TStringField;
    Tabla_VentanaPRIM_APELLIDO: TStringField;
    Tabla_VentanaSEGU_APELLIDO: TStringField;
    Tabla_VentanaNOMBRES: TStringField;
    Tabla_VentanaCONS_SEXO: TIntegerField;
    Tabla_VentanaCONS_PARENTESCO: TIntegerField;
    Tabla_VentanaFECH_NACIMIENTO: TDateTimeField;
    Tabla_VentanaCONS_PAIS: TIntegerField;
    Tabla_VentanaCONS_DEPARTAMENTO: TIntegerField;
    Tabla_VentanaCONS_CIUDAD: TIntegerField;
    Tabla_VentanaDIRECCION: TStringField;
    Tabla_VentanaTELE_RESIDENCIA: TStringField;
    Tabla_VentanaTELE_OTRO: TStringField;
    Tabla_VentanaTELE_MOVIL: TStringField;
    Tabla_VentanaOCUPACION: TStringField;
    Tabla_VentanaNOMB_EMPRESA: TStringField;
    Tabla_VentanaDIRE_EMPRESA: TStringField;
    Tabla_VentanaTELE_EMPRESA: TStringField;
    Tabla_VentanaCORR_ELECTRONICO: TStringField;
    quer_sexos: TQuery;
    data_sexos: TDataSource;
    quer_tipo_documento: TQuery;
    data_tipo_documento: TDataSource;
    quer_parentescos: TQuery;
    data_parentescos: TDataSource;
    quer_paises: TQuery;
    quer_departamentos: TQuery;
    quer_ciudades: TQuery;
    data_ciudades: TDataSource;
    data_departamentos: TDataSource;
    data_paises: TDataSource;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CambiarPagina(Sender: TObject);
    procedure padr_acti_guardarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var_Cons_Personal : Integer;
    Procedure Ejecutar(peCons_Personal : Integer; peDataSet : TDataSet); Overload;
    Procedure Ejecutar(peCons_Personal : Integer; peAccion : TTipoAccion; peCons_pers_familiar : Integer = 0); Overload;
  end;

var
  FN1_Pers_Familiares1: TFN1_Pers_Familiares1;

implementation

uses _func_varias, _MDI, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 14 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Familiares1.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar las variables
  var_cons_personal := 0;
  //Abrir tablas auxiliares
  AbrirDataSet(quer_sexos);
  AbrirDataSet(quer_tipo_Documento);
  AbrirDataSet(quer_Parentescos);
  AbrirDataSet(quer_Paises);
  AbrirDataSet(quer_Departamentos);
  AbrirDataSet(quer_Ciudades);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : CambiarPagina
Objetivo        : Actualiza los controles al cambiar la página actual
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Familiares1.CambiarPagina(Sender: TObject);
begin
  inherited;
  If PCFamiliares.Focused Then
     PCFamiliares.DoNextTab;
end;
{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecuta la ventana
                  OVERLOAD : DESDE UN DATASET
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure TFN1_Pers_Familiares1.Ejecutar(peCons_Personal : Integer; peDataSet : TDataSet);
Begin
    //Validar los datos de entrada
    if (peDataSet = Nil) Then
    Begin
        Close;
        Raise Exception.Create(cosErrorFuenteDatosNoValida);
    End;
    //Asignar las variables
    var_cons_personal := peCons_Personal;
    data_Ventana.DataSet := peDataSet;
    //Mostrar la ventana
    ShowModal;
End;

{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecuta la ventana
                  OVERLOAD : CON TABLA_VENTANA
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure TFN1_Pers_Familiares1.Ejecutar(peCons_Personal : Integer; peAccion : TTipoAccion;
        peCons_pers_familiar : Integer = 0);
Begin
    //Asignar las variables
    var_cons_personal := peCons_Personal;
    data_Ventana.DataSet := tabla_Ventana;
    tabla_Ventana.Filter := 'cons_personal = ' + IntToStr(var_Cons_personal);
    tabla_ventana.Open;
    Case peAccion of
       taInsert : tabla_Ventana.Insert;
       taEdit   : Begin
                Tabla_Ventana.Locate('cons_pers_familiar', peCons_pers_familiar, []);
                tabla_Ventana.Edit;
       End;
    End;
    //Mostrar la ventana
    ShowModal;
End;
{****************************************************************
Procedimiento   : padr_acti_guardarExecute
Objetivo        : Prepara el registro para guardarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Familiares1.padr_acti_guardarExecute(Sender: TObject);
begin
  //Asignar el consecutivo del personal (maestro)
  if (data_Ventana.DataSet <> Nil) and (data_Ventana.DataSet.State in [dsInsert, dsEdit]) Then
        data_Ventana.DataSet.FieldByName('cons_personal').Value := var_Cons_Personal;
  inherited;
end;

end.
