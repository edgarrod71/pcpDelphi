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
        Unit            : un1_refe_00_maestro
        Objetivo        : Ventana maestra para las consultas de
                          Referencias y prototipos de productos
                          (child) con búsqueda visual
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 27-May-2005
        Versión         : pcp4.0.20.11
*******************************************************************}
unit un1_refe_00_maestro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ufra_edit_reportes,
  ExtCtrls, dfsSplitter, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels,
  TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl,
  dxEditor, dxEdLib, RxLookup, PCPLookUpComboEdit, StdCtrls, SoCtrls,
  SCLDBLabel, SCLTabs, ThumbnailList, dxDBTLCl, dxGrClms, JvTracker;

Type
  Tfn1_refe_00_maestro = class(T_fvent_child)
    quer_referencias: TQuery;
    data_referencias: TDataSource;
    quer_lineas: TQuery;
    quer_lineasCONS_REFE_LINEA: TIntegerField;
    quer_lineasNOMB_REFE_LINEA: TStringField;
    data_lineas: TDataSource;
    quer_edades: TQuery;
    quer_edadesCONS_REFE_EDAD: TIntegerField;
    quer_edadesNOMB_REFE_EDAD: TStringField;
    data_edades: TDataSource;
    quer_estilos: TQuery;
    quer_estilosCONS_REFE_ESTILO: TIntegerField;
    quer_estilosNOMB_REFE_ESTILO: TStringField;
    data_estilos: TDataSource;
    quer_grupos: TQuery;
    quer_gruposCONS_REFE_GRUPO: TIntegerField;
    quer_gruposNOMB_REFE_GRUPO: TStringField;
    data_grupos: TDataSource;
    quer_temporadas: TQuery;
    quer_temporadasCONS_REFE_TEMPORADA: TIntegerField;
    quer_temporadasNOMB_REFE_TEMPORADA: TStringField;
    data_temporadas: TDataSource;
    quer_marcas: TQuery;
    quer_marcasCONS_REFE_MARCA: TIntegerField;
    quer_marcasNOMB_REFE_MARCA: TStringField;
    data_marcas: TDataSource;
    pane_filtros: TPCPFrame;
    padr_labe_tipo_ficha: TSCLDBLabel;
    padr_labe_referencia: TSCLDBLabel;
    padr_labe_variacion: TSCLDBLabel;
    padr_labe_linea: TSCLDBLabel;
    padr_labe_edad: TSCLDBLabel;
    padr_labe_estilo: TSCLDBLabel;
    padr_labe_grupo: TSCLDBLabel;
    padr_labe_temporada: TSCLDBLabel;
    padr_labe_marca: TSCLDBLabel;
    comb_Tipo_Fich_Tecnica: TPCPLookUpComboEdit;
    comb_referencia: TPCPLookUpComboEdit;
    comb_variacion: TPCPLookUpComboEdit;
    comb_linea: TPCPLookUpComboEdit;
    Comb_edad: TPCPLookUpComboEdit;
    comb_estilo: TPCPLookUpComboEdit;
    comb_grupo: TPCPLookUpComboEdit;
    comb_temporada: TPCPLookUpComboEdit;
    comb_marca: TPCPLookUpComboEdit;
    padr_page_seleccion: TSCLPageControl;
    padr_page_lista: TSCLTabSheet;
    padr_page_imagenes: TSCLTabSheet;
    pane_fechas: TPanel;
    padr_labe_fech_creacion: TLabel;
    padr_labe_fech_modificacion: TLabel;
    chec_crea_desde: TdxCheckEdit;
    comb_crea_desde: TdxDateEdit;
    chec_crea_hasta: TdxCheckEdit;
    comb_crea_hasta: TdxDateEdit;
    chec_modi_desde: TdxCheckEdit;
    comb_modi_desde: TdxDateEdit;
    chec_modi_hasta: TdxCheckEdit;
    comb_modi_hasta: TdxDateEdit;
    pane_imagenes: TPCPFrame;
    Vistas: TThumbnailList;
    consultaCONS_REFERENCIA: TIntegerField;
    consultaCODI_REFERENCIA: TStringField;
    consultaCONS_REFE_TEMPORADA: TIntegerField;
    consultaCODI_REFE_TEMPORADA: TStringField;
    consultaNOMB_REFE_TEMPORADA: TStringField;
    consultaMOLDE: TStringField;
    consultaCODI_INTE_REFERENCIA: TStringField;
    consultaNOMB_REFERENCIA: TStringField;
    consultaCODI_BARRAS: TStringField;
    consultaCONS_REFE_MARCA: TIntegerField;
    consultaCODI_REFE_MARCA: TStringField;
    consultaNOMB_REFE_MARCA: TStringField;
    consultaCONS_REFE_LINEA: TIntegerField;
    consultaCODI_REFE_LINEA: TStringField;
    consultaNOMB_REFE_LINEA: TStringField;
    consultaCONS_REFE_EDAD: TIntegerField;
    consultaCODI_REFE_EDAD: TStringField;
    consultaNOMB_REFE_EDAD: TStringField;
    consultaCONS_REFE_ESTILO: TIntegerField;
    consultaCODI_REFE_ESTILO: TStringField;
    consultaNOMB_REFE_ESTILO: TStringField;
    consultaCONS_REFE_GRUPO: TIntegerField;
    consultaCODI_REFE_GRUPO: TStringField;
    consultaNOMB_REFE_GRUPO: TStringField;
    consultaCONS_REFE_SEXO: TIntegerField;
    consultaCODI_SEXO: TStringField;
    consultaNOMB_SEXO: TStringField;
    consultaCONS_REFE_LAVADO: TIntegerField;
    consultaCODI_REFE_LAVADO: TStringField;
    consultaNOMB_REFE_LAVADO: TStringField;
    consultaCONS_REFE_BORDADO: TIntegerField;
    consultaCODI_REFE_BORDADO: TStringField;
    consultaNOMB_REFE_BORDADO: TStringField;
    consultaCONS_REFE_ESTAMPADO: TIntegerField;
    consultaCODI_REFE_ESTAMPADO: TStringField;
    consultaNOMB_REFE_ESTAMPADO: TStringField;
    consultaCONS_REFE_GRUP_TALLAS: TIntegerField;
    consultaCODI_GRUP_TALLAS: TStringField;
    consultaNOMB_GRUP_TALLAS: TStringField;
    consultaCONS_REFE_ESTADO: TIntegerField;
    consultaCODI_REFE_ESTADO: TStringField;
    consultaNOMB_REFE_ESTADO: TStringField;
    consultaDESCRIPCION: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_TEMPORADA: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_TEMPORADA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_TEMPORADA: TdxDBGridMaskColumn;
    padr_gridMOLDE: TdxDBGridMaskColumn;
    padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_BARRAS: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_LINEA: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_LINEA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_LINEA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_EDAD: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_EDAD: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_EDAD: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_ESTILO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_ESTILO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_ESTILO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_SEXO: TdxDBGridMaskColumn;
    padr_gridCODI_SEXO: TdxDBGridMaskColumn;
    padr_gridNOMB_SEXO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_LAVADO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_LAVADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_LAVADO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_BORDADO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_BORDADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_BORDADO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_ESTAMPADO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_ESTAMPADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_ESTAMPADO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_GRUP_TALLAS: TdxDBGridMaskColumn;
    padr_gridCODI_GRUP_TALLAS: TdxDBGridMaskColumn;
    padr_gridNOMB_GRUP_TALLAS: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_ESTADO: TdxDBGridImageColumn;
    padr_gridDESCRIPCION: TdxDBGridBlobColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_ESTADO: TdxDBGridColumn;
    padr_gridCODI_REFE_ESTADO: TdxDBGridColumn;
    quer_imagenes: TQuery;
    quer_imagenesIMAG_SMALL: TBlobField;
    padr_pane_tamano: TPanel;
    padr_Acti_refe_lista: TAction;
    padr_Acti_refe_imagenes: TAction;
    padr_boto_refe_ver_imagenes: TTBXItem;
    padr_boto_refe_ver_lista: TTBXItem;
    padr_pane_tama_thumbs: TPanel;
    padr_tama_thumbs: TJvTracker;
    padr_pane_info_referencia: TPanel;
    padr_shap_sepa_1: TShape;
    padr_labe_nume_registros: TLabel;
    padr_sepa_20: TTBXSeparatorItem;
    padr_sepa_30: TTBXSeparatorItem;
    procedure FormCreate(Sender: TObject);
    procedure padr_page_seleccionChange(Sender: TObject);
    procedure consultaAfterOpen(DataSet: TDataSet);
    procedure padr_tama_thumbsChangedValue(Sender: TObject;
      NewValue: Integer);
    procedure padr_page_imagenesShow(Sender: TObject);
    procedure VistasClick(Sender: TObject);
    procedure consultaBeforeOpen(DataSet: TDataSet);
    procedure chec_crea_desdeChange(Sender: TObject);
    procedure chec_crea_hastaChange(Sender: TObject);
    procedure chec_modi_desdeChange(Sender: TObject);
    procedure chec_modi_hastaChange(Sender: TObject);
    procedure actualizarFiltros(Sender: TObject);
    procedure padr_gridFilterChanged(Sender: TObject; ADataSet: TDataSet;
      const AFilterText: String);
    procedure padr_Acti_refe_imagenesExecute(Sender: TObject);
    procedure padr_Acti_refe_listaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    var_Need_Reload     : Boolean;
    var_VentanaReferencias       : Boolean;
    Procedure SetVentanaReferencias (peValue : Boolean);
  public
    { Public declarations }
    Procedure doLlamarImagenes;
    Property VentanaReferencias : Boolean Read var_VentanaReferencias Write SetVentanaReferencias Default True;
    Function ConsultaValida : Boolean;

  end;

var
  fn1_refe_00_maestro: Tfn1_refe_00_maestro;

implementation

uses _cons_pcp, _MDI, _func_varias, _cons_colores, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-May-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_00_maestro.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicialización de controles visuales
  pane_filtros.Caption := cosFiltros;
//  pane_Filtros.OmitirAnimacion := True;
  pane_imagenes.Align := alClient;
  padr_pane_tamano.Color := clFinGradienteHard;
  padr_pane_tamano.Font.Color := clTextoGradienteHard;
  var_Need_Reload := True;
  padr_shap_sepa_1.Pen.Color := clTextoGradienteHard;
  padr_tama_thumbs.BackColor := clFinGradienteHard;
  padr_tama_Thumbs.ThumbColor := clFinGradienteHard;
  padr_tama_Thumbs.CaptionColor := clTextoGradienteHard;
  padr_tama_Thumbs.TrackColor := clFinGradiente;
  padr_tama_Thumbs.Maximum := coiTamanoVistasPrevias;
  //Abrir las consultas
  AbrirDataSet(quer_referencias);
  AbrirDataSet(quer_lineas);
  AbrirDataSet(quer_edades);
  AbrirDataSet(quer_estilos);
  AbrirDataSet(quer_grupos);
  AbrirDataSet(quer_temporadas);
  AbrirDataSet(quer_marcas);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : padr_page_seleccionChange
Objetivo        : Actualizar los controles al cambiar la
                  página activa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-May-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_00_maestro.padr_page_seleccionChange(Sender: TObject);
begin
  inherited;
  //Seleccionar el contenedor activo
  padr_grid.Visible := (padr_page_seleccion.ActivePage = padr_page_lista);
  pane_imagenes.Visible := (padr_page_seleccion.ActivePage = padr_page_imagenes);
  //Llamar las imagenes
  if padr_page_seleccion.ActivePage = padr_page_Imagenes Then
     padr_page_imagenesShow(Sender);
end;
{****************************************************************
Procedimiento   : consultaAfterOpen
Objetivo        : Actualizar los controles una vez abierta la consulta
                  principal de la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-May-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_00_maestro.consultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  var_Need_Reload := True;
  //Verificar si se deben llamar las imágenes
  if (padr_page_seleccion.ActivePage = padr_page_imagenes) Then
      doLlamarImagenes;
  //Panel de información
  If var_VentanaReferencias Then
        padr_labe_nume_registros.Caption := Format(cosNReferencias, [IntToStr(Consulta.RecordCount)])
  Else
        padr_labe_nume_registros.Caption := Format(cosNPrototipos, [IntToStr(Consulta.RecordCount)]);
end;
{****************************************************************
Procedimiento   : doLlamarImagenes
Objetivo        : Crea la vista previa de las imágenes de las
                  referencias
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-May-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure Tfn1_refe_00_maestro.doLlamarImagenes;
var
        var_BookMark    : TBookmark;
        var_Item        : TThumbnail;
        var_Stream      : TMemoryStream;
        var_Bitmap      : TBitmap;
        var_Rect        : TRect;
Begin
    //Verificar si necesita el reload    
    if Not var_Need_Reload Then Exit;
    //Limpiar
    Vistas.Thumbnails.Clear;
    quer_imagenes.Close;
    //Verificar que la consulta esté abierta
    If Not ConsultaValida Then Exit;
    //Recorrer la consulta
    var_Stream := TMemoryStream.Create;
    //Crear un bitmap para las imágenes no disponibles
    var_Bitmap := TBitmap.Create;
    With var_Bitmap do
    Begin
        //Tamaño
        Width := Vistas.ThumbnailSize;
        Height := Vistas.ThumbnailSize;
        //Pintar el texto
        Canvas.Brush.Color := ClWhite;
        Canvas.Brush.Style := bsSolid;
        Canvas.Pen.Color := clBlack;
        Canvas.Pen.Style := psClear;
        Canvas.Rectangle(0, 0, Width, Height);
        Canvas.Pen.Style := psSolid;
        var_Rect := Rect(0, Height, Width, Height);
        Canvas.Font.Size := 12;
        Canvas.Font.Style := [fsBold];
        Canvas.Font.Name := Self.Font.Name;
        //Dibujar el prohibido
        _fmdi.imag_general32.Draw(Canvas, (var_Rect.Right + var_Rect.Left) div 2 - 8, var_Rect.Top, 12);
        //DrawText(canvas.handle,pchar(UpperCase(CosNoDisponible)),-1, var_Rect ,DT_WORDBREAK or DT_CENTER);
    End;
    var_BookMark := data_ventana.DataSet.GetBookmark;
    Try
        data_ventana.DataSet.DisableControls;
        Vistas.BeginUpdate;
        //Obtener el registro actual
        With data_ventana.DataSet do
        Begin
            //Ir al primer registro
            First;
            //Recorrer el DataSet
            While not Eof do
            Begin
                //Insertar la imágen
                var_Item := Vistas.Thumbnails.Add;
                var_Item.FileName := FieldByName('cons_Referencia').asString;
                var_Item.Caption := FieldByName('codi_Referencia').asString;
                //Abrir la consulta de las imágenes
                quer_imagenes.Close;
                quer_imagenes.paramByName('cons_referencia').Value := FieldByName('cons_referencia').asInteger;
                quer_imagenes.Open;
                var_Stream.Clear;
                quer_imagenesIMAG_SMALL.SaveToStream(var_Stream);
                Try
                    //LLAMAR IMAGEN
                    var_Item.Picture.LoadFromStream(var_Stream);
                Except
                    //Llamar la imágen NO DISPONIBLE
                    var_Stream.Clear;
                    var_Bitmap.SaveToStream(var_Stream);
                    var_Item.Picture.LoadFromStream(var_Stream);
                End;
                quer_imagenes.Close;
                //Siguiente registro
                Next;
            End;
            var_Need_Reload := False;
        End;
    Except
          On E:Exception do
             EjecutarMensajeError(e.Message);
    End;
    var_Stream.Free;
    var_Bitmap.Free;
    data_ventana.DataSet.GotoBookmark(var_BookMark);
    quer_imagenes.Close;
    Vistas.EndUpdate;
    data_ventana.DataSet.EnableControls;
End;
{****************************************************************
Procedimiento   : padr_tama_thumbsChangedValue
Objetivo        : Actualizar el tamaño de la vista previa
                  desde el tracker
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_00_maestro.padr_tama_thumbsChangedValue(
  Sender: TObject; NewValue: Integer);
begin
  inherited;
  //Cambiar el tamaño de la vista previa
  Vistas.ThumbnailSize := padr_tama_thumbs.Value;
end;
{****************************************************************
Procedimiento   : padr_page_imagenesShow
Objetivo        : Actualizar la consulta de imágenes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_00_maestro.padr_page_imagenesShow(Sender: TObject);
Var
        var_I   : Integer;
begin
  inherited;
  //Verificar si se deben llamar las imágenes
  if (var_need_reload) Then
      doLlamarImagenes;
  //Validar la selección
  if Not ConsultaValida Then Exit;
  //Ubicar el registro
  For var_i := 1 to Vistas.Thumbnails.Count do
  Begin
      If (Vistas.Thumbnails.Items[var_i - 1].FileName = data_ventana.DataSet.FieldByName('cons_Referencia').asString) Then
      Begin
          Vistas.ItemIndex := var_i - 1;
          Break;
      End;
  End;
end;
{****************************************************************
Procedimiento   : VistasClick
Objetivo        : Posicionar el DataSet en el mismo registro que
                  las imágenes 
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_00_maestro.VistasClick(Sender: TObject);
begin
  inherited;
  //Validar la selección
  if Not ConsultaValida Then Exit;
  if (vistas.ItemIndex = -1) Then Exit;
  //Actualizar la selección de la referencia al cambiar de item
  data_Ventana.DataSet.Locate('cons_Referencia', StrToInt(Vistas.Thumbnails.Items[Vistas.ItemIndex].Filename), []);
end;
{****************************************************************
Procedimiento   : consultaBeforeOpen
Objetivo        : Preparar la consulta antes de abrirla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_00_maestro.consultaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  //Asignar los filtros
  With Consulta do
  Begin
      //Armar el SQL
      Sql.Clear;
      Sql.Add('SELECT * FROM ');
      If var_VentanaReferencias Then
        Sql.Add('VIS_GLO_REFERENCIAS')
      Else
        Sql.Add('VIS_GLO_PROTOTIPOS');
      Sql.Add('WHERE CONS_REFERENCIA > 0');
      Sql.Add('ORDER BY CODI_REFERENCIA');
      Filter := '';
      //Estado
      //--------------PENDIENTE------------- FILTROS POR ESTADO
      Filter := 'cons_refe_Estado <> -1';
      //Tipo de ficha técnica
      if Not (comb_Tipo_fich_tecnica.EstaVacio) then
         Filter := Filter + cosSQLAnd + comb_Tipo_fich_tecnica.KeyField + ' = ' +  IntToStr(comb_Tipo_fich_tecnica.KeyValue);
      //Codigo de la referencia  
      if Not (comb_Referencia.EstaVacio) then
         Filter := Filter + cosSQLAnd + comb_Referencia.KeyField + ' = ' +  IntToStr(comb_Referencia.KeyValue);
      //Tipo de variación de la referencia
      if Not (comb_variacion.EstaVacio) then
         Filter := Filter + cosSQLAnd + comb_variacion.KeyField + ' = ' +  IntToStr(comb_variacion.KeyValue);
      //Linea
      if Not (comb_Linea.EstaVacio) then
         Filter := Filter + cosSQLAnd + comb_Linea.KeyField + ' = ' +  IntToStr(comb_Linea.KeyValue);
      //Edad
      if Not (comb_Edad.EstaVacio) then
         Filter := Filter + cosSQLAnd + comb_Edad.KeyField + ' = ' +  IntToStr(comb_Edad.KeyValue);
      //Estilo
      if Not (comb_Estilo.EstaVacio) then
         Filter := Filter + cosSQLAnd + comb_Estilo.KeyField + ' = ' +  IntToStr(comb_Estilo.KeyValue);
      //Grupo
      if Not (comb_Grupo.EstaVacio) then
         Filter := Filter + cosSQLAnd + comb_Grupo.KeyField + ' = ' +  IntToStr(comb_Grupo.KeyValue);
      //Temporada
      if Not (comb_Temporada.EstaVacio) then
         Filter := Filter + cosSQLAnd + comb_Temporada.KeyField + ' = ' +  IntToStr(comb_Temporada.KeyValue);
      //Marca
      if Not (comb_Marca.EstaVacio) then
         Filter := Filter + cosSQLAnd + comb_Marca.KeyField + ' = ' +  IntToStr(comb_Marca.KeyValue);
      //Fecha de creacion (desde)
      if chec_crea_desde.Checked then
         Filter := Filter + cosSQLAnd + 'fech_sistema >= '+ '''' + FormatDateTime(cosFormatoFecha, comb_crea_desde.Date) + '''';
      //Fecha de creacion (Hasta)
      if chec_crea_hasta.Checked then
         Filter := Filter + cosSQLAnd + 'fech_sistema <= '+ '''' + FormatDateTime(cosFormatoFecha, comb_crea_hasta.Date) + '''';
      //Fecha de modificacion (desde)
      if chec_modi_desde.Checked then
         Filter := Filter + cosSQLAnd + 'fech_modificacion >= '+ '''' + FormatDateTime(cosFormatoFecha, comb_modi_desde.Date) + '''';
      //Fecha de modificacion (Hasta)
      if chec_modi_hasta.Checked then
         Filter := Filter + cosSQLAnd + 'fech_modificacion <= '+ '''' + FormatDateTime(cosFormatoFecha, comb_modi_hasta.Date) + '''';
      Filtered := True;
  End;
end;
{****************************************************************
Procedimiento   : chec_crea_hastaChange
Objetivo        : Activar/Desactivar el combo de fecha
                  de creacion (desde)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_00_maestro.chec_crea_desdeChange(Sender: TObject);
begin
  inherited;
  comb_crea_desde.Enabled := chec_crea_desde.Checked;
end;
{****************************************************************
Procedimiento   : chec_crea_hastaChange
Objetivo        : Activar/Desactivar el combo de fecha
                  de creacion (hasta)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_00_maestro.chec_crea_hastaChange(Sender: TObject);
begin
  inherited;
  comb_crea_hasta.Enabled := chec_crea_hasta.Checked;
end;
{****************************************************************
Procedimiento   : chec_modi_desdeChange
Objetivo        : Activar/Desactivar el combo de fecha
                  de modificación (desde)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_00_maestro.chec_modi_desdeChange(Sender: TObject);
begin
  inherited;
  comb_modi_desde.Enabled := chec_modi_desde.Checked;
end;
{****************************************************************
Procedimiento   : chec_modi_hastaChange
Objetivo        : Activar/Desactivar el combo de fecha
                  de modificación (hasta)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_00_maestro.chec_modi_hastaChange(Sender: TObject);
begin
  inherited;
  comb_modi_hasta.Enabled := chec_modi_hasta.Checked;
end;
{****************************************************************
Procedimiento   : actualizarFiltros
Objetivo        : Actualizar los filtros
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_00_maestro.actualizarFiltros(Sender: TObject);
begin
  inherited;
  if Not ConsultaValida Then Exit;
  data_Ventana.DataSet.Close;
  data_Ventana.DataSet.DisableControls;
  Try
     AbrirDataSet(consulta);
  Except
      on E:Exception do
         EjecutarMensajeError(e.Message);
  End;
  data_Ventana.DataSet.EnableControls;
end;
{****************************************************************
Procedimiento   : padr_gridFilterChanged
Objetivo        : Actualizar los controles al cambiar el filtro
                  desde el grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_00_maestro.padr_gridFilterChanged(Sender: TObject;
  ADataSet: TDataSet; const AFilterText: String);
begin
  inherited;
  doLlamarImagenes;
end;
{****************************************************************
Procedimiento   : padr_Acti_refe_imagenesExecute
Objetivo        : Seleccionar la vista de imágenes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_00_maestro.padr_Acti_refe_imagenesExecute(
  Sender: TObject);
begin
  inherited;
  padr_acti_refe_Imagenes.Checked := True;
  padr_boto_refe_ver_imagenes.Checked := True;
  padr_page_seleccion.ActivePage := padr_page_Imagenes;
  padr_page_seleccionChange(Sender);
  DarFoco(padr_pane_tamano);
end;
{****************************************************************
Procedimiento   : padr_Acti_refe_listaExecute
Objetivo        : Seleccionar la vista en lista
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_00_maestro.padr_Acti_refe_listaExecute(
  Sender: TObject);
begin
  inherited;
  padr_acti_refe_Lista.Checked := True;
  padr_boto_refe_ver_Lista.Checked := True;
  padr_page_seleccion.ActivePage := padr_page_lista;
  padr_page_seleccionChange(Sender);
  DarFoco(padr_grid);
end;
{****************************************************************
Procedimiento   : SetVentanaReferencias
Objetivo        : Asignar el tipo de ventana (Referencias o Referencias)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure Tfn1_refe_00_maestro.SetVentanaReferencias(peValue : Boolean);
Begin
    var_VentanaReferencias := peValue;
    //Otros eventos - RC20.11 -> por ahora, ningun otro automático

End;
{****************************************************************
Procedimiento   : ConsultaValida
Objetivo        : Verifica si la consulta es válida para operaciones DB
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Function Tfn1_refe_00_maestro.ConsultaValida : Boolean;
Begin
  Result := False;
  If (data_Ventana.DataSet = Nil) Then Exit;
  If Not (data_Ventana.DataSet.Active) Then Exit;
  if (data_Ventana.DataSet.RecordCount = 0) Then Exit;
  //Si pasó todas las condiciones, es válida
  Result := True;
End;

{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar la consulta al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_refe_00_maestro.FormShow(Sender: TObject);
begin
  inherited;
  if (data_Ventana.DataSet = Nil) Then
     data_Ventana.DataSet := Consulta;
  if not Consulta.Active Then AbrirDataSet(Consulta);
end;

end.
