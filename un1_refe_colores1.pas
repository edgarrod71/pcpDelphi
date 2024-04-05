{ 18/03/2004 11:15:17 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 18/03/2004 11:14:48 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 18/03/2004 10:15:25 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 18/03/2004 09:52:00 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 18/03/2004 09:36:01 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 18/03/2004 09:34:44 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 16/03/2004 05:46:56 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:53 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 04:51:49 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 04:51:13 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 12:29:27 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 11:40:00 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 11:18:59 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:41:06 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:13 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 04/03/2004 10:28:21 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 04/03/2004 10:21:50 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 02/03/2004 05:15:02 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 02/03/2004 11:00:22 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 02/03/2004 10:57:58 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 01/03/2004 08:49:13 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 01/03/2004 08:48:57 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 23/02/2004 07:32:29 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 23/02/2004 07:31:26 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 23/02/2004 02:42:09 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 23/02/2004 02:24:48 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
unit un1_refe_colores1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, StdCtrls, SohoBtns, DBTables, RxLookup, PCPLookUpComboEdit,
  SCLDBLabel, dxExEdtr, ExtCtrls, dxEditor, dxEdLib, dxDBELib, TB2Item,
  TBX, TB2Dock, TB2Toolbar, SCLButton, SoCtrls, PictureContainer, AdvPanel,
  DFSClrBn, JvExControls, JvComponent, JvGradientHeaderPanel,
  Boxes, PCPProceso;

type
  Tfn1_refe_colores1 = class(T_fvent_modal)
    Tabla_VentanaCONS_COLOR: TIntegerField;
    Tabla_VentanaCONS_COLO_GRUPO: TIntegerField;
    Tabla_VentanaCONS_COLO_SUBGRUPO: TIntegerField;
    Tabla_VentanaCONS_COLO_TONO: TIntegerField;
    Tabla_VentanaCODI_COLOR: TStringField;
    Tabla_VentanaNOMB_COLOR: TStringField;
    Tabla_VentanaROJO: TIntegerField;
    Tabla_VentanaVERDE: TIntegerField;
    Tabla_VentanaAZUL: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    TGrupos: TTable;
    TSubgrupos: TTable;
    TTonos: TTable;
    DSGrupos: TDataSource;
    DSSubgrupos: TDataSource;
    DSTonos: TDataSource;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    CBGrupo: TPCPLookUpComboEdit;
    CBSubgrupos: TPCPLookUpComboEdit;
    CBTonos: TPCPLookUpComboEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    SCLDBLabel12: TSCLDBLabel;
    boto_color: TdfsColorButton;
    Tabla_VentanaMUES_COLOR: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure boto_colorColorChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Semaforo : Boolean;
  end;

var
  fn1_refe_colores1: Tfn1_refe_colores1;

implementation

uses _cons_pcp, _func_varias, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_colores1.FormCreate(Sender: TObject);
begin
  inherited;
	//Verifica que si se pueda abrir el DataSet
  AbrirDataSet(TGrupos, False, False);
  AbrirDataSet(TSubgrupos, False, False);
  AbrirDataSet(TTonos, False, False);
  Insertar_Palabras(Self, WKLenguaje);
end;       

{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert 
Objetivo        : Ejectuar los procedimientos de inicialización del registro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_colores1.Tabla_VentanaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  //Color por defecto
  tabla_ventana.FieldByName('mues_color').Value := clWhite;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles al mostrar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_colores1.FormShow(Sender: TObject);
begin
  inherited;
  //Actualizar el color al mostrar el form
	If tabla_ventana.FieldByName('mues_color').AsString <> '' Then
	  boto_color.Color:=tabla_ventana.FieldByName('mues_color').Value;
  Semaforo := True;  
end;
{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Acciones antes de guardar el registro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_refe_colores1.Tabla_VentanaBeforePost(DataSet: TDataSet);
begin
  inherited;
  //Guardar la muestra del color
  tabla_ventana.FieldByName('mues_color').Value := boto_color.Color;
  //Obtener el color RGB
  With tabla_ventana do
  Begin
       FieldByName('rojo').Value := getRValue(ColorToRGB(boto_color.Color));
       FieldByName('verde').Value := getGValue(ColorToRGB(boto_color.Color));
       FieldByName('azul').Value := getBValue(ColorToRGB(boto_color.Color));
  End;
end;

procedure Tfn1_refe_colores1.boto_colorColorChange(Sender: TObject);
begin
  inherited;
	If Semaforo Then
	Begin
	  if not (tabla_ventana.State in [dsEdit, dsInsert]) then
    	tabla_ventana.Edit;
    tabla_ventana.FieldByName('rojo').Value := getRValue(ColorToRGB(boto_color.Color));
    tabla_ventana.FieldByName('verde').Value := getGValue(ColorToRGB(boto_color.Color));
    tabla_ventana.FieldByName('azul').Value := getBValue(ColorToRGB(boto_color.Color));
  End;
end;

end.
