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
        Unit            : _InputForm
        Objetivo        : Ventana de solicitud de valores con interacción
                          del usuario.
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero 20 de 2004
        Versión         : pcp4000
*******************************************************************}
{$I DEFINICIONES.INC}

unit _InputForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, RxLookup, PCPLookUpComboEdit, dxEdLib, dxCntner,
  dxEditor, dxExEdtr, dxCurrencyEditPCP, ExtCtrls, SohoBtns, SCLButton,
  SCLPropiedadesForm, SCLPanelLabel, JvExControls, JvComponent,
  JvGradientHeaderPanel, TBXDkPanels, TBXButtonSCL;

type
  T_fInputForm = class(TForm)
    Panel1: TPanel;
    pan_0: TPanel;
    edi_0: TdxCurrencyEditPCP;
    pan_1: TPanel;
    edi_1: TdxCurrencyEditPCP;
    pan_2: TPanel;
    edi_2: TdxEdit;
    pan_3: TPanel;
    edi_3: TRadioButton;
    edis: TRadioButton;
    Pan_4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    bot_Aceptar: TTBXButtonSCL;
    bot_cancelar: TTBXButtonSCL;
    que_consulta: TQuery;
    dat_consulta: TDataSource;
    edi_4: TPCPLookUpComboEdit;
    Variables: TSCLPropiedadesForm;
    titu_ventana: TJvGradientHeaderPanel;
    procedure CreateParams(Var Params: TCreateParams); Override;
    procedure bot_AceptarClick(Sender: TObject);
    procedure bot_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure titu_ventanaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    Resultado:Variant;
    tip_variable:Integer;
    { Private declarations }
  public
    { Public declarations }
    Function fInput(Titulo, Texto:String; TipoVariable:Integer; ValorActual : Variant):Variant;
    Function fInputCombo(Titulo, Texto:String; SQL,KeyField, ListField:String; ValorActual : Variant):Variant;OverLoad;
    Function fInputCombo(Titulo, Texto:String; SQL,KeyField, ListField,DataBase:String; ValorActual : Variant):Variant;OverLoad;
  end;


var
  _fInputForm: T_fInputForm;

implementation
uses _cons_pcp
    {$IFDEF PCP4} , _func_varias, _cons_colores, _mdi, _Traductor,
  _vari_pcp
    {$ENDIF}

;
{$R *.DFM}

{****************************************************************
Procedimiento   : CreateParams
Objetivo        : Crea la ventana con parametros propios (sin borde)
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 12 de 2003
Versión         : pcp4000
*****************************************************************}
procedure T_fInputForm.CreateParams(Var Params: TCreateParams);
Begin
  //Eliminación del borde en la ventana-jmv:v0.3
  //....................................................................
  inherited CreateParams(Params);
  Params.Style := Params.Style and not WS_OVERLAPPEDWINDOW or WS_BORDER;
End;


procedure T_fInputForm.bot_AceptarClick(Sender: TObject);
begin
        Case tip_Variable of
           tvInteger:Resultado:=edi_0.AsInteger;
           tvPositiveInteger :
           Begin
             if (edi_0.asInteger < 0) Then
             Begin
                Raise Exception.Create(cosErrorNumeroNegativo);
                Exit;
             End;
             Resultado := edi_0.asInteger;
           End;
           tvFloat:Resultado:=edi_1.Value;
           tvPositiveFloat :
           Begin
             if (edi_1.asInteger < 0) Then
             Begin
                Raise Exception.Create(cosErrorNumeroNegativo);
                Exit;
             End;
             Resultado := edi_1.Value;
           End;
           tvString:Resultado:=edi_2.Text;
           tvBoolean:Resultado:=edi_3.Checked;
           tvStringLookUp:Begin
              if edi_4.text <> '' then
                 resultado := edi_4.keyValue
              else
                 resultado := '';
           End;
        End;
        Close;
end;

procedure T_fInputForm.bot_cancelarClick(Sender: TObject);
begin
        Case tip_Variable of
           tvInteger,tvFloat, tvPositiveInteger, tvPositiveFloat:Resultado:=-1;
           tvString:Resultado:='';
           tvBoolean:Resultado:=False;
           tvStringLookUp:resultado := '';
        End;
        Close;
end;

Function T_fInputForm.fInput(Titulo, Texto:String; TipoVariable:Integer; ValorActual : Variant):Variant;
Begin
    //Inicializar variables privadas
    Resultado:='';
    Tip_Variable:=TipoVariable;
    titu_ventana.LabelCaption:=Titulo;
    Panel1.Caption:=Texto;
    Case tip_variable of
        tvInteger,tvPositiveInteger:Pan_0.Visible:=True;
        tvFloat,tvPositiveFloat:Pan_1.Visible:=True;
        tvString:Pan_2.Visible:=True;
        tvBoolean:Pan_3.Visible:=True;
        tvStringLookUp:Pan_4.Visible := True;
    End;
    //Valor actual
    if Not varIsNull(ValorActual) Then
    Begin
        Try
            Case tip_variable of
                tvInteger:edi_0.Value := ValorActual;
                tvFloat:edi_1.Value:= ValorActual;
                tvString:edi_2.Text:=ValorActual;
                tvBoolean:edis.Checked:=ValorActual;
                tvStringLookUp:edi_4.KeyValue := ValorActual;
            End;
        Except
        End;
    End;
    //RC13 - Ubicación del combo en el primer registro
    {$IFDEF PCP4}
    if (tip_variable = tvStringLookUp) and (edi_4.EstaVacio) then
       InicializarCombo(edi_4);
    {$ENDIF}
    ShowModal;
    Result:=Resultado;
    Release;
End;

Function T_fInputForm.fInputCombo(Titulo, Texto:String;
             SQL,KeyField, ListField:String; ValorActual : Variant):Variant;
Begin
    //Inicializar variables privadas
    Resultado:='';
    Tip_Variable:=4;
    titu_ventana.LabelCaption:=Titulo;
    Panel1.Caption:=Texto;
    Case tip_variable of
        tvInteger,tvPositiveInteger:Pan_0.Visible:=True;
        tvFloat, tvPositiveFloat:Pan_1.Visible:=True;
        tvString:Pan_2.Visible:=True;
        tvBoolean:Pan_3.Visible:=True;
        tvStringLookUp:
        Begin
           Pan_4.Visible := True;
           que_Consulta.Sql.Add(SQL);
           edi_4.keyField := keyField;
           edi_4.ListField := ListField;
           que_Consulta.Open;
           Pan_4.Visible := True;
        End;
    End;
    //Valor actual
    Try
        Case tip_variable of
            tvInteger:edi_0.Value := ValorActual;
            tvPositiveInteger : edi_0.Value := Abs(ValorActual);
            tvFloat:edi_1.Value:=ValorActual;
            tvPositiveFloat:edi_1.Value:=Abs(ValorActual);
            tvString:edi_2.Text:=ValorActual;
            tvBoolean:edis.Checked:=ValorActual;
            tvStringLookUp:edi_4.KeyValue := ValorActual;
        End;
    Except
    End;
    //RC13 - Ubicación del combo en el primer registro
    {$IFDEF PCP4}
    if (tip_variable = tvStringLookUp) and (edi_4.EstaVacio) then
       InicializarCombo(edi_4);
    {$ENDIF}
    ShowModal;
    Result:=Resultado;
    Release;
End;


Function T_fInputForm.fInputCombo(Titulo, Texto:String;
             SQL,KeyField, ListField, DataBase:String; ValorActual : Variant):Variant;
Begin
    //Inicializar variables privadas
    Resultado:='';
    Tip_Variable:=4;
    titu_ventana.LabelCaption:=Titulo;
    Panel1.Caption:=Texto;
    que_consulta.databaseName := dataBase;
    Case tip_variable of
        tvInteger, tvPositiveInteger:Pan_0.Visible:=True;
        tvFloat, tvPositiveFloat:Pan_1.Visible:=True;
        tvString:Pan_2.Visible:=True;
        tvBoolean:Pan_3.Visible:=True;
        tvStringLookUp:
        Begin
           Pan_4.Visible := True;
           que_Consulta.Sql.Add(SQL);
           edi_4.keyField := keyField;
           edi_4.ListField := ListField;
           que_Consulta.Open;
           Pan_4.Visible := True;
        End;
    End;
    //Valor actual
    Try
        Case tip_variable of
            tvInteger:edi_0.Value := ValorActual;
            tvPositiveInteger:edi_0.Value := Abs(ValorActual);
            tvFloat:edi_1.Value:=ValorActual;
            tvPositiveFloat:edi_1.Value := Abs(ValorActual);
            tvString:edi_2.Text:=ValorActual;
            tvBoolean:edis.Checked:=ValorActual;
            tvStringLookUp:edi_4.KeyValue := ValorActual;
        End;
    Except
    End;
    //RC13 - Ubicación del combo en el primer registro
    {$IFDEF PCP4}
    if (tip_variable = tvStringLookUp) and (edi_4.EstaVacio) then
       InicializarCombo(edi_4);
    {$ENDIF}
    ShowModal;
    Result:=Resultado;
    Release;
End;


procedure T_fInputForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Release;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fInputForm.FormCreate(Sender: TObject);
begin
        width := 348;
        Height := 130;
        {$IFDEF PCP4}
                AutoHints(Self);
                Color := clZebra;
        {$ENDIF}
	Insertar_Palabras(Self, WKLenguaje);
end;


{****************************************************************
Procedimiento   : TituloMouseDown
Objetivo        : Permite mover la ventana desde el titulo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 12 de 2003
Versión         : pcp4000
*****************************************************************}
procedure T_fInputForm.titu_ventanaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Const
  SC_DragMove = $F012;
begin
  // Mover la ventana desde el panel del titulo-jmv:v0.3
  //....................................................................
  ReleaseCapture;
  Self.Perform(WM_SysCommand, SC_DragMove, 0);
end;


end.
