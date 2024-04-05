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
        Unit            : un1_refe_fich_maestro
        Objetivo        : Ventana maestra Child de fichas
                          técnicas
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 26-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}

unit un1_refe_fich_maestro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ufra_edit_reportes,
  ExtCtrls, dfsSplitter, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels,
  TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, RxLookup, PCPLookUpComboEdit, StdCtrls, SoCtrls,
  SCLDBLabel, dxEditor, dxEdLib;

type
  Tfn1_refe_fich_maestro = class(T_fvent_child)
    consultaCONS_REFE_FICHA: TIntegerField;
    consultaCONS_REFE_TIPO_FICHA: TIntegerField;
    consultaNOMB_REFE_TIPO_FICHA: TStringField;
    consultaANULADA: TIntegerField;
    consultaCONS_REFE_TIPO_VARIACION: TIntegerField;
    consultaNOMB_REFE_TIPO_VARIACION: TStringField;
    consultaCONS_REFERENCIA: TIntegerField;
    consultaCODI_REFERENCIA: TStringField;
    consultaCODI_INTE_REFERENCIA: TStringField;
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
    consultaCONS_REFE_TEMPORADA: TIntegerField;
    consultaCODI_REFE_TEMPORADA: TStringField;
    consultaCONS_REFE_MARCA: TIntegerField;
    consultaCODI_REFE_MARCA: TStringField;
    consultaNOMB_REFE_MARCA: TStringField;
    consultaNOMB_REFERENCIA: TStringField;
    consultaCONS_REFE_GRUP_TALLAS: TIntegerField;
    consultaCODI_GRUP_TALLAS: TStringField;
    consultaTALLAS: TStringField;
    consultaTALL_MUESTRA: TStringField;
    consultaDESCRIPCION: TStringField;
    consultaFECH_MODIFICACION: TDateTimeField;
    consultaUSUA_MODIFICACION: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCONS_REFE_VARIACION: TIntegerField;
    consultaNOMB_REFE_TEMPORADA: TStringField;
    padr_gridANULADA: TdxDBGridImageColumn;
    padr_gridCONS_REFE_FICHA: TdxDBGridMaskColumn;
    padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_VARIACION: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_TIPO_FICHA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_TIPO_FICHA: TdxDBGridMaskColumn;
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
    padr_gridCONS_REFE_TEMPORADA: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_TEMPORADA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_TEMPORADA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_GRUP_TALLAS: TdxDBGridMaskColumn;
    padr_gridCODI_GRUP_TALLAS: TdxDBGridMaskColumn;
    padr_gridTALLAS: TdxDBGridMaskColumn;
    padr_gridTALL_MUESTRA: TdxDBGridMaskColumn;
    padr_gridDESCRIPCION: TdxDBGridBlobColumn;
    padr_gridFECH_MODIFICACION: TdxDBGridDateColumn;
    padr_gridUSUA_MODIFICACION: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    pane_filtros: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    comb_Tipo_Fich_Tecnica: TPCPLookUpComboEdit;
    comb_referencia: TPCPLookUpComboEdit;
    comb_variacion: TPCPLookUpComboEdit;
    SCLDBLabel4: TSCLDBLabel;
    comb_linea: TPCPLookUpComboEdit;
    SCLDBLabel5: TSCLDBLabel;
    Comb_edad: TPCPLookUpComboEdit;
    SCLDBLabel6: TSCLDBLabel;
    comb_estilo: TPCPLookUpComboEdit;
    SCLDBLabel7: TSCLDBLabel;
    comb_grupo: TPCPLookUpComboEdit;
    SCLDBLabel8: TSCLDBLabel;
    comb_temporada: TPCPLookUpComboEdit;
    SCLDBLabel9: TSCLDBLabel;
    comb_marca: TPCPLookUpComboEdit;
    Label1: TLabel;
    chec_crea_desde: TdxCheckEdit;
    comb_crea_desde: TdxDateEdit;
    chec_crea_hasta: TdxCheckEdit;
    comb_crea_hasta: TdxDateEdit;
    Label2: TLabel;
    chec_modi_desde: TdxCheckEdit;
    comb_modi_desde: TdxDateEdit;
    chec_modi_hasta: TdxCheckEdit;
    comb_modi_hasta: TdxDateEdit;
    chec_solo_activos: TTBXItem;
    acti_ventana: TActionList;
    acti_modi_Ver_activos: TAction;
    quer_Tipo_Ficha: TQuery;
    data_tipo_ficha: TDataSource;
    quer_referencias: TQuery;
    data_referencias: TDataSource;
    quer_variaciones: TQuery;
    data_variaciones: TDataSource;
    quer_edades: TQuery;
    quer_edadesCONS_REFE_EDAD: TIntegerField;
    quer_edadesNOMB_REFE_EDAD: TStringField;
    data_edades: TDataSource;
    quer_temporadas: TQuery;
    quer_temporadasCONS_REFE_TEMPORADA: TIntegerField;
    quer_temporadasNOMB_REFE_TEMPORADA: TStringField;
    data_temporadas: TDataSource;
    quer_lineas: TQuery;
    quer_lineasCONS_REFE_LINEA: TIntegerField;
    quer_lineasNOMB_REFE_LINEA: TStringField;
    data_lineas: TDataSource;
    quer_marcas: TQuery;
    quer_marcasCONS_REFE_MARCA: TIntegerField;
    quer_marcasNOMB_REFE_MARCA: TStringField;
    data_marcas: TDataSource;
    quer_grupos: TQuery;
    quer_gruposCONS_REFE_GRUPO: TIntegerField;
    quer_gruposNOMB_REFE_GRUPO: TStringField;
    data_grupos: TDataSource;
    quer_estilos: TQuery;
    quer_estilosCONS_REFE_ESTILO: TIntegerField;
    quer_estilosNOMB_REFE_ESTILO: TStringField;
    data_estilos: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure acti_modi_Ver_activosExecute(Sender: TObject);
    procedure padr_acti_nuevoExecute(Sender: TObject);
    procedure consultaBeforeOpen(DataSet: TDataSet);
    procedure chec_crea_desdeChange(Sender: TObject);
    procedure chec_crea_hastaChange(Sender: TObject);
    procedure chec_modi_desdeChange(Sender: TObject);
    procedure chec_modi_hastaChange(Sender: TObject);
    procedure actualizarFiltros(Sender: TObject);
    procedure padr_acti_modificarExecute(Sender: TObject);
    procedure padr_acti_consultarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function EsVentanaMaestra : Boolean;
  end;

var
  fn1_refe_fich_maestro: Tfn1_refe_fich_maestro;

implementation

uses _MDI, _cons_pcp, _func_varias, un1_refe_fich_sele_tipo,
  un1_refe_fich_funciones, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicialización de controles visuales
  pane_filtros.Caption := cosFiltros;
  //Abrir las consultas
  if (EsVentanaMaestra) then AbrirDataSet(quer_Tipo_ficha);
  AbrirDataSet(quer_referencias);
  AbrirDataSet(quer_variaciones);
  AbrirDataSet(quer_lineas);
  AbrirDataSet(quer_edades);
  AbrirDataSet(quer_estilos);
  AbrirDataSet(quer_grupos);
  AbrirDataSet(quer_temporadas);
  AbrirDataSet(quer_marcas);
  Insertar_Palabras(Self, WKLenguaje);
end;

procedure Tfn1_refe_fich_maestro.acti_modi_Ver_activosExecute(Sender: TObject);
begin
  inherited;
  //Cerrar y abrir la consulta
  acti_modi_ver_activos.Checked := Not acti_modi_ver_activos.Checked;
  Consulta.Close;
  AbrirDataSet(Consulta);
end;
{****************************************************************
Procedimiento   : padr_acti_nuevoExecute
Objetivo        : Crear una nueva ficha técnica
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro.padr_acti_nuevoExecute(Sender: TObject);
var
        var_TipoFicha   : TFichasTecnicasDiseno;
begin
  IF (Not esVentanaMaestra) Then   //--> es una heredada (tipos de fichas)
       inherited
  Else
  Begin
      //Mostrar la ventana para la selección del tipo de ficha técnica
      Application.CreateForm(Tfn1_refe_fich_sele_tipo, fn1_refe_fich_sele_tipo);
      var_TipoFicha := fn1_Refe_fich_sele_tipo.Ejecutar;
      if (var_TipoFicha <> ftdSinAsignar) then
          ModificarFichaTecnica(var_TipoFicha, taInsert, 0, Caption);
  End;
end;
{****************************************************************
Procedimiento   : consultaBeforeOpen
Objetivo        : Preparar la consulta antes de abrirla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro.consultaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  //Asignar los filtros
  With Consulta do
  Begin
      Filter := '';
      //Anulados (activos)
      acti_modi_ver_activos.Update;
      if acti_modi_Ver_activos.Checked Then
          Filter := 'anulada = -1'
      Else
          Filter := 'anulada <> 0';
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
Procedimiento   : chec_crea_desdeChange
Objetivo        : Activar/Desactivar el combo de fecha
                  de creacion (desde)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro.chec_crea_desdeChange(Sender: TObject);
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
procedure Tfn1_refe_fich_maestro.chec_crea_hastaChange(Sender: TObject);
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
procedure Tfn1_refe_fich_maestro.chec_modi_desdeChange(Sender: TObject);
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
procedure Tfn1_refe_fich_maestro.chec_modi_hastaChange(Sender: TObject);
begin
  inherited;
  comb_modi_hasta.Enabled := chec_modi_hasta.Checked;
end;
{****************************************************************
Procedimiento   : actualizarFiltros
Objetivo        : Actualiza la consulta con los filtros dados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro.actualizarFiltros(
  Sender: TObject);
begin
  inherited;
  Consulta.Close;
  Consulta.DisableControls;
  Try
     AbrirDataSet(consulta);
  Except
      on E:Exception do
         EjecutarMensajeError(e.Message);
  End;
  Consulta.EnableControls;
end;
{****************************************************************
Procedimiento   : EsVentanaMaestra
Objetivo        : Indica si la ventana activa es maestra o heredada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Function Tfn1_refe_fich_maestro.EsVentanaMaestra : Boolean;
Begin
   Result := (quer_Tipo_Ficha.Tag <> -1);
End;
{****************************************************************
Procedimiento   : padr_acti_modificarExecute
Objetivo        : Ejecutar la acción MODIFICAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro.padr_acti_modificarExecute(
  Sender: TObject);
begin
  //inherited; -->No Heredar la edición
  //Validar que existan registros
  If (Consulta.RecordCount = 0) Then Exit;
  ModificarFichaTecnica(IntegerToTipoFichasTecnicas(consulta.FieldByName('cons_Refe_tipo_ficha').asInteger), taEdit,
                consulta.FieldByName('cons_Refe_ficha').asInteger, Caption);
end;
{****************************************************************
Procedimiento   : padr_acti_consultarExecute
Objetivo        : Ejecutar la acción de CONSULTAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_maestro.padr_acti_consultarExecute(
  Sender: TObject);
begin
  //inherited; -->No Heredar la edición
  //Validar que existan registros
  If (Consulta.RecordCount = 0) Then Exit;
  ModificarFichaTecnica(IntegerToTipoFichasTecnicas(consulta.FieldByName('cons_Refe_tipo_ficha').asInteger), taConsulta,
                consulta.FieldByName('cons_Refe_ficha').asInteger, Caption);
end;

end.
