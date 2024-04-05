{ 05/03/2004 10:40:12 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:39 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit pruebaNoUsar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, EDBImage, ExtCtrls;

type
  Tfpruebanousar = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    EDBImage1: TEDBImage;
    Button1: TButton;
    Panel1: TPanel;
    Button2: TButton;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpruebanousar: Tfpruebanousar;

implementation

{$R *.DFM}

procedure Tfpruebanousar.Edit1Change(Sender: TObject);
begin
        Caption := 'Creando '+edit1.Text;
end;

end.
