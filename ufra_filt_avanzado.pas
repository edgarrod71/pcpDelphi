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
        Unit            : ufra_filt_avanzado
        Objetivo        : Frame para la selección avanzada de filtros
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 31 de 2004
        Versión         : pcp4.0.20.0
*******************************************************************}
unit ufra_filt_avanzado;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, PCPLookUpComboEdit, ExtCtrls, StdCtrls, dxCntner, dxEditor,
  dxEdLib, Db, DBTables, TBXDkPanels, TBXButtonSCL, Boxes, PCPFrame,
  RxMemDS;

type
  Tffra_filt_avanzado = class(TFrame)
    quer_Filt_opciones: TQuery;
    data_filt_opciones: TDataSource;
    data_campos: TDataSource;
    PCPFrame1: TPCPFrame;
    pane_1: TPanel;
    comb_campo: TPCPLookUpComboEdit;
    comb_filt_opciones: TPCPLookUpComboEdit;
    pane_edit_1: TPanel;
    edit_1: TdxEdit;
    pane_entre: TPanel;
    Label1: TLabel;
    edit_2: TdxEdit;
    pane_nuevo: TPanel;
    boto_nuevo: TTBXButtonSCL;
    pane_eliminar: TPanel;
    boto_eliminar: TTBXButtonSCL;
    pane_yo: TPanel;
    comb_yo: TPCPLookUpComboEdit;
    tabl_yo: TRxMemoryData;
    tabl_yotext_yo: TStringField;
    data_yo: TDataSource;
    procedure comb_campoChange(Sender: TObject);
    procedure comb_filt_opcionesChange(Sender: TObject);
    procedure boto_eliminarClick(Sender: TObject);
    procedure pane_edit_1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
    Procedure doEjecutarFrame(pe_quer_campos : TQuery);
    Function getFilter (peBDEFormat : Boolean = False) : String;
  end;

implementation

uses _func_varias, _MDI, _cons_pcp;

{$R *.DFM}

{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el Frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Enero 31 de 2004
Versión         : pcp4.0.20.1
*****************************************************************}
Constructor Tffra_filt_avanzado.Create (Owner : TComponent);
Begin
     //Heredar la creacion
     Inherited Create (Owner);
     AutoHints(Self);
     //Abrir las consultas
     AbrirDataSet(quer_filt_opciones);
     AbrirDataSet(tabl_yo);
     //Insertar los y/o (And/or)
     With tabl_yo do
     Begin
         Insert;
         FieldByName('text_yo').Value := cos_and;
         Post;
         Insert;
         FieldByName('text_yo').Value := cos_or;
         Post;
     End;
     InicializarCombo(comb_yo);
End;

{****************************************************************
Procedimiento   : comb_campoChange
Objetivo        : Actualizar la ventana cuando cambie el campo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_filt_avanzado.comb_campoChange(Sender: TObject);
begin
    comb_filt_opciones.Enabled := Not (comb_campo.EstaVacio);
    comb_filt_opcionesChange(Sender);
end;
{****************************************************************
Procedimiento   : comb_filt_opcionesChange
Objetivo        : Actualizar los controles al cambiar la opción del filtro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_filt_avanzado.comb_filt_opcionesChange(Sender: TObject);
begin
    edit_1.Enabled := (Not comb_filt_opciones.EstaVacio) and (quer_filt_opciones.FieldByName('cons_filt_opcion').asInteger > 0);
    pane_entre.Visible := (Not comb_filt_opciones.EstaVacio) and (quer_Filt_opciones.FieldByName('habi_rango').asInteger = 1);
end;
{****************************************************************
Procedimiento   : doEjecutarFrame
Objetivo        : Ejecutar el frame de filtro avanzado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Procedure Tffra_filt_avanzado.doEjecutarFrame(pe_quer_campos : TQuery);
Begin
    //Validar la entrada
    if pe_quer_campos = Nil then Exit;
    if Not pe_quer_campos.Active Then Exit;
    data_campos.DataSet := pe_quer_campos;
End;
{****************************************************************
Procedimiento   : getFilter
Objetivo        : Obtener el filtro de la selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Function Tffra_filt_avanzado.getFilter (peBDEFormat : Boolean = False) : String;
var
    var_string  : String;
    var_Campo : String;
Begin
    //Inicializar el resultado
    Result := '';
    //Nombre del campo
    if Not comb_campo.EstaVacio then
        var_Campo := comb_campo.KeyValue
    Else
        var_Campo := '';
    //validar la selección
    if (comb_campo.EstaVacio) or (comb_filt_opciones.EstaVacio) Then Exit;
    //y/o
    if pane_yo.Visible then
        if Not (comb_yo.EstaVacio) Then
           if comb_yo.text = cos_and then  Result := Result + ' and '
        Else
           if comb_yo.text = cos_or then  Result := Result + ' or ';
    //Filtros SQL--------------------------------------------------------------
    if Not peBDEFormat Then
    Begin
        Result := Result + '(' + comb_campo.KeyValue;
        //Evaluar el filtro
        Case quer_Filt_opciones.FieldByName('cons_Filt_opcion').asInteger of
           0 : Result := Result + ' is null';
           1 : Result := Result + ' between "' + edit_1.Text + '" and "' + edit_2.Text + '"';
           2 : Result := Result + ' not between "' + edit_1.Text + '" and "' + edit_2.Text + '"';
           3 : Result := Result + ' = "' + edit_1.Text + '"';
           4 : Result := Result + ' <> "' + edit_1.Text + '"';
           5 : Result := Result + ' > "' + edit_1.Text + '"';
           6 : Result := Result + ' < "' + edit_1.Text + '"';
           7 : Result := Result + ' >= "' + edit_1.Text + '"';
           8 : Result := Result + ' <= "' + edit_1.Text + '"';
           9 : Begin
                var_string := Reemplazar(edit_1.Text, '*', '%');
                Result := Result + ' LIKE "' + var_string + '"';
           End;
        End
    End
    Else
    //Filtros BDE----------------------------------------------------------------
    Begin
        //Campo del filtro (si es con LIKE hacer un Upper para omitir may/min)
        if (quer_filt_opciones.FieldByName('cons_filt_opcion').asInteger = 9) Then
            Result := Result + '(Upper(' + comb_campo.KeyValue + ')'
        Else
            Result := Result + '(' + comb_campo.KeyValue;
        //Evaluar el filtro
        Case quer_Filt_opciones.FieldByName('cons_Filt_opcion').asInteger of
           0 : Result := Result + ' = '+'''' + '''';
           1 : Result := Result + ' >= ' + '''' + edit_1.Text + '''' + ' and ' + var_Campo + '<= ' + '''' + edit_2.Text + '''';
           2 : Result := Result + ' <= ' + '''' + edit_1.Text + '''' + ' or ' + var_Campo + '>= ' + '''' + edit_2.Text + '''';
           3 : Result := Result + ' = '+ '''' +  edit_1.Text + '''';
           4 : Result := Result + ' <> '+ '''' + edit_1.Text + '''';
           5 : Result := Result + ' > '+ '''' + edit_1.Text + '''';
           6 : Result := Result + ' < '+ '''' +  edit_1.Text + '''';
           7 : Result := Result + ' >= '+ '''' +  edit_1.Text + '''';
           8 : Result := Result + ' <= '+ '''' +  edit_1.Text + '''';
           9 : Begin
                var_string := Reemplazar(edit_1.Text, '*', '%');
                Result := Result + ' = ' + '''' + var_string + '''';
           End;
        End
    End;
    Result := Result + ')';
End;
{****************************************************************
Procedimiento   : boto_eliminarClick
Objetivo        : Elimina el filtro actual
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_filt_avanzado.boto_eliminarClick(Sender: TObject);
begin
   Try
       Try
           Self.Destroy;
       Except
       End;
   Except
   End;
end;
{****************************************************************
Procedimiento   : pane_edit_1Resize
Objetivo        : Cambiar el tamaño del edit cuando cambie el
                  tamaño del panel 1
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_filt_avanzado.pane_edit_1Resize(Sender: TObject);
begin
    edit_1.Width := pane_edit_1.Width - 6;
end;

end.
