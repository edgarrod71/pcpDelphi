{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeaci�n y Control de la Producci�n                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo est� protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducci�n no autorizada, la ingenier�a inversa y la   }
{       distribuci�n total o parcial del c�digo contenido en este   }
{       archivo est� estrictamente prohibido y podr� tener severas  }
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
        Unit            : un1_refe_cata_imagenes
        Objetivo        : Cat�logo general de im�genes para referencias
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 17-May-2005
        Versi�n         : pcp4.0.20.8
*******************************************************************}
unit un1_refe_cata_imagenes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, _cons_pcp,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  Db, Grids, BaseGrid, AdvGrid, AdvCGrid, dxTL, dxDBCtrl, dxCntner, dxDBTL,
  ExtCtrls, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  TBX, TB2Item, TB2Dock, TB2Toolbar, AdvPicture, ThumbnailList, PCPFrame,
  kbmMemTable, ExtDlgs, ComCtrls, JvExComCtrls, JvComCtrls, JvExControls,
  JvComponent, JvTracker, Menus, RxLookup, PCPLookUpComboEdit,
  JvImageSquare;

  
type
  Tfn1_refe_cata_imagenes = class(T_fvent_modal)
    quer_categorias: TQuery;
    data_categorias: TDataSource;
    quer_categoriasCONS_HERR_IMAG_CATEGORIA: TIntegerField;
    quer_categoriasNOMB_HERR_IMAG_CATEGORIA: TStringField;
    quer_categoriasCONS_HERR_IMAG_CATALOGO: TIntegerField;
    Splitter1: TSplitter;
    quer_categoriasANCHO: TIntegerField;
    quer_categoriasALTO: TIntegerField;
    pane_categoria: TPCPFrame;
    Arbol: TdxDBTreeList;
    ArbolCONS_HERR_IMAG_CATEGORIA: TdxDBTreeListMaskColumn;
    ArbolNOMB_HERR_IMAG_CATEGORIA: TdxDBTreeListMaskColumn;
    ArbolCONS_HERR_IMAG_CATALOGO: TdxDBTreeListMaskColumn;
    pane_contenedor: TPCPFrame;
    VistaPrevia: TThumbnailList;
    quer_imagenes: TQuery;
    quer_imagenesCONS_HERR_IMAGEN: TIntegerField;
    quer_imagenesCONS_HERR_IMAG_CATEGORIA: TIntegerField;
    quer_imagenesCONS_HERR_IMAG_VISTA: TIntegerField;
    quer_imagenesNOMB_HERR_IMAGEN: TStringField;
    quer_imagenesIMAGEN: TBlobField;
    quer_imagenesAJUS_IMAGEN: TIntegerField;
    quer_imagenesCONS_REFE_ESTILO: TIntegerField;
    quer_imagenesCONS_REFE_MARCA: TIntegerField;
    quer_imagenesCONS_REFE_TEMPORADA: TIntegerField;
    quer_imagenesOBSERVACIONES: TMemoField;
    quer_imagenesPALA_CLAVES: TStringField;
    myTabla_Ventana: TkbmMemTable;
    myTabla_Ventanacons_fake: TIntegerField;
    quer_imagenesFECH_SISTEMA: TDateTimeField;
    quer_imagenesUSUA_SISTEMA: TStringField;
    pane_tama_thumb: TPanel;
    tama_thumbs: TJvTracker;
    quer_eliminar: TQuery;
    POP_Grid: TTBXPopupMenu;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    pane_filtros: TPanel;
    quer_refe_marcas: TQuery;
    data_Refe_marcas: TDataSource;
    quer_refe_estilos: TQuery;
    data_refe_estilo: TDataSource;
    quer_Refe_temporadas: TQuery;
    data_refe_temporadas: TDataSource;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    comb_estilo: TPCPLookUpComboEdit;
    comb_marca: TPCPLookUpComboEdit;
    comb_temporada: TPCPLookUpComboEdit;
    pane_padr_info_categoria: TPanel;
    pane_info_categoria: TPanel;
    pane_nuevo: TPanel;
    nuev_imagen: TJvImageSquare;
    labe_nuevo: TLabel;
    shap_sepa: TShape;
    procedure FormCreate(Sender: TObject);
    procedure ArbolChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure Splitter1Moved(Sender: TObject);
    procedure GridCustomCellDraw(Sender: TObject; Canvas: TCanvas; ACol,
      ARow: Integer; AState: TGridDrawState; ARect: TRect;
      Printing: Boolean);
    procedure quer_imagenesAfterInsert(DataSet: TDataSet);
    procedure quer_categoriasAfterOpen(DataSet: TDataSet);
    procedure VistaPreviaClick(Sender: TObject);
    procedure quer_imagenesAfterEdit(DataSet: TDataSet);
    procedure VistaPreviaDblClick(Sender: TObject);
    procedure myTabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure pane_tama_thumbResize(Sender: TObject);
    procedure tama_thumbsChangedValue(Sender: TObject; NewValue: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure padr_acti_eliminarExecute(Sender: TObject);
    procedure padr_acti_eliminarUpdate(Sender: TObject);
    procedure padr_acti_modificarUpdate(Sender: TObject);
    procedure doActualizarFiltros(Sender: TObject);
    procedure nuev_imagenClick(Sender: TObject);
  private
    { Private declarations }
    var_Updating : Boolean;
    Procedure doCalcularTamanosVistaPrevia;
    Procedure doLlamarCategoria;
    Procedure DoInsertar;
    Procedure DoEditar;
  public
    { Public declarations }
    Function Ejecutar(peTipoFichaTecnica :  TFichasTecnicasDiseno) : Integer;
  end;

Const
    cosSepa_Columnas = 10;
    cosSepa_Filas   = 5;
    cosBorde    = 15;
    var_colo_borde  = $00FF9E00;
    var_Fondo       = clWhite;//$00F2F2F2;
    coiMinThumbSize     = 50;


var
  fn1_refe_cata_imagenes: Tfn1_refe_cata_imagenes;

implementation

uses _func_varias, SCLCommon, un1_refe_cata_imagenes1, _cons_colores,
   _MDI, un1_refe_fich_funciones, _func_graficas, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializaci�n de variables
  var_Updating := False;
  pane_padr_info_Categoria.Color := clFinGradienteHard;
  pane_padr_info_Categoria.Font.Color := clTextoGradienteHard;
  nuev_imagen.HiColor := nuev_imagen.Color;
  shap_sepa.Pen.Color := clTextoGradienteHard;
  pane_nuevo.Visible := padr_acti_nuevo.Enabled;
  labe_nuevo.Font.Color := clTextoGradienteHard;
  //Inicializaci�n visual
  tama_Thumbs.ThumbColor := clFinGradienteHard;
  tama_Thumbs.CaptionColor := clTextoGradienteHard;
  tama_Thumbs.TrackColor := clFinGradiente;
  //Abrir las consultas
  AbrirDataSet(quer_categorias);
  AbrirDataSet(quer_imagenes);
  AbrirDataSet(quer_refe_estilos);
  AbrirDataSet(quer_refe_marcas);
  AbrirDataSet(quer_refe_temporadas);

  //Inicializacion visual (Despues de abrir objetos db)
  doCalcularTamanosVistaPrevia;
  pane_tama_thumbResize(Sender);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : ArbolChangeNode
Objetivo        : Actualizar el cat�logo al cambiar de categor�a
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.ArbolChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
Begin
  Inherited;
  //Validar el nodo
  if (Node = Nil) Then Exit;
  doLlamarCategoria;
  //doCalcularTamanosVistaPrevia;
End;
{****************************************************************
Procedimiento   : doCalcularTamanosVistaPrevia
Objetivo        : Recalcular los tama�os de la vista previa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
Procedure Tfn1_refe_cata_imagenes.doCalcularTamanosVistaPrevia;
{Var
        var_Fila        : Integer;
        var_Columna     : Integer;
        var_Columnas    : Integer;       }
begin
{  inherited;
  //Calcular el n�mero de columnas
  Try
      var_Columnas := Trunc ((Grid.Width - 20)/ (quer_categorias.FieldByName('ancho').asInteger + cosSepa_Columnas));
  Except
      var_Columnas := 1;
  End;
  Grid.ColCount := var_Columnas;
  //Ancho de las columnas
  Grid.DefaultColWidth := Trunc((Grid.Width - 20)/ var_Columnas);
  //Calcular el n�mero de Filas
  Try
      Grid.RowCount := Trunc(Query1.RecordCount / var_Columnas) + 1;
  Except
      Grid.RowCount := 1;
  End;
  //Alto de las filas
  Grid.DefaultRowHeight := quer_categorias.FieldByName('alto').asInteger + cosSepa_Filas;
  var_Pict.Width := quer_categorias.FieldByName('ancho').asInteger;
  var_Pict.Height := quer_categorias.FieldByName('alto').asInteger;
  LimpiarGrid(Grid, 0, 0);
  //Recorrer la consulta y asignar los consecutivos
  Grid.BeginUpdate;
  Try
      With Query1 Do
      Begin
          First;
          var_Fila := 0;
          var_Columna := 0;
          While not Eof do
          Begin

                //Asignar el campo
                Grid.Cells[var_Columna, var_Fila] := FieldByName('cons_personal').asString;

                //Verificar el cambio de columna
                If (var_Columna >= var_Columnas - 1) Then
                Begin
                    var_Columna := 0;
                    inc(var_Fila);
                End
                Else
                    inc(var_Columna);

                //Siguiente registro
                Next;
          End;
      End;
  Except
        On E:Exception do
           EjecutarMensajeError(e.Message);
  End;
  Grid.EndUpdate;
  Grid.Update;  }
End;
{****************************************************************
Procedimiento   : Splitter1Moved
Objetivo        : Recalcular los tama�os de la vista previa al
                  cambiar la posici�n del Splitter
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.Splitter1Moved(Sender: TObject);
begin
  inherited;
  doCalcularTamanosVistaPrevia;
end;

procedure Tfn1_refe_cata_imagenes.GridCustomCellDraw(Sender: TObject;
  Canvas: TCanvas; ACol, ARow: Integer; AState: TGridDrawState;
  ARect: TRect; Printing: Boolean);
{Var
        var_Consecutivo : Integer;
        var_Stream      : TMemoryStream;
        var_myRect      : TRect;
        var_Ancho       : Integer;
        var_Alto        : Integer;
        var_Color       : TColor;
}
begin
  inherited;
{  With Grid, Query1 do
  Begin
        //Si est� en blanco, salir
        if (Cells[aCol, aRow] = '') Then Exit;
        //Preparar la imagen para llamarla
        var_Stream := TMemoryStream.Create;
        Try
             //Ubicar el registro
             var_Consecutivo := StrToInt(Cells[aCol, aRow]);
             If Not Locate('cons_personal', var_Consecutivo, []) Then Exit;
             //Limpiar
             InflateRect(var_myRect, -1, -1);
             Canvas.Brush.Color := var_Fondo;
             Canvas.Brush.Style := bsSolid;
             Canvas.Pen.Color := clWindow;
             Canvas.Pen.Style := psClear;
             Canvas.Rectangle(aRect);
             var_myRect := aRect;
             //Cargar la imagen en memoria
             TBlobField(Query1Imagen).SaveToStream(var_Stream);
             if (var_Stream.Size <> 0) then
             Begin
                var_pict.Picture.LoadFromStream(var_Stream);
                if ((var_pict.Picture.Width > (var_myRect.Right - var_myRect.Left)) or
                    (var_pict.Picture.Height > (var_MyRect.Bottom - var_myRect.Top))) Then
                Begin
                    //Hacerle un STRETCH al BITMAP
                    //Configurar el ancho y el alto
                    if (var_pict.Picture.Width > var_pict.Picture.Height) Then
                    Begin
                             var_MyRect.Right := var_MyRect.Left + Grid.DefaultColWidth - cosSepa_Columnas - cosBorde;
                             var_MyRect.Bottom := var_MyRect.Top + Trunc((var_MyRect.Right - var_myRect.Left) * (var_pict.Picture.Height / var_pict.Picture.Width));
                    End
                    Else
                    Begin
                             var_MyRect.Bottom := var_MyRect.Top + Grid.DefaultRowHeight - cosSepa_Filas - cosBorde;
                             var_MyRect.Right := var_MyRect.Left + Trunc((var_MyRect.Bottom - var_myRect.Top) * (var_pict.Picture.Width / var_pict.Picture.Height));
                    End;
                End
                Else
                Begin
                    //No necesita STRETCH
                    var_myRect.Right := var_MyRect.Left + var_Pict.Picture.Width - cosBorde;
                    var_myRect.Bottom := var_MyRect.Top + var_Pict.Picture.Height - cosBorde;
                End;
                //Centrar
                var_Ancho := var_myRect.Right - var_MyRect.Left;
                var_Alto := var_MyRect.Bottom - var_MyRect.Top;
                //Vertical
                var_myRect.Left := Trunc(aRect.Left + ((aRect.Right - aRect.Left) div 2) - (var_Ancho div 2));
                var_myRect.Right := var_myRect.Left + var_Ancho;
                //Horizontal
                var_myRect.Top := Trunc(aRect.Top + ((aRect.Bottom - aRect.Top) div 2) - (var_Alto div 2));
                var_myRect.Bottom := var_myRect.Top + var_Alto;
                //Dibujar la im�gen
               Canvas.StretchDraw(var_myRect, var_pict.Picture);
               //Selecci�n
               if (aCol = Grid.Col) and (aRow = Grid.Row) Then
                  var_Color := var_colo_borde
               Else
                  var_Color := clBlack;

               Canvas.Pen.Color := var_Color;
               Canvas.Pen.Style := psSolid;
               Canvas.Brush.Style := bsClear;
               Canvas.Rectangle(var_myRect);
               DrawDropShadow(Canvas, var_myRect, 4, var_Color);
             End;
        Except
              on e:Exception do
                DrawText(canvas.handle,pchar(e.Message),-1, aRect,DT_WORDBREAK or DT_CENTER);

        End;
        //Liberar
        var_Stream.Free;
  End;
}
end;

Procedure Tfn1_refe_cata_imagenes.doLlamarCategoria;
Var
        var_Item        : TThumbnail;
        var_Stream      : TMemoryStream;
        var_tama_thumbs : Real;
        var_Bitmap      : TBitmap;
        var_Tamano100   : Integer;
Begin
        //Crear componentes adicionales
        var_Stream := TMemoryStream.Create;
        var_Bitmap := TBitmap.Create;
        Try
            //Tama�o actual del % de aumento de la vista previa
            var_Tama_Thumbs := (tama_thumbs.Value / tama_thumbs.Maximum);
            //Tama�o de la categor�a
            if (quer_Categorias.FieldByName('ancho').asInteger > quer_Categorias.FieldByName('alto').AsInteger) Then
                var_Tamano100 := quer_Categorias.FieldByName('ancho').asInteger
            Else
                var_Tamano100 := quer_Categorias.FieldByName('alto').asInteger;
            //Ajuste del tama�o a pixels
            var_tamano100 := cmsToPixels(var_Tamano100);
            //Minimo
            if (var_Tamano100 < coiMinThumbSize) then
               var_Tamano100 := coiMinThumbSize;
            //Valores m�ximo y m�nimo del thumb
            tama_thumbs.Maximum := coiMinThumbSize + 1;
            tama_thumbs.Minimum := coiMinThumbSize;
            //Maximo
            tama_thumbs.Maximum := (var_Tamano100); //100%
            //Posicion relativa
            tama_thumbs.Value := Trunc(var_Tamano100 * var_tama_Thumbs);
            VistaPrevia.ThumbnailSize := Trunc(tama_thumbs.Value);
            //Limpiar la vista previa
            VistaPrevia.BeginUpdate;
            var_Updating := True;
            VistaPrevia.Thumbnails.Clear;
            //Calcular el n�mero de columnas
            Try
                VistaPrevia.Columns := Trunc((VistaPrevia.Width - 20) / VistaPrevia.ThumbnailSize);
            Except
                VistaPrevia.Columns := 1;
            End;
            //Crear un item inicial para insertar
            //--------------PENDIENTE-------------CREAR UN ITEM PARA NUEVA IMAGEN
            {var_Item := VistaPrevia.Thumbnails.Add;
            var_Item.FileName := '-1';
            //Crear la imagen
            var_Bitmap.FreeImage;
            var_Bitmap.Width := VistaPrevia.ThumbnailSize;
            var_Bitmap.Height := VistaPrevia.ThumbnailSize;
            _fmdi.imag_grandes.draw(var_Bitmap.Canvas, 0, 0, 0);
            DrawText(var_Bitmap.Handle,pchar(cosNuevaImagen),-1, var_Rect,DT_WORDBREAK or DT_CENTER);
            var_Bitmap.SaveToStream(var_Stream);
            var_Item.Picture.LoadFromStream(var_Stream);   }
            //Abrir la consulta y crear las im�genes
            With VistaPrevia, quer_imagenes do
            Begin
                    //Reabrir la consulta
                    if Active Then Close;
                    //Filtros
                    Filter := '';
                    if (Not comb_estilo.EstaVacio) Then
                       quer_imagenes.Filter := 'cons_refe_estilo = ' + quer_refe_estilos.FieldByName('cons_Refe_estilo').AsString;
                    if (Not comb_marca.EstaVacio) Then
                    Begin
                       if quer_imagenes.Filter <> '' Then
                          quer_imagenes.Filter := quer_imagenes.Filter + cosSQLAnd;
                       quer_imagenes.Filter := quer_imagenes.Filter + 'cons_refe_marca = ' + quer_refe_marcas.FieldByName('cons_Refe_marca').AsString;
                    End;
                    if (Not comb_temporada.EstaVacio) Then
                    Begin
                       if quer_imagenes.Filter <> '' Then
                          quer_imagenes.Filter := quer_imagenes.Filter + cosSQLAnd;
                       quer_imagenes.Filter := quer_imagenes.Filter + 'cons_refe_temporada = ' + quer_refe_temporadas.FieldByName('cons_Refe_temporada').AsString;
                    End;
                    Filtered := (Filter <> '');
                    Open;
                    //Recorrer la consulta
                    While not EOF do
                    Begin
                        //Crear el item
                        var_Item := VistaPrevia.Thumbnails.Add;
                        var_Item.FileName := FieldByName('CONS_HERR_IMAGEN').asString;
                        //Crear la imagen
                        var_Stream.Clear;
                        TBlobField(quer_imagenesIMAGEN).SaveToStream(var_Stream);
                        if (var_Stream.Size <> 0) then
                                var_Item.Picture.LoadFromStream(var_Stream);
                        //Siguiente
                        Next;
                    End;
            End;
        Except
          On E:Exception do
             EjecutarMensajeError(e.Message);
        End;
        //Liberar controles
        var_Stream.Free;
        var_Bitmap.Free;
        VistaPrevia.EndUpdate;
        var_Updating := False;
        //Textos
        pane_info_Categoria.Caption := Format(cosInfoCatalogoImagenes,
                [IntToStr(quer_imagenes.RecordCount),
                quer_categorias.FieldByName('ancho').asString,
                quer_categorias.FieldByName('alto').asString]);
End;
{****************************************************************
Procedimiento   : quer_imagenesAfterInsert
Objetivo        : Inicializar el nuevo registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.quer_imagenesAfterInsert(
  DataSet: TDataSet);
begin
  inherited;

end;
{****************************************************************
Procedimiento   : quer_categoriasAfterOpen
Objetivo        : Actualizar la ventana al abrir la consulta de
                  categor�as
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.quer_categoriasAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  doLlamarCategoria;
end;
{****************************************************************
Procedimiento   : VistaPreviaClick
Objetivo        : Sincronizar la selecci�n de la im�gen
                  en la vista previa con el query de im�genes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.VistaPreviaClick(Sender: TObject);
begin
  inherited;
  //Validar
  if (Not quer_imagenes.Active) or (quer_imagenes.RecordCount = 0) then
     Exit;
  //Ubicar el registro
  quer_imagenes.Locate('cons_herr_imagen', StrToInt(VistaPrevia.Thumbnails.Items[VistaPrevia.itemIndex].Filename), []);
end;
{****************************************************************
Procedimiento   : quer_imagenesAfterEdit
Objetivo        : Editar la im�gen seleccionada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.quer_imagenesAfterEdit(
  DataSet: TDataSet);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : VistaPreviaDblClick
Objetivo        : Abrir las opciones de la im�gen con doble click
                  sobre la vista previa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.VistaPreviaDblClick(Sender: TObject);
begin
  inherited;
  //Validar
  if (Not quer_imagenes.Active) then
     Exit;
  //Insertar (si no hay registros)
  if (quer_imagenes.RecordCount = 0) Then
      doInsertar
  //Editar el registro seleccionado
  Else
     //Si est� child, editar
     if (FormStyle = fsMDIChild) Then doEditar
     //Si no, seleccionar y cerrar
     Else Close;   
end;
{****************************************************************
Procedimiento   : DoEditar
Objetivo        : Edita el registro activo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
Procedure Tfn1_refe_cata_imagenes.DoEditar;
Begin
  //Insertar la im�gen
  Application.CreateForm(Tfn1_refe_cata_imagenes1, fn1_refe_cata_imagenes1);
  if fn1_refe_cata_imagenes1.Ejecutar(
        quer_imagenes.FieldByName('CONS_HERR_IMAGEN').AsInteger,
        quer_categorias.FieldByName('CONS_HERR_IMAG_CATALOGO').asInteger,
        quer_categorias.FieldByName('CONS_HERR_IMAG_CATEGORIA').asInteger,
        quer_categorias.FieldByName('NOMB_HERR_IMAG_CATEGORIA').asString,
        quer_imagenes,
        quer_categorias.FieldByName('ANCHO').asInteger,
        quer_categorias.FieldByName('ALTO').asInteger) Then
   //Actualizar
   doLlamarCategoria;
End;
{****************************************************************
Procedimiento   : DoInsertar
Objetivo        : Inserta una nueva im�gen
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
Procedure Tfn1_refe_cata_imagenes.DoInsertar;
Begin
  //Insertar la im�gen
  Application.CreateForm(Tfn1_refe_cata_imagenes1, fn1_refe_cata_imagenes1);
  if fn1_refe_cata_imagenes1.Ejecutar(
        0,
        quer_categorias.FieldByName('CONS_HERR_IMAG_CATALOGO').asInteger,
        quer_categorias.FieldByName('CONS_HERR_IMAG_CATEGORIA').asInteger,
        quer_categorias.FieldByName('NOMB_HERR_IMAG_CATEGORIA').asString,
        quer_imagenes,
        quer_categorias.FieldByName('ANCHO').asInteger,
        quer_categorias.FieldByName('ALTO').asInteger) Then
     //Actualizar
     doLlamarCategoria;
End;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterInsert
Objetivo        : Inserta un nuevo registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.myTabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  doInsertar;
end;

{****************************************************************
Procedimiento   : pane_tama_thumbResize
Objetivo        : Dar tama�o al tracker
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.pane_tama_thumbResize(Sender: TObject);
begin
  inherited;
  tama_Thumbs.Left := 0;
  tama_Thumbs.Top := 0;
  if (pane_tama_thumb.Parent = pane_tama_thumb) Then
  Begin
    With tama_Thumbs do
    Begin
          Width := Parent.Width;
          Height := Parent.Height;
    End;
  End;
end;
{****************************************************************
Procedimiento   : tama_thumbsChangedValue
Objetivo        : Cambiar el tama�o de la im�gen desde el track
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.tama_thumbsChangedValue(Sender: TObject;
  NewValue: Integer);
begin
  inherited;
  if var_Updating Then Exit;
  Try
        //VistaPrevia.BeginUpdate;
        VistaPrevia.ThumbnailSize := NewValue;
  Finally
        //VistaPrevia.EndUpdate;
  End;
end;
{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Verificar el estado de las tablas antes de
                  cerrar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CheckAndPostDataSet(myTabla_Ventana);
  inherited;
end;
{****************************************************************
Procedimiento   : padr_acti_eliminarExecute
Objetivo        : Eliminar la im�gen seleccionada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.padr_acti_eliminarExecute(
  Sender: TObject);
begin
  //inherited;
  if (quer_imagenes.RecordCount = 0) Then Exit;
  If (Confirmar(cosDeseaEliminar) = mrYes) Then
  With quer_eliminar do
  Begin
       ParamByName('cons_herr_imagen').Value := quer_imagenes.FieldByName('cons_herr_imagen').asInteger;
       ExecSQL;
       DoLLamarCategoria;
  End;
end;
{****************************************************************
Procedimiento   : padr_acti_eliminarUpdate
Objetivo        : Actualizar el estado de la acci�n ELIMINAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.padr_acti_eliminarUpdate(
  Sender: TObject);
begin
  inherited;
  padr_Acti_eliminar.Enabled := (VistaPrevia.ItemIndex > -1);
end;
{****************************************************************
Procedimiento   : padr_acti_modificarUpdate
Objetivo        : Actualizar el estado de la acci�n EDITAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.padr_acti_modificarUpdate(
  Sender: TObject);
begin
  inherited;
  padr_Acti_modificar.Enabled := (VistaPrevia.ItemIndex > -1);
end;
{****************************************************************
Procedimiento   : doActualizarFiltros
Objetivo        : Actualizar la vista de categorias cuando
                  cambien los combos de filtro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.doActualizarFiltros(Sender: TObject);
begin
  inherited;
  doLlamarCategoria;
end;
{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecutar la ventana en MODAL y devolver el consecutivo
                  de la im�gen seleccionada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
Function Tfn1_refe_cata_imagenes.Ejecutar(peTipoFichaTecnica :  TFichasTecnicasDiseno) : Integer;
Begin
        Result := -1;
        pane_categoria.Visible := False;
        pane_tama_thumb.Parent := pane_contenedor;
        quer_categorias.Locate('cons_herr_imag_categoria', TipoFichasTecnicasToInteger(peTipoFichaTecnica) + 100, []);
        ShowModal;
        if (VistaPrevia.ItemIndex <> -1) Then
            Result := StrToInt(VistaPrevia.Thumbnails.Items[VistaPrevia.ItemIndex].FileName);
End;

{****************************************************************
Procedimiento   : nuev_imagenClick
Objetivo        : Agregar una nueva im�gen desde el panel
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes.nuev_imagenClick(Sender: TObject);
begin
  inherited;
  if (padr_acti_nuevo.enabled) then
     padr_acti_nuevo.Execute;
end;

end.
