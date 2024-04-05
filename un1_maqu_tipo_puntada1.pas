unit un1_maqu_tipo_puntada1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, dxExEdtr, dxCntner, Db, DBTables, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, ExtCtrls, dxEditor, dxEdLib, dxDBELib,
  TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls, SCLDBLabel,
  ufra_fotografiaDB, SoCtrls, PictureContainer, AdvPanel, Boxes,
  PCPProceso;

type
  Tfn1_maqu_tipo_puntada1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    Tabla_VentanaCONS_RECU_TIPO_PUNTADA: TIntegerField;
    Tabla_VentanaCODI_RECU_TIPO_PUNTADA: TStringField;
    Tabla_VentanaCARACTERISTICAS: TStringField;
    Tabla_VentanaIMAGEN: TBlobField;
    Tabla_VentanaAJUS_IMAGEN: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    Tabla_VentanaFORMULA: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_tipo_puntada1: Tfn1_maqu_tipo_puntada1;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_maqu_tipo_puntada1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
