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
        Unit            : ufra_info_refe_basico
        Objetivo        : Frame de informaci�n por referencia de product
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 22 de 2004
        Versi�n         : pcp4006
*******************************************************************}

unit ufra_info_refe_basico;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxEditor, dxEdLib, dxDBELib, RxLookup, PCPLookUpComboEdit,
  StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, Boxes, PCPFrame, Db, DBTables,
  SohoBtns, SCLButton, TBXDkPanels, TBXButtonSCL;

type
  Tffra_info_refe_basico = class(TFrame)
    quer_referencias: TQuery;
    data_referencias: TDataSource;
    fram_pane_sele_referencia: TPCPFrame;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    padr_boto_menu_Referencia: TTBXButtonSCL;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    SCLDBLabel8: TSCLDBLabel;
    dxDBEdit4: TdxDBEdit;
    SCLDBLabel9: TSCLDBLabel;
    dxDBEdit6: TdxDBEdit;
    SCLDBLabel11: TSCLDBLabel;
    dxDBEdit7: TdxDBEdit;
    SCLDBLabel10: TSCLDBLabel;
    dxDBEdit5: TdxDBEdit;
    SCLDBLabel12: TSCLDBLabel;
    dxDBEdit8: TdxDBEdit;
    SCLDBLabel6: TSCLDBLabel;
    dxDBEdit3: TdxDBEdit;
    SCLDBLabel5: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    SCLDBLabel4: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    procedure fram_pane_sele_referenciaResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create(Owner : TComponent);Override;
  end;

implementation

uses _cons_pcp, _func_varias;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializaci�n de la ventana en su
                  creaci�n
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 22 de 2004
Versi�n         : pcp4006
*****************************************************************}
Constructor Tffra_info_refe_basico.Create(Owner : TComponent);
Begin
        Inherited Create(Owner);
        //Colores
        AutoHints(Self);
        fram_pane_sele_referencia.Caption := cosInformacionDeLaReferencia;
End;


{****************************************************************
Procedimiento   : fram_pane_sele_referenciaResize
Objetivo        : Cambiar el tama�o del frame al cambiar el tama�o
                  del panel
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 22 de 2004
Versi�n         : pcp4006
*****************************************************************}
procedure Tffra_info_refe_basico.fram_pane_sele_referenciaResize(
  Sender: TObject);
begin
        fram_pane_sele_referencia.BoxResize(Sender);
        Height := fram_pane_sele_referencia.Height;
end;

end.
