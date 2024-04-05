unit ufra_mens_atencion2;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, HTMLabel, ExtCtrls, SCLShape;

type
  Tffra_mens_atencion2 = class(TFrame)
    shap_externo: TSCLShape;
    labe_pers_inactivo: THTMLabel;
    shap_linea: TSCLShape;
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}
{****************************************************************
Procedimiento   : FrameResize
Objetivo        : Dar tamaño al componente cuando se haga un resize
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tffra_mens_atencion2.FrameResize(Sender: TObject);
begin
//        ShapLinea.Width := shap_externo.Width - 4;
end;

end.
