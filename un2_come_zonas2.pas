unit un2_come_zonas2;

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
        Unit            : un2_come_zonas2
        Objetivo        : Parametrización de zonas comerciales (detalle)
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Junio 23 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, Boxes, PCPFrame, PictureContainer, DBTables, 
  AdvPanel, dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, dxTL,
  dxDBCtrl, dxDBGrid, PCPProceso;

type
  Tfn2_come_zonas2 = class(T_fvent_modal)
    PCPFrame1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    fram_subzonas: TPCPFrame;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    Tabla_VentanaCONS_COME_ZONA: TIntegerField;
    Tabla_VentanaCODI_COME_ZONA: TStringField;
    Tabla_VentanaNOMB_COME_ZONA: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    acti_ventana: TActionList;
    acti_eliminar: TDataSetDelete;
    acti_modificar: TDataSetEdit;
    acti_nuevo: TDataSetInsert;
    acti_actualizar: TDataSetRefresh;
    TBXItem4: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    Panel1: TPanel;
    Grid: TdxDBGrid;
    tabl_subzonas: TTable;
    data_subzonas: TDataSource;
    tabl_subzonasCONS_COME_ZONA_DETALLE: TIntegerField;
    tabl_subzonasCONS_COME_ZONA: TIntegerField;
    tabl_subzonasCODI_COME_ZONA_DETALLE: TStringField;
    tabl_subzonasNOMB_COME_ZONA_DETALLE: TStringField;
    tabl_subzonasFECH_SISTEMA: TIntegerField;
    tabl_subzonasUSUA_SISTEMA: TIntegerField;
    GridCONS_COME_ZONA_DETALLE: TdxDBGridMaskColumn;
    GridCONS_COME_ZONA: TdxDBGridMaskColumn;
    GridCODI_COME_ZONA_DETALLE: TdxDBGridMaskColumn;
    GridNOMB_COME_ZONA_DETALLE: TdxDBGridMaskColumn;
    GridFECH_SISTEMA: TdxDBGridMaskColumn;
    GridUSUA_SISTEMA: TdxDBGridMaskColumn;
    procedure data_ventanaStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tabl_subzonasBeforePost(DataSet: TDataSet);
    procedure acti_eliminarExecute(Sender: TObject);
    procedure doMostrarVentanaDetalle(Sender: TObject);
    procedure acti_nuevoExecute(Sender: TObject);
    procedure acti_modificarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn2_come_zonas2: Tfn2_come_zonas2;

implementation

uses _MDI, _func_varias, un2_come_zonas_detalle, _cons_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar los controles de la ventana cuando
                  la tabla principal cambie de estado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_zonas2.data_ventanaStateChange(Sender: TObject);
begin
  inherited;
  fram_Subzonas.Visible := (tabla_ventana.Active) and (Tabla_Ventana.State<>dsInsert);
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_zonas2.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar los controles
  ColorGrid(Grid);
  //Abrir consultas
  AbrirDataSet(tabl_subzonas);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : tabl_subzonasBeforePost
Objetivo        : Actualizar la secuencia del registro antes de 
                  guardarlo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_zonas2.tabl_subzonasBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (tabl_subZonas.State = dsInsert) Then
        GenerarSecuencia(tabl_subZonas);
end;
{****************************************************************
Procedimiento   : acti_eliminarExecute
Objetivo        : Eliminar las subzonas seleccionadas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_zonas2.acti_eliminarExecute(Sender: TObject);
begin
  inherited;
  If Confirmar(cosDeseaEliminar)=mrYes Then
        Grid.DeleteSelection;
end;
{****************************************************************
Procedimiento   : doMostrarVentanaDetalle
Objetivo        : Mostrar la ventana de detalles
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_zonas2.doMostrarVentanaDetalle(Sender: TObject);
begin
  inherited;
  Application.CreateForm(Tfn2_come_zonas_detalle, fn2_come_zonas_detalle);
  fn2_come_zonas_detalle.Crear(tabl_subZonas);
end;
{****************************************************************
Procedimiento   : acti_nuevoExecute
Objetivo        : Ejecutar la acción de insertar y mostrar la
                  ventana de detalles
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_zonas2.acti_nuevoExecute(Sender: TObject);
begin
  inherited;
  doMostrarVentanaDetalle(Sender);
end;
{****************************************************************
Procedimiento   : doMostrarVentanaDetalle
Objetivo        : Ejecutar la acción de editar y mostrar la ventana
                  de detalles
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_zonas2.acti_modificarExecute(Sender: TObject);
begin
  inherited;
  doMostrarVentanaDetalle(Sender);
end;

end.
