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
        Unit            : _uData
        Objetivo        : Almacenamiento de objetos varios no visuales
                          utilizados en toda la aplicación (y comunes)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 30-mar-2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit _uData;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ImgList, cxStyles, cxClasses, {cxGridTableView, }cxContainer, cxEdit,
  ExtDlgs, dxCntner, Dialogs;

type
  T_fData = class(TDataModule)
    imag_32: TImageList;
    imag_16: TImageList;
    cxEstilos: TcxStyleRepository;
//    cxEstilo_DevExpress: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
//    cxEstilos_Editores: TcxEditStyleController;
    imag_pers_estados: TImageList;
    dial_imag_abrir: TOpenPictureDialog;
    imag_rl_layout: TImageList;
    imag_rl_obje_distribution: TImageList;
    Imag_RL_Alin_texto: TImageList;
    cxEstilos_Editores: TdxEditStyleController;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _fData: T_fData;

implementation

//uses _cons_colores;

{$R *.DFM}

procedure T_fData.DataModuleCreate(Sender: TObject);
begin
        //Cambiar los colores del estilo CX
{  With cxEstilos_Editores do Begin
      With Style do
      Begin
        BorderColor := clLineaGradiente;
        BorderStyle := ebsOffice11;
        ButtonStyle := btsOffice11;
        Color := clWindow;
        HotTrack := False;
        Shadow := False;
        TextColor := clWindowText;
      End;
      With StyleDisabled do
      Begin
        BorderColor := clLineaGradiente;
        BorderStyle := ebsOffice11;
        ButtonStyle := btsOffice11;
        Color := clFondoAplicacion;
        HotTrack := False;
        Shadow := False;
        TextColor := clWindowText;
      End;
      With StyleFocused do
      Begin
        BorderColor := clLineaGradiente;
        BorderStyle := ebsOffice11;
        ButtonStyle := btsOffice11;
        Color := clWindow;
        HotTrack := False;
        Shadow := False;
        TextColor := clWindowText;
      End;
      With StyleHot do
      Begin
        BorderColor := clLineaGradiente;
        BorderStyle := ebsOffice11;
        ButtonStyle := btsOffice11;
        Color := clWindow;
        HotTrack := False;
        Shadow := False;
        TextColor := clWindowText;
      End;
  End;}
end;

end.
