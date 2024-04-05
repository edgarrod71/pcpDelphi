unit _Traductor;

interface

Uses TypInfo, _vari_pcp, Sysutils, classes, dbtables ,RxMemDS, stdctrls, SCLDBLabel, forms,
	Series, Chart, TeeShape, GanttCh, ArrowCha, BubbleCh, QRCTRLS, SoRadGrp, ExtCtrls, controls,
  TeEngine;

Var
		WKLenguaje, WKLenguaje_Anterior : Integer;

procedure Insertar_Palabras(Componente : TComponent; Lenguaje : Integer = -1);
procedure Localizar_Palabras(Componente : TComponent; Consulta : TQuery);
procedure Componentes_Query(Componente : TComponent; Consulta : TQuery);
procedure Componentes_Hint_Caption(Componente : TComponent; Consulta : TQuery);
function Traducir(Dato : String; Consulta : TQuery):String;
function Traducir_Palabra(Dato : String):String;

implementation

Uses _mdi;

{****************************************************************
Procedimiento   : Traducir_Palabra
Objetivo        : Traducir palabras
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Julio 12 de 2005
Versión         : pcc Ver. 1.0
*****************************************************************}
function Traducir_Palabra(Dato : String):String;
Const
    Traducir = 'SELECT FIRST 1 TRADUCCION ' +
               'FROM SIS_TRADUCCION ' +
               'WHERE CONS_TIPO_LENGUAJE = :TIPO_LENGUAJE ' +
               ' AND CONS_FRASE IN( ' +
               '  SELECT FIRST 1 CONS_FRASE ' +
               '  FROM SIS_FRASES ' +
               '  WHERE FRASE = :FRASE) ' +
               'ORDER BY CONS_TRADUCCION ';
    Espanol = 'SELECT FIRST 1 F.FRASE AS TRADUCCION ' +
              'FROM SIS_FRASES F, SIS_TRADUCCION T ' +
              'WHERE F.CONS_FRASE = T.CONS_FRASE ' +
              ' AND T.CONS_TIPO_LENGUAJE = :TIPO_LENGUAJE ' +
              ' AND T.TRADUCCION = :FRASE ';
Var
  Consulta : TQuery;
begin
  //Inicializar resultado
  Result := Dato;

	If ((WKLenguaje = WKLenguaje_Anterior) Or (WKLenguaje = -1)) Then
  	Exit;
  //Crear la consulta para la inserción de palabras
	Consulta := TQuery.Create(nil);
  //Asigna la base de datos
  Consulta.DatabaseName := _fMdi.data_base_pcp.Name;
  Consulta.Sql.Add('SELECT * FROM CON_SIS_TRADUCCION(:FRASE, :TIPO_LENGUAJE, :TIPO_LENG_ANTERIOR)');
  Consulta.ParamByName('TIPO_LENGUAJE').AsInteger := WKLenguaje;
  Consulta.ParamByName('TIPO_LENG_ANTERIOR').AsInteger := WKLenguaje_Anterior;

  Result := Dato;
  Consulta.Close;
  Consulta.ParamByName('FRASE').AsString := Dato;
  Consulta.Open;
  If Consulta.RecordCount > 0 Then
    Result := Consulta.FieldByName('TRADUCCION').AsString;

  //Destruir el query
  Consulta.Destroy;
end;

{****************************************************************
Procedimiento   : Insertar_Palabras
Objetivo        : Inicializar la inserción de frases
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Julio 06 de 2005
Versión         : pcc Ver. 1.0
*****************************************************************}
function Traducir(Dato : String; Consulta : TQuery):String;
begin
  Result := Dato;
  Consulta.Close;
  Consulta.ParamByName('FRASE').AsString := Dato;
  Consulta.Open;
  If Consulta.RecordCount > 0 Then
    Result := Consulta.FieldByName('TRADUCCION').AsString;
end;

{****************************************************************
Procedimiento   : Insertar_Palabras
Objetivo        : Inicializar la inserción de frases
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Julio 06 de 2005
Versión         : pcc Ver. 1.0
*****************************************************************}
procedure Insertar_Palabras(Componente : TComponent; Lenguaje : Integer = -1);
Const
  Traducir = 'SELECT FIRST 1 T.TRADUCCION ' +
             'FROM SIS_TRADUCCION T, SIS_FRASES F ' +
             'WHERE T.CONS_TIPO_LENGUAJE = :TIPO_LENGUAJE ' +
             ' AND T.CONS_FRASE = F.CONS_FRASE ' +
             ' AND F.FRASE = :FRASE';
  Traduccion = 'SELECT FIRST 1 TRADUCCION ' +
               'FROM SIS_TRADUCCION ' +
               'WHERE CONS_TIPO_LENGUAJE = :TIPO_LENGUAJE ' +
               ' AND CONS_FRASE IN( ' +
               '  SELECT FIRST 1 F.CONS_FRASE ' +
               '  FROM SIS_FRASES F, SIS_TRADUCCION T ' +
               '  WHERE F.CONS_FRASE = T.CONS_FRASE ' +
               '   AND T.CONS_TIPO_LENGUAJE = :TIPO_LENG_ANTERIOR ' +
               '   AND T.TRADUCCION = :FRASE) ' +
               'ORDER BY CONS_TRADUCCION ';
  Espanol = 'SELECT F.FRASE AS TRADUCCION ' +
            'FROM SIS_FRASES F, SIS_TRADUCCION T ' +
            'WHERE F.CONS_FRASE = T.CONS_FRASE ' +
            ' AND T.CONS_TIPO_LENGUAJE = :TIPO_LENGUAJE ' +
            ' AND T.TRADUCCION = :FRASE';
Var
  Consulta : TQuery;
begin
  If WKLenguaje = WKLenguaje_Anterior Then
    Exit;
  //Crear la consulta para la inserción de palabras
  Consulta := TQuery.Create(nil);
  //Asigna la base de datos
  Consulta.DatabaseName := _fMdi.data_base_pcp.Name;
  If WKLenguaje = -1 Then  Begin
    //Asignar texto de la consulta
    Consulta.Sql.Add('EXECUTE PROCEDURE PRO_SIST_INSER_FRASE(:FRASE)');
  End
  Else Begin
    Consulta.Sql.Add('SELECT * FROM CON_SIS_TRADUCCION(:FRASE, :TIPO_LENGUAJE, :TIPO_LENG_ANTERIOR)');
    Consulta.ParamByName('TIPO_LENGUAJE').AsInteger := WKLenguaje;
    Consulta.ParamByName('TIPO_LENG_ANTERIOR').AsInteger := WKLenguaje_Anterior;
  End;
  Localizar_Palabras(Componente, Consulta);

  //Destruir el query
  Consulta.Destroy;
end;

{****************************************************************
Procedimiento   : Localizar_Palabras
Objetivo        : Localizar palabras e insertarlas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Julio 06 de 2005
Versión         : pcc Ver. 1.0
*****************************************************************}
procedure Localizar_Palabras(Componente : TComponent; Consulta : TQuery);
Var
	I : Integer;
begin
	If Componente = nil Then
  	Exit;
	If Componente.ComponentCount > 1 Then
  Begin
    For I := 0 To Componente.ComponentCount - 1 Do
      Localizar_Palabras(Componente.Components[I], Consulta);
    //Dataset
  	If ((Componente Is TQuery) 	Or
    	(Componente Is TTable) 		Or
      (Componente Is TRxMemoryData)) Then
      Componentes_Query(Componente, Consulta)
    //Hint y Captions
  	Else
      Componentes_Hint_Caption(Componente, Consulta);
  End
  Else Begin
    //Dataset
  	If ((Componente Is TQuery) 	Or
    	(Componente Is TTable) 		Or
      (Componente Is TRxMemoryData)) Then
      Componentes_Query(Componente, Consulta)
    //Hint y Captions
  	Else
      Componentes_Hint_Caption(Componente, Consulta);
  End;
end;

{****************************************************************
Procedimiento   : Componentes_Query
Objetivo        : Componentes TQuery, TTable, TrxMemoryData
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Julio 06 de 2005
Versión         : pcc Ver. 1.0
*****************************************************************}
procedure Componentes_Query(Componente : TComponent; Consulta : TQuery);
Var
	I : Integer;
begin
  Consulta.Close;
	If WKLenguaje = -1 Then
  Begin
    //Si es un TQuery
    If (Componente Is TQuery) Then
      For I := 0 To (Componente As TQuery).FieldCount - 1 Do Begin
        Consulta.ParamByName('FRASE').AsString := Trim((Componente As TQuery).Fields[I].DisplayLabel);
        Try Consulta.ExecSQL; Except End; Consulta.Close;
      End
    //Si es un Ttable
    Else If (Componente Is TTable) Then
      For I := 0 To (Componente As TTable).FieldCount - 1 Do Begin
        Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTable).Fields[I].DisplayLabel);
        Try Consulta.ExecSQL; Except End; Consulta.Close;
      End
    //Si es un TrxMemory
    Else If (Componente Is TRxMemoryData) Then
      For I := 0 To (Componente As TRxMemoryData).FieldCount - 1 Do Begin
        Consulta.ParamByName('FRASE').AsString := Trim((Componente As TRxMemoryData).Fields[I].DisplayLabel);
        Try Consulta.ExecSQL; Except End; Consulta.Close;
      End
  End
  Else Begin
    //Si es un TQuery
    If (Componente Is TQuery) Then
      For I := 0 To (Componente As TQuery).FieldCount - 1 Do
        (Componente As TQuery).Fields[I].DisplayLabel :=
       	Traducir(Trim((Componente As TQuery).Fields[I].DisplayLabel), Consulta)
    //Si es un Ttable
    Else If (Componente Is TTable) Then
      For I := 0 To (Componente As TTable).FieldCount - 1 Do
        (Componente As TTable).Fields[I].DisplayLabel :=
        Traducir(Trim((Componente As TTable).Fields[I].DisplayLabel), Consulta)
    //Si es un TrxMemory
    Else If (Componente Is TRxMemoryData) Then
      For I := 0 To (Componente As TRxMemoryData).FieldCount - 1 Do
        (Componente As TRxMemoryData).Fields[I].DisplayLabel :=
       	Traducir(Trim((Componente As TRxMemoryData).Fields[I].DisplayLabel), Consulta);
  End;
end;

{****************************************************************
Procedimiento   : Componentes_Labels
Objetivo        : Componentes TLabel y TSCLDBLabel
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Julio 06 de 2005
Versión         : pcc Ver. 1.0
*****************************************************************}
procedure Componentes_Hint_Caption(Componente : TComponent; Consulta : TQuery);
Var
	I : Integer;
//  Propiedad : TObject;
//  Prueba : String;
begin
  Consulta.Close;
  If WKLenguaje = -1 Then Begin
    //Verificar si el componente tiene la propiedad Caption
    If IsPublishedProp(Componente, 'Caption') Then Begin
      //Insertar el texto
      Try Consulta.ParamByName('FRASE').AsString := Trim(GetPropValue(Componente, 'Caption')); Except End;
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End;
    //Verificar si el componente tiene la propiedad Hint
		If IsPublishedProp(Componente, 'Hint') Then
    Begin
      //Insertar el texto
      Try Consulta.ParamByName('FRASE').AsString := Trim(GetPropValue(Componente, 'Hint')); Except End;
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End;
    //Verificar si el componente tiene la propiedad ReportTitle
		If IsPublishedProp(Componente, 'ReportTitle') Then Begin
      //Insertar el texto
      Try Consulta.ParamByName('FRASE').AsString := Trim(GetPropValue(Componente, 'ReportTitle')); Except End;
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End;
    //Verificar si el componente tiene la propiedad Text
		If (Componente Is TQRSysData) Then
      If IsPublishedProp(Componente, 'Text') Then Begin
        //Insertar el texto
        Try Consulta.ParamByName('FRASE').AsString := Trim(GetPropValue(Componente, 'Text')); Except End;
        Try Consulta.ExecSQL; Except End; Consulta.Close;
      End;
    //Verificar si el componente tiene la propiedad NombreAMostrar
		If IsPublishedProp(Componente, 'NombreAMostrar') Then Begin
      //Insertar el texto
      Try Consulta.ParamByName('FRASE').AsString := Trim(GetPropValue(Componente, 'NombreAMostrar')); Except End;
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End;
    //Si es un TChart
    If (Componente Is TChart) Then Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChart).TopAxis.Title.Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChart).LeftAxis.Title.Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChart).RightAxis.Title.Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChart).DepthAxis.Title.Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChart).Title.Text.Text);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChart).Foot.Text.Text);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TCustomSeries
    Else If (Componente Is TCustomSeries) Then Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TCustomSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TChartSeries
    Else If (Componente Is TChartSeries) Then Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChartSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TCustomBarSeries
    Else If (Componente Is TCustomBarSeries) Then Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TCustomBarSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TCircledSeries
    Else If (Componente Is TCircledSeries) Then Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TCircledSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TPointSeries
    Else If (Componente Is TPointSeries) Then Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TGanttSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TsohoRadioGroup
    Else If (Componente Is TsohoRadioGroup) Then Begin
      For I := 0 To (Componente As TsohoRadioGroup).Items.Count - 1 Do Begin
        Consulta.ParamByName('FRASE').AsString := Trim((Componente As TsohoRadioGroup).Items.Strings[I]);
        Try Consulta.ExecSQL; Except End; Consulta.Close;
      End;
    End
    //Si es un TRadioGroup
    Else If (Componente Is TRadioGroup) Then Begin
      For I := 0 To (Componente As TRadioGroup).Items.Count - 1 Do Begin
        Consulta.ParamByName('FRASE').AsString := Trim((Componente As TRadioGroup).Items.Strings[I]);
        Try Consulta.ExecSQL; Except End; Consulta.Close;
      End;
    End
  End
  //Traducir
  Else Begin
    //Verificar si el componente tiene la propiedad Caption
    If IsPublishedProp(Componente, 'Caption') Then
      Try
	SetPropValue(TObject(Componente), 'Caption', Traducir(Trim(GetPropValue(Componente, 'Caption')), Consulta));
      Except
      End;
    //Verificar si el componente tiene la propiedad Hint
      If IsPublishedProp(Componente, 'Hint') Then
      Try
	SetPropValue(TObject(Componente), 'Hint', Traducir(Trim(GetPropValue(Componente, 'Hint')), Consulta));
      Except
      End;
    //Verificar si el componente tiene la propiedad ReportTitle
	If IsPublishedProp(Componente, 'ReportTitle') Then
      Try
	SetPropValue(TObject(Componente), 'ReportTitle', Traducir(Trim(GetPropValue(Componente, 'ReportTitle')), Consulta));
      Except
      End;
    //Si es un TQRSysData
    If (Componente Is TQRSysData) Then
      //Verificar si el componente tiene la propiedad ReportTitle
      If IsPublishedProp(Componente, 'Text') Then
        //Traducir
        Try
          SetPropValue(TObject(Componente), 'Text', Traducir(Trim(GetPropValue(Componente, 'Text')), Consulta));
        Except
        End;
    //Verificar si el componente tiene la propiedad NombreAMostrar
      If IsPublishedProp(Componente, 'NombreAMostrar') Then
			//Traducir
      Try
	SetPropValue(TObject(Componente), 'NombreAMostrar', Traducir(Trim(GetPropValue(Componente, 'NombreAMostrar')), Consulta));
      Except
      End;
    //Si es un TChart
    If (Componente Is TChart) Then
    Begin
      (Componente As TChart).Hint := Traducir(Trim((Componente As TChart).Hint), Consulta);
      (Componente As TChart).TopAxis.Title.Caption := Traducir(Trim((Componente As TChart).TopAxis.Title.Caption), Consulta);
      (Componente As TChart).LeftAxis.Title.Caption := Traducir(Trim((Componente As TChart).LeftAxis.Title.Caption), Consulta);
      (Componente As TChart).RightAxis.Title.Caption := Traducir(Trim((Componente As TChart).RightAxis.Title.Caption), Consulta);
      (Componente As TChart).BottomAxis.Title.Caption := Traducir(Trim((Componente As TChart).BottomAxis.Title.Caption), Consulta);
      (Componente As TChart).DepthAxis.Title.Caption := Traducir(Trim((Componente As TChart).DepthAxis.Title.Caption), Consulta);
      (Componente As TChart).Title.Text.Text := Traducir(Trim((Componente As TChart).Title.Text.Text), Consulta);
      (Componente As TChart).Foot.Text.Text := Traducir(Trim((Componente As TChart).Foot.Text.Text), Consulta);
    End
    //Si es un Series
    Else If ((Componente Is TPointSeries) Or
			(Componente Is TFastLineSeries) 		Or
			(Componente Is TLineSeries) 				Or
			(Componente Is TBarSeries) 					Or
			(Componente Is THorizBarSeries) 		Or
			(Componente Is TAreaSeries) 				Or
			(Componente Is TPieSeries) 					Or
			(Componente Is TChartShape) 				Or
			(Componente Is TGanttSeries) 				Or
			(Componente Is TArrowSeries) 				Or
			(Componente Is TBubbleSeries)) Then
    Begin
      //Verificar si el componente tiene la propiedad ReportTitle
      If IsPublishedProp(Componente, 'Title') Then
        //Traducir
        Try
          SetPropValue(TObject(Componente), 'Title', Traducir(Trim(GetPropValue(Componente, 'Title')), Consulta));
        Except
        End;
    End
    //Si es un TsohoRadioGroup
    Else If (Componente Is TsohoRadioGroup) Then
      For I := 0 To (Componente As TsohoRadioGroup).Items.Count - 1 Do
				(Componente As TsohoRadioGroup).Items.Strings[I] := Traducir(Trim((Componente As TsohoRadioGroup).Items.Strings[I]), Consulta)
    //Si es un TRadioGroup
    Else If (Componente Is TRadioGroup) Then
      For I := 0 To (Componente As TRadioGroup).Items.Count - 1 Do
				(Componente As TRadioGroup).Items.Strings[I] := Traducir(Trim((Componente As TRadioGroup).Items.Strings[I]), Consulta)
  End;
end;

{****************************************************************
Procedimiento   : Componentes_Labels
Objetivo        : Componentes TLabel y TSCLDBLabel
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Julio 06 de 2005
Versión         : pcc Ver. 1.0
*****************************************************************}
{procedure Componentes_Hint_Caption(Componente : TComponent; Consulta : TQuery);
Var
	I : Integer;
begin
  Consulta.Close;
  If WKLenguaje = -1 Then
  Begin
    //Si es un TLabel
    If (Componente Is TLabel) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TLabel).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TLabel).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TSCLDBLabel
    Else If (Componente Is TSCLDBLabel) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TSCLDBLabel).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TSCLDBLabel).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TForm
    Else If (Componente Is TForm) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TForm).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TForm).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TPcpFrame
    Else If (Componente Is TPCPFrame) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TPCPFrame).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TPCPFrame).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TAction
    Else If (Componente Is TAction) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TAction).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TAction).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TTBXItem
    Else If (Componente Is TTBXItem) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBXItem).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBXItem).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TTBXSubmenuItem
    Else If (Componente Is TTBXSubmenuItem) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBXSubmenuItem).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBXSubmenuItem).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TTBXItem
    Else If (Componente Is TTBXItem) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBXItem).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBXItem).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TTBSubmenuItem
    Else If (Componente Is TTBSubmenuItem) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBSubmenuItem).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBSubmenuItem).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TTBXVisibilityToggleItem
    Else If (Componente Is TTBXVisibilityToggleItem) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBXVisibilityToggleItem).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBXVisibilityToggleItem).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TTBVisibilityToggleItem
    Else If (Componente Is TTBVisibilityToggleItem) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBVisibilityToggleItem).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBVisibilityToggleItem).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TTBXLabelItem
    Else If (Componente Is TTBXLabelItem) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBXLabelItem).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBXLabelItem).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TdxTabSheet
    Else If (Componente Is TdxTabSheet) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxTabSheet).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxTabSheet).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TTBXDockablePanel
    Else If (Componente Is TTBXDockablePanel) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBXDockablePanel).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBXDockablePanel).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TdxTreeListButtonColumn
    Else If (Componente Is TdxTreeListButtonColumn) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxTreeListButtonColumn).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TdxTreeList
    Else If (Componente Is TdxTreeList) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxTreeList).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TPanel
    Else If (Componente Is TPanel) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TPanel).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TPanel).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TPCPQrImage
    Else If (Componente Is TPCPQrImage) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TPCPQrImage).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TPCPQRBand
    Else If (Componente Is TPCPQRBand) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TPCPQRBand).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un tPCPQrLabel
    Else If (Componente Is tPCPQrLabel) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As tPCPQrLabel).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As tPCPQrLabel).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TPCPQrForma
    Else If (Componente Is TPCPQrForma) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TPCPQrForma).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TPCPQuickReport
    Else If (Componente Is TPCPQuickReport) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TPCPQuickReport).ReportTitle);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TPCPQuickReport).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TZPropList
    Else If (Componente Is TZPropList) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TZPropList).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TTBXToolbar
    Else If (Componente Is TTBXToolbar) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBXToolbar).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TTBXDock
    Else If (Componente Is TTBXDock) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TTBXDock).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TQRSysData
    Else If (Componente Is TQRSysData) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TQRSysData).Text);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TQRSysData).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TQRSubDetail
    Else If (Componente Is TQRSubDetail) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TQRSubDetail).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TQRBand
    Else If (Componente Is TQRBand) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TQRBand).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TQRChildBand
    Else If (Componente Is TQRChildBand) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TQRChildBand).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TQRGroup
    Else If (Componente Is TQRGroup) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TQRGroup).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TQRLabel
    Else If (Componente Is TQRLabel) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TQRLabel).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TQRLabel).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TQRDBText
    Else If (Componente Is TQRDBText) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TQRDBText).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TSCLBtn_Consulta
    Else If (Componente Is TSCLBtn_Consulta) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TSCLBtn_Consulta).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TSCLBtn_Consulta).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TSCLButton
    Else If (Componente Is TSCLButton) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TSCLButton).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TSCLButton).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TSCLPropiedadesForm
    Else If (Componente Is TSCLPropiedadesForm) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TSCLPropiedadesForm).NombreAMostrar);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TSCLPanelLabel
    Else If (Componente Is TSCLPanelLabel) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TSCLPanelLabel).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TSCLPanelLabel).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TdxCheckEdit
    Else If (Componente Is TdxCheckEdit) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxCheckEdit).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxCheckEdit).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TChart
    Else If (Componente Is TChart) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChart).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChart).TopAxis.Title.Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChart).LeftAxis.Title.Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChart).RightAxis.Title.Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChart).DepthAxis.Title.Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChart).Title.Text.Text);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChart).Foot.Text.Text);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TPointSeries
    Else If (Componente Is TPointSeries) Then
		Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TPointSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TFastLineSeries
    Else If (Componente Is TFastLineSeries) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TFastLineSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TLineSeries
    Else If (Componente Is TLineSeries) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TLineSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TBarSeries
    Else If (Componente Is TBarSeries) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TBarSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un THorizBarSeries
    Else If (Componente Is THorizBarSeries) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As THorizBarSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TAreaSeries
    Else If (Componente Is TAreaSeries) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TAreaSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TPieSeries
    Else If (Componente Is TPieSeries) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TPieSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TChartShape
    Else If (Componente Is TChartShape) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TChartShape).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TGanttSeries
    Else If (Componente Is TGanttSeries) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TGanttSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TArrowSeries
    Else If (Componente Is TArrowSeries) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TArrowSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TBubbleSeries
    Else If (Componente Is TBubbleSeries) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TBubbleSeries).Title);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TsohoRadioGroup
    Else If (Componente Is TsohoRadioGroup) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TsohoRadioGroup).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TsohoRadioGroup).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      For I := 0 To (Componente As TsohoRadioGroup).Items.Count - 1 Do
      Begin
        Consulta.ParamByName('FRASE').AsString := Trim((Componente As TsohoRadioGroup).Items.Strings[I]);
        Try Consulta.ExecSQL; Except End; Consulta.Close;
      End;
    End
    //Si es un TRadioGroup
    Else If (Componente Is TRadioGroup) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TRadioGroup).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TRadioGroup).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      For I := 0 To (Componente As TRadioGroup).Items.Count - 1 Do
      Begin
        Consulta.ParamByName('FRASE').AsString := Trim((Componente As TRadioGroup).Items.Strings[I]);
        Try Consulta.ExecSQL; Except End; Consulta.Close;
      End;
    End
    //Si es un TdxDBCheckEdit
    Else If (Componente Is TdxDBCheckEdit) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxDBCheckEdit).Caption);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxDBCheckEdit).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TdxDBCurrencyEdit
    Else If (Componente Is TdxDBCurrencyEdit) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxDBCurrencyEdit).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TdxDBDateEdit
    Else If (Componente Is TdxDBDateEdit) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxDBDateEdit).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TdxDBEdit
    Else If (Componente Is TdxDBEdit) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxDBEdit).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TdxDBTimeEdit
    Else If (Componente Is TdxDBTimeEdit) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxDBTimeEdit).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TdxEdit
    Else If (Componente Is TdxEdit) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxEdit).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TdxPickEdit
    Else If (Componente Is TdxPickEdit) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxPickEdit).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
    //Si es un TdxTimeEdit
    Else If (Componente Is TdxTimeEdit) Then
    Begin
      Consulta.ParamByName('FRASE').AsString := Trim((Componente As TdxTimeEdit).Hint);
      Try Consulta.ExecSQL; Except End; Consulta.Close;
    End
  End
  //Traducir
  Else
  Begin
    //Si es un TLabel
    If (Componente Is TLabel) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TLabel).Action = Nil Then
	      (Componente As TLabel).Caption := Traducir(Trim((Componente As TLabel).Caption), Consulta);
      (Componente As TLabel).Hint := Traducir(Trim((Componente As TLabel).Hint), Consulta);
    End
    //Si es un TSCLDBLabel
    Else If (Componente Is TSCLDBLabel) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TSCLDBLabel).Action = Nil Then
	      (Componente As TSCLDBLabel).Caption := Traducir(Trim((Componente As TSCLDBLabel).Caption), Consulta);
      (Componente As TSCLDBLabel).Hint := Traducir(Trim((Componente As TSCLDBLabel).Hint), Consulta);
    End
    //Si es un TForm
    Else If (Componente Is TForm) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TForm).Action = Nil Then
	      (Componente As TForm).Caption := Traducir(Trim((Componente As TForm).Caption), Consulta);
      (Componente As TForm).Hint := Traducir(Trim((Componente As TForm).Hint), Consulta);
    End
    //Si es un TPcpFrame
    Else If (Componente Is TPCPFrame) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TPCPFrame).Action = Nil Then
	      (Componente As TPCPFrame).Caption := Traducir(Trim((Componente As TPCPFrame).Caption), Consulta);
      (Componente As TPCPFrame).Hint := Traducir(Trim((Componente As TPCPFrame).Hint), Consulta);
    End
    //Si es un TAction
    Else If (Componente Is TAction) Then
    Begin
      (Componente As TAction).Caption := Traducir(Trim((Componente As TAction).Caption), Consulta);
      (Componente As TAction).Hint := Traducir(Trim((Componente As TAction).Hint), Consulta);
    End
    //Si es un TTBXItem
    Else If (Componente Is TTBXItem) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TTBXItem).Action = Nil Then
	      (Componente As TTBXItem).Caption := Traducir(Trim((Componente As TTBXItem).Caption), Consulta);
      (Componente As TTBXItem).Hint := Traducir(Trim((Componente As TTBXItem).Hint), Consulta);
    End
    //Si es un TTBXSubmenuItem
    Else If (Componente Is TTBXSubmenuItem) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TTBXSubmenuItem).Action = Nil Then
	      (Componente As TTBXSubmenuItem).Caption := Traducir(Trim((Componente As TTBXSubmenuItem).Caption), Consulta);
      (Componente As TTBXSubmenuItem).Hint := Traducir(Trim((Componente As TTBXSubmenuItem).Hint), Consulta);
    End
    //Si es un TTBXItem
    Else If (Componente Is TTBXItem) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TTBXItem).Action = Nil Then
	      (Componente As TTBXItem).Caption := Traducir(Trim((Componente As TTBXItem).Caption), Consulta);
      (Componente As TTBXItem).Hint := Traducir(Trim((Componente As TTBXItem).Hint), Consulta);
    End
    //Si es un TTBSubmenuItem
    Else If (Componente Is TTBSubmenuItem) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TTBSubmenuItem).Action = Nil Then
	      (Componente As TTBSubmenuItem).Caption := Traducir(Trim((Componente As TTBSubmenuItem).Caption), Consulta);
      (Componente As TTBSubmenuItem).Hint := Traducir(Trim((Componente As TTBSubmenuItem).Hint), Consulta);
    End
    //Si es un TTBXVisibilityToggleItem
    Else If (Componente Is TTBXVisibilityToggleItem) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TTBXVisibilityToggleItem).Action = Nil Then
	      (Componente As TTBXVisibilityToggleItem).Caption := Traducir(Trim((Componente As TTBXVisibilityToggleItem).Caption), Consulta);
      (Componente As TTBXVisibilityToggleItem).Hint := Traducir(Trim((Componente As TTBXVisibilityToggleItem).Hint), Consulta);
    End
    //Si es un TTBVisibilityToggleItem
    Else If (Componente Is TTBVisibilityToggleItem) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TTBVisibilityToggleItem).Action = Nil Then
	      (Componente As TTBVisibilityToggleItem).Caption := Traducir(Trim((Componente As TTBVisibilityToggleItem).Caption), Consulta);
      (Componente As TTBVisibilityToggleItem).Hint := Traducir(Trim((Componente As TTBVisibilityToggleItem).Hint), Consulta);
    End
    //Si es un TTBXLabelItem
    Else If (Componente Is TTBXLabelItem) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TTBXLabelItem).Action = Nil Then
	      (Componente As TTBXLabelItem).Caption := Traducir(Trim((Componente As TTBXLabelItem).Caption), Consulta);
      (Componente As TTBXLabelItem).Hint := Traducir(Trim((Componente As TTBXLabelItem).Hint), Consulta);
    End
    //Si es un TdxTabSheet
    Else If (Componente Is TdxTabSheet) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TdxTabSheet).Action = Nil Then
	      (Componente As TdxTabSheet).Caption := Traducir(Trim((Componente As TdxTabSheet).Caption), Consulta);
      (Componente As TdxTabSheet).Hint := Traducir(Trim((Componente As TdxTabSheet).Hint), Consulta);
    End
    //Si es un TTBXDockablePanel
    Else If (Componente Is TTBXDockablePanel) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TTBXDockablePanel).Action = Nil Then
	      (Componente As TTBXDockablePanel).Caption := Traducir(Trim((Componente As TTBXDockablePanel).Caption), Consulta);
      (Componente As TTBXDockablePanel).Hint := Traducir(Trim((Componente As TTBXDockablePanel).Hint), Consulta);
    End
    //Si es un TdxTreeListButtonColumn
    Else If (Componente Is TdxTreeListButtonColumn) Then
      (Componente As TdxTreeListButtonColumn).Caption := Traducir(Trim((Componente As TdxTreeListButtonColumn).Caption), Consulta)
    //Si es un TdxTreeList
    Else If (Componente Is TdxTreeList) Then
      (Componente As TdxTreeList).Hint := Traducir(Trim((Componente As TdxTreeList).Hint), Consulta)
    //Si es un TPanel
    Else If (Componente Is TPanel) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TPanel).Action = Nil Then
	      (Componente As TPanel).Caption := Traducir(Trim((Componente As TPanel).Caption), Consulta);
      (Componente As TPanel).Hint := Traducir(Trim((Componente As TPanel).Hint), Consulta);
    End
    //Si es un TPCPQrImage
    Else If (Componente Is TPCPQrImage) Then
      (Componente As TPCPQrImage).Hint := Traducir(Trim((Componente As TPCPQrImage).Hint), Consulta)
    //Si es un TPCPQRBand
    Else If (Componente Is TPCPQRBand) Then
	    (Componente As TPCPQRBand).Hint := Traducir(Trim((Componente As TPCPQRBand).Hint), Consulta)
    //Si es un tPCPQrLabel
    Else If (Componente Is tPCPQrLabel) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As tPCPQrLabel).Action = Nil Then
	      (Componente As tPCPQrLabel).Caption := Traducir(Trim((Componente As tPCPQrLabel).Caption), Consulta);
      (Componente As tPCPQrLabel).Hint := Traducir(Trim((Componente As tPCPQrLabel).Hint), Consulta);
    End
    //Si es un TPCPQrForma
    Else If (Componente Is TPCPQrForma) Then
      (Componente As TPCPQrForma).Hint := Traducir(Trim((Componente As TPCPQrForma).Hint), Consulta)
    //Si es un TPCPQuickReport
    Else If (Componente Is TPCPQuickReport) Then
    Begin
      (Componente As TPCPQuickReport).ReportTitle := Traducir(Trim((Componente As TPCPQuickReport).ReportTitle), Consulta);
      (Componente As TPCPQuickReport).Hint := Traducir(Trim((Componente As TPCPQuickReport).Hint), Consulta);
    End
    //Si es un TZPropList
    Else If (Componente Is TZPropList) Then
      (Componente As TZPropList).Hint := Traducir(Trim((Componente As TZPropList).Hint), Consulta)
    //Si es un TTBXToolbar
    Else If (Componente Is TTBXToolbar) Then
      (Componente As TTBXToolbar).Hint := Traducir(Trim((Componente As TTBXToolbar).Hint), Consulta)
    //Si es un TTBXDock
    Else If (Componente Is TTBXDock) Then
      (Componente As TTBXDock).Hint := Traducir(Trim((Componente As TTBXDock).Hint), Consulta)
    //Si es un TQRSysData
    Else If (Componente Is TQRSysData) Then
    Begin
      (Componente As TQRSysData).Text := Traducir(Trim((Componente As TQRSysData).Text), Consulta);
      (Componente As TQRSysData).Hint := Traducir(Trim((Componente As TQRSysData).Hint), Consulta);
    End
    //Si es un TQRSubDetail
    Else If (Componente Is TQRSubDetail) Then
      (Componente As TQRSubDetail).Hint := Traducir(Trim((Componente As TQRSubDetail).Hint), Consulta)
    //Si es un TQRBand
    Else If (Componente Is TQRBand) Then
      (Componente As TQRBand).Hint := Traducir(Trim((Componente As TQRBand).Hint), Consulta)
    //Si es un TQRChildBand
    Else If (Componente Is TQRChildBand) Then
      (Componente As TQRChildBand).Hint := Traducir(Trim((Componente As TQRChildBand).Hint), Consulta)
    //Si es un TQRGroup
    Else If (Componente Is TQRGroup) Then
      (Componente As TQRGroup).Hint := Traducir(Trim((Componente As TQRGroup).Hint), Consulta)
    //Si es un TQRLabel
    Else If (Componente Is TQRLabel) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TQRLabel).Action = Nil Then
	      (Componente As TQRLabel).Caption := Traducir(Trim((Componente As TQRLabel).Caption), Consulta);
      (Componente As TQRLabel).Hint := Traducir(Trim((Componente As TQRLabel).Hint), Consulta);
    End
    //Si es un TQRDBText
    Else If (Componente Is TQRDBText) Then
      (Componente As TQRDBText).Hint := Traducir(Trim((Componente As TQRDBText).Hint), Consulta)
    //Si es un TSCLBtn_Consulta
    Else If (Componente Is TSCLBtn_Consulta) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TSCLBtn_Consulta).Action = Nil Then
	      (Componente As TSCLBtn_Consulta).Caption := Traducir(Trim((Componente As TSCLBtn_Consulta).Caption), Consulta);
      (Componente As TSCLBtn_Consulta).Hint := Traducir(Trim((Componente As TSCLBtn_Consulta).Hint), Consulta);
    End
    //Si es un TSCLButton
    Else If (Componente Is TSCLButton) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TSCLButton).Action = Nil Then
	      (Componente As TSCLButton).Caption := Traducir(Trim((Componente As TSCLButton).Caption), Consulta);
      (Componente As TSCLButton).Hint := Traducir(Trim((Componente As TSCLButton).Hint), Consulta);
    End
    //Si es un TSCLButton
    Else If (Componente Is TSCLPropiedadesForm) Then
      (Componente As TSCLPropiedadesForm).NombreAMostrar := Traducir(Trim((Componente As TSCLPropiedadesForm).NombreAMostrar), Consulta)
    //Si es un TSCLPanelLabel
    Else If (Componente Is TSCLPanelLabel) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TSCLPanelLabel).Action = Nil Then
	      (Componente As TSCLPanelLabel).Caption := Traducir(Trim((Componente As TSCLPanelLabel).Caption), Consulta);
      (Componente As TSCLPanelLabel).Hint := Traducir(Trim((Componente As TSCLPanelLabel).Hint), Consulta);
    End
    //Si es un TdxCheckEdit
    Else If (Componente Is TdxCheckEdit) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TdxCheckEdit).Action = Nil Then
	      (Componente As TdxCheckEdit).Caption := Traducir(Trim((Componente As TdxCheckEdit).Caption), Consulta);
      (Componente As TdxCheckEdit).Hint := Traducir(Trim((Componente As TdxCheckEdit).Hint), Consulta);
    End
    //Si es un TChart
    Else If (Componente Is TChart) Then
    Begin
      (Componente As TChart).Hint := Traducir(Trim((Componente As TChart).Hint), Consulta);
      (Componente As TChart).TopAxis.Title.Caption := Traducir(Trim((Componente As TChart).TopAxis.Title.Caption), Consulta);
      (Componente As TChart).LeftAxis.Title.Caption := Traducir(Trim((Componente As TChart).LeftAxis.Title.Caption), Consulta);
      (Componente As TChart).RightAxis.Title.Caption := Traducir(Trim((Componente As TChart).RightAxis.Title.Caption), Consulta);
      (Componente As TChart).BottomAxis.Title.Caption := Traducir(Trim((Componente As TChart).BottomAxis.Title.Caption), Consulta);
      (Componente As TChart).DepthAxis.Title.Caption := Traducir(Trim((Componente As TChart).DepthAxis.Title.Caption), Consulta);
      (Componente As TChart).Title.Text.Text := Traducir(Trim((Componente As TChart).Title.Text.Text), Consulta);
      (Componente As TChart).Foot.Text.Text := Traducir(Trim((Componente As TChart).Foot.Text.Text), Consulta);
    End
    //Si es un TPointSeries
    Else If (Componente Is TPointSeries) Then
      (Componente As TPointSeries).Title := Traducir(Trim((Componente As TPointSeries).Title), Consulta)
    //Si es un TFastLineSeries
    Else If (Componente Is TFastLineSeries) Then
      (Componente As TFastLineSeries).Title := Traducir(Trim((Componente As TFastLineSeries).Title), Consulta)
    //Si es un TLineSeries
    Else If (Componente Is TLineSeries) Then
      (Componente As TLineSeries).Title := Traducir(Trim((Componente As TLineSeries).Title), Consulta)
    //Si es un TBarSeries
    Else If (Componente Is TBarSeries) Then
      (Componente As TBarSeries).Title := Traducir(Trim((Componente As TBarSeries).Title), Consulta)
    //Si es un THorizBarSeries
    Else If (Componente Is THorizBarSeries) Then
      (Componente As THorizBarSeries).Title := Traducir(Trim((Componente As THorizBarSeries).Title), Consulta)
    //Si es un TAreaSeries
    Else If (Componente Is TAreaSeries) Then
      (Componente As TAreaSeries).Title := Traducir(Trim((Componente As TAreaSeries).Title), Consulta)
    //Si es un TPieSeries
    Else If (Componente Is TPieSeries) Then
      (Componente As TPieSeries).Title := Traducir(Trim((Componente As TPieSeries).Title), Consulta)
    //Si es un TChartShape
    Else If (Componente Is TChartShape) Then
      (Componente As TChartShape).Title := Traducir(Trim((Componente As TChartShape).Title), Consulta)
    //Si es un TGanttSeries
    Else If (Componente Is TGanttSeries) Then
      (Componente As TGanttSeries).Title := Traducir(Trim((Componente As TGanttSeries).Title), Consulta)
    //Si es un TArrowSeries
    Else If (Componente Is TArrowSeries) Then
      (Componente As TArrowSeries).Title := Traducir(Trim((Componente As TArrowSeries).Title), Consulta)
    //Si es un TBubbleSeries
    Else If (Componente Is TBubbleSeries) Then
      (Componente As TBubbleSeries).Title := Traducir(Trim((Componente As TBubbleSeries).Title), Consulta)
    //Si es un TsohoRadioGroup
    Else If (Componente Is TsohoRadioGroup) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TsohoRadioGroup).Action = Nil Then
	      (Componente As TsohoRadioGroup).Caption := Traducir(Trim((Componente As TsohoRadioGroup).Caption), Consulta);
      (Componente As TsohoRadioGroup).Hint := Traducir(Trim((Componente As TsohoRadioGroup).Hint), Consulta);
      For I := 0 To (Componente As TsohoRadioGroup).Items.Count - 1 Do
				(Componente As TsohoRadioGroup).Items.Strings[I] := Traducir(Trim((Componente As TsohoRadioGroup).Items.Strings[I]), Consulta);
    End
    //Si es un TRadioGroup
    Else If (Componente Is TRadioGroup) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TRadioGroup).Action = Nil Then
	      (Componente As TRadioGroup).Caption := Traducir(Trim((Componente As TRadioGroup).Caption), Consulta);
      (Componente As TRadioGroup).Hint := Traducir(Trim((Componente As TRadioGroup).Hint), Consulta);
      For I := 0 To (Componente As TRadioGroup).Items.Count - 1 Do
				(Componente As TRadioGroup).Items.Strings[I] := Traducir(Trim((Componente As TRadioGroup).Items.Strings[I]), Consulta);
    End;
    //Si es un TSCLPanelLabel
    Else If (Componente Is TSCLPanelLabel) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TSCLPanelLabel).Action = Nil Then
	      (Componente As TSCLPanelLabel).Caption := Traducir(Trim((Componente As TSCLPanelLabel).Caption), Consulta);
      (Componente As TSCLPanelLabel).Hint := Traducir(Trim((Componente As TSCLPanelLabel).Hint), Consulta);
    End
    //Si es un TdxDBCheckEdit
    Else If (Componente Is TdxDBCheckEdit) Then
    Begin
      //Verificar que no tenga acción
			If (Componente As TdxDBCheckEdit).Action = Nil Then
	      (Componente As TdxDBCheckEdit).Caption := Traducir(Trim((Componente As TdxDBCheckEdit).Caption), Consulta);
      (Componente As TdxDBCheckEdit).Hint := Traducir(Trim((Componente As TdxDBCheckEdit).Hint), Consulta);
    End
    //Si es un TdxDBCurrencyEdit
    Else If (Componente Is TdxDBCurrencyEdit) Then
      (Componente As TdxDBCurrencyEdit).Hint := Traducir(Trim((Componente As TdxDBCurrencyEdit).Hint), Consulta);
    //Si es un TdxDBDateEdit
    Else If (Componente Is TdxDBDateEdit) Then
      (Componente As TdxDBDateEdit).Hint := Traducir(Trim((Componente As TdxDBDateEdit).Hint), Consulta);
    //Si es un TdxDBEdit
    Else If (Componente Is TdxDBEdit) Then
      (Componente As TdxDBEdit).Hint := Traducir(Trim((Componente As TdxDBEdit).Hint), Consulta);
    //Si es un TdxDBTimeEdit
    Else If (Componente Is TdxDBTimeEdit) Then
      (Componente As TdxDBTimeEdit).Hint := Traducir(Trim((Componente As TdxDBTimeEdit).Hint), Consulta);
    //Si es un TdxEdit
    Else If (Componente Is TdxEdit) Then
      (Componente As TdxEdit).Hint := Traducir(Trim((Componente As TdxEdit).Hint), Consulta);
    //Si es un TdxPickEdit
    Else If (Componente Is TdxPickEdit) Then
      (Componente As TdxPickEdit).Hint := Traducir(Trim((Componente As TdxPickEdit).Hint), Consulta);
    //Si es un TdxTimeEdit
    Else If (Componente Is TdxTimeEdit) Then
      (Componente As TdxTimeEdit).Hint := Traducir(Trim((Componente As TdxTimeEdit).Hint), Consulta);
  End;
end;}

{****************************************************************
Procedimiento   : Localizar_Palabras
Objetivo        : Localizar palabras e insertarlas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Julio 06 de 2005
Versión         : pcc Ver. 1.0
*****************************************************************}
{procedure Localizar_Palabras(Componente : TComponent; Consulta : TQuery);
Var
	I : Integer;
begin
	If Componente = nil Then
  	Exit;
	If Componente.ComponentCount > 1 Then
  Begin
    For I := 0 To Componente.ComponentCount - 1 Do
      Localizar_Palabras(Componente.Components[I], Consulta);
  End
  Else
  Begin
    //Dataset
  	If ((Componente Is TQuery) 	Or
    	(Componente Is TTable) 		Or
      (Componente Is TRxMemoryData)) Then
      Componentes_Query(Componente, Consulta)
    //Hint y Captions
  	Else If ((Componente Is TLabel) 		Or
    	(Componente Is TSCLDBLabel) Or
      (Componente Is TForm) 			Or
      (Componente Is TPCPFrame) 	Or
      (Componente Is TTBXItem) 	Or
      (Componente Is TTBXSubmenuItem) 	Or
      (Componente Is TTBSubmenuItem) 	Or
      (Componente Is TTBItem) 	Or
      (Componente Is TTBXVisibilityToggleItem) 	Or
      (Componente Is TTBVisibilityToggleItem) 	Or
      (Componente Is TdxTabSheet) 	Or
      (Componente Is TTBXDockablePanel) 	Or
      (Componente Is TdxTreeListButtonColumn) 	Or
      (Componente Is TdxTreeList) 	Or
      (Componente Is TPanel) 	Or
      (Componente Is TPCPQrImage) 	Or
      (Componente Is TPCPQRBand) 	Or
      (Componente Is tPCPQrLabel) 	Or
      (Componente Is TPCPQrForma) 	Or
      (Componente Is TPCPQuickReport) 	Or
      (Componente Is TZPropList) 	Or
      (Componente Is TTBXToolbar) 	Or
      (Componente Is TTBXDock) 	Or
      (Componente Is TQRSysData) 	Or
      (Componente Is TQRSubDetail) 	Or
      (Componente Is TQRBand) 	Or
      (Componente Is TQRChildBand) 	Or
      (Componente Is TQRGroup) 	Or
      (Componente Is TQRLabel) 	Or
      (Componente Is TQRDBText) 	Or
      (Componente Is TSCLBtn_Consulta) 	Or
      (Componente Is TSCLButton) 	Or
      (Componente Is TSCLPropiedadesForm) 	Or
      (Componente Is TSCLPanelLabel) 	Or
      (Componente Is TdxCheckEdit) 	Or
      (Componente Is TPointSeries) 	Or
      (Componente Is TFastLineSeries) 	Or
      (Componente Is TChart) 	Or
      (Componente Is TPointSeries) 	Or
      (Componente Is TFastLineSeries) 	Or
      (Componente Is TFastLineSeries) 	Or
      (Componente Is TLineSeries) 	Or
      (Componente Is TBarSeries) 	Or
      (Componente Is THorizBarSeries) 	Or
      (Componente Is TAreaSeries) 	Or
      (Componente Is TPieSeries) 	Or
      (Componente Is TChartShape) 	Or
      (Componente Is TGanttSeries) 	Or
      (Componente Is TArrowSeries) 	Or
      (Componente Is TBubbleSeries) 	Or
      (Componente Is TsohoRadioGroup) 	Or
      (Componente Is TRadioGroup) 	Or
      (Componente Is TdxDBCheckEdit) 	Or
      (Componente Is TAction)) Then
      Componentes_Hint_Caption(Componente, Consulta);
  End;
end;}

end.
