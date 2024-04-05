unit un1_form_pago_valo_hora_habilidad1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPProceso;

type
  Tfn1_form_pago_valo_hora_habilidad1 = class(T_fvent_modal)
    Tabla_VentanaCONS_FORM_PAGO_HABILIDAD: TIntegerField;
    Tabla_VentanaCODI_FORM_PAGO_HABILIDAD: TStringField;
    Tabla_VentanaVALO_HORA_PRODUCCION: TFloatField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_form_pago_valo_hora_habilidad1: Tfn1_form_pago_valo_hora_habilidad1;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_form_pago_valo_hora_habilidad1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
