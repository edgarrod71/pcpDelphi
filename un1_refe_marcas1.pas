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
        Unit            : un1_refe_marcas1
        Objetivo        : Maestro de marcas de productos (edición)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 09-Jun-2005
        Versión         : pcp4.0.20.12
*******************************************************************}
unit un1_refe_marcas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, DBActns, ActnList, Db, ImgList, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, SCLPropiedadesForm, dxCntner, dxEditor, dxEdLib,
  dxDBELib, StdCtrls, DBTables, SCLDBLabel, dxExEdtr, SoCtrls,
  PictureContainer, AdvPanel, Boxes, PCPProceso;

type
  Tfn1_refe_marcas1 = class(T_fvent_modal)
    Tabla_VentanaCONS_REFE_MARCA: TIntegerField;
    Tabla_VentanaCODI_REFE_MARCA: TStringField;
    Tabla_VentanaNOMB_REFE_MARCA: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaFECH_CREA_MARCA: TDateTimeField;
    Tabla_VentanaTIEM_USO: TIntegerField;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    DBDescripcion: TdxDBEdit;
    SCLDBLabel3: TSCLDBLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    SCLDBLabel4: TSCLDBLabel;
    Label1: TLabel;
    dxDBEdit1: TdxDBEdit;
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure Tabla_VentanaCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_marcas1: Tfn1_refe_marcas1;

implementation

uses _cons_pcp, _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Inicializar el registro al insertarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_refe_marcas1.Tabla_VentanaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  With tabla_Ventana do
  Begin
      FieldByName('fech_crea_marca').Value := NowDate;
  End;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaCalcFields
Objetivo        : Dar valor a los campos calculados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_refe_marcas1.Tabla_VentanaCalcFields(DataSet: TDataSet);
begin
  inherited;
  With tabla_Ventana do
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

procedure Tfn1_refe_marcas1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
