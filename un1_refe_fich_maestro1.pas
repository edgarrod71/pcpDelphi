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
        Unit            : un1_refe_fich_maestro1
        Objetivo        : Ventana maestra para la edición y creación
                          de fichas técnicas
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 23-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}

unit un1_refe_fich_maestro1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,  _cons_pcp,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar, PCPFrame,
  ufra_sele_refe_variacion, kbmMemTable, SCLTabs, dxTL, dxDBCtrl, dxDBGrid,
  SCLDBGrid, Menus, EDBImage;

type
  Tfn1_refe_fich_maestro1 = class(T_fvent_modal)
    fram_seleccion: Tffra_sele_refe_variacion;
    myTabla_Ventana: TkbmMemTable;
    myTabla_VentanaCONS_REFE_FICHA: TIntegerField;
    myTabla_VentanaCONS_REFE_TIPO_FICHA: TIntegerField;
    myTabla_VentanaANULADA: TIntegerField;
    myTabla_VentanaCONS_REFE_VARIACION: TIntegerField;
    myTabla_VentanaCODI_REFERENCIA: TStringField;
    myTabla_VentanaCODI_INTE_REFERENCIA: TStringField;
    myTabla_VentanaCONS_REFE_LINEA: TIntegerField;
    myTabla_VentanaCONS_REFE_EDAD: TIntegerField;
    myTabla_VentanaCONS_REFE_ESTILO: TIntegerField;
    myTabla_VentanaCONS_REFE_GRUPO: TIntegerField;
    myTabla_VentanaCONS_REFE_TEMPORADA: TIntegerField;
    myTabla_VentanaCONS_REFE_MARCA: TIntegerField;
    myTabla_VentanaNOMB_REFERENCIA: TStringField;
    myTabla_VentanaCONS_REFE_GRUP_TALLAS: TIntegerField;
    myTabla_VentanaTALLAS: TStringField;
    myTabla_VentanaTALL_MUESTRA: TStringField;
    myTabla_VentanaDESCRIPCION: TStringField;
    myTabla_VentanaCONS_REFERENCIA: TIntegerField;
    quer_tallas: TQuery;
    padr_page: TSCLPageControl;
    page_info_Referencia: TSCLTabSheet;
    page_info_ficha: TSCLTabSheet;
    padr_pane_info_referencia: TPanel;
    padr_labe_nomb_referencia: TSCLDBLabel;
    padr_labe_temporada: TSCLDBLabel;
    padr_labe_marca: TSCLDBLabel;
    padr_labe_grupo: TSCLDBLabel;
    padr_labe_estilo: TSCLDBLabel;
    padr_labe_linea: TSCLDBLabel;
    padr_labe_estado: TSCLDBLabel;
    padr_labe_edad: TSCLDBLabel;
    padr_edit_nomb_referencia: TdxDBEdit;
    padr_edit_temporada: TdxDBEdit;
    padr_edit_marca: TdxDBEdit;
    padr_edit_grupo: TdxDBEdit;
    padr_edit_estilo: TdxDBEdit;
    padr_edit_linea: TdxDBEdit;
    padr_edit_edad: TdxDBEdit;
    padr_edit_estado: TdxDBEdit;
    padr_labe_tallas: TSCLDBLabel;
    padr_edit_tallas: TdxDBEdit;
    padr_labe_tall_muestra: TSCLDBLabel;
    padr_edit_tall_muestra: TdxDBEdit;
    padr_labe_grup_tallas: TSCLDBLabel;
    padr_edit_grup_tallas: TdxDBEdit;
    padr_pane_descripcion: TPCPFrame;
    padr_edit_observaciones: TdxDBMemo;
    quer_guar_maestro: TQuery;
    quer_sele_maestro: TQuery;
    quer_Sele_referencia: TQuery;
    acti_fichas: TActionList;
    acti_post_load: TAction;
    quer_anchoAlto: TQuery;
    acti_carg_imagen: TAction;
    acti_cata_imagenes: TAction;
    quer_sele_imagen: TQuery;
    quer_sele_imagenIMAGEN: TBlobField;
    myTabla_Auxiliar: TkbmMemTable;
    myTabla_AuxiliarCONS_REFE_FICHA: TIntegerField;
    data_auxiliar: TDataSource;
    acti_befo_post: TAction;
    padr_popImagen: TTBXPopupMenu;
    padr_popm_cargarImagen: TTBXItem;
    padr_popm_CatalogoImagenes: TTBXItem;
    procedure FormCreate(Sender: TObject);
    procedure fram_seleccioncomb_codi_referenciaChange(Sender: TObject);
    procedure myTabla_VentanaBeforePost(DataSet: TDataSet);
    procedure fram_seleccioncomb_variacionChange(Sender: TObject);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure acti_cata_imagenesExecute(Sender: TObject);
    procedure acti_carg_imagenExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure myTabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure padr_acti_imprimirExecute(Sender: TObject);
    procedure padr_acti_imprimirUpdate(Sender: TObject);
    procedure padr_popImagenPopup(Sender: TObject);
    procedure myTabla_AuxiliarAfterInsert(DataSet: TDataSet);
    procedure myTabla_AuxiliarAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
    var_TipoFichaTecnica        : TFichasTecnicasDiseno;
    var_Loading : Boolean;
    var_AnchoImagenes   : Integer;
    var_AltoImagenes    : Integer;
    var_UltimaImagen    : Integer;
    var_StreamUltimaImagen  : TMemoryStream;
    Procedure SetUltimaImagen(peValue : Integer);
  public
    { Public declarations }
    Procedure Ejecutar(peCons_refe_ficha : Integer; peCons_Referencia : Integer = 0;
                peCons_Refe_Variacion : Integer = 0);
    Procedure ActualizarSeleccion;
    Procedure LoadImageIntoRecord(peBlobField : TBlobField; peConsFieldName : String = 'cons_herr_imagen');
    Property TipoFichaTecnica : TFichasTecnicasDiseno Read var_TipoFichaTecnica Write var_TipoFichaTecnica;
    Property Loading : Boolean Read var_Loading Write var_Loading;
    Property AnchoImagenes : Integer Read var_AnchoImagenes Write var_AnchoImagenes;
    Property AltoImagenes : Integer Read var_AltoImagenes Write var_AltoImagenes;
    Property UltimaImagen : Integer Read var_UltimaImagen Write SetUltimaImagen;
    Property StreamUltimaImagen : TMemoryStream Read var_StreamUltimaImagen Write var_StreamUltimaImagen;
    Procedure SetImageSize(peImagen : TEDBImage);
    Procedure IniciarEdicionMaestro;    
  end;

var
  fn1_refe_fich_maestro1: Tfn1_refe_fich_maestro1;

implementation

uses _func_varias,  _func_pcp, un1_refe_fich_funciones, _MDI,
  un1_refe_cata_imagenes, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro1.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicialización visual y de variables
  var_StreamUltimaImagen := TMemoryStream.Create;
  padr_pane_descripcion.Caption := cosDescripcion;
  var_TipoFichaTecnica := ftdSinAsignar;
  var_Loading := False;
  var_AnchoImagenes := 0;
  var_AltoImagenes := 0;
  SetUltimaImagen(-1);
  acti_carg_imagen.Caption := cosSeleccionarImagen;
  acti_cata_imagenes.Caption := _fmdi.acti_n1_refe_cata_imagenes.Caption;
  acti_cata_imagenes.Enabled := _fmdi.acti_n1_refe_cata_imagenes.Enabled;
  //Abrir las consulta
  InicializarFrame(fram_seleccion);
  fram_seleccion.var_most_pane_informacion := False;
  AbrirDataSet(quer_tallas);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : fram_seleccioncomb_codi_referenciaChange
Objetivo        : Actualizar el frame de selección al cambiar
                  la referencia
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro1.fram_seleccioncomb_codi_referenciaChange(
  Sender: TObject);
begin
  inherited;
  fram_seleccion.comb_codi_referenciaChange(Sender);
  ActualizarSeleccion;
end;
{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecuta la ventana e inicializa el registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure Tfn1_refe_fich_maestro1.Ejecutar(peCons_refe_ficha : Integer; peCons_Referencia : Integer = 0;
                peCons_Refe_Variacion : Integer = 0);
Begin
    var_Loading := True;
    With myTabla_Ventana do
    Begin
         //Si el consecutivo es 0, el registro es nuevo
         if (peCons_Refe_Ficha = 0) Then
         Begin
             Insert;
             FieldByName('cons_refe_ficha').Value := peCons_Refe_ficha;
             FieldByName('cons_referencia').Value := peCons_Referencia;
             FieldByName('cons_refe_variacion').Value := peCons_refe_variacion;
         End
         Else
         //Si ya tiene consecutivo, llamar el registro
         Begin
             quer_sele_maestro.ParamByName('cons_refe_ficha').Value := peCons_Refe_Ficha;
             quer_Sele_maestro.Open;
             myTabla_Ventana.LoadFromDataSet(quer_Sele_maestro, [mtcpoAppend]);
             quer_sele_maestro.Close;
             //Buscar la referencia
             With quer_sele_referencia do
             Begin
                 ParamByName('cons_refe_variacion').Value := myTabla_Ventana.FieldByName('cons_refe_variacion').asInteger;
                 Open;
                 if not (myTabla_Ventana.State  in [dsInsert, dsEdit]) Then
                   myTabla_Ventana.Edit;
                 myTabla_Ventana.FieldByName('cons_Referencia').Value := FieldByName('cons_referencia').asInteger;
                 Close;
             End;
             //Ubicar el registro
             fram_seleccion.comb_codi_referencia.KeyValue := myTabla_Ventana.FieldByName('cons_referencia').asInteger;
             fram_seleccion.comb_variacion.KeyValue := myTabla_Ventana.FieldByName('cons_refe_variacion').asInteger;
             CheckAndPostDataSet(myTabla_Ventana);
             ActualizarSeleccion;
         End;
    End;
    //Buscar el ancho y el alto de las imágenes
    With quer_anchoAlto do
    Begin
        if Active Then Close;
        ParamByName('VAR_TIPO_FICHA').Value := TipoFichasTecnicasToInteger(var_TipoFichaTecnica);
        Open;
        var_AnchoImagenes := FieldByName('ancho').asInteger;
        var_AltoImagenes := FieldByName('alto').asInteger;
        Close;
    End;
    //Ejecutar el post-load (llamar los registros específicos de cada ficha técnica)
    if Assigned(acti_post_load.OnExecute) Then
       acti_post_load.Execute;
    var_Loading := False;
End;
{****************************************************************
Procedimiento   : myTabla_VentanaBeforePost
Objetivo        : Preparar el registro para guardarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro1.myTabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //Si está en la carga inicial, salir
  if var_Loading Then Exit;
  //Validar los registros faltantes
  With myTabla_Ventana do
  Begin
      //Validar los campos (referencia)
      if (fram_Seleccion.comb_codi_referencia.EstaVacio) Then
      Begin
          darFoco(fram_seleccion.comb_codi_referencia);
          raise Exception.Create(format(cosErrorValorXNoValido, [cosNulo, fram_Seleccion.sclDBLabel1.Caption]));
      End;
      //Validar los campos (variación)
      if (fram_Seleccion.comb_variacion.EstaVacio) Then
      Begin
          darFoco(fram_seleccion.comb_variacion);
          raise Exception.Create(format(cosErrorValorXNoValido, [cosNulo, fram_Seleccion.sclDBLabel3.Caption]));
      End;
      //En insert
      if (myTabla_Ventana.State = dsInsert) Then
      Begin
          //Llenar los campos faltantes
          FieldByName('codi_referencia').Value := fram_seleccion.quer_referencias.FieldByName('codi_referencia').asString;
          FieldByName('codi_inte_referencia').Value := fram_seleccion.quer_referencias.FieldByName('codi_inte_referencia').asString;
          FieldByName('nomb_Referencia').Value := fram_seleccion.quer_referencias.FieldByName('nomb_referencia').asString;
          FieldByName('cons_refe_linea').Value := fram_seleccion.quer_referencias.FieldByName('cons_refe_linea').asInteger;
          FieldByName('cons_refe_edad').Value := fram_seleccion.quer_referencias.FieldByName('cons_refe_edad').asInteger;
          FieldByName('cons_refe_estilo').Value := fram_seleccion.quer_referencias.FieldByName('cons_refe_estilo').asInteger;
          FieldByName('cons_refe_grupo').Value := fram_seleccion.quer_referencias.FieldByName('cons_refe_grupo').asInteger;
          FieldByName('cons_refe_temporada').Value := fram_seleccion.quer_referencias.FieldByName('cons_refe_temporada').asInteger;
          FieldByName('cons_refe_marca').Value := fram_seleccion.quer_referencias.FieldByName('cons_refe_marca').asInteger;
          FieldByName('cons_refe_grup_Tallas').Value := fram_seleccion.quer_referencias.FieldByName('cons_refe_grup_Tallas').asInteger;
          if (FieldByName('descripcion').asString = '') Then
             FieldByName('descripcion').Value := fram_seleccion.quer_referencias.FieldByName('descripcion').asString;
          //Generar el consecutivo
          FieldByName('cons_refe_ficha').Value := GenerarSecuencia('PCP_REFE_FICH_TECNICAS', 'CONS_REFE_FICHA');
          FieldByName('anulada').Value := -1;
      End;
      //Campos en general
      FieldByName('cons_refe_tipo_ficha').Value := coiFichasTecnicasDiseno[var_TipoFichaTecnica];
      //Consecutivo del auxiliar
      if not (myTabla_Auxiliar.State in [dsEdit, dsInsert]) then
         myTabla_Auxiliar.Edit;
      myTabla_Auxiliar.FieldByName('cons_Refe_ficha').Value := FieldByName('cons_refe_ficha').asInteger;
  End;
  //Ejecutar en la base de datos
  Try
      StartDBTransaction;
      quer_guar_maestro.ExecSQL;
      //Ejecutar el guardado del hijo
      if Assigned(acti_befo_post.OnExecute) then
         acti_befo_post.Execute;
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
Procedimiento   : fram_seleccioncomb_variacionChange
Objetivo        : Actualizar la ventana al cambiar la selección
                  del panel de variación de la referencia
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro1.fram_seleccioncomb_variacionChange(
  Sender: TObject);
begin
  inherited;
  fram_seleccion.comb_codi_referenciaChange(Sender);
  ActualizarSeleccion;
end;
{****************************************************************
Procedimiento   : ActualizarSeleccion
Objetivo        : Actualizar los valores de la tabla al cambiar
                  alguna selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure Tfn1_refe_fich_maestro1.ActualizarSeleccion;
Begin
  //Mostrar/Ocultar el panel de la ficha técnica
  padr_page.Visible := (not fram_seleccion.comb_codi_referencia.EstaVacio) and
    (Not fram_seleccion.comb_variacion.EstaVacio);
  if not var_Loading then
  Begin
      //Actualizar las tallas
      If (myTabla_Ventana.State in [dsEdit, dsInsert]) Then
         if (Not fram_Seleccion.comb_codi_referencia.EstaVacio) Then
              myTabla_Ventana.FieldByName('tallas').Value := quer_tallas.FieldByName('tallas').asString
         Else
              myTabla_Ventana.FieldByName('tallas').Value := '';
      //Descripción de la referencia
      if (myTabla_Ventana.State = dsInsert) Then
          if (myTabla_Ventana.FieldByName('descripcion').asString = '') Then
                 myTabla_Ventana.FieldByName('descripcion').Value := fram_seleccion.quer_referencias.FieldByName('descripcion').asString;
  End;
End;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar los controles al cambiar el estado
                  del dataSource principal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro1.data_ventanaStateChange(Sender: TObject);
begin
  inherited;
  //Habilitar la selección solo en inserción
  SetControlEnabled(fram_seleccion, (myTabla_Ventana.State = dsInsert));
  padr_page.Visible := (myTabla_Ventana.Active) and (myTabla_Ventana.State <> dsInsert);
end;
{****************************************************************
Procedimiento   : acti_cata_imagenesExecute
Objetivo        : Abrir el catálogo de imágenes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro1.acti_cata_imagenesExecute(
  Sender: TObject);
begin
  inherited;
  if _fmdi.acti_n1_refe_cata_imagenes.Enabled then
      _fmdi.acti_n1_refe_cata_imagenes.Execute;
end;
{****************************************************************
Procedimiento   : acti_carg_imagenExecute
Objetivo        : Seleccionar una imágen desde el catálogo  y
                  guardarla en un STREAM de memoria
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro1.acti_carg_imagenExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(Tfn1_refe_cata_imagenes, fn1_refe_cata_imagenes);
  SetUltimaImagen(fn1_refe_cata_imagenes.Ejecutar(var_TipoFichaTecnica));
end;
{****************************************************************
Procedimiento   : FormDestroy
Objetivo        : Liberar los objetos auxiliares 
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro1.FormDestroy(Sender: TObject);
begin
  inherited;
  var_StreamUltimaImagen.Free;
end;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterInsert
Objetivo        : Preprar la tabla auxiliar luego de insertar un registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro1.myTabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  With myTabla_Auxiliar do
  Begin
        Close;
        Open;
        Insert;
  End;
end;

{****************************************************************
Procedimiento   : SetUltimaImagen
Objetivo        : Carga la imágen de un consecutivo en el stream
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure Tfn1_refe_fich_maestro1.SetUltimaImagen(peValue : Integer);
Begin
  if (peValue = -1) Then
  Begin
      var_StreamUltimaImagen.Clear;
      var_UltimaImagen := peValue;
  End
  Else
  Begin
      quer_sele_imagen.Close;
      quer_sele_imagen.ParamByName('CONS_HERR_IMAGEN').Value := peValue;
      quer_sele_imagen.Open;
      var_StreamUltimaImagen.Clear;
      quer_sele_imagenIMAGEN.SaveToStream(var_StreamUltimaImagen);
      quer_sele_imagen.Close;
      var_UltimaImagen := peValue;
  End;
End;
{****************************************************************
Procedimiento   : padr_acti_imprimirExecute
Objetivo        : Vista previa de la ficha técnica
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro1.padr_acti_imprimirExecute(
  Sender: TObject);
begin
  //inherited;
  ImprimirFichaTecnica(TipoFichaTecnica, myTabla_Ventana.FieldByName('cons_refe_ficha').asInteger);
end;
{****************************************************************
Procedimiento   : padr_acti_imprimirUpdate
Objetivo        : Actualizar el estado de la acción IMPRIMIR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro1.padr_acti_imprimirUpdate(
  Sender: TObject);
begin
  //inherited;
  padr_acti_imprimir.Enabled := (myTabla_Ventana.Active) and (myTabla_Ventana.State <> dsInsert) and (myTabla_Ventana.RecordCount > 0);
end;

{****************************************************************
Procedimiento   : LoadImageIntoRecord
Objetivo        : Carga el stream de la última imágen
                  en un contenedor específico
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure Tfn1_refe_fich_maestro1.LoadImageIntoRecord(peBlobField : TBlobField; peConsFieldName : String = 'cons_herr_imagen');
Begin
  if (peBlobField = Nil) then Exit;
  //Verificar la última imágen
  if (var_UltimaImagen <> -1) Then
  Begin
      //Editar la tabla de ventana
      if Not (myTabla_Ventana.State in [dsEdit, dsInsert]) Then
          myTabla_Ventana.Edit;
      if Not (peBlobField.DataSet.State in [dsEdit, dsInsert]) Then
          peBlobField.DataSet.Edit;
      peBlobField.LoadFromStream(StreamUltimaImagen);
      peBlobField.DataSet.FieldByName(peConsFieldName).Value := UltimaImagen;
  End;
End;
{****************************************************************
Procedimiento   : SetImageSize
Objetivo        : Cambia el tamaño de una imágen de acuerdo
                  al tamaño de la categoría
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure Tfn1_refe_fich_maestro1.SetImageSize(peImagen : TEDBImage);
Begin
       //Validar
       if (var_AnchoImagenes = 0) or (var_AltoImagenes = 0) then
          Exit;
       if (peImagen = Nil) then Exit;
       //Si es más ancho que alto
       if (var_AnchoImagenes > var_AltoImagenes) Then
       Begin
              peImagen.Width := peImagen.Parent.Width - 15;
              peImagen.Height := Trunc(peImagen.parent.Width * (var_altoImagenes / var_anchoImagenes));
       End
       Else
       Begin
              peImagen.Height := peImagen.Parent.Height - 15;
              peImagen.Width := Trunc(peImagen.parent.Height * (var_anchoImagenes / var_altoImagenes));
       End;
End;
{****************************************************************
Procedimiento   : padr_popImagenPopup
Objetivo        : Preparar el pop-up de selección de imágenes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro1.padr_popImagenPopup(Sender: TObject);
begin
  inherited;
  //Dar el foco al enviante
  if (Sender is TEDBImage) then
      DarFoco(Sender as TEDBImage);
end;
{****************************************************************
Procedimiento   : myTabla_AuxiliarAfterInsert
Objetivo        : Actualizar los controles al insertar un registro
                  en la tabla auxiliar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro1.myTabla_AuxiliarAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  IniciarEdicionMaestro;
end;
{****************************************************************
Procedimiento   : IniciarEdicionMaestro
Objetivo        : Iniciar la edición en la tabla maestra
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure Tfn1_refe_fich_maestro1.IniciarEdicionMaestro;
Begin
  //Iniciar la edición del maestro
  if Not (myTabla_Ventana.State in [dsInsert, dsEdit]) Then
    myTabla_Ventana.Edit;
End;
{****************************************************************
Procedimiento   : myTabla_AuxiliarAfterEdit
Objetivo        : Actualizar los controles al editar un registro
                  en la tabla auxiliar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro1.myTabla_AuxiliarAfterEdit(
  DataSet: TDataSet);
begin
  inherited;
  IniciarEdicionMaestro;
end;

end.
