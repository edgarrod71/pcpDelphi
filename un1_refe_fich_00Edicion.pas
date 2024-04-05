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
        Unit            : un1_refe_fich_00Edicion
        Objetivo        : Ventana maestra para le edición
                          de fichas técnicas
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 02-Jun-2005
        Versión         : pcp4.0.20.11
*******************************************************************}
unit un1_refe_fich_00Edicion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, _cons_pcp,
  dxCntner, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, Boxes, PCPFrame, Db, kbmMemTable, DBTables, ActnList,
  ufra_mens_atencion;

type
  Tfn1_refe_fich_00Edicion = class(TForm)
    pane_informacion: TPCPFrame;
    padr_labe_nomb_referencia: TSCLDBLabel;
    padr_labe_marca: TSCLDBLabel;
    padr_labe_grupo: TSCLDBLabel;
    padr_labe_estilo: TSCLDBLabel;
    padr_labe_linea: TSCLDBLabel;
    padr_labe_tallas: TSCLDBLabel;
    padr_labe_tall_muestra: TSCLDBLabel;
    padr_labe_grup_tallas: TSCLDBLabel;
    padr_edit_nomb_referencia: TdxDBEdit;
    padr_edit_marca: TdxDBEdit;
    padr_edit_grupo: TdxDBEdit;
    padr_edit_estilo: TdxDBEdit;
    padr_edit_linea: TdxDBEdit;
    padr_edit_tallas: TdxDBEdit;
    padr_edit_tall_muestra: TdxDBEdit;
    padr_edit_grup_tallas: TdxDBEdit;
    padr_pane_deta_ficha: TPCPFrame;
    padr_quer_info_Referencia: TQuery;
    padr_data_info_Referencia: TDataSource;
    padr_acciones: TActionList;
    padr_acti_nuevo: TAction;
    padr_acti_editar: TAction;
    padr_acti_eliminar: TAction;
    padr_acti_guardar: TAction;
    padr_acti_cancelar: TAction;
    padr_tabl_fich_tecnicas: TkbmMemTable;
    padr_data_fich_Tecnicas: TDataSource;
    padr_tabl_fich_tecnicasCONS_REFE_FICHA: TIntegerField;
    padr_tabl_fich_tecnicasCONS_REFE_TIPO_FICHA: TIntegerField;
    padr_tabl_fich_tecnicasANULADA: TIntegerField;
    padr_tabl_fich_tecnicasCONS_REFERENCIA: TIntegerField;
    padr_tabl_fich_tecnicasCONS_REFE_VARIACION: TIntegerField;
    padr_tabl_fich_tecnicasCODI_REFERENCIA: TStringField;
    padr_tabl_fich_tecnicasCODI_INTE_REFERENCIA: TStringField;
    padr_tabl_fich_tecnicasCONS_REFE_LINEA: TIntegerField;
    padr_tabl_fich_tecnicasCONS_REFE_EDAD: TIntegerField;
    padr_tabl_fich_tecnicasCONS_REFE_ESTILO: TIntegerField;
    padr_tabl_fich_tecnicasCONS_REFE_GRUPO: TIntegerField;
    padr_tabl_fich_tecnicasCONS_REFE_TEMPORADA: TIntegerField;
    padr_tabl_fich_tecnicasCONS_REFE_MARCA: TIntegerField;
    padr_tabl_fich_tecnicasNOMB_REFERENCIA: TStringField;
    padr_tabl_fich_tecnicasCONS_REFE_GRUP_TALLAS: TIntegerField;
    padr_tabl_fich_tecnicasTALLAS: TStringField;
    padr_tabl_fich_tecnicasTALL_MUESTRA: TStringField;
    padr_tabl_fich_tecnicasDESCRIPCION: TStringField;
    padr_tabl_fich_Detalles: TkbmMemTable;
    padr_tabl_fich_DetallesCONS_REFE_FICHA: TIntegerField;
    data_tabl_fich_Detalles: TDataSource;
    padr_quer_tallas: TQuery;
    padr_acti_AfterEjecutar: TAction;
    padr_acti_BeforeEjecutar: TAction;
    padr_quer_sele_maestro: TQuery;
    padr_acti_BeforePost: TAction;
    padr_acti_AfterPost: TAction;
    quer_guar_maestro: TQuery;
    pane_mensaje: Tffra_mens_atencion;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure padr_tabl_fich_tecnicasAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure padr_tabl_fich_tecnicasBeforePost(DataSet: TDataSet);
    procedure padr_data_fich_TecnicasStateChange(Sender: TObject);
    procedure padr_tabl_fich_DetallesAfterInsert(DataSet: TDataSet);
    procedure pane_mensajeboto_SalirClick(Sender: TObject);
    procedure doActualizarPadre(DataSet: TDataSet);
    procedure padr_quer_info_ReferenciaBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    var_TipoFicha       :   TFichasTecnicasDiseno;
    var_Loading : Boolean;
    var_EsReferencia    : Boolean;
    Procedure ActualizarConsultaPadre;
  public
    { Public declarations }

    Property TipoFicha : TFichasTecnicasDiseno Read var_TipoFicha Write var_TipoFicha;
    Property Loading : Boolean Read var_Loading Write var_Loading;
    Procedure Ejecutar(peEsReferencia  : Boolean;
                peCons_Refe_Ficha : Integer = 0;
                peCons_Referencia : Integer = 0;
                peCons_Refe_Variacion : Integer = 0);
  end;

var
  fn1_refe_fich_00Edicion: Tfn1_refe_fich_00Edicion;

implementation

uses _func_pcp, _func_varias, un1_refe_fich_funciones,
  un1_refe_fich_administrador, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_00Edicion.FormCreate(Sender: TObject);
begin
        //Iniciarlizar las propiedades
        var_TipoFicha := ftdSinAsignar;
        var_Loading := False;
        WindowState := wsMaximized;
        AutoHints(Self);
        pane_informacion.Caption := cosInformacionDeLaReferencia;
//        pane_informacion.OmitirAnimacion := True;
        padr_pane_deta_ficha.Caption := cosDetallesFichasTecnicas;
        pane_Mensaje.SetHardColors;
        //Abrir las consultas
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : FormClose
Objetivo        : Liberar la ventana al cerrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_00Edicion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Release;
end;

{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Inserta o modifica una ficha técnica
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure Tfn1_refe_fich_00Edicion.Ejecutar(
        peEsReferencia  : Boolean;
        peCons_Refe_Ficha : Integer = 0;
        peCons_Referencia : Integer = 0;
        peCons_Refe_Variacion : Integer = 0);
Begin
    //Actualizar el estado
    var_Loading := True;
    Try
          //Actualizar la ventana si es una referencia
          var_EsReferencia := peEsReferencia;
          If var_EsReferencia Then
              Caption := Caption + '(' + cosReferencias + ')'
          Else
              Caption := Caption + '(' + cosPrototipos + ')';
          //Reinicializar las tablas
          padr_tabl_fich_tecnicas.Close;
          padr_tabl_fich_Detalles.Close;
          AbrirDataSet(padr_tabl_fich_tecnicas);
          AbrirDataSet(padr_tabl_fich_Detalles);
          //Ejecutar el before-load
          if Assigned(padr_acti_BeforeEjecutar.OnExecute) Then
               padr_acti_BeforeEjecutar.Execute;
          //Abrir la consulta de información de la referencia
          With padr_quer_info_Referencia do
          Begin
              Close;
              ParamByName('cons_referencia').Value := peCons_Referencia;
              Open;
          End;
          With padr_tabl_fich_tecnicas do
          Begin
               //Si el consecutivo es 0, el registro es nuevo
               if (peCons_Refe_Ficha = 0) Then
               Begin
                   Insert;
                   FieldByName('cons_refe_ficha').Value := peCons_Refe_ficha;
                   FieldByName('cons_referencia').Value := peCons_Referencia;
                   FieldByName('cons_refe_variacion').Value := peCons_refe_variacion;
                   //Listado de tallas
                   With padr_quer_tallas do
                   Begin
                       Close;
                       ParamByName('cons_refe_grup_tallas').Value := padr_quer_info_referencia.FieldByName('cons_refe_Grup_tallas').asInteger;
                       Open;
                       padr_tabl_fich_tecnicas.FieldByName('tallas').Value := FieldByName('tallas').asString;
                       Close;
                   End;
                   //Descripción de la referencia
                   padr_tabl_fich_tecnicas.FieldByName('descripcion').Value := padr_quer_info_Referencia.FieldByName('descripcion').asString;
               End
               Else
               //Si ya tiene consecutivo, llamar el registro
               Begin
                   padr_quer_sele_maestro.Close;
                   padr_quer_sele_maestro.ParamByName('cons_refe_ficha').Value := peCons_Refe_Ficha;
                   padr_quer_sele_maestro.Open;
                   padr_tabl_fich_tecnicas.LoadFromDataSet(padr_quer_sele_maestro, [mtcpoAppend]);
                   padr_quer_sele_maestro.Close;
                   //Asignar la referencia
                   if not (padr_tabl_fich_tecnicas.State  in [dsInsert, dsEdit]) Then
                       padr_tabl_fich_tecnicas.Edit;
                   //Datos de la referncia
                   FieldByName('cons_refe_ficha').Value := peCons_Refe_ficha;
                   FieldByName('cons_referencia').Value := peCons_Referencia;
                   FieldByName('cons_refe_variacion').Value := peCons_refe_variacion;
               End;
          End;
          //Ejecutar el post-load (llamar los registros específicos de cada ficha técnica)
           if Assigned(padr_acti_AfterEjecutar.OnExecute) Then
               padr_acti_AfterEjecutar.Execute;
    Except
         On E:Exception do
            EjecutarMensajeError(e.Message);
    End;
    //Actualizar el estado
    var_Loading := False;
End;

{****************************************************************
Procedimiento   : padr_tabl_fich_tecnicasAfterInsert
Objetivo        : Inicializar el registro al insertarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_00Edicion.padr_tabl_fich_tecnicasAfterInsert(
  DataSet: TDataSet);
begin
  //Registro de la tabla auxiliar
  With padr_tabl_fich_Detalles do
  Begin
        Close;
        Open;
        Insert;
  End;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_00Edicion.FormShow(Sender: TObject);
begin
  //Dar el foco al cuadro de edición de la talla
  //DarFoco(padr_edit_tall_muestra);
end;

procedure Tfn1_refe_fich_00Edicion.padr_tabl_fich_tecnicasBeforePost(
  DataSet: TDataSet);
begin
  //Si está en la carga inicial, salir
  if var_Loading Then Exit;
  //Ejecutar el BeforePost
  if Assigned(padr_acti_BeforePost.OnExecute) Then
        padr_acti_BeforePost.Execute;
  //Validar los registros faltantes
  With padr_tabl_fich_tecnicas do
  Begin
      //Validar los campos (referencia)
      if (FieldByName('cons_referencia').AsInteger = 0) Then
      Begin
          raise Exception.Create(format(cosErrorValorXNoValido, [cosNulo, cosReferencia]));
      End;
      //Validar los campos (variación)
      if (FieldByName('cons_refe_Variacion').asInteger = 0) Then
      Begin
          raise Exception.Create(format(cosErrorValorXNoValido, [cosNulo, cosVariacionReferencia]));
      End;
      //En insert
      if (State = dsInsert) Then
      Begin
          //Llenar los campos faltantes
          FieldByName('codi_referencia').Value := padr_quer_info_referencia.FieldByName('codi_referencia').asString;
          FieldByName('codi_inte_referencia').Value := padr_quer_info_referencia.FieldByName('codi_inte_referencia').asString;
          FieldByName('nomb_Referencia').Value := padr_quer_info_referencia.FieldByName('nomb_referencia').asString;
          FieldByName('cons_refe_linea').Value := padr_quer_info_referencia.FieldByName('cons_refe_linea').asInteger;
          FieldByName('cons_refe_edad').Value := padr_quer_info_referencia.FieldByName('cons_refe_edad').asInteger;
          FieldByName('cons_refe_estilo').Value := padr_quer_info_referencia.FieldByName('cons_refe_estilo').asInteger;
          FieldByName('cons_refe_grupo').Value := padr_quer_info_referencia.FieldByName('cons_refe_grupo').asInteger;
          FieldByName('cons_refe_temporada').Value := padr_quer_info_referencia.FieldByName('cons_refe_temporada').asInteger;
          FieldByName('cons_refe_marca').Value := padr_quer_info_referencia.FieldByName('cons_refe_marca').asInteger;
          FieldByName('cons_refe_grup_Tallas').Value := padr_quer_info_referencia.FieldByName('cons_refe_grup_Tallas').asInteger;
          if (FieldByName('descripcion').asString = '') Then
             FieldByName('descripcion').Value := padr_quer_info_referencia.FieldByName('descripcion').asString;
          //Generar el consecutivo
          FieldByName('cons_refe_ficha').Value := GenerarSecuencia('PCP_REFE_FICH_TECNICAS', 'CONS_REFE_FICHA');
          FieldByName('anulada').Value := -1;
      End;
      //Campos en general
      FieldByName('cons_refe_tipo_ficha').Value := coiFichasTecnicasDiseno[var_TipoFicha];
      //Consecutivo del auxiliar
      if not (padr_tabl_fich_Detalles.State in [dsEdit, dsInsert]) then
         padr_tabl_fich_Detalles.Edit;
      padr_tabl_fich_Detalles.FieldByName('cons_Refe_ficha').Value := FieldByName('cons_refe_ficha').asInteger;
  End;
  //Ejecutar en la base de datos
  Try
      StartDBTransaction;
      quer_guar_maestro.ExecSQL;
      //Ejecutar el guardado del hijo
      if Assigned(padr_acti_AfterPost.OnExecute) then
         padr_acti_AfterPost.Execute;
      //Finalizar la transacción
      CommitDBWork;
  Except
      On E:Exception do
      Begin
          RollBackDBWork;
          EjecutarMensajeError(e.Message);
          Abort;
      End;
  End;
end;
{****************************************************************
Procedimiento   : padr_data_fich_TecnicasStateChange
Objetivo        : Actualizar los controles al cambiar el estado 
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_00Edicion.padr_data_fich_TecnicasStateChange(
  Sender: TObject);
begin
        With padr_data_fich_tecnicas do
        Begin
            if (State = dsInsert) Then
                pane_mensaje.SetCaption(Format(cosAdicionando,[NombreTipoFichasTecnicas(var_TipoFicha)]))
            Else
            if (State = dsEdit) Then
                pane_mensaje.SetCaption(cosEditando + ' ' + NombreTipoFichasTecnicas(var_TipoFicha))
            Else
            if (State = dsBrowse) Then
                pane_mensaje.SetCaption(cosConsultando + ' ' + NombreTipoFichasTecnicas(var_TipoFicha))
            Else
                pane_mensaje.SetCaption('')
        End;
end;
{****************************************************************
Procedimiento   : padr_tabl_fich_DetallesAfterInsert
Objetivo        : Iniciar la edición del maestro al insertar/modificar
                  un registro en el hijo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_00Edicion.padr_tabl_fich_DetallesAfterInsert(
  DataSet: TDataSet);
begin
        if Not (padr_tabl_fich_tecnicas.State in [dsInsert, dsEdit]) Then
            padr_tabl_fich_tecnicas.Edit;
end;
{****************************************************************
Procedimiento   : pane_mensajeboto_SalirClick
Objetivo        : Cerrar la ventana 
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 04-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_00Edicion.pane_mensajeboto_SalirClick(
  Sender: TObject);
begin
       Close; 
end;
{****************************************************************
Procedimiento   : doActualizarPadre
Objetivo        : Actualizar los datos una vez guardado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_refe_fich_00Edicion.doActualizarPadre(
  DataSet: TDataSet);
begin
        ActualizarConsultaPadre;
end;
{****************************************************************
Procedimiento   : ActualizarConsultaPadre
Objetivo        : Actualizar la consulta del padre
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
Procedure Tfn1_refe_fich_00Edicion.ActualizarConsultaPadre;
Begin
    If Parent <> Nil Then
       if Parent.Owner <> Nil Then
         if (Parent.Owner is Tfn1_refe_fich_administrador) Then
                (Parent.Owner as Tfn1_refe_fich_administrador).padr_acti_actualizar.Execute;

End;
{****************************************************************
Procedimiento   : padr_quer_info_ReferenciaBeforeOpen
Objetivo        : Prepara la consulta de información de la referencia
                  antes de abrirla, evaluando si es referencia o
                  prototipo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_refe_fich_00Edicion.padr_quer_info_ReferenciaBeforeOpen(
  DataSet: TDataSet);
Var
        var_ParamValue  : Integer;
begin
    With padr_quer_info_Referencia do
    Begin
        //Guardar el valor anterior del parámetro
        Try
            var_ParamValue := ParamByName('CONS_REFERENCIA').AsInteger;
        Except
            var_ParamValue := 0;
        End;
        SQL.Clear;
        SQL.Add('SELECT *');
        If var_EsReferencia Then
            SQL.Add('FROM VIS_GLO_REFERENCIAS')
        Else
            SQL.Add('FROM VIS_GLO_PROTOTIPOS');
        SQL.Add('WHERE CONS_REFERENCIA = :CONS_REFERENCIA');
        //Parametros
        Params.Clear;
        Params.CreateParam(ftInteger, 'CONS_REFERENCIA', ptInput);
        ParamByName('CONS_REFERENCIA').Value := var_ParamValue;
    End;

end;

end.
