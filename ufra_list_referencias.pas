unit ufra_list_referencias;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Db, DBTables;

type
  Tffra_list_referencias = class(TFrame)
    consulta: TQuery;
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
    consultaIMAGEN: TBlobField;
    consultaAJUS_IMAGEN: TIntegerField;
    consultaDESCRIPCION: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    data_consulta: TDataSource;
    padr_grid: TdxDBGrid;
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
    padr_gridIMAGEN: TdxDBGridBlobColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
