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
        Unit            : un1_pers_ingreso_3
        Objetivo        : Ingreso de personal
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 20-Abr-2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit un1_pers_ingreso_3;

interface
                                       
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar, kbmMemTable, cxPC,
  cxControls, TBXDkPanels, ufra_mens_atencion, ufra_fotografiaDB,
  TBXButtonSCL, RxLookup, PCPLookUpComboEdit, AdvPageControl, ComCtrls;

type
  Tfn1_pers_ingreso_3 = class(T_fvent_modal)
    Page: TAdvPageControl;
    page_docu_entrada: TAdvTabSheet;
    myTabla_Ventana: TkbmMemTable;
    data_tipo_docu_ingreso: TDataSource;
    quer_tipo_docu_ingreso: TQuery;
    DSQPais_Nacimiento: TDataSource;
    qpaises_nacimiento: TQuery;
    DSQDepartamento_Nacimiento: TDataSource;
    qDepartamentos_nacimiento: TQuery;
    DSQCiudades_Nacimiento: TDataSource;
    qCiudades_Nacimiento: TQuery;
    data_pers_responsable: TDataSource;
    quer_pers_responsable: TQuery;
    SCLDBLabel40: TSCLDBLabel;
    SCLDBLabel42: TSCLDBLabel;
    SCLDBLabel64: TSCLDBLabel;
    SCLDBLabel17: TSCLDBLabel;
    SCLDBLabel39: TSCLDBLabel;
    comb_tipo_documento: TPCPLookUpComboEdit;
    SCLButton27: TTBXButtonSCL;
    edit_nume_documento: TdxDBEdit;
    edit_Fech_ingreso: TdxDBDateEdit;
    edit_soli_por: TPCPLookUpComboEdit;
    edit_apro_por: TPCPLookUpComboEdit;
    myTabla_VentanaCONS_PERSONAL: TIntegerField;
    myTabla_VentanaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    myTabla_VentanaFECH_INICIAL: TDateTimeField;
    myTabla_VentanaFECH_FINAL: TDateTimeField;
    myTabla_VentanaCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField;
    myTabla_VentanaNUME_DOCUMENTO: TStringField;
    myTabla_VentanaCONS_SOLICITA: TIntegerField;
    myTabla_VentanaCONS_APROBO: TIntegerField;
    myTabla_VentanaOBSERVACIONES: TStringField;
    page_generales: TAdvTabSheet;
    Data_Tipo_Documento_Movimiento: TDataSource;
    quer_Tipo_Documento_Movimiento: TQuery;
    SCLDBLabel68: TSCLDBLabel;
    edit_observaciones: TdxDBMemo;
    DSQSexos: TDataSource;
    QSexos: TQuery;
    DSQEstado_Civil: TDataSource;
    QEstado_Civil: TQuery;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel41: TSCLDBLabel;
    SCLDBLabel43: TSCLDBLabel;
    SCLDBLabel69: TSCLDBLabel;
    edit_Codi_personal: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    PCPLookUpComboEdit18: TPCPLookUpComboEdit;
    PCPLookUpComboEdit19: TPCPLookUpComboEdit;
    dxDBEdit8: TdxDBEdit;
    SCLDBLabel5: TSCLDBLabel;
    edit_Codigo: TdxDBEdit;
    quer_veri_codigo: TQuery;
    tabl_memo_generales: TkbmMemTable;
    tabl_memo_generalesCONS_PERSONAL: TIntegerField;
    tabl_memo_generalesCODI_PERSONAL: TStringField;
    tabl_memo_generalesPRIM_APELLIDO: TStringField;
    tabl_memo_generalesSEGU_APELLIDO: TStringField;
    tabl_memo_generalesNOMBRES: TStringField;
    tabl_memo_generalesNOMB_COMPLETO: TStringField;
    TGeneral: TkbmMemTable;
    TGeneralCONS_PERSONAL: TIntegerField;
    TGeneralCONS_PAIS: TIntegerField;
    TGeneralCONS_DEPARTAMENTO: TIntegerField;
    TGeneralCONS_CIUDAD: TIntegerField;
    TGeneralDIRECCION: TStringField;
    TGeneralTELE_RESIDENCIA: TStringField;
    TGeneralTELE_OTRO: TStringField;
    TGeneralTELE_MOVIL: TStringField;
    TGeneralFECH_NACIMIENTO: TDateTimeField;
    TGeneralCONS_PAIS_NACIMIENTO: TIntegerField;
    TGeneralCONS_DEPA_NACIMIENTO: TIntegerField;
    TGeneralCONS_CIUD_NACIMIENTO: TIntegerField;
    TGeneralCONS_PERS_TIPO_DOCUMENTO: TIntegerField;
    TGeneralNUME_DOCUMENTO: TStringField;
    TGeneralFECH_EXPE_DOCUMENTO: TDateTimeField;
    TGeneralLUGA_EXPE_DOCUMENTO: TStringField;
    TGeneralNUME_PASAPORTE: TStringField;
    TGeneralFECH_EXPE_PASAPORTE: TDateTimeField;
    TGeneralFECH_VENC_PASAPORTE: TDateTimeField;
    TGeneralLUGA_EXPE_PASAPORTE: TStringField;
    TGeneralNUME_LIBR_MILITAR: TStringField;
    TGeneralFECH_EXPE_LIBR_MILITAR: TDateTimeField;
    TGeneralNUME_SEGU_SOCIAL: TStringField;
    TGeneralNUME_HIJOS: TIntegerField;
    TGeneralCONS_SEXO: TIntegerField;
    TGeneralCONS_ESTA_CIVIL: TIntegerField;
    TGeneralIMAGEN: TBlobField;
    TGeneralAJUS_IMAGEN: TIntegerField;
    TFamiliares: TkbmMemTable;
    TFamiliaresCONS_PERSONAL: TIntegerField;
    TFamiliaresCONS_PERS_TIPO_DOCUMENTO: TIntegerField;
    TFamiliaresNUME_DOCUMENTO: TStringField;
    TFamiliaresPRIM_APELLIDO: TStringField;
    TFamiliaresSEGU_APELLIDO: TStringField;
    TFamiliaresNOMBRES: TStringField;
    TFamiliaresCONS_SEXO: TIntegerField;
    TFamiliaresCONS_PARENTESCO: TIntegerField;
    TFamiliaresFECH_NACIMIENTO: TDateTimeField;
    TFamiliaresCONS_PAIS: TIntegerField;
    TFamiliaresCONS_DEPARTAMENTO: TIntegerField;
    TFamiliaresCONS_CIUDAD: TIntegerField;
    TFamiliaresDIRECCION: TStringField;
    TFamiliaresTELE_RESIDENCIA: TStringField;
    TFamiliaresTELE_OTRO: TStringField;
    TFamiliaresTELE_MOVIL: TStringField;
    TFamiliaresOCUPACION: TStringField;
    TFamiliaresNOMB_EMPRESA: TStringField;
    TFamiliaresDIRE_EMPRESA: TStringField;
    TFamiliaresTELE_EMPRESA: TStringField;
    TFamiliaresCORR_ELECTRONICO: TStringField;
    TFamiliaresNOMB_SEXO: TStringField;
    TFamiliaresNOMB_PARENTESCO: TStringField;
    TFamiliaresNOMB_PAIS: TStringField;
    TFamiliaresNOMB_DEPARTAMENTO: TStringField;
    TFamiliaresNOMB_CIUDAD: TStringField;
    TFamiliaresNOMB_PERS_TIPO_DOCUMENTO: TStringField;
    TFamiliaresFECH_SISTEMA: TDateTimeField;
    TFamiliaresUSUA_SISTEMA: TStringField;
    TFamiliaresCONS_PERS_FAMILIAR: TIntegerField;
    TConfidencial: TkbmMemTable;
    TConfidencialCONS_PERS_MOVIMIENTO: TIntegerField;
    TConfidencialCONS_PERS_NIVE_SALARIAL: TIntegerField;
    TConfidencialCONS_PERS_TIPO_CONTRATO: TIntegerField;
    TConfidencialNUME_CONTRATO: TStringField;
    TConfidencialCONS_PERI_PAGO: TIntegerField;
    TConfidencialAUXI_TRANSPORTE: TFloatField;
    TConfidencialAUXI_SALARIAL: TFloatField;
    TConfidencialVALO_SALARIO: TIntegerField;
    TConfidencialDIAS_VENC_CONTRATO: TIntegerField;
    TConfidencialAPLI_INCENTIVO: TIntegerField;
    TTraslados: TkbmMemTable;
    TTrasladosCONS_PERS_MOVIMIENTO: TIntegerField;
    TTrasladosCONS_EMPRESA: TIntegerField;
    TTrasladosCONS_AREA: TIntegerField;
    TTrasladosCONS_PLANTA: TIntegerField;
    TTrasladosCONS_PLAN_LINEA: TIntegerField;
    TTrasladosCONS_LINE_SECCION: TIntegerField;
    TTrasladosCONS_BODEGA: TIntegerField;
    TTrasladosCONS_TURNO: TIntegerField;
    TTrasladosCONS_UBIC_TIPO: TIntegerField;
    TTrasladosOTRA_UBICACION: TStringField;
    TTrasladosCONS_PERS_CARGO: TIntegerField;
    TTrasladosCONS_PERS_CENT_COSTO: TIntegerField;
    TTrasladosCONS_COST_GRUPO: TIntegerField;
    data_memo_generales: TDataSource;
    DSGeneral: TDataSource;
    DSFamiliares: TDataSource;
    DSConfidencial: TDataSource;
    DSTraslados: TDataSource;
    pane_nomb_completo: Tffra_mens_atencion;
    cxTabSheet1: TAdvTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure edit_CodigoExit(Sender: TObject);
    procedure myTabla_VentanaBeforePost(DataSet: TDataSet);
    procedure myTabla_VentanaAfterPost(DataSet: TDataSet);
    procedure myTabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure myTabla_VentanaPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure tabl_memo_generalesCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure DoActualizarEstadoTabs;
  public
    { Public declarations }
  end;

var
  fn1_pers_ingreso_3: Tfn1_pers_ingreso_3;

implementation

uses _MDI, _func_varias, _cons_pcp, _func_pcp;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 20-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_pers_ingreso_3.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar los controles de la ventana
  Page.ActivePage := page_docu_entrada;
  Pane_Nomb_Completo.SetNormalColors;


  //Abrir las consultas de orígenes
  AbrirDataSet(quer_Tipo_Documento_Movimiento);
  AbrirDataSet(quer_pers_responsable);

  //Abrir las tablas auxiliares (Memory)
  AbrirDataSet(tabl_memo_generales);

  //Insertar un registro
  myTabla_Ventana.Insert;

end;

procedure Tfn1_pers_ingreso_3.edit_CodigoExit(Sender: TObject);
begin
  inherited;
  inherited;
  quer_Veri_Codigo.Close;
  //Hacerle un POST a la tabla de la ventana para crear el registro maestro
  CheckAndPostDataSet(myTabla_Ventana);
end;
{****************************************************************
Procedimiento   : myTabla_VentanaBeforePost
Objetivo        : Evaluar el registro de personal antes de guardarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 20-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_pers_ingreso_3.myTabla_VentanaBeforePost(DataSet: TDataSet);
begin
  inherited;
  //Si no hay código, abortar el guardado
  If (tabl_memo_generales.FieldByName('codi_personal').asString = '') Then Abort;
  //Verificar si el código existe
  if (myTabla_Ventana.State = dsInsert) Then
  Begin
      //Dar los parámetros de la consulta
      quer_veri_codigo.Close;
      quer_Veri_Codigo.ParamByName('codi_personal').Value := tabl_memo_generales.FieldByName('codi_personal').asString;
      quer_veri_Codigo.Open;
      //Verificar si existen registros con el mismo código
      if quer_veri_Codigo.FieldByName('cuantos').asInteger > 0 Then
      Begin
           EjecutarMensajeError(cosErrorCodigoYaExiste);
           darFoco(edit_Codigo);
           if (edit_Codigo.Focused) Then
              edit_Codigo.SelectAll;
           //Cancelar el guardado
           Abort;
      End;
      quer_veri_Codigo.Close;
      //Pasar la página
      Page.ActivePage := page_generales; 
  End;
  //Hacerle un POST a las tablas auxiliares



  //Iniciar una transacción en la base de datos por si ocurre algún error
  StartDBTransaction;





  //Una vez finalizado el guardado, hacer un POST en la Base de datos
  CommitDBWork;

End;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterPost
Objetivo        : Configurar los campos luego de guardar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 20-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_pers_ingreso_3.myTabla_VentanaAfterPost(DataSet: TDataSet);
begin
  inherited;
  DoActualizarEstadoTabs;
end;
{****************************************************************
Procedimiento   : DoActualizarEstadoTabs
Objetivo        : Actualiza el estado de los TABS de acuerdo con
                  el estado de la tabla maestra
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 20-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tfn1_pers_ingreso_3.DoActualizarEstadoTabs;
Begin
    With myTabla_Ventana do
    Begin
        page_generales.Enabled := (Active) and (State <> dsInsert) and (RecordCount > 0);

    End;
End;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterInsert
Objetivo        : Prepara la ventana para la creación de un nuevo
                  registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 21-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_pers_ingreso_3.myTabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  //--------------------------------FALTANTE--------------------------
  //Reinicializar las tablas en memoria


  //Valores por defecto del registro
  With myTabla_Ventana do
  Begin
      FieldByName('fech_inicial').Value := NowDate;
      

  End;
  Page.ActivePage := page_docu_entrada;
  DarFoco(comb_tipo_documento);

  DoActualizarEstadoTabs;
end;

procedure Tfn1_pers_ingreso_3.myTabla_VentanaPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  //Hacer un RollBack en la base de datos
  If _fMDI.data_base_pcp.InTransaction Then
       RollBackDBWork;
end;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar los controles de la ventana cuando
                  cambie el estado de la tabla principal (myTabla_Ventana)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 21-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_pers_ingreso_3.data_ventanaStateChange(Sender: TObject);
begin
  inherited;
  pane_nomb_completo.Visible := (myTabla_Ventana.Active) and (myTabla_Ventana.State <> dsInsert) and
        (tabl_memo_generales.Active) and (tabl_memo_generales.FieldByName('codi_personal').AsString <> '');
end;
{****************************************************************
Procedimiento   : tabl_memo_generalesCalcFields
Objetivo        : Calcular campos en la tabla de datos generales
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 21-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_pers_ingreso_3.tabl_memo_generalesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  With tabl_memo_generales do
  Begin
      FieldByName('nomb_completo').Value := FieldByName('nombres').AsString + ' ' +
           FieldByName('prim_apellido').AsString + ' ' + FieldByName('segu_apellido').asString;
  End;
end;

end.

{
procedure Tfn1_pers_ingreso_3.PageDrawTab(AControl: TcxCustomTabControl;
  ATab: TcxTab; var DefaultDraw: Boolean);
Var
    DC: HDC;//SCL
    ARect: TRect;
Begin
    TcxPCCustomPainter(AControl.Painter).parentInfo;
    //Repintado del borde
    DC := GetWindowDC(aControl.Handle);
    if VarIsNull(DC) Then Exit;
    try
        aRect := aTab.FullRect;
        InflateRect(ARect, -1, -1);
        rectangle(dc, arect.left, arect.top, arect.right, arect.bottom);
    finally
      ReleaseDC(DC, Handle);
    end;

end;  }

