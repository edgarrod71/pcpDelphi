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
        Unit            : un1_come_pedi_expl_agru_material
        Objetivo        : Explosión de materiales por pedido
                          agrupada por material
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 24 de 2004
        Versión         : pcp4006
*******************************************************************}
unit un1_come_pedi_expl_agru_material;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_come_expl_padre, Db, RxMemDS, DBTables, dxCntner, dxExEdtr,
  TB2Item, SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls,
  ufra_info_refe_basico, ufra_come_sele_pedido, dfsSplitter, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid,
  dxPageControl, dxDBTLCl, dxGrClms, ufra_edit_reportes, Boxes, PCPFrame;

type
  Tfn1_come_pedi_expl_agru_material = class(Tfn1_come_expl_padre)
    consultaTIPO: TIntegerField;
    consultaCONS_MATE_REFERENCIA: TIntegerField;
    consultaCODI_MATE_REFERENCIA: TStringField;
    consultaNOMB_MATE_REFERENCIA: TStringField;
    consultaCONS_MATE_GRUPO: TIntegerField;
    consultaCODI_MATE_GRUPO: TStringField;
    consultaNOMB_MATE_GRUPO: TStringField;
    consultaCONS_MATE_SUBGRUPO: TIntegerField;
    consultaCODI_MATE_SUBGRUPO: TStringField;
    consultaNOMB_MATE_SUBGRUPO: TStringField;
    consultaCONS_PROVEEDOR: TIntegerField;
    consultaCODI_PROVEEDOR: TIntegerField;
    consultaNOMB_PROVEEDOR: TIntegerField;
    consultaNOMB_UNID_MEDIDA: TStringField;
    consultaCONS_UNIDAD: TFloatField;
    consultaCONS_TOTAL: TFloatField;
    consultaEXISTENTE: TFloatField;
    consultaDISPONIBLE: TFloatField;
    consultaENTREGADO: TFloatField;
    consultaDIFERENCIA: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_come_pedi_expl_agru_material: Tfn1_come_pedi_expl_agru_material;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_come_pedi_expl_agru_material.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
