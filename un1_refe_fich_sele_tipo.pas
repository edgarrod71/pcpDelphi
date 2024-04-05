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
        Unit            : un1_refe_fich_sele_tipo
        Objetivo        : Selección del tipo de ficha técnica
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 23-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}

unit un1_refe_fich_sele_tipo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, _cons_pcp,
  _vent_modal, StdCtrls, ExtCtrls, JvExExtCtrls, JvRadioGroup,
  PictureContainer, DBTables, AdvPanel, dxExEdtr, dxCntner, Db,
  SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes, PCPProceso,
  dxEditor, dxEdLib, dxDBELib, SoCtrls, SCLDBLabel, TBX, TB2Item, TB2Dock,
  TB2Toolbar, SCLShape, JvComponent, JvDBRadioPanel, kbmMemTable;

type
  Tfn1_refe_fich_sele_tipo = class(T_fvent_modal)
    Panel1: TPanel;
    radi: TJvDBRadioPanel;
    quer_Tipo_Ficha: TQuery;
    SCLShape1: TSCLShape;
    myTabla_Ventana: TkbmMemTable;
    myTabla_Ventanacons_refe_tipo_ficha: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure quer_Tipo_FichaAfterOpen(DataSet: TDataSet);
    procedure padr_acti_aceptarUpdate(Sender: TObject);
    procedure padr_acti_cancelarUpdate(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure padr_acti_cancelarExecute(Sender: TObject);
  private
    { Private declarations }
    var_Resultado       : TFichasTecnicasDiseno;
  public
    { Public declarations }
    Function Ejecutar : TFichasTecnicasDiseno;
  end;

var
  fn1_refe_fich_sele_tipo: Tfn1_refe_fich_sele_tipo;

implementation

uses _func_varias, _Traductor;


{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_sele_tipo.FormCreate(Sender: TObject);
begin
  inherited;
  AbrirDataSet(quer_tipo_ficha);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : quer_Tipo_FichaAfterOpen
Objetivo        : Mostrar los tipos de fichas existentes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_sele_tipo.quer_Tipo_FichaAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  //Limpiar los existentes
  radi.Items.Clear;
  radi.Values.Clear;
  With quer_Tipo_Ficha do
     While not EOF do
     Begin
         //--------------PENDIENTE-------------
         //RC20.9 VERIFICAR LOS PERMISOS POR TIPO DE FICHA
         radi.Items.Add(FieldByName('nomb_refe_tipo_ficha').AsString);
         radi.Values.Add(FieldByName('cons_refe_tipo_ficha').AsString);
         //Siguiente
         Next;
     End;
end;
{****************************************************************
Procedimiento   : padr_acti_aceptarUpdate
Objetivo        : Actualizar el estado de la acción ACEPTAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_sele_tipo.padr_acti_aceptarUpdate(
  Sender: TObject);
begin
  inherited;
  padr_acti_aceptar.Enabled := radi.ItemIndex > -1;
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarUpdate
Objetivo        : Actualizar el estado de la acción CANCELAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_sele_tipo.padr_acti_cancelarUpdate(
  Sender: TObject);
begin
  inherited;
  padr_acti_cancelar.Enabled := True;
end;

{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecutar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Function Tfn1_refe_fich_sele_tipo.Ejecutar : TFichasTecnicasDiseno;
Begin
    var_Resultado := ftdSinAsignar;
    ShowModal;
    Result := var_Resultado;
End;
{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Ejecutar la acción ACEPTAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_sele_tipo.padr_acti_aceptarExecute(
  Sender: TObject);
var
        var_Tipo        : TFichasTecnicasDiseno;
begin
  //inherited;
  CheckAndPostDataSet(myTabla_Ventana);
  for var_Tipo := Low(TFichasTecnicasDiseno) to High(TFichasTecnicasDiseno) do
  Begin
       if (myTabla_Ventana.FieldByName('cons_refe_tipo_ficha').asInteger = coiFichasTecnicasDiseno[var_Tipo]) Then
       Begin
           var_Resultado := var_Tipo;
           Break;
       End;
  End;
  Close;
end;
{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Preparar la ventana para cerrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_sele_tipo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  //Guardar los datos de la tabla auxiliar
  CheckAndPostDataSet(myTabla_Ventana);
  inherited;
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Asignar la acción CANCELAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_sele_tipo.padr_acti_cancelarExecute(
  Sender: TObject);
begin
  inherited;
  var_Resultado := ftdSinAsignar;
  Close;
end;

end.
