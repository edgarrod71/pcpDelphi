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
        Unit            : ubPersonal
        Objetivo        : Buscar un operario
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Diciembre 06 de 2005
        Versi�n         : pcp4.0.0.14
*******************************************************************}
unit ubPersonal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ucn1_pers_ubicacion, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, TBXDkPanels,
  TBXButtonSCL, dxEditor, dxEdLib, StdCtrls, SoCtrls, SCLDBLabel,
  ufra_maqu_ubicacion, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TB2Dock,
  TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid, dfsSplitter, dxPageControl,
  ufra_edit_reportes;

type
  TbPersonal = class(Tcn1_pers_ubicacion)
    pane_trabajando: TPanel;
    procedure FormShow(Sender: TObject);
    procedure doGridDblClick(Sender: TObject);
    procedure padr_gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    var_resultado   : Variant;
    var_nomb_campo  : String;
  public
    { Public declarations }
    Function doBuscar(peFecha : TDate; peNombreCampo : String = 'cons_personal') : Variant;
  end;

var
  bPersonal: TbPersonal;

implementation

uses _func_varias, _cons_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : doBuscar
Objetivo        : Ejecuta la b�squeda
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versi�n         : pcp4.0.0.14
*****************************************************************}
Function TbPersonal.doBuscar(peFecha : TDate; peNombreCampo : String = 'cons_personal') : Variant;
Begin
    edit_Fecha.Date := peFecha;
    var_nomb_campo := peNombreCampo;
    Var_Resultado := '';
    ShowModal;
    Result := var_Resultado;
End;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualiza la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versi�n         : pcp4.0.0.14
*****************************************************************}
procedure TbPersonal.FormShow(Sender: TObject);
begin
  inherited;
  AbrirDataSet(consulta);
  data_ventana.DataSet := Consulta;
  padr_acti_mejo_ajuste.Execute;
  padr_grid.BringToFront;
  padr_grid.Visible := True;
  darFoco(padr_grid);
end;
{****************************************************************
Procedimiento   : doGridDblClick
Objetivo        : Ejecutar acciones con el dbl click
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versi�n         : pcp4.0.0.14
*****************************************************************}
procedure TbPersonal.doGridDblClick(Sender: TObject);
begin
//  inherited;
  if (padr_grid.SelectedCount > 0)  Then
  Begin
    var_resultado := Consulta.FieldByName(var_nomb_campo).Value;
    Close;
  End;
end;
{****************************************************************
Procedimiento   : padr_gridKeyDown
Objetivo        : Ejecutar acciones desde el teclado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versi�n         : pcp4.0.0.14
*****************************************************************}
procedure TbPersonal.padr_gridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;
  if key = vk_Escape then
  Begin
    var_resultado := '';
    Close;
  End;
  if Key = vk_return then
  Begin
    var_resultado := Consulta.FieldByName(var_nomb_campo).Value;
    Close;
  End;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializaci�n de la ventana en su
                  creaci�n
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versi�n         : pcp4.0.0.14
*****************************************************************}
procedure TbPersonal.FormCreate(Sender: TObject);
begin
  formStyle := fsNormal;
  pane_trabajando.Caption := cosTrabajando;
  pane_trabajando.Update;
  inherited;
	Insertar_Palabras(Self, WKLenguaje);
end;
end.
