unit ufra_ordenar;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Boxes, PCPFrame, Db, RxLookup, PCPLookUpComboEdit, TBXDkPanels,
  DBTables, kbmMemTable;

type
  Tffra_ordenar = class(TFrame)
    pane1: TPCPFrame;
    Bevel1: TBevel;
    pane2: TPCPFrame;
    Bevel2: TBevel;
    pane3: TPCPFrame;
    comb1: TPCPLookUpComboEdit;
    asce1: TTBXRadioButton;
    desc1: TTBXRadioButton;
    comb2: TPCPLookUpComboEdit;
    asce2: TTBXRadioButton;
    desc2: TTBXRadioButton;
    comb3: TPCPLookUpComboEdit;
    asce3: TTBXRadioButton;
    desc3: TTBXRadioButton;
    data1: TDataSource;
    data2: TDataSource;
    data3: TDataSource;
    quer_ordenar: TQuery;
    quer_ordenarNOMB_CAMPO: TStringField;
    quer_ordenarTEXTO: TStringField;
    tabl_temporal: TkbmMemTable;
    tabl_temporalNOMB_CAMPO: TStringField;
    tabl_temporalTEXTO: TStringField;
    procedure comb1Change(Sender: TObject);
    procedure comb2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function TextoOrdenar(peConOrderBy : Boolean = True; peSeparador : String = ',')       : String;
    Procedure doEjecutarFrame(anomb_modulo : String); Overload;
    Procedure doEjecutarFrame(peDataSet : TDataSet); Overload;
  end;

implementation

uses _func_varias, _cons_pcp, _func_db;

{$R *.DFM}
{****************************************************************
Procedimiento   : doEjecutarFrame
Objetivo        : Inicializar el frame con el nombre del módulo
                  que se quiere mostrar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_ordenar.doEjecutarFrame(anomb_modulo : String);
Begin
      Try
          quer_ordenar.paramByName('nomb_modulo').Value := anomb_modulo;
          quer_ordenar.Open;
      Except
          On e:Exception do
                EjecutarMensajeError(e.Message);
      End;
End;
{---------------------------OVERLOAD------------------------------------}
{RC20.6}
{****************************************************************
Procedimiento   : doEjecutarFrame (overload)
Objetivo        : Inicializar el frame con el DataSet que se quiere ordenar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_ordenar.doEjecutarFrame(peDataSet : TDataSet);
Var
    var_I   : Integer;
Begin
    if tabl_temporal.Active then tabl_temporal.Close;
    //Validar el DS
    if (peDataSet = Nil) Then
    Begin
        Raise Exception.Create(Format(cosErrorFuenteDatosNoValida, ['']));
        Exit;
    End;
    //Insertar los registros en la tabla temporal
    tabl_temporal.Open;
    For var_i := 1 to peDataSet.FieldCount do
    Begin
        Tabl_Temporal.Insert;
        Tabl_Temporal.FieldByName('nomb_campo').Value := peDataSet.Fields[var_i - 1].FieldName;
        if (TField(peDataSet.Fields[var_i - 1]).DisplayLabel <> '') Then
            Tabl_Temporal.FieldByName('texto').Value := TField(peDataSet.Fields[var_i - 1]).FieldName
        Else
            Tabl_Temporal.FieldByName('texto').Value := peDataSet.Fields[var_i - 1].FieldName;
        tabl_temporal.Post;
    End;
    //Reasignar los DSource
    data1.DataSet := tabl_temporal;
    data2.DataSet := tabl_temporal;
    data3.DataSet := tabl_temporal;
End;

{****************************************************************
Procedimiento   : comb1Change
Objetivo        : Actualizar el combo 2 cuando cambie el 1
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_ordenar.comb1Change(Sender: TObject);
begin
        SetControlEnabled(pane2, comb1.text <> '');
        if comb1.Text = '' Then comb2.ClearValue;
end;
{****************************************************************
Procedimiento   : comb2Change
Objetivo        : Actualizar el combo 3 cuando cambie el 2
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_ordenar.comb2Change(Sender: TObject);
begin
        SetControlEnabled(pane3, comb2.text <> '');
        if comb2.Text = '' Then comb3.ClearValue;
end;
{****************************************************************
Procedimiento   : TextoOrdenar
Objetivo        : Genera el texo de ordenar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Function Tffra_ordenar.TextoOrdenar(peConOrderBy : Boolean = True; peSeparador : String = ',')       : String;
Begin
    Result := '';
    //Si todos están vacios, salir
    If (comb1.text = '') and (comb2.text = '') and (comb3.text = '') then Exit;
    //Agregar el order by
    if peConOrderBy Then
       Result := 'Order by ';
    //Campo 1
    if comb1.Text <> '' Then 
    Begin
        Result := Result + comb1.keyValue;
        if peConOrderBy Then
           If desc1.Checked then Result := Result + ' desc';
    End;
    //Campo 2
    if comb2.Text <> '' Then
    Begin
        Result := Result + peSeparador +comb2.keyValue;
        if peConOrderBy Then
            If desc2.Checked then Result := Result + ' desc';
    End;
    //Campo 3
    if comb3.Text <> '' Then
    Begin
        Result := Result + peSeparador +comb3.keyValue;
        if peConOrderBy Then
            If desc3.Checked then Result := Result + ' desc';
    End;
end;

end.
