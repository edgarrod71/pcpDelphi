unit URN1_Acce_Cons_Plantas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _Informes, Menus, TB2Item, TBX, pcpQRControl, Db, ActnList, DBTables,
  dxfDesigner, QRExport, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ZPropLst, dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame,
  ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar, Qrctrls,
  PCPQRForma, PCPQrImage, PCPQrLabel, QuickRpt, PCPQRBand, PCPQuickReport,
  QrAngLbl, JvExControls, JvComponent, JvGradientHeaderPanel, SCLTabs;

type
  TRN1_Acce_Cons_Plantas = class(TFInformes)
    LTipos: tPCPQrLabel;
    MSecciones: TQRMemo;
    LPLanta: TQRAngledLabel;
    QPlantas: TQuery;
    QSecciones: TQuery;
    DSQPlantas: TDataSource;
    QCantidad: TQuery;
    BTotales: TQRChildBand;
    LTotales: tPCPQrLabel;
    procedure _QRBanda_MaestraBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure LPLantaPrint(sender: TObject; var Value: String);
    procedure _QRPadreBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure BTotalesBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Total_Secciones, Total_Plantas : Integer;
    Arreglo_Totales : Array [1..18] Of Integer;
    procedure Total_Tipos(Memo : TQRMemo; Posicion : Integer);
    procedure Tot_Seccion(Memo : TQRMemo);
  end;

var
  RN1_Acce_Cons_Plantas: TRN1_Acce_Cons_Plantas;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : Total_Tipos
Objetivo        : Adicionar una última línea al memo para el total
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Viernes 23 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TRN1_Acce_Cons_Plantas.Total_Tipos(Memo : TQRMemo; Posicion : Integer);
Var
	I, Total : Integer;
begin
	Total := 0;
	//Recorro las líneas del memo
	For I := 0 To Memo.Lines.Count - 1 Do
  	If Memo.Lines.Strings[I] <> '' Then
    	Inc(Total,StrToInt(Memo.Lines.Strings[I]));
  //Si existen cantidades en el memo adiciono la cantidad en
  //la última línea
  If Total > 0 Then
  	Memo.Lines.Add(IntToStr(Total))
  Else
  	Memo.Lines.Add('');
  //Guardo la cantidad del memo en un vector
  Arreglo_Totales[Posicion] := Arreglo_Totales[Posicion] + Total;
end;

{****************************************************************
Procedimiento   : Tot_Seccion
Objetivo        : Adicionar una línea al memo para el total por sección
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Viernes 23 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TRN1_Acce_Cons_Plantas.Tot_Seccion(Memo : TQRMemo);
Var
	I, Total : Integer;
begin
	Total := 0;
	For I := 0 To Memo.Lines.Count - 1 Do
  	If Memo.Lines.Strings[I] <> '' Then
    	Inc(Total,StrToInt(Memo.Lines.Strings[I]));
  If Total > 0 Then
  	Memo.Lines.Add(IntToStr(Total))
  Else
  	Memo.Lines.Add('');
  Arreglo_Totales[18] := Arreglo_Totales[18] + Total;
end;

{****************************************************************
Procedimiento   : _QRBanda_MaestraBeforePrint
Objetivo        : Arma la matriz con los memos de las cantidades
									por planta, sección y tipo de accesorio
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Viernes 23 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TRN1_Acce_Cons_Plantas._QRBanda_MaestraBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
Var
	I, Tamano_Banda, Total_Seccion : Integer;
  X, Memo, Titulo, Linea : TComponent;
Const
	Tope_Linea = 14;
begin
  inherited;
	Inc(Total_Plantas);
	//Veirifico que la planta tenga asignado Accesorios
	If QCantidad.Locate('CONS_PLANTA', QPlantas.FieldByName('CONS_PLANTA').AsInteger, []) Then
  	PrintBand := True
  Else
  	PrintBand := False;
  //La planta tiene asignado Accesorios
	If PrintBand Then
  Begin
    //Asigno el nombre de la planta al label vertical
    LPLanta.Caption := ' ' + QPlantas.FieldByName('NOMB_PLANTA').AsString + ' ';
    //Asigno a la banda el mismo tanaño de el label vertical
    Tamano_Banda := 0;
    If LPLanta.Height > MSecciones.Height Then
    	Tamano_Banda := LPLanta.Height
    Else
    	Tamano_Banda := MSecciones.Height;
    _QRBanda_Maestra.Height := Tamano_Banda;
    //Limpio el memo de secciones
    MSecciones.Lines.Clear;
    //Voy al primer registro de la consulta de secciones
    //Limpio los memos
    For I := 1 To 17 Do
    Begin
      //Asigno el memo que corresponde al tipo de accesorio
      Memo := _QRBanda_Maestra.FindComponent('TQRMemo_' + IntToStr(I));
      If Memo <> Nil Then
        (Memo As TQRMemo).Lines.Clear;
    End;
    Memo := _QRBanda_Maestra.FindComponent('TQRMemo_Total');
    If Memo <> Nil Then
      (Memo As TQRMemo).Lines.Clear;
    QSecciones.First;
    While Not QSecciones.EOF Do
    Begin
      //Adiciono la sección al memo de secciones
      MSecciones.Lines.Add('  ' + QSecciones.FieldByName('NOMB_SECCION').AsString);
			Total_Seccion := 0;
      //Busco las 13 posibles tipos de accesorios
      For I := 1 To 17 Do
      Begin
        //Asigno el memo que corresponde al tipo de accesorio
				Memo := _QRBanda_Maestra.FindComponent('TQRMemo_' + IntToStr(I));
        If Memo <> Nil Then
        Begin
          //Asigno el titulo que corresponde al tipo de accesorio
          Titulo := _QRBanda_Page_Header.FindComponent('TPCPQRLabel_' + IntToStr(I));
          If Titulo <> Nil Then
            //Busco si la planta en la sección y tipo de accesorio asignados
          	If QCantidad.Locate('CONS_PLANTA;CONS_SECCION;CODI_ACCE_TIPO',
            	VarArrayOf([QPlantas.FieldByName('CONS_PLANTA').AsInteger,
              						QSecciones.FieldByName('CONS_SECCION').AsInteger,
                          (Titulo As TPCPQRLabel).Caption]), []) Then
            Begin
              //Adiciono la cantidad de Accesorios que estan asignados a la planta, sección, tipo de accesorio
              (Memo As TQRMemo).Lines.Add(IntToStr(QCantidad.FieldByName('CANTIDAD').AsInteger));
              Inc(Total_Seccion, QCantidad.FieldByName('CANTIDAD').AsInteger);
            End
            Else
              //Si no tiene asignación de Accesorios
              (Memo As TQRMemo).Lines.Add('');
        End;
      End;
      X := _QRBanda_Maestra.FindComponent('TQRMemo_Total');
      If ((X <> Nil) And (Total_Seccion > 0)) Then
        (X As TQRMemo).Lines.Add(IntToStr(Total_Seccion))
      Else
        (X As TQRMemo).Lines.Add('');
      QSecciones.Next;
    End;
    MSecciones.Lines.Add('  Total');
    //Busco las 13 posibles tipo de accesorio
    For I := 1 To 17 Do
    Begin
      //Asigno el memo que corresponde al tipo de accesorio
      Memo := _QRBanda_Maestra.FindComponent('TQRMemo_' + IntToStr(I));
      If Memo <> Nil Then
        Total_Tipos((Memo As TQRMemo), I);
    End;
    Memo := _QRBanda_Maestra.FindComponent('TQRMemo_Total');
    If Memo <> Nil Then
      Tot_Seccion((Memo As TQRMemo));
    If QSecciones.RecordCount > 0 Then
		Begin
			//Deshabilito las líneas separadoras de las secciones
    	For I := 1 To Total_Secciones - 1 Do
      Begin
				Linea := _QRBanda_Maestra.FindComponent('TPCPQRForma_' + IntToStr(I));
        If Linea <> Nil Then
          (Linea As TPCPQRForma).Enabled := False;
      End;
			//Habilito las líneas separadoras de las secciones
    	For I := 1 To QSecciones.RecordCount Do
      Begin
				Linea := _QRBanda_Maestra.FindComponent('TPCPQRForma_' + IntToStr(I));
        If Linea <> Nil Then
          With (Linea As TPCPQRForma) Do
          Begin
						Enabled := True;
            Top := Tope_Linea * I;
	        End;
      End;
    End;
  End;
end;

{****************************************************************
Procedimiento   : LPLantaPrint
Objetivo        : Le coloca un espacio al principio de la descripción
									de la planta
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Viernes 23 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TRN1_Acce_Cons_Plantas.LPLantaPrint(sender: TObject;
  var Value: String);
begin
  inherited;
	Value := ' ' + Value;
end;

{****************************************************************
Procedimiento   : _QRPadreBeforePrint
Objetivo        : Inicializa las variables
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Viernes 23 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TRN1_Acce_Cons_Plantas._QRPadreBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
Var
	I : Integer;
begin
  inherited;
	Total_Plantas := 0;
  For I := 1 To 18 Do
	  Arreglo_Totales[I] := 0;
end;

{****************************************************************
Procedimiento   : BTotalesBeforePrint
Objetivo        : Muestro los totales del informe
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Viernes 23 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TRN1_Acce_Cons_Plantas.BTotalesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var
	I : Integer;
  X : TComponent;
begin
  inherited;
  //Verifico que se imprima en la última planta
	If Total_Plantas = QPlantas.RecordCount Then
  Begin
  	PrintBand := True;
    //Recorro la cantidad de tipos de accesorios y le asigno el total
    For I := 1 To 17 Do
    Begin
			X := BTotales.FindComponent('TPCPQRLabel_Total' + IntToStr(I));
      If X <> Nil Then
				If Arreglo_Totales[I] > 0 Then
	      	(X As TPCPQRLabel).Caption := IntToStr(Arreglo_Totales[I])
        Else
        	(X As TPCPQRLabel).Caption := ' ';
    End;
    //Asigno el gran total del informe
		X := BTotales.FindComponent('TPCPQRLabel_Gran_Total');
    If X <> Nil Then
	    If Arreglo_Totales[18] > 0 Then
	      	(X As TPCPQRLabel).Caption := IntToStr(Arreglo_Totales[18])
        Else
        	(X As TPCPQRLabel).Caption := ' ';
  End
  Else
  	PrintBand := False;
end;
procedure TRN1_Acce_Cons_Plantas.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
