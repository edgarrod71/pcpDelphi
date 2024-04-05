{ 17/03/2004 02:29:16 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:36 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:40:18 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:46 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Tipo_Contrato1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, DBTables, SCLDBLabel, dxExEdtr, SoCtrls,
  PictureContainer, AdvPanel, RxLookup, PCPLookUpComboEdit, SohoBtns,
  SCLButton, TBXDkPanels, TBXButtonSCL, Boxes, PCPProceso;

type
  TFN1_Para_Tipo_Contrato1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    SCLDBLabel4: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    DSUnidad_Tiempo: TDataSource;
    TUnidad_Tiempo: TTable;
    SCLButton1: TTBXButtonSCL;
    Tabla_VentanaCONS_PERS_TIPO_CONTRATO: TIntegerField;
    Tabla_VentanaCODI_PERS_TIPO_CONTRATO: TStringField;
    Tabla_VentanaNOMB_PERS_TIPO_CONTRATO: TStringField;
    Tabla_VentanaCONS_UNID_MEDI_TIEMPO: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit3: TdxDBEdit;
    Tabla_VentanaDURACION: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Tipo_Contrato1: TFN1_Para_Tipo_Contrato1;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Abril 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Tipo_Contrato1.FormCreate(Sender: TObject);
begin
  inherited;
	//Verifica que si se pueda abrir el DataSet
  AbrirDataSet(TUnidad_Tiempo, False, False);
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
