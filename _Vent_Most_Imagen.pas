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
        Unit            : _Vent_Most_Imagen
        Objetivo        : Abre y muestra una imagen en pantalla
                          completa
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 27-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}
unit _Vent_Most_Imagen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, ufra_fotografiaDB, Boxes, PCPProceso;

type
  T_FVent_Most_Imagen = class(T_fvent_modal)
    fram_fotografia: Tffra_fotografiaDB;
    procedure ffra_fotografiaDB1fram_chec_ajustarChange(Sender: TObject);
    procedure CBAjustarChange(Sender: TObject);
    procedure ffra_fotografiaDB1fram_fotografiaKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _FVent_Most_Imagen: T_FVent_Most_Imagen;

implementation

uses _Traductor, _vari_pcp;


{$R *.DFM}

procedure T_FVent_Most_Imagen.ffra_fotografiaDB1fram_chec_ajustarChange(
  Sender: TObject);
begin
  inherited;
  fram_fotografia.AjustarTamanoFotografia(Sender);
end;

procedure T_FVent_Most_Imagen.CBAjustarChange(Sender: TObject);
begin
  inherited;
  fram_fotografia.CBAjustarChange(Sender);

end;
{****************************************************************
Procedimiento   : ffra_fotografiaDB1fram_fotografiaKeyDown
Objetivo        : Cerrar la ventana al dar ESCAPE
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_FVent_Most_Imagen.ffra_fotografiaDB1fram_fotografiaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  //inherited;
  if Key = vk_escape Then Close;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Dar foco a la imagen al mostrar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure T_FVent_Most_Imagen.FormShow(Sender: TObject);
begin
  inherited;
  if fram_fotografia.Fram_fotografia.CanFocus then fram_fotografia.Fram_fotografia.SetFocus;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure T_FVent_Most_Imagen.FormCreate(Sender: TObject);
begin
  inherited;
  //No reabrir en una nueva ventana
  fram_fotografia.fram_acti_ver_nuev_ventana.Enabled := False;
	Insertar_Palabras(Self, WKLenguaje);
 end;

end.
