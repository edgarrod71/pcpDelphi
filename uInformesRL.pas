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
        Unit            : uInformesRL
        Objetivo        : Maestro para el diseño de reportes
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Marzo 01 de 2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit uInformesRL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, Db, DBTables, kbmMemTable, TB2ExtItems, TBXExtItems, TB2Item,
  TB2Dock, TB2Toolbar, TBX, ufra_ordenar, ExtCtrls, Boxes, PCPFrame,
  ufra_edit_reportes, SCLTabs;

  
type
  TfInformesRL = class(TForm)
    tabl_reporte: TkbmMemTable;
    data_reporte: TDataSource;
    dxPageControl1: TSCLPageControl;
    dxTabSheet1: TSCLTabSheet;
    dxTabSheet2: TSCLTabSheet;
    fram_edicion: Tffra_edit_reportes;
    quer_modulo: TQuery;
    tabl_edicion: TTable;
    tabl_edicionCONS_USUA_INFORME: TIntegerField;
    tabl_edicionCONS_USUA_MODULO: TIntegerField;
    tabl_edicionNOMB_USUA_INFORME: TStringField;
    data_edicion: TDataSource;
    quer_usua_informe: TQuery;
    quer_guar_informe: TQuery;
    barr_modulo: TTBXToolbar;
    TBXLabelItem1: TTBXLabelItem;
    edit_nomb_modulo: TTBXEditItem;
    acti_ventana: TActionList;
    acti_guar_como: TAction;
    quer_guar_informeNOMB_USUA_INFORME: TStringField;
    quer_guar_informeCONTROLES: TBlobField;
    PCPFrame1: TPCPFrame;
    fram_ordenar: Tffra_ordenar;
    quer_guar_informeORDE_1: TStringField;
    quer_guar_informeORDE_ASCE_1: TIntegerField;
    quer_guar_informeORDE_2: TStringField;
    quer_guar_informeORDE_ASCE_2: TIntegerField;
    quer_guar_informeORDE_3: TStringField;
    quer_guar_informeORDE_ASCE_3: TIntegerField;
    quer_abri_informe: TQuery;
    quer_abri_informeNOMB_USUA_INFORME: TStringField;
    quer_abri_informeCONTROLES: TBlobField;
    quer_abri_informeORDE_1: TStringField;
    quer_abri_informeORDE_ASCE_1: TIntegerField;
    quer_abri_informeORDE_2: TStringField;
    quer_abri_informeORDE_ASCE_2: TIntegerField;
    quer_abri_informeORDE_3: TStringField;
    quer_abri_informeORDE_ASCE_3: TIntegerField;
    quer_guar_informeORDE_EJECUCION: TIntegerField;
    dock_padr_arriba: TTBXDock;
    tiem_nombre: TTimer;
    quer_guar_informeIDEN_VENTANA: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure data_edicionStateChange(Sender: TObject);
    procedure fram_edicionacti_guardarUpdate(Sender: TObject);
    procedure fram_edicionELDesigner1ControlInserted(Sender: TObject);
    procedure doIniciarEdicion(Sender: TObject);
    procedure doGuardar(Sender: TObject);
    procedure fram_edicionacti_prop_reporteExecute(Sender: TObject);
    procedure acti_guar_comoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure fram_edicionacti_vist_previaExecute(Sender: TObject);
    procedure fram_edicionacti_abri_repo_para_editarExecute(
      Sender: TObject);
    procedure boto_CerrarClick(Sender: TObject);
    procedure tiem_nombreTimer(Sender: TObject);
    procedure fram_ordenarcomb1Change(Sender: TObject);
    procedure fram_ordenarcomb2Change(Sender: TObject);
    procedure fram_ordenarcomb3Change(Sender: TObject);
    procedure fram_edicionELDesigner1Modified(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    var_TituloReporte   : String;
    var_Modulo  : TCustomForm;
    var_Modificado  : Boolean;
  Protected
    Procedure SetTituloReporte(peTituloReporte : String);
    Procedure SetModulo(peValor : TCustomForm);
  public
    { Public declarations }
    Property TituloReporte : String Read var_TituloReporte Write SetTituloReporte;
    Property Modulo : TCustomForm Read var_Modulo Write SetModulo;
    Property Modificado : Boolean Read var_Modificado Write var_Modificado;
    Procedure LoadOrderByFromFields(peField1, peField2, peField3 : String; peDescendingOrder : Boolean = False);

    Procedure doCrearNuevoInformeDesdeConsulta(peDataSet : TDataSet;
            peVentanaMaestra : TCustomForm; peDataSetFiltro : TDataSet);
  end;

var
  fInformesRL: TfInformesRL;

  Const
    cosSelectQueryReporteRL = 'SELECT * FROM CONSULTA_REPORTE';

implementation


uses _func_varias, _cons_pcp, _func_db, _func_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 01 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure TfInformesRL.FormCreate(Sender: TObject);
begin
    //Inicializar los controles
    Color := clFondoAplicacion;
    AutoHints(Self);
    fram_edicion.align := alClient;
    setTituloReporte(cosSinTitulo);
    SetModulo(Nil);
    var_Modificado := False;
    barr_modulo.CurrentDock := fram_edicion.TBXDock1;
    barr_modulo.DockPos := 1;
    barr_modulo.DockRow := 0;
    fram_edicion.barr_fram_archivo.CurrentDock := dock_padr_arriba;
	Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : doCrearNuevoInformeDesdeConsulta
Objetivo        : Crear un informe nuevo desde una consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure TfInformesRL.doCrearNuevoInformeDesdeConsulta(peDataSet : TDataSet;
            peVentanaMaestra : TCustomForm; peDataSetFiltro : TDataSet);
Var
    var_i   : Integer;
Begin
    //Validar las entradas
    if peDataSet = Nil Then
    Begin
        EjecutarMensajeError(Format(cosErrorFuenteDatosNoValida, ['']));
        Close;
    End;
    //Volcar la estructura de la consulta en la tabla de memoria
    //tabl_reporte.LoadFromDataSet(peDataSet, [mtcpoStructure]);-->deshabilitado en RC20.14
    //tabl_reporte.fieldDefs.Assign(peDataSet.FieldDefs); --> deshabilitado RC20.18 Cambio por siguiente linea
    tabl_reporte.LoadFromDataSet(peDataSet, [mtcpoStructure, mtcpoCalculated, mtcpoIgnoreErrors]);
    tabl_reporte.Open;
    //RC20.6 - Display de los campos
    Try
    For var_i := 1 to peDataSet.FieldCount do
        TField(tabl_Reporte.fields[var_i - 1]).DisplayLabel := TField(peDataSet.fields[var_i - 1]).DisplayLabel;
    Except
    End;
    //RC20.6 - Frame de ordenamiento
    fram_ordenar.DoEjecutarFrame(tabl_Reporte);
    //Abrir la tabla local
    tabl_edicion.TableName := NombreTablaTemporal;
    tabl_Edicion.CreateTable;
    tabl_edicion.Open;
    //Inicializar el reporte
    fram_edicion.ReportDataSet := tabl_reporte;
    SetTituloReporte(cosSinTitulo);
    SetModulo(peVentanaMaestra);
    //Abrir el diseñador
    fram_Edicion.doResetear;
    fram_Edicion.CampoFormato := quer_guar_informeCONTROLES;
    fram_Edicion.acti_nuevo.Execute;
    Update;
    //fram_Edicion.acti_prop_reporte.Execute;
End;

{****************************************************************
Procedimiento   : FormClose
Objetivo        : Cerrar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure TfInformesRL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    //Liberar la ventana
    Release;
end;
{****************************************************************
Procedimiento   : SetTituloReporte
Objetivo        : Asigna el título al reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure TfInformesRL.SetTituloReporte(peTituloReporte : String);
var
    var_esta_editando : Boolean;
    var_titu_60 : String [60];
Begin
     //Truncar en 60 chars
     var_titu_60 := peTituloReporte;
     peTituloReporte := var_Titu_60;
     var_TituloReporte := peTituloReporte;
     fram_Edicion.TituloReporte := var_TituloReporte;
     Caption := Format(cosDisenandoReporte, [var_TituloReporte]);
     //Tabla local
     if tabl_edicion.Active then
     With tabl_edicion do
     Begin
          var_esta_editando := Modificado;
          doIniciarEdicionDataSet(tabl_Edicion);
          FieldByName('nomb_usua_informe').Value := peTituloReporte;
          if not var_esta_editando Then Post;
     End;
End;
{****************************************************************
Procedimiento   : data_edicionStateChange
Objetivo        : Actualizar el estado del reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 01 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure TfInformesRL.data_edicionStateChange(Sender: TObject);
begin
    var_Modificado := (tabl_edicion.Active) and (tabl_edicion.State in [dsInsert,dsEdit]);
end;
{****************************************************************
Procedimiento   : fram_edicionacti_guardarUpdate
Objetivo        : Actualiza el estado de la acción de guardado                                
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure TfInformesRL.fram_edicionacti_guardarUpdate(Sender: TObject);
begin
    fram_edicion.acti_guardar.Enabled := Modificado;
end;
{****************************************************************
Procedimiento   : fram_edicionELDesigner1ControlInserted
Objetivo        : Cambia el estado de la tabla al insertar un registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure TfInformesRL.fram_edicionELDesigner1ControlInserted(
  Sender: TObject);
begin
  fram_edicion.ELDesigner1ControlInserted(Sender);
  doIniciarEdicion(Sender);
  fram_edicion.Modificado := True;
end;
{****************************************************************
Procedimiento   : doIniciarEdicion
Objetivo        : Simula la edición de la tabla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure TfInformesRL.doIniciarEdicion(Sender: TObject);
begin
    if (not Modificado) and (tabl_edicion.Active) and
          Not(tabl_Edicion.State in [dsInsert, dsEdit])
      Then doIniciarEdicionDataSet(tabl_edicion);
end;
{****************************************************************
Procedimiento   : doGuardar
Objetivo        : Guardar los cambios
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure TfInformesRL.doGuardar(Sender: TObject);
Var
    var_cons_usua_modulo    : Integer;
    var_cons_usua_informe   : Integer;
begin
  Try
       StartDBTransaction;
       //Valores previos
       var_cons_usua_modulo := tabl_Edicion.FieldByName('cons_usua_modulo').asInteger;
       var_cons_usua_informe := tabl_Edicion.FieldByName('cons_usua_informe').asInteger;
      //Revisar que exista el registro del maestro
      If tabl_edicion.FieldByName('cons_usua_modulo').asInteger = 0 Then
          //Generar el consecutivo
          With quer_modulo do
          Begin
              If Active Then Close;
              ParamByName('nomb_modulo').Value := Modulo.Caption;
              Open;
              tabl_edicion.FieldByName('cons_usua_modulo').Value := FieldByName('cons_usua_modulo').asInteger;
              Close;
          End;
      //fram_edicion.acti_guardarExecute(Sender);
      //Revisar que el reporte tenga un consecutivo
      if tabl_edicion.FieldByName('cons_usua_informe').asInteger = 0 Then
          //Generar el consecutivo
          With quer_usua_informe do
          Begin
               If Active then Close;
               ParamByName('cons_usua_modulo').Value := tabl_edicion.FieldByName('cons_usua_modulo').asInteger;
               ParamByName('nomb_usua_informe').Value := TituloReporte;
               Open;
               tabl_edicion.FieldByName('cons_usua_informe').Value := FieldByName('cons_usua_informe').asInteger;
               Close;
          End;
      //Guardar los datos del reporte
      With quer_guar_informe do
      Begin
           If Active then Close;
           ParamByName('cons_usua_informe').Value := tabl_edicion.FieldByName('cons_usua_informe').asInteger;
           Open;
           Edit;
           FieldByName('nomb_usua_informe').Value := TituloReporte;
           FieldByName('orde_ejecucion').Value := -1;
           //Guardar sobre el campo del informe
           Fram_Edicion.CampoFormato := quer_guar_informeCONTROLES;
           //RC 20.6 - GUARDAR ORDENAMIENTO
           if Not fram_ordenar.comb1.EstaVacio Then
              FieldByName('orde_1').Value := fram_ordenar.Comb1.keyValue
           Else
              FieldByName('orde_1').Clear;
           if fram_ordenar.asce1.Checked then
                FieldByName('orde_asce_1').Value := 1
           Else
                FieldByName('orde_asce_1').Value := -1;
           if Not fram_ordenar.comb2.EstaVacio Then
              FieldByName('orde_2').Value := fram_ordenar.Comb2.keyValue
           Else
              FieldByName('orde_2').Clear;
           if fram_ordenar.asce1.Checked then
                FieldByName('orde_asce_2').Value := 1
           Else
                FieldByName('orde_asce_2').Value := -1;
           if Not fram_ordenar.comb3.EstaVacio Then
              FieldByName('orde_3').Value := fram_ordenar.Comb3.keyValue
           Else
              FieldByName('orde_3').Clear;
           if fram_ordenar.asce3.Checked then
                FieldByName('orde_asce_3').Value := 1
           Else
                FieldByName('orde_asce_3').Value := -1;
           //RC20.17 IDENTIFICADOR DE LA VENTANA
           FieldByName('IDEN_VENTANA').Value := var_Modulo.HelpContext;
           //Guardar el frame
           fram_edicion.acti_guardarExecute(Sender);
           //Guardar la tabla
           Post;
           Close;
      End;
      CheckAndPostDataSet(tabl_edicion);
      Modificado := False;
      CommitDBWork;
  Except
     On E:Exception do
     Begin
         RollBackDBWork;
         EjecutarMensajeError(e.Message);
         //Devolver los valores originales
         tabl_Edicion.FieldByName('cons_usua_modulo').asInteger := var_cons_usua_modulo;
         tabl_Edicion.FieldByName('cons_usua_informe').asInteger := var_cons_usua_informe;
         Raise;
     End;
  End;
end;
{****************************************************************
Procedimiento   : SetModulo
Objetivo        : Asigna el módulo activo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure TfInformesRL.SetModulo(peValor : TCustomForm);
Begin
    var_modulo := peValor;
    //Titulo en la barra
    if (var_modulo = Nil) Then edit_nomb_modulo.Text := ''
    Else edit_nomb_modulo.Text := var_Modulo.Caption;
End;
{****************************************************************
Procedimiento   : fram_edicionacti_prop_reporteExecute
Objetivo        : Ejecuta la acción de edición de propiedades del reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure TfInformesRL.fram_edicionacti_prop_reporteExecute(
  Sender: TObject);
begin
  fram_edicion.acti_prop_reporteExecute(Sender);
  if (TituloReporte <> fram_Edicion.TituloReporte) Then
    SetTituloReporte(fram_edicion.TituloReporte);
end;
{****************************************************************
Procedimiento   : acti_guar_comoExecute
Objetivo        : Guarda un informe con otro nombre
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure TfInformesRL.acti_guar_comoExecute(Sender: TObject);
Var
    var_nomb_informe    : String;
    var_nomb_anterior   : String;
    var_cons_usua_info_anterior : Integer;
begin
    var_nomb_anterior := TituloReporte;
    var_cons_usua_info_anterior := tabl_edicion.FieldByName('cons_usua_informe').asInteger;
    Try
        //Pedir el nombre del informe
        var_nomb_informe := pcpInputForm(cosGuardarComo, cosEscribaElNombreDelInforme, tvString, var_nomb_anterior);
        //Validar
        if (var_nomb_informe = '') Then
        Begin
            EjecutarMensajeError(cosNombreReporteNoValido);
            Exit;
        End;
        if var_nomb_informe = TituloReporte then
        Begin
            EjecutarMensajeError(cosErrorNombreReporteIgual);
            Exit;
        End;
        //Habilitar los cambios
        SetTituloReporte(var_nomb_informe);
        doIniciarEdicion(Sender);
        tabl_Edicion.FieldByName('cons_usua_informe').Clear;
        doGuardar(Sender);
    Except
        //Restaurar los valores anteriores
        SetTituloReporte(var_nomb_anterior);
        doIniciarEdicion(Sender);
        tabl_Edicion.FieldByName('cons_usua_informe').Value := var_cons_usua_info_anterior;
    End;
end;
{****************************************************************
Procedimiento   : FormActivate
Objetivo        : Actualiza la ventana al activarse
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure TfInformesRL.FormActivate(Sender: TObject);
begin
    WindowState := wsMaximized;
end;

procedure TfInformesRL.fram_edicionacti_vist_previaExecute(
  Sender: TObject);
Var
    var_Ordenar : String;
begin
  Try
      //RC 20.6 - Aplicar el ordenamiento
      var_Ordenar := fram_ordenar.TextoOrdenar(False, ';');
      fram_edicion.OrderBy := var_Ordenar;
      {RC 20.6 - PENDIENTE REGISTRAR XQUERY
      //Ordenar el QUERY de la consulta
      With quer_Reporte do
      Begin
          //Preparar el query
          Close;
          Sql.Clear;
          Sql.Add(cosSelectQueryReporteRL);
          if Var_Ordenar <> '' Then
             Sql.Add(var_Ordenar);
          //Aplicar los filtros
          Filter := tabl_reporte.Filter;
          Filtered := tabl_reporte.Filtered;
          Open;
      End;
      ReportDataSet := quer_Reporte;}
      //Ejecutar la vista previa del reporte
      fram_edicion.acti_vist_previaExecute(Sender);
  Except
      On E:Exception do
        EjecutarMensajeError(e.Message);
  End;
  {ReportDataSet := tabl_Reporte;}
end;
{****************************************************************
Procedimiento   : LoadOrderByFromFields
Objetivo        : Asigna el ordenamiento desde campos separados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure TfInformesRL.LoadOrderByFromFields(peField1, peField2, peField3 : String; peDescendingOrder : Boolean = False);
Begin
    if peField1 <> '' Then
    Begin
        //Campos
        fram_ordenar.comb1.KeyValue := peField1;
        fram_ordenar.comb2.KeyValue := peField2;
        fram_ordenar.comb3.KeyValue := peField3;
        //Ordenamiento
        if peDescendingOrder Then
            fram_ordenar.desc1.Checked := True
        Else
            fram_ordenar.asce1.Checked := True;
    End;
End;
{****************************************************************
Procedimiento   : fram_edicionacti_abri_repo_para_editarExecute
Objetivo        : Abre un reporte para editarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure TfInformesRL.fram_edicionacti_abri_repo_para_editarExecute(
  Sender: TObject);
Var
    var_Cons_usua_informe   : IntegeR;
begin
  fram_edicion.acti_abri_repo_para_editarExecute(Sender);
  var_cons_usua_informe := doEjecutarDialogoAbrirReporte(var_Modulo.Caption);
  if var_cons_usua_informe = -1 Then Exit;
  //Nuevo
  fram_edicion.acti_nuevo.Execute;
  With quer_abri_informe do
  Begin
      Close;
      ParamByName('cons_usua_informe').Value := var_cons_usua_informe;
      Open;
      //Abrir
      fram_edicion.LoadReportFromBlob(quer_abri_informeCONTROLES);
      fram_Edicion.LoadOrderByFromFields(FieldByName('orde_1').asString,
                FieldByName('orde_2').asString,
                FieldByName('orde_3').asString,
                (FieldByName('orde_asce_1').asInteger = -1));
      //Seleccionar combos de edición
      fram_ordenar.comb1.KeyValue := FieldByName('orde_1').asString;
      fram_ordenar.comb2.KeyValue := FieldByName('orde_2').asString;
      fram_ordenar.comb3.KeyValue := FieldByName('orde_3').asString;
      if (FieldByName('orde_asce_1').asInteger = 1) Then
          fram_ordenar.asce1.Checked := True
      Else
          fram_ordenar.desc1.Checked := True;
      SetTituloReporte(FieldByName('nomb_usua_informe').AsString);
      doIniciarEdicion(Sender);
      tabl_Edicion.FieldByName('cons_usua_informe').Value :=  var_cons_usua_informe;
      Close;
  End;

end;
{****************************************************************
Procedimiento   : boto_CerrarClick
Objetivo        : Cerrar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TfInformesRL.boto_CerrarClick(Sender: TObject);
begin
        Close;
end;
{****************************************************************
Procedimiento   : tiem_nombreTimer
Objetivo        : Dar un nombre al reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TfInformesRL.tiem_nombreTimer(Sender: TObject);
var
        var_Nomb_Informe        : String;
begin
        tiem_Nombre.Enabled := False;
        if (var_TituloReporte = cosSinTitulo) or (var_TituloReporte = '') Then
        Begin
            var_nomb_informe := pcpInputForm(cosGuardarComo, cosEscribaElNombreDelInforme, tvString, var_TituloReporte);
            //Validar
            if (var_nomb_informe = '') or (var_nomb_informe = TituloReporte) then
            Begin
                //Abrir
                fram_edicionacti_abri_repo_para_editarExecute(Sender);
            End
            Else
            Begin
              SetTituloReporte(var_nomb_informe);
              doIniciarEdicion(Sender);
              tabl_Edicion.FieldByName('cons_usua_informe').Clear;
              doGuardar(Sender);
            End;
        End;
end;
{****************************************************************
Procedimiento   : fram_ordenarcomb1Change
Objetivo        : Actualizar el estado al cambiar el combo de
                  ordenamiento 1
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TfInformesRL.fram_ordenarcomb1Change(Sender: TObject);
begin
  fram_ordenar.comb1Change(Sender);
  fram_edicion.Modificado := True;
  DoIniciarEdicion(Sender);
end;
{****************************************************************
Procedimiento   : fram_ordenarcomb2Change
Objetivo        : Actualizar el estado al cambiar el combo de
                  ordenamiento 2
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TfInformesRL.fram_ordenarcomb2Change(Sender: TObject);
begin
  fram_ordenar.comb2Change(Sender);
  fram_edicion.Modificado := True;
  DoIniciarEdicion(Sender);
end;
{****************************************************************
Procedimiento   : fram_ordenarcomb3Change
Objetivo        : Actualizar el estado al cambiar el combo de
                  ordenamiento 3
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TfInformesRL.fram_ordenarcomb3Change(Sender: TObject);
begin
  fram_edicion.Modificado := True;
  DoIniciarEdicion(Sender);
end;
{****************************************************************
Procedimiento   : fram_edicionELDesigner1Modified
Objetivo        : Dar por modificado el reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TfInformesRL.fram_edicionELDesigner1Modified(Sender: TObject);
begin
        Modificado := True;
end;
{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        :
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 21-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TfInformesRL.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
        CanClose := False;
        if modificado Then
        Begin
           Case confirmar(cosDeseaGuardar, [mbYes, MbNo, mbCancel]) of
               mrYes : Begin
                        doGuardar(Sender);
                        CanClose := True;
               End;
               mrNo : canClose := True;
           End;
        End
        Else
           CanClose := True;
end;

end.

