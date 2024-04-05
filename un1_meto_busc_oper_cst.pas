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
        Unit            : un1_meto_busc_oper_cst
        Objetivo        : Mostrar una lista con las operaciones
                          de costura existentes      
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Junio 10 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        
unit un1_meto_busc_oper_cst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal_alone, PictureContainer, DBTables, Placemnt, AdvPanel,
  dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  ExtCtrls, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  TB2Item, TBX, TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, RxMemDS,
  Boxes, PCPFrame, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, PCPProceso;

type
  Tfn1_meto_busc_oper_cst = class(T_fvent_modal_alone)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    edit_codi_operacion: TdxDBEdit;
    comb_proceso: TPCPLookUpComboEdit;
    comb_componente: TPCPLookUpComboEdit;
    comb_tipo_operacion: TPCPLookUpComboEdit;
    myTabla_Ventana: TRxMemoryData;
    PCPFrame1: TPCPFrame;
    Panel2: TPanel;
    grid: TdxDBGrid;
    quer_oper_costura: TQuery;
    quer_oper_costuraCONS_OPER_COSTURA: TIntegerField;
    quer_oper_costuraCODI_OPER_COSTURA: TStringField;
    quer_oper_costuraNOMB_OPER_COSTURA: TStringField;
    quer_oper_costuraNOMB_PROCESO: TStringField;
    quer_oper_costuraNOMB_OPER_COST_TIPO: TStringField;
    quer_oper_costuraNOMB_COMP_GRUPO: TStringField;
    quer_oper_costuraFECH_SISTEMA: TDateTimeField;
    quer_oper_costuraUSUA_SISTEMA: TStringField;
    quer_oper_costuraDESCRIPCION: TStringField;
    quer_oper_costuraNOMB_COMPLETO: TStringField;
    quer_oper_costuraPUNT_POR_CENTIMETRO: TIntegerField;
    quer_oper_costuraLARG_COSTURA: TIntegerField;
    quer_oper_costuraCOMP_LARG_COSTURA: TStringField;
    quer_oper_costuraNOMB_RECU_FAMILIA: TStringField;
    quer_oper_costuraREVO_POR_MINUTO: TIntegerField;
    quer_oper_costuraSECU_MOVIMIENTOS: TStringField;
    quer_oper_costuraTIEM_CRONOMETRO: TIntegerField;
    quer_oper_costuraTIEM_ASIGNADO: TFloatField;
    data_oper_costura: TDataSource;
    gridTIEM_CRONOMETRO: TdxDBGridGraphicColumn;
    gridCONS_OPER_COSTURA: TdxDBGridMaskColumn;
    gridCODI_OPER_COSTURA: TdxDBGridMaskColumn;
    gridNOMB_OPER_COSTURA: TdxDBGridMaskColumn;
    gridNOMB_PROCESO: TdxDBGridMaskColumn;
    gridNOMB_COMP_GRUPO: TdxDBGridMaskColumn;
    gridNOMB_OPER_COST_TIPO: TdxDBGridMaskColumn;
    gridTIEM_ASIGNADO: TdxDBGridMaskColumn;
    gridNOMB_COMPLETO: TdxDBGridMaskColumn;
    gridPUNT_POR_CENTIMETRO: TdxDBGridMaskColumn;
    gridLARG_COSTURA: TdxDBGridMaskColumn;
    gridCOMP_LARG_COSTURA: TdxDBGridMaskColumn;
    gridNOMB_RECU_FAMILIA: TdxDBGridMaskColumn;
    gridREVO_POR_MINUTO: TdxDBGridMaskColumn;
    gridSECU_MOVIMIENTOS: TdxDBGridMaskColumn;
    gridDESCRIPCION: TdxDBGridMaskColumn;
    gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    gridFECH_SISTEMA: TdxDBGridDateColumn;
    procedure FormCreate(Sender: TObject);
    procedure padr_accionesUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure gridTIEM_CRONOMETROCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure edit_codi_operacionChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_meto_busc_oper_cst: Tfn1_meto_busc_oper_cst;

implementation

uses _MDI, _func_varias;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : JUnio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_busc_oper_cst.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar controles
  ColorGrid(Grid);
end;
{****************************************************************
Procedimiento   : padr_accionesUpdate
Objetivo        : Actualizar las ventanas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_busc_oper_cst.padr_accionesUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  padr_acti_aceptar.Enabled := (quer_oper_Costura.Active) and (quer_oper_costura.RecordCount>0);
end;
{****************************************************************
Procedimiento   : gridTIEM_CRONOMETROCustomDrawCell
Objetivo        : Dibujar el tipo de estudio (Cronometro - CST)
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_busc_oper_cst.gridTIEM_CRONOMETROCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  inherited;
  //Si está agrupado, salir
  if ANode.HasChildren then
    Exit;
  //Tiempo cronometro
  Value := ANode.Values[padr_grid.ColumnByFieldName('tiem_cronometro').Index];
  if not VarIsNull(Value) then
  begin
        //Borrar
        ACanvas.Brush.Color := clWhite;
        ACanvas.FillRect(ARect);
        //Tiempo cronometro
        if Value = 1 then
        Begin
              _fmdi.imag_varias.Draw(ACanvas, (ARect.Right + ARect.Left) div 2 - 8, ARect.Top, 7);
              ADone := True;
        End
        //Tiempo metodos
        else
        Begin
//              Imag_ventana.Draw(ACanvas, (ARect.Right + ARect.Left) div 2 - 8, ARect.Top, 1);
              ADone := True;
        End;
  end;
end;

procedure Tfn1_meto_busc_oper_cst.edit_codi_operacionChange(
  Sender: TObject);
begin
  inherited;
  With quer_oper_costura do
  Begin
       Close;
       //Limpiar y armar el SQL
       Sql.Clear;
       Sql.Add('Select * from VIS_PCP_OPER_COSTURA');
       Sql.Add('Where cons_oper_costura > 0');
       If edit_codi_operacion <> '' Then
          Sql.Add('and codi_oper_costura like "'+edit_codi_operacion.Text+'%"');
       

  End;
end;

end.
