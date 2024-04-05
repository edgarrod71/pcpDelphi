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
        Unit            : un1_referencias
        Objetivo        : Módulo maestro de referencias
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Agosto 27 de 2004
        Versión         : pcp4000
*******************************************************************}


unit un1_referencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, SCLPropiedadesForm, Db, DBTables, ImgList, Menus, TB2Item,
  TBX, ActnList, ExtCtrls, TB2Toolbar, dxTLClms, dxTL, TB2Dock,
  TBXDkPanels, dxCntner, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  dxPageControl, dxExEdtr, dfsSplitter, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid,
  JvFormAnimation, ufra_edit_reportes, Boxes, PCPFrame;

type
  Tfn1_referencias = class(T_fvent_child)
    consultaCONS_REFERENCIA: TIntegerField;
    consultaCODI_REFERENCIA: TStringField;
    consultaCONS_REFE_TEMPORADA: TIntegerField;
    consultaCODI_REFE_TEMPORADA: TStringField;
    consultaNOMB_REFE_TEMPORADA: TStringField;
    consultaMOLDE: TStringField;
    consultaCODI_INTE_REFERENCIA: TStringField;
    consultaNOMB_REFERENCIA: TStringField;
    consultaCODI_BARRAS: TStringField;
    consultaCONS_REFE_MARCA: TIntegerField;
    consultaCODI_REFE_MARCA: TStringField;
    consultaNOMB_REFE_MARCA: TStringField;
    consultaCONS_REFE_LINEA: TIntegerField;
    consultaCODI_REFE_LINEA: TStringField;
    consultaNOMB_REFE_LINEA: TStringField;
    consultaCONS_REFE_EDAD: TIntegerField;
    consultaCODI_REFE_EDAD: TStringField;
    consultaNOMB_REFE_EDAD: TStringField;
    consultaCONS_REFE_ESTILO: TIntegerField;
    consultaCODI_REFE_ESTILO: TStringField;
    consultaNOMB_REFE_ESTILO: TStringField;
    consultaCONS_REFE_GRUPO: TIntegerField;
    consultaCODI_REFE_GRUPO: TStringField;
    consultaNOMB_REFE_GRUPO: TStringField;
    consultaCONS_REFE_SEXO: TIntegerField;
    consultaCODI_SEXO: TStringField;
    consultaNOMB_SEXO: TStringField;
    consultaCONS_REFE_LAVADO: TIntegerField;
    consultaCODI_REFE_LAVADO: TStringField;
    consultaNOMB_REFE_LAVADO: TStringField;
    consultaCONS_REFE_BORDADO: TIntegerField;
    consultaCODI_REFE_BORDADO: TStringField;
    consultaNOMB_REFE_BORDADO: TStringField;
    consultaCONS_REFE_ESTAMPADO: TIntegerField;
    consultaCODI_REFE_ESTAMPADO: TStringField;
    consultaNOMB_REFE_ESTAMPADO: TStringField;
    consultaCONS_REFE_GRUP_TALLAS: TIntegerField;
    consultaCODI_GRUP_TALLAS: TStringField;
    consultaNOMB_GRUP_TALLAS: TStringField;
    consultaCONS_REFE_ESTADO: TIntegerField;
    consultaCODI_REFE_ESTADO: TStringField;
    consultaNOMB_REFE_ESTADO: TStringField;
    padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_TEMPORADA: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_TEMPORADA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_TEMPORADA: TdxDBGridMaskColumn;
    padr_gridMOLDE: TdxDBGridMaskColumn;
    padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_BARRAS: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_MARCA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_LINEA: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_LINEA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_LINEA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_EDAD: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_EDAD: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_EDAD: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_ESTILO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_ESTILO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_ESTILO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_SEXO: TdxDBGridMaskColumn;
    padr_gridCODI_SEXO: TdxDBGridMaskColumn;
    padr_gridNOMB_SEXO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_LAVADO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_LAVADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_LAVADO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_BORDADO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_BORDADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_BORDADO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_ESTAMPADO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_ESTAMPADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_ESTAMPADO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_GRUP_TALLAS: TdxDBGridMaskColumn;
    padr_gridCODI_GRUP_TALLAS: TdxDBGridMaskColumn;
    padr_gridNOMB_GRUP_TALLAS: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_ESTADO: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_ESTADO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_ESTADO: TdxDBGridMaskColumn;
    padr_gridDESCRIPCION: TdxDBGridMemoColumn;
    padr_gridAJUS_IMAGEN: TdxDBGridCheckColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaIMAGEN: TBlobField;
    consultaAJUS_IMAGEN: TIntegerField;
    consultaDESCRIPCION: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridColumn48: TdxDBGridCheckColumn;
    acti_ventana: TActionList;
    acti_estados_ir: TAction;
    TBXItem21: TTBXItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    consultaESTA_EDIT_MAESTRO: TIntegerField;
    consultaESTA_MOST_METODOS: TIntegerField;
    consultaESTA_MOST_ORDE_TRABAJO: TIntegerField;
    consultaESTA_MOST_INVE_MATERIALES: TIntegerField;
    quer_duplicar: TQuery;
    acti_duplicar: TAction;
    TBXItem22: TTBXItem;
    acti_impo_prototipo: TAction;
    TBXItem23: TTBXItem;
    quer_impo_prototipo: TQuery;
    padr_gridIMAGEN: TdxDBGridBlobColumn;
    procedure padr_gridCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure acti_estados_irExecute(Sender: TObject);
    procedure acti_estados_irUpdate(Sender: TObject);
    procedure acti_ventanaUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure acti_duplicarExecute(Sender: TObject);
    procedure acti_impo_prototipoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_referencias: Tfn1_referencias;

implementation

uses _MDI, un1_refe_camb_estado, _func_varias, _cons_pcp,
  un2_prot_camb_estado, _func_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : padr_gridCustomDrawCell
Objetivo        : Colorear las filas de las referencias que no
                  se pueden modificar (por el estado)
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias.padr_gridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  inherited;
  if ANode.HasChildren then
    Exit;
  //Color de fondo igual al estado
  if not ASelected  then
  begin                                 
      Value := ANode.Values[padr_grid.ColumnByFieldName('esta_edit_maestro').Index];
      if not VarIsNull(Value) then
      begin
        if Value = 1 then
          aColor := clWhite
        else
          aColor := clBtnFace;
      end;
  End;
end;
{****************************************************************
Procedimiento   : acti_estados_irExecute
Objetivo        : Abrir el módulo de cambios de estado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias.acti_estados_irExecute(Sender: TObject);
begin
  inherited;
  //identificar si es una referencia o un prototipo
  If (Self.Tag = -1) then
    Begin
      if Not ExisteVentana(Tfn2_prot_camb_estado) Then
        Application.CreateForm(Tfn2_prot_camb_estado, fn2_prot_camb_estado);
        //Ubicar el registro
        fn2_prot_camb_estado.Tabl_Falsa.FieldByName('cons_referencia').Value
            := consulta.FieldByName('cons_referencia').AsInteger;
    End
  Else
    Begin
        If Not ExisteVentana(tfn1_refe_camb_estado) Then
          Application.CreateForm(Tfn1_refe_camb_estado, fn1_refe_camb_estado);
        //Ubicar el registro
        fn1_refe_camb_estado.Tabl_Falsa.FieldByName('cons_referencia').Value
            := consulta.FieldByName('cons_referencia').AsInteger;
    End;
end;
{****************************************************************
Procedimiento   : acti_estados_irUpdate
Objetivo        : Actualizar la acción de ir a codificación de estados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias.acti_estados_irUpdate(Sender: TObject);
begin
  inherited;
  acti_estados_ir.Enabled := (consulta.Active) and (consulta.RecordCount>0);
end;
{****************************************************************
Procedimiento   : acti_ventanaUpdate
Objetivo        : Actualizar las acciones del módulo
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias.acti_ventanaUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  acti_duplicar.Enabled := (Consulta.Active) and (Consulta.RecordCount > 0);
  acti_impo_prototipo.Enabled := (Self.Tag <> -1) and (Consulta.Active);
end;
{****************************************************************
Procedimiento   : acti_duplicarExecute
Objetivo        : Duplicar una referencia de producto
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias.acti_duplicarExecute(Sender: TObject);
Var
    vcodi_Referencia    : String;
begin
  inherited;
  //Solicitar la nueva referencia de prototipo
  vCodi_referencia := pcpInputForm(cosDuplicar, cosNuevoCodigo, tvString, '');
  //Validar la referencia
  if vCodi_Referencia = '' Then Exit;
  //Ejecutar el procedimiento de duplicación
  With quer_duplicar do
    Begin
      ParamByName('cons_referencia').Value := consulta.FieldByName('cons_referencia').asString;
      ParamByName('codi_referencia').Value := vcodi_referencia;
      ParamByName('es_prototipo').Value := (Self.Tag);
      ExecSQL;
    End;
  //Actualizar la consulta
  padr_acti_actualizar.Execute;
  //Ubicar el nuevo registro
  consulta.Locate('codi_referencia', vcodi_Referencia, []);
end;

procedure Tfn1_referencias.acti_impo_prototipoExecute(Sender: TObject);
Var
    vcons_prototipo : Integer;
begin
  inherited;
  //Preguntar el prototipo que se desea importar
  vcons_prototipo := pcpInputForm(cosImportar, cosSeleccionePrototipo,
        'Select * from VIS_PCP_PROT_POR_IMPORTAR order by cons_referencia',
        'cons_referencia', 'codi_referencia', 'data_base_pcp', 0);
  //Validar el prototipo seleccionado
  if vcons_prototipo = 0 then exit;
  //Importar
  Try
      StartDBTransaction;
      With quer_impo_prototipo do
        Begin
            ParamByName('cons_prototipo').Value := vcons_prototipo;
            ExecSQL;
        End;
      CommitDBWork;
  Except
     On e:Exception do
       Begin
          RollBackDBWork;
          EjecutarMensajeError(e.Message);
       End;
  End;
  //Actualizar la consulta
  padr_acti_actualizar.Execute;
end;

procedure Tfn1_referencias.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
