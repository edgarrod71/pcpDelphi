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
        Unit            : un0_wiza_fuen_datos
        Objetivo        : Asistente para nuevas consultas
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Marzo 01 de 2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit un0_wiza_fuen_datos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uWizard, dxCntner, JvWizard, JvWizardRouteMapNodes, ExtCtrls, StdCtrls,
  JvExControls, JvComponent, Boxes, PCPFrame, dxEditor, dxExEdtr, dxEdLib,
  dxTL, dxDBCtrl, dxDBGrid, SCLDBGrid, JvEditorCommon, JvUnicodeEditor,
  JvUnicodeHLEditor, TB2Item, TBX, TB2Dock, TB2Toolbar, QBuilder, QBEBDE,
  RxLookup, PCPLookUpComboEdit, Db, DBTables, JvBDELists, SoCtrls,
  SCLDBLabel, kbmMemTable, dxDBTLCl, dxGrClms, ufra_edit_SQL, SohoBtns,
  SCLButton, ufra_edit_parametrosSQL;

type
  Tfwiza_fuen_datos = class(TfWizard)
    page_wiza_bienvenido: TJvWizardWelcomePage;
    Label1: TLabel;
    page_wiza_base_Datos: TJvWizardInteriorPage;
    page_wiza_sql: TJvWizardInteriorPage;
    Panel1: TPanel;
    comb_conexiones: TPCPLookUpComboEdit;
    BDEItems: TJvBDEItems;
    data_BDEItems: TDataSource;
    BDEItemsNAME: TStringField;
    BDEItemsDBTYPE: TStringField;
    page_wiza_generales: TJvWizardInteriorPage;
    page_wiza_parametros: TJvWizardInteriorPage;
    auxi_query: TQuery;
    page_wiza_finalizar: TJvWizardInteriorPage;
    Label2: TLabel;
    page_wiza_campos: TJvWizardInteriorPage;
    fram_edit_SQL: Tffra_edit_sql;
    Label3: TLabel;
    SCLButton1: TSCLButton;
    pane_dato_nombre: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    edit_nombre: TdxEdit;
    Panel2: TPanel;
    fram_edit_parametros: Tffra_edit_parametrosSQL;
    quer_objeto: TQuery;
    Panel3: TPanel;
    SCLDBLabel2: TSCLDBLabel;
    edit_descripcion: TdxMemo;
    pane_Dato_edicion: TPanel;
    edit_edicion: TdxCheckEdit;
    quer_elim_parametros: TQuery;
    quer_inse_parametros: TQuery;
    procedure boto_dise_visualClick(Sender: TObject);
    procedure page_wiza_base_DatosEnterPage(Sender: TObject;
      const FromPage: TJvWizardCustomPage);
    procedure MemoSQLChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chec_para_dependenClick(Sender: TObject);
    procedure padr_wizardFinishButtonClick(Sender: TObject);
    procedure padr_wizardCancelButtonClick(Sender: TObject);
    procedure page_wiza_camposEnterPage(Sender: TObject;
      const FromPage: TJvWizardCustomPage);
    procedure fram_edit_parametrosMemoSQLChange(Sender: TObject);
    procedure ActualizarParametrosDesdeQuery(Sender: TObject);
  private
    { Private declarations }
    var_Query   : TQuery;
    var_Resultado   : Boolean;
    var_orig_name   : String;
    var_ConsultaNueva : Boolean;
    var_NombrePadre : String;
    Procedure ActualizarCamposyParametros;
    Procedure doGuardarObjeto;

  public
    { Public declarations }
    Function doEjecutarAsistente(peQuery : TQuery; peEditarParametros : Boolean = True;
        peShow : Boolean = True):Boolean; Overload;
    Function doEjecutarAsistente(var peNombreConsulta : String; peNombrePadre : String;
                peQuery : TQuery; peEditarParametros : Boolean = True;
                peEditarNombre : Boolean = False;
                peConsultaNueva : Boolean = False) : Boolean; Overload;
  end;


var
  fwiza_fuen_datos: Tfwiza_fuen_datos;


implementation

uses _MDI, _func_varias, _func_db, _func_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : boto_dise_visualClick
Objetivo        : Abrir la ventana de diseño visual de consultas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfwiza_fuen_datos.boto_dise_visualClick(Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : page_wiza_base_DatosEnterPage
Objetivo        : Abre la consulta de bases de datos disponibles
                  al entrar a las DB
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfwiza_fuen_datos.page_wiza_base_DatosEnterPage(Sender: TObject;
  const FromPage: TJvWizardCustomPage);
begin
  inherited;
  if not (BDEItems.Active) Then
    AbrirDataSet(BDEItems);
end;

{****************************************************************
Procedimiento   : MemoSQLChange
Objetivo        : Cerrar las consultas dependientes del SQL
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfwiza_fuen_datos.MemoSQLChange(Sender: TObject);
begin
  inherited;
  //Cerrar la tabla de parametros
  if fram_edit_parametros.tabl_parametros.Active then fram_edit_parametros.tabl_parametros.Close;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 01 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfwiza_fuen_datos.FormCreate(Sender: TObject);
Begin
        Inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : chec_para_dependenClick
Objetivo        : Controlar el check del tipo de parámetro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfwiza_fuen_datos.chec_para_dependenClick(Sender: TObject);
begin
  inherited;
end;

{****************************************************************
Procedimiento   : doEjecutarAsistente
Objetivo        : Ejecuta la consulta del asistente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function Tfwiza_fuen_datos.doEjecutarAsistente(peQuery : TQuery; peEditarParametros : Boolean = True;
        peShow : Boolean = True) : Boolean;
//Var  var_i   : Integer;
Begin
    //Inicializar el resultado
    var_Resultado := False;
    page_wiza_parametros.Enabled := peEditarParametros;
    //Validar los parametros de entrada
    if peQuery = Nil Then Begin
        Result := False;
        Close;
        Exit;
    End;
    //Inicializar los controles
    fram_edit_SQL.OQDLG.OQBEngine.DatabaseName := peQuery.DatabaseName;
    fram_edit_SQL.MemoSQL.Lines.Assign(peQuery.SQL);
    fram_Edit_SQL.auxi_Query.DataBaseName := peQuery.DataBaseName;
    auxi_Query.DataBaseName := peQuery.DataBaseName;
    pane_Dato_nombre.Visible := False;
    var_orig_name := '';
    edit_edicion.Checked := (peQuery.RequestLive);
    ActualizarParametrosDesdeQuery(Self);
    //Asignarlo
    var_Query := peQuery;
    //Mostrarlo
    if peShow Then Begin
        ShowModal;
        Result := var_Resultado;
    End;
End;
{****************************************************************
Procedimiento   : doEjecutarAsistente
Objetivo        : Ejecuta el asistente (Overload)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function Tfwiza_fuen_datos.doEjecutarAsistente(var peNombreConsulta : String;
            peNombrePadre : String;
            peQuery : TQuery; peEditarParametros : Boolean = True;
            peEditarNombre : Boolean = False;
            peConsultaNueva : Boolean = False) : Boolean;
Begin
            //Ejecutar el proc simplificado
            Result := doEjecutarAsistente(peQuery, True, False);
            //Parametros adicionales
            edit_nombre.Text := peNombreConsulta;
            var_orig_name := peNombreConsulta;
            var_ConsultaNueva := peConsultaNueva;
            var_NombrePadre := peNombrePadre;
            pane_Dato_nombre.Visible := peEditarNombre;
            //Mostrar
            ShowModal;
            Result := var_Resultado;
End;
{****************************************************************
Procedimiento   : padr_wizardFinishButtonClick
Objetivo        : Finalizar con éxito el asistente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfwiza_fuen_datos.padr_wizardFinishButtonClick(Sender: TObject);
{Var
    var_i   : Integer;
    var_s   : String;}
begin
  inherited;
  //Guardar
    //Crear si el resultado es TRUE y si es nueva
  If (var_ConsultaNueva) then
      doGuardarObjeto;
  //Cerrar
  var_Resultado := True;
  Close;
end;
{****************************************************************
Procedimiento   : padr_wizardCancelButtonClick
Objetivo        : Cancelar el asistente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfwiza_fuen_datos.padr_wizardCancelButtonClick(Sender: TObject);
begin
  var_Resultado := False;
  inherited;
end;
{****************************************************************
Procedimiento   : boto_vali_consultaClick
Objetivo        : Valida la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 16 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfwiza_fuen_datos.page_wiza_camposEnterPage(Sender: TObject;
  const FromPage: TJvWizardCustomPage);
begin
  inherited;
  ActualizarCamposyParametros;
end;
{****************************************************************
Procedimiento   : ActualizarCamposyParametros
Objetivo        : Actualiza los campos y parámetros cuando cambia
                  la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 16 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tfwiza_fuen_datos.ActualizarCamposyParametros;
begin
  inherited;
End;
{****************************************************************
Procedimiento   : fram_edit_parametrosMemoSQLChange
Objetivo        : Actualizar la tabla de parámetros al cambiar el SQL
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfwiza_fuen_datos.fram_edit_parametrosMemoSQLChange(
  Sender: TObject);
begin
  inherited;
  fram_edit_parametros.MemoSQLChange(Sender);
  
end;
{****************************************************************
Procedimiento   : ActualizarParametrosDesdeQuery
Objetivo        : Actualiza los parámetros desde el query
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfwiza_fuen_datos.ActualizarParametrosDesdeQuery(Sender: TObject);
begin
  inherited;
  //Cargar los parámetros del query
  if auxi_Query.Active then Auxi_Query.Close;
  Auxi_Query.Sql.Assign(fram_edit_SQL.MemoSQL.Lines);
  //Generar los parámetros (Si la consulta cambió o está cerrada la tabla de parámetros)
  if page_wiza_parametros.enabled Then
  Begin
        fram_edit_parametros.CargarParametros(auxi_Query);
  End;
end;

Procedure Tfwiza_fuen_datos.doGuardarObjeto;
Var
    var_cons_conf_objeto    : Integer;
Begin
      Try
          //Inicializar la transaccion
          StartDBTransaction;
          Auxi_Query.Close;
          Auxi_Query.SQL.Assign(fram_edit_SQL.MemoSQL.Lines);
          //Crear el padre (objeto - PCP_CONF_OBJETOS)
          With quer_objeto do
          Begin
               If active Then Close;
               ParamByName('CONS_CONF_OBJETO').Value := 0;
               ParamByName('TIPO').Value := 1;
               ParamByName('NOMB_OBJETO').Value := edit_nombre.Text;
               ParamByName('DESC_OBJETO').Value := edit_descripcion.Lines.Text;
               ParamByName('MENU_PADRE').Value := var_NombrePadre;
               ParamByName('ESTA_ACTIVO').Value := 1;
               ParamByName('BASE_DATOS').Value := auxi_query.DataBaseName;
               ParamByName('TEXT_SQL').Value := auxi_query.SQL.Text;
               Open;
               var_cons_Conf_objeto := FieldByName('cons_Conf_objeto').asInteger;
               Close;
          End;
          //Eliminar los parámetros existenes
          With quer_elim_parametros do
          Begin
                ParamByName('cons_conf_objeto').Value := var_cons_conf_objeto;
                ExecSQL;
          End;
          //Insertar los nuevos parámetros
          With quer_inse_parametros do
          Begin
                ParamByName('cons_conf_objeto').Value := var_cons_conf_objeto;
                fram_edit_parametros.tabl_parametros.First;
                While not fram_edit_parametros.tabl_parametros.Eof do
                Begin
                        ParamByName('cons_conf_objeto').Value := var_cons_conf_objeto;
                        ParamByName('nomb_parametro').Value := fram_edit_parametros.tabl_parametros.FieldByName('nomb_campo').AsString;
                        ParamByName('text_parametro').Value := fram_edit_parametros.tabl_parametros.FieldByName('text_campo').asString;
                        ParamByName('tipo_parametro').Value := UpperCase(fram_edit_parametros.tabl_parametros.FieldByName('tipo_campo').AsString);
                        ParamByName('list_datos').Value := fram_edit_parametros.tabl_parametros.FieldByName('lista').asString;
                        ParamByName('list_consulta').Value := fram_edit_parametros.tabl_parametros.FieldByName('text_SQL').asString;
                        ParamByName('list_camp_llave').Value := fram_edit_parametros.tabl_parametros.FieldByName('camp_busqueda').asString;
                        ParamByName('list_camp_mostrar').Value := fram_edit_parametros.tabl_parametros.FieldByName('camp_lista').asString;
                        if fram_edit_parametros.tabl_parametros.FieldByName('requerido').asBoolean Then
                            ParamByName('requerido').Value := 1
                        Else
                            ParamByName('requerido').Value := -1;
                        ExecSQL;
                        //Siguiente parámetro
                        fram_edit_parametros.tabl_parametros.Next;
                End;
          End;
          //Hacer permanentes los cambios
          CommitDBWork;
      Except
          on E:Exception do
          Begin
              RollBackDBWork;
              EjecutarMensajeError(e.Message);
              Abort;
          End;
      End;
End;


end.
