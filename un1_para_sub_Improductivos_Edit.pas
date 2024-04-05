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
        Unit            : un1_para_sub_Improductivos_Edit
        Objetivo        : Edición de subimproductivos desde la ventana
                          de improductivos
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 13-Jun-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit un1_para_sub_Improductivos_Edit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UN1_Para_Sub_Improductivos1, PictureContainer, DBTables, 
  AdvPanel, dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, dxEditor, dxEdLib, dxDBELib, TBXDkPanels, TBXButtonSCL,
  RxLookup, PCPLookUpComboEdit, Boxes, PCPProceso, ExtCtrls, TBX, TB2Item,
  TB2Dock, TB2Toolbar, StdCtrls, SoCtrls, SCLDBLabel;

type
  Tfun1_para_sub_Improductivos_Edit = class(TFN1_Para_Sub_Improductivos1)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure SetDataSet(peValue : TDataSet);
  end;

var
  fun1_para_sub_Improductivos_Edit: Tfun1_para_sub_Improductivos_Edit;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : SetDataSet
Objetivo        : Asigna un DataSet activo a la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tfun1_para_sub_Improductivos_Edit.SetDataSet(peValue : TDataSet);
Begin
    data_Ventana.DataSet := peValue;
End;


procedure Tfun1_para_sub_Improductivos_Edit.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
