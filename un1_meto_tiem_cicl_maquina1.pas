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
        Unit            : un1_meto_tiem_cicl_maquina1
        Objetivo        : Edición de tiempos ciclo para máquinas
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 14-Abr-2005
        Versión         : pcp4.0.20.6
*******************************************************************}unit un1_meto_tiem_cicl_maquina1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  StdCtrls, Db, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, SoCtrls, SCLDBLabel, ExtCtrls,
  TB2Item, TBX, TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit,
  dxCurrencyEditPCP, DBCtrls;
type
  Tfn1_meto_tiem_cicl_maquina1 = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    Tabla_VentanaCONS_METO_TIEM_CICLO: TIntegerField;
    Tabla_VentanaCODI_METO_TIEM_CICLO: TStringField;
    Tabla_VentanaNOMB_METO_TIEM_CICLO: TStringField;
    Tabla_VentanaCONS_RECU_GRUPO: TIntegerField;
    Tabla_VentanaCONS_RECU_TIPO: TIntegerField;
    Tabla_VentanaCONS_RECU_FAMILIA: TIntegerField;
    Tabla_VentanaCARACTERISTICAS: TStringField;
    Tabla_VentanaTIEM_CST: TFloatField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    quer_recu_grupos: TQuery;
    quer_recu_gruposCONS_RECU_GRUPO: TIntegerField;
    quer_recu_gruposNOMB_RECU_GRUPO: TStringField;
    data_recu_grupos: TDataSource;
    quer_recu_tipos: TQuery;
    quer_recu_tiposCONS_RECU_GRUPO: TIntegerField;
    quer_recu_tiposCONS_RECU_TIPO: TIntegerField;
    quer_recu_tiposNOMB_RECU_TIPO: TStringField;
    data_recu_tipos: TDataSource;
    quer_recu_familias: TQuery;
    quer_recu_familiasCONS_RECU_FAMILIA: TIntegerField;
    quer_recu_familiasNOMB_RECU_FAMILIA: TStringField;
    data_recu_familias: TDataSource;
    SCLDBLabel6: TSCLDBLabel;
    Label1: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    PCPLookUpComboEdit3: TPCPLookUpComboEdit;
    DBText1: TDBText;
    edit_Tiem_asignado: TdxDBCurrencyEdit;
    edit_tiem_tmu: TdxCurrencyEditPCP;
    Tabla_VentanaTIEM_ASIGNADO: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure edit_Tiem_asignadoChange(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_meto_tiem_cicl_maquina1: Tfn1_meto_tiem_cicl_maquina1;

implementation

uses _uData, _func_varias, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_meto_tiem_cicl_maquina1.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  abrirDataSet(quer_Recu_grupos);
  abrirDataSet(quer_Recu_tipos);
  abrirDataSet(quer_Recu_familias);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : edit_Tiem_asignadoChange
Objetivo        : Actualiza el tiempo TMU
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_meto_tiem_cicl_maquina1.edit_Tiem_asignadoChange(
  Sender: TObject);
begin
  inherited;
  if Not (tabla_Ventana.Active) Then Exit;
  If (_fmdi.Tabl_pcp_opciones.FieldByName('inge_meto_unid_medi_factor').AsFloat > 0) Then
        edit_tiem_tmu.Value := tabla_Ventana.FieldByName('tiem_asignado').asFloat / _fmdi.Tabl_pcp_opciones.FieldByName('inge_meto_unid_medi_factor').AsFloat
  Else
        edit_tiem_tmu.Value := 0;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Calcular el tiempo TMU antes de guardar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_meto_tiem_cicl_maquina1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If (_fmdi.Tabl_pcp_opciones.FieldByName('inge_meto_unid_medi_factor').AsFloat > 0) Then
        tabla_Ventana.FieldByName('tiem_cst').Value := tabla_Ventana.FieldByName('tiem_asignado').asFloat / _fmdi.Tabl_pcp_opciones.FieldByName('inge_meto_unid_medi_factor').AsFloat
  Else
        tabla_Ventana.FieldByName('tiem_cst').Value := 0;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles de la ventana
                  al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_meto_tiem_cicl_maquina1.FormShow(Sender: TObject);
begin
  inherited;
  //Recalcular el tiempo TMU
  edit_Tiem_asignadoChange(Sender);
end;

end.

