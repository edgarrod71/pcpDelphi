unit USCLForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TB2Item, dxCntner, dxExEdtr, ImgList, Placemnt, SCLPropiedadesForm,
  ActnList, Db, DBTables;

type
  TSCLForm = class(TForm)
    Variables: TSCLPropiedadesForm;
    padr_storage: TFormStorage;
    imag_pequenas: TImageList;
    padr_estilo_chec: TdxCheckEditStyleController;
    padr_estilo: TdxEditStyleController;
    Imagenes16: TTBImageList;
    Imagenes24: TTBImageList;
    padr_imagenes: TImageList;
    padr_acciones: TActionList;
    padr_acti_aceptar: TAction;
    padr_acti_cancelar: TAction;
    padr_acti_consultar: TAction;
    consulta: TQuery;
    data_ventana: TDataSource;
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure padr_acti_cancelarExecute(Sender: TObject);
    procedure padr_acti_consultarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SCLForm: TSCLForm;
  Resultado : Variant;

implementation

{$R *.DFM}

{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Llenar el arreglo con los valores del registro seleccionado
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TSCLForm.padr_acti_aceptarExecute(Sender: TObject);
begin
//
end;

{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Cerrar el módulo
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TSCLForm.padr_acti_cancelarExecute(Sender: TObject);
begin
//
end;

{****************************************************************
Procedimiento   : Initialization
Objetivo        : Inicializar variables
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TSCLForm.padr_acti_consultarExecute(Sender: TObject);
begin
//
end;

end.
