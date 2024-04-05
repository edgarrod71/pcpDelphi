{ 05/03/2004 10:40:21 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:50 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Peri_Pago;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, SCLPropiedadesForm, Db, DBTables, ImgList, Menus, TB2Item,
  TBX, ActnList, ExtCtrls, TB2Toolbar, dxTLClms, dxTL, TB2Dock,
  TBXDkPanels, dxCntner, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  dxPageControl, dxExEdtr;

type
  TFN1_Para_Peri_Pago = class(T_fvent_child)
    consultaCODI_PERI_PAGO: TStringField;
    consultaNOMB_PERI_PAGO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCONS_PERI_PAGO: TIntegerField;
    padr_gridCONS_PERI_PAGO: TdxDBGridMaskColumn;
    padr_gridCODI_PERI_PAGO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERI_PAGO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Peri_Pago: TFN1_Para_Peri_Pago;

implementation
{$R *.DFM}

end.
