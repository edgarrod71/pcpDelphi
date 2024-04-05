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
        Unit            : un1_refe_fich_child
        Objetivo        : Ventana maestra de fichas técnicas (child)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 23-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}
unit un1_refe_fich_00child;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, _cons_pcp,
  un1_refe_fich_maestro, Db, DBTables, dxCntner, dxExEdtr,
  TB2Item, SCLPropiedadesForm, ImgList, Menus, TBX, ActnList,
  ufra_edit_reportes, ExtCtrls, dxEditor, dxEdLib, RxLookup,
  PCPLookUpComboEdit, StdCtrls, SoCtrls, SCLDBLabel, dfsSplitter, Boxes,
  PCPFrame, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar,
  dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl;

type
  Tfn1_refe_fich_00child = class(Tfn1_refe_fich_maestro)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    var_TipoFichaTecnica        : TFichasTecnicasDiseno;
    Procedure SetTipoFichaTecnica (peValue : TFichasTecnicasDiseno);
  public
    { Public declarations }
  Published
    Property TipoFichaTecnica : TFichasTecnicasDiseno Read var_TipoFichaTecnica Write SetTipoFichaTecnica;
  end;

var
  fn1_refe_fich_00child: Tfn1_refe_fich_00child;

implementation

uses un1_refe_fich_funciones, _Traductor;


{$R *.DFM}
{****************************************************************
Procedimiento   : SetTipoFichaTecnica
Objetivo        : Asigna el valor del tipo de ficha técnica y abre
                  la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure Tfn1_refe_fich_00child.SetTipoFichaTecnica (peValue : TFichasTecnicasDiseno);
Begin
     var_TipoFichaTecnica := peValue;
     //Cambiar el título de la ventana
     padr_pane_titulo.Caption := NombreTipoFichasTecnicas(var_TipoFichaTecnica);
     //Reabrir la consulta
     With Consulta do
     Begin
        Close;
        ParamByName('cons_refe_tipo_ficha').Value := TipoFichasTecnicasToInteger(var_TipoFichaTecnica);
        Open;
        if (data_Ventana.DataSet = Nil) Then
           data_Ventana.DataSet := Consulta;
     End;
End;

procedure Tfn1_refe_fich_00child.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
