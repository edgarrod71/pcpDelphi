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
        Unit            : un1_prod_orde_avan_general
        Objetivo        : Ventana padre para procesos generales
                          de avance en las �rdenes de producci�n
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 11 de 2004
        Versi�n         : pcp4006
*******************************************************************}

unit un1_prod_orde_avan_general;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_prod_padre, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, StdCtrls,
  SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit, Boxes, PCPFrame,
  dxEditor, dxEdLib, dxDBELib, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, ufra_prod_resp_lote_proceso, ufra_mens_atencion,
  TBXDkPanels, TBXButtonSCL, PCPProceso;

type
  Tfn1_prod_orde_avan_general = class(Tfn1_prod_padre)
    edit_proc_actual: TdxSpinEdit;
    PCPFrame1: TPCPFrame;
    fram_avance: Tffra_prod_resp_lote_proceso;
    fram_mensaje: Tffra_mens_atencion;
    procedure doCambiarOrden(Sender: TObject);
    procedure fram_avancedata_ventanaStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_orde_avan_general: Tfn1_prod_orde_avan_general;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_prod_orde_avan_general.doCambiarOrden(Sender: TObject);
begin
  inherited;
  fram_avance.Visible := (comb_nume_orden.Text <> '') and (padr_comb_nume_lote.Text <> '');
  fram_mensaje.Visible := Not fram_avance.Visible;
  //Salir si no es v�lido
  if ((comb_nume_orden.Text = '') or (padr_comb_nume_lote.Text = '')) Then Exit;
  //Cargar el frame
  fram_avance.doEjecutarFrame(padr_quer_lotes.FieldByName('cons_prod_lote').AsInteger,
        edit_proc_actual.IntValue, True);
end;
{****************************************************************
Procedimiento   : fram_avancedata_ventanaStateChange
Objetivo        : Actualizar los controles cuando cambie el estado de la tabla
                  de avance
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versi�n         : pcp4006
*****************************************************************}
procedure Tfn1_prod_orde_avan_general.fram_avancedata_ventanaStateChange(
  Sender: TObject);
begin
  inherited;
  comb_nume_orden.Enabled := (fram_avance.myTabla_Ventana.Active) and Not (fram_avance.myTabla_ventana.State in [dsEdit, dsInsert]);
  padr_comb_nume_lote.Enabled := (fram_avance.myTabla_Ventana.Active) and Not (fram_avance.myTabla_ventana.State in [dsEdit, dsInsert]);
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializaci�n de la ventana en su
                  creaci�n
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 12 de 2004
Versi�n         : pcp4006
*****************************************************************}
procedure Tfn1_prod_orde_avan_general.FormCreate(Sender: TObject);
begin
  inherited;
  LoteVisible := True;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
