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
        Unit            : ufra_sele_referencia
        Objetivo        : Seleccionar una referencia de producto
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Junio 17 de 2004
        Versi�n         : pcp4000
*******************************************************************}
unit ufra_sele_referencia;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxEditor, dxEdLib, dxDBELib, RxLookup, PCPLookUpComboEdit,
  StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, Boxes, PCPFrame, Db, DBTables,
  SohoBtns, SCLButton, TBXDkPanels, TBXButtonSCL;

type
  Tffra_sele_referencia = class(TFrame)
    quer_referencias: TQuery;
    data_referencias: TDataSource;
    fram_pane_sele_referencia: TPCPFrame;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    comb_codi_referencia: TPCPLookUpComboEdit;
    comb_cir: TPCPLookUpComboEdit;
    fram_pane_informacion: TPCPFrame;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    SCLDBLabel12: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    padr_boto_menu_Referencia: TTBXButtonSCL;
    procedure FrameResize(Sender: TObject);
    procedure fram_pane_sele_referenciaResize(Sender: TObject);
    procedure comb_codi_referenciaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Var
    var_refe_valida     : boolean;

implementation

uses _cons_pcp;

{$R *.DFM}
{****************************************************************
Procedimiento   : FrameResize
Objetivo        : Actualizar el frame cuando lo actualizan
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 16 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_sele_referencia.FrameResize(Sender: TObject);
begin
  //Caption      
  fram_pane_sele_referencia.Caption := cosSeleccioneReferencia;
  fram_pane_informacion.Caption := cosInformacionDeLaReferencia;
end;
{****************************************************************
Procedimiento   : fram_pane_sele_referenciaResize
Objetivo        : Cambiar el tama�o del frame cuando se minimice
                  el pcpFrame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 16 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_sele_referencia.fram_pane_sele_referenciaResize(
  Sender: TObject);
begin
        fram_pane_sele_referencia.BoxResize(Sender);
        Height := fram_pane_sele_referencia.Height;
end;
{****************************************************************
Procedimiento   : comb_codi_referenciaChange
Objetivo        : Actualizar el frame cuando cambie la referencia activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 16 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_sele_referencia.comb_codi_referenciaChange(
  Sender: TObject);
begin
        //Actualizar la variable de validez de la referencia
        var_refe_valida := (comb_codi_referencia.Text<>'');
        //Mostrar/ocultar el panel de informaci�n de la referencia activa
        fram_pane_informacion.Visible :=  var_refe_valida;
end;
{****************************************************************
Procedimiento   : Inicialization
Objetivo        : Inicializar el unit
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 16 de 2004
Versi�n         : pcp4000
*****************************************************************}
Initialization
        var_refe_valida := True;
end.
