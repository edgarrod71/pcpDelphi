{ 16/03/2004 05:46:48 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:56 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 04:50:37 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 04:50:16 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 11:40:27 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 11:40:05 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:41:27 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:55 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 01/03/2004 07:39:43 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 01/03/2004 07:38:06 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit un1_refe_estados1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLDBLabel, SCLPropiedadesForm, DBActns, ActnList, Db,
  ImgList, dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, StdCtrls, DBTables, dxExEdtr, SoCtrls,
  PictureContainer, AdvPanel, SCLShape, Boxes, PCPProceso;

type
  Tfn1_refe_estados1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    Tabla_VentanaCONS_REFE_ESTADO: TIntegerField;
    Tabla_VentanaCODI_REFE_ESTADO: TStringField;
    Tabla_VentanaNOMB_REFE_ESTADO: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaEDIT_MAESTRO: TIntegerField;
    Tabla_VentanaMOST_METODOS: TIntegerField;
    Tabla_VentanaMOST_ORDE_TRABAJO: TIntegerField;
    Tabla_VentanaMOST_INVE_MATERIALES: TIntegerField;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBCheckEdit3: TdxDBCheckEdit;
    dxDBCheckEdit4: TdxDBCheckEdit;
    SCLShape1: TSCLShape;
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_estados1: Tfn1_refe_estados1;

implementation

uses _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Ejecutar acciones luego de insertar un registro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_estados1.Tabla_VentanaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  //Valores por defecto
  With tabla_ventana do
  Begin
       FieldbyName('edit_maestro').Value := 1;
       FieldbyName('most_orde_trabajo').Value := 1;
       FieldbyName('most_metodos').Value := 1;
       FieldbyName('most_inve_materiales').Value := 1;
  End;
end;

procedure Tfn1_refe_estados1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
