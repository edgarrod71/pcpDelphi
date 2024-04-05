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
        Unit            : un1_refe_fich_edic_07_medi_especiales
        Objetivo        : Ventana de edición de fichas técnicas
                          07 - MEDIDAS ESPECIALES
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 03-Jun-2005
        Versión         : pcp4.0.20.10
*******************************************************************}

unit un1_refe_fich_edic_07_medi_especiales;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_refe_fich_00Edicion, Db, kbmMemTable, ActnList, DBTables,
  ufra_mens_atencion, dxCntner, dxEditor, dxEdLib, dxDBELib, StdCtrls,
  SoCtrls, SCLDBLabel, ExtCtrls, Boxes, PCPFrame, ufra_fotografiaDB;

type
  Tfn1_refe_fich_edic_07_medi_especiales = class(Tfn1_refe_fich_00Edicion)
    quer_Sele_Detalle: TQuery;
    quer_guar_detalle: TQuery;
    Panel1: TPanel;
    pane_imagen: Tffra_fotografiaDB;
    padr_tabl_fich_DetallesIMAG_1: TBlobField;
    padr_tabl_fich_DetallesIMAG_1_SMALL: TBlobField;
    procedure FormCreate(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure padr_acti_AfterPostExecute(Sender: TObject);
    procedure padr_acti_AfterEjecutarExecute(Sender: TObject);
    procedure padr_tabl_fich_DetallesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_fich_edic_07_medi_especiales: Tfn1_refe_fich_edic_07_medi_especiales;

implementation


uses _cons_pcp, _func_varias, un1_refe_fich_funciones, _func_pcp,
  _Traductor;


{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_07_medi_especiales.FormCreate(Sender: TObject);
begin
  inherited;
  TipoFicha := ftdMedidasEspecialesDetalles;
  //Inicialización visual y de variables
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : Panel1Resize
Objetivo        : Centrar y dar tamaño a la imágen
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_07_medi_especiales.Panel1Resize(
  Sender: TObject);
begin
  inherited;
  setTamanoImagen(pane_imagen, TipoFicha);
  CentrarControl(pane_imagen);
end;
{****************************************************************
Procedimiento   : padr_acti_AfterPostExecute
Objetivo        : Ejecutar el AFTER-POST del padre
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_07_medi_especiales.padr_acti_AfterPostExecute(
  Sender: TObject);
begin
  inherited;
  //Guardar el registro del detalle
  if Loading Then Exit;
  //Guardar el detalle
  CheckAndPostDataSet(padr_tabl_fich_Detalles);
  //Guardar la tabla en la BD
  Try
        if (padr_tabl_fich_Detalles.RecordCount > 0) Then
           quer_guar_detalle.ExecSQL;
  Except
     on E:Exception do
     Begin
       EjecutarMensajeError(e.Message);
       Raise;
     End;
  End;
end;
{****************************************************************
Procedimiento   : padr_acti_AfterEjecutarExecute
Objetivo        : Abrir el detalle de la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_07_medi_especiales.padr_acti_AfterEjecutarExecute(
  Sender: TObject);
begin
  inherited;
  //Cargar las imágenes del detalle (si hay consecutivo de la ficha)
  if (padr_tabl_fich_tecnicas.FieldByName('cons_refe_ficha').asInteger > 0) Then
  Begin
      With quer_sele_detalle do
      Begin
          Close;
          ParamByName('cons_Refe_ficha').Value := padr_tabl_fich_tecnicas.FieldByName('cons_refe_ficha').asInteger;
          Open;
          padr_tabl_fich_Detalles.LoadFromDataSet(quer_Sele_Detalle, [mtcpoAppend]);
          //Si hay registros, llamar la imágen
          CheckAndPostDataSet(padr_tabl_fich_tecnicas);
          Close;
      End;
  End;
end;
{****************************************************************
Procedimiento   : padr_tabl_fich_DetallesBeforePost
Objetivo        : Crear la vista previa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_07_medi_especiales.padr_tabl_fich_DetallesBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //Crear las imágenes SMALL
  EDBImageToBlobField(pane_imagen.fram_fotografia, padr_tabl_fich_DetallesIMAG_1_SMALL , coiTamanoVistasPrevias, coiTamanoVistasPrevias);
end;

end.
