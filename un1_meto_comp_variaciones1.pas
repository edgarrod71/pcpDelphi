unit un1_meto_comp_variaciones1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, ufra_fotografiaDB,
  Boxes, PCPProceso, HTMLabel;

type
  Tfn1_meto_comp_variaciones1 = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    dxDBMemo1: TdxDBMemo;
    Tabla_VentanaCONS_COMP_VARIACION: TIntegerField;
    Tabla_VentanaCONS_COMP_GRUPO: TIntegerField;
    Tabla_VentanaCODI_COMP_VARIACION: TStringField;
    Tabla_VentanaNOMB_COMP_VARIACION: TStringField;
    Tabla_VentanaDESCRIPCION: TStringField;
    Tabla_VentanaIMAGEN: TBlobField;
    Tabla_VentanaAJUS_IMAGEN: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    quer_comp_grupos: TQuery;
    data_comp_grupos: TDataSource;
    quer_comp_gruposCONS_COMP_GRUPO: TIntegerField;
    quer_comp_gruposNOMB_COMP_GRUPO: TStringField;
    pane_imagen: Tffra_fotografiaDB;
    Tabla_VentanaIMAG_ESQU_COSTURA: TBlobField;
    Tabla_VentanaAJUS_IMAG_ESQU_COSTURA: TIntegerField;
    ffra_fotografiaDB2: Tffra_fotografiaDB;
    labe_imagen: THTMLabel;
    SCLDBLabel5: TSCLDBLabel;
    quer_comp_gruposALTO: TIntegerField;
    quer_comp_gruposANCHO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure darTamanoFoto(Sender: TObject);
    procedure Tabla_VentanaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_meto_comp_variaciones1: Tfn1_meto_comp_variaciones1;

implementation

uses _func_varias, _cons_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_variaciones1.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  AbrirDataSet(quer_comp_grupos);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : darTamanoFoto
Objetivo        : Asigna el tamaño a la foto del componente, según el grupo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_meto_comp_variaciones1.darTamanoFoto(
  Sender: TObject);
begin
  inherited;
  pane_imagen.Width := quer_comp_grupos.FieldByName('ancho').asInteger;
  pane_imagen.Height := quer_comp_grupos.FieldByName('alto').asInteger + pane_imagen.fram_pane_stretch.Height;
  labe_imagen.HTMLText.Clear;
  labe_imagen.HTMLText.Add(Format(cosTamanoComponente, [intToStr(quer_comp_grupos.FieldByName('ancho').asInteger), IntToStr(quer_comp_grupos.FieldByName('alto').asInteger)]));
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterScroll
Objetivo        : Actualizar la ventana al cambiar de registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_meto_comp_variaciones1.Tabla_VentanaAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  darTamanoFoto(Self);
end;

end.
