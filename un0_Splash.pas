unit un0_Splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, jpeg, registry;

type
  Tfn0_Splash = class(TForm)
    Image1: TImage;
    LEmpresa: TLabel;
    LVersion: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn0_Splash: Tfn0_Splash;

implementation

{$R *.DFM}

procedure Tfn0_Splash.FormCreate(Sender: TObject);
Var
 Reg:TRegistry;
begin
  Reg:=TRegistry.Create;
  Try
   Reg.RootKey:= HKEY_LOCAL_MACHINE;
   if Not Reg.OpenKey('\Software\PCP4\', True) Then
      //Crearla
       LEmpresa.Caption := 'No se encuentra registrado.'
   Else
	   LEmpresa.Caption := Reg.ReadString('EMPRESA');
  finally
    Reg.CloseKey;
    Reg.Free;
    If LEmpresa.Caption = '' Then
    	LEmpresa.Caption := 'No se encuentra registrado.';
  End;
end;

end.
