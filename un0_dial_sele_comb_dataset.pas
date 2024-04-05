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
        Unit            : un0_dial_sele_comb_dataset
        Objetivo        : Dialogo de selección de un valor en un combo
                          dado el dataset de orígen
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 02-Sep-2005
        Versión         : pcp4.0.20.19
*******************************************************************}
unit un0_dial_sele_comb_dataset;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit;

type
  Tfn0_dial_sele_comb_dataset = class(T_fvent_modal)
    Panel1: TPanel;
    labe_Texto: TLabel;
    combo: TPCPLookUpComboEdit;
    procedure padr_accionesUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Ejecutar(peTitulo : String; peDataSet : TDataSet;
                peKeyField, peListField : String);

  end;

var
  fn0_dial_sele_comb_dataset: Tfn0_dial_sele_comb_dataset;

implementation

uses _cons_pcp, _func_varias, _Traductor;

{$R *.DFM}


{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Sep-2005
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn0_dial_sele_comb_dataset.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := cosSeleccionar;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : padr_accionesUpdate
Objetivo        : Actualizar el estado de las acciones
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Sep-2005
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn0_dial_sele_comb_dataset.padr_accionesUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  padr_acti_cancelar.Enabled := True;
  padr_acti_aceptar.Enabled := True;
end;
{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecutar el diálogo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Sep-2005
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure Tfn0_dial_sele_comb_dataset.Ejecutar(peTitulo : String; peDataSet : TDataSet;
                peKeyField, peListField : String);
Begin
      if (peDataSet <> Nil) then
          data_Ventana.DataSet := peDataSet;
      labe_texto.Caption := peTitulo;
      combo.KeyField := peKeyField;
      combo.ListField := peListField;
      combo.DataSource := data_Ventana;
      inicializarCombo(combo);
      ShowModal;
End;


end.
