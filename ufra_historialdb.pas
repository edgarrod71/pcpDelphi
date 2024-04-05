{ 06/03/2004 12:49:43 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:40:32 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:38:02 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 03/03/2004 09:44:57 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 03/03/2004 09:44:29 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 01/03/2004 07:21:07 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 24/02/2004 05:20:45 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 24/02/2004 12:55:45 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
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
        Unit            : ufra_historialDB
        Objetivo        : Frame para el control de historial y anotaciones
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero 24 de 2004
        Versión         : pcp4000
*******************************************************************}

unit ufra_historialDB;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxTL, dxDBCtrl, dxDBGrid, Db, ActnList, StdCtrls,
  SCLDBLabel, SCLPanelLabel, TB2Item, TBX, Menus, dxDBTLCl, dxGrClms
  {$IFDEF BARRA_MDI} ,TB2Dock, TB2Toolbar{$ENDIF}
  {$IFDEF PCP4} , _MDI {$ENDIF}
  ;

type
  Tffra_historialDB = class(TFrame)
    fram_pane: TPanel;
    fram_grid_historial: TdxDBGrid;
    data_historial: TDataSource;
    fram_acciones: TActionList;
    fram_acti_nuevo: TAction;
    pop_grid_anotaciones: TTBXPopupMenu;
    TBXItem1: TTBXItem;
    fram_grid_historialUSUARIO: TdxDBGridColumn;
    fram_grid_historialFECHA: TdxDBGridDateColumn;
    fram_grid_historialANOTACION: TdxDBGridMemoColumn;
    TBXItem2: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem3: TTBXItem;
    fram_acti_modificar: TAction;
    fram_acti_eliminar: TAction;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem6: TTBXItem;
    fram_acti_expo_xls: TAction;
    fram_acti_expo_html: TAction;
    fram_acti_expo_txt: TAction;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem7: TTBXItem;
    TBXItem8: TTBXItem;
    TBXItem9: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXItem10: TTBXItem;
    TBXItem11: TTBXItem;
    TBXItem12: TTBXItem;
    procedure fram_acti_nuevoExecute(Sender: TObject);
    procedure fram_acti_modificarExecute(Sender: TObject);
    procedure fram_acti_eliminarExecute(Sender: TObject);
    procedure fram_accionesUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure fram_acti_expo_xlsExecute(Sender: TObject);
    procedure fram_acti_expo_htmlExecute(Sender: TObject);
    procedure fram_acti_expo_txtExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

ResourceString
        cosSoloModificaAnotacionElUsuario = 'Esta anotación sólamente la puede modificar %s';
        cosSoloEliminaAnotacionElUsuario = 'Esta anotación sólamente la puede eliminar %s';

  
implementation
uses _cons_pcp, n0_anotacion, _func_varias, _vari_pcp;
{$R *.DFM}
{****************************************************************
Procedimiento   : fram_acti_nuevoExecute
Objetivo        : Insertar una nueva anotación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_historialDB.fram_acti_nuevoExecute(Sender: TObject);
begin
     //Validar el DataSet
     If (Data_Historial.DataSet = Nil) or (Not Data_Historial.DataSet.Active) then
        Raise Exception.Create(Format(cosErrorFuenteDatosNoValida,[UpperCase(data_historial.Name)]));
     //Crear la ventana de solicitud de la anotación
     Application.CreateForm(Tfn0_anotacion, fn0_anotacion);
     With fn0_anotacion do
        NuevaAnotacion(data_historial);
end;
{****************************************************************
Procedimiento   : fram_acti_modificarExecute
Objetivo        : Ejecutar la acción de modificar la anotación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_historialDB.fram_acti_modificarExecute(Sender: TObject);
begin
     //Validar el DataSet
     If (Data_Historial.DataSet = Nil) or (Not Data_Historial.DataSet.Active) then
        Raise Exception.Create(Format(cosErrorFuenteDatosNoValida,[UpperCase(data_historial.Name)]));
     //Validar el usuario
     If (fram_grid_historialUSUARIO.Field.FieldName='') Then Exit;
     If (data_historial.DataSet.RecordCount>0) Then
        If (data_historial.DataSet.FieldByName(fram_grid_historialUSUARIO.Field.FieldName).AsString<>var_usua_activo) then
           Raise Exception.Create(Format(cosSoloModificaAnotacionElUsuario,[data_historial.DataSet.FieldByName(fram_grid_historialUSUARIO.Field.FieldName).AsString]));
     //Crear la ventana de solicitud de la anotación
     Application.CreateForm(Tfn0_anotacion, fn0_anotacion);
     With fn0_anotacion do
        EditarAnotacion(data_historial);
end;
{****************************************************************
Procedimiento   : fram_acti_eliminarExecute
Objetivo        : Ejecutar la acción de eliminar la anotación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_historialDB.fram_acti_eliminarExecute(Sender: TObject);
begin
     //Validar el DataSet
     If (Data_Historial.DataSet = Nil) or (Not Data_Historial.DataSet.Active) then
        Raise Exception.Create(Format(cosErrorFuenteDatosNoValida,[UpperCase(data_historial.Name)]));
     //Salir si está vacío
     If (data_historial.DataSet.RecordCount=0) Then Exit;
     //Validar el usuario
     If (fram_grid_historialUSUARIO.Field.FieldName='') Then Exit;
     If (data_historial.DataSet.FieldByName(fram_grid_historialUSUARIO.Field.FieldName).AsString<>var_usua_activo) then
        Raise Exception.Create(Format(cosSoloEliminaAnotacionElUsuario,[data_historial.DataSet.FieldByName(fram_grid_historialUSUARIO.Field.FieldName).AsString]));
     //Confirmar que desea eliminar
     if Confirmar(cosDeseaEliminar)=mrYes then
        data_historial.DataSet.Delete;
end;
{****************************************************************
Procedimiento   : fram_accionesUpdate
Objetivo        : Actualizar el estado de las acciones de la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_historialDB.fram_accionesUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  fram_acti_nuevo.Enabled := (data_historial.DataSet <> Nil) And (data_historial.DataSet.Active);
  fram_acti_modificar.Enabled := (data_historial.DataSet <> Nil) And (data_historial.DataSet.Active) and
                        (data_historial.DataSet.RecordCount>0);
  fram_acti_eliminar.Enabled := (data_historial.DataSet <> Nil) And (data_historial.DataSet.Active) and
                        (data_historial.DataSet.RecordCount>0);
end;
{****************************************************************
Procedimiento   : fram_acti_expo_xlsExecute
Objetivo        : Opciones de exportación del grid (XLS)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 15 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tffra_historialDB.fram_acti_expo_xlsExecute(Sender: TObject);
begin
    ExportarDbGridAExcel(fram_grid_historial);
end;
{****************************************************************
Procedimiento   : fram_acti_expo_htmlExecute
Objetivo        : Opciones de exportación del grid (HTML)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 15 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tffra_historialDB.fram_acti_expo_htmlExecute(Sender: TObject);
begin
    ExportarDBGridAHTML(fram_grid_historial);
end;
{****************************************************************
Procedimiento   : fram_acti_expo_txtExecute
Objetivo        : Opciones de exportación del grid (TXT)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 15 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tffra_historialDB.fram_acti_expo_txtExecute(Sender: TObject);
begin
    ExportarDbGridATexto(fram_grid_historial);
end;

end.
