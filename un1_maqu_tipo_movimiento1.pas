{ 17/03/2004 04:21:23 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:01 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 04:56:21 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 04:54:45 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 09/03/2004 03:52:15 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 09/03/2004 12:07:28 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 09/03/2004 12:04:54 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Tipos de movimiento de maquinaria (Modal)  }
unit un1_maqu_tipo_movimiento1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, Db, dxExEdtr, dxEdLib, dxDBELib, RxLookup,
  PCPLookUpComboEdit, SCLDBLabel, dxCntner, DBTables, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, ExtCtrls, dxEditor, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, SoCtrls, PictureContainer, AdvPanel,
  Boxes, PCPProceso;

type
  Tfn1_maqu_tipo_movimiento1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    TMovimientos: TTable;
    DSMovimientos: TDataSource;
    Tabla_VentanaCONS_RECU_TIPO_MOVIMIENTO: TIntegerField;
    Tabla_VentanaCONS_FAMI_MOVIMIENTO: TIntegerField;
    Tabla_VentanaCODI_RECU_TIPO_MOVIMIENTO: TStringField;
    Tabla_VentanaNOMB_RECU_TIPO_MOVIMIENTO: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_tipo_movimiento1: Tfn1_maqu_tipo_movimiento1;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_tipo_movimiento1.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  TMovimientos.Open;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
