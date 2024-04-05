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
        Unit            : un1_form_pago_dividido
        Objetivo        : Forma de pago valor hora producción dividido
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 07 de 2005
        Versión         : pcp4.0.0.14
*******************************************************************}
unit un1_form_pago_dividido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, dxDBTLCl, dxGrClms, ufra_edit_reportes, Boxes,
  PCPFrame;

type
  Tfn1_form_pago_dividido = class(T_fvent_child)
    consultaCONS_FORM_PAGO_DIVIDIDO: TIntegerField;
    consultaCODI_FORM_PAGO_DIVIDIDO: TStringField;
    consultaNOMB_FORM_PAGO_DIVIDIDO: TStringField;
    consultaESTA_ACTIVO: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_FORM_PAGO_DIVIDIDO: TdxDBGridMaskColumn;
    padr_gridCODI_FORM_PAGO_DIVIDIDO: TdxDBGridMaskColumn;
    padr_gridNOMB_FORM_PAGO_DIVIDIDO: TdxDBGridMaskColumn;
    padr_gridESTA_ACTIVO: TdxDBGridCheckColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_form_pago_dividido: Tfn1_form_pago_dividido;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_form_pago_dividido.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
