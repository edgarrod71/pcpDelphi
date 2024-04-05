unit _vent_modal_alone;
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
        Unit            : _vent_modal_alone
        Objetivo        : Ventana padre estilo modal que no depende 
                          de una child
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Julio 15 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        
{$I DEFINICIONES.INC}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, ExtCtrls, DBTables, PictureContainer, AdvPanel,
  dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPProceso, _Traductor;

type
  T_fvent_modal_alone = class(T_fvent_modal)
    padr_titu_ventana: TPanel;
    padr_pane_titulo: TPanel;
    padr_pane_2: TPanel;
    padr_imag_ventana: TImage;
    padr_pane_cerrar: TPanel;
    padr_imag_salir: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _fvent_modal_alone: T_fvent_modal_alone;

implementation

{$IFDEF PCP4}
uses _vari_pcp, _mdi;
{$ENDIF}

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : 
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal_alone.FormCreate(Sender: TObject);
begin
    inherited;
            // Colocar el título de la ventana igual al del panel de titulo-jmv:v0.3
    //....................................................................
    Caption := padr_pane_titulo.Caption;
    //Color del titulo
    {$IFDEF PCP4}
        padr_titu_ventana.Visible := (var_AnclarHijos);
    {$ENDIF}        
    padr_titu_ventana.Color := Variables.ColorPanel;
    padr_pane_titulo.Color := Variables.ColorPanel;
//	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : FormActivate
Objetivo        : Actualizar la ventana al activarla
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal_alone.FormActivate(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar la ventana al mostrarla
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_modal_alone.FormShow(Sender: TObject);
begin
  inherited;
    {$IFDEF PCP4}
          padr_titu_ventana.Visible := (var_AnclarHijos);
          if not var_anclarHijos then
                _fmdi.labe_titu_mdi.LabelCaption := padr_pane_titulo.Caption;
    {$ENDIF}        
    padr_titu_ventana.Color := Variables.ColorPanel;
    padr_pane_titulo.Color := Variables.ColorPanel;
end;

end.
