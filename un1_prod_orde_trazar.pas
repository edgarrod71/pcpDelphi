unit un1_prod_orde_trazar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_prod_avan_general, PictureContainer, DBTables, AdvPanel,
  dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  ufra_mens_atencion, ufra_prod_resp_lote_proceso, dxEditor, dxEdLib,
  StdCtrls, SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit, Boxes,
  PCPFrame, dxDBELib, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, un1_prod_orde_avan_general, TBXDkPanels, TBXButtonSCL,
  PCPProceso;

type
  Tfn1_prod_orde_trazar = class(Tfn1_prod_orde_avan_general)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_orde_trazar: Tfn1_prod_orde_trazar;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_prod_orde_trazar.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
