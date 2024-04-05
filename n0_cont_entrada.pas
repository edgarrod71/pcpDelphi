unit n0_cont_entrada;
{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeación y Control de la Producción                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo está protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducción no autorizada, la ingeniería inversa y la   }
{       distribución total o parcial del código contenido en este   }
{       archivo está estrictamente prohibido y podrá tener severas  }
{       consecuencias civiles y penales.                            }
{                                                                   }
{       RESTRICCIONES                                               }
{                                                                   }
{       ESTE CODIGO Y TODOS LOS ARCHIVOS RELACIONADOS               }
{       (DCU, OBJ, DLL, ETC.) SON CONFIDENCIALES Y SU               }
{       PROPIETARIO ES SOFTCONF LIMITADA.                           }
{                                                                   }
{                                                                   }
{       www.softwaredeconfianza.com                                 }
{       tecnologia@softwaredeconfianza.com                          }
{*******************************************************************
        Unit            : n0_cont_entrada
        Objetivo        : Abrir la ventana de inicio de conexión
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Julio 17 de 2004
        Versión         : pcp4000
*******************************************************************}

interface
  uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, 
  _vent_modal, DBActns, ActnList, Db, ImgList, ExtCtrls, TB2Item, TBX,
  RxMemDS, JvBDELists, TBXDkPanels, TBXButtonSCL, RxLookup,
  PCPLookUpComboEdit, dxEdLib, StdCtrls, ufra_mens_atencion, PCPFrame,
  PictureContainer, DBTables, AdvPanel, dxExEdtr, dxCntner,
  SCLPropiedadesForm, Boxes, PCPProceso, dxEditor, dxDBELib, SoCtrls,
  SCLDBLabel, TB2Dock, TB2Toolbar, cxControls, cxNavigator, cxDBNavigator,
  HCMngr, registry, JclSysInfo, DECUtil, Hash, Cipher, LMDCustomComponent,
  LMDSysInfo;
const
  WM_EJECUTE_LUEGO = WM_USER + 321;

type
  Tfn0_cont_entrada = class(T_fvent_modal)
    data_usuarios: TDataSource;
    data_roles: TDataSource;
    tabl_base_datos: TJvBDEItems;
    tabl_conexiones: TRxMemoryData;
    data_conexiones: TDataSource;
    tabl_base_datosNAME: TStringField;
    tabl_conexionesNAME: TStringField;
    myTabla_ventana: TRxMemoryData;
    PCPFrame1: TPCPFrame;
    Panel3: TPanel;
    pane_titulo: Tffra_mens_atencion;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    labe_conexion: TSCLDBLabel;
    labe_usuario: TSCLDBLabel;
    Label2: TLabel;
    Label3: TLabel;
    imag_seguridad: TImage;
    comb_conexion: TPCPLookUpComboEdit;
    comb_nomb_usuario: TPCPLookUpComboEdit;
    edit_contrasena: TdxEdit;
    comb_rol: TPCPLookUpComboEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    Bevel1: TBevel;
    Shape1: TShape;
    TBXButton1: TTBXButtonSCL;
    TBXButton2: TTBXButtonSCL;
    Label5: TLabel;
    Acti_Registrar: TAction;
    TBXButtonSCL1: TTBXButtonSCL;
    Convertir: THashManager;
    Verificar: THashManager;
    LMDSysInfo1: TLMDSysInfo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure comb_nomb_usuarioChange(Sender: TObject);
    procedure padr_accionesUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure padr_acti_salirExecute(Sender: TObject);
    procedure comb_conexionChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pane_titulofram_labelMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure edit_contrasenaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Acti_RegistrarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    var_datos_correctos : Boolean;
    function GetRegDataStr(Key : String): String;
    procedure EjecuteLuego(var Msg: TMessage); message WM_EJECUTE_LUEGO;
  public
    { Public declarations }
{    function Nombre_Empresa : String;
    function Licencia_Empresa : String;}
    function Contrasena_Empresa : Boolean;
  end;

var
  fn0_cont_entrada: Tfn0_cont_entrada;

implementation

uses _MDI, _cons_pcp, _func_varias, _cons_colores, _func_pcp, _uData,
  UFN0_Registrar, _vari_pcp, _Traductor, misproc2;

{$R *.DFM}

{****************************************************************
Procedimiento   : Nombre_Empresa
Objetivo        : Buscar el nombre de la empresa
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Agosto 06 de 2005
Versión         : SAD 1.0.0
*****************************************************************}
(*function Tfn0_cont_entrada.Nombre_Empresa : String;
Var
 Reg:TRegistry;
begin
  Result:='';
  Reg:=TRegistry.Create;
  Try
   Reg.RootKey:= HKEY_LOCAL_MACHINE;
   if Not Reg.OpenKey('\Software\PCP4\', True) Then
     Reg.CreateKey('\Software\PCP4\');      //Crearla
  finally
    Result := Reg.ReadString('EMPRESA');
    Reg.CloseKey;
    Reg.Free;
  End;
end;*)

{****************************************************************
Procedimiento   : Licencia_Empresa
Objetivo        : Buscar la licencia de la empresa
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Agosto 06 de 2005
Versión         : SAD 1.0.0
*****************************************************************}
(*function Tfn0_cont_entrada.Licencia_Empresa : String;
Var
 Reg:TRegistry;
begin
  Result:='';
  Reg:=TRegistry.Create;
  Try
   Reg.RootKey:= HKEY_LOCAL_MACHINE;
   if Not Reg.OpenKey('\Software\PCP4\', True) Then
     Reg.CreateKey('\Software\PCP4\');     //Crearla
  finally
    Result:=Reg.ReadString('LICENCIA');
    Reg.CloseKey;
    Reg.Free;
  End;
end; *)

{****************************************************************
Procedimiento   : Contrasena_Empresa
Objetivo        : Comparar la contraseña
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Agosto 06 de 2005
Versión         : SAD 1.0.0
*****************************************************************}
function Tfn0_cont_entrada.Contrasena_Empresa : Boolean;
Var Empresa, Licencia{, Valor} : String;
begin
	//Inicializar variables
  Result := False;
  Empresa := GetRegDataStr('EMPRESA'); // Nombre_Empresa
  Licencia := GetRegDataStr('LICENCIA'); //Licencia_Empresa;
//  If Not ((Empresa = '') Or (Licencia = '')) Then Begin
  if (Empresa <> EmptyStr) and (Licencia <> EmptyStr) then begin
    Convertir.CalcString(Empresa + GetVolumeSerialNumber(Copy(LMDSysInfo1.Environment.Values['HOMEDRIVE'], 1, 1)));
    Verificar.CalcString(Empresa + Convertir.DigestString[fmtMIME64]);
    Result := Licencia = Verificar.DigestString[fmtMIME64];
  End;
  If Result Then begin
    Var_Nombre_Empresa := Empresa;
  end
  Else
    Var_Nombre_Empresa := '';
  Acti_Registrar.Enabled := Not Result;
  Acti_Registrar.Visible := Not Result;
end;

procedure Tfn0_cont_entrada.FormCreate(Sender: TObject);
Var
  tabl_base_datos_name,
  var_Nomb_conexion : String;
begin
  inherited;
  pane_titulo.SetHardColors(True);
  Shape1.Pen.Color := clLineaGradiente;
  //Avisar que está abierta la ventana de conexión para que no recargue usuarios
  _fmdi.var_esta_conectando := True;
  // Inicializar las variables de la ventana
  //....................................................................
  var_datos_correctos := False;
  variables.soloLectura := False;
  // Imagen
//  Imag_seguridad.Picture.Bitmap.LoadFromResourceName(MainInstance, 'BMP_ACCESO');
  Imag_Seguridad.Picture.Bitmap.Assign(ResJpegStream('ACCESO'));
  //Cargar las conexiones disponibles (Por BDE, lo que sea Softconf)
  tabl_conexiones.Open;
  tabl_base_datos.Open;
  While not tabl_base_datos.Eof do Begin
    tabl_base_datos_name := tabl_Base_datos.FieldbyName('name').AsString;
    if (pos(UpperCase(cosSoftconf), upperCase(tabl_Base_datos_name)) = 1) Then  Begin
       var_nomb_conexion := tabl_Base_datos_name;
       //Si tiene algo más que softconf, borrarselo
       If UpperCase(var_nomb_Conexion) <> UpperCase(CosSoftconf) Then
           Delete(var_nomb_conexion, 1, Length(cosSoftconf));
       tabl_conexiones.AppendRecord([var_nomb_conexion]);
//       tabl_conexiones.insert;
  //     tabl_conexiones.FieldByName('name').Value := var_nomb_conexion;
//       tabl_conexiones.Post;
    End;
    tabl_base_datos.Next;
  End;
  tabl_base_datos.Close;
  If Not Contrasena_Empresa Then Begin
    comb_conexion.Enabled := False;
    comb_nomb_usuario.Enabled := False;
    edit_contrasena.Enabled := False;
    comb_rol.Enabled := False;
    padr_acti_aceptar.Enabled := False;
    Acti_registrar.Enabled := True;
    Acti_registrar.Visible := True;
  End;
  Insertar_Palabras(Self, WKLenguaje);
end;

procedure Tfn0_cont_entrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;
  _fmdi.var_esta_conectando := False;
  // Verificar si los datos son correctos para continuar la ejecución
  // de PCP
  //....................................................................
  If (not var_datos_correctos) Then Begin
      _fmdi.var_saliendo := True;
      Application.Terminate;
  End;
{  Else  // Se supone que lo está llamando _MDI.ShowModal
    if not _fmdi.var_saliendo then
      _FMDI.Show;}
end;

procedure Tfn0_cont_entrada.padr_acti_aceptarExecute(Sender: TObject);
begin
  inherited;
  //Validar que todos los datos estén llenos
  if (comb_nomb_usuario.Text = '') or (edit_contrasena.Text = '') or
    (comb_conexion.Text = '') Then Begin
      EjecutarMensajeError(cosDatosInicioSesionIncompletos);
      DarFoco(edit_contrasena);
      if (edit_contrasena.Focused) then edit_contrasena.SelectAll;
        Exit;
    End;
  // Validar los datos de la conexion
  //....................................................................
  With _fmdi.data_base_pcp do Begin
    If UpperCase(comb_conexion.Text) <> UpperCase(CosSoftconf) Then
      AliasName := cosSoftconf + comb_conexion.Text
    Else
      AliasName := comb_conexion.Text;
    Params.BeginUpdate;
    params.Clear;
    params.Add('USER NAME=' + comb_nomb_usuario.Text);
    params.Add('PASSWORD=' + edit_contrasena.text);
    if comb_rol.text <> '' Then
      Params.Add('ROLE NAME=' + comb_rol.Text);
    Params.EndUpdate;
    darFoco(Edit_contrasena);
    if Edit_Contrasena.Focused then edit_contrasena.SelectAll;
    Try
      _fmdi.data_base_pcp.Open;
    Except
      on e:Exception do Begin
        EjecutarMensajeBalon(edit_contrasena, cosOlvidoSuContrasena,
                cosNoSePudoIniciarConexion + #13#13 + e.Message, ikError);
        Exit;
      End;
    End;
    //Guardar el ultimo usuario logeado
    labe_usuario.Caption := comb_nomb_usuario.Text;
  End;
  var_datos_correctos := True;
  Close;
end;

procedure Tfn0_cont_entrada.FormActivate(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : comb_nomb_usuarioChange
Objetivo        : Llamar el rol por defecto del usuario seleccionado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn0_cont_entrada.comb_nomb_usuarioChange(Sender: TObject);
begin
  inherited;
  //Llamar el rol por defecto
  CheckAndPostDataSet(myTabla_Ventana);
  If comb_nomb_usuario.Text = EmptyStr Then comb_rol.ClearValue
  Else comb_rol.KeyValue := _fmdi.tabl_usuarios.FieldByName('role_name').AsString;
end;
{****************************************************************
Procedimiento   : padr_accionesUpdate
Objetivo        : Actualiza el estado de las acciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 17 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn0_cont_entrada.padr_accionesUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
//  padr_acti_aceptar.Enabled := (comb_nomb_usuario.Text <>'') and (edit_contrasena.Text <> '') and
//                (comb_conexion.Text <> '');
end;
{****************************************************************
Procedimiento   : padr_acti_salirExecute
Objetivo        : Cierra la ventana
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn0_cont_entrada.padr_acti_salirExecute(Sender: TObject);
begin
  _fmdi.var_saliendo := True;
  inherited;
end;
{****************************************************************
Procedimiento   : comb_conexionChange
Objetivo        : Actualizar los controles cuando cambie la conexión
                  predeterminada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 24 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfn0_cont_entrada.comb_conexionChange(Sender: TObject);
begin
  inherited;
  CheckAndPostDataSet(myTabla_Ventana);
  if comb_conexion.Text = '' Then Exit;
  labe_conexion.Caption := comb_conexion.Text;
  _fmdi.labe_conexion.Caption := comb_conexion.Text;
end;
{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Guardar los cambios antes de cerrar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 26 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfn0_cont_entrada.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  checkAndPostDataSet(myTabla_ventana);
  inherited;
end;
{****************************************************************
Procedimiento   : pane_titulofram_labelMouseDown
Objetivo        : Mover la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 26 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfn0_cont_entrada.pane_titulofram_labelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Const
    SC_DragMove = $F012;
begin
  inherited;
  ReleaseCapture;
  Perform(WM_SysCommand, SC_DragMove, 0);
end;
{****************************************************************
Procedimiento   : edit_contrasenaKeyDown
Objetivo        : Cierrar el balón de error si está visible
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_cont_entrada.edit_contrasenaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  CerrarMensajeBalon;
end;

procedure Tfn0_cont_entrada.Acti_RegistrarExecute(Sender: TObject);
begin
  inherited;
  //Crear el módulo
  FN0_Registrar := TFN0_Registrar.Create(Self);
  With FN0_Registrar Do Begin
    ShowModal;
    If Contrasena_Empresa Then Begin
      comb_conexion.Enabled := True;
      comb_nomb_usuario.Enabled := True;
      edit_contrasena.Enabled := True;
      comb_rol.Enabled := True;
      padr_acti_aceptar.Enabled := True;
      Acti_registrar.Enabled := False;
      Acti_registrar.Visible := False;
    End;
  End;
end;

procedure Tfn0_cont_entrada.FormShow(Sender: TObject);
begin
  inherited;
  PostMessage(Handle, WM_EJECUTE_LUEGO, 0, 0);
{  with Self do
    SetWindowPos(Handle, HWND_TOPMOST,
               Left, Top, Width, Height,
               // window-positioning options
               SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);}

{HWND_BOTTOM Ubica la ventana al final del arreglo de ventanas.
HWND_NOTOPMOST Ubica la ventana por encima de las ventanas no top most
HWND_TOP Ubica la ventana por encima del arreglo de ventanas.
HWND_TOPMOST Ubica la ventana por encima de todas las ventanas no top most
   La ventana mantiene su posición Top Most incluso cuando está desactivada.}
end;

function Tfn0_cont_entrada.GetRegDataStr(Key: String): String;
Var
 Reg:TRegistry;
begin
  Result:='';
  Reg:=TRegistry.Create;
  Try
   Reg.RootKey:= HKEY_LOCAL_MACHINE;
   Reg.OpenKeyReadOnly('\Software\PCP4\')//  Estaba True, no puede crearse aquí
  finally
    Result := Reg.ReadString(Key);
    Reg.Free;
  End;
end;

procedure Tfn0_cont_entrada.EjecuteLuego(var Msg: TMessage);
begin
  comb_conexion.DropDown;
end;

end.
