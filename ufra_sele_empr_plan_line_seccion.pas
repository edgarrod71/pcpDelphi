unit ufra_sele_empr_plan_line_seccion;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, SohoBtns, SCLButton, RxLookup,
  PCPLookUpComboEdit, SoCtrls, SCLDBLabel, TBXDkPanels, TBXButtonSCL;

type
  Tffra_sele_empr_plan_line_seccion = class(TFrame)
    quer_empresas: TQuery;
    quer_empresasCONS_EMPRESA: TIntegerField;
    quer_empresasNOMB_EMPRESA: TStringField;
    data_empresas: TDataSource;
    quer_plantas: TQuery;
    quer_plantasCONS_PLANTA: TIntegerField;
    quer_plantasNOMB_PLANTA: TStringField;
    data_plantas: TDataSource;
    quer_secciones: TQuery;
    quer_seccionesCONS_SECCION: TIntegerField;
    quer_seccionesNOMB_SECCION: TStringField;
    quer_seccionesCONS_LINE_SECCION: TIntegerField;
    data_secciones: TDataSource;
    quer_lineas: TQuery;
    quer_lineasCONS_LINEA: TIntegerField;
    quer_lineasNOMB_LINEA: TStringField;
    quer_lineasCONS_PLAN_LINEA: TIntegerField;
    data_lineas: TDataSource;
    SCLDBLabel34: TSCLDBLabel;
    comb_ubic_empresa: TPCPLookUpComboEdit;
    SCLButton6: TTBXButtonSCL;
    SCLDBLabel36: TSCLDBLabel;
    comb_ubic_planta: TPCPLookUpComboEdit;
    SCLButton8: TTBXButtonSCL;
    SCLDBLabel1: TSCLDBLabel;
    Comb_Ubic_Linea: TPCPLookUpComboEdit;
    SCLButton1: TTBXButtonSCL;
    SCLDBLabel37: TSCLDBLabel;
    comb_ubic_seccion: TPCPLookUpComboEdit;
    SCLButton9: TTBXButtonSCL;
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
  end;

implementation

uses _func_varias, _MDI;

{$R *.DFM}

{****************************************************************
Procedimiento   : Create
Objetivo        : Crea e inicializa el frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Septiembre 20 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_sele_empr_plan_line_seccion.Create(Owner : TComponent);
Begin
    //Heredar la creación    
    Inherited Create(Owner);
    //Abrir las consultas
    AbrirDataSet(quer_empresas);
    AbrirDataSet(quer_plantas);
    AbrirDataSet(quer_lineas);
    AbrirDataSet(quer_secciones);
End;


end.
