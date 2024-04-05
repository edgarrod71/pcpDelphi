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
        Unit            : un1_meto_comp_grupos
        Objetivo        : Maestro de grupos de componentes (lista)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 09-Jun-2005
        Versi�n         : pcp4.0.20.12
*******************************************************************}
unit un1_meto_comp_grupos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  Tfn1_meto_comp_grupos = class(T_fvent_child)
    consultaCONS_COMP_GRUPO: TIntegerField;
    consultaCODI_COMP_GRUPO: TStringField;
    consultaNOMB_COMP_GRUPO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_COMP_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_COMP_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_COMP_GRUPO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaOBSERVACIONES: TMemoField;
    padr_gridOBSERVACIONES: TdxDBGridBlobColumn;
    consultaALTO: TIntegerField;
    consultaANCHO: TIntegerField;
    padr_gridALTO: TdxDBGridColumn;
    padr_gridANCHO: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_meto_comp_grupos: Tfn1_meto_comp_grupos;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_meto_comp_grupos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
