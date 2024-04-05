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
        Unit            : UN1_Pers_Ingreso
        Objetivo        : Maestro de personal
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 13-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}

unit UN1_Pers_Ingreso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, TBXLists, TB2ExtItems, TBXExtItems, 
  dfsSplitter, StdCtrls, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes, Boxes, PCPFrame;

type
  TFN1_Pers_Ingreso = class(T_fvent_child)
    Acti_Modi_Confidencial: TAction;
    QDatos_Confidenciales: TQuery;
    QDatos_ConfidencialesCONS_PERS_NIVE_SALARIAL: TIntegerField;
    QDatos_ConfidencialesCODI_PERS_NIVE_SALARIAL: TStringField;
    QDatos_ConfidencialesNOMB_PERS_NIVE_SALARIAL: TStringField;
    QDatos_ConfidencialesCONS_PERS_TIPO_CONTRATO: TIntegerField;
    QDatos_ConfidencialesCODI_PERS_TIPO_CONTRATO: TStringField;
    QDatos_ConfidencialesNOMB_PERS_TIPO_CONTRATO: TStringField;
    QDatos_ConfidencialesNUME_CONTRATO: TStringField;
    QDatos_ConfidencialesCONS_PERI_PAGO: TIntegerField;
    QDatos_ConfidencialesCODI_PERI_PAGO: TStringField;
    QDatos_ConfidencialesNOMB_PERI_PAGO: TStringField;
    QDatos_ConfidencialesVALO_SALARIO: TIntegerField;
    QDatos_ConfidencialesAUXI_TRANSPORTE: TFloatField;
    QDatos_ConfidencialesAUXI_SALARIAL: TFloatField;
    QDatos_ConfidencialesFECH_SISTEMA: TDateTimeField;
    QDatos_ConfidencialesUSUA_SISTEMA: TStringField;
    QTraslados: TQuery;
    QTrasladosCONS_PERS_MOVIMIENTO: TIntegerField;
    QTrasladosCONS_UBIC_TIPO: TIntegerField;
    QTrasladosCONS_EMPRESA: TIntegerField;
    QTrasladosCONS_AREA: TIntegerField;
    QTrasladosCONS_PLANTA: TIntegerField;
    QTrasladosCONS_PLAN_LINEA: TIntegerField;
    QTrasladosCONS_LINE_SECCION: TIntegerField;
    QTrasladosCONS_BODEGA: TIntegerField;
    QTrasladosOTRA_UBICACION: TStringField;
    QTrasladosCONS_TURNO: TIntegerField;
    QTrasladosFECH_SISTEMA: TDateTimeField;
    QTrasladosUSUA_SISTEMA: TStringField;
    TBXSeparatorItem8: TTBXSeparatorItem;
    Acti_Modi_Traslados: TAction;
    Acti_Modi_Bajas: TAction;
    Acti_Modi_Reingreso: TAction;
    TBXSeparatorItem9: TTBXSeparatorItem;
    Acti_Anul_traslados: TAction;
    TBXSubmenuItem3: TTBXSubmenuItem;
    TBXItem25: TTBXItem;
    Acti_Anul_Bajas: TAction;
    TBXItem24: TTBXItem;
    Acti_Anul_Reingresos: TAction;
    TBXItem26: TTBXItem;
    QDatos_ConfidencialesAPLI_INCENTIVO: TIntegerField;
    QDatos_ConfidencialesDIAS_VENC_CONTRATO: TIntegerField;
    QTrasladosCONS_PERS_CARGO: TIntegerField;
    QTrasladosCONS_PERS_CENT_COSTO: TIntegerField;
    QTrasladosCONS_COST_GRUPO: TIntegerField;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXSubmenuItem1: TTBXSubmenuItem;
    consultaCONS_PERSONAL: TIntegerField;
    consultaCODI_PERSONAL: TStringField;
    consultaPRIM_APELLIDO: TStringField;
    consultaSEGU_APELLIDO: TStringField;
    consultaNOMBRES: TStringField;
    consultaNOMB_COMPLETO: TStringField;
    consultaNOMB_ESTADO: TStringField;
    consultaNOMB_UBIC_TIPO: TStringField;
    consultaNOMB_EMPRESA: TStringField;
    consultaNOMB_AREA: TStringField;
    consultaNOMB_PLANTA: TStringField;
    consultaNOMB_PLAN_LINEA: TStringField;
    consultaNOMB_LINE_SECCION: TStringField;
    consultaNOMB_BODEGA: TStringField;
    consultaCODI_TURNO: TStringField;
    consultaNOMB_TIPO_TURNO: TStringField;
    consultaNOMB_PERS_CARGO: TStringField;
    consultaNOMB_PERS_CENT_COSTO: TStringField;
    consultaNOMB_COST_GRUPO: TStringField;
    consultaOTRA_UBICACION: TStringField;
    consultaCONS_ESTADO: TIntegerField;
    acti_modi_sistema: TAction;
    menu_movimientos: TTBXSubmenuItem;
    TBXItem1: TTBXItem;
    TBXItem23: TTBXItem;
    TBXItem27: TTBXItem;
    TBXItem2: TTBXItem;
    TBXSubmenuItem4: TTBXSubmenuItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem22: TTBXItem;
    TBXItem21: TTBXItem;
    pop_movimientos: TTBXPopupMenu;
    TBGroupItem1: TTBGroupItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    consultaCONS_UBIC_TIPO: TIntegerField;
    consultaCONS_EMPRESA: TIntegerField;
    consultaCONS_AREA: TIntegerField;
    consultaCONS_PLANTA: TIntegerField;
    consultaCONS_PLAN_LINEA: TIntegerField;
    consultaCONS_LINE_SECCION: TIntegerField;
    consultaCONS_BODEGA: TIntegerField;
    consultaCONS_TURNO: TIntegerField;
    consultaCONS_PERS_CARGO: TIntegerField;
    consultaCONS_PERS_CENT_COSTO: TIntegerField;
    consultaCONS_COST_GRUPO: TIntegerField;
    acti_modi_ver_activos: TAction;
    TBXItem3: TTBXItem;
    consultaCONS_PAIS: TIntegerField;
    consultaCODI_PAIS: TStringField;
    consultaNOMB_PAIS: TStringField;
    consultaCONS_DEPARTAMENTO: TIntegerField;
    consultaCODI_DEPARTAMENTO: TStringField;
    consultaNOMB_DEPARTAMENTO: TStringField;
    consultaCONS_CIUDAD: TIntegerField;
    consultaCODI_CIUDAD: TStringField;
    consultaNOMB_CIUDAD: TStringField;
    consultaDIRECCION: TStringField;
    consultaTELE_RESIDENCIA: TStringField;
    consultaTELE_OTRO: TStringField;
    consultaTELE_MOVIL: TStringField;
    consultaFECH_NACIMIENTO: TDateTimeField;
    consultaMES_NACIMIENTO: TStringField;
    consultaEDAD: TIntegerField;
    consultaCONS_PAIS_NACIMIENTO: TIntegerField;
    consultaCODI_PAIS_NACIMIENTO: TStringField;
    consultaNOMB_PAIS_NACIMIENTO: TStringField;
    consultaCONS_DEPA_NACIMIENTO: TIntegerField;
    consultaCODI_DEPA_NACIMIENTO: TStringField;
    consultaNOMB_DEPA_NACIMIENTO: TStringField;
    consultaCONS_CIUD_NACIMIENTO: TIntegerField;
    consultaCODI_CIUD_NACIMIENTO: TStringField;
    consultaNOMB_CIUD_NACIMIENTO: TStringField;
    consultaNOMB_PERS_TIPO_DOCUMENTO: TStringField;
    consultaNUME_DOCUMENTO: TStringField;
    consultaFECH_EXPE_DOCUMENTO: TDateTimeField;
    consultaLUGA_EXPE_DOCUMENTO: TStringField;
    consultaNUME_PASAPORTE: TStringField;
    consultaFECH_EXPE_PASAPORTE: TDateTimeField;
    consultaLUGA_EXPE_PASAPORTE: TStringField;
    consultaFECH_VENC_PASAPORTE: TDateTimeField;
    consultaNUME_LIBR_MILITAR: TStringField;
    consultaFECH_EXPE_LIBR_MILITAR: TDateTimeField;
    consultaNUME_SEGU_SOCIAL: TStringField;
    consultaNUME_HIJOS: TIntegerField;
    consultaNOMB_SEXO: TStringField;
    consultaNOMB_ESTA_CIVIL: TStringField;
    padr_gridCONS_PERSONAL: TdxDBGridMaskColumn;
    padr_gridCODI_PERSONAL: TdxDBGridMaskColumn;
    padr_gridPRIM_APELLIDO: TdxDBGridMaskColumn;
    padr_gridSEGU_APELLIDO: TdxDBGridMaskColumn;
    padr_gridNOMBRES: TdxDBGridMaskColumn;
    padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn;
    padr_gridCONS_ESTADO: TdxDBGridMaskColumn;
    padr_gridNOMB_ESTADO: TdxDBGridMaskColumn;
    padr_gridCONS_UBIC_TIPO: TdxDBGridMaskColumn;
    padr_gridNOMB_UBIC_TIPO: TdxDBGridMaskColumn;
    padr_gridCONS_EMPRESA: TdxDBGridMaskColumn;
    padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn;
    padr_gridCONS_AREA: TdxDBGridMaskColumn;
    padr_gridNOMB_AREA: TdxDBGridMaskColumn;
    padr_gridCONS_PLANTA: TdxDBGridMaskColumn;
    padr_gridNOMB_PLANTA: TdxDBGridMaskColumn;
    padr_gridCONS_PLAN_LINEA: TdxDBGridMaskColumn;
    padr_gridNOMB_PLAN_LINEA: TdxDBGridMaskColumn;
    padr_gridCONS_LINE_SECCION: TdxDBGridMaskColumn;
    padr_gridNOMB_LINE_SECCION: TdxDBGridMaskColumn;
    padr_gridCONS_BODEGA: TdxDBGridMaskColumn;
    padr_gridNOMB_BODEGA: TdxDBGridMaskColumn;
    padr_gridOTRA_UBICACION: TdxDBGridMaskColumn;
    padr_gridCODI_TURNO: TdxDBGridMaskColumn;
    padr_gridCONS_TURNO: TdxDBGridMaskColumn;
    padr_gridNOMB_TIPO_TURNO: TdxDBGridMaskColumn;
    padr_gridCONS_PERS_CARGO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_CARGO: TdxDBGridMaskColumn;
    padr_gridCONS_PERS_CENT_COSTO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_CENT_COSTO: TdxDBGridMaskColumn;
    padr_gridCONS_COST_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_COST_GRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_PAIS: TdxDBGridMaskColumn;
    padr_gridCODI_PAIS: TdxDBGridMaskColumn;
    padr_gridNOMB_PAIS: TdxDBGridMaskColumn;
    padr_gridCONS_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridCODI_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridCONS_CIUDAD: TdxDBGridMaskColumn;
    padr_gridCODI_CIUDAD: TdxDBGridMaskColumn;
    padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn;
    padr_gridDIRECCION: TdxDBGridMaskColumn;
    padr_gridTELE_RESIDENCIA: TdxDBGridMaskColumn;
    padr_gridTELE_OTRO: TdxDBGridMaskColumn;
    padr_gridTELE_MOVIL: TdxDBGridMaskColumn;
    padr_gridFECH_NACIMIENTO: TdxDBGridDateColumn;
    padr_gridMES_NACIMIENTO: TdxDBGridMaskColumn;
    padr_gridEDAD: TdxDBGridMaskColumn;
    padr_gridCONS_PAIS_NACIMIENTO: TdxDBGridMaskColumn;
    padr_gridCODI_PAIS_NACIMIENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_PAIS_NACIMIENTO: TdxDBGridMaskColumn;
    padr_gridCONS_DEPA_NACIMIENTO: TdxDBGridMaskColumn;
    padr_gridCODI_DEPA_NACIMIENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_DEPA_NACIMIENTO: TdxDBGridMaskColumn;
    padr_gridCONS_CIUD_NACIMIENTO: TdxDBGridMaskColumn;
    padr_gridCODI_CIUD_NACIMIENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_CIUD_NACIMIENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridNUME_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridFECH_EXPE_DOCUMENTO: TdxDBGridDateColumn;
    padr_gridLUGA_EXPE_DOCUMENTO: TdxDBGridMaskColumn;
    padr_gridNUME_PASAPORTE: TdxDBGridMaskColumn;
    padr_gridFECH_EXPE_PASAPORTE: TdxDBGridDateColumn;
    padr_gridLUGA_EXPE_PASAPORTE: TdxDBGridMaskColumn;
    padr_gridFECH_VENC_PASAPORTE: TdxDBGridDateColumn;
    padr_gridNUME_LIBR_MILITAR: TdxDBGridMaskColumn;
    padr_gridFECH_EXPE_LIBR_MILITAR: TdxDBGridDateColumn;
    padr_gridNUME_SEGU_SOCIAL: TdxDBGridMaskColumn;
    padr_gridNUME_HIJOS: TdxDBGridMaskColumn;
    padr_gridNOMB_SEXO: TdxDBGridMaskColumn;
    padr_gridNOMB_ESTA_CIVIL: TdxDBGridMaskColumn;
    consultaNUME_CONDUCCION: TStringField;
    consultaFECH_EXPE_CONDUCCION: TDateTimeField;
    consultaLUGA_EXPE_CONDUCCION: TStringField;
    consultaFECH_VENC_CONDUCCION: TDateTimeField;
    consultaCATE_CONDUCCION: TStringField;
    padr_gridNUME_CONDUCCION: TdxDBGridMaskColumn;
    padr_gridFECH_EXPE_CONDUCCION: TdxDBGridMaskColumn;
    padr_gridLUGA_EXPE_CONDUCCION: TdxDBGridMaskColumn;
    padr_gridFECH_VENC_CONDUCCION: TdxDBGridMaskColumn;
    padr_gridCATE_CONDUCCION: TdxDBGridMaskColumn;
    procedure Acti_Modi_ConfidencialExecute(Sender: TObject);
    procedure Acti_Modi_TrasladosExecute(Sender: TObject);
    procedure Acti_Modi_BajasExecute(Sender: TObject);
    procedure padr_acti_modificarExecute(Sender: TObject);
    procedure padr_acti_eliminarExecute(Sender: TObject);
    procedure padr_gridDblClick(Sender: TObject);
    procedure Acti_Modi_ReingresoExecute(Sender: TObject);
    procedure Acti_Anul_trasladosExecute(Sender: TObject);
    procedure Acti_Anul_BajasExecute(Sender: TObject);
    procedure Acti_Anul_ReingresosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure doGridDblClick(Sender: TObject);
    procedure padr_acti_consultarExecute(Sender: TObject);
    procedure Acti_Modi_ConfidencialUpdate(Sender: TObject);
    procedure acti_modi_sistemaExecute(Sender: TObject);
    procedure consultaBeforeOpen(DataSet: TDataSet);
    procedure acti_modi_ver_activosExecute(Sender: TObject);
    procedure acti_modi_sistemaUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Ingreso: TFN1_Pers_Ingreso;

ResourceString

    cosModificandoPersonal  = 'Modificando personal';
    cosDatosConfidenciales  = 'Datos confidenciales';
    CosDatosGenerales       = 'Datos generales';
    cosTraslados            = 'Traslados';
    CosBajas                = 'Bajas';

    CosNoModicarDatosGeneralesPersonal  = 'Solo se pueden modificar los Datos Generales de una persona de manera simultánea.';
    cosSeleccioneAlMenosUnaPersona      = 'Seleccione al menos un registro para hacer la modificación.';
    CosReingresosPersonal               = 'Reingreso de Personal';
    CosAnularTrasladosPersonal		= 'Anular Traslados';
    CosAnularBajasPersonal              = 'Anular Bajas';
    CosAnularReingresosPersonal         = 'Anular Reingresos';

implementation

uses _func_varias, UN1_Pers_General1,
  UN1_Pers_Reingresos1,
  UN1_Pers_Maes_Anulados, _cons_pcp, _MDI, _uData,
  un1_pers_dato_confidenciales, un1_pers_bajas, un1_pers_sistema,
  un1_pers_traslados2, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : Acti_Modi_ConfidencialExecute
Objetivo        : Modificar datos confidenciales
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 5 de mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso.Acti_Modi_ConfidencialExecute(Sender: TObject);
{Var
	Indice : Integer;}
begin
  inherited;
  //Verificar si el operario está activo
  if (Consulta.FieldByName('cons_estado').asInteger = 2) Then
  Begin
      EjecutarMensajeInformacion(cosPersonalNoCambiarDatosPersonalInactivo);
      Exit;
  End;
  Application.CreateForm(Tfn1_pers_dato_confidenciales, fn1_pers_dato_confidenciales);
  //Ocultar el panel de selección
  fn1_pers_dato_confidenciales.fram_list_personal.Visible := False;
  fn1_pers_dato_confidenciales.Spli.Visible := False;
  //Ubicar el registro
  If Not fn1_pers_dato_confidenciales.fram_list_personal.quer_pers_disponible.Locate
      ('cons_personal', Consulta.FieldByName('cons_personal').asInteger, []) Then
  Begin
       fn1_pers_dato_confidenciales.Close;
       Raise Exception.Create(cosErrorRegistroNoEcontrado+ #13 + cosErrorNoEsperado);
  End;
end;

{****************************************************************
Procedimiento   : Acti_Modi_TrasladosExecute
Objetivo        : Modificar datos ubicación (Traslados)
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 5 de mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso.Acti_Modi_TrasladosExecute(Sender: TObject);
Var
	var_i   : Integer;
begin
  inherited;
  //Verificar que existan registros seleccionados
  If padr_grid.SelectedCount < 1 Then
  Begin
    EjecutarMensajeInformacion(cosSeleccioneAlMenosUnaPersona);
    Exit;
  End;
  //Crear la ventana
  Application.CreateForm(Tfn1_pers_traslados2, fn1_pers_traslados2);
  //Configurar la ventana (1 registro seleccionado)
  if (padr_grid.SelectedCount = 1) Then
  Begin
        fn1_pers_traslados2.page.ActivePage := fn1_pers_traslados2.Page_Individual;
        fn1_pers_traslados2.quer_pers_disponible1.Locate('cons_personal', consulta.FieldByName('cons_personal').asInteger, []);
  End
  Else
  With fn1_pers_traslados2 do
  //Configurar la ventana (varios registros seleccionados)
  Begin
        //Pagina activa
        fn1_pers_traslados2.page.ActivePage := fn1_pers_traslados2.Page_Grupal;
        //Insertar los registros seleccionados
        For var_I := 1 To padr_grid.Count Do
          If padr_grid.Items[var_I - 1].Selected Then
          Begin
            tabl_temporal.Insert;
            tabl_temporal.FieldByName('CONS_PERSONAL').Value := padr_grid.Items[var_I - 1].Values[padr_grid.ColumnByFieldName('CONS_PERSONAL').Index];
            tabl_temporal.FieldByName('CODI_PERSONAL').Value := padr_grid.Items[var_I - 1].Values[padr_grid.ColumnByFieldName('CODI_PERSONAL').Index];
            tabl_temporal.FieldByName('NOMB_COMPLETO').Value := padr_grid.Items[var_I - 1].Values[padr_grid.ColumnByFieldName('NOMB_COMPLETO').Index];
            tabl_temporal.FieldByName('CONS_TURNO').Value := padr_grid.Items[var_I - 1].Values[padr_grid.ColumnByFieldName('CONS_TURNO').Index];
            tabl_temporal.FieldByName('CONS_PERS_CARGO').Value := padr_grid.Items[var_I - 1].Values[padr_grid.ColumnByFieldName('CONS_PERS_CARGO').Index];
            tabl_temporal.FieldByName('CONS_PERS_CENT_COSTO').Value := padr_grid.Items[var_I - 1].Values[padr_grid.ColumnByFieldName('CONS_PERS_CENT_COSTO').Index];
            tabl_temporal.FieldByName('CONS_COST_GRUPO').Value := padr_grid.Items[var_I - 1].Values[padr_grid.ColumnByFieldName('CONS_COST_GRUPO').Index];
            tabl_temporal.Post;
          End;
        tabl_temporal.First;
  End;
end;

{****************************************************************
Procedimiento   : Acti_Mofi_BajasExecute
Objetivo        : Modificar estado (Bajas)
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 5 de mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso.Acti_Modi_BajasExecute(Sender: TObject);
Var
	var_I   : Integer;
begin
  inherited;
  //Si no hay registros seleccionados, salir
  If padr_grid.SelectedCount < 1 Then
  Begin
    EjecutarMensajeInformacion(cosSeleccioneAlMenosUnaPersona);
    Exit;
  End;
  //Abrir la ventana de bajas
  Application.CreateForm(Tfn1_pers_bajas, fn1_pers_bajas);
  //Insertar los registros seleccionados en la tabla de bajas
  For var_I := 1 To padr_grid.Count Do
  Begin
      If padr_grid.Items[var_I - 1].Selected Then
      Begin
        fn1_pers_bajas.tabl_Temporal.Insert;
        fn1_pers_bajas.tabl_Temporal.FieldByName('CONS_PERSONAL').Value := padr_grid.Items[var_i - 1].Values[padr_grid.ColumnByFieldName('CONS_PERSONAL').Index];
        fn1_pers_bajas.tabl_Temporal.FieldByName('CODI_PERSONAL').Value := padr_grid.Items[var_i - 1].Values[padr_grid.ColumnByFieldName('CODI_PERSONAL').Index];
        fn1_pers_bajas.tabl_Temporal.FieldByName('NOMB_COMPLETO').Value := padr_grid.Items[var_i - 1].Values[padr_grid.ColumnByFieldName('NOMB_COMPLETO').Index];
        fn1_pers_bajas.tabl_Temporal.Post;
      End;
  End;
end;

{****************************************************************
Procedimiento   : padr_acti_modificarExecute
Objetivo        : Modificar datos generales
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 5 de mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso.padr_acti_modificarExecute(Sender: TObject);
begin
//  inherited;
  If consulta.RecordCount = 0 Then
  	Exit;
  //Verifico que no exista la carpeta
  If Existe_Pagina(Format(cosDosValoresParentesis, [cosModificandoPersonal, cosDatosGenerales])) Then
    Exit;
  //Verifico que no este mas de un personal seleccionado
  If padr_grid.SelectedCount > 1 Then
  Begin
    EjecutarMensajeInformacion(CosNoModicarDatosGeneralesPersonal);
    Exit;
  End;
  FN1_Pers_General1 := TFN1_Pers_General1.Create(Self);
  FN1_Pers_General1.Ejecutar(consulta.FieldByName('CONS_PERSONAL').AsInteger);
  FN1_Pers_General1.Caption := Format(cosDosValoresParentesis, [cosModificandoPersonal, cosDatosGenerales]);
  //FN1_Pers_General1.Tabla_Ventana.Edit;
  FN1_Pers_General1.FormStyle := fsMDIChild;
  FN1_Pers_General1.DoActualizarEstadoPersonal;
  if (Sender = padr_Acti_modificar) Then
     FN1_Pers_General1.Tabla_Ventana.Edit;
end;

{****************************************************************
Procedimiento   : padr_acti_eliminarExecute
Objetivo        : Eliminar Personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 8 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso.padr_acti_eliminarExecute(Sender: TObject);
Var
	I, Indice : Integer;
begin
//  inherited;
  //Verificar que existan registros
	If Data_ventana.DataSet.RecordCount = 0 Then
  	Exit;

  // Preguntar antes de eliminar el registro
  //....................................................................
  If (Confirmar(Format(cosEliminarRegistro,[Variables.Genero+Variables.NombreAMostrar,
  '(' + consulta.fieldbyname(Variables.CampoAMostrar).AsString + ')'])) = mrYes) Then
  Begin
    //Deshabilito los controles de la consulta
		Data_ventana.DataSet.DisableControls;
    //Recorro el grid para averiguar los registro seleccionados
    For I := 0 To padr_grid.Count - 1 Do
    	If padr_grid.Items[I].Selected Then
      Begin
        //Localizo el indice de la columna del campo primario
        Indice := padr_grid.ColumnByFieldName(Variables.CamposDeBusqueda).Index;
        //Busco el registro seleccionado en el grid
        If Data_ventana.DataSet.Locate(Variables.CamposDeBusqueda, padr_grid.Items[I].Strings[Indice], []) Then
          try
            //Elimino el registro
            Eliminar.ExecSQL;
          except
            on E:Exception do
            EjecutarMensajeError(e.message);
          end;
			End;
    //Habilito los controles de la consulta
    Data_ventana.DataSet.EnableControls;
		//Actualizo la consulta
    padr_acti_actualizar.Execute;
  End;
end;

{****************************************************************
Procedimiento   : padr_gridDblClick
Objetivo        : Modificar datos generales del personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 8 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso.padr_gridDblClick(Sender: TObject);
begin
//  inherited;
	//Ejecuto la acción de modificar datos generales, no la del padre
  padr_acti_modificar.Execute
end;

{****************************************************************
Procedimiento   : Acti_Modi_ReingresoExecute
Objetivo        : Reingreso de Personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Jueves 10 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso.Acti_Modi_ReingresoExecute(Sender: TObject);
begin
  inherited;
  FN1_Pers_Reingresos1 := TFN1_Pers_Reingresos1.Create(Self);
end;

{****************************************************************
Procedimiento   : Acti_Anul_trasladosExecute
Objetivo        : Anular Traslados de Personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 14 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso.Acti_Anul_trasladosExecute(Sender: TObject);
begin
  inherited;
  //Verifico que no exista la carpeta
  If Existe_Pagina(CosAnularTrasladosPersonal) Then
    Exit;
	FN1_Pers_Maes_Anulados := TFN1_Pers_Maes_Anulados.Create(Self);
  FN1_Pers_Maes_Anulados.Tipo_Movimiento := '2';
  FN1_Pers_Maes_Anulados.QPersonal.Sql.Add(Cabeza_Consulta);
  FN1_Pers_Maes_Anulados.QPersonal.Sql.Add(' AND T.CONS_FAMI_MOVIMIENTO = 2');
  FN1_Pers_Maes_Anulados.QPersonal.Sql.Add(Pie_Consulta);
  FN1_Pers_Maes_Anulados.QPersonal.Open;
  FN1_Pers_Maes_Anulados.ManualDock(Self.padr_pagina, Nil);
  FN1_Pers_Maes_Anulados.Caption := CosAnularTrasladosPersonal;
  FN1_Pers_Maes_Anulados.Show;


end;

{****************************************************************
Procedimiento   : Acti_Anul_BajasExecute
Objetivo        : Anular Bajas de Personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 14 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso.Acti_Anul_BajasExecute(Sender: TObject);
begin
  inherited;
  //Verifico que no exista la carpeta
  If Existe_Pagina(CosAnularBajasPersonal) Then
    Exit;
	FN1_Pers_Maes_Anulados := TFN1_Pers_Maes_Anulados.Create(Self);
  FN1_Pers_Maes_Anulados.Tipo_Movimiento := '3,4';
  FN1_Pers_Maes_Anulados.QPersonal.Sql.Add(Cabeza_Consulta);
  FN1_Pers_Maes_Anulados.QPersonal.Sql.Add(' AND T.CONS_FAMI_MOVIMIENTO IN (3,4)');
  FN1_Pers_Maes_Anulados.QPersonal.Sql.Add(Pie_Consulta);
  FN1_Pers_Maes_Anulados.QPersonal.Open;
  FN1_Pers_Maes_Anulados.ManualDock(Self.padr_pagina, Nil);
  FN1_Pers_Maes_Anulados.Caption := CosAnularBajasPersonal;
  FN1_Pers_Maes_Anulados.Show;
end;

{****************************************************************
Procedimiento   : Acti_Anul_ReingresosExecute
Objetivo        : Anular Reingresos de Personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 14 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso.Acti_Anul_ReingresosExecute(Sender: TObject);
begin
  inherited;
  //Verifico que no exista la carpeta
  If Existe_Pagina(CosAnularReingresosPersonal) Then
    Exit;
	FN1_Pers_Maes_Anulados := TFN1_Pers_Maes_Anulados.Create(Self);
  FN1_Pers_Maes_Anulados.Tipo_Movimiento := '5';
  FN1_Pers_Maes_Anulados.QPersonal.Sql.Add(Cabeza_Consulta);
  FN1_Pers_Maes_Anulados.QPersonal.Sql.Add(' AND T.CONS_FAMI_MOVIMIENTO = 5');
  FN1_Pers_Maes_Anulados.QPersonal.Sql.Add(Pie_Consulta);
  FN1_Pers_Maes_Anulados.QPersonal.Open;
  FN1_Pers_Maes_Anulados.ManualDock(Self.padr_pagina, Nil);
  FN1_Pers_Maes_Anulados.Caption := CosAnularReingresosPersonal;
  FN1_Pers_Maes_Anulados.Show;
end;

procedure TFN1_Pers_Ingreso.FormCreate(Sender: TObject);
Const
	CosEliminarPersonal = 'DELETE FROM GLO_PERSONAL WHERE CONS_PERSONAL = :CONS_PERSONAL';
begin
  inherited;
  //Acciones permitidas de acuerdo con el menú principal
  //padr_acti_modificar.Enabled :=
  Acti_Modi_Confidencial.Enabled := _fmdi.acti_n1_pers_dato_confidenciales.Enabled;
  Acti_Modi_Bajas.Enabled := _fmdi.acti_n1_pers_bajas.Enabled;
  Acti_Modi_Traslados.Enabled := _fmdi.acti_n1_pers_traslados.Enabled;
  Acti_Modi_Reingreso.Enabled := _fmdi.acti_n1_pers_reingresos.Enabled;
  acti_modi_sistema.Enabled := _fmdi.acti_n1_pers_sistema.Enabled;
  //SQL para eliminar
  Eliminar.Close;
  Eliminar.SQL.Clear;
  Eliminar.SQL.Add(CosEliminarPersonal);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : doGridDblClick
Objetivo        : Mostrar las opciones del menú de personal con DobleClick
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 11-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso.doGridDblClick(Sender: TObject);
begin
  //inherited;
  pop_movimientos.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;
{****************************************************************
Procedimiento   : padr_acti_consultarExecute
Objetivo        : Ejecutar la acción de consultar desde el código
                  de la de modificar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso.padr_acti_consultarExecute(Sender: TObject);
begin
  //inherited;
  if padr_acti_modificar.Enabled Then
        padr_acti_modificarExecute(Sender);
end;
{****************************************************************
Procedimiento   : Acti_Modi_ConfidencialUpdate
Objetivo        : Actualizar el estado de la acción de modificaciones
                  confidenciales
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso.Acti_Modi_ConfidencialUpdate(Sender: TObject);
begin
  inherited;
  acti_modi_confidencial.Enabled := (_fmdi.acti_n1_pers_dato_confidenciales.Enabled) and
                (Not Variables.SoloLectura);
end;
{****************************************************************
Procedimiento   : acti_modi_sistemaExecute
Objetivo        : Ejecutar la acción para modificar datos de
                  interacción con el sistema
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso.acti_modi_sistemaExecute(Sender: TObject);
begin
  inherited;
  //Crear la ventana
  Application.CreateForm(Tfn1_pers_sistema, fn1_pers_sistema);
  //Ubicar el registro
  fn1_pers_sistema.Data_Ventana.DataSet.Locate('cons_personal', consulta.FieldByName('cons_personal').asInteger, []);
  fn1_pers_sistema.fram_list_personal.Visible := False;
  fn1_pers_sistema.Spli.Visible := False;
  fn1_pers_sistema.pane_datos.Align := alClient;
end;
{****************************************************************
Procedimiento   : consultaBeforeOpen
Objetivo        : Parametrizar la consulta general para que
                  muestre o no los inactivos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso.consultaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  //Parametros de entrada
  With Consulta do
  Begin
      if acti_modi_ver_activos.Checked Then
         ParamByName('cons_estado').Value := 1
      Else
         ParamByName('cons_estado').Value := 2;
  End;
end;
{****************************************************************
Procedimiento   : acti_modi_ver_activosExecute
Objetivo        : Actualizar la consulta cuando cambie la selección
                  en la acción de mostrar sólamente los activos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso.acti_modi_ver_activosExecute(Sender: TObject);
begin
  inherited;
  //Cerrar y abrir la consulta
  acti_modi_ver_activos.Checked := Not acti_modi_ver_activos.Checked;
  Consulta.Close;
  AbrirDataSet(Consulta);
end;
{****************************************************************
Procedimiento   : acti_modi_sistemaUpdate
Objetivo        : Actualizar el estado de la acción de
                  MODIFICAR DATOS DEL SISTEMA
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso.acti_modi_sistemaUpdate(Sender: TObject);
begin
  inherited;
  acti_modi_sistema.Enabled := (_fmdi.acti_n1_pers_sistema.Enabled) and
                (Not Variables.SoloLectura);
end;

end.
