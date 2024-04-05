{ 05/03/2004 10:41:15 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:38 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 26/02/2004 02:02:13 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 20/02/2004 07:15:14 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Bordados de productos  }
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
        Unit            : un1_refe_bordados
        Objetivo        : Ventana de consulta de lavados de producto
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero 20 de 2004
        Versión         : pcp4000
*******************************************************************}

unit un1_refe_bordados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, Db,
  SCLPropiedadesForm, DBTables, ImgList, Menus, TB2Item, TBX, ActnList,
  ExtCtrls, TB2Toolbar, dxTLClms, dxTL, TB2Dock, TBXDkPanels, dxCntner,
  dxPageControl, dxExEdtr, dfsSplitter, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid,
  ufra_edit_reportes, Boxes, PCPFrame;

type
  Tfn1_refe_bordados = class(T_fvent_child)
    consultaCONS_REFE_BORDADO: TIntegerField;
    consultaCODI_REFE_BORDADO: TStringField;
    consultaNOMB_REFE_BORDADO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_REFE_BORDADO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_BORDADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_BORDADO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaOBSERVACIONES: TStringField;
    padr_gridOBSERVACIONES: TdxDBGridBlobColumn;
    procedure padr_acti_nuevoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_bordados: Tfn1_refe_bordados;

implementation
Uses pruebaNoUsar;

{$R *.DFM}
procedure Tfn1_refe_bordados.padr_acti_nuevoExecute(Sender: TObject);
begin
  inherited;
{  fn1_refe_bordados1.visible := False; }

{ Application.CreateForm(Tfpruebanousar, fpruebanousar);
  fpruebanousar.ManualDock(padr_pagina, Nil);
  fpruebanousar.Show;           }
{  If DockManager is tdxPageControl then
     (Parent as tdxPageControl).ActivePageIndex := (Parent as tdxPageControl).PageCount - 1;
}

end;

end.
