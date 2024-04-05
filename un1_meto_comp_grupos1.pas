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
        Unit            : un1_meto_comp_grupos1
        Objetivo        : Maestro de grupos de componentes (edición)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 09-Jun-2005
        Versión         : pcp4.0.20.12
*******************************************************************}
unit un1_meto_comp_grupos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, PCPFrame, Boxes, PCPProceso, TB2Toolbar, HTMLabel;

type
  Tfn1_meto_comp_grupos1 = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    Tabla_VentanaCONS_COMP_GRUPO: TIntegerField;
    Tabla_VentanaCODI_COMP_GRUPO: TStringField;
    Tabla_VentanaNOMB_COMP_GRUPO: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLDBLabel3: TSCLDBLabel;
    dxDBMemo1: TdxDBMemo;
    Tabla_VentanaOBSERVACIONES: TMemoField;
    Tabla_VentanaALTO: TIntegerField;
    Tabla_VentanaANCHO: TIntegerField;
    PCPFrame1: TPCPFrame;
    tama_imagen: TPCPFrame;
    HTMLabel1: THTMLabel;
    Panel2: TPanel;
    ima: TImage;
    Panel3: TPanel;
    tamano: THTMLabel;
    SCLDBLabel4: TSCLDBLabel;
    spin_ancho: TdxDBSpinEdit;
    SCLDBLabel5: TSCLDBLabel;
    Spin_Alto: TdxDBSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure CambiarTamanoImagen(Sender: TObject);
    procedure tama_imagenResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure Tabla_VentanaAfterScroll(DataSet: TDataSet);
    procedure data_ventanaStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_meto_comp_grupos1: Tfn1_meto_comp_grupos1;

Const
        coiTama_Minimo = 50;
        cosTamano       = '<P align="center">%s</P>';

implementation

uses _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_meto_comp_grupos1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : CambiarTamanoImagen
Objetivo        : Cambiar el tamaño de la vista previa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_meto_comp_grupos1.CambiarTamanoImagen(Sender: TObject);
begin
  inherited;
  If (tabla_Ventana.FieldByName('ancho').asInteger <> tama_Imagen.Width) then
     tama_Imagen.Width := tabla_Ventana.FieldByName('ancho').asInteger;
  If (tabla_Ventana.FieldByName('alto').asInteger <> tama_Imagen.Height) then
     tama_Imagen.Height := tabla_Ventana.FieldByName('alto').asInteger;
  tama_imagenResize(Self);
end;
{****************************************************************
Procedimiento   : tama_imagenResize
Objetivo        : Actualizar la ventana al cambiar el tamaño de la vista previa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_meto_comp_grupos1.tama_imagenResize(Sender: TObject);
begin
  inherited;
  tamano.HTMLText.Clear;
  tamano.HTMLText.Add(Format(cosTamano, [IntToStr(tama_imagen.Width) + 'x' + IntToStr(tama_imagen.Height)]));
  tama_imagen.Top := 30;
  tama_imagen.Left := 200;
  tama_imagen.BoxResize(Sender);
  if (tama_imagen.Width = 200) and (tama_imagen.Height = 200) Then Exit;
  if (tama_imagen.Width < coiTama_Minimo) then tama_imagen.Width := coiTama_Minimo;
  if (tama_imagen.Height < coiTama_Minimo) then tama_imagen.Height := coiTama_Minimo;
  //Ajustar la imágen
  if not (Tabla_Ventana.State in [dsEdit, dsInsert]) then Exit;
  If (tabla_Ventana.FieldByName('ancho').asInteger <> tama_Imagen.Width) then
     tabla_Ventana.FieldByName('ancho').asInteger := tama_Imagen.Width;
  If (tabla_Ventana.FieldByName('alto').asInteger <> tama_Imagen.Height) then
     tabla_Ventana.FieldByName('alto').asInteger := tama_Imagen.Height;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles al mostrar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_meto_comp_grupos1.FormShow(Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Inicializar el registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_meto_comp_grupos1.Tabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  With tabla_Ventana do
  Begin
      FieldByName('ancho').Value := 200;
      FieldByName('alto').Value := 200;
  End;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterScroll
Objetivo        : Actualizar la ventana al cambiar de registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_meto_comp_grupos1.Tabla_VentanaAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  //Ajustar la imágen
  CambiarTamanoImagen(Self);
end;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar los componentes al cambiar el estado de
                  la tabla principal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_meto_comp_grupos1.data_ventanaStateChange(Sender: TObject);
begin
  inherited;
  //Permitir/Denegar actualizar el tamaño de la ventana de vista previa
  tama_imagen.AllowResize := (tabla_ventana.State in [dsInsert, dsEdit]);
  ima.Visible := (tabla_ventana.State in [dsInsert, dsEdit]);
end;

end.
