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
        Unit            : un1_refe_marcas
        Objetivo        : Maestro de marcas de productos
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 09-Jun-2005
        Versi�n         : pcp4.0.20.12
*******************************************************************}
unit un1_refe_marcas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, ImgList, Menus, TB2Item, TBX, ActnList,
  ExtCtrls, TB2Toolbar, dxTLClms, dxTL, TB2Dock, TBXDkPanels, dxCntner,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, SCLPropiedadesForm, dxPageControl,
  dxExEdtr, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  Tfn1_refe_marcas = class(T_fvent_child)
    consultaCONS_REFE_MARCA: TIntegerField;
    consultaCODI_REFE_MARCA: TStringField;
    consultaNOMB_REFE_MARCA: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaFECH_CREA_MARCA: TDateTimeField;
    CONSULTATIEM_USO: TIntegerField;
    padr_gridFECH_CREA_MARCA: TdxDBGridDateColumn;
    padr_gridTIEM_USO: TdxDBGridColumn;
    procedure consultaCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_marcas: Tfn1_refe_marcas;

implementation

uses _cons_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : consultaCalcFields
Objetivo        : Dar valor a los campos calculados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Jun-2005
Versi�n         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_refe_marcas.consultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  With Consulta do
  Begin
      if VarIsNull(FieldByName('fech_crea_marca').Value) Then
          FieldByName('tiem_uso').Value := 0
      Else
        Try
           FieldByName('tiem_uso').asInteger := Trunc((Now - FieldByName('fech_crea_marca').asDateTime) / coiDiasMes);
        Except
           FieldByName('tiem_uso').Value := 0;
        End;
      //Validar negativos
      IF FieldByName('tiem_uso').asInteger < 0 Then
         FieldByName('tiem_uso').Value := 0;
  End;
end;

procedure Tfn1_refe_marcas.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
