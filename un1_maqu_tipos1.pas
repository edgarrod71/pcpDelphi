{ 18/03/2004 11:34:45 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 18/03/2004 11:34:35 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 17/03/2004 04:21:13 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:05 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 04:54:02 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 04:53:27 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 08/03/2004 01:20:45 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Tipos de recursos (Modal)  }
unit un1_maqu_tipos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, dxExEdtr, dxCntner, Db, DBTables, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, ExtCtrls, dxEditor, dxEdLib, dxDBELib,
  TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls, SCLDBLabel, SoCtrls,
  PictureContainer, AdvPanel, SohoBtns, SCLButton, RxLookup,
  PCPLookUpComboEdit, Boxes, PCPFrame, dxTL, dxDBCtrl, dxDBGrid,
  SoSplit, TBXDkPanels, TBXButtonSCL, PCPProceso;

type
  Tfn1_maqu_tipos1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    Tabla_VentanaCONS_RECU_TIPO: TIntegerField;
    Tabla_VentanaCONS_RECU_GRUPO: TIntegerField;
    Tabla_VentanaCODI_RECU_TIPO: TStringField;
    Tabla_VentanaNOMB_RECU_TIPO: TStringField;
    Tabla_VentanaCARACTERISTICAS: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLDBLabel4: TSCLDBLabel;
    CBGrupos: TPCPLookUpComboEdit;
    SCLButton1: TTBXButtonSCL;
    DSQGrupos: TDataSource;
    QGrupos: TQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_tipos1: Tfn1_maqu_tipos1;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 6 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_tipos1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas auxiliares
  AbrirDataSet(QGrupos);
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
