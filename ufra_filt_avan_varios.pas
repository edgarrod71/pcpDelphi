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
        Unit            : ufra_filt_avan_varios
        Objetivo        : Frame para varios filtros avanzados
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 31 de 2005
        Versión         : pcp4.0.20.0
*******************************************************************}
unit ufra_filt_avan_varios;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ufra_filt_avanzado, TB2Dock, TB2Toolbar, TBX, TB2Item, Db, DBTables,
  kbmMemTable;

type
  Tffra_filt_avan_varios = class(TFrame)
    Scro: TScrollBox;
    filt: Tffra_filt_avanzado;
    myTabla_Campos: TkbmMemTable;
    myTabla_Camposnomb_campo: TStringField;
    myTabla_Campostexto: TStringField;
    procedure filtboto_nuevoClick(Sender: TObject);
    procedure filtpane_edit_1Resize(Sender: TObject);
  private
    { Private declarations }
    var_quer_campos : TDataSet;
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
    Procedure doEjecutarFrame(pe_quer_campos : TQuery;
        peUtilizarTablaAuxiliar : Boolean = False; peForzarCreacion : Boolean = False);
    Function GetFilter (peBDEFormat : Boolean = False) : String;
    Procedure EliminarFiltros;
  end;

implementation

uses _MDI, _func_varias;

{$R *.DFM}

{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el Frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Enero 31 de 2004
Versión         : pcp4.0.20.1
*****************************************************************}
Constructor Tffra_filt_avan_varios.Create (Owner : TComponent);
Begin
     //Heredar la creacion
     Inherited Create (Owner);
     AutoHints(Self);
End;
{****************************************************************
Procedimiento   : doEjecutarFrame
Objetivo        : Ejecutar el frame de varios filtros avanzados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Procedure Tffra_filt_avan_varios.doEjecutarFrame(pe_quer_campos : TQuery;
        peUtilizarTablaAuxiliar : Boolean = False; peForzarCreacion : Boolean = False);
Var
        var_I   : Integer;
Begin
    //Validar la entrada
    if pe_quer_campos = Nil then Exit;
    if Not pe_quer_campos.Active Then Exit;
    if Not (peUtilizarTablaAuxiliar) Then
    Begin
        //Llamar directamente de la tabla
        var_Quer_campos := pe_quer_campos;
        filt.data_campos.DataSet := var_quer_campos;
    End
    Else
    Begin
        //Salir si ya se cargaron los campos
        If ((var_Quer_campos = myTabla_Campos) and (myTabla_Campos.Active))
                and (Not peForzarCreacion) Then
            Exit;
        //Crear una tabla auxiliar con los campos
        myTabla_Campos.Close;
        myTabla_Campos.Open;
        For var_i := 1 to pe_Quer_campos.FieldCount do
        Begin
            myTabla_Campos.Insert;
            myTabla_Campos.FieldByName('nomb_campo').Value := pe_Quer_campos.Fields[var_i - 1].FieldName;
            myTabla_Campos.FieldByName('texto').Value := pe_Quer_campos.Fields[var_i - 1].DisplayLabel;
            myTabla_Campos.Post;
        End;
        var_Quer_campos := myTabla_Campos;
        filt.data_campos.DataSet := var_quer_campos;
    End;
End;
{****************************************************************
Procedimiento   : filtboto_nuevoClick
Objetivo        : Crear un nuevo frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_filt_avan_varios.filtboto_nuevoClick(Sender: TObject);
var
    var_ffra_filt_avanzado : tffra_filt_avanzado;
    var_integer : Integer;
begin
    //Crear un nuevo filtro
    randomize;
    var_ffra_filt_avanzado := Tffra_filt_avanzado.Create(Self);
    With var_ffra_filt_avanzado do
    Begin
        Parent := Scro;
        Top := 6000;
        align := alTop;
        var_integer := Random (1000);
        name := 'pane_filt_runt' + formatDateTime('hhmmss', now) + IntToStr(var_integer);
        boto_nuevo.onClick := filtboto_nuevoClick;
        pane_nuevo.Visible := True;
        pane_eliminar.Visible := True;
        pane_yo.Visible := True;
        data_campos.DataSet := var_quer_campos;
        ParentColor := True;
    End;
    Update;
end;

{****************************************************************
Procedimiento   : GetFilter
Objetivo        : Genera el filtro avanzado del frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Function Tffra_filt_avan_varios.GetFilter (peBDEFormat : Boolean = False) : String;
Var
    var_i   : Integer;
Begin
    Result := filt.GetFilter(peBDEFormat);
    if Result = '' Then Exit;
    //Verificar el resto de filtros
    for var_i := 1 to Scro.ControlCount do
    Begin
       if (Scro.Controls[var_i - 1] <> filt) and (Scro.Controls[var_i - 1] is TFFra_filt_avanzado) Then
            Result := Result + (Scro.Controls[var_i - 1] as TFFra_filt_avanzado).GetFilter(peBDEFormat);
    end;
End;
{****************************************************************
Procedimiento   : EliminarFiltros
Objetivo        : Eliminar todos los filtros existentes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_filt_avan_varios.EliminarFiltros;
Var
        var_i   : Integer;
        var_component   : TControl;
Begin
        //Recorrer los componentes
        for var_i := 1 to Scro.ControlCount do
        Begin
            Try
               var_Component :=  Scro.Controls[var_i - 1];
               if (var_Component <> filt) and (var_Component is TFFra_filt_avanzado) Then
                  var_Component.Free;
            Except
            End;
        End;
End;
{****************************************************************
Procedimiento   : filtpane_edit_1Resize
Objetivo        : Dar tamaño al cuadro de edición
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_filt_avan_varios.filtpane_edit_1Resize(Sender: TObject);
begin
  filt.pane_edit_1Resize(Sender);
end;

end.
