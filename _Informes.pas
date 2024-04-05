{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{ 05/03/2004 10:41:39 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:39:09 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 26/02/2004 09:40:00 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 26/02/2004 05:43:50 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit _Informes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, QRExport, Printers, DB, DBTables,
  dxfDesigner, TB2Item, TBX, TB2Dock, TB2Toolbar, ZPropLst, StdCtrls,
  Boxes, PCPFrame, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  SoCtrls, dxPageControl, TBXDkPanels, PCPQuickReport, PCPQrLabel,
  PCPQrImage, PCPQRBand, PCPQRForma, ActnList, dxTL, dxDBCtrl, dxDBGrid,
  PCPQrDBText, dfsSplitter, dxDBTLCl, dxGrClms, dsgnintf, DBarQrp,
  PCPQRBarCode, DBarCode, QREDBImage, PCPQRDBImage, QRPrntr, pcpQRControl,
  Menus, TypInfo, RxMemDS, JvExControls, JvComponent, JvGradientHeaderPanel,
  SCLTabs;

  
type
  TFInformes = class(TForm)
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    editar: TdxfDesigner;
    ScrollBox1: TScrollBox;
    _QRPadre: TPCPQuickReport;
    _QRBanda_Page_Header: TPCPQRBand;
    _QRFecha: TQRSysData;
    _QREmpresa: tPCPQrLabel;
    _QRLogo: TPCPQrImage;
    _QRInforme: tPCPQrLabel;
    _QRPagina: TQRSysData;
    _QRPrioridad: tPCPQrLabel;
    _QRLPrioridad: tPCPQrLabel;
    _QRFiltro: tPCPQrLabel;
    _QRBanda_Eslogan: TPCPQRBand;
    _QREslogan: TQRMemo;
    _QRSistema: tPCPQrLabel;
    _QRLine_Eslogan: TPCPQrForma;
    _QRBanda_Firmas: TPCPQRBand;
    _QRS1: TPCPQrForma;
    _QRS2: TPCPQrForma;
    _QRS3: TPCPQrForma;
    _QRS4: TPCPQrForma;
    _QRS5: TPCPQrForma;
    _QRS6: TPCPQrForma;
    _QRFirma1: tPCPQrLabel;
    _QRFirma2: tPCPQrLabel;
    _QRFirma3: tPCPQrLabel;
    _QRFirma4: tPCPQrLabel;
    _QRFirma5: tPCPQrLabel;
    _QRFirma6: tPCPQrLabel;
    _QRBanda_Maestra: TPCPQRBand;
    padr_barr_dock: TTBXDock;
    padr_barr_titulo: TTBXToolbar;
    BInforme: TTBXItem;
    TOpciones: TTable;
    BPropiedades: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    BLeer: TTBXItem;
    BGuardar: TTBXItem;
    TInformes: TTable;
    QExiste_Informe: TQuery;
    QEliminar_Informe: TQuery;
    padr_info_acciones: TActionList;
    Acti_informe: TAction;
    Acti_propiedades: TAction;
    Acti_guar_estructura: TAction;
    Acti_leer_estructura: TAction;
    Acti_salir: TAction;
    TBXSeparatorItem4: TTBXSeparatorItem;
    BSalir: TTBXItem;
    TBXDock1: TTBXDock;
    DBPropiedades_Informes: TTBXDockablePanel;
    QInformes: TQuery;
    DSQInformes: TDataSource;
    QInformesUSUARIO: TStringField;
    QInformesCONS_USUA_INFORME: TIntegerField;
    QInformesNOMB_USUA_INFORME: TStringField;
    QInformesFECH_SISTEMA: TDateTimeField;
    QInformesUSUA_SISTEMA: TStringField;
    Panel1: TPanel;
    FPropiedades: TPCPFrame;
    Panel2: TPanel;
    Label1: TLabel;
    CBComponentes: TsohoComboBox;
    dxPageControl1: TSCLPageControl;
    dxTabSheet1: TSCLTabSheet;
    Propiedades_Componente: TZPropList;
    dfsSplitter1: TdfsSplitter;
    FEstructura_Informes: TPCPFrame;
    DBInformes: TdxDBGrid;
    DBInformesCONS_USUA_INFORME: TdxDBGridMaskColumn;
    DBInformesNOMB_USUA_INFORME: TdxDBGridMaskColumn;
    DBInformesUSUARIO: TdxDBGridMaskColumn;
    DBInformesFECH_SISTEMA: TdxDBGridDateColumn;
    DBInformesUSUA_SISTEMA: TdxDBGridMaskColumn;
    BGuardar_Como: TTBXItem;
    Acti_Guar_Como_Estructura: TAction;
    PCPQRControl1: TPCPQRControl;
    PMComponentes: TTBXPopupMenu;
    TBXItem1: TTBXItem;
    Acti_Elim_Informe: TAction;
    PMInforme: TTBXPopupMenu;
    TBXItem2: TTBXItem;
    TInformesCONS_USUA_INFORME: TIntegerField;
    TInformesCONS_USUA_MODULO: TIntegerField;
    TInformesNOMB_USUA_INFORME: TStringField;
    TInformesCONTROLES: TMemoField;
    TInformesFECH_SISTEMA: TDateTimeField;
    TInformesUSUA_SISTEMA: TStringField;
    JvGradientHeaderPanel3: TJvGradientHeaderPanel;
    shap_xp: TShape;
    _QRLine_Titulo: TPCPQrForma;
    procedure FormCreate(Sender: TObject);
    procedure _QRPadreBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure CBComponentesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Acti_informeExecute(Sender: TObject);
    procedure Acti_propiedadesExecute(Sender: TObject);
    procedure Acti_guar_estructuraExecute(Sender: TObject);
    procedure Acti_salirExecute(Sender: TObject);
    procedure Acti_leer_estructuraExecute(Sender: TObject);
    procedure TInformesBeforePost(DataSet: TDataSet);
    procedure DBInformesDblClick(Sender: TObject);
    procedure BGuardarClick(Sender: TObject);
    procedure BGuardar_ComoClick(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure Acti_Elim_InformeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var_vent_child	: TObject;
    Nombre_Informe_Actual : String;
    Arreglo_Campos : Array [0..2,0..100] of String;
    Arreglo_Componentes : Array of TComponent;
    Opciones_Impresion : Array [0..12] of String;
    Consulta_General : TQuery;
    Largo : Integer;
    procedure Impresion_General(T_Consulta : TQuery; T_Titulo_Informe : String);
    procedure Elegir_Firmas;

    function Buscar_Componente(Componente : TWinControl; Busqueda : String):TWinControl;overload;
    function Buscar_Componente(Busqueda : String):TComponent;overload;
    //Estilos de la fuente del componente
    function Estilos_Fuente(Componente : TFont):String;
    function Fuentes_Estilo(Estilo : String):TFontStyles;

    function Estilos_Options_BarCode(Opciones : TBarcodeOptions):String;
    function Options_BarCode_Estilo(Opciones : String):TBarcodeOptions;

    //Propiedades de los componentes
    function Propiedades_Generales(Componente : TControl):String;
    function Propiedades_Font(Componente : TComponent):String;
    function Propiedades_Frame(Componente : TComponent):String;
    function Propiedades_Parametros(Componente : TComponent):String;
    function Propiedades(Componente : TComponent):string;

    function Espacio_Enter(Texto : String):String;

    procedure Eliminar_Componentes(Lista : TStringList);
    procedure Crear_Componentes(Lista : TStringList);
    //Asignar propiedades a los componentes
    procedure Asignar_Propiedades(Componente : TComponent; Lista : TStringList);
    procedure Asignar_Propiedades_Generales(Componente : TControl; Lista : TStringList);
    procedure Asignar_Propiedades_Parametros(Componente : TComponent; Lista : TStringList);

    function Guardar_Informe:String;

    procedure Abrir_Informe(Consecutivo : Integer);
  end;

var
  FInformes: TFInformes;

Const
	CosExisteInforme = 'Ya existe el informe %s. Desea sobreescribir el informe?';

implementation

uses _vent_child, _vent_modal_alone, _func_varias, _vari_pcp, _cons_pcp,
  UN1_para_informes, _MDI, _func_pcp, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : Espacio_Enter
Objetivo        : Cambia los enters por espacios
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 21 de julio de 2004
Versión         : pcp4000
*****************************************************************}
function TFInformes.Espacio_Enter(Texto : String):String;
Var
	I : Integer;
begin
	Result := '';
	For I := 1 To Length(Texto) Do
  	If ((Copy(Texto, I, 1) = Chr(13)) Or
    	(Copy(Texto, I, 1) = Chr(10))) Then
    	Result := Result + ' '
    Else
    	Result := Result + Copy(Texto, I, 1);
end;

{****************************************************************
Procedimiento   : Buscar_Componente
Objetivo        : Verifica si existe un componente visual
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Lunes 12 de julio de 2004
Versión         : pcp4000
*****************************************************************}
{***************************OVERLOAD*****************************}
function TFInformes.Buscar_Componente(Componente : TWinControl; Busqueda : String):TWinControl;
Var
	I : Integer;
begin
	//Inicializo el resultado
	Result := nil;
	//Verifico que el parametro de entrada no este vacio
  If (Componente = Nil) Or (Componente.Parent = Nil) Then
  	Exit;
  //Verifico si el nombre del componente es igual a la busqueda
  If Componente.Name = Busqueda Then
  Begin
    Result := Componente;
    Exit;
  End;
  //recorro los Controles del componente (Hijos)
	For I := 0 To Componente.ControlCount - 1 Do
  	If Componente.ControlCount > 0 Then
		Begin
      //Llamo recursivamente si tiene controles (Hijos)
    	If Buscar_Componente(TWinControl(Componente.Controls[I]), Busqueda) <> nil Then
      Begin
				Result := TWinControl(Componente.Controls[I]);
        Exit;
      End;
    End
	  //Verifico si el nombre del componente es igual a la busqueda
    Else If Componente.Controls[I].Name = Busqueda Then
    Begin
      Result := TWinControl(Componente.Controls[I]);
      Exit;
    End;
end;

{****************************************************************
Procedimiento   : Buscar_Componente
Objetivo        : Verifica si existe un componente No visual
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Lunes 12 de julio de 2004
Versión         : pcp4000
*****************************************************************}
{***************************OVERLOAD*****************************}
function TFInformes.Buscar_Componente(Busqueda : String):TComponent;
Var
	I : Integer;
begin
	//Inicializo el resultado
	Result := nil;
  //Recorro los componentes de la forma (Hijos)
	For I := 0 To ComponentCount - 1 Do
	Begin
		If Components[I].Name = Busqueda Then
    Begin
      Result := Components[I];
      Exit;
    End;
  End;
end;

{****************************************************************
Procedimiento   : Propiedades_Parametros
Objetivo        : Devuelve en un string las propiedades de los
									parametros de un query
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Lunes 18 de julio de 2004
Versión         : pcp4000
*****************************************************************}
function TFInformes.Propiedades_Parametros(Componente : TComponent):string;
Var
	I : Integer;
begin
  Result := '';
	For I := 0 To (Componente As TQuery).ParamCount - 1 Do
  Begin
    Result := Result + Componente.Name + '.Params[' + IntToStr(I) + '].Name=' +
    	(Componente As TQuery).Params[I].Name + Chr(13);
    Result := Result + Componente.Name + '.Params[' + IntToStr(I) + '].DataType=' +
    	IntToStr(Integer((Componente As TQuery).Params[I].DataType)) + Chr(13);
    Result := Result + Componente.Name + '.Params[' + IntToStr(I) + '].ParamType=' +
    	IntToStr(Integer((Componente As TQuery).Params[I].ParamType)) + Chr(13);
    Result := Result + Componente.Name + '.Params[' + IntToStr(I) + '].Text=' +
    	(Componente As TQuery).Params[I].Text + Chr(13);
  End;
end;

{****************************************************************
Procedimiento   : propiedades
Objetivo        : Devuelve en un string las propiedades de un componente
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Lunes 12 de julio de 2004
Versión         : pcp4000
*****************************************************************}
function TFInformes.propiedades(Componente : TComponent):string;
Var
  Propiedad : TObject;
  I : Integer;
begin
  Result := Propiedades_Generales(TControl(Componente));
  If IsPublishedProp(Componente, 'DataSource') Then Begin
    Propiedad := GetObjectProp(Componente, 'DataSource');
    If Propiedad <> Nil Then
      Result := Result + Componente.Name + '.DataSource.Name=' + TDataSource(Propiedad).Name + #13;
  End
  else
  If IsPublishedProp(Componente, 'DatabaseName') Then
    Result := Result + Componente.Name + '.DatabaseName=' + GetPropValue(Componente, 'DatabaseName') + Chr(13)
  else
  If IsPublishedProp(Componente, 'Filter') Then
  	Result := Result + Componente.Name + '.Filter=' + VarToStr(GetPropValue(Componente, 'Filter')) + Chr(13);

  If IsPublishedProp(Componente, 'Filtered') Then
    If GetPropValue(Componente, 'Filtered') Then
      Result := Result + Componente.Name + '.Filtered=True' + Chr(13)
  Else
    Result := Result + Componente.Name + '.Filtered=False' + Chr(13);
  If IsPublishedProp(Componente, 'MasterSource') Then Begin
    Propiedad := GetObjectProp(Componente, 'MasterSource');
    If Propiedad <> Nil Then
	    Result := Result + Componente.Name + '.MasterSource.Name=' + TDataSource(Propiedad).Name + Chr(13);
  End;
  If IsPublishedProp(Componente, 'MasterFields') Then
  	Result := Result + Componente.Name + '.MasterFields=' + VarToStr(GetPropValue(Componente, 'MasterFields')) + Chr(13);
  If IsPublishedProp(Componente, 'IndexName') Then
  	Result := Result + Componente.Name + '.IndexName=' + VarToStr(GetPropValue(Componente, 'IndexName')) + Chr(13);
  If IsPublishedProp(Componente, 'IndexFieldNames') Then
  	Result := Result + Componente.Name + '.IndexFieldNames=' + VarToStr(GetPropValue(Componente, 'IndexFieldNames')) + Chr(13);
  If IsPublishedProp(Componente, 'AutoEdit') Then
		If GetPropValue(Componente, 'AutoEdit') Then	Result := Result + Componente.Name + '.AutoEdit=True' + Chr(13)
    Else                                          Result := Result + Componente.Name + '.AutoEdit=False' + Chr(13);
  If IsPublishedProp(Componente, 'AutoCalcFields') Then
		If GetPropValue(Componente, 'AutoCalcFields') Then	Result := Result + Componente.Name + '.AutoCalcFields=True' + Chr(13)
    Else                                          			Result := Result + Componente.Name + '.AutoCalcFields=False' + Chr(13);
  If IsPublishedProp(Componente, 'AutoRefresh') Then
		If GetPropValue(Componente, 'AutoRefresh') Then	Result := Result + Componente.Name + '.AutoRefresh=True' + Chr(13)
    Else                                       			Result := Result + Componente.Name + '.AutoRefresh=False' + Chr(13);
  If IsPublishedProp(Componente, 'CachedUpdates') Then
		If GetPropValue(Componente, 'CachedUpdates') Then	Result := Result + Componente.Name + '.CachedUpdates=True' + Chr(13)
    Else                                      	 			Result := Result + Componente.Name + '.CachedUpdates=False' + Chr(13);
  If IsPublishedProp(Componente, 'Capacity') Then 
  	Result := Result + Componente.Name + '.Capacity=' +  VarToStr(GetPropValue(Componente, 'Capacity')) + Chr(13);
  If IsPublishedProp(Componente, 'DefaultIndex') Then
		If GetPropValue(Componente, 'DefaultIndex') Then	Result := Result + Componente.Name + '.DefaultIndex=True' + Chr(13)
    Else                                      	 			Result := Result + Componente.Name + '.DefaultIndex=False' + Chr(13);
  If IsPublishedProp(Componente, 'Exclusive') Then
		If GetPropValue(Componente, 'Exclusive') Then	Result := Result + Componente.Name + '.Exclusive=True' + Chr(13)
    Else                                   	 			Result := Result + Componente.Name + '.Exclusive=False' + Chr(13);
  If IsPublishedProp(Componente, 'ObjectView') Then
		If GetPropValue(Componente, 'ObjectView') Then	Result := Result + Componente.Name + '.ObjectView=True' + Chr(13)
    Else                                   		 			Result := Result + Componente.Name + '.ObjectView=False' + Chr(13);
  If IsPublishedProp(Componente, 'ParamCheck') Then
		If GetPropValue(Componente, 'ParamCheck') Then	Result := Result + Componente.Name + '.ParamCheck=True' + Chr(13)
    Else                                   		 			Result := Result + Componente.Name + '.ParamCheck=False' + Chr(13);
  If IsPublishedProp(Componente, 'ReadOnly') Then
		If GetPropValue(Componente, 'ReadOnly') Then	Result := Result + Componente.Name + '.ReadOnly=True' + Chr(13)
    Else                                 		 			Result := Result + Componente.Name + '.ReadOnly=False' + Chr(13);
  If IsPublishedProp(Componente, 'RequestLive') Then
		If GetPropValue(Componente, 'RequestLive') Then	Result := Result + Componente.Name + '.RequestLive=True' + Chr(13)
    Else                                 		 				Result := Result + Componente.Name + '.RequestLive=False' + Chr(13);
  If IsPublishedProp(Componente, 'SQL') Then
	Begin
		Propiedad := GetObjectProp(Componente, 'SQL');
  	Result := Result + Componente.Name + '.SQL.Text=' + Espacio_Enter(TStrings(Propiedad).Text) + Chr(13);
    Result := Result + Propiedades_Parametros(Componente);
  End;
  If IsPublishedProp(Componente, 'SessionName') Then
  	Result := Result + Componente.Name + '.SessionName=' + VarToStr(GetPropValue(Componente, 'SessionName')) + Chr(13);
  If IsPublishedProp(Componente, 'StoreDefs') Then
		If GetPropValue(Componente, 'StoreDefs') Then	Result := Result + Componente.Name + '.StoreDefs=True' + Chr(13)
    Else                                 		 		 	Result := Result + Componente.Name + '.StoreDefs=False' + Chr(13);
  If IsPublishedProp(Componente, 'TableName') Then
  	Result := Result + Componente.Name + '.TableName=' + VarToStr(GetPropValue(Componente, 'TableName')) + Chr(13);
  If IsPublishedProp(Componente, 'TableType') Then
  	Result := Result + Componente.Name + '.TableType=' + IntToStr(Integer(GetPropValue(Componente, 'TableType'))) + Chr(13);
  If IsPublishedProp(Componente, 'Tag') Then
  	Result := Result + Componente.Name + '.Tag=' + IntToStr(GetPropValue(Componente, 'Tag')) + Chr(13);
  If IsPublishedProp(Componente, 'UniDirectional') Then
		If GetPropValue(Componente, 'UniDirectional') Then	Result := Result + Componente.Name + '.UniDirectional=True' + Chr(13)
    Else                                 		 					 	Result := Result + Componente.Name + '.UniDirectional=False' + Chr(13);
  If IsPublishedProp(Componente, 'Active') Then
		If GetPropValue(Componente, 'Active') Then	Result := Result + Componente.Name + '.Active=True' + Chr(13)
    Else                               				 	Result := Result + Componente.Name + '.Active=False' + Chr(13);

  If IsPublishedProp(Componente, 'Alignment') Then
	Begin
		Propiedad := GetObjectProp(Componente, 'Alignment');
    If Propiedad <> Nil Then
			Result := Result + Componente.Name + '.Alignment=' + IntToStr(Integer(TAlignment(Propiedad))) + Chr(13);
	End;
  If IsPublishedProp(Componente, 'AlignToBand') Then
		If GetPropValue(Componente, 'AlignToBand') Then	Result := Result + Componente.Name + '.AlignToBand=True' + Chr(13)
    Else                                            Result := Result + Componente.Name + '.AlignToBand=False' + Chr(13);
  If IsPublishedProp(Componente, 'AlignToBottom') Then
		If GetPropValue(Componente, 'AlignToBottom') Then	Result := Result + Componente.Name + '.AlignToBottom=True' + Chr(13)
    Else                                            	Result := Result + Componente.Name + '.AlignToBottom=False' + Chr(13);
  If IsPublishedProp(Componente, 'AutoSize') Then
		If GetPropValue(Componente, 'AutoSize') Then Result := Result + Componente.Name + '.AutoSize=True' + Chr(13)
    Else                                         Result := Result + Componente.Name + '.AutoSize=False' + Chr(13);
  If IsPublishedProp(Componente, 'AutoStretch') Then
		If GetPropValue(Componente, 'AutoStretch') Then Result := Result + Componente.Name + '.AutoStretch=True' + Chr(13)
    Else                                         		Result := Result + Componente.Name + '.AutoStretch=False' + Chr(13);
  If IsPublishedProp(Componente, 'BandType') Then
	Begin
  	Propiedad := GetObjectProp(Componente, 'Bandtype');
		Result := Result + Componente.Name + '.BandType=' + IntToStr(Integer(TQRBandType(Propiedad))) + Chr(13);
  End;
  If IsPublishedProp(Componente, 'BarWidthMM') Then
		Result := Result + Componente.Name + '.BarWidthMM=' + FloatToStr(GetPropValue(Componente, 'BarWidthMM')) + Chr(13);
  If IsPublishedProp(Componente, 'Brush') Then
	Begin
  	Propiedad := GetObjectProp(Componente, 'Brush');
    If Propiedad <> Nil Then
    Begin
      Result := Result + Componente.Name + '.Brush.Color=' + ColorToString(TBrush(Propiedad).Color) + Chr(13);
      Result := Result + Componente.Name + '.Brush.Style=' + IntToStr(Integer(TBrush(Propiedad).Style)) + Chr(13);
    End;  
	End;
  If IsPublishedProp(Componente, 'Caption') Then
		Result := Result + Componente.Name + '.Caption=' + VarToStr(GetPropValue(Componente, 'Caption')) + Chr(13);
  If IsPublishedProp(Componente, 'Center') Then
		If GetPropValue(Componente, 'Center') Then Result := Result + Componente.Name + '.Center=True' + Chr(13)
    Else                                       Result := Result + Componente.Name + '.Center=False' + Chr(13);
  If IsPublishedProp(Componente, 'Color') Then
		Result := Result + Componente.Name + '.Color=' + ColorToString(GetPropValue(Componente, 'Color')) + Chr(13);
  If IsPublishedProp(Componente, 'ColorBar') Then
		Result := Result + Componente.Name + '.ColorBar=' + ColorToString(GetPropValue(Componente, 'ColorBar')) + Chr(13);
  If IsPublishedProp(Componente, 'ColorBK') Then
		Result := Result + Componente.Name + '.ColorBK=' + ColorToString(GetPropValue(Componente, 'ColorBK')) + Chr(13);
//  If IsPublishedProp(Componente, 'Data') Then
//		Result := Result + Componente.Name + '.Data=' + IntTostr(GetPropValue(Componente, 'Data')) + Chr(13);
  If IsPublishedProp(Componente, 'DataField') Then
		Result := Result + Componente.Name + '.DataField=' + VarToStr(GetPropValue(Componente, 'DataField')) + Chr(13);
  If IsPublishedProp(Componente, 'DataSet') Then
	Begin
  	Propiedad := GetObjectProp(Componente, 'DataSet');
		Result := Result + Componente.Name + '.DataSet.Name=' + (Propiedad As TDataSet).Name + Chr(13);
  End;
  If IsPublishedProp(Componente, 'Expression') Then
		Result := Result + Componente.Name + '.Expression=' + VarToStr(GetPropValue(Componente, 'Expression')) + Chr(13);
  If IsPublishedProp(Componente, 'Font') Then
    Result := Result + Propiedades_Font(Componente);
  If IsPublishedProp(Componente, 'FooterBand') Then
		Result := Result + Componente.Name + '.FooterBand.Name=' + (Componente As TQRSubDetail).FooterBand.Name + Chr(13);
  If IsPublishedProp(Componente, 'ForceNewColumn') Then
		If GetPropValue(Componente, 'ForceNewColumn') Then Result := Result + Componente.Name + '.ForceNewColumn=True' + Chr(13)
    Else                                         			 Result := Result + Componente.Name + '.ForceNewColumn=False' + Chr(13);
  If IsPublishedProp(Componente, 'ForceNewPage') Then
		If GetPropValue(Componente, 'ForceNewPage') Then Result := Result + Componente.Name + '.ForceNewpage=True' + Chr(13)
    Else                                         			 Result := Result + Componente.Name + '.ForceNewPage=False' + Chr(13);
  If IsPublishedProp(Componente, 'Frame') Then
    Result := Result + Propiedades_Frame(Componente);
  If IsPublishedProp(Componente, 'HeaderBand') Then
	Begin
  	Propiedad := GetObjectProp(Componente, 'HeaderBand');
    If Propiedad <> Nil Then
			Result := Result + Componente.Name + '.HeaderBand.Name=' + TQRCustomBand(Propiedad).Name + Chr(13);
	End;
  If IsPublishedProp(Componente, 'HeightMM') Then
		Result := Result + Componente.Name + '.HeightMM=' + IntToStr(GetPropValue(Componente, 'HeightMM')) + Chr(13);
  If IsPublishedProp(Componente, 'Mask') Then
		Result := Result + Componente.Name + '.Mask=' + VarToStr(GetPropValue(Componente, 'Mask')) + Chr(13);
  If IsPublishedProp(Componente, 'Transparent') Then
		If GetPropValue(Componente, 'Transparent') Then Result := Result + Componente.Name + '.Transparent=True' + Chr(13)
    Else                                         		Result := Result + Componente.Name + '.Transparent=False' + Chr(13);
  If IsPublishedProp(Componente, 'Pen') Then
  Begin
		Propiedad := GetObjectProp(Componente, 'Pen');
    If Propiedad <> Nil Then
    Begin
      Result := Result + Componente.Name + '.Pen.Color=' + ColorToString((Propiedad As TPen).Color) + Chr(13);
      Result := Result + Componente.Name + '.Pen.Mode=' + IntToStr(Integer((Propiedad As TPen).Mode)) + Chr(13);
      Result := Result + Componente.Name + '.Pen.Style=' + IntToStr(Integer((Propiedad As TPen).Style)) + Chr(13);
      Result := Result + Componente.Name + '.Pen.Width=' + IntToStr((Propiedad As TPen).Width) + Chr(13);
    End;  
  End;
  If IsPublishedProp(Componente, 'Page') Then
	Begin
		Result := Result + Componente.Name + '.Page.BottomMargin=' + FloatToStr((Componente As TQuickRep).Page.BottomMargin) + Chr(13);
		Result := Result + Componente.Name + '.Page.Columns=' + IntToStr((Componente As TQuickRep).Page.Columns) + Chr(13);
		Result := Result + Componente.Name + '.Page.ColumnSpace=' + FloatToStr((Componente As TQuickRep).Page.ColumnSpace) + Chr(13);
		Result := Result + Componente.Name + '.Page.LeftMargin=' + FloatToStr((Componente As TQuickRep).Page.LeftMargin) + Chr(13);
		Result := Result + Componente.Name + '.Page.Length=' + FloatToStr((Componente As TQuickRep).Page.Length) + Chr(13);
		Result := Result + Componente.Name + '.Page.Orientation=' + IntToStr(Integer((Componente As TQuickRep).Page.Orientation)) + Chr(13);
		Result := Result + Componente.Name + '.Page.PaperSize=' + IntToStr(Integer((Componente As TQuickRep).Page.PaperSize)) + Chr(13);
		Result := Result + Componente.Name + '.Page.RightMargin=' + FloatToStr((Componente As TQuickRep).Page.RightMargin) + Chr(13);
		If (Componente As TQuickRep).Page.Ruler Then Result := Result + Componente.Name + '.Page.Ruler=True' + Chr(13)
    Else                                         Result := Result + Componente.Name + '.Page.Ruler=False' + Chr(13);
		Result := Result + Componente.Name + '.Page.TopMargin=' + FloatToStr((Componente As TQuickRep).Page.TopMargin) + Chr(13);
		Result := Result + Componente.Name + '.Page.Width=' + FloatToStr((Componente As TQuickRep).Page.Width) + Chr(13);
	End;
  If IsPublishedProp(Componente, 'ParentFont') Then
		If GetPropValue(Componente, 'ParentFont') Then Result := Result + Componente.Name + '.ParentFont=True' + Chr(13)
    Else                                       	 	 Result := Result + Componente.Name + '.ParentFont=False' + Chr(13);
  If IsPublishedProp(Componente, 'PrinterSettings') Then
  Begin
		Result := Result + Componente.Name + '.PrinterSettings.Copies=' + IntToStr((Componente As TQuickRep).PrinterSettings.Copies) + Chr(13);
		If (Componente As TQuickRep).PrinterSettings.Duplex Then Result := Result + Componente.Name + '.PrinterSettings.Duplex=True' + Chr(13)
    Else                                         	 						 Result := Result + Componente.Name + '.PrinterSettings.Duplex=False' + Chr(13);
		Result := Result + Componente.Name + '.PrinterSettings.FirstPage=' + IntToStr((Componente As TQuickRep).PrinterSettings.FirstPage) + Chr(13);
		Result := Result + Componente.Name + '.PrinterSettings.LastPage=' + IntToStr((Componente As TQuickRep).PrinterSettings.LastPage) + Chr(13);
		Result := Result + Componente.Name + '.Page.OutPutBin=' + IntToStr(Integer((Componente As TQuickRep).PrinterSettings.OutputBin)) + Chr(13);
	End;
  If IsPublishedProp(Componente, 'PrintBefore') Then
		If GetPropValue(Componente, 'PrintBefore') Then Result := Result + Componente.Name + '.PrintBefore=True' + Chr(13)
    Else                                       	 	 	Result := Result + Componente.Name + '.PrintBefore=False' + Chr(13);
  If IsPublishedProp(Componente, 'PrintIfEmpty') Then
		If GetPropValue(Componente, 'PrintIfEmpty') Then Result := Result + Componente.Name + '.PrintIfEmpty=True' + Chr(13)
    Else                                         	 	 Result := Result + Componente.Name + '.PrintIfEmpty=False' + Chr(13);
  If IsPublishedProp(Componente, 'ReportTitle') Then
		Result := Result + Componente.Name + '.ReportTitle=' + VarToStr(GetPropValue(Componente, 'ReportTitle')) + Chr(13);
  If IsPublishedProp(Componente, 'RePrintOnNewPage') Then
		If GetPropValue(Componente, 'RePrintOnNewPage') Then Result := Result + Componente.Name + '.RePrintOnNewPage=True' + Chr(13)
    Else                                         	 	 		 Result := Result + Componente.Name + '.RePrintOnNewPage=False' + Chr(13);
  If IsPublishedProp(Componente, 'ResetAfterprint') Then
		If GetPropValue(Componente, 'ResetAfterprint') Then Result := Result + Componente.Name + '.ResetAfterprint=True' + Chr(13)
    Else                                         	 	 		Result := Result + Componente.Name + '.ResetAfterprint=False' + Chr(13);
  If IsPublishedProp(Componente, 'Rotation') Then
	Begin
		Result := Result + Componente.Name + '.Rotation=' + IntToStr(GetPropValue(Componente, 'Rotation')) + Chr(13);
	End;
  If IsPublishedProp(Componente, 'Shape') Then
	Begin
  	Propiedad := GetObjectProp(Componente, 'Shape');
    If Propiedad <> Nil Then
			Result := Result + Componente.Name + '.Shape=' + IntToStr(Integer(TQRShapeType(Propiedad))) + Chr(13);
	End;
  If IsPublishedProp(Componente, 'ShowProgress') Then
		If GetPropValue(Componente, 'ShowProgress') Then Result := Result + Componente.Name + '.ShowProgress=True' + Chr(13)
    Else                                         	 	 Result := Result + Componente.Name + '.ShowProgress=False' + Chr(13);
  If IsPublishedProp(Componente, 'SnapToGrid') Then
		If GetPropValue(Componente, 'SnapToGrid') Then Result := Result + Componente.Name + '.SnapToGrid=True' + Chr(13)
    Else                                       	 	 Result := Result + Componente.Name + '.SnapToGrid=False' + Chr(13);
  If IsPublishedProp(Componente, 'Stretch') Then
		If GetPropValue(Componente, 'Stretch') Then Result := Result + Componente.Name + '.Stretch=True' + Chr(13)
    Else                                       Result := Result + Componente.Name + '.Stretch=False' + Chr(13);
  If IsPublishedProp(Componente, 'Style') Then
	Begin
  	Propiedad := GetObjectProp(Componente, 'Style');
    If Propiedad <> Nil Then
			Result := Result + Componente.Name + '.Style=' + IntToStr(Integer(TBarcodeStyle(Propiedad))) + Chr(13);
  End;
  If IsPublishedProp(Componente, 'Text') Then
		Result := Result + Componente.Name + '.Text=' + VarToStr(GetPropValue(Componente, 'Text')) + Chr(13);
  If IsPublishedProp(Componente, 'Unit') Then
	Begin
  	Propiedad := GetObjectProp(Componente, 'Unit');
    If Propiedad <> Nil Then
			Result := Result + Componente.Name + '.Unit=' + IntToStr(Integer(TCustomQuickRep(Propiedad).Units)) + Chr(13);
	End;
  If IsPublishedProp(Componente, 'Zoom') Then
		Result := Result + Componente.Name + '.Zoom=' + IntToStr(GetPropValue(Componente, 'Zoom')) + Chr(13);
end;

{****************************************************************
Procedimiento   : Estilos_Options_BarCode
Objetivo        : Devolver el valor de las Opciones de un TPCPQRBarCode
									en un string
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Viernes 2 de julio de 2004
Versión         : pcp4000
*****************************************************************}
function TFInformes.Estilos_Options_BarCode(Opciones : TBarCodeOptions):String;
begin
	Result := '[]';
	If Opciones = [boShowText] Then
  	Result := '[boShowText]'
	Else If Opciones = [boShowText,boCheckCRC] Then
  	Result := '[boShowText,boCheckCRC]'
	Else If Opciones = [boCheckCRC] Then
  	Result := '[boCheckCRC]';
end;

{****************************************************************
Procedimiento   : Options_BarCode_Estilo
Objetivo        : Devolver el valor de las Opciones de un String
									desde un TPCPQRBarCode
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Viernes 2 de julio de 2004
Versión         : pcp4000
*****************************************************************}
function TFInformes.Options_BarCode_Estilo(Opciones : String):TBarcodeOptions;
begin
	Result := [];
	If Opciones = '[boShowText]' Then
  	Result := [boShowText]
	Else If Opciones = '[boShowText,boCheckCRC]' Then
  	Result := [boShowText,boCheckCRC]
	Else If Opciones = '[boCheckCRC]' Then
  	Result := [boCheckCRC];
end;

{****************************************************************
Procedimiento   : Propiedades_General
Objetivo        : Devolver el valor de las propiedades generales de un Componente
									en un String
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Martes 6 de julio de 2004
Versión         : pcp4000
*****************************************************************}
function TFInformes.Propiedades_Generales(Componente : TControl):String;
begin
	Result := '';
	With Componente Do
  Begin
		If (Componente Is TQRLabel) Then
			Result := Result + Name + '.Componente=TQRLabel' + Chr(13)
		Else If (Componente Is TPCPQRLabel) Then
			Result := Result + Name + '.Componente=TPCPQRLabel' + Chr(13)
		Else If (Componente Is TQRImage) Then
			Result := Result + Name + '.Componente=TQRImage' + Chr(13)
		Else If (Componente Is TPCPQRImage) Then
			Result := Result + Name + '.Componente=TPCPQRImage' + Chr(13)
		Else If (Componente Is TQRDBImage) Then
			Result := Result + Name + '.Componente=TQRDBImage' + Chr(13)
		Else If (Componente Is TPCPQRDBImage) Then
			Result := Result + Name + '.Componente=TPCPQRDBImage' + Chr(13)
		Else If (Componente Is TQRShape) Then
			Result := Result + Name + '.Componente=TQRShape' + Chr(13)
		Else If (Componente Is TPCPQRForma) Then
			Result := Result + Name + '.Componente=TPCPQRForma' + Chr(13)
		Else If (Componente Is TPCPQuickReport) Then
			Result := Result + Name + '.Componente=TPCPQuickReport' + Chr(13)
		Else If (Componente Is TQuickRep) Then
			Result := Result + Name + '.Componente=TQuickRep' + Chr(13)
		Else If (Componente Is TPCPQRBand) Then
			Result := Result + Name + '.Componente=TPCPQRBand' + Chr(13)
		Else If (Componente Is TQRBand) Then
			Result := Result + Name + '.Componente=TQRBand' + Chr(13)
		Else If (Componente Is TPCPQRBarCode) Then
			Result := Result + Name + '.Componente=TPCPQRBarCode' + Chr(13)
		Else If (Componente Is TPCPQRDBText) Then
			Result := Result + Name + '.Componente=TPCPQRDBText' + Chr(13)
		Else If (Componente Is TQRDBText) Then
			Result := Result + Name + '.Componente=TQRDBText' + Chr(13)
		Else If (Componente Is TQRSubDetail) Then
			Result := Result + Name + '.Componente=TQRSubDetail' + Chr(13)
		Else If (Componente Is TQRStringsBand) Then
			Result := Result + Name + '.Componente=TQRStringsBand' + Chr(13)
		Else If (Componente Is TQRChildBand) Then
			Result := Result + Name + '.Componente=TQRChildBand' + Chr(13)
		Else If (Componente Is TQRGroup) Then
			Result := Result + Name + '.Componente=TQRGroup' + Chr(13)
		Else If (Componente Is TQRExpr) Then
			Result := Result + Name + '.Componente=TQRExpr' + Chr(13)
		Else If (Componente Is TQRSysData) Then
			Result := Result + Name + '.Componente=TQRSysData' + Chr(13)
		Else If (Componente Is TQRMemo) Then
			Result := Result + Name + '.Componente=TQRMemo' + Chr(13)
		Else If (Componente Is TQRExprMemo) Then
			Result := Result + Name + '.Componente=TQRExprMemo' + Chr(13)
		Else If (Componente Is TQRRichText) Then
			Result := Result + Name + '.Componente=TQRRichText' + Chr(13)
		Else If (Componente Is TQRDBRichText) Then
			Result := Result + Name + '.Componente=TQRDBRichText' + Chr(13)
		Else If (TComponent(Componente) Is TTable) Then
			Result := Result + Name + '.Componente=TTable' + Chr(13)
		Else If (TComponent(Componente) Is TQuery) Then
			Result := Result + Name + '.Componente=TQuery' + Chr(13)
		Else If (TComponent(Componente) Is TRxMemoryData) Then
			Result := Result + Name + '.Componente=TRxMemoryData' + Chr(13)
		Else If (TComponent(Componente) Is TDataSource) Then
			Result := Result + Name + '.Componente=TDataSource' + Chr(13)
		Else If (Componente Is TQREDBImage) Then
			Result := Result + Name + '.Componente=TQREDBImage' + Chr(13);

    Result := Result + 'Nuevo =' + Name + Chr(13);
    Result := Result + Name + '.ClassName=' + ClassName + Chr(13);
    If Not ((TComponent(Componente) Is TTable) Or
      (TComponent(Componente) Is TQuery) Or
      (TComponent(Componente) Is TRxMemoryData) Or
      (TComponent(Componente) Is TDataSource)) Then
    Begin
      Result := Result + (Name + '.Parent.Name=' + Parent.Name) + Chr(13);
      Result := Result + (Name + '.Left=' + IntToStr(Left)) + Chr(13);
      Result := Result + (Name + '.Top=' + IntToStr(Top)) + Chr(13);
      Result := Result + (Name + '.Width=' + IntToStr(Width)) + Chr(13);
      Result := Result + (Name + '.Height=' + IntToStr(Height)) + Chr(13);
      Result := Result + (Name + '.Hint=' + Hint) + Chr(13);
    End;  
  End;
end;

{****************************************************************
Procedimiento   : Propiedades_Font
Objetivo        : Devolver el valor de las propiedades de Font de un Componente
									en un String
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Martes 6 de julio de 2004
Versión         : pcp4000
*****************************************************************}
function TFInformes.Propiedades_Font(Componente : TComponent):String;
Var
	Fuente : TFont;
begin
	Result := '';
  If ((Componente Is TQRLabel) Or (Componente Is TPCPQRLabel)) Then
	Begin
    Result := Result + (Componente.Name + '.Color=' + ColorToString((Componente As TQRLabel).Color)) + Chr(13);
	  Fuente := (Componente As TQRLabel).Font;
  End
  Else If ((Componente Is TQRMemo) Or (Componente Is TQRExprMemo)) Then
	Begin
    Result := Result + (Componente.Name + '.Color=' + ColorToString((Componente As TQRMemo).Color)) + Chr(13);
	  Fuente := (Componente As TQRMemo).Font;
	End
  Else If ((Componente Is TQRDBText) Or (Componente Is TPCPQRDBText)) Then
	Begin
    Result := Result + (Componente.Name + '.Color=' + ColorToString((Componente As TQRDBText).Color)) + Chr(13);
	  Fuente := (Componente As TQRDBText).Font;
  End
  Else If (Componente Is TQRBand) Then
	Begin
    Result := Result + (Componente.Name + '.Color=' + ColorToString((Componente As TQRBand).Color)) + Chr(13);
	  Fuente := (Componente As TQRBand).Font
	End
  Else If (Componente Is TQRSysData) Then
	Begin
    Result := Result + (Componente.Name + '.Color=' + ColorToString((Componente As TQRSysData).Color)) + Chr(13);
	  Fuente := (Componente As TQRSysData).Font
  End
  Else If (Componente Is TPCPQRBarCode) Then
	Begin
    Result := Result + (Componente.Name + '.Color=' + ColorToString((Componente As TPCPQRBarCode).Color)) + Chr(13);
	  Fuente := (Componente As TPCPQRBarCode).Font;
  End
  Else If (Componente Is TQRSubDetail) Then
	Begin
    Result := Result + (Componente.Name + '.Color=' + ColorToString((Componente As TQRSubDetail).Color)) + Chr(13);
	  Fuente := (Componente As TQRSubDetail).Font;
  End
  Else If (Componente Is TQRSTringsBand) Then
	Begin
    Result := Result + (Componente.Name + '.Color=' + ColorToString((Componente As TQRSTringsBand).Color)) + Chr(13);
	  Fuente := (Componente As TQRSTringsBand).Font;
  End
  Else If (Componente Is TQRChildBand) Then
	Begin
    Result := Result + (Componente.Name + '.Color=' + ColorToString((Componente As TQRChildBand).Color)) + Chr(13);
	  Fuente := (Componente As TQRChildBand).Font;
  End
  Else If (Componente Is TQRGroup) Then
	Begin
    Result := Result + (Componente.Name + '.Color=' + ColorToString((Componente As TQRGroup).Color)) + Chr(13);
	  Fuente := (Componente As TQRGroup).Font;
  End
  Else If (Componente Is TQRExpr) Then
	Begin
    Result := Result + (Componente.Name + '.Color=' + ColorToString((Componente As TQRExpr).Color)) + Chr(13);
	  Fuente := (Componente As TQRExpr).Font;
  End
  Else If ((Componente Is TQuickRep) Or (Componente Is TPCPQuickReport))Then
	  Fuente := (Componente As TQuickRep).Font
  Else If (Componente Is TQRRichText) Then
	Begin
    Result := Result + (Componente.Name + '.Color=' + ColorToString((Componente As TQRRichText).Color)) + Chr(13);
	  Fuente := (Componente As TQRRichText).Font;
  End
  Else If (Componente Is TQRDBRichText) Then
	Begin
    Result := Result + (Componente.Name + '.Color=' + ColorToString((Componente As TQRDBRichText).Color)) + Chr(13);
	  Fuente := (Componente As TQRDBRichText).Font;
  End
  Else
  	Exit;
	With Fuente Do
  Begin
    Result := Result + (Componente.Name + '.Font.Color=' + ColorToString(Color)) + Chr(13);
    Result := Result + (Componente.Name + '.Font.Name=' + Name) + Chr(13);
    Result := Result + (Componente.Name + '.Font.Size=' + IntToStr(Size)) + Chr(13);
    Result := Result + (Componente.Name + '.Font.Style=' + Estilos_Fuente(Fuente)) + Chr(13);
  End;
end;

{****************************************************************
Procedimiento   : Propiedades_Frame
Objetivo        : Devolver el valor de las propiedades de Frame de un Componente
									en un String
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Martes 6 de julio de 2004
Versión         : pcp4000
*****************************************************************}
function TFInformes.Propiedades_Frame(Componente : TComponent):String;
Var
	Propiedad_Frame : TQRFrame;
begin
	Result := '';
  If ((Componente Is TQRLabel) Or (Componente Is TPCPQRLabel)) Then
	  Propiedad_Frame := (Componente As TQRLabel).Frame
  Else If ((Componente Is TQRMemo) Or (Componente Is TQRExprMemo)) Then
	  Propiedad_Frame := (Componente As TQRMemo).Frame
  Else If ((Componente Is TQRShape) Or (Componente Is TPCPQRForma)) Then
	  Propiedad_Frame := (Componente As TQRShape).Frame
  Else If ((Componente Is TQRShape) Or (Componente Is TPCPQRForma)) Then
	  Propiedad_Frame := (Componente As TQRShape).Frame
  Else If ((Componente Is TQRImage) Or (Componente Is TPCPQRImage)) Then
	  Propiedad_Frame := (Componente As TQRImage).Frame
  Else If ((Componente Is TQRDBText) Or (Componente Is TPCPQRDBText)) Then
	  Propiedad_Frame := (Componente As TQRDBText).Frame
  Else If (Componente Is TQRBand) Then
	  Propiedad_Frame := (Componente As TQRBand).Frame
  Else If (Componente Is TQRSysData) Then
	  Propiedad_Frame := (Componente As TQRSysData).Frame
  Else If (Componente Is TPCPQRBarCode) Then
	  Propiedad_Frame := (Componente As TPCPQRBarCode).Frame
  Else If ((Componente Is TQRDBImage) Or (Componente Is TPCPQRDBImage) Or
  	(Componente Is TQREDBImage)) Then
	  Propiedad_Frame := (Componente As TQRPrintable).Frame
  Else If (Componente Is TQRSubDetail) Then
	  Propiedad_Frame := (Componente As TQRSubDetail).Frame
  Else If (Componente Is TQRSTringsBand) Then
	  Propiedad_Frame := (Componente As TQRSTringsBand).Frame
  Else If (Componente Is TQRChildBand) Then
	  Propiedad_Frame := (Componente As TQRChildBand).Frame
  Else If (Componente Is TQRGroup) Then
	  Propiedad_Frame := (Componente As TQRGroup).Frame
  Else If (Componente Is TQRExpr) Then
	  Propiedad_Frame := (Componente As TQRExpr).Frame
  Else If ((Componente Is TQuickRep) Or (Componente Is TPCPQuickReport))Then
	  Propiedad_Frame := (Componente As TQuickRep).Frame
  Else If (Componente Is TQRRichText) Then
	  Propiedad_Frame := (Componente As TQRRichText).Frame
  Else If (Componente Is TQRDBRichText) Then
	  Propiedad_Frame := (Componente As TQRDBRichText).Frame
  Else
  	Exit;
	With Propiedad_Frame Do
  Begin
    Result := Result + (Componente.Name + '.Frame.Color=' + ColorToString(Propiedad_Frame.Color)) + Chr(13);
    If Propiedad_Frame.DrawBottom Then Result := Result + (Componente.Name + '.Frame.DrawBottom=True') + Chr(13)
    Else				        		 Result := Result + (Componente.Name + '.Frame.DrawBottom=False') + Chr(13);
    If Propiedad_Frame.DrawLeft Then Result := Result + (Componente.Name + '.Frame.DrawLeft=True') + Chr(13)
    Else				        	 Result := Result + (Componente.Name + '.Frame.DrawLeft=False') + Chr(13);
    If Propiedad_Frame.DrawRight Then Result := Result + (Componente.Name + '.Frame.DrawRight=True') + Chr(13)
    Else				        	 Result := Result + (Componente.Name + '.Frame.DrawRight=False') + Chr(13);
    If Propiedad_Frame.DrawTop Then Result := Result + (Componente.Name + '.Frame.DrawTop=True') + Chr(13)
    Else				        	 Result := Result + (Componente.Name + '.Frame.DrawTop=False') + Chr(13);
    Result := Result + (Componente.Name + '.Frame.Style=' + IntToStr(Integer(Propiedad_Frame.Style))) + Chr(13);
    Result := Result + (Componente.Name + '.Frame.Width=' + IntToStr(Propiedad_Frame.Width)) + Chr(13);
  End;
end;

{****************************************************************
Procedimiento   : Eliminar_Componentes
Objetivo        : Eliminar componentes que no estan en la lista
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Viernes 9 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.Eliminar_Componentes(Lista : TStringList);
Var
	I : Integer;
begin
	I := 0;
  SetEsperaVisible(True);
  Application.ProcessMessages;
	//Recorro los componentes de la forma
	While I <= ComponentCount - 1 Do
  Begin
		ProgresoBarraEstado('Eliminando Componentes...', I, ComponentCount - 1);
    If ((Components[I] Is TPCPQRLabel) Or
    	(Components[I] Is TQRLabel) Or
      (Components[I] Is TQRMemo) Or
      (Components[I] Is TQRExprMemo) Or
		  (Components[I] Is TPCPQRForma) Or
    	(Components[I] Is TQRShape) Or
		  (Components[I] Is TPCPQRImage) Or
    	(Components[I] Is TQRImage) Or
		  (Components[I] Is TPCPQRDBText) Or
    	(Components[I] Is TQRDBText) Or
		  (Components[I] Is TPCPQRBand) Or
    	(Components[I] Is TQRBand) Or
		  (Components[I] Is TQRSysData) Or
		  (Components[I] Is TPCPQRBarCode) Or
		  (Components[I] Is TPCPQRDBImage) Or
    	(Components[I] Is TQRDBImage) Or
      (Components[I] Is TQREDBImage) Or
		  (Components[I] Is TQRSubDetail) Or
		  (Components[I] Is TQRStringsBand) Or
		  (Components[I] Is TQRChildBand) Or
		  (Components[I] Is TQRGroup) Or
		  (Components[I] Is TQRRichText) Or
		  (Components[I] Is TTable) Or
		  (Components[I] Is TQuery) Or
		  (Components[I] Is TRxMemoryData) Or
		  (Components[I] Is TDataSource) Or
      (Components[I] Is TQRDBRichText)) Then
      If Components[I].Tag <> -5 Then
        //Si no existe el componente en la lista lo elimino
        If Lista.Values[Components[I].Name + '.Left'] = '' Then
        Begin
          Components[I].Destroy;
          I := -1;
        End;
    Inc(I);
  End;
  ProgresoBarraEstado;
  SetEsperaVisible(False);
  Application.ProcessMessages;
end;

{****************************************************************
Procedimiento   : Crear_Componentes
Objetivo        : Crear componentes que no estan la lista
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Viernes 9 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.Crear_Componentes(Lista : TStringList);
Var
	I : Integer;
  Existe : TComponent;
  Componente_Parent : TWinControl;
  Nombre_Componente : String;
begin
	SetEsperaVisible(True);
  Application.ProcessMessages;
	//Recorro la lista para buscar los componentes
	For I := 0 To Lista.Count - 1 Do
	Begin
  	ProgresoBarraEstado('Creando Componentes...', I, Lista.Count - 1);
		If Copy(Lista.Strings[I], 1, 7) = 'Nuevo =' Then
    Begin
      //Verifico que no exista el componente
			If ((Buscar_Componente(TWinControl(_QRPadre), Copy(Lista.Strings[I], 8, 100)) = Nil) And
      	(Buscar_Componente(Copy(Lista.Strings[I], 8, 100)) = Nil)) Then
      Begin
        //Almaceno el nombre del componente de la lista
        Nombre_Componente := Copy(Lista.Strings[I], 8, 100);
        //Verifico que el componente tenga parent en la lista
        If Lista.Values[Nombre_Componente + '.Parent.Name'] <> '' Then
          //Busco el comoponente parent y lo asigno a una variable TComponent
	        Componente_Parent := Buscar_Componente(TWinControl(_QRPadre),
          	Lista.Values[Nombre_Componente + '.Parent.Name']);
				//Creo el componente según su clase
        If Lista.Values[Nombre_Componente + '.Componente'] = 'TDataSource' Then
					Existe := TDataSource.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TRxMemoryData' Then
					Existe := TRxMemoryData.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TTable' Then
					Existe := TTable.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQuery' Then
					Existe := TQuery.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRSubDetail' Then
					Existe := TQRSubDetail.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRBand' Then
					Existe := TQRBand.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TPCPQRBand' Then
					Existe := TPCPQRBand.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRGroup' Then
					Existe := TQRGroup.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRChildBand' Then
					Existe := TQRChildBand.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRStringsBand' Then
					Existe := TQRStringsBand.Create(Self)
				/////////////////////////////////////////////////////////////////////////
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRLabel' Then
					Existe := TQRLabel.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TPCPQRLabel' Then
					Existe := TPCPQRLabel.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRImage' Then
					Existe := TQRImage.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TPCPQRImage' Then
					Existe := TPCPQRImage.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TPCPQRDBImage' Then
					Existe := TPCPQRDBImage.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRDBImage' Then
					Existe := TQRDBImage.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQREDBImage' Then
					Existe := TQREDBImage.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRShape' Then
					Existe := TQRShape.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TPCPQrForma' Then
					Existe := TPCPQrForma.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TPCPQRBarCode' Then
					Existe := TPCPQRBarCode.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRDBText' Then
					Existe := TQRDBText.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TPCPQRDBText' Then
					Existe := TPCPQRDBText.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRExpr' Then
					Existe := TQRExpr.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRSysData' Then
					Existe := TQRSysData.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRMemo' Then
					Existe := TQRMemo.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRExprMemo' Then
					Existe := TQRExprMemo.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRRichText' Then
					Existe := TQRRichText.Create(Self)
        Else If Lista.Values[Nombre_Componente + '.Componente'] = 'TQRDBRichText' Then
					Existe := TQRDBRichText.Create(Self);
				//Asigno el nombre del nuevo componente
	      Existe.Name := Nombre_Componente;
				//Asigno el parent del nuevo componente
        If Componente_Parent <> nil Then
		      TControl(Existe).Parent := Componente_Parent;
        If Not (Existe Is TDataSet) Then
					If Lista.Values[Nombre_Componente + '.Hint'] <> '' Then
          	TControl(Existe).Hint := Lista.Values[Nombre_Componente + '.Hint'];
      End;
    End;
  End;
  ProgresoBarraEstado;
  SetEsperaVisible(False);
  Application.ProcessMessages;
end;

{****************************************************************
Procedimiento   : Asignar_Propiedades
Objetivo        : Asignar propiedades de un componente
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Viernes 9 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.Asignar_Propiedades(Componente : TComponent; Lista : TStringList);
Var
	Propiedad : TObject;
  Componente_Busqueda : TComponent;
  var_es_DataSet   : Boolean;
begin
  {RC13--Deshabilitado hasta revisar por qué cambia el parámetro}
  var_es_dataSet := ((Componente Is TTable) Or
      (Componente Is TQuery) Or
      (Componente Is TRxMemoryData) Or
      (Componente Is TDataSource));
  With Componente Do
  Begin
    If Not var_es_dataSet Then
		    Asignar_Propiedades_Generales(TControl(Componente), Lista)
    Else If IsPublishedProp(Componente, 'Active') Then
			SetPropValue(TObject(Componente), 'Active', 0);
    If IsPublishedProp(Componente, 'DataSource') Then
			If Lista.Values[Componente.Name + '.DataSource.Name'] <> '' Then
      Begin
        Propiedad := GetObjectProp(Componente, 'DataSource');
        Componente_Busqueda := Buscar_Componente(Lista.Values[Componente.Name + '.DataSource.Name']);
        SetObjectProp(TObject(Componente), 'DataSource', TObject(Componente_Busqueda));
      End;
    If IsPublishedProp(Componente, 'DatabaseName') Then
			If Lista.Values[Componente.Name + '.DatabaseName'] <> '' Then
        SetPropValue(TObject(Componente), 'DatabaseName', Lista.Values[Componente.Name + '.DatabaseName']);
    If IsPublishedProp(Componente, 'Filter') Then
			If Lista.Values[Componente.Name + '.Filter'] <> '' Then
        SetPropValue(TObject(Componente), 'Filter', Lista.Values[Componente.Name + '.Filter']);
    If IsPublishedProp(Componente, 'Filtered') Then
			If Lista.Values[Componente.Name + '.Filtered'] = 'True' Then SetPropValue(TObject(Componente), 'Filtered', 1)
			Else If Lista.Values[Componente.Name + '.Filtered'] = 'False' Then SetPropValue(TObject(Componente), 'Filtered', 0);
    If IsPublishedProp(Componente, 'MasterSource') Then
			If Lista.Values[Componente.Name + '.MasterSource.Name'] <> '' Then
      Begin
        Propiedad := GetObjectProp(Componente, 'MasterSource');
        Componente_Busqueda := Buscar_Componente(Lista.Values[Componente.Name + '.MasterSource.Name']);
        SetObjectProp(TObject(Componente), 'MasterSource', TObject(Componente_Busqueda));
      End;
    If IsPublishedProp(Componente, 'MasterFields') Then
			If Lista.Values[Componente.Name + '.MasterFields'] <> '' Then
        SetPropValue(TObject(Componente), 'MasterFields', Lista.Values[Componente.Name + '.MasterFields']);
    If IsPublishedProp(Componente, 'IndexName') Then
			If Lista.Values[Componente.Name + '.IndexName'] <> '' Then
        SetPropValue(TObject(Componente), 'IndexName', Lista.Values[Componente.Name + '.IndexName']);
    If IsPublishedProp(Componente, 'IndexFieldNames') Then
			If Lista.Values[Componente.Name + '.IndexFieldNames'] <> '' Then
        SetPropValue(TObject(Componente), 'IndexFieldNames', Lista.Values[Componente.Name + '.IndexFieldNames']);
    If IsPublishedProp(Componente, 'AutoEdit') Then
			If Lista.Values[Componente.Name + '.AutoEdit'] = 'True' Then SetPropValue(TObject(Componente), 'AutoEdit', 1)
			Else If Lista.Values[Componente.Name + '.AutoEdit'] = 'False' Then SetPropValue(TObject(Componente), 'AutoEdit', 0);
    If IsPublishedProp(Componente, 'AutoCalcFields') Then
			If Lista.Values[Componente.Name + '.AutoCalcFields'] = 'True' Then SetPropValue(TObject(Componente), 'AutoCalcFields', 1)
			Else If Lista.Values[Componente.Name + '.AutoCalcFields'] = 'False' Then SetPropValue(TObject(Componente), 'AutoCalcFields', 0);
    If IsPublishedProp(Componente, 'AutoRefresh') Then
			If Lista.Values[Componente.Name + '.AutoRefresh'] = 'True' Then SetPropValue(TObject(Componente), 'AutoRefresh', 1)
			Else If Lista.Values[Componente.Name + '.AutoRefresh'] = 'False' Then SetPropValue(TObject(Componente), 'AutoRefresh', 0);
    If IsPublishedProp(Componente, 'CachedUpdates') Then
			If Lista.Values[Componente.Name + '.CachedUpdates'] = 'True' Then SetPropValue(TObject(Componente), 'CachedUpdates', 1)
			Else If Lista.Values[Componente.Name + '.CachedUpdates'] = 'False' Then SetPropValue(TObject(Componente), 'CachedUpdates', 0);
    If IsPublishedProp(Componente, 'Capacity') Then
			If Lista.Values[Componente.Name + '.Capacity'] <> '' Then
        SetPropValue(TObject(Componente), 'Capacity', StrToInt(Lista.Values[Componente.Name + '.Capacity']));
    If IsPublishedProp(Componente, 'DefaultIndex') Then
			If Lista.Values[Componente.Name + '.DefaultIndex'] = 'True' Then SetPropValue(TObject(Componente), 'DefaultIndex', 1)
			Else If Lista.Values[Componente.Name + '.DefaultIndex'] = 'False' Then SetPropValue(TObject(Componente), 'DefaultIndex', 0);
    If IsPublishedProp(Componente, 'Exclusive') Then
			If Lista.Values[Componente.Name + '.Exclusive'] = 'True' Then SetPropValue(TObject(Componente), 'Exclusive', 1)
			Else If Lista.Values[Componente.Name + '.Exclusive'] = 'False' Then SetPropValue(TObject(Componente), 'Exclusive', 0);
    If IsPublishedProp(Componente, 'ObjectView') Then
			If Lista.Values[Componente.Name + '.ObjectView'] = 'True' Then SetPropValue(TObject(Componente), 'ObjectView', 1)
			Else If Lista.Values[Componente.Name + '.ObjectView'] = 'False' Then SetPropValue(TObject(Componente), 'ObjectView', 0);
    If IsPublishedProp(Componente, 'ParamCheck') Then
			If Lista.Values[Componente.Name + '.ParamCheck'] = 'True' Then SetPropValue(TObject(Componente), 'ParamCheck', 1)
			Else If Lista.Values[Componente.Name + '.ParamCheck'] = 'False' Then SetPropValue(TObject(Componente), 'ParamCheck', 0);
    If IsPublishedProp(Componente, 'ReadOnly') Then
			If Lista.Values[Componente.Name + '.ReadOnly'] = 'True' Then SetPropValue(TObject(Componente), 'ReadOnly', 1)
			Else If Lista.Values[Componente.Name + '.ReadOnly'] = 'False' Then SetPropValue(TObject(Componente), 'ReadOnly', 0);
    If IsPublishedProp(Componente, 'RequestLive') Then
			If Lista.Values[Componente.Name + '.RequestLive'] = 'True' Then SetPropValue(TObject(Componente), 'RequestLive', 1)
			Else If Lista.Values[Componente.Name + '.RequestLive'] = 'False' Then SetPropValue(TObject(Componente), 'RequestLive', 0);
    If IsPublishedProp(Componente, 'SQL') Then
			If Lista.Values[Componente.Name + '.SQL.Text'] <> '' Then
      Begin
        Propiedad := GetObjectProp(Componente, 'SQL');
				TStringList(Propiedad).Add(Lista.Values[Componente.Name + '.SQL.Text']);
        Asignar_Propiedades_Parametros(Componente, Lista);
      End;

    If IsPublishedProp(Componente, 'SessionName') Then
			If Lista.Values[Componente.Name + '.SessionName'] <> '' Then
        SetPropValue(TObject(Componente), 'SessionName', Lista.Values[Componente.Name + '.SessionName']);
    If IsPublishedProp(Componente, 'StoreDefs') Then
			If Lista.Values[Componente.Name + '.StoreDefs'] = 'True' Then SetPropValue(TObject(Componente), 'StoreDefs', 1)
			Else If Lista.Values[Componente.Name + '.StoreDefs'] = 'False' Then SetPropValue(TObject(Componente), 'StoreDefs', 0);
    If IsPublishedProp(Componente, 'TableName') Then
			If Lista.Values[Componente.Name + '.TableName'] <> '' Then
        SetPropValue(TObject(Componente), 'TableName', StrToInt(Lista.Values[Componente.Name + '.TableName']));
    If IsPublishedProp(Componente, 'TableType') Then
			If Lista.Values[Componente.Name + '.TableType'] <> '' Then
        SetPropValue(TObject(Componente), 'TableType', StrToInt(Lista.Values[Componente.Name + '.TableType']));
    If IsPublishedProp(Componente, 'Tag') Then
			If Lista.Values[Componente.Name + '.Tag'] <> '' Then
        SetPropValue(TObject(Componente), 'Tag', StrToInt(Lista.Values[Componente.Name + '.Tag']));
    If IsPublishedProp(Componente, 'UniDirectional') Then
			If Lista.Values[Componente.Name + '.UniDirectional'] = 'True' Then SetPropValue(TObject(Componente), 'UniDirectional', 1)
			Else If Lista.Values[Componente.Name + '.UniDirectional'] = 'False' Then SetPropValue(TObject(Componente), 'UniDirectional', 0);
    If IsPublishedProp(Componente, 'Active') Then
			If Lista.Values[Componente.Name + '.Active'] = 'True' Then SetPropValue(TObject(Componente), 'Active', 1)
			Else If Lista.Values[Componente.Name + '.Active'] = 'False' Then SetPropValue(TObject(Componente), 'Active', 0);;
    If IsPublishedProp(Componente, 'Alignment') Then
			If Lista.Values[Componente.Name + '.Alignment'] <> '' Then
        SetPropValue(TObject(Componente), 'Alignment', TAlignment(StrToInt(Lista.Values[Componente.Name + '.Alignment'])));
    If IsPublishedProp(Componente, 'AlignToBand') Then
			If Lista.Values[Componente.Name + '.AlignToBand'] = 'True' Then SetPropValue(TObject(Componente), 'AlignToBand', 1)
			Else If Lista.Values[Componente.Name + '.AlignToBand'] = 'False' Then SetPropValue(TObject(Componente), 'AlignToBand', 0);
    If IsPublishedProp(Componente, 'AlignToBottom') Then
			If Lista.Values[Componente.Name + '.AlignToBottom'] = 'True' Then SetPropValue(TObject(Componente), 'AlignToBottom', 1)
			Else If Lista.Values[Componente.Name + '.AlignToBottom'] = 'False' Then SetPropValue(TObject(Componente), 'AlignToBottom', 0);
    If IsPublishedProp(Componente, 'AutoSize') Then
			If Lista.Values[Componente.Name + '.AutoSize'] = 'True' Then SetPropValue(TObject(Componente), 'AutoSize', 1)
			Else If Lista.Values[Componente.Name + '.AutoSize'] = 'False' Then SetPropValue(TObject(Componente), 'AutoSize', 0);
    If IsPublishedProp(Componente, 'AutoStretch') Then
      If Lista.Values[Componente.Name + '.AutoStretch'] = 'True' Then SetPropValue(TObject(Componente), 'AutoStretch', 1)
      Else If Lista.Values[Componente.Name + '.AutoStretch'] = 'False' Then SetPropValue(TObject(Componente), 'AutoStretch', 0);
    If IsPublishedProp(Componente, 'BandType') Then
			If Lista.Values[Componente.Name + '.BandType'] <> '' Then
        SetPropValue(TObject(Componente), 'BandType', TQRBandType(StrToInt(Lista.Values[Componente.Name + '.BandType'])));
    If IsPublishedProp(Componente, 'BarWidthMM') Then
			If Lista.Values[Componente.Name + '.BarWidthMM'] <> '' Then
        SetPropValue(TObject(Componente), 'BarWidthMM', StrToFloat(Lista.Values[Componente.Name + '.BarWidthMM']));
    If IsPublishedProp(Componente, 'Brush') Then
			If Lista.Values[Componente.Name + '.Brush.Color'] <> '' Then
      Begin
        Propiedad := GetObjectProp(Componente, 'Brush');
        SetPropValue(Propiedad, 'Color', StringToColor(Lista.Values[Componente.Name + '.Brush.Color']));
        SetPropValue(Propiedad, 'Style', TBrushStyle(StrToInt(Lista.Values[Componente.Name + '.Brush.Style'])));
      End;
    If IsPublishedProp(Componente, 'Caption') Then
			If Lista.Values[Componente.Name + '.Caption'] <> '' Then
        SetPropValue(TObject(Componente), 'Caption', Lista.Values[Componente.Name + '.Caption']);
    If IsPublishedProp(Componente, 'Center') Then
			If Lista.Values[Componente.Name + '.Center'] = 'True' Then SetPropValue(TObject(Componente), 'Center', 1)
			Else If Lista.Values[Componente.Name + '.Center'] = 'False' Then SetPropValue(TObject(Componente), 'Center', 0);
    If IsPublishedProp(Componente, 'Color') Then
			If Lista.Values[Componente.Name + '.Color'] <> '' Then
        SetPropValue(TObject(Componente), 'Color', StringToColor(Lista.Values[Componente.Name + '.Color']));
    If IsPublishedProp(Componente, 'ColorBar') Then
			If Lista.Values[Componente.Name + '.ColorBar'] <> '' Then
        SetPropValue(TObject(Componente), 'ColorBar', StringToColor(Lista.Values[Componente.Name + '.ColorBar']));
    If IsPublishedProp(Componente, 'ColorBK') Then
			If Lista.Values[Componente.Name + '.ColorBK'] <> '' Then
        SetPropValue(TObject(Componente), 'ColorBK', StringToColor(Lista.Values[Componente.Name + '.ColorBar']));
    If IsPublishedProp(Componente, 'Data') Then
			If Lista.Values[Componente.Name + '.Data'] <> '' Then
		    SetPropValue(TObject(Componente), 'Data', StrToInt(Lista.Values[Componente.Name + '.Data']));
    If IsPublishedProp(Componente, 'DataField') Then
			If Lista.Values[Componente.Name + '.DataField'] <> '' Then
        SetPropValue(TObject(Componente), 'DataField', Lista.Values[Componente.Name + '.DataField']);
    If (IsPublishedProp(Componente, 'DataSet')) Then
			If Lista.Values[Componente.Name + '.DataSet.Name'] <> '' Then
			Begin
        Componente_Busqueda := Buscar_Componente(Lista.Values[Componente.Name + '.DataSet.Name']);
        SetObjectProp(TObject(Componente), 'DataSet', TObject(Componente_Busqueda));
      End;
    If IsPublishedProp(Componente, 'Enabled') Then
      If Lista.Values[Componente.Name + '.Enabled'] = 'True' Then SetPropValue(TObject(Componente), 'Enabled', 1)
      Else If Lista.Values[Componente.Name + '.Enabled'] = 'False' Then SetPropValue(TObject(Componente), 'Enabled', 0);
    If IsPublishedProp(Componente, 'Expression') Then
			If Lista.Values[Componente.Name + '.Expression'] <> '' Then
        SetPropValue(TObject(Componente), 'Expression', Lista.Values[Componente.Name + '.Expression']);
    If IsPublishedProp(Componente, 'Font') Then
			If Lista.Values[Componente.Name + '.Font.Color'] <> '' Then
			Begin
        Propiedad := GetObjectProp(Componente, 'Font');
				SetPropValue(Propiedad, 'Color', StringToColor(Lista.Values[Componente.Name + '.Font.Color']));
        If Lista.Values[Componente.Name + '.Font.Name'] <> '' Then
					SetPropValue(Propiedad, 'Name', Lista.Values[Componente.Name + '.Font.Name']);
        If Lista.Values[Componente.Name + '.Font.Size'] <> '' Then
					SetPropValue(Propiedad, 'Size', StrToInt(Lista.Values[Componente.Name + '.Font.Size']));
        If Lista.Values[Componente.Name + '.Font.Style'] <> '' Then
					TFont(Propiedad).Style := Fuentes_Estilo(Lista.Values[Componente.Name + '.Font.Style']);
      End;
    If IsPublishedProp(Componente, 'FooterBand') Then
			If Lista.Values[Componente.Name + '.FooterBand.Name'] <> '' Then
      Begin
        Propiedad := GetObjectProp(Componente, 'FooterBand');
				Propiedad := TQRCustomBand(FindComponent(Lista.Values[Componente.Name + '.FooterBand.Name']));
      End;
    If IsPublishedProp(Componente, 'ForceNewColumn') Then
      If Lista.Values[Componente.Name + '.ForceNewColumn'] = 'True' Then SetPropValue(TObject(Componente), 'ForceNewColumn', 1)
      Else If Lista.Values[Componente.Name + '.ForceNewColumn'] = 'False' Then SetPropValue(TObject(Componente), 'ForceNewColumn', 0);
    If IsPublishedProp(Componente, 'ForceNewPage') Then
      If Lista.Values[Componente.Name + '.ForceNewPage'] = 'True' Then SetPropValue(TObject(Componente), 'ForceNewPage', 1)
      Else If Lista.Values[Componente.Name + '.ForceNewPage'] = 'False' Then SetPropValue(TObject(Componente), 'ForceNewPage', 0);
    If IsPublishedProp(Componente, 'Frame') Then
			If Lista.Values[Componente.Name + '.Frame.Color'] <> '' Then
      Begin
        Propiedad := GetObjectProp(Componente, 'Frame');
        SetPropValue(Propiedad, 'Color', StringToColor(Lista.Values[Componente.Name + '.Frame.Color']));

        If Lista.Values[Componente.Name + '.Frame.DrawBottom'] = 'True' Then SetPropValue(Propiedad, 'DrawBottom', 1)
        Else If Lista.Values[Componente.Name + '.Frame.DrawBottom'] = 'False' Then SetPropValue(Propiedad, 'DrawBottom', 0);
        If Lista.Values[Componente.Name + '.Frame.DrawLeft'] = 'True' Then SetPropValue(Propiedad, 'DrawLeft', 1)
        Else If Lista.Values[Componente.Name + '.Frame.DrawLeft'] = 'False' Then SetPropValue(Propiedad, 'DrawLeft', 0);
        If Lista.Values[Componente.Name + '.Frame.DrawRight'] = 'True' Then SetPropValue(Propiedad, 'DrawRight', 1)
        Else If Lista.Values[Componente.Name + '.Frame.DrawRight'] = 'False' Then SetPropValue(Propiedad, 'DrawRight', 0);
        If Lista.Values[Componente.Name + '.Frame.DrawTop'] = 'True' Then SetPropValue(Propiedad, 'DrawTop', 1)
        Else If Lista.Values[Componente.Name + '.Frame.DrawTop'] = 'False' Then SetPropValue(Propiedad, 'DrawTop', 0);

        If Lista.Values[Name + '.Frame.Style'] <> '' Then
	        SetPropValue(Propiedad, 'Style', TPenStyle(StrToInt(Lista.Values[Componente.Name + '.Frame.Style'])));
        If Lista.Values[Name + '.Frame.Width'] <> '' Then
	        SetPropValue(Propiedad, 'Width', StrToInt(Lista.Values[Componente.Name + '.Frame.Width']));
      End;

    If IsPublishedProp(Componente, 'Transparent') Then
		Begin
			If Lista.Values[Componente.Name + '.Transparent'] = 'True' Then SetPropValue(TObject(Componente), 'Transparent', 1)
			Else If Lista.Values[Componente.Name + '.Transparent'] = 'False' Then SetPropValue(TObject(Componente), 'Transparent', 0);
    End;
    If IsPublishedProp(Componente, 'HeaderBand') Then
      If Lista.Values[Name + '.HeaderBand.Name'] <> '' Then
      Begin
        Propiedad := GetObjectProp(Componente, 'HeaderBand');
        Propiedad := TQRCustomBand(FindComponent(Lista.Values[Componente.Name + '.HeaderBand.Name']));
      End;
    If IsPublishedProp(Componente, 'HeightMM') Then
      If Lista.Values[Name + '.HeightMM'] <> '' Then
        SetPropValue(TObject(Componente), 'HeightMM', StrToInt(Lista.Values[Componente.Name + '.HeightMM']));
    If IsPublishedProp(Componente, 'Mask') Then
      If Lista.Values[Name + '.Mask'] <> '' Then
        SetPropValue(TObject(Componente), 'Mask', Lista.Values[Componente.Name + '.Mask']);
    If IsPublishedProp(Componente, 'Pen') Then
    Begin
      Propiedad := GetObjectProp(Componente, 'Pen');
			If Lista.Values[Componente.Name + '.Pen.Color'] <> '' Then
	      SetPropValue(Propiedad, 'Color', StringToColor(Lista.Values[Componente.Name + '.Pen.Color']));
			If Lista.Values[Componente.Name + '.Pen.Mode'] <> '' Then
	      SetPropValue(Propiedad, 'Mode', TPenMode(StrToInt(Lista.Values[Componente.Name + '.Pen.Mode'])));
			If Lista.Values[Componente.Name + '.Pen.Style'] <> '' Then
	      SetPropValue(Propiedad, 'Style', TPenStyle(StrToInt(Lista.Values[Componente.Name + '.Pen.Style'])));
			If Lista.Values[Componente.Name + '.Pen.Width'] <> '' Then
	      SetPropValue(Propiedad, 'Width', StrToInt(Lista.Values[Componente.Name + '.Pen.Width']));
    End;
    If IsPublishedProp(Componente, 'Page') Then
    Begin
      Propiedad := GetObjectProp(Componente, 'Page');
			If Lista.Values[Componente.Name + '.Page.BottomMargin'] <> '' Then
	      SetPropValue(Propiedad, 'BottomMargin', StrToFloat(Lista.Values[Componente.Name + '.Page.BottomMargin']));
			If Lista.Values[Componente.Name + '.Page.Columns'] <> '' Then
	      SetPropValue(Propiedad, 'Columns', StrToInt(Lista.Values[Componente.Name + '.Page.Columns']));
			If Lista.Values[Componente.Name + '.Page.BottomMargin'] <> '' Then
	      SetPropValue(Propiedad, 'ColumnSpace', StrToFloat(Lista.Values[Componente.Name + '.Page.ColumnSpace']));
			If Lista.Values[Componente.Name + '.Page.LeftMargin'] <> '' Then
	      SetPropValue(Propiedad, 'LeftMargin', StrToFloat(Lista.Values[Componente.Name + '.Page.LeftMargin']));
			If Lista.Values[Componente.Name + '.Page.Length'] <> '' Then
	      SetPropValue(Propiedad, 'Length', StrToFloat(Lista.Values[Componente.Name + '.Page.Length']));
			If Lista.Values[Componente.Name + '.Page.Orientation'] <> '' Then
	      SetPropValue(Propiedad, 'Orientation', TPrinterOrientation(StrToInt(Lista.Values[Componente.Name + '.Page.Orientation'])));
			If Lista.Values[Componente.Name + '.Page.PaperSize'] <> '' Then
	      SetPropValue(Propiedad, 'PaperSize', TQRPaperSize(StrToInt(Lista.Values[Componente.Name + '.Page.PaperSize'])));
			If Lista.Values[Componente.Name + '.Page.RightMargin'] <> '' Then
	      SetPropValue(Propiedad, 'RightMargin', StrToFloat(Lista.Values[Componente.Name + '.Page.RightMargin']));

			If Lista.Values[Componente.Name + '.Page.Ruler'] = 'True' Then 			 SetPropValue(Propiedad, 'Ruler', 1)
      Else If Lista.Values[Componente.Name + '.Page.Ruler'] = 'False' Then SetPropValue(Propiedad, 'Ruler', 0);

			If Lista.Values[Componente.Name + '.Page.TopMargin'] <> '' Then
	      SetPropValue(Propiedad, 'TopMargin', StrToFloat(Lista.Values[Componente.Name + '.Page.TopMargin']));
			If Lista.Values[Componente.Name + '.Page.Width'] <> '' Then
	      SetPropValue(Propiedad, 'Width', StrToFloat(Lista.Values[Componente.Name + '.Page.Width']));
    End;
    If IsPublishedProp(Componente, 'ParentFont') Then
			If Lista.Values[Componente.Name + '.ParentFont'] = 'True' Then SetPropValue(TObject(Componente), 'ParentFont', 1)
      Else If Lista.Values[Componente.Name + '.ParentFont'] = 'False' Then SetPropValue(TObject(Componente), 'ParentFont', 0);
    If IsPublishedProp(Componente, 'PrinterSettings') Then
    Begin
      Propiedad := GetObjectProp(Componente, 'PrinterSettings');
			If Lista.Values[Componente.Name + '.PrinterSettings.Copies'] <> '' Then
	      SetPropValue(Propiedad, 'Copies', StrToInt(Lista.Values[Componente.Name + '.PrinterSettings.Copies']));

			If Lista.Values[Componente.Name + '.PrinterSettings.Duplex'] = 'True' Then SetPropValue(Propiedad, 'Duplex', 1)
      Else If Lista.Values[Componente.Name + '.PrinterSettings.Duplex'] = 'False' Then SetPropValue(Propiedad, 'Duplex', 0);

			If Lista.Values[Componente.Name + '.PrinterSettings.LastPage'] <> '' Then
	      SetPropValue(Propiedad, 'LastPage', StrToInt(Lista.Values[Componente.Name + '.PrinterSettings.LastPage']));
			If Lista.Values[Componente.Name + '.PrinterSettings.FirstPage'] <> '' Then
	      SetPropValue(Propiedad, 'FirstPage', StrToInt(Lista.Values[Componente.Name + '.PrinterSettings.FirstPage']));
			If Lista.Values[Componente.Name + '.PrinterSettings.OutPutBin'] <> '' Then
	      SetPropValue(Propiedad, 'OutPutBin', TQRBin(StrToInt(Lista.Values[Componente.Name + '.PrinterSettings.OutPutBin'])));
    End;
    If IsPublishedProp(Componente, 'PrintBefore') Then
			If Lista.Values[Componente.Name + '.PrintBefore'] = 'True' Then SetPropValue(TObject(Componente), 'PrintBefore', 1)
      Else If Lista.Values[Componente.Name + '.PrintBefore'] = 'False' Then SetPropValue(TObject(Componente), 'PrintBefore', 0);

    If IsPublishedProp(Componente, 'PrintIfEmpty') Then
			If Lista.Values[Componente.Name + '.PrintIfEmpty'] = 'True' Then SetPropValue(TObject(Componente), 'PrintIfEmpty', 1)
      Else If Lista.Values[Componente.Name + '.PrintIfEmpty'] = 'False' Then SetPropValue(TObject(Componente), 'PrintIfEmpty', 0);
    If IsPublishedProp(Componente, 'ReportTitle') Then
    	If Lista.Values[Componente.Name + '.ReportTitle'] <> '' Then
	      SetPropValue(TObject(Componente), 'ReportTitle', Lista.Values[Componente.Name + '.ReportTitle']);
    If IsPublishedProp(Componente, 'RePrintOnNewPage') Then
			If Lista.Values[Componente.Name + '.RePrintOnNewPage'] = 'True' Then SetPropValue(TObject(Componente), 'RePrintOnNewPage', 1)
      Else If Lista.Values[Componente.Name + '.RePrintOnNewPage'] = 'False' Then SetPropValue(TObject(Componente), 'RePrintOnNewPage', 0);
    If IsPublishedProp(Componente, 'ResetAfterprint') Then
			If Lista.Values[Componente.Name + '.ResetAfterprint'] = 'True' Then SetPropValue(TObject(Componente), 'ResetAfterprint', 1)
      Else If Lista.Values[Componente.Name + '.ResetAfterprint'] = 'False' Then SetPropValue(TObject(Componente), 'ResetAfterprint', 0);
    If IsPublishedProp(Componente, 'Rotation') Then
    	If Lista.Values[Componente.Name + '.Rotation'] <> '' Then
		    SetPropValue(TObject(Componente), 'Rotation', StrToInt(Lista.Values[Componente.Name + '.ReportTitle']));
    If IsPublishedProp(Componente, 'Shape') Then
    	If Lista.Values[Componente.Name + '.Shape'] <> '' Then
		    SetPropValue(TObject(Componente), 'Shape', TQRShapeType(StrToInt(Lista.Values[Componente.Name + '.Shape'])));
    If IsPublishedProp(Componente, 'ShowProgress') Then
			If Lista.Values[Componente.Name + '.ShowProgress'] = 'True' Then SetPropValue(TObject(Componente), 'ShowProgress', 1)
      Else If Lista.Values[Componente.Name + '.ShowProgress'] = 'False' Then SetPropValue(TObject(Componente), 'ShowProgress', 0);
    If IsPublishedProp(Componente, 'SnapToGrid') Then
			If Lista.Values[Componente.Name + '.SnapToGrid'] = 'True' Then SetPropValue(TObject(Componente), 'SnapToGrid', 1)
      Else If Lista.Values[Componente.Name + '.SnapToGrid'] = 'False' Then SetPropValue(TObject(Componente), 'SnapToGrid', 0);
    If IsPublishedProp(Componente, 'Stretch') Then
			If Lista.Values[Componente.Name + '.Stretch'] = 'True' Then SetPropValue(TObject(Componente), 'Stretch', 1)
      Else If Lista.Values[Componente.Name + '.Stretch'] = 'False' Then SetPropValue(TObject(Componente), 'Stretch', 0);
    If IsPublishedProp(Componente, 'Style') Then
    	If Lista.Values[Componente.Name + '.Style'] <> '' Then
		    SetPropValue(TObject(Componente), 'Style', TBarcodeStyle(StrToInt(Lista.Values[Componente.Name + '.Style'])));
    If IsPublishedProp(Componente, 'Text') Then
    	If Lista.Values[Componente.Name + '.Text'] <> '' Then
		    SetPropValue(TObject(Componente), 'Text', Lista.Values[Componente.Name + '.Text']);
    If IsPublishedProp(Componente, 'Unit') Then
    	If Lista.Values[Componente.Name + '.Unit'] <> '' Then
		    SetPropValue(TObject(Componente), 'Unit', StrToInt(Lista.Values[Componente.Name + '.Unit']));
    If IsPublishedProp(Componente, 'Zoom') Then
    	If Lista.Values[Componente.Name + '.Zoom'] <> '' Then
		    SetPropValue(TObject(Componente), 'Zoom', StrToInt(Lista.Values[Componente.Name + '.Zoom']));
  End; 
end;

{****************************************************************
Procedimiento   : Asignar_Propiedades_Generales
Objetivo        : Asignar propiedades generales de un componente
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Viernes 9 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.Asignar_Propiedades_Generales(Componente : TControl; Lista : TStringList);
begin
  If Not ((Componente.ClassType = TTable) Or
    (Componente.ClassType = TQuery) Or
    (Componente.ClassType = TRxMemoryData) Or
    (Componente.ClassType = TDataSource)) Then
    With Componente Do
    Begin
      If Lista.Values[Componente.Name + '.Parent.Name'] <> '' Then
        Parent.Name := Lista.Values[Componente.Name + '.Parent.Name'];
      If Lista.Values[Componente.Name + '.Hint'] <> '' Then
        Hint := Lista.Values[Componente.Name + '.Hint'];
      If Lista.Values[Componente.Name + '.Left'] <> '' Then
        Left := StrToInt(Lista.Values[Componente.Name + '.Left']);
      If Lista.Values[Componente.Name + '.Top'] <> '' Then
        Top := StrToInt(Lista.Values[Componente.Name + '.Top']);
      If Lista.Values[Componente.Name + '.Width'] <> '' Then
        Width := StrToInt(Lista.Values[Componente.Name + '.Width']);
      If Lista.Values[Componente.Name + '.Height'] <> '' Then
        Height := StrToInt(Lista.Values[Componente.Name + '.Height']);
    End;
end;

{****************************************************************
Procedimiento   : Asignar_Propiedades_Parametros
Objetivo        : Asignar propiedades de parametros de un query
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Lunes 18 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.Asignar_Propiedades_Parametros(Componente : TComponent; Lista : TStringList);
Var
	I : Integer;
begin
	For I := 0 To (Componente As TQuery).ParamCount - 1 Do
  Begin
		If Lista.Values[Componente.Name + '.Params[' + IntToStr(I) + '].Name'] <> '' Then
			(Componente As TQuery).Params[I].Name := Lista.Values[Componente.Name + '.Params[' + IntToStr(I) + '].Name'];
		If Lista.Values[Componente.Name + '.Params[' + IntToStr(I) + '].DataType'] <> '' Then
			(Componente As TQuery).Params[I].DataType :=
      	TFieldtype(StrToInt(Lista.Values[Componente.Name + '.Params[' + IntToStr(I) + '].DataType']));
		If Lista.Values[Componente.Name + '.Params[' + IntToStr(I) + '].ParamType'] <> '' Then
			(Componente As TQuery).Params[I].ParamType :=
      	TParamType(StrToInt(Lista.Values[Componente.Name + '.Params[' + IntToStr(I) + '].ParamType']));
		If Lista.Values[Componente.Name + '.Params[' + IntToStr(I) + '].Text'] <> '' Then
			(Componente As TQuery).Params[I].Text := Lista.Values[Componente.Name + '.Params[' + IntToStr(I) + '].Text'];
  End;
end;

{****************************************************************
Procedimiento   : Abrir_Informe
Objetivo        : Abrir Informe y asignar propiedades a los controles
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 30 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.Abrir_Informe(Consecutivo : Integer);
Var
	I : Integer;
  Lista : TStringList;
begin
  //Verifico que la tabla de informes este abierta
	If Not TInformes.Active Then
    AbrirDataSet(TInformes, True, True);
  //Creo el stringlist para buscar las propiedades de los controles de la forma
	Lista := TStringList.Create;
	//Busco el informe
  TInformes.Locate('CONS_USUA_INFORME', Consecutivo, []);
  //Asigno las propiedades al TStringList
	Lista.Text := TInformes.FieldByName('CONTROLES').AsString;
  //Asigno el nombre del informe actual
  Nombre_Informe_Actual := TInformes.FieldByName('NOMB_USUA_INFORME').AsString;
  //Asigno el nombre del informe al caption de la forma
  Caption := cosInforme+Nombre_Informe_Actual;
  TInformes.Close;
  //Desactivo el componente de diseño
	Editar.Active := False;
  //Elimino los componentes que no esten en la lista
  Eliminar_Componentes(Lista);
  //Creo los componentes que no esten en la forma, si en la lista
  Crear_Componentes(Lista);
  SetEsperaVisible(True);
  Application.ProcessMessages;
  //Recorro los componentes de la forma
  For I := 0 To ComponentCount - 1 Do
	Begin
        ProgresoBarraEstado('Abriendo informe...', I, ComponentCount - 1);
        If ((Components[I] Is TQuickRep) Or
            (Components[I] Is TPCPQuickReport) Or
          (Components[I] Is TPCPQRLabel) Or
            (Components[I] Is TQRLabel) Or
          (Components[I] Is TQRMemo) Or
          (Components[I] Is TQRExprMemo) Or
              (Components[I] Is TPCPQRForma) Or
            (Components[I] Is TQRShape) Or
              (Components[I] Is TPCPQRImage) Or
            (Components[I] Is TQRImage) Or
              (Components[I] Is TPCPQRDBText) Or
            (Components[I] Is TQRDBText) Or
              (Components[I] Is TPCPQRBand) Or
            (Components[I] Is TQRBand) Or
              (Components[I] Is TQRSysData) Or
              (Components[I] Is TPCPQRBarCode) Or
              (Components[I] Is TPCPQRDBImage) Or
            (Components[I] Is TQRDBImage) Or
          (Components[I] Is TQREDBImage) Or
              (Components[I] Is TQRSubDetail) Or
              (Components[I] Is TQRStringsBand) Or
              (Components[I] Is TQRChildBand) Or
              (Components[I] Is TQRGroup) Or
              (Components[I] Is TQRRichText) Or
          (Components[I] Is TQRDBRichText) Or
                (Components[I] Is TTable) Or
          (Components[I] Is TQuery) Or
          (Components[I] Is TRxMemoryData) Or
          (Components[I] Is TDataSource) Or
          (Components[I] Is TDataSource)) Then
                If Not ((Components[I] Is TTable) Or
            (Components[I] Is TQuery) Or
            (Components[I] Is TRxMemoryData) Or
            (Components[I] Is TDataSource)) Then
          Begin
            If (TControl(Components[I]).Tag <> -5) And
              (TControl(Components[I]).Hint <> '') Then
              Asignar_Propiedades(Components[I], Lista);
          End
          Else If (Components[I].Tag <> -5) Then
              Asignar_Propiedades(Components[I], Lista);
            Update;
  End;
  ProgresoBarraEstado;
  SetEsperaVisible(False);
  Application.ProcessMessages;
  Lista.Free;
end;

{****************************************************************
Procedimiento   : Fuentes_Estilo
Objetivo        : Devolver el valor de un string a estilo de la fuente
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 30 de junio de 2004
Versión         : pcp4000
*****************************************************************}
function TFInformes.Fuentes_Estilo(Estilo : String):TFontStyles;
begin
	Result := [];
  If Estilo = '[fsBold]' Then
    Result := [fsBold]
  Else If Estilo = '[fsBold,fsItalic]' Then
    Result := [fsBold,fsItalic]
  Else If Estilo = '[fsBold,fsItalic,fsUnderline]' Then
    Result := [fsBold,fsItalic,fsUnderline]
  Else If Estilo = '[fsBold,fsItalic,fsUnderline,fsStrikeOut]' Then
    Result := [fsBold,fsItalic,fsUnderline,fsStrikeOut]
  Else If Estilo = '[fsItalic]' Then
    Result := [fsItalic]
  Else If Estilo = '[fsItalic,fsUnderline]' Then
    Result := [fsItalic,fsUnderline]
  Else If Estilo = '[fsItalic,fsUnderline,fsStrikeOut]' Then
    Result := [fsItalic,fsUnderline,fsStrikeOut]
  Else If Estilo = '[fsUnderline]' Then
    Result := [fsUnderline]
  Else If Estilo = '[fsUnderline,fsStrikeOut]' Then
    Result := [fsUnderline,fsStrikeOut]
  Else If Estilo = '[fsStrikeOut]' Then
    Result := [fsStrikeOut];
end;

{****************************************************************
Procedimiento   : Estilos_Fuente
Objetivo        : Devolver el valor del estilo de la fuente en string
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 30 de junio de 2004
Versión         : pcp4000
*****************************************************************}
function TFInformes.Estilos_Fuente(Componente : TFont):String;
begin
  Result := '[]';
  If Componente.Style = [fsBold] Then
    Result := '[fsBold]'
  Else If Componente.Style = [fsBold,fsItalic] Then
    Result := '[fsBold,fsItalic]'
  Else If Componente.Style = [fsBold,fsItalic,fsUnderline] Then
    Result := '[fsBold,fsItalic,fsUnderline]'
  Else If Componente.Style = [fsBold,fsItalic,fsUnderline,fsStrikeOut] Then
    Result := '[fsBold,fsItalic,fsUnderline,fsStrikeOut]'
  Else If Componente.Style = [fsItalic] Then
    Result := '[fsItalic]'
  Else If Componente.Style = [fsItalic,fsUnderline] Then
    Result := '[fsItalic,fsUnderline]'
  Else If Componente.Style = [fsItalic,fsUnderline,fsStrikeOut] Then
    Result := '[fsItalic,fsUnderline,fsStrikeOut]'
  Else If Componente.Style = [fsUnderline] Then
    Result := '[fsUnderline]'
  Else If Componente.Style = [fsUnderline,fsStrikeOut] Then
    Result := '[fsUnderline,fsStrikeOut]'
  Else If Componente.Style = [fsStrikeOut] Then
    Result := '[fsStrikeOut]';
end;

{****************************************************************
Procedimiento   : Guardar_Informe
Objetivo        : Devolver las propiedades de los componentes de
									la forma
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 30 de junio de 2004
Versión         : pcp4000
*****************************************************************}
function TFInformes.Guardar_Informe:String;
Var
	I: Integer;
begin
	Result := '';
  SetEsperaVisible(True);
  Application.ProcessMessages;
  For I := 0 to ComponentCount - 1 do
	Begin
    ProgresoBarraEstado('Guardando informe...', I, ComponentCount - 1);
    If ((Components[I] Is TQuickRep) Or
    	(Components[I] Is TPCPQuickReport) Or
      (Components[I] Is TPCPQRLabel) Or
    	(Components[I] Is TQRLabel) Or
      (Components[I] Is TQRMemo) Or
      (Components[I] Is TQRExprMemo) Or
		  (Components[I] Is TPCPQRForma) Or
    	(Components[I] Is TQRShape) Or
		  (Components[I] Is TPCPQRImage) Or
    	(Components[I] Is TQRImage) Or
		  (Components[I] Is TPCPQRDBText) Or
    	(Components[I] Is TQRDBText) Or
		  (Components[I] Is TPCPQRBand) Or
    	(Components[I] Is TQRBand) Or
		  (Components[I] Is TQRSysData) Or
		  (Components[I] Is TPCPQRBarCode) Or
		  (Components[I] Is TPCPQRDBImage) Or
    	(Components[I] Is TQRDBImage) Or
      (Components[I] Is TQREDBImage) Or
		  (Components[I] Is TQRSubDetail) Or
		  (Components[I] Is TQRStringsBand) Or
		  (Components[I] Is TQRChildBand) Or
		  (Components[I] Is TQRGroup) Or
		  (Components[I] Is TQRRichText) Or
		  (Components[I] Is TTable) Or
		  (Components[I] Is TQuery) Or
		  (Components[I] Is TRxMemoryData) Or
		  (Components[I] Is TDataSource) Or
      (Components[I] Is TQRDBRichText)) Then
    Begin
			If Not ((Components[I] Is TTable) Or
			  (Components[I] Is TQuery) Or
			  (Components[I] Is TRxMemoryData) Or
			  (Components[I] Is TDataSource)) Then
			Begin
	      If (TControl(Components[I]).Tag <> -5) And
  	      (TControl(Components[I]).Hint <> '') Then
    	    Result := Result + propiedades(Components[I])
      End
      Else If Components[I].Tag <> -5 Then
        Result := Result + propiedades(Components[I]);
    End;
		Update;
  End;
  ProgresoBarraEstado;
  SetEsperaVisible(False);
  Application.ProcessMessages;
end;

{****************************************************************
Procedimiento   : Impresion_General
Objetivo        : Crear los títulos y los datos a mostrar de la consulta
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Martes 29 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.Impresion_General(T_Consulta : TQuery; T_Titulo_Informe : String);
Const
  Distancia = 5;
Var
	I, Izquierda : Integer;
  Titulo : TPCPQRLabel;
  Dato : TPCPQRDBText;
  var_i : Integer;
  tope_titulo   : Integer;

begin
  tope_titulo :=   _QRBanda_Page_Header.Height - 25;
  SetEsperaVisible(True);
  Application.ProcessMessages;
  //Creo la consulta y le asigno las propiedades de la consulta del child
  Consulta_General := TQuery.Create(Self);
  Consulta_General.Close;
  Consulta_General.AutoCalcFields := True;
  Consulta_General.Sql.Add(T_Consulta.Sql.Text);
  Consulta_General.Filter := T_Consulta.Filter;
  Consulta_General.Filtered := T_Consulta.Filtered;
  Consulta_General.DatabaseName := T_Consulta.DatabaseName;
  //--RC13 : Parámetros de las consultas
  Consulta_General.params.AssignValues(T_Consulta.Params);
  if (T_Consulta.DataSource <> Nil) then
  	Consulta_General.DataSource := T_Consulta.DataSource;
  Consulta_General.Tag := -5;
  {//Asignar los valores
  For var_i := 1 to T_Consulta.FieldCount do
    Consulta_General.Fields.Add(T_Consulta.Fields[var_i - 1]);}
  If Assigned(T_Consulta.OnCalcFields) Then
    Consulta_General.OnCalcFields := T_Consulta.OnCalcFields;
  //--Fin cambios RC13
  Consulta_General.Open;
  Consulta_General.Name := T_Consulta.Name;
  _QRPadre.DataSet := Consulta_General;
  Izquierda := 2;
  //Recorro el Vector de campos
	For I := 0 To 100 Do
	Begin
		ProgresoBarraEstado('Generando Impresión General...', I, 100);
    //Verifico que si existe dato del campo
		If Arreglo_Campos[0, I] <> '' Then
    Begin
			//Creo el Título del campo
      Titulo := TPCPQRLabel.Create(Self);
      With Titulo Do
      Begin
        Left := Izquierda;
        Font.Style := [fsBold];
        Parent := _QRBanda_Page_Header;
        Top := Tope_Titulo;
        Caption := Arreglo_Campos[0, I];
        Hint := Caption;
        PopUpMenu := PMComponentes;
        Name := 'PCPQRLabel' + IntToStr(TabOrder);
        PCPQRControl := PCPQRControl1;
      End;
			//Creo el Texto del campo
      Dato := TPCPQRDBText.Create(Self);
      With Dato Do
      Begin
        Left := Izquierda;
        Parent := _QRBanda_Maestra;
        Top := 1;
        DataSet := Consulta_General;
        DataField := Arreglo_Campos[1, I];
        AutoSize := False;
        Width := StrToInt(Arreglo_Campos[2, I]);
        Izquierda := Izquierda + Width + Distancia;
        Hint := 'Dato ' + Arreglo_Campos[0, I];
        Name := 'PCPQRDBText' + IntToStr(TabOrder);
        PopUpMenu := PMComponentes;
        PCPQRControl := PCPQRControl1;
        //RC13 -- Mask
        if (T_Consulta.FieldByName(DataField) is TNumericField) Then
        Begin
            Mask := (T_Consulta.FieldByName(DataField) as TNumericField).DisplayFormat;
            if mask = '' Then Mask := ',0';
            //RC20 - Alineación
            Titulo.Alignment := taRightJustify;
            Dato.Alignment := taRightJustify;
        End
        Else
        if (T_Consulta.FieldByName(DataField) is TFloatField) Then
        Begin
            Mask := (T_Consulta.FieldByName(DataField) as TFloatField).DisplayFormat;
            if mask = '' Then Mask := ',0.00';
            //RC20 - Alineación
            Titulo.Alignment := taRightJustify;
            Dato.Alignment := taRightJustify;
        End;
      End;
    End;
  End;
  ProgresoBarraEstado;
  SetEsperaVisible(False);
  Application.ProcessMessages;
  If Izquierda > 740 Then
    _QRPadre.Page.Orientation := poLandscape;
  _QRInforme.Caption := cosInforme + T_Titulo_Informe;
  _QRFiltro.Destroy;
  //Muestro la forma antes de imprimir
//	ShowModal;
end;

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Ubicar los componentes del informe
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Martes 29 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.FormCreate(Sender: TObject);
Var
	I : Integer;
begin
  autoHints(Self); 
  //Ver si tiene propiedades para edicion, y decidir si es MDIChild o Normal
  if acti_propiedades.enabled then
   Begin
     FormStyle := fsMDIChild;
     //Maximizar
     if not (WindowState = wsMaximized) then WindowState := wsMaximized;
   End
  Else
     Visible := False;
  Nombre_Informe_Actual := '';
  var_vent_child := Sender;
//  editar.active := true;
  //Asigno tag -5 a los componentes que no son para editar sus propiedades
	For I := 0 To FPropiedades.ComponentCount - 1 Do
  	FPropiedades.Components[I].Tag := -5;
  //Asigno tag -5 a los componentes que no son para editar sus propiedades
	For I := 0 To FEstructura_Informes.ComponentCount - 1 Do
  	FEstructura_Informes.Components[I].Tag := -5;
	//Verifico que se pueda abrir la tabla
	If (AbrirDataset(TOpciones)) Then
  Begin
    //Verifico que la opcion de logotipo este activada
    If ((Opciones_Impresion[0] = 'S') And
      Not (TOpciones.FieldByName('IMAGEN').IsNull)) Then
    Begin
      //Asigno la imagen y el tamaño de la imagen
      _QRLogo.Picture.Bitmap := TBitmap(TOpciones.FieldByName('IMAGEN'));
      _QRLogo.Width := TOpciones.FieldByName('TAMANO').AsInteger;
      //Cambi de tamaño y posición a los títulos del informe según tamaño de imagen
      Case TOpciones.FieldByName('TAMANO').AsInteger Of
        60:Begin
          _QRInforme.Width := 662;
          _QREmpresa.Width := 662;
          _QRInforme.Left := 74;
          _QREmpresa.Left := 74;
          Largo := 59;
        End;
        80:Begin
          _QRInforme.Width := 639;
          _QREmpresa.Width := 639;
          _QRInforme.Left := 97;
          _QREmpresa.Left := 97;
          Largo := 37;
        End;
        120:Begin
          _QRInforme.Width := 603;
          _QREmpresa.Width := 603;
          _QRInforme.Left := 133;
          _QREmpresa.Left := 133;
          Largo := 0;
        End;
      End;
    End
    //Si no esta elegida la opción del logotipo lo destruyo y posiciono
    //	los títulos del informe
    Else
    Begin
      _QREmpresa.Left := 8;
      _QREmpresa.Width := 728;
      _QRInforme.Left := 8;
      _QRInforme.Width := 728;
      Largo := 125;
      _QRLogo.Destroy;
    End;
    //Verifico que la opción de eslogan este elegida
	  If ((TOpciones.FieldByName('ESLOGAN').AsString <> '') And
  		(Opciones_Impresion[1] = 'S')) Then
		Begin
      _QREslogan.Lines.Add(TOpciones.FieldByName('ESLOGAN').AsString);
      _QRSistema.Height := 32;
      _QRSistema.Width := 156;
    End
    //Si no esta elegida la opción de eslogan la destruyo
    Else
    Begin
      _QRSistema.AutoSize := True;
      _QRSistema.Height := 17;
      _QRBanda_Eslogan.Height := 18;
      _QREslogan.Destroy;
    End;
  End;
  _QREmpresa.Caption := Var_Nombre_Empresa;
  _QRLPrioridad.Left := _QRInforme.Left;
  _QRPrioridad.Left := _QRInforme.Left + _QRLPrioridad.Width + 3;
	Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Elegir_Firmas
Objetivo        : Asignar valores de las firmas al final del Informe
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Martes 29 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.Elegir_Firmas;
Var
	I, Cantidad : Integer;
begin
	With _QRPadre Do
  Begin
    //Si no esta elegida la opción de fecha de impresión la destruyo
		If Not (Opciones_Impresion[3] = 'S') Then
      _QRFecha.Destroy;
    //Si no esta elegida la opción de número de página la destruyo
		If Not (Opciones_Impresion[2] = 'S') Then
      _QRPagina.Destroy;
    //Si no esta elegida la opción de prioridad la destruyo
    If Opciones_Impresion[12] = '' Then
		Begin
    	_QRPrioridad.Destroy;
      _QRLPrioridad.Destroy;
    End
    Else
    	_QRPrioridad.Caption := Opciones_Impresion[12];
		//Asignar títulos de la firmas o destruirlas
		If Opciones_Impresion[5] <> '' Then
    Begin
      I := 5;
      Cantidad := 0;
      While I < 11 Do
      Begin
        Case I Of
          5:If Opciones_Impresion[I] <> '' Then
            Begin
              _QRFirma1.caption := Opciones_Impresion[I] + ':';
              Inc(Cantidad);
            End;
          6:If Opciones_Impresion[I] <> '' Then
            Begin
              _QRFirma2.caption := Opciones_Impresion[I] + ':';
              Inc(Cantidad);
            End
            Else
            Begin
              _QRFirma2.Destroy;
              _QRS2.Destroy;
            End;
          7:If Opciones_Impresion[I] <> '' Then
            Begin
              _QRFirma3.caption := Opciones_Impresion[I] + ':';
              Inc(Cantidad);
            End
            Else
            Begin
              _QRFirma3.Destroy;
              _QRS3.Destroy;
            End;
          8:If Opciones_Impresion[I] <> '' Then
            Begin
              _QRFirma4.caption := Opciones_Impresion[I] + ':';
              Inc(Cantidad);
            End
            Else
            Begin
              _QRFirma4.Destroy;
              _QRS4.Destroy;
            End;
          9:If Opciones_Impresion[I] <> '' Then
            Begin
              _QRFirma5.caption := Opciones_Impresion[I] + ':';
              Inc(Cantidad);
            End
            Else
            Begin
              _QRFirma5.Destroy;
              _QRS5.Destroy;
            End;
          10:If Opciones_Impresion[I] <> '' Then
            Begin
              _QRFirma6.caption := Opciones_Impresion[I] + ':';
              Inc(Cantidad);
            End
            Else
            Begin
              _QRFirma6.Destroy;
              _QRS6.Destroy;
            End;
        End;
        Inc(I);
      End;
      //Posicionar las Firmas
      Case Cantidad Of
        0,1:Begin
          _QRS1.Left := 65;
          _QRFirma1.Left := _QRS1.Left + 5;
        End;
        2:Begin
          _QRS1.Left := 65; _QRS2.Left := 185;
          _QRFirma1.Left := _QRS1.Left + 5; _QRFirma2.Left := _QRS2.Left + 5;
        End;
        3:Begin
          _QRS1.Left := 65; _QRS2.Left := 185; _QRS3.Left := 305;
          _QRFirma1.Left := _QRS1.Left + 5; _QRFirma2.Left := _QRS2.Left + 5; _QRFirma3.Left := _QRS3.Left + 5;
        End;
        4:Begin
          _QRS1.Left := 65; _QRS2.Left := 185; _QRS3.Left := 305; _QRS4.Left := 425;
          _QRFirma1.Left := _QRS1.Left + 5; _QRFirma2.Left := _QRS2.Left + 5; _QRFirma3.Left := _QRS3.Left + 5;
          _QRFirma4.Left := _QRS4.Left + 5;
        End;
        5:Begin
          _QRS1.Left := 65; _QRS2.Left := 185; _QRS3.Left := 305; _QRS4.Left := 425; _QRS5.Left := 545;
          _QRFirma1.Left := _QRS1.Left + 5; _QRFirma2.Left := _QRS2.Left + 5; _QRFirma3.Left := _QRS3.Left + 5;
          _QRFirma4.Left := _QRS4.Left + 5; _QRFirma5.Left := _QRS5.Left + 5;
        End;
      End;
    End
		//Si no eligió ninguna firma destruyo la banda de las firmas
    Else
    	_QRBanda_Firmas.Destroy;
  End;
end;

{****************************************************************
Procedimiento   : _QRPadreBeforePrint
Objetivo        : Cambiar la orientación del informe
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Martes 29 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes._QRPadreBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
Var
	Existe : TComponent;
begin
	If _QRPadre.Page.Orientation = poLandscape Then
  Begin
    If _QRInforme.Width = 603 Then
	    _QRInforme.Width := 820 + Largo;
    If _QREmpresa.Width = 603 Then
	    _QREmpresa.Width := 820 + Largo;
    Existe := FindComponent('_QRFecha');
    If Existe <> Nil Then
	    _QRFecha.Left := 847;
    Existe := FindComponent('_QRPagina');
    If Existe <> Nil Then
	    _QRPagina.Left := 879;
    Existe := FindComponent('_QRLine_Eslogan');
    If Existe <> Nil Then
	    _QRLine_Eslogan.Width := _QRBanda_Eslogan.Width;
  End;
  //No mostrar la linea del titulo
  If _QRLine_Titulo.Height = 0 Then
       _QRLine_Titulo.Pen.Color := clWhite; 
  _QRLine_Titulo.Width := _QRBanda_Page_Header.Width;
  //Nombre
  _qrPadre.ReportTitle := _qrInforme.Caption;
  Caption := _qrInforme.Caption;
end;

{****************************************************************
Procedimiento   : CBComponentesChange
Objetivo        : Asignar control de componente a lista de propiedades
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Martes 29 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.CBComponentesChange(Sender: TObject);
Var
	I : Integer;
begin
	If CBComponentes.Text = '' Then
  	Exit;
	//Le asigno a la lista de propiedades el hit del componente por
  // si es muy largo y no se alcanza a ver en el combo
  CBComponentes.Hint := CBComponentes.Text;
  //Recorro los componentes de la forma que tengan hint y que el tag <> -1
	For I := 0 To ComponentCount - 1 Do
  	If Components[I].Tag <> -5 Then
			If ((Components[I] Is TPCPQuickReport) Or
      	(Components[I] Is TQuickRep)) Then
      Begin
      	If (Components[I] As TQuickRep).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I];
      End
			Else If ((Components[I] Is TPCPQRLabel) Or
      	(Components[I] Is TQRLabel)) Then
      Begin
      	If (Components[I] As TQRLabel).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I];
      End
			Else If ((Components[I] Is TQRMemo) Or (Components[I] Is TQRExprMemo)) Then
      Begin
      	If (Components[I] As TQRMemo).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I];
      End
			Else If ((Components[I] Is TPCPQRForma) Or
      	(Components[I] Is TQRShape)) Then
      Begin
      	If (Components[I] As TQRShape).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I];
      End
			Else If ((Components[I] Is TPCPQRImage) Or
      	(Components[I] Is TQRImage)) Then
      Begin
      	If (Components[I] As TQRImage).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I];
      End
			Else If ((Components[I] Is TPCPQRDBText) Or
      	(Components[I] Is TQRDBText)) Then
      Begin
      	If (Components[I] As TQRDBText).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I];
      End
			Else If ((Components[I] Is TPCPQRBand) Or
      	(Components[I] Is TQRBand)) Then
      Begin
      	If (Components[I] As TQRBand).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I];
      End
			Else If (Components[I] Is TQRSysData) Then
      Begin
      	If (Components[I] As TQRSysData).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I];
      End
			Else If (Components[I] Is TPCPQRBarCode) Then
      Begin
      	If (Components[I] As TPCPQRBarCode).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I];
      End
			Else If ((Components[I] Is TPCPQRDBImage) Or
      	(Components[I] Is TQRDBImage) Or
        (Components[I] Is TQREDBImage)) Then
      Begin
      	If (Components[I] As TQRPrintable).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I];
      End
			Else If (Components[I] Is TQRSubDetail) Then
      Begin
      	If (Components[I] As TQRSubDetail).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I];
      End
			Else If (Components[I] Is TQRStringsBand) Then
      Begin
      	If (Components[I] As TQRStringsBand).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I];
      End
			Else If (Components[I] Is TQRChildBand) Then
      Begin
      	If (Components[I] As TQRChildBand).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I];
      End
			Else If (Components[I] Is TQRGroup) Then
      Begin
      	If (Components[I] As TQRGroup).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I];
      End
			Else If (Components[I] Is TQRRichText) Then
      	If (Components[I] As TQRRichText).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I]
			Else If (Components[I] Is TQRDBRichText) Then
      	If (Components[I] As TQRDBRichText).Hint = CBComponentes.Text Then
          Propiedades_Componente.CurObj := Components[I]
			Else If (Components[I] Is TQuery) Then
          Propiedades_Componente.CurObj := Components[I]
			Else If (Components[I] Is TTable) Then
          Propiedades_Componente.CurObj := Components[I]
			Else If (Components[I] Is TRxMemoryData) Then
          Propiedades_Componente.CurObj := Components[I]
			Else If (Components[I] Is TDataSource) Then
          Propiedades_Componente.CurObj := Components[I];
  //Rercorro los componentes de la lista de propiedades y le asigno al tag -5
	For I := 0 To Propiedades_Componente.ComponentCount - 1 Do
		Propiedades_Componente.Components[I].Tag := -5;
end;

{****************************************************************
Procedimiento   : FormClose
Objetivo        : Destruir el módulo
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 30 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Release;
end;

{****************************************************************
Procedimiento   : Acti_informeExecute
Objetivo        : Cerrar el informe en diseño y mostrar el preview
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 30 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.Acti_informeExecute(Sender: TObject);
Const
	ErrorInforme = 'No se puede visualizar el informe. La impresora no reconoce la configuración actual';
begin
	_QRPadre.Preview;
end;

{****************************************************************
Procedimiento   : Acti_propiedadesExecute
Objetivo        : Mostrar lista de propiedades de componentes
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 30 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.Acti_propiedadesExecute(Sender: TObject);
Var
	I : Integer;
begin
	If Not (Sender = DBInformes) Then
		DBPropiedades_Informes.Visible := Not DBPropiedades_Informes.Visible;
	//Asignar al combo de componentes los que se pueden cambiar sus propiedades
  //  tag = -5 y que tengan Hint
  CBComponentes.Items.Clear;
	If FPropiedades.Visible Then
	Begin
    QInformes.ParamByName('MODULO').AsString := UpperCase((var_vent_child As T_fvent_child).padr_pane_titulo.Caption);
    AbrirDataSet(QInformes);
    For I := 0 To ComponentCount - 1 Do
		Begin
      If Components[I].Tag <> -5 Then
        If ((Components[I] Is TPCPQuickReport) Or
          (Components[I] Is TQuickRep)) Then
        Begin
          If (Components[I] As TQuickRep).Hint <> '' Then
            CBComponentes.Items.Add((Components[I] As TQuickRep).Hint);
        End
        Else If ((Components[I] Is TPCPQRLabel) Or
          (Components[I] Is TQRLabel)) Then
        Begin
          If (Components[I] As TQRLabel).Hint <> '' Then
            CBComponentes.Items.Add((Components[I] As TQRLabel).Hint);
        End
        Else If ((Components[I] Is TQRMemo) Or (Components[I] Is TQRExprMemo)) Then
        Begin
          If (Components[I] As TQRMemo).Hint <> '' Then
            CBComponentes.Items.Add((Components[I] As TQRMemo).Hint);
        End
        Else If ((Components[I] Is TPCPQRForma) Or
          (Components[I] Is TQRShape)) Then
        Begin
          If (Components[I] As TQRShape).Hint <> '' Then
            CBComponentes.Items.Add((Components[I] As TQRShape).Hint);
        End
        Else If ((Components[I] Is TPCPQRImage) Or
          (Components[I] Is TQRImage)) Then
        Begin
          If (Components[I] As TQRImage).Hint <> '' Then
            CBComponentes.Items.Add((Components[I] As TQRImage).Hint);
        End
        Else If ((Components[I] Is TPCPQRDBText) Or
        	(Components[I] Is TQRDBText)) Then
        Begin
          If (Components[I] As TQRDBText).Hint <> '' Then
            CBComponentes.Items.Add((Components[I] As TQRDBText).Hint);
        End
        Else If ((Components[I] Is TPCPQRBand) Or
          (Components[I] Is TQRBand)) Then
        Begin
          If (Components[I] As TQRBand).Hint <> '' Then
            CBComponentes.Items.Add((Components[I] As TQRBand).Hint);
        End
        Else If (Components[I] Is TQRSysData) Then
        Begin
          If (Components[I] As TQRSysData).Hint <> '' Then
            CBComponentes.Items.Add((Components[I] As TQRSysData).Hint);
        End
        Else If (Components[I] Is TPCPQRBarCode) Then
        Begin
          If (Components[I] As TPCPQRBarCode).Hint <> '' Then
            CBComponentes.Items.Add((Components[I] As TPCPQRBarCode).Hint);
        End
        Else If ((Components[I] Is TPCPQRDBImage) Or
          (Components[I] Is TQRDBImage) Or
          (Components[I] Is TQREDBImage)) Then
        Begin
          If (Components[I] As TQRPrintable).Hint <> '' Then
            CBComponentes.Items.Add((Components[I] As TQRPrintable).Hint);
        End
        Else If (Components[I] Is TQRSubDetail) Then
        Begin
          If (Components[I] As TQRSubDetail).Hint <> '' Then
            CBComponentes.Items.Add((Components[I] As TQRSubDetail).Hint);
        End
        Else If (Components[I] Is TQRStringsBand) Then
        Begin
          If (Components[I] As TQRStringsBand).Hint <> '' Then
            CBComponentes.Items.Add((Components[I] As TQRStringsBand).Hint);
        End
        Else If (Components[I] Is TQRChildBand) Then
        Begin
          If (Components[I] As TQRChildBand).Hint <> '' Then
            CBComponentes.Items.Add((Components[I] As TQRChildBand).Hint);
        End
        Else If (Components[I] Is TQRGroup) Then
        Begin
          If (Components[I] As TQRGroup).Hint <> '' Then
            CBComponentes.Items.Add((Components[I] As TQRGroup).Hint);
        End
        Else If (Components[I] Is TQuery) Then
            CBComponentes.Items.Add(Components[I].Name)
        Else If (Components[I] Is TTable) Then
            CBComponentes.Items.Add(Components[I].Name)
        Else If (Components[I] Is TRxMemoryData) Then
            CBComponentes.Items.Add(Components[I].Name)
        Else If (Components[I] Is TDataSource) Then
            CBComponentes.Items.Add(Components[I].Name);
    End;
  End;
end;

{****************************************************************
Procedimiento   : Acti_guar_estructuraExecute
Objetivo        : Guardo en la base de datos en un campo memo las
									propiedades de los componentes de la forma
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Lunes 12 de julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.Acti_guar_estructuraExecute(Sender: TObject);
Var
	Nombre_Informe : String;
begin
  If Not (var_vent_child is T_fvent_child) Then
  	Exit;
	Editar.Active := False;
	With (var_vent_child As T_fvent_child) Do
  Begin
		//Abrir la tabla de usuarios por módulo
    If Not TUsuarios_Modulos.Active Then
      AbrirDataSet(TUsuarios_Modulos,  True, True);
    //Adiciono el usuario en este Módulo
    If Not TUsuarios_Modulos.Locate('USUARIO;MODULO',
      VarArrayOf([var_usua_activo, padr_pane_titulo.Caption]), []) Then
      Try
        TUsuarios_Modulos.Insert;
        TUsuarios_Modulos.FieldByName('USUARIO').AsString :=
          var_usua_activo;
        TUsuarios_Modulos.FieldByName('MODULO').AsString :=
          padr_pane_titulo.Caption;
        TUsuarios_Modulos.Post;
      Except
      End;
    //Abrir la tabla de usuarios-módulo Informes
    If Not TInformes.Active Then
	    AbrirDataSet(TInformes, True, True);
    	If (Sender = BGuardar_Como) Then
		    Nombre_Informe := pcpInputForm('Nombre de la estructura del Informe', 'Nombre:', tvString, Nombre_Informe_Actual)
			Else If Nombre_Informe_Actual = '' Then
		    Nombre_Informe := pcpInputForm('Nombre de la estructura del Informe', 'Nombre:', tvString, '')
	    Else
  	  	Nombre_Informe := Nombre_Informe_Actual;
    If Nombre_Informe = '' Then
 	  	Exit;

		//Verificar si existe el informe
		QExiste_Informe.Close;
    QExiste_Informe.ParamByName('CONS_USUA_MODULO').AsInteger :=
    	TUsuarios_Modulos.FieldByName('CONS_USUA_MODULO').AsInteger;
    QExiste_Informe.ParamByName('NOMB_USUA_INFORME').AsString := Nombre_Informe;
    QExiste_Informe.Open;
    If QExiste_Informe.FieldByName('NOMB_USUA_INFORME').AsString <> '' Then
      If (Sender = BGuardar_Como) Then
        Case EjecutarMensaje(Format(CosExisteInforme, [Nombre_Informe]), mtInformation, [mbYes, mbNo], 0) Of
          mrYes:Begin
            //Eliminar el informe de la base de datos
            QEliminar_Informe.Close;
            QEliminar_Informe.ParamByName('CONS_USUA_INFORME').AsInteger :=
              QExiste_Informe.FieldByName('CONS_USUA_INFORME').AsInteger;
            QEliminar_Informe.ExecSQL;
          End;
          mrNo: Exit;
        End
      Else
      Begin
      	//Eliminar el informe de la base de datos
        QEliminar_Informe.Close;
        QEliminar_Informe.ParamByName('CONS_USUA_INFORME').AsInteger :=
          QExiste_Informe.FieldByName('CONS_USUA_INFORME').AsInteger;
        QEliminar_Informe.ExecSQL;
      End;

    Nombre_Informe_Actual := Nombre_Informe;
    If Not TInformes.Active Then
      AbrirDataSet(TInformes, True, True);
		//Guardar las propiedades de los componentes de la forma
		TInformes.Insert;
    TInformes.FieldByName('CONS_USUA_MODULO').AsInteger :=
    	TUsuarios_Modulos.FieldByName('CONS_USUA_MODULO').AsInteger;
    TInformes.FieldByName('NOMB_USUA_INFORME').AsString := Nombre_Informe;
    TInformes.FieldByName('CONTROLES').AsVariant := Guardar_Informe;
    TInformes.Post;
    TInformes.Close;
	End;
  //Actualizar la consulta de los informe guardados de este módulo
	QInformes.Close;
  QInformes.Open;
// 	Editar.Active := True;
  Caption := cosInforme + Nombre_Informe_Actual;
end;

{****************************************************************
Procedimiento   : FormClose
Objetivo        : Destruir el módulo
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 30 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.Acti_salirExecute(Sender: TObject);
begin
	Close;
end;

{****************************************************************
Procedimiento   : Acti_leer_estructuraExecute
Objetivo        : Crear, Eliminar y asignar propiedades a los componentes
									de la forma
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 30 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.Acti_leer_estructuraExecute(Sender: TObject);
begin
  //Abrir el informe
  DBInformes.OnDblClick(DBInformes);
end;

{****************************************************************
Procedimiento   : TInformesBeforePost
Objetivo        : Asignar el consecutivo identificador del registro
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 30 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.TInformesBeforePost(DataSet: TDataSet);
begin
  	GenerarSecuencia(tinformes);
end;

{****************************************************************
Procedimiento   : DBInformesDblClick
Objetivo        : Abrir el informe seleccionado en el grid
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 30 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.DBInformesDblClick(Sender: TObject);
begin
	_QRPadre.Visible := False;
	Abrir_Informe(QInformes.FieldByname('CONS_USUA_INFORME').AsInteger);
  Acti_propiedadesExecute(Sender);
  _QRPadre.Visible := True;
end;

{****************************************************************
Procedimiento   : BGuardarClick
Objetivo        : Guardar las propiedades de los componentes
									de la forma
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 30 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.BGuardarClick(Sender: TObject);
begin
  Acti_guar_estructuraExecute(Sender);
end;

{****************************************************************
Procedimiento   : BGuardar_ComoClick
Objetivo        : Guardar las propiedades de los componentes
									de la forma
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 30 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.BGuardar_ComoClick(Sender: TObject);
begin
  Acti_guar_estructuraExecute(Sender);
end;

{****************************************************************
Procedimiento   : TBXItem1Click
Objetivo        : Mostrar en un popup las propiedades del componente
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Miercoles 30 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.TBXItem1Click(Sender: TObject);
begin
	PCPQRControl1.doPropiedades;
end;

{****************************************************************
Procedimiento   : Acti_Elim_InformeExecute
Objetivo        : Eliminar un Informe
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Lunes 12 de julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFInformes.Acti_Elim_InformeExecute(Sender: TObject);
begin
	//Verifico que existan registros
	If QInformes.RecordCount > 0 Then
	Begin
    QEliminar_Informe.Close;
    QEliminar_Informe.ParamByName('CONS_USUA_INFORME').AsInteger :=
      QInformes.FieldByName('CONS_USUA_INFORME').AsInteger;
    QEliminar_Informe.ExecSQL;
    QEliminar_Informe.Close;
		//Actualizo la consulta de informes
    QInformes.Close;
    QInformes.Open;
  End;
end;

end.
