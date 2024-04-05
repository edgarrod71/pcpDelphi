unit un1_refe_estampados1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLDBLabel, Db, DBTables, SCLPropiedadesForm, DBActns,
  ActnList, ImgList, dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls,
  TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls, dxExEdtr, ufra_fotografiaDB,
  SoCtrls, PictureContainer, AdvPanel, Boxes, PCPProceso;

type
  Tfn1_refe_estampados1 = class(T_fvent_modal)
    Tabla_VentanaCONS_REFE_ESTAMPADO: TIntegerField;
    Tabla_VentanaCODI_REFE_ESTAMPADO: TStringField;
    Tabla_VentanaNOMB_REFE_ESTAMPADO: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaIMAGEN: TBlobField;
    Tabla_VentanaAJUS_IMAGEN: TIntegerField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_estampados1: Tfn1_refe_estampados1;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Inicializar los controles de la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_estampados1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
