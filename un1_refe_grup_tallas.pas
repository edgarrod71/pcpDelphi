{ 05/03/2004 10:41:21 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:46 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 20/02/2004 06:18:09 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
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
        Unit            : un1_refe_grup_tallas
        Objetivo        : Creaci�n de los grupos de tallas de productos
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero 20 de 2004
        Versi�n         : pcp4000
*******************************************************************}

unit un1_refe_grup_tallas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, SCLPropiedadesForm, Db, DBTables, ImgList, Menus, TB2Item,
  TBX, ActnList, ExtCtrls, TB2Toolbar, dxTLClms, dxTL, TB2Dock,
  TBXDkPanels, dxCntner, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  dxPageControl, dxExEdtr, dfsSplitter, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid,
  ufra_edit_reportes, Boxes, PCPFrame;

type
  Tfn1_refe_grup_tallas = class(T_fvent_child)
    consultaCONS_GRUP_TALLAS: TIntegerField;
    consultaCODI_GRUP_TALLAS: TStringField;
    consultaNOMB_GRUP_TALLAS: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaTALLAS: TStringField;
    padr_gridCONS_GRUP_TALLAS: TdxDBGridMaskColumn;
    padr_gridCODI_GRUP_TALLAS: TdxDBGridMaskColumn;
    padr_gridNOMB_GRUP_TALLAS: TdxDBGridMaskColumn;
    padr_gridTALLAS: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_grup_tallas: Tfn1_refe_grup_tallas;

implementation

uses _Traductor;

{$R *.DFM}


procedure Tfn1_refe_grup_tallas.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
