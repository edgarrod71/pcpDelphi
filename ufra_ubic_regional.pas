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
        Unit            : ufra_ubic_regional
        Objetivo        : Frame para la selecci�n de ubicaciones regionales
                          que contengan PAIS, DEPARTAMENTO Y CIUDAD.
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Abril 12 de 2004
        Versi�n         : pcp4000
*******************************************************************}
                                        
unit ufra_ubic_regional;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit, SoCtrls,
  SCLDBLabel, Db, DBTables, TBXDkPanels, TBXButtonSCL;

type
  Tffra_ubic_regional = class(TFrame)
    quer_paises: TQuery;
    data_paises: TDataSource;
    quer_departamentos: TQuery;
    data_departamentos: TDataSource;
    quer_ciudades: TQuery;
    data_ciudades: TDataSource;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    comb_paises: TPCPLookUpComboEdit;
    comb_departamentos: TPCPLookUpComboEdit;
    comb_ciudades: TPCPLookUpComboEdit;
    SCLButton1: TTBXButtonSCL;
    SCLButton2: TTBXButtonSCL;
    SCLButton3: TTBXButtonSCL;
    procedure comb_paisesChange(Sender: TObject);
    procedure comb_departamentosChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses _MDI;

{$R *.DFM}
{****************************************************************
Procedimiento   : CBPaisesChange
Objetivo        : Validar los datos cuando cambie el pais seleccionado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 12 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_ubic_regional.comb_paisesChange(Sender: TObject);
Var
        var_DataSource  : TDataSource;
begin
  //Validar el combo del pais
  if (comb_paises.DataSource = Nil) or (comb_paises.DataSource.DataSet = Nil) or  
     (Not comb_paises.DataSource.DataSet.Active) Then Exit;
  //Asignar nulo al campo Departamento
  var_DataSource := comb_departamentos.DataSource;
  If (var_DataSource = Nil) or (var_DataSource.DataSet = Nil) or  
     (Not var_DataSource.DataSet.Active) and (var_DataSource.DataSet.State in [dsEdit, dsInsert]) and
     (comb_departamentos.DataField <> '') Then
    var_DataSource.DataSet.FieldByName(comb_departamentos.DataField).Value := Null;
    //Vaciar el combo de ciudades
    comb_DepartamentosChange(Sender);
end;
{****************************************************************
Procedimiento   : CBdepartamentosChange
Objetivo        : Validar los datos cuando cambie el departamento
                  seleccionado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 12 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_ubic_regional.comb_departamentosChange(Sender: TObject);
Var
        var_DataSource  : TDataSource;
begin
  //Validar el combo del departamento
  if (comb_departamentos.DataSource = Nil) or (comb_departamentos.DataSource.DataSet = Nil) or  
     (Not comb_departamentos.DataSource.DataSet.Active) Then Exit;
  //Asignar nulo al campo Ciudad
  var_DataSource := comb_ciudades.DataSource;
  If (var_DataSource = Nil) or (var_DataSource.DataSet = Nil) or  
     (Not var_DataSource.DataSet.Active) and (var_DataSource.DataSet.State in [dsEdit, dsInsert]) and
     (comb_ciudades.DataField <> '') Then
      var_DataSource.DataSet.FieldByName(comb_ciudades.DataField).Value := Null;
end;

end.
