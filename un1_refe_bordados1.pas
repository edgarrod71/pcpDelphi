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
        Unit            : un1_refe_bordados1
        Objetivo        : Creaci�n/modificaci�n de tipos de bordado de producto
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero 20 de 2004
        Versi�n         : pcp4000
*******************************************************************}

unit un1_refe_bordados1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, DBTables, SCLDBLabel, dxExEdtr, ufra_fotografiaDB,
  SoCtrls, PictureContainer, AdvPanel, Boxes, PCPProceso;

type
  Tfn1_refe_bordados1 = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    Tabla_VentanaCONS_REFE_BORDADO: TIntegerField;
    Tabla_VentanaCODI_REFE_BORDADO: TStringField;
    Tabla_VentanaNOMB_REFE_BORDADO: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaIMAGEN: TBlobField;
    Tabla_VentanaAJUS_IMAGEN: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_bordados1: Tfn1_refe_bordados1;

implementation
uses un1_refe_bordados;
{$R *.DFM}
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Ajustar los controles de la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versi�n         : pcp4000
*****************************************************************}
end.
