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
        Unit            : ufra_maqu_ubicacion
        Objetivo        : Frame general de ubicación de recursos
                          y personal
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 13-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}
unit ufra_maqu_ubicacion;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxEditor, dxEdLib, dxDBELib, StdCtrls, SohoBtns, SCLButton,
  RxLookup, PCPLookUpComboEdit, SoCtrls, SCLDBLabel, ExtCtrls, Db, DBTables,
  TBXDkPanels, TBXButtonSCL;

type
  Tffra_maqu_ubicacion = class(TFrame)
    quer_maqu_ubicaciones: TQuery;
    data_maqu_ubicaciones: TDataSource;
    quer_empresas: TQuery;
    data_empresas: TDataSource;
    quer_areas: TQuery;
    data_areas: TDataSource;
    quer_plantas: TQuery;
    data_plantas: TDataSource;
    quer_secciones: TQuery;
    data_secciones: TDataSource;
    pane_tipo_ubicacion: TPanel;
    SCLDBLabel33: TSCLDBLabel;
    comb_tipo_ubicacion: TPCPLookUpComboEdit;
    pane_ubic_propia: TPanel;
    SCLDBLabel34: TSCLDBLabel;
    SCLDBLabel35: TSCLDBLabel;
    comb_ubic_empresa: TPCPLookUpComboEdit;
    comb_ubic_area: TPCPLookUpComboEdit;
    SCLButton6: TTBXButton;
    SCLButton7: TTBXButton;
    pane_ubic_externa: TPanel;
    SCLDBLabel36: TSCLDBLabel;
    SCLDBLabel37: TSCLDBLabel;
    comb_ubic_planta: TPCPLookUpComboEdit;
    comb_ubic_seccion: TPCPLookUpComboEdit;
    SCLButton8: TTBXButton;
    SCLButton9: TTBXButton;
    pane_ubic_bodega: TPanel;
    SCLDBLabel39: TSCLDBLabel;
    comb_ubic_bodega: TPCPLookUpComboEdit;
    SCLButton10: TTBXButton;
    pane_ubic_otra: TPanel;
    SCLDBLabel38: TSCLDBLabel;
    edit_ubic_otra_ubicacion: TdxDBEdit;
    quer_bodegas: TQuery;
    data_bodegas: TDataSource;
    quer_empresasCONS_EMPRESA: TIntegerField;
    quer_empresasNOMB_EMPRESA: TStringField;
    quer_areasCONS_AREA: TIntegerField;
    quer_areasNOMB_AREA: TStringField;
    quer_plantasCONS_PLANTA: TIntegerField;
    quer_plantasNOMB_PLANTA: TStringField;
    quer_lineas: TQuery;
    data_lineas: TDataSource;
    quer_lineasCONS_LINEA: TIntegerField;
    quer_lineasNOMB_LINEA: TStringField;
    quer_lineasCONS_PLAN_LINEA: TIntegerField;
    quer_seccionesCONS_SECCION: TIntegerField;
    quer_seccionesNOMB_SECCION: TStringField;
    quer_seccionesCONS_LINE_SECCION: TIntegerField;
    quer_bodegasCONS_BODEGA: TIntegerField;
    quer_bodegasNOMB_BODEGA: TStringField;
    quer_maqu_ubicacionesCONS_UBIC_TIPO: TIntegerField;
    quer_maqu_ubicacionesCODI_UBIC_TIPO: TStringField;
    quer_maqu_ubicacionesNOMB_UBIC_TIPO: TStringField;
    quer_maqu_ubicacionesVER_EMPRESA: TIntegerField;
    quer_maqu_ubicacionesVER_PLANTA: TIntegerField;
    quer_maqu_ubicacionesVER_BODEGA: TIntegerField;
    quer_maqu_ubicacionesVER_OTRA_UBICACION: TIntegerField;
    SCLDBLabel1: TSCLDBLabel;
    Comb_Ubic_Linea: TPCPLookUpComboEdit;
    SCLButton1: TTBXButton;
    procedure comb_tipo_ubicacionChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create(Owner : TComponent);Override;
    Function GetFilter(peOmitirTipoUbicacion : Boolean = False) : String;
  end;

implementation

uses _MDI;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crea e inicializa el fram
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Constructor Tffra_maqu_ubicacion.Create(Owner : TComponent);
Begin
        Inherited Create(Owner);
        //--------------PENDIENTE-------------RESIZE AUTOMATICO
        //Height := pane_tipo_ubicacion.Height;
End;

{****************************************************************
Procedimiento   : comb_tipo_ubicacionChange
Objetivo        : Actualizar los controles del frame
                  de acuerdo con el tipo de ubicación
                  del recurso
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 19 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_maqu_ubicacion.comb_tipo_ubicacionChange(Sender: TObject);
begin
  Visible := False;
  Height := pane_tipo_ubicacion.Height;
  //Ocultar los panels
  pane_ubic_otra.Visible := False;
  pane_ubic_bodega.Visible := False;
  pane_ubic_externa.Visible := False;
  pane_ubic_propia.Visible := False;
  //Arreglar el orden (con ayuda del top)
  pane_ubic_otra.Top := 49;
  pane_ubic_bodega.Top := 49;
  pane_ubic_externa.Top := 49;
  pane_ubic_propia.Top := 40;
  //Si no ha seleccionado ubicación, salir
  If comb_tipo_ubicacion.Text = '' Then
  Begin
    Visible := True;
    Exit;
  End;
  //Cambiar la propiedad Visible
  pane_ubic_propia.Visible := (quer_maqu_ubicaciones.FieldByName('VER_EMPRESA').AsInteger = 1);
  pane_ubic_externa.Visible := (quer_maqu_ubicaciones.FieldByName('VER_PLANTA').AsInteger = 1);
  pane_ubic_bodega.Visible := (quer_maqu_ubicaciones.FieldByName('VER_BODEGA').AsInteger = 1);
  pane_ubic_otra.Visible := (quer_maqu_ubicaciones.FieldByName('VER_OTRA_UBICACION').AsInteger = 1);
  //Validar los valores ocultos
  If Not pane_ubic_propia.Visible Then
  Begin
       comb_ubic_empresa.clearValue;
       comb_ubic_area.ClearValue;
  End
  Else
	  Height := Height + pane_ubic_propia.Height;
  If Not pane_ubic_externa.Visible Then
  Begin
       comb_ubic_planta.clearValue;
       comb_ubic_seccion.ClearValue;
       Comb_Ubic_Linea.ClearValue;
  End
  Else
  	Height := Height + pane_ubic_externa.Height;
  If Not pane_ubic_bodega.Visible Then
       comb_ubic_bodega.clearValue
  Else
  	Height := Height + pane_ubic_bodega.Height;
  If Not pane_ubic_otra.Visible Then
        edit_ubic_otra_ubicacion.Clear
  Else
  	Height := Height + pane_ubic_otra.Height;
  Visible := True;
  If comb_tipo_ubicacion.CanFocus Then
  	comb_tipo_ubicacion.SetFocus;
end;

Function Tffra_maqu_ubicacion.GetFilter(peOmitirTipoUbicacion : Boolean = False) : String;
var
    var_filtro  : String;
    var_separador   : String;
Begin
      //Crear el filtro
      var_filtro := '';
      var_separador := '';
      //Tipo de ubicación
      if Not peOmitirTipoUbicacion then
      Begin
        if comb_tipo_ubicacion.Text <> '' Then
          Begin
              var_filtro := var_filtro + var_separador +
                  'cons_ubic_tipo = '+IntToStr(comb_tipo_ubicacion.KeyValue);
              var_separador := ' and ';
          End;
        End;
      //Empresa
      if comb_ubic_empresa.Text <> '' Then
        Begin
            var_filtro := var_filtro + var_separador +
                'cons_empresa = '+IntToStr(comb_ubic_empresa.KeyValue);
            var_separador := ' and ';
        End;
      //Area
      if comb_ubic_area.Text <> '' Then
        Begin
            var_filtro := var_filtro + var_separador +
                'cons_area = '+IntToStr(comb_ubic_area.KeyValue);
            var_separador := ' and ';
        End;
      //planta
      if comb_ubic_planta.Text <> '' Then
        Begin
            var_filtro := var_filtro + var_separador +
                'cons_planta = '+IntToStr(comb_ubic_planta.KeyValue);
            var_separador := ' and ';
        End;
      //Linea
      if comb_ubic_linea.Text <> '' Then
        Begin
            var_filtro := var_filtro + var_separador +
                'cons_plan_linea = '+IntToStr(comb_ubic_linea.KeyValue);
            var_separador := ' and ';
        End;
      //Sección
      if comb_ubic_seccion.Text <> '' Then
        Begin
            var_filtro := var_filtro + var_separador +
                'cons_line_seccion = '+IntToStr(comb_ubic_seccion.KeyValue);
            var_separador := ' and ';
        End;
      Result := var_filtro;
End;

end.
