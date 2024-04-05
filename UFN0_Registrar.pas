unit UFN0_Registrar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, 
  dxCntner, dxEditor, dxEdLib, ExtCtrls, StdCtrls, SoCtrls, SCLDBLabel,
  TB2Dock, TB2Toolbar, TBX, ActnList, ImgList, TB2Item, HCMngr,
  LMDCustomComponent, LMDSysInfo, Registry, JclSysInfo, DECUtil, Hash, Cipher;

type
  TFN0_Registrar = class(TForm)
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    Imag_Seguridad: TImage;
    ENombre_Empresa: TdxEdit;
    ESerie: TdxEdit;
    EClave: TdxEdit;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    Acciones: TActionList;
    Imagenes: TImageList;
    Acti_Registrar: TAction;
    Acti_Salir: TAction;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    LMDSysInfo1: TLMDSysInfo;
    Convertir: THashManager;
    procedure EClaveChange(Sender: TObject);
    procedure ENombre_EmpresaChange(Sender: TObject);
    procedure Acti_RegistrarExecute(Sender: TObject);
    procedure Acti_SalirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN0_Registrar: TFN0_Registrar;

implementation

uses misproc2;

{$R *.DFM}

{****************************************************************
Procedimiento   : EClaveChange
Objetivo        : Habilitar / deshabilitar registro
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Julio 29 de 2005
Versión         : SAD 1.0.0
*****************************************************************}
procedure TFN0_Registrar.EClaveChange(Sender: TObject);
begin
  //Habilitar / deshabilitar registro
  Acti_Registrar.Enabled := (EClave.Text <> EmptyStr);
end;

{****************************************************************
Procedimiento   : ENombre_EmpresaChange
Objetivo        : Convertir
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Julio 29 de 2005
Versión         : SAD 1.0.0
*****************************************************************}
procedure TFN0_Registrar.ENombre_EmpresaChange(Sender: TObject);
begin
 Convertir.CalcString(ENombre_Empresa.Text +
   GetVolumeSerialNumber(Copy(LMDSysInfo1.Environment.Values['HOMEDRIVE'], 1, 1)));
 ESerie.Text := Convertir.DigestString[fmtMIME64];
end;

{****************************************************************
Procedimiento   : Acti_RegistrarExecute
Objetivo        : Guardar cambios en el register
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Julio 29 de 2005
Versión         : SAD 1.0.0
*****************************************************************}
procedure TFN0_Registrar.Acti_RegistrarExecute(Sender: TObject);
Var
 Reg:TRegistry;
begin
  Reg:=TRegistry.Create;
  Try
    Reg.RootKey:= HKEY_LOCAL_MACHINE;
    try
      if Not Reg.OpenKey('\Software\PCP4\', True) Then
        Reg.CreateKey('\Software\PCP4\');      //Crearla
      Reg.WriteString('EMPRESA', ENombre_Empresa.Text);
      Reg.WriteString('LICENCIA', EClave.Text);
    except
    end;
  finally
    Reg.CloseKey;
    Reg.Free;
  End;
  Close;
end;

{****************************************************************
Procedimiento   : Acti_SalirExecute
Objetivo        : Cerrar ventana
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Julio 29 de 2005
Versión         : SAD 1.0.0
*****************************************************************}
procedure TFN0_Registrar.Acti_SalirExecute(Sender: TObject);
begin
  Close;
end;

{****************************************************************
Procedimiento   : FormClose
Objetivo        : Destruir ventana
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Julio 29 de 2005
Versión         : SAD 1.0.0
*****************************************************************}
procedure TFN0_Registrar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	//Destruir ventana
//	Release;
end;

procedure TFN0_Registrar.FormShow(Sender: TObject);
begin
{  with Self do
    SetWindowPos(Handle, HWND_TOPMOST,
               Left, Top, Width, Height,
               // window-positioning options
               SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);}
end;

procedure TFN0_Registrar.FormCreate(Sender: TObject);
begin
  Imag_Seguridad.Picture.Bitmap.Assign(ResJpegStream('ACCESO'));
end;

end.
