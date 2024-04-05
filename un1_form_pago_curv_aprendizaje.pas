{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeaci�n y Control de la Producci�n                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo est� protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducci�n no autorizada, la ingenier�a inversa y la   }
{       distribuci�n total o parcial del c�digo contenido en este   }
{       archivo est� estrictamente prohibido y podr� tener severas  }
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
        Unit            : un1_form_pago_curv_aprendizaje
        Objetivo        : Parametrizaci�n de la forma de pago
                          por curva de aprendizaje
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Febrero 07 de 2005
        Versi�n         : pcp4.0.20.2
*******************************************************************}
unit un1_form_pago_curv_aprendizaje;

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
  Tfn1_form_pago_curv_aprendizaje = class(T_fvent_child)
    consultaCONS_FORM_PAGO_APRENDIZAJE: TIntegerField;
    consultaCODI_FORM_PAGO_APRENDIZAJE: TStringField;
    consultaNOMB_FORM_PAGO_APRENDIZAJE: TStringField;
    consultaES_PORCENTUAL: TIntegerField;
    consultaESTA_ACTIVO: TIntegerField;
    consultaHORA_DIARIAS: TIntegerField;
    consultaHORA_SEMANALES: TIntegerField;
    consultaNUME_SEMANAS: TIntegerField;
    consultaNUME_DIAS_SEMANA: TIntegerField;
    consultaEFIC_INICIAL: TFloatField;
    consultaEFIC_FINAL: TFloatField;
    consultaVALO_BONO_INICIAL: TFloatField;
    consultaVALO_BONO_FINAL: TFloatField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_FORM_PAGO_APRENDIZAJE: TdxDBGridMaskColumn;
    padr_gridCODI_FORM_PAGO_APRENDIZAJE: TdxDBGridMaskColumn;
    padr_gridNOMB_FORM_PAGO_APRENDIZAJE: TdxDBGridMaskColumn;
    padr_gridHORA_DIARIAS: TdxDBGridMaskColumn;
    padr_gridHORA_SEMANALES: TdxDBGridMaskColumn;
    padr_gridNUME_SEMANAS: TdxDBGridMaskColumn;
    padr_gridNUME_DIAS_SEMANA: TdxDBGridMaskColumn;
    padr_gridEFIC_INICIAL: TdxDBGridMaskColumn;
    padr_gridEFIC_FINAL: TdxDBGridMaskColumn;
    padr_gridVALO_BONO_INICIAL: TdxDBGridMaskColumn;
    padr_gridVALO_BONO_FINAL: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridES_PORCENTUAL: TdxDBGridCheckColumn;
    padr_gridESTA_ACTIVO: TdxDBGridCheckColumn;
    consultaPAGO_DIARIO: TIntegerField;
    padr_gridPAGO_DIARIO: TdxDBGridCheckColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_form_pago_curv_aprendizaje: Tfn1_form_pago_curv_aprendizaje;

implementation

uses _Traductor;

{$R *.DFM}



procedure Tfn1_form_pago_curv_aprendizaje.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
