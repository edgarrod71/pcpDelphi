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
        Unit            : un1_pers_dise_carne
        Objetivo        : Diseño del carné de personal
                          (formatos de identificación)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Febrero 04 de 2005
        Versión         : pcp4.0.20.0
*******************************************************************}
unit un1_pers_dise_carne;

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
  Tfn1_pers_dise_carne = class(T_fvent_child)
    consultaCONS_PERS_FORM_IDENTIFICACION: TIntegerField;
    consultaCODI_PERS_FORM_IDENTIFICACION: TStringField;
    consultaNOMB_PERS_FORM_IDENTIFICACION: TStringField;
    consultaDESC_PERS_FORM_IDENTIFICACIN: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_PERS_FORM_IDENTIFICACION: TdxDBGridMaskColumn;
    padr_gridCODI_PERS_FORM_IDENTIFICACION: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_FORM_IDENTIFICACION: TdxDBGridMaskColumn;
    padr_gridDESC_PERS_FORM_IDENTIFICACIN: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaACTIVO: TIntegerField;
    padr_gridColumn7: TdxDBGridCheckColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_pers_dise_carne: Tfn1_pers_dise_carne;

implementation

uses _MDI, _Traductor;

{$R *.DFM}

procedure Tfn1_pers_dise_carne.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
