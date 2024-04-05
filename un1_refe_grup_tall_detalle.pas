{ 17/03/2004 07:50:01 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 17/03/2004 05:25:09 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 16/03/2004 05:46:34 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:45:02 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 05:05:36 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 05:05:24 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 11:44:44 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 11:42:10 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:41:20 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:45 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 01/03/2004 08:44:12 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 01/03/2004 08:42:54 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 26/02/2004 07:21:42 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
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
        Unit            : un1_refe_grup_tall_detalle
        Objetivo        : Creación del detalle de los grupos de tallas
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero 20 de 2004
        Versión         : pcp4000
*******************************************************************}

unit un1_refe_grup_tall_detalle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, DBTables, dxExEdtr, SCLDBLabel, dxTL, dxDBCtrl,
  dxDBGrid, RxLookup, PCPLookUpComboEdit, Menus, SoCtrls, PictureContainer,
  AdvPanel, dfsSplitter;

type
  Tfn1_refe_grup_tall_detalle = class(T_fvent_modal)
    data_detalle: TDataSource;
    tabl_grup_tall_detalle: TTable;
    tabl_grup_tall_detalleCODI_REFE_TEMPORADA: TStringField;
    tabl_grup_tall_detalleSECU_TALLA: TIntegerField;
    tabl_grup_tall_detalleTALLA: TStringField;
    pop_grid: TTBXPopupMenu;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXItem8: TTBXItem;
    stor_duplicar: TStoredProc;
    TBXItem1: TTBXItem;
    stor_elim_todos: TStoredProc;
    Tabla_VentanaCODI_GRUP_TALLAS: TStringField;
    Tabla_VentanaNOMB_GRUP_TALLAS: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaOBSERVACIONES: TMemoField;
    AdvPanel1: TAdvPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    AdvPanel2: TAdvPanel;
    grid_detalle: TdxDBGrid;
    grid_detalleCODI_GRUP_TALLAS: TdxDBGridMaskColumn;
    grid_detalleCODI_REFE_TEMPORADA: TdxDBGridMaskColumn;
    grid_detalleSECU_TALLA: TdxDBGridMaskColumn;
    grid_detalleTALLA: TdxDBGridMaskColumn;
    dfsSplitter1: TdfsSplitter;
    tabl_grup_tall_detalleCONS_GRUP_TALL_DETALLE: TIntegerField;
    tabl_grup_tall_detalleCONS_GRUP_TALLAS: TIntegerField;
    tabl_grup_tall_detalleTALL_ALTERNATIVA: TStringField;
    Tabla_VentanaCONS_GRUP_TALLAS: TIntegerField;
    grid_detalleColumn5: TdxDBGridColumn;
    procedure quer_temporadasCalcFields(DataSet: TDataSet);
    procedure tabl_grup_tall_detalleAfterInsert(DataSet: TDataSet);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure padr_acti_guardarExecute(Sender: TObject);
    procedure padr_acti_cancelarExecute(Sender: TObject);
    procedure comb_codi_temporadaChange(Sender: TObject);
    procedure padr_acti_nuevoExecute(Sender: TObject);
    procedure padr_acti_modificarExecute(Sender: TObject);
    procedure padr_acti_eliminarExecute(Sender: TObject);
    procedure tabl_grup_tallasAfterPost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure padr_acti_duplicarExecute(Sender: TObject);
    procedure padr_acti_elim_todosExecute(Sender: TObject);
    procedure tabl_grup_tall_detalleBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    vVariablesInicializadas : Boolean;
  public
    { Public declarations }
  end;

var
  fn1_refe_grup_tall_detalle: Tfn1_refe_grup_tall_detalle;

Const
//ConstantesStrings
cosNuevaTalla           = 'Nueva talla';
cosEscribaNuevaTalla    = 'Escriba la nueva talla';
cosEditarTalla          = 'Editar talla';
cosEscribaNuevoValorTalla= 'Escriba el nuevo valor para la talla';
cosDuplicarConExito     = 'Duplicar grupo de tallas desde la temporada %s a la temporada %s.';
cosAsignacionGrupoTallas= '(Tallas asignadas al grupo en la temporada especificada)';
cosEliminarTodosTallas  = 'Eliminar las tallas de la temporada %s.';


implementation
uses _func_varias, _cons_pcp, _func_pcp;
{$R *.DFM}
{****************************************************************
Procedimiento   : quer_TemporadasCalcFields
Objetivo        : Asignar los valores de los campos calculados en la
                  consulta de temporadas.
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tall_detalle.quer_temporadasCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //Codigo del grupo de tallas >> para crear dependencia en la tabla TABL_GRUP_TALL_DETALLE
  if tabla_ventana.State = dsInsert then
       quer_temporadas.FieldByName('codi_grup_tallas').Value := ''
  Else
       quer_temporadas.FieldByName('codi_grup_tallas').Value := tabla_ventana.FieldByName('codi_grup_tallas').AsString;
end;
{****************************************************************
Procedimiento   : tabl_grup_tall_detalleAfterInsert
Objetivo        : Asignar los valores del padre al momento de crear
                  el detalle del grupo de tallas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tall_detalle.tabl_grup_tall_detalleAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Asignar los valores del padre
  tabl_grup_tall_Detalle.FieldByName('codi_grup_tallas').Value := quer_temporadas.FieldByName('codi_grup_tallas').AsString;
  tabl_grup_tall_Detalle.FieldByName('codi_refe_temporada').Value := quer_temporadas.FieldByName('codi_refe_temporada').AsString;
  //Dar el foco al grid
  if Not Grid_Detalle.Focused Then
     If Grid_Detalle.CanFocus then
        Grid_Detalle.SetFocus; 
end;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar los controles de la ventana
                  cuando cambia el estado del maestro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           :
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tall_detalle.data_ventanaStateChange(
  Sender: TObject);
Var
  isBrowsing : Boolean;
begin
  inherited;
  isBrowsing := Not(tabla_ventana.State in [dsEdit, dsInsert]);
  padr_acti_nuevo.Enabled := IsBrowsing;
  padr_acti_modificar.Enabled := IsBrowsing;
  padr_acti_eliminar.Enabled := IsBrowsing;
  padr_acti_duplicar.Enabled := IsBrowsing;
  padr_acti_elim_todos.Enabled := IsBrowsing;

end;
{****************************************************************
Procedimiento   : padr_acti_guardarExecute
Objetivo        : Ejecuta la acción de guardar (sobreescribe al padre)
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tall_detalle.padr_acti_guardarExecute(
  Sender: TObject);
begin
  //Si esta insertando, heredar
  If tabla_ventana.State = dsInsert then
     inherited
  //Si no está insertando, crear la rutina de guardado
  Else
  Begin
      If padr_acti_guardar.DataSource = data_ventana then
      Begin
            tabla_ventana.Post;

      End;
      If padr_acti_guardar.DataSource = data_detalle then
      Begin
            tabl_grup_tall_detalle.Post;

      End;
  End;
end;
procedure Tfn1_refe_grup_tall_detalle.padr_acti_cancelarExecute(
  Sender: TObject);
begin
  If tabla_ventana.State = dsInsert then
        inherited
  Else
  Begin
      //Solicitar confirmación del usuario para cancelar el registro
      if Data_Ventana.DataSet <> Nil then
          Case EjecutarMensaje(cosDeseaCancelar, mtConfirmation, [mbYes, mbNo], 0) of
              mrNo : Abort;
          End;
      //Grupo de tallas (maestro)
      If padr_acti_guardar.DataSource = data_ventana then
      Begin
            tabla_ventana.Cancel;

      End;
      //Grupo de tallas (detalle)
      If padr_acti_guardar.DataSource = data_detalle then
      Begin
            tabl_grup_tall_detalle.Cancel;

      End;
  End;
end;
{****************************************************************
Procedimiento   : comb_codi_temporadaChange
Objetivo        : Actualizar el combo de temporadas cuando quede
                  vacío, asignando el valor NA-No aplica
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tall_detalle.comb_codi_temporadaChange(
  Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : padr_acti_nuevoExecute
Objetivo        : Insertar un nuevo grupo de tallas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tall_detalle.padr_acti_nuevoExecute(
  Sender: TObject);
Var
  NuevaTalla, Talla_Alternativa : String;
begin
  //inherited;
  //Guardar el maestro
  if tabla_ventana.State in [dsEdit, dsInsert] Then
  	tabla_ventana.Post;
  grid_detalle.SetFocus;
  tabl_grup_tall_detalle.Insert;
  //Solicitar el valor de la nueva talla
  NuevaTalla := pcpInputForm(cosNuevaTalla, cosEscribaNuevaTalla, tvString, varEmpty);
  //Solicitar el valor de la talla alternativa
  Talla_Alternativa := pcpInputForm(cosTallaAlternativa, cosEscribaTallaAlternativa, tvString, varEmpty);
  //Si hay talla, crearla
  If NuevaTalla <> '' Then
  Begin
      With tabl_grup_tall_Detalle do
      Begin
        FieldByName('talla').Value := NuevaTalla;
        FieldByName('TALL_ALTERNATIVA').Value := Talla_Alternativa;
        Post;
        Refresh;
        //Reposicionar
        Last;
        //Ejecutar de nuevo la inserción
        padr_acti_nuevoExecute(Sender);
      End;
  End
  //Si no hay talla, cancelar
  Else
      tabl_grup_tall_Detalle.Cancel;
end;
{****************************************************************
Procedimiento   : padr_acti_modificarExecute
Objetivo        : Ejecuta la acción de editar la talla seleccionada
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tall_detalle.padr_acti_modificarExecute(
  Sender: TObject);
Var
  NuevaTalla            : String;
  SecuenciaActual       : Integer;
begin
  //Guardar el maestro
  if tabla_ventana.State in [dsEdit, dsInsert] Then tabla_ventana.Post;
  //inherited;
  grid_detalle.SetFocus;
  //Salir si no hay tallas
  If tabl_grup_tall_detalle.RecordCount = 0 then Exit;
  tabl_grup_tall_detalle.Edit;
  //Solicitar el valor de la nueva talla
  NuevaTalla := pcpInputForm(cosEditarTalla, cosEscribaNuevoValorTalla, tvString,
      tabl_grup_tall_detalle.FieldByName('talla').AsString);
  //Si hay talla, crearla
  If NuevaTalla <> '' Then
  Begin
      With tabl_grup_tall_Detalle do
      Begin
        FieldByName('talla').Value := NuevaTalla;
        Post;
        SecuenciaActual := FieldByName('secu_talla').AsInteger;
        Refresh;
        //Reposicionar
        Locate('secu_talla', SecuenciaActual, []);
      End;
  End
  //Si no hay talla, cancelar
  Else
      tabl_grup_tall_Detalle.Cancel;
end;
{****************************************************************
Procedimiento   : padr_acti_eliminarExecute
Objetivo        : Ejecutar la acción de eliminar y refrescar la vista.
                  Eliminar la talla seleccionada
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}

procedure Tfn1_refe_grup_tall_detalle.padr_acti_eliminarExecute(
  Sender: TObject);
begin
  inherited;
  Refresh;
end;
{****************************************************************
Procedimiento   : tabl_grup_tallasAfterPost
Objetivo        : Ejecutar las acciones luego de guardar el maestro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tall_detalle.tabl_grup_tallasAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  //Actuaizar las temporadas
  quer_temporadas.Close;
  quer_temporadas.Open;
end;
{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Acciones cuando se solicita cerrar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tall_detalle.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  //Asignar el dataSource a la ventana si ha cambiado
  padr_acti_cancelar.DataSource := data_ventana;
  inherited;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Inicializar la ventana (luego de creada)
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tall_detalle.FormShow(Sender: TObject);
Var
        IsBrowsing : Boolean;
begin
  inherited;
  if Not vVariablesInicializadas Then
  Begin
      //Abrir las tablas
      tabl_grup_tall_detalle.Open;
      quer_temporadas.Open;
      //Posicionar la temporada NA en el combo
      comb_codi_temporadaChange(Self);
      //Ocultar las acciones del detalle si está insertando
      IsBrowsing := Not (tabla_ventana.State in [dsEdit, dsInsert]);
      padr_acti_nuevo.Enabled := IsBrowsing;
      padr_acti_modificar.Enabled := IsBrowsing;
      padr_acti_eliminar.Enabled := IsBrowsing;
      padr_acti_duplicar.Enabled := IsBrowsing;
      padr_acti_elim_todos.Enabled := IsBrowsing;
      //Formato del grid
      ColorGrid(Grid_Detalle);
      vVariablesInicializadas := True;
  End;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Ejecutar las acciones de inicializacion de la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tall_detalle.FormCreate(Sender: TObject);
begin
  inherited;
  vVariablesInicializadas := False;
end;
{****************************************************************
Procedimiento   : padr_acti_duplicarExecute
Objetivo        : Duplica la asignacion de tallas para el grupo, en
                  otra temporada seleccionada
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tall_detalle.padr_acti_duplicarExecute(
  Sender: TObject);
Var
        vNuevoGrupoTallas : String;
        vNuevaTemporada : String;
        vVentanaProgreso : tVentanaMensajes;
begin
  inherited;
  //Preguntar el grupo de tallas del destino
  vNuevoGrupoTallas := pcpInputForm(cosDuplicar, cosSeleccioneGrupoDeTallas,
       'Select codi_grup_tallas, nomb_grup_tallas from GLO_GRUP_TALLAS where ACTIVO = 1 AND CODI_GRUP_TALLAS <> "NA" order by NOMB_GRUP_TALLAS',
       'codi_grup_tallas','nomb_grup_tallas', BaseDatosPCP , tabla_ventana.FieldByName('codi_grup_tallas').AsString);
  if vNuevoGrupoTallas = '' Then Exit;
  //Preguntar la temporada de destino
  vNuevaTemporada := pcpInputForm(cosDuplicar, cosSeleccioneTemporada,
       'Select codi_refe_temporada, nomb_refe_temporada from GLO_REFE_TEMPORADAS where ACTIVO = 1 order by nomb_refe_temporada',
       'codi_refe_temporada','nomb_refe_temporada', BaseDatosPCP , varEmpty);

  if vNuevaTemporada = '' then Exit;
  Try
      //Duplicar
      With Stor_Duplicar do
      Begin
          vVentanaProgreso := EjecutarAvance(cosDuplicar, Format(cosDuplicando, [Variables.NombreAMostrar]));
          StartDBTransaction;
          //Asignar los valores de los parametros
          Params[0].Value := tabla_ventana.FieldByName('codi_grup_tallas').AsString;
          Params[1].Value := vNuevoGrupoTallas;
          Params[2].Value := quer_temporadas.FieldByName('codi_refe_temporada').AsString;
          Params[3].Value := vNuevaTemporada;
          ExecProc;
          CerrarVentanaAvance(vVentanaProgreso);
          EjecutarMensajeInformacion(cosProcesoConExito,
                Format(cosDuplicarConExito,[quer_temporadas.FieldByName('codi_refe_temporada').AsString, vNuevaTemporada]));
          CommitDBWork;
      End;
  Except
      On e:Exception do
      Begin
          RollBackDBWork;
          CerrarVentanaAvance(vVentanaProgreso);
          EjecutarMensajeError(e.Message);
      End;
  End;

end;
{****************************************************************
Procedimiento   : padr_acti_elim_todosExecute
Objetivo        : Eliminar TODOS los registros del grupo de tallas/temporada
                  activo en pantalla
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tall_detalle.padr_acti_elim_todosExecute(
  Sender: TObject);
begin
  inherited;
  //Preguntar al usuario si desea eliminar
  If EjecutarMensaje(Format(cosDeseaEliminarTodos,[cosAsignacionGrupoTallas]), mtConfirmation,
       [mbYes, mbNo], 0) = mrYes Then
  Begin
       Try
          //Iniciar la transaccion
          StartDBTransaction;
          //Asignar los parametros del SP
          With stor_elim_todos do
          Begin
            Params[0].Value := tabla_ventana.FieldByName('codi_grup_tallas').AsString;
            Params[1].Value := quer_temporadas.FieldByName('codi_refe_temporada').AsString;
            //Ejecutar el SP
            ExecProc;
            //Mostrarle al user que todo salio ok
            EjecutarMensajeInformacion(cosProcesoConExito,
                 Format(cosEliminarTodosTallas,[quer_temporadas.FieldByName('codi_refe_temporada').AsString]));
            tabl_grup_tall_detalle.Refresh;
            //Hacer los cambios permanentes
            CommitDBWork;
          End;
       Except
           //Si hay error, devolver los cambios
           On e:Exception do
           Begin
               RollBackDBWork;
               EjecutarMensajeError(e.Message);
           End;
       End;

  End;
end;
{****************************************************************
Procedimiento   : tabl_grup_tall_detalleBeforeInsert
Objetivo        : Verificar antes de insertar un registro en el detalle de tallas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tall_detalle.tabl_grup_tall_detalleBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Verificar que el maestro esté guardado
  if (tabla_ventana.State in [dsEdit, dsInsert]) then
     Raise Exception.Create(Format(cosDebeGuardarMaestro, [Variables.Genero+Variables.NombreAMostrar])); 
end;

end.
