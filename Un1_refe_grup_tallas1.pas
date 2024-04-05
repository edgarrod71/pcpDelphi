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

unit Un1_refe_grup_tallas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxExEdtr, dxEdLib, dxDBELib, Boxes, PCPFrame, PictureContainer, DBTables,
  Menus, TB2Item, TBX, AdvPanel, dxCntner, dxEditor, StdCtrls,
  SoCtrls, SCLDBLabel, ExtCtrls, TB2Dock, TB2Toolbar, dxTL, dxDBCtrl,
  dxDBGrid, JvExControls, JvComponent, JvGradientHeaderPanel, PCPProceso;
type
  Tfn1_refe_grup_tallas1 = class(T_fvent_modal)
    data_detalle: TDataSource;
    tabl_grup_tall_detalle: TTable;
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
    Tabla_VentanaCONS_GRUP_TALLAS: TIntegerField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    acci_ventana: TActionList;
    acti_nuev_talla: TAction;
    acti_modi_talla: TAction;
    acti_elim_todas: TAction;
    acti_duplicar: TAction;
    quer_consecutivo: TQuery;
    PCPFrame1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    PCPFrame2: TPCPFrame;
    grid_detalle: TdxDBGrid;
    grid_detalleCODI_GRUP_TALLAS: TdxDBGridMaskColumn;
    grid_detalleCODI_REFE_TEMPORADA: TdxDBGridMaskColumn;
    grid_detalleSECU_TALLA: TdxDBGridMaskColumn;
    grid_detalleTALLA: TdxDBGridMaskColumn;
    TBXDock1: TTBXDock;
    barr_ventana: TTBXToolbar;
    TBXItem4: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem9: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem10: TTBXItem;
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
    procedure acti_duplicarExecute(Sender: TObject);
    procedure acti_elim_todosExecute(Sender: TObject);
    procedure tabl_grup_tall_detalleBeforeInsert(DataSet: TDataSet);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure tabl_grup_tall_detalleBeforePost(DataSet: TDataSet);
    procedure acti_nuev_tallaExecute(Sender: TObject);
    procedure acti_modi_tallaExecute(Sender: TObject);
  private
    { Private declarations }
    vVariablesInicializadas : Boolean;
  public
    { Public declarations }
  end;

ResourceString
    cosNuevaTalla           = 'Nueva talla';
    cosTallaAlternativa     = 'Talla alternativa';
    cosEscribaNuevaTalla    = 'Escriba la nueva talla';
    cosEscribaTallaAlternativa= 'Escriba la talla alternativa';
    cosEditarTalla          = 'Editar talla';
    cosEscribaNuevoValorTalla= 'Escriba el nuevo valor para la talla';
    cosEscribaNuevoValorTallaAlternativa = 'Escriba el nuevo valor para la talla alternativa';
    cosDuplicarConExito     = 'Duplicar grupo de tallas desde el grupo (%s) hacia a el grupo (%s).';
    cosAsignacionGrupoTallas= '(Tallas asignadas al grupo en la temporada especificada)';
    cosEliminarTodosTallas  = 'Eliminar las tallas del grupo %s.';
  
  
var
  fn1_refe_grup_tallas1: Tfn1_refe_grup_tallas1;


implementation
uses _func_varias, _cons_pcp, _func_pcp, _MDI, _Traductor;
{$R *.DFM}

procedure Tfn1_refe_grup_tallas1.quer_temporadasCalcFields(
  DataSet: TDataSet);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : tabl_grup_tall_detalleAfterInsert
Objetivo        : Asignar los valores del padre al momento de crear
                  el detalle del grupo de tallas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tallas1.tabl_grup_tall_detalleAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
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
procedure Tfn1_refe_grup_tallas1.data_ventanaStateChange(
  Sender: TObject);
Var
  isBrowsing : Boolean;
begin
  inherited;
  isBrowsing := Not(tabla_ventana.State in [dsEdit, dsInsert]);
  acti_nuev_talla.Enabled := IsBrowsing;
  acti_modi_talla.Enabled := IsBrowsing;
  padr_acti_eliminar.Enabled := IsBrowsing;
  acti_duplicar.Enabled := IsBrowsing;
  acti_elim_todas.Enabled := IsBrowsing;

end;
{****************************************************************
Procedimiento   : padr_acti_guardarExecute
Objetivo        : Ejecuta la acción de guardar (sobreescribe al padre)
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tallas1.padr_acti_guardarExecute(
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
procedure Tfn1_refe_grup_tallas1.padr_acti_cancelarExecute(
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
procedure Tfn1_refe_grup_tallas1.comb_codi_temporadaChange(
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
procedure Tfn1_refe_grup_tallas1.padr_acti_nuevoExecute(
  Sender: TObject);
Begin
        inherited;
end;
{****************************************************************
Procedimiento   : padr_acti_modificarExecute
Objetivo        : Ejecuta la acción de editar la talla seleccionada
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tallas1.padr_acti_modificarExecute(
  Sender: TObject);
Begin
        Inherited;
end;
{****************************************************************
Procedimiento   : padr_acti_eliminarExecute
Objetivo        : Ejecutar la acción de eliminar y refrescar la vista.
                  Eliminar la talla seleccionada
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}

procedure Tfn1_refe_grup_tallas1.padr_acti_eliminarExecute(
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
procedure Tfn1_refe_grup_tallas1.tabl_grup_tallasAfterPost(
  DataSet: TDataSet);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Acciones cuando se solicita cerrar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tallas1.FormCloseQuery(Sender: TObject;
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
procedure Tfn1_refe_grup_tallas1.FormShow(Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Ejecutar las acciones de inicializacion de la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tallas1.FormCreate(Sender: TObject);
begin
  inherited;
  ColorGrid(Grid_Detalle);
  //Abrir las tablas
  tabl_grup_tall_detalle.Open;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : padr_acti_duplicarExecute
Objetivo        : Duplica la asignacion de tallas para el grupo, en
                  otra temporada seleccionada
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tallas1.acti_duplicarExecute(
  Sender: TObject);
Var
        vNuevoGrupoTallas : Integer;
        vVentanaProgreso : tVentanaMensajes;
begin
  inherited;
  //Preguntar el grupo de tallas del destino
  vNuevoGrupoTallas := pcpInputForm(cosDuplicar, cosSeleccioneGrupoDeTallas,
       'Select cons_grup_tallas, nomb_grup_tallas from GLO_GRUP_TALLAS where CODI_GRUP_TALLAS <> "NA" order by NOMB_GRUP_TALLAS',
       'cons_grup_tallas','nomb_grup_tallas', BaseDatosPCP , tabla_ventana.FieldByName('cons_grup_tallas').AsInteger);
  Try
      //Duplicar
      With Stor_Duplicar do
      Begin
          vVentanaProgreso := EjecutarAvance(cosDuplicar, Format(cosDuplicando, [Variables.NombreAMostrar]));
          StartDBTransaction;
          //Asignar los valores de los parametros
          Params[0].Value := tabla_ventana.FieldByName('cons_grup_tallas').AsString;
          Params[1].Value := vNuevoGrupoTallas;
          ExecProc;
          CerrarVentanaAvance(vVentanaProgreso);
          EjecutarMensajeInformacion(cosProcesoConExito,
                Format(cosDuplicarConExito,[tabla_ventana.FieldByName('cons_grup_tallas').AsString, IntToStr(vNuevoGrupoTallas)]));
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
procedure Tfn1_refe_grup_tallas1.acti_elim_todosExecute(
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
            Params[0].Value := tabla_ventana.FieldByName('cons_grup_tallas').AsString;
            //Ejecutar el SP
            ExecProc;
            //Mostrarle al user que todo salio ok
            EjecutarMensajeInformacion(cosProcesoConExito,
                 Format(cosEliminarTodosTallas,[tabla_ventana.FieldByName('nomb_grup_tallas').AsString]));
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
procedure Tfn1_refe_grup_tallas1.tabl_grup_tall_detalleBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Verificar que el maestro esté guardado
  if (tabla_ventana.State in [dsEdit, dsInsert]) then
     Raise Exception.Create(Format(cosDebeGuardarMaestro, [Variables.Genero+Variables.NombreAMostrar])); 
end;

{****************************************************************
Procedimiento   : tabla_ventanaBeforePost
Objetivo        : Valores adicionales del grupo de tallas antes de
                  guardarlo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tallas1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //Si está insertando, generar el consecutivo
  If tabla_ventana.State=dsInsert then
        GenerarSecuencia(tabla_ventana);
end;

{****************************************************************
Procedimiento   : tabl_grup_tall_detalleBeforePost
Objetivo        : Valores adicionales del detalle antes de
                  guardarlo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_grup_tallas1.tabl_grup_tall_detalleBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //Si está insertando, generar el consecutivo
  With tabl_grup_tall_detalle do
  Begin
        If State = dsInsert Then
                GenerarSecuencia(tabl_grup_tall_detalle);
  End;

end;

procedure Tfn1_refe_grup_tallas1.acti_nuev_tallaExecute(Sender: TObject);
Var
  NuevaTalla    : String;
begin
  inherited;
  //Guardar el maestro
  if tabla_ventana.State in [dsEdit, dsInsert] Then
  	tabla_ventana.Post;
  grid_detalle.SetFocus;
  tabl_grup_tall_detalle.Insert;
  //Solicitar el valor de la nueva talla
  NuevaTalla := pcpInputForm(cosNuevaTalla, cosEscribaNuevaTalla, tvString, varEmpty);
  //Si hay talla, crearla
  If NuevaTalla <> '' Then
  Begin
      With tabl_grup_tall_Detalle do
      Begin
        FieldByName('talla').Value := NuevaTalla;
        Post;
        Refresh;
        //Reposicionar
        Last;
        //Ejecutar de nuevo la inserción
        acti_nuev_tallaExecute(Sender);
      End;
  End
  //Si no hay talla, cancelar
  Else
      tabl_grup_tall_Detalle.Cancel;
end;

procedure Tfn1_refe_grup_tallas1.acti_modi_tallaExecute(Sender: TObject);
Var
  NuevaTalla            : String;
  SecuenciaActual       : Integer;
begin
  Inherited;      
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

end.
