unit ufra_dependencias;
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
        Unit            : ufra_dependencias
        Objetivo        : Frame para mostrar dependencias
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Junio 25 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dfsSplitter, Boxes, PCPFrame, dxTL, dxDBCtrl, dxCntner, dxDBTL,
  Db, DBTables;

type
  Tffra_dependencias = class(TFrame)
    pane_dependencia: TPCPFrame;
    Panel1: TPanel;
    fram_quer_dependencias: TQuery;
    quer_dependenciaCONS_CONSULTA: TIntegerField;
    quer_dependenciaPADR_CONSULTA: TIntegerField;
    quer_dependenciaVALO_TABL_DEPENDENCIA: TStringField;
    quer_dependenciaINDE_IMAGEN: TIntegerField;
    quer_dependenciaCONS_TABL_DEPENDENCIA: TStringField;
    fram_data_dependencia: TDataSource;
    fram_list_dependencia: TdxDBTreeList;
    fram_list_dependenciaCONS_CONSULTA: TdxDBTreeListMaskColumn;
    fram_list_dependenciaPADR_CONSULTA: TdxDBTreeListMaskColumn;
    fram_list_dependenciaVALO_TABL_DEPENDENCIA: TdxDBTreeListMaskColumn;
    fram_list_dependenciaCONS_TABL_DEPENDENCIA: TdxDBTreeListMaskColumn;
    procedure fram_list_dependenciaCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure fram_quer_dependenciasBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    fCaption    : String;
    Procedure SetCaption  (Value : String);
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
    Destructor Destroy;
  Published
        Property Caption : String Read fCaption Write SetCaption;
  end;

ResourceString
        cosDependencias = 'Dependencias';

implementation

uses _func_varias;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el Frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_dependencias.Create (Owner : TComponent);
Begin
     Inherited Create (Owner);
     SetCaption(cosDependencias);
End;
{****************************************************************
Procedimiento   : Destroy
Objetivo        : Destruir el frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Destructor Tffra_dependencias.Destroy;
Begin
    UnPrepare(fram_quer_dependencias);
    Inherited Destroy;
End;
{****************************************************************
Procedimiento   : fram_list_dependenciaCustomDrawCell
Objetivo        : Mostrar en negrilla las dependencias activas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_dependencias.fram_list_dependenciaCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  If Not aNode.HasChildren Then Exit;
  aText := aText + '   ('+IntToStr(aNode.Count)+')';
  If aNode.Count > 0 Then aFont.Style := [fsBold];
end;

Procedure Tffra_dependencias.SetCaption  (Value : String);
Begin
     If Value <> pane_dependencia.Caption then
     Begin
        fCaption := Value;
        pane_dependencia.Caption := Value;
     End;
End;
{****************************************************************
Procedimiento   : fram_quer_dependenciasBeforeOpen
Objetivo        : Preparar el Query antes de abrirlo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_dependencias.fram_quer_dependenciasBeforeOpen(
  DataSet: TDataSet);
begin
    //Preparar el Query
    With fram_quer_dependencias do
     Try
        If Not Prepared then Prepare;
     Except
     End;
end;

end.
