unit con_reprocesos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  SohoTabs, ExtCtrls, PCPInfoPanel, StdCtrls, SoGrids, ComCtrls,
  TFlatButtonUnit, PCPButton, Db, DBTables, Grids, TB97, TB97Tlwn, DBGrids,
  SoDBGrid, BaseGrid, AdvGrid, Buttons, dxCntner, dxEditor, dxExEdtr,
  dxEdLib, dxCurrencyEditPCP;

type
  Tfcon_reprocesos = class(TForm)
    Notebook1: TNotebook;
    sohoTabSet1: TsohoTabSet;
    Panel1: TPanel;
    PCPInfoPanel1: TPCPInfoPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edi_cod_planta: TEdit;
    edi_planta: TEdit;
    edi_cod_seccion: TEdit;
    edi_seccion: TEdit;
    edi_fec_inicial: TDateTimePicker;
    edi_fec_final: TDateTimePicker;
    Panel2: TPanel;
    Grid: TsohoStringGrid;
    qyConsulta: TQuery;
    qySecciones: TQuery;
    qyPlantas: TQuery;
    qyconsulta2: TQuery;
    wDetalle: TToolWindow97;
    Panel3: TPanel;
    PCPInfoPanel2: TPCPInfoPanel;
    Panel4: TPanel;
    sohoDBGrid1: TsohoDBGrid;
    Panel5: TPanel;
    bot_cer_detalles: TPCPButton;
    qyDetalle: TQuery;
    qyDetallecod_operaria: TStringField;
    qyDetalleunidades: TIntegerField;
    qyDetallenombre: TStringField;
    dsdetalle: TDataSource;
    Panel6: TPanel;
    PCPButton1: TPCPButton;
    Panel7: TPanel;
    PCPButton4: TPCPButton;
    Panel8: TPanel;
    PCPInfoPanel3: TPCPInfoPanel;
    Label5: TLabel;
    Label6: TLabel;
    edi_cod_planta_1: TEdit;
    edi_des_planta_1: TEdit;
    edi_cod_seccion_1: TEdit;
    edi_des_seccion_1: TEdit;
    Label7: TLabel;
    com_fec_inicial_1: TDateTimePicker;
    Label8: TLabel;
    com_fec_final_1: TDateTimePicker;
    Label9: TLabel;
    edi_ofn_1: TEdit;
    Panel9: TPanel;
    not_1: TNotebook;
    gri_1_1: TAdvStringGrid;
    que_consulta: TQuery;
    PCPButton2: TPCPButton;
    gri_1_2: TAdvStringGrid;
    tab_local: TTable;
    qyOFGeneral: TQuery;
    edi_referencia_1: TEdit;
    PCPButton3: TPCPButton;
    tab_local_2: TTable;
    stor_con_reprocesos_ano: TStoredProc;
    tabl_con_reprocesos_ano: TTable;
    Label10: TLabel;
    edi_ano: TdxCurrencyEditPCP;
    quer_con_reprocesos_ano: TQuery;
    stor_con_repr_ano_of: TStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PCPButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LimpiarGrid(Sender: TObject);
    procedure edi_cod_plantaChange(Sender: TObject);
    procedure edi_cod_seccionChange(Sender: TObject);
    procedure edi_cod_plantaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edi_cod_seccionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridCalcCellColors(Sender: TObject; Col, Row: Integer;
      aFont: TFont; var aColor: TColor; State: TGridDrawState);
    procedure bot_cer_detallesClick(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure sohoDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PCPButton4Click(Sender: TObject);
    procedure edi_cod_planta_1Change(Sender: TObject);
    procedure edi_cod_planta_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edi_cod_seccion_1Change(Sender: TObject);
    procedure edi_cod_seccion_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PCPButton2Click(Sender: TObject);
    procedure edi_ofn_1Exit(Sender: TObject);
    procedure PCPButton3Click(Sender: TObject);
  private
    { Private declarations }
    con_actual:Integer;
    vTotalR:Integer;
  public
    { Public declarations }
  end;

var
  fcon_reprocesos: Tfcon_reprocesos;

implementation
Uses constantes, funcionesmensajes, funcionesDB, funcionesVarias,
  rptnov_reprocesos, rptNov_reprocesos_2, rptNov_Reprocesos_3,
  RptNov_reprocesos_4;
{$R *.DFM}

procedure Tfcon_reprocesos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Release;
end;

procedure Tfcon_reprocesos.PCPButton1Click(Sender: TObject);
Var
  i,j,tot,BigTot:Integer;
  ActualOF:String;
  vdia, vmes, vAno  :       Word;
begin
  BigTot:=0;
  //Extraer el ano
  DecodeDate(com_fec_inicial_1.Date,VAno, vMes, vDia);
  Case NoteBook1.PageIndex of

    //||||||||||||||||||||CONSULTA POR PLANTA, SECCION Y CORTE||||||||||||//
    0:Begin
           //Identificar si la consulta es de todos los cortes o de uno
           //||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

           //La consulta es de una orden
           //|||||||||||||||||||||||||||||||
           if edi_ofn_1.Text<>'' then
           Begin
                  con_actual:=0;
                  not_1.pageindex:=0;
                  //Limpiar Grid
                  //------------
                  For i:=1 to Gri_1_1.RowCount-1 do
                     Gri_1_1.Rows[i].Clear;
                  Gri_1_1.rowCount:=1;
                  //Generar los parametros de la consulta
                  //-------------------------------------
{                  With que_Consulta do
                  Begin
                      If Active then Close;
                      Sql.Clear;
                      Sql.Add('Select a.cod_operaria, sum(a.unidades) as unidades, sum(c.unidades) as uni_ano,');
                      Sql.Add('(trim(b.nom1_emple) || " " || trim(b.apel1_emple)) as nom_operaria');
                      Sql.Add('From nov_reprocesos a, nomina::nomemple b, nov_reprocesos c');
                      Sql.Add('Where b.codi_emple=a.cod_operaria');
                      Sql.Add('And ((c.cod_operaria = a.cod_operaria) and (year(c.fecha)='+IntToStr(vAno)+'))');
                      if edi_cod_planta_1.Text<>'' then
                          Sql.Add('And a.cod_planta="'+edi_cod_planta_1.Text+'"');
                      if edi_cod_seccion_1.Text<>'' then
                          Sql.Add('And a.cod_seccion="'+edi_cod_seccion_1.Text+'"');
                      If com_fec_inicial_1.Checked then
                          Sql.Add('And a.fecha>="'+DateToSqlDate(FormatDateTime('dd/mm/yyyy',com_fec_inicial_1.Date))+'"');
                      If com_fec_final_1.Checked then
                          Sql.Add('And a.fecha<="'+DateToSqlDate(FormatDateTime('dd/mm/yyyy',com_fec_final_1.Date))+'"');
                      Sql.Add('And a.OFN="'+Edi_ofn_1.Text+'"');
                      Sql.Add('Group by 1,4');
                      Open;}
                  With stor_con_repr_ano_of do
                  Begin
                       Close;
                       paramByName('cod_planta').Value := edi_cod_planta_1.text;
                       paramByName('cod_seccion').Value := edi_cod_seccion_1.text;
                       paramByName('fec_inicial').Value := (FormatDateTime('yyyy/mm/dd',com_fec_inicial_1.Date));
                       paramByName('fec_final').Value := (FormatDateTime('yyyy/mm/dd',com_fec_final_1.Date));
                       paramByName('ano').Value := edi_ano.asinteger;
                       ParamByName('ofn').Value := edi_ofn_1.text;
                       Open;

                      //Mostrar los datos en pantalla
                      //-----------------------------
                      While not Eof do
                      Begin
                           Gri_1_1.RowCount:=Gri_1_1.RowCount+1;
                           Gri_1_1.Cells[0,Gri_1_1.RowCount-1]:=Fields[0].AsString;
                           Gri_1_1.Cells[1,Gri_1_1.RowCount-1]:=Fields[1].AsString;
                           Gri_1_1.Cells[2,Gri_1_1.RowCount-1]:=Fields[2].AsString;
                           Next;
                      End;
                      Close;
                  End;
                  //Una fila para los totales
                  Gri_1_1.RowCount:=Gri_1_1.RowCount+1;
                  //Calcular el total de unidades
                  Tot:=0;
                  For i:=1 to Gri_1_1.RowCount-1 do
                  Begin
                     Try
                        tot:=Tot+strtoint(gri_1_1.Cells[2,i]);
                     Except
                     End;
                  End;
                  Gri_1_1.Cells[2,Gri_1_1.RowCount-1]:=IntToStr(Tot);
                  Gri_1_1.Cells[1,Gri_1_1.RowCount-1]:='Total';
                  Gri_1_1.Alignments[1,Gri_1_1.RowCount-1]:=taRightJustify;
                  gri_1_1.Colors[0,gri_1_2.RowCount-1]:=clBtnShadow;
                  gri_1_1.Colors[1,gri_1_2.RowCount-1]:=clBtnShadow;
                  gri_1_1.Colors[2,gri_1_2.RowCount-1]:=clBtnShadow;
           End
           //Consulta de todas las ordenes
           Else
           Begin
                  con_actual:=1;
                  not_1.pageindex:=1;
                  //Limpiar Grid
                  //------------
                  For i:=1 to gri_1_2.RowCount-1 do
                     gri_1_2.Rows[i].Clear;
                  Gri_1_2.SplitAllCells;
                  Gri_1_2.Clear;
                  Gri_1_2.ResetUpdate;
                  gri_1_2.rowCount:=0;
                  Gri_1_2.MergeCells(0,0,3,1);
                  Gri_1_2.Colors[0,0]:=clWhite;
                  Gri_1_2.FontStyles[0,0]:=[fSBold];
                  Gri_1_2.Cells[0,0]:='Consulta de Reprocesos';
                  Gri_1_2.Update;

                  //Generar los parametros de la consulta
                  //-------------------------------------
{                  With que_Consulta do
                  Begin
                      If Active then Close;
                      Sql.Clear;
                      Sql.Add('Select a.cod_operaria, sum(a.unidades) as unidades, ');
                      Sql.Add('(Trim(b.nom1_emple) || " " || Trim(b.apel1_emple)) as nom_operaria, a.ofn');
                      Sql.Add('From nov_reprocesos a, nomina::nomemple b');
                      Sql.Add('Where b.codi_emple=a.cod_operaria');
                      if edi_cod_planta_1.Text<>'' then
                          Sql.Add('And a.cod_planta="'+edi_cod_planta_1.Text+'"');
                      if edi_cod_seccion_1.Text<>'' then
                          Sql.Add('And a.cod_seccion="'+edi_cod_seccion_1.Text+'"');
                      If com_fec_inicial_1.Checked then
                          Sql.Add('And a.fecha>="'+DateToSqlDate(FormatDateTime('dd/mm/yyyy',com_fec_inicial_1.Date))+'"');
                      If com_fec_final_1.Checked then
                          Sql.Add('And a.fecha<="'+DateToSqlDate(FormatDateTime('dd/mm/yyyy',com_fec_final_1.Date))+'"');
                      Sql.Add('Group by 1,3,4');
                      Sql.Add('order by 3,2,1');
                      Sql.Savetofile('c:\xx.txt');
                      Open;        }

                  With stor_con_reprocesos_ano do
                  Begin
                       Close;
                       paramByName('cod_planta').Value := edi_cod_planta_1.text;
                       paramByName('cod_seccion').Value := edi_cod_seccion_1.text;
                       paramByName('fec_inicial').Value := (FormatDateTime('yyyy/mm/dd',com_fec_inicial_1.Date));
                       paramByName('fec_final').Value := (FormatDateTime('yyyy/mm/dd',com_fec_final_1.Date));
                       paramByName('ano').Value := edi_ano.asinteger;
                  End;                       
                  With tabl_con_reprocesos_ano do
                  Begin
                      Close;
                      CreateTable;
                      batchMove(stor_con_reprocesos_ano, batAppend);
                  End;
                  With quer_con_reprocesos_ano do
                  Begin
                      close;
                      open;
                      ActualOF:='';
                      Tot:=0;
                      BigTot:=0;
                      //Mostrar los datos en pantalla
                      //-----------------------------
                      While not Eof do
                      Begin
                           gri_1_2.RowCount:=gri_1_2.RowCount+1;
                           //Verificar si se debe insertar una nueva
                           If ActualOF<>fieldByName('ofn').AsString Then
                           Begin
                               //Si no es la primera, escribir el total
                               If ActualOF<>'' then
                               Begin
                                   Gri_1_2.MergeCells(0,Gri_1_2.RowCount-1,3,1);
                                   Gri_1_2.Cells[0,Gri_1_2.RowCount-1]:='Total  : '+IntToStr(Tot);
                                   Gri_1_2.Colors[0,Gri_1_2.RowCount-1]:=clBtnFace;
                                   Gri_1_2.Alignments[0,Gri_1_2.RowCount-1]:=taRightJustify;
                                   BigTot:=BigTot+Tot;
                                   Tot:=0;
                                   gri_1_2.RowCount:=gri_1_2.RowCount+1;
                               End;
                               ActualOF:=FieldByName('OFN').AsString;
                               //Unir la celda
                               Gri_1_2.MergeCells(0,Gri_1_2.RowCount-1,3,1);
                               Gri_1_2.Cells[0,Gri_1_2.RowCount-1]:='* Corte : '+ActualOF;
                               Gri_1_2.Colors[0,Gri_1_2.RowCount-1]:=clBtnShadow;
                               Gri_1_2.FontStyles[0,Gri_1_2.RowCount-1]:=[fsBold];
                               Gri_1_2.FontColors[0,Gri_1_2.RowCount-1]:=clWhite;
                               gri_1_2.RowCount:=gri_1_2.RowCount+1;
                           End;
                           gri_1_2.Cells[0,gri_1_2.RowCount-1]:=FieldByName('cod_operaria').AsString;
                           gri_1_2.Cells[1,gri_1_2.RowCount-1]:=FieldByName('nom_Operaria').AsString;
                           gri_1_2.Cells[2,gri_1_2.RowCount-1]:=FieldByName('unidades').AsString;
                           Tot:=Tot+FieldByname('unidades').AsInteger;
                           Next;
                      End;
                      Close;
                  End;
                  BigTot:=Tot+BigTot;
                  //El total de la ultima orden
                  If ActualOF<>'' then
                  Begin
                       gri_1_2.RowCount:=gri_1_2.RowCount+1;
                       Gri_1_2.MergeCells(0,Gri_1_2.RowCount-1,3,1);
                       Gri_1_2.Cells[0,Gri_1_2.RowCount-1]:='Total : '+IntToStr(Tot);
                       Gri_1_2.Colors[0,Gri_1_2.RowCount-1]:=clBtnFace;
                       Gri_1_2.Alignments[0,Gri_1_2.RowCount-1]:=taRightJustify;
                  End;

                  //Una fila para los totales
                  gri_1_2.RowCount:=gri_1_2.RowCount+1;
                  //Calcular el total de unidades
                  Gri_1_2.Alignments[1,Gri_1_2.RowCount-1]:=taRightJustify;
                  gri_1_2.Cells[1,gri_1_2.RowCount-1]:='Total Unidades : ';
                  gri_1_2.Cells[2,gri_1_2.RowCount-1]:=IntToStr(BigTot);
                  Gri_1_2.Alignments[2,Gri_1_2.RowCount-1]:=taRightJustify;
                  gri_1_2.Colors[0,gri_1_2.RowCount-1]:=clBtnShadow;
                  gri_1_2.Colors[1,gri_1_2.RowCount-1]:=clBtnShadow;
                  gri_1_2.Colors[2,gri_1_2.RowCount-1]:=clBtnShadow;
                  gri_1_2.FontStyles[1,gri_1_2.RowCount-1]:=[fsBold];
                  gri_1_2.FontStyles[2,gri_1_2.RowCount-1]:=[fsBold];
           End;



    End;
    //||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    //Fin de la consulta por PLANTA SECCION Y CORTE


    //||||||||||||||||||||||||||||||||||||||||||||||||
    //Consulta por orden y fecha
    1:Begin

            Try
                //Actualizar la consulta
                LimpiarGrid(Sender);
                If (edi_fec_final.date-edi_fec_inicial.Date<=0) Then
                   raise Exception.Create('El rango de fechas no es válido.');
                With qyconsulta do
                Begin
                     //Llamar las referencias
                     If active then Close;
                     sql.Clear;
                     Sql.Add('Select distinct a.ofn, b.referencia, b.secu_referencia, sum(c.cantidad) as Lote' );
                     Sql.Add('from nov_reprocesos a, ofgeneral b, ofDetalle c');
                     Sql.Add('where b.ofn=a.ofn');
                     Sql.Add('and c.Ofn=a.Ofn');
                     if edi_cod_planta.Text<>'' then
                        Sql.Add('And cod_planta="'+edi_cod_planta.Text+'"');
                     if edi_cod_Seccion.Text<>'' then
                        Sql.Add('And cod_Seccion="'+edi_cod_Seccion.Text+'"');
                     Sql.Add('And Fecha>="'+DateToSqlDate(DateToStr(edi_fec_inicial.Date))+'"');
                     Sql.Add('And Fecha<="'+DateToSqlDate(DateToStr(edi_fec_final.Date))+'"');
                     Sql.Add('Group by 1,2,3');
                     Open;
                     If RecordCount=0 then Raise Exception.Create(sSQLVacio);
                     Grid.RowCount:=RecordCount+2;
                     //Numero de columnas
                     grid.ColCount:=Trunc(edi_fec_final.Date-edi_fec_inicial.Date+6);
                     i:=1;
                     While not EOF do
                     Begin
                          //Datos
                          Grid.Cells[0,i]:=fieldByName('ofn').AsString;
                          Grid.Cells[1,i]:=fieldByName('ofn').AsString+' / '+fieldByName('referencia').AsString+
                               '-'+fieldByName('secu_referencia').AsString;
                          Grid.Cells[Grid.colCount-2,i]:=FormatFloat('0',fieldByName('Lote').AsFloat);
                          //Datos de la orden
                          qyConsulta2.Close;
                          qyConsulta2.Sql.Clear;
                          qyConsulta2.Sql.Add('Select Fecha, Sum(Unidades) as Unidades');
                          qyConsulta2.Sql.Add('From nov_reprocesos');
                          qyConsulta2.Sql.Add('Where ofn="'+fieldByName('ofn').AsString+'"');
                          if edi_cod_planta.Text<>'' then
                            qyConsulta2.Sql.Add('And cod_planta="'+edi_cod_planta.Text+'"');
                          if edi_cod_Seccion.Text<>'' then
                            qyConsulta2.Sql.Add('And cod_Seccion="'+edi_cod_Seccion.Text+'"');
                          qyConsulta2.Sql.Add('And Fecha>="'+DateToSqlDate(DateToStr(edi_fec_inicial.Date))+'"');
                          qyConsulta2.Sql.Add('And Fecha<="'+DateToSqlDate(DateToStr(edi_fec_final.Date))+'"');
                          qyConsulta2.Sql.Add('Group by Fecha');
                          qyConsulta2.Open;
                          While not  qyConsulta2.Eof do
                          Begin
                              Grid.Cells[Trunc(qyConsulta2.FieldbyName('fecha').AsDateTime-edi_fec_inicial.Date+3),i]:=qyconsulta2.FieldByName('unidades').AsString;
                              qyConsulta2.next;
                          End;
                          qyConsulta2.Close;

                          //Siguiente Registro
                          Next;
                          Inc(i);
                     End;
                     Close;
                     Grid.Cells[0,Grid.RowCount-1]:='Tot';

                     For i:=2 to Grid.ColCount-4 do
                         Grid.Cells[i,0]:=FormatDateTime('dd-mmm',edi_fec_inicial.Date+(i-2));
                     Grid.Cells[Grid.ColCount-3,0]:='Tot';
                     Grid.Cells[Grid.ColCount-2,0]:='Lote';
                     Grid.Cells[Grid.ColCount-1,0]:='%';


                     //Totales por Fecha
                     for i:=2 to grid.ColCount-1 do
                     Begin
                         tot:=0;
                         for j:=1 to Grid.RowCount-2 do
                         Begin
                            try
                               Tot:=Tot+StrToInt(Grid.Cells[i,j]);
                            Except
                            End;
                         End;
                         Grid.Cells[i,Grid.RowCount-1]:=FormatFloat('0',Tot);
                         Grid.ColAligns[i]:=taRightJustify;
                     End;

                     //Totales por Orden
                     for i:=1 to grid.RowCount-2 do
                     Begin
                         tot:=0;
                         for j:=2 to Grid.ColCount-4 do
                         Begin
                            try
                               Tot:=Tot+StrToInt(Grid.Cells[j,i]);
                            Except
                            End;

                         End;
                         Grid.Cells[Grid.ColCount-3,i]:=FormatFloat('0',Tot);
                         Try
                           Grid.Cells[Grid.ColCount-1,i]:=FormatFloat('0.000',
                              (strToFloat(Grid.Cells[Grid.ColCount-3,i]) / StrToFloat(Grid.Cells[Grid.ColCount-2,i])*100));
                         Except
                           Grid.Cells[Grid.ColCount-1,i]:='Error';
                         End;
                     End;
                End;
            Except
               On e:Exception do
               Begin
                 MensajeNormal(e.message,Info);
                 qyConsulta.Close;
                 qyConsulta2.Close;
               End;
            End;
    End;
    ///////////////////////////////////////
    //Fin de la consulta por planta seccion y fecha
  end;
  vTotalR:=BigTot;



end;

procedure Tfcon_reprocesos.FormCreate(Sender: TObject);
begin
        edi_fec_inicial.date:=Now-7;
        edi_fec_final.date:=Now;
        com_fec_inicial_1.date:=Now;
        com_fec_final_1.date:=Now;
        Con_Actual:=-1;
end;

procedure Tfcon_reprocesos.LimpiarGrid(Sender: TObject);
Var
  i:Integer;
begin
        for i:=1 to Grid.RowCount-1 do
          grid.Rows[i].Clear;
        Grid.RowCount:=2;
end;

procedure Tfcon_reprocesos.edi_cod_plantaChange(Sender: TObject);
begin
    If (Edi_cod_Planta.Text='') Then Abort;
        //Buscar la descripcion de la planta
        if Edi_cod_Planta.Text<>'' Then
        Begin
            With qyPlantas do
            Begin
                If active then Close;
                ParamByName('codi_taller').Value:=Edi_cod_Planta.Text;
                Open;
                Edi_Planta.Text:=FieldByName('Desc_Taller').AsString;
                Close;
            End;
        End;

end;

procedure Tfcon_reprocesos.edi_cod_seccionChange(Sender: TObject);
begin
        //Buscar la descripcion de la Seccion
        if Edi_cod_Seccion.Text<>'' Then
        Begin
            With qySecciones do
            Begin
                If active then Close;
                ParamByName('codi_depen').Value:=Edi_cod_Seccion.Text;
                Open;
                Edi_Seccion.Text:=FieldByName('Desc_depen').AsString;
                Close;
            End;
        End;

end;

procedure Tfcon_reprocesos.edi_cod_plantaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        If Key=tc_Existencias then
           Edi_cod_Planta.Text:=MostrarBa2('I_PCPDATA','nomina::nomtalle','Plantas','Codi_taller','Desc_taller','Desc_taller',0);

end;

procedure Tfcon_reprocesos.edi_cod_seccionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        If Key=tc_Existencias then
           Edi_cod_Seccion.Text:=MostrarBa2SQL('I_PCPDATA','Select Codi_depen, desc_depen From nomina::norccdep Where '+
                    'codi_taller="'+Edi_cod_Planta.Text+'"','Secciones','codi_depen',0);

end;

procedure Tfcon_reprocesos.GridCalcCellColors(Sender: TObject; Col,
  Row: Integer; aFont: TFont; var aColor: TColor; State: TGridDrawState);
begin
        if (row=grid.RowCount-1) or (col=grid.ColCount-3) Then
            aColor:=clTotal;
end;

procedure Tfcon_reprocesos.bot_cer_detallesClick(Sender: TObject);
begin
        qyDetalle.Close;
        wDetalle.Visible:=False;
        Enabled:=True;
end;

procedure Tfcon_reprocesos.GridDblClick(Sender: TObject);
begin
        if (grid.col>=grid.ColCount-3) or (grid.row=grid.rowCount-1) or
           (grid.Row=0) then abort;
        With qyDetalle do
        Begin
            if active then close;
            sql.Clear;
            Sql.Add('Select a.cod_operaria, a.unidades, (Trim(b.apel1_emple) || " " || Trim(b.nom1_emple)) as nombre');
            Sql.Add('from nov_reprocesos a, nomina::nomemple b');
            Sql.Add('where b.codi_emple=a.cod_operaria');
            Sql.Add('and OFN="'+Grid.Cells[0,Grid.Row]+'"');
            Sql.Add('and fecha="'+DateToSqlDate(DateToStr(edi_Fec_inicial.Date+grid.Col-2))+'"');
            Open;
            wDetalle.BringToFront;
            wDetalle.Visible:=True;
            sohoDBGrid1.SetFocus;
            Enabled:=False;
        End;
end;

procedure Tfcon_reprocesos.sohoDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if key=vk_escape then bot_cer_detallesClick(Sender);
end;

procedure Tfcon_reprocesos.PCPButton4Click(Sender: TObject);
begin
        Close;
end;

procedure Tfcon_reprocesos.edi_cod_planta_1Change(Sender: TObject);
begin
    If (Edi_cod_Planta_1.Text='') Then Abort;
        //Buscar la descripcion de la planta
            With qyPlantas do
            Begin
                If active then Close;
                ParamByName('codi_taller').Value:=Edi_cod_Planta_1.Text;
                Open;
                Edi_des_Planta_1.Text:=FieldByName('Desc_Taller').AsString;
                Close;
            End;
end;

procedure Tfcon_reprocesos.edi_cod_planta_1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        If Key=tc_Existencias then
           Edi_cod_Planta_1.Text:=MostrarBa2('I_PCPDATA','nomina::nomtalle','Plantas','Codi_taller','Desc_taller','codi_taller',0);

end;

procedure Tfcon_reprocesos.edi_cod_seccion_1Change(Sender: TObject);
begin
        if Edi_cod_Seccion_1.Text<>'' Then
        Begin
            With qySecciones do
            Begin
                If active then Close;
                ParamByName('codi_depen').Value:=Edi_cod_Seccion_1.Text;
                Open;
                Edi_des_Seccion_1.Text:=FieldByName('Desc_depen').AsString;
                Close;
            End;
        End;

end;

procedure Tfcon_reprocesos.edi_cod_seccion_1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        If Key=tc_Existencias then
           Edi_cod_Seccion_1.Text:=MostrarBa2SQL('I_PCPDATA','Select Codi_depen, desc_depen From nomina::norccdep Where '+
                    'codi_taller="'+Edi_cod_Planta_1.Text+'"','Secciones','codi_depen',0);

end;

procedure Tfcon_reprocesos.PCPButton2Click(Sender: TObject);
begin
        //Imprimir
        //--------
        Case con_actual of
            //Consulta por orden
            0:Begin
                  //Crear la tabla local
                  With tab_local do
                  Begin
                      fieldDefs.Clear;
                      FieldDefs.Add('cod_operaria',ftstring,12,False);
                      FieldDefs.Add('unidades',ftInteger,0,False);
                      FieldDefs.Add('Nom_Operaria',ftString,100,False);
                      CreateTable;
                      BatchMove(que_consulta,batAppend);
                  End;

                  Application.CreateForm(Tfrptnov_reprocesos, frptnov_reprocesos);
                  With fRptNov_Reprocesos do
                  Begin
                          qrLBLPlanta.Caption:=edi_des_planta_1.Text;
                          qrLBLSeccion.Caption:=edi_des_seccion_1.Text;
                          qrLBLOFN.Caption:=edi_ofn_1.Text;
                          qrLBLReferencia.Caption:=edi_referencia_1.Text;
                          qyReporte.Open;
                          Qr.Preview;
                          Close;
                  End;



            End; //De la consulta por orden (Case 0)
            //Consulta de varias ordenes
            1:Begin

{                Application.CreateForm(Tfrptnov_reprocesos_3, frptnov_reprocesos_3);
                With fRptNov_Reprocesos_3 do
                Begin
                        qrLBLPlanta.Caption:=edi_des_planta_1.Text;
                        qrLBLSeccion.Caption:=edi_des_seccion_1.Text;

                        With que_ordenes do
                        Begin
                             if edi_cod_planta_1.Text<>'' then
                                 Sql.Add('And a.cod_planta="'+edi_cod_planta_1.Text+'"');
                             if edi_cod_seccion_1.Text<>'' then
                                 Sql.Add('And a.cod_seccion="'+edi_cod_seccion_1.Text+'"');
                             If com_fec_inicial_1.Checked then
                                 Sql.Add('And a.fecha>="'+DateToSqlDate(FormatDateTime('dd/mm/yyyy',com_fec_inicial_1.Date))+'"');
                             If com_fec_final_1.Checked then
                                 Sql.Add('And a.fecha<="'+DateToSqlDate(FormatDateTime('dd/mm/yyyy',com_fec_final_1.Date))+'"');
//                             Sql.Add('GROUP BY 1,2');
                             Open;
                        End;
                        Qr.Preview;
                        Close;              }

                Application.CreateForm(Tfrptnov_reprocesos_2, frptnov_reprocesos_2);
                With fRptNov_Reprocesos_2 do
                Begin
                        qrLBLPlanta.Caption:=edi_des_planta_1.Text;
                        qrLBLSeccion.Caption:=edi_des_seccion_1.Text;
                        lbl_finicial.Caption:=' ';
                        lbl_ffinal.Caption:=' ';
                        if com_fec_inicial_1.checked then
                          lbl_finicial.Caption:=formatDateTime('dd - mmm - yyyy',com_fec_inicial_1.date);
                        if com_fec_final_1.checked then
                          lbl_ffinal.Caption:=formatDateTime('dd - mmm - yyyy',com_fec_final_1.date);
                        With que_master do
                        Begin
                             Sql.Add('Select DISTINCT A.OFN, (B.REFERENCIA||"-"||B.SECU_REFERENCIA)  AS REFERENCIA, b.Total');
                             Sql.Add('AS LOTE');
                             Sql.Add('From nov_reprocesos A, OFGENERAL B');
                             Sql.Add('Where (B.OFN=A.OFN)');
//                             Sql.Add('AND (C.OFN=A.OFN)');
                             if edi_cod_planta_1.Text<>'' then
                                 Sql.Add('And a.cod_planta="'+edi_cod_planta_1.Text+'"');
                             if edi_cod_seccion_1.Text<>'' then
                                 Sql.Add('And a.cod_seccion="'+edi_cod_seccion_1.Text+'"');
                             If com_fec_inicial_1.Checked then
                                 Sql.Add('And a.fecha>="'+DateToSqlDate(FormatDateTime('dd/mm/yyyy',com_fec_inicial_1.Date))+'"');
                             If com_fec_final_1.Checked then
                                 Sql.Add('And a.fecha<="'+DateToSqlDate(FormatDateTime('dd/mm/yyyy',com_fec_final_1.Date))+'"');
//                             Sql.Add('GROUP BY 1,2');
                             Open;
                        End;
                        Qr.Preview;
                        Close;
                End;
            End;


        End; //Del case
end;

procedure Tfcon_reprocesos.edi_ofn_1Exit(Sender: TObject);
begin
        if edi_ofn_1.text<>'' then
        Begin
            qyOFGeneral.Close;
            qyOfGeneral.ParamByName('OFN').Value:=edi_ofn_1.text;
            qyOfGeneral.Open;
            edi_referencia_1.Text:=
              qyOFGeneral.FieldByName('Referencia').AsString+'-'+
              qyOFGeneral.FieldByName('secu_referencia').AsString;
            qyOFGeneral.Close;
        End
        Else
            edi_referencia_1.Text:='';
end;

procedure Tfcon_reprocesos.PCPButton3Click(Sender: TObject);

begin
                  Application.CreateForm(Tfrptnov_reprocesos_4, frptnov_reprocesos_4);
                  With frptNov_reprocesos_4 do
                  Begin

                        fRptNov_Reprocesos_4.vTotal:=vTotalR;
                        qrLBLPlanta.Caption:=edi_des_planta_1.Text;
                        qrLBLSeccion.Caption:=edi_des_seccion_1.Text;
                        lbl_finicial.Caption:=formatDateTime('dd - mmm - yyyy',com_fec_inicial_1.date);
                        lbl_ffinal.Caption:=formatDateTime('dd - mmm - yyyy',com_fec_final_1.date);
                        lbl_fecha.Caption:=formatDateTime('dd/mmm/yyyy',com_fec_inicial_1.date)+' - '+
                                        formatDateTime('dd/mmm/yyyy',com_fec_final_1.date);
                        lbl_ano.Caption:=edi_ano.text;
                        Qr.Preview;
                        Close;
                  End;
end;

end.

 {
Create procedure con_reprocesos_ano
(vcodi_planta varchar(12),
 vcodi_seccion varchar(12),
 vfec_inicial date, 
 vfec_final date, 
 vano integer)
 
returning
 varchar(12),
 varchar(100),
 varchar(12),
 integer,
 integer;

define
   vcod_operaria, vofn varchar(12);

define
   vunidades, vuni_ano integer;

define
   vnom_operaria varchar(100);

forEach
  select a.cod_operaria, a.ofn, sum(a.unidades), 
         trim(b.apel1_emple) || " " || trim(b.nom1_emple)
  into vcod_operaria, vofn, vunidades, vnom_operaria
  from nov_reprocesos a, nomina:nomemple b
  where ((a.cod_planta = vcodi_planta) and (a.cod_seccion = vcodi_seccion)
        and (a.fecha between vfec_inicial and vfec_final))
  and (b.codi_emple = a.cod_operaria)
  group by 1,2,4
  order by 1,2
  Begin
        let vuni_ano = 0;
        select sum(unidades)
        into vuni_ano
        from nov_reprocesos
        where cod_operaria = vcod_operaria 
          and cod_planta = vcodi_planta
          and cod_seccion = vcodi_seccion
          and ofn = vofn
          and year(fecha) = vano;

        returns vcod_operaria, vnom_operaria, vofn, vunidades, vuni_ano
        with resume;
  End;
  end ForEach;
end procedure;
          




  }  
