{ 17/03/2004 04:17:58 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:09 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:40:58 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:04 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Bodegas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, DBTables, dxExEdtr, dxDBEdtr, SCLDBLabel, RxLookup,
  PCPLookUpComboEdit, SoCtrls, SohoBtns, SCLButton, PictureContainer,
  AdvPanel, ufra_empresa, Boxes, PCPProceso;

type
  TFN1_Para_Bodegas1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    SCLDBLabel13: TSCLDBLabel;
    SCLDBLabel15: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    Tabla_VentanaCODI_BODEGA: TStringField;
    Tabla_VentanaNOMB_BODEGA: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaTELE_1: TStringField;
    Tabla_VentanaTELE_2: TStringField;
    Tabla_VentanaFAX: TStringField;
    Tabla_VentanaTELE_MOVIL: TStringField;
    Tabla_VentanaRESPONSABLE: TStringField;
    Tabla_VentanaDESCRIPCION: TStringField;
    fram_empresa: Tffra_empresa;
    Tabla_VentanaCONS_BODEGA: TIntegerField;
    Tabla_VentanaCONS_EMPRESA: TIntegerField;
    Tabla_VentanaDIRECCION: TStringField;
    Tabla_VentanaCONS_PAIS: TIntegerField;
    Tabla_VentanaCONS_DEPARTAMENTO: TIntegerField;
    Tabla_VentanaCONS_CIUDAD: TIntegerField;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    Quer_responsable: TQuery;
    Data_Quer_responsable: TDataSource;
    Quer_responsableCONS_PERSONAL: TIntegerField;
    Quer_responsableNOMB_COMPLETO: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Bodegas1: TFN1_Para_Bodegas1;

implementation
uses _func_varias, _Traductor;
{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 24 de febrero de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Bodegas1.FormCreate(Sender: TObject);
begin
  inherited;
  InicializarFrame(fram_empresa);
  Quer_responsable.Open;  
  Insertar_Palabras(Self, WKLenguaje);
end;
end.
