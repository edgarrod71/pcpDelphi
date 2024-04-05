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
        Unit            : un1_meto_esta_buscar
        Objetivo        : Ventana de búsqueda de operaciones estandar
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           :
        Versión         : pcp4.0.0.12
*******************************************************************}
unit un1_meto_esta_buscar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_meto_estandar, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, Db, ImgList, Menus, TBX, ActnList, ExtCtrls,
  dfsSplitter, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar,
  dxDBTLCl, dxGrClms, dxDBGrid, dxDBCtrl, SCLDBGrid, dxPageControl, Boxes,
  PCPFrame, dxEditor, dxEdLib, dxDBELib, TBXButtonSCL, RxLookup,
  PCPLookUpComboEdit, StdCtrls, SoCtrls, SCLDBLabel, RxMemDS, DBCtrls,
  ufra_edit_reportes;

type
  Tfn1_meto_esta_buscar = class(Tfn1_meto_estandar)
    fram_filtro: TPCPFrame;
    quer_oper_tipos: TQuery;
    quer_procesos: TQuery;
    quer_grup_componentes: TQuery;
    data_grupo_componentes: TDataSource;
    data_oper_tipos: TDataSource;
    data_procesos: TDataSource;
    SCLDBLabel3: TSCLDBLabel;
    comb_proceso: TPCPLookUpComboEdit;
    SCLDBLabel4: TSCLDBLabel;
    comb_tipo_operacion: TPCPLookUpComboEdit;
    comb_componente: TPCPLookUpComboEdit;
    SCLDBLabel1: TSCLDBLabel;
    edit_codi_operacion: TdxDBEdit;
    SCLDBLabel2: TSCLDBLabel;
    edit_nomb_operacion: TdxDBEdit;
    myTabla_ventana: TRxMemoryData;
    myTabla_ventanaCODI_OPER_COSTURA: TStringField;
    myTabla_ventanaCONS_PROCESO: TIntegerField;
    myTabla_ventanaCONS_OPER_COST_TIPO: TIntegerField;
    myTabla_ventanaCONS_COMP_GRUPO: TIntegerField;
    myTabla_ventanaNOMB_OPER_COSTURA: TStringField;
    myTabla_ventanaSUPL_CONSTANTE: TSmallintField;
    myTabla_ventanaSUPL_VARIABLE: TSmallintField;
    myTabla_ventanaCONS_RECU_GRUPO: TIntegerField;
    myTabla_ventanaCONS_RECU_TIPO: TIntegerField;
    myTabla_ventanaCONS_RECU_FAMILIA: TIntegerField;
    myTabla_ventanaCONS_RECU_MARCA: TIntegerField;
    myTabla_ventanaCLAS_RECURSO: TStringField;
    myTabla_ventanaREVO_POR_MINUTO: TIntegerField;
    myTabla_ventanaTIEM_CRONOMETRO: TIntegerField;
    myTabla_ventanaTIEM_ASIGNADO: TFloatField;
    myData_ventana: TDataSource;
    pane_nuevo: TPCPFrame;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    dxDBCurrencyEdit3: TdxDBCurrencyEdit;
    edit_tiem_cronometro: TdxDBCurrencyEdit;
    quer_recu_grupos: TQuery;
    quer_recu_gruposCONS_RECU_GRUPO: TIntegerField;
    quer_recu_gruposNOMB_RECU_GRUPO: TStringField;
    quer_recu_tipos: TQuery;
    quer_recu_tiposCONS_RECU_GRUPO: TIntegerField;
    quer_recu_tiposCONS_RECU_TIPO: TIntegerField;
    quer_recu_tiposNOMB_RECU_TIPO: TStringField;
    quer_recu_familias: TQuery;
    quer_recu_familiasCONS_RECU_FAMILIA: TIntegerField;
    quer_recu_familiasNOMB_RECU_FAMILIA: TStringField;
    quer_recu_familiasPORC_SUPLEMENTO: TSmallintField;
    data_recu_grupos: TDataSource;
    data_recu_tipos: TDataSource;
    data_recu_familias: TDataSource;
    SCLDBLabel13: TSCLDBLabel;
    SCLDBLabel14: TSCLDBLabel;
    SCLDBLabel15: TSCLDBLabel;
    SCLDBLabel19: TSCLDBLabel;
    SCLDBLabel20: TSCLDBLabel;
    PCPLookUpComboEdit5: TPCPLookUpComboEdit;
    PCPLookUpComboEdit6: TPCPLookUpComboEdit;
    comb_recu_familia: TPCPLookUpComboEdit;
    dxDBCurrencyEdit5: TdxDBCurrencyEdit;
    dxDBCurrencyEdit6: TdxDBCurrencyEdit;
    quer_inse_operacion: TQuery;
    SCLDBLabel6: TSCLDBLabel;
    myTabla_ventanaSUPL_MAQUINA: TFloatField;
    boto_Canc_nuevo: TTBXButtonSCL;
    SCLDBLabel37: TSCLDBLabel;
    dxDBCurrencyEdit7: TdxDBCurrencyEdit;
    SCLDBLabel7: TSCLDBLabel;
    myTabla_ventanaTIEM_CRON_ASIGNADO: TFloatField;
    labe_unid_2: TLabel;
    myTabla_ventanaCOST_OPERACION: TFloatField;
    SCLDBLabel38: TSCLDBLabel;
    edit_valor: TdxDBCurrencyEdit;
    DBText1: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure doFiltrarOperaciones(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edit_codi_operacionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_codi_operacionEnter(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure myTabla_ventanaBeforePost(DataSet: TDataSet);
    procedure myTabla_ventanaAfterInsert(DataSet: TDataSet);
    procedure boto_Canc_nuevoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edit_valorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_meto_esta_buscar: Tfn1_meto_esta_buscar;

implementation

uses _MDI, _cons_pcp, _func_varias, _vent_child, _vari_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 11 de 2004
Versión         : pcp4.0.0.12
*****************************************************************}
procedure Tfn1_meto_esta_buscar.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  AbrirDataSet(myTabla_Ventana);
  AbrirDataSet(quer_procesos);
  AbrirDataSet(quer_oper_tipos);
  AbrirDataSet(quer_grup_componentes);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : doFiltrarOperaciones
Objetivo        : Filtrar las operaciones cuando cambie un combo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 11 de 2004
Versión         : pcp4.0.0.12
*****************************************************************}
procedure Tfn1_meto_esta_buscar.doFiltrarOperaciones(Sender: TObject);
Var
    var_Separador   : String;
    var_filtro  : String;
begin
  inherited;
  With Consulta do
  Begin
      DisableControls;
      Try
        //Inicializar el separador
        var_separador := '';
        var_filtro := '';
        //Proceso
        if Not(comb_proceso.EstaVacio) then
        Begin
            var_Filtro := var_filtro + var_Separador + 'cons_proceso = ' + IntToStr(comb_proceso.KeyValue);
            var_separador := cosSQLAnd;
        End;
        //Tipo_Operacion
        if Not(comb_Tipo_Operacion.EstaVacio) then
        Begin
            var_Filtro := var_filtro + var_Separador + 'cons_oper_cost_tipo = ' + IntToStr(comb_Tipo_Operacion.KeyValue);
            var_separador := cosSQLAnd;
        End;
        //Componente
        if Not(comb_Componente.EstaVacio) then
        Begin
            var_Filtro := var_filtro + var_Separador + 'cons_comp_grupo = ' + IntToStr(comb_Componente.KeyValue);
            var_separador := cosSQLAnd;
        End;
        //Codigo de la operacion
        If edit_codi_operacion.Text <> '' Then
        Begin
            If (Pos('*', edit_codi_operacion.Text) = 0) Then
                var_Filtro := var_filtro + var_Separador + 'codi_oper_costura = ' + '''' + edit_codi_operacion.Text + '*'''
            Else
                var_Filtro := var_filtro + var_Separador + 'codi_oper_costura = ' + '''' + edit_codi_operacion.Text + '''';
            var_separador := cosSQLAnd;
        End;
        //Nombre de la operacion
        If edit_nomb_operacion.Text <> '' Then
        Begin
            If (Pos('*', edit_nomb_operacion.Text) = 0) Then
                var_Filtro := var_filtro + var_Separador + 'nomb_oper_costura = ' + '''' + edit_nomb_operacion.Text + '*'''
            Else
                var_Filtro := var_filtro + var_Separador + 'nomb_oper_costura = ' + '''' + edit_nomb_operacion.Text + '''';
            var_separador := cosSQLAnd;
        End;
        Filter := var_filtro;
        //Confirmar el filtro
        Filtered := (Filter <> '');
      Except
          On e:Exception do
            EjecutarMensajeError(E.Message);
      End;
      EnableControls;
  End;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Inicialización de la ventana en su
                  visualización
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 11 de 2004
Versión         : pcp4.0.0.12
*****************************************************************}
procedure Tfn1_meto_esta_buscar.FormShow(Sender: TObject);
begin
  inherited;
  //Ubicar el cursor
  DarFoco(comb_proceso);
end;
{****************************************************************
Procedimiento   : edit_codi_operacionKeyDown
Objetivo        : Controlar pulsaciones en el cuadro de edición de
                  código para buscarlo o crearlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 12 de 2004
Versión         : pcp4.0.0.12
*****************************************************************}
procedure Tfn1_meto_esta_buscar.edit_codi_operacionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
    var_nuevo   : Boolean;
begin
  inherited;
  If (Key = vk_Return) then
  Begin
       var_nuevo := False;
       //Verificar que no esté vacío
       if (edit_codi_operacion.Text = '') or (Pos('*', edit_Codi_operacion.Text) > 0)
          and (edit_codi_operacion.Text = quer_procesos.FieldByName('codi_proceso').asString +
            quer_oper_tipos.FieldByName('codi_oper_cost_tipo').asString +
            quer_grup_componentes.FieldByName('codi_comp_grupo').asString)
          Then
       Begin
          //Dar foco
          DarFoco(edit_nomb_operacion);
          Exit;
       End;
       //Preguntar al usuario si quiere crearlo
       var_nuevo := (Confirmar(Format(cosCrearNuevaOperacionCST, [edit_codi_operacion.Text]))=mrYes);
       //Abrir las consultas
       if var_nuevo Then
       Begin
           AbrirDataSet(quer_recu_grupos);
           AbrirDataSet(quer_recu_tipos);
           AbrirDataSet(quer_recu_familias);
       End;
       //Habilitar deshabilitar panel
       pane_nuevo.Visible := var_nuevo;
       padr_grid.Visible := Not var_nuevo;
       edit_codi_operacion.Enabled := Not var_nuevo;
       boto_Canc_nuevo.Enabled := var_nuevo;
       //Dar foco
       DarFoco(edit_nomb_operacion);
  End;
end;

procedure Tfn1_meto_esta_buscar.edit_codi_operacionEnter(Sender: TObject);
begin
  inherited;
  //Si no está insertando salir
  If myTabla_Ventana.State <> dsInsert then Exit;
  //Si ya tiene código, salir
  If (mytabla_ventana.FieldByName('codi_oper_costura').asString <> '') Then Exit;
  //Generar el codigo (si tiene todos los datos)
  if Not((comb_proceso.EstaVacio) or (comb_tipo_operacion.EstaVacio) or (comb_componente.EstaVacio)) Then
  mytabla_ventana.FieldByName('codi_oper_costura').Value :=
            quer_procesos.FieldByName('codi_proceso').asString +
            quer_grup_componentes.FieldByName('codi_comp_grupo').asString +
            quer_oper_tipos.FieldByName('codi_oper_cost_tipo').asString;
  edit_codi_operacion.SetSelection(Length(edit_codi_operacion.Text), Length(edit_codi_operacion.Text), False);
end;
procedure Tfn1_meto_esta_buscar.padr_acti_aceptarExecute(Sender: TObject);
begin
  //Si está seleccionando del GRID, heredar
  if not pane_nuevo.Visible then
     inherited
  //Si está creando, guardar y seleccionar
  Else
  Begin
     //Guardar el registro
     myTabla_Ventana.Post;
     //Actualizar la consulta
     Consulta.Filtered := False;
     RefreshDataSet(Consulta);
     Consulta.Locate('codi_oper_Costura',  myTabla_Ventana.FieldByName('codi_oper_costura').asString, []);
     var_nece_actu_operaciones := True;
     Inherited;
  End;
end;
{****************************************************************
Procedimiento   : myTabla_ventanaBeforePost
Objetivo        : Guardar la operación en la base de datos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 12 de 2004
Versión         : pcp4.0.0.12
*****************************************************************}
procedure Tfn1_meto_esta_buscar.myTabla_ventanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //Guardar la operación
  if pane_nuevo.Visible then
  Begin
     //Validar
     ValidarDatosDataSet(mydata_ventana.DataSet);
     If myTabla_ventana.FieldByName('tiem_cron_asignado').asFloat = 0 Then
     Begin
        DarFoco(edit_tiem_cronometro);
        Raise Exception.Create(cosElTiempoNoEsValido);
     End;
     quer_inse_operacion.ExecSQL;
  End;
end;
{****************************************************************
Procedimiento   : myTabla_ventanaAfterInsert
Objetivo        : Dar los valores por defecto de la operación nueva
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 12 de 2004
Versión         : pcp4.0.0.12
*****************************************************************}
procedure Tfn1_meto_esta_buscar.myTabla_ventanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  With myTabla_Ventana do
  Begin
      FieldByName('supl_constante').Value := 0;
      FieldByName('supl_variable').Value := 0;
      FieldByName('cons_recu_grupo').Value := 0;
      FieldByName('cons_recu_tipo').Value := 0;
      FieldByName('cons_recu_familia').Value := 0;
      FieldByName('cons_recu_marca').Value := 0;
      FieldByName('revo_por_minuto').Value := 0;
      FieldByName('supl_maquina').Value := 0;
      FieldByName('tiem_cronometro').Value := 1;
      FieldByName('tiem_asignado').Value := 0;
      FieldByName('cost_operacion').Value := 0;
  End;
end;
{****************************************************************
Procedimiento   : boto_Canc_nuevoClick
Objetivo        : Cancelar la creación del nuevo registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 12 de 2004
Versión         : pcp4.0.0.12
*****************************************************************}
procedure Tfn1_meto_esta_buscar.boto_Canc_nuevoClick(Sender: TObject);
begin
  inherited;
  if (confirmar(cosDeseaCancelar)=mrYes) Then
  Begin
       //Habilitar deshabilitar panel
       pane_nuevo.Visible := False;
       padr_grid.Visible := True;
       edit_codi_operacion.Enabled := True;
       boto_Canc_nuevo.Enabled := False;
       //Dar foco
       DarFoco(comb_proceso);
       //Actualizar la consulta
       doFiltrarOperaciones(Sender);
  End;
end;
{****************************************************************
Procedimiento   : FormActivate
Objetivo        : Configurar la ventana cuando se active
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 12 de 2004
Versión         : pcp4.0.0.12
*****************************************************************}
procedure Tfn1_meto_esta_buscar.FormActivate(Sender: TObject);
begin
  inherited;
  //Nombre de la unidad de medida
  labe_unid_2.Caption := _fmdi.tabl_pcp_opciones.FieldByName('inge_meto_unid_medida').AsString;
end;
{****************************************************************
Procedimiento   : edit_valorKeyDown
Objetivo        : Guardar los cambios
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 16 de 2004
Versión         : pcp4.0.0.13
*****************************************************************}
procedure Tfn1_meto_esta_buscar.edit_valorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (Key = vk_Return) Then
  Begin
      if (Confirmar(cosDeseaGuardar)=mrYes) then padr_acti_aceptar.Execute;
  End;
end;

end.
