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
        Unit            : un1_prod_padr_child
        Objetivo        : Ventana padre para los consultas de ordenes de
                          producción   
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Febrero 01 de 2005
        Versión         : pcp4.0.20.0
*******************************************************************}
unit un1_prod_padr_child;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, TBXButtonSCL, RxLookup, PCPLookUpComboEdit,
  dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, Boxes,
  PCPFrame, ufra_edit_reportes;

type
  Tfn1_prod_padr_child = class(T_fvent_child)
    padr_quer_ordenes: TQuery;
    padr_quer_prod_referencias: TQuery;
    padr_data_prod_referencias: TDataSource;
    padr_quer_lotes: TQuery;
    padr_data_lotes: TDataSource;
    padr_fram_informacion: TPCPFrame;
    padr_SCLDBLabel1: TSCLDBLabel;
    padr_SCLDBLabel2: TSCLDBLabel;
    padr_SCLDBLabel3: TSCLDBLabel;
    padr_scllabel4: TSCLDBLabel;
    padr_scllabel5: TSCLDBLabel;
    padr_scllabel6: TSCLDBLabel;
    padr_scllabel7: TSCLDBLabel;
    padr_labe_nume_lote: TSCLDBLabel;
    padr_dxDBEdit1: TdxDBEdit;
    padr_dxDBEdit2: TdxDBEdit;
    padr_comb_nume_lote: TPCPLookUpComboEdit;
    padr_boto_menu_Referencia: TTBXButtonSCL;
    padr_boto_info_orden: TTBXButtonSCL;
    padr_dxDBEdit4: TdxDBEdit;
    padr_dxDBEdit5: TdxDBEdit;
    padr_dxDBEdit6: TdxDBEdit;
    padr_dxDBEdit7: TdxDBEdit;
    padr_comb_nume_orden: TPCPLookUpComboEdit;
    padr_dxDBEdit3: TdxDBEdit;
    padr_data_ordenes: TDataSource;
    padr_pane_unidades: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    boto_info_unidades: TTBXButtonSCL;
    quer_prod_orde_unidades: TQuery;
    data_prod_orde_unidades: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure padr_comb_nume_ordenChange(Sender: TObject);
  private
    { Private declarations }
    vLoteVisible    : Boolean;
    Procedure SetLoteVisible (peValue : Boolean);
  public
    { Public declarations }
    Property LoteVisible : Boolean Read vLoteVisible Write SetLoteVisible;
  end;

var
  fn1_prod_padr_child: Tfn1_prod_padr_child;

implementation

uses _func_varias, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 01 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_prod_padr_child.FormCreate(Sender: TObject);
begin
  inherited;
  //Preparar los controles
  padr_pane_unidades.BevelOuter := bvNone;
  //Abrir las consultas
  AbrirDataSet(padr_quer_ordenes);
  AbrirDataSet(padr_quer_prod_referencias);
  SetLoteVisible(False);
  //Ubicar el primer registro (Si el padr_fram_informacion.Tag <> -1)
  if (padr_fram_informacion.Tag <> -1) Then
   if (padr_quer_ordenes.Active) and (padr_quer_ordenes.RecordCount > 0) Then
     padr_comb_nume_orden.keyValue := padr_quer_ordenes.FieldByName('cons_prod_orden').asInteger;
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : SetLoteVisible
Objetivo        : Muestra/Oculta la selección del lote
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 28 de 2004
Versión         : pcp4003
*****************************************************************}
Procedure Tfn1_prod_padr_child.SetLoteVisible (peValue : Boolean);
Begin
      //Asignar la visibilidad del lote
      vLoteVisible := peValue;
      //Mostrar/Ocultar controles
      padr_labe_nume_lote.Visible := peValue;
      padr_comb_nume_lote.Visible := peValue;
      //Abrir la consulta de lotes
      if (peValue) and (Not padr_quer_lotes.Active) Then
        AbrirDataSet(padr_quer_lotes);
      //Cerrar la consulta de lotes
      if Not(peValue) and (padr_quer_lotes.Active) Then padr_quer_lotes.Close;
      //Unidades totales por orden
      padr_pane_unidades.Visible := (not peValue) and (Not padr_comb_nume_orden.EstaVacio);
      quer_prod_orde_unidades.Active := not peValue;
End;
{****************************************************************
Procedimiento   : padr_comb_nume_ordenChange
Objetivo        : Actualizar los controles cuando cambie el número de orden
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfn1_prod_padr_child.padr_comb_nume_ordenChange(Sender: TObject);
begin
  inherited;
  //Abrir la consulta
  if not Consulta.Active Then AbrirDataSet(Consulta);
  padr_pane_unidades.Visible := (not LoteVisible) and (Not padr_comb_nume_orden.EstaVacio);
end;

end.
