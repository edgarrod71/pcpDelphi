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
        Unit            : un1_refe_fich_edic_06_espe_construccion
        Objetivo        : Ventana de edición de fichas técnicas
                          06 - ESPECIFICACIONES DE CONSTRUCCION
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 03-Jun-2005
        Versión         : pcp4.0.20.10
*******************************************************************}
unit un1_refe_fich_edic_06_espe_construccion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_refe_fich_00Edicion, Db, kbmMemTable, ActnList, DBTables,
  ufra_mens_atencion, dxCntner, dxEditor, dxEdLib, dxDBELib, StdCtrls,
  SoCtrls, SCLDBLabel, ExtCtrls, Boxes, PCPFrame, TBXDkPanels, TBXButtonSCL,
  SCLShape;

type
  Tfn1_refe_fich_edic_06_espe_construccion = class(Tfn1_refe_fich_00Edicion)
    quer_Sele_Detalle: TQuery;
    quer_guar_detalle: TQuery;
    padr_tabl_fich_DetallesCONS_REFE_FICH_DETALLE: TIntegerField;
    padr_tabl_fich_DetallesIMAG_1: TBlobField;
    padr_tabl_fich_DetallesIMAG_1_SMALL: TBlobField;
    padr_tabl_fich_DetallesOBSE_1: TMemoField;
    pane_contenedor: TScrollBox;
    Acciones: TActionList;
    acti_nuev_imagen: TAction;
    acti_elim_imagen: TAction;
    pane_opciones: TPanel;
    divi_1: TSCLShape;
    boto_nueva: TTBXButtonSCL;
    boto_eliminar: TTBXButtonSCL;
    labe_nume_imagenes: TLabel;
    divi_2: TSCLShape;
    procedure FormCreate(Sender: TObject);
    procedure padr_acti_AfterEjecutarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acti_nuev_imagenExecute(Sender: TObject);
    procedure acti_elim_imagenUpdate(Sender: TObject);
    procedure acti_elim_imagenExecute(Sender: TObject);
    procedure padr_acti_AfterPostExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure DestruirControles;
    Procedure ActualizarLabelNumeroImagenes;
  public
    { Public declarations }
  end;

var
  fn1_refe_fich_edic_06_espe_construccion: Tfn1_refe_fich_edic_06_espe_construccion;

implementation

uses un1_refe_fich_edic_06_editor, _cons_pcp, _func_varias, _cons_colores,
  _MDI, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_06_espe_construccion.FormCreate(
  Sender: TObject);
begin
  inherited;
  TipoFicha := ftdEspecificacionesConstruccion;
  //Inicialización visual y de variables
  Pane_Opciones.Color := clInicioGradienteHard;
  Pane_Opciones.Font.Color := clTextoGradienteHard;
  divi_1.Pen.Color := clTextoGradienteHard;
  boto_nueva.font.Color := clTextoGradienteHard;
  boto_eliminar.font.Color := clTextoGradienteHard;
  divi_2.Pen.Color := clTextoGradienteHard;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : padr_acti_AfterEjecutarExecute
Objetivo        : Crear las imágenes existentes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_06_espe_construccion.padr_acti_AfterEjecutarExecute(
  Sender: TObject);
Var
        var_Ventana : Tfn1_refe_fich_edic_06_editor;
        var_i   : Integer;
begin
  inherited;
  //Eliminar los controles existentes
  DestruirControles;
  //Crear los panels necesarios para la edición de imágenes en la ficha (n)
  if (padr_tabl_fich_tecnicas.FieldByName('cons_refe_ficha').asInteger > 0) Then
  Begin
      With quer_sele_detalle do
      Begin
          Close;
          ParamByName('cons_Refe_ficha').Value := padr_tabl_fich_tecnicas.FieldByName('cons_refe_ficha').asInteger;
          Open;
          var_i := 1;
          While not EOF do
          Begin
              //Crear un panel para cada imágen
              Application.CreateForm(Tfn1_refe_fich_edic_06_editor, var_Ventana);
              Var_ventana.Left := MaxInt;  //Para que vayan quedando a la derecha
              var_Ventana.ManualDock(pane_contenedor);
              var_Ventana.Show;
              var_Ventana.Ejecutar(FieldByName('cons_refe_fich_detalle').asInteger, padr_tabl_fich_tecnicas.FieldByName('cons_refe_ficha').asInteger);
              var_Ventana.SetTitulo(Format(cosImagenN, [IntToStr(var_i)]));
              var_Ventana.MasterDataSet := padr_tabl_fich_tecnicas;
              //Siguiente registro
              inc(var_i);
              Next;
          End;
          CheckAndPostDataSet(padr_tabl_fich_tecnicas);
          Close;
      End;
  End;
  ActualizarLabelNumeroImagenes;
end;
{****************************************************************
Procedimiento   : DestruirControles
Objetivo        : Destruye todos los controles activos en la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure Tfn1_refe_fich_edic_06_espe_construccion.DestruirControles;
Var
        var_i : Integer;
Begin
    For var_i := 1 to pane_Contenedor.ControlCount do
       pane_Contenedor.Controls[0].Free;

End;
{****************************************************************
Procedimiento   : FormDestroy
Objetivo        : Destruir los controles existentes al liberar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_06_espe_construccion.FormDestroy(
  Sender: TObject);
begin
  DestruirControles;
  inherited;
end;
{****************************************************************
Procedimiento   : acti_nuev_imagenExecute
Objetivo        : Crear una nueva imágen
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_06_espe_construccion.acti_nuev_imagenExecute(
  Sender: TObject);
Var
        var_Ventana : Tfn1_refe_fich_edic_06_editor;
begin
  inherited;
  //Crear una nueva ventana
  Application.CreateForm(Tfn1_refe_fich_edic_06_editor, var_Ventana);
  Var_ventana.Left := MaxInt;  //Para que vayan quedando a la derecha
  var_Ventana.ManualDock(pane_contenedor);
  var_Ventana.Show;
  var_Ventana.Ejecutar(0, padr_tabl_fich_tecnicas.FieldByName('cons_refe_ficha').asInteger);
  var_Ventana.SetTitulo(Format(cosImagenN, [IntToStr(pane_Contenedor.ControlCount)]));
  var_Ventana.MasterDataSet := padr_tabl_fich_tecnicas;
  CheckAndEditDataSet(padr_tabl_fich_tecnicas);
  ActualizarLabelNumeroImagenes;
end;
{****************************************************************
Procedimiento   : acti_elim_imagenUpdate
Objetivo        : Actualiza el estado de la acción eliminar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_06_espe_construccion.acti_elim_imagenUpdate(
  Sender: TObject);
begin
  inherited;
  acti_elim_imagen.Enabled := pane_contenedor.ControlCount > 0;
end;
{****************************************************************
Procedimiento   : acti_elim_imagenExecute
Objetivo        : Ejecutar la acción de eliminar la imágen seleccionada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 04-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_06_espe_construccion.acti_elim_imagenExecute(
  Sender: TObject);
Var
        var_i   : Integer;
begin
  inherited;
  //Validar
  if pane_contenedor.ControlCount = 0 Then Exit;
  for var_i := 1 to pane_contenedor.ControlCount do
  Begin
      if (pane_Contenedor.Controls[var_i - 1] is Tfn1_refe_fich_edic_06_editor) then
      Begin
          //Marcar como eliminado
          if (pane_Contenedor.Controls[var_i - 1] as Tfn1_refe_fich_edic_06_editor).Seleccionada Then
          Begin
             (pane_Contenedor.Controls[var_i - 1] as Tfn1_refe_fich_edic_06_editor).chec_eliminar.Checked := True;
             Break;
          End;
      End;
  End;
  CheckAndEditDataSet(padr_tabl_fich_tecnicas);
end;
{****************************************************************
Procedimiento   : ActualizarLabelNumeroImagenes
Objetivo        : Actualiza el label que indica el número de imágenes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure Tfn1_refe_fich_edic_06_espe_construccion.ActualizarLabelNumeroImagenes;
Begin
    labe_nume_imagenes.Caption := Format(cosNImagenes, [IntToStr(pane_Contenedor.ControlCount)]);
End;
{****************************************************************
Procedimiento   : padr_acti_AfterPostExecute
Objetivo        : Ejecutar el AFTER-POST
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_06_espe_construccion.padr_acti_AfterPostExecute(
  Sender: TObject);
Var
        var_I   : Integer;
begin
  inherited;
  //Recorrer y guardar las imágenes
  For var_i := 1 to pane_Contenedor.ControlCount do
     if (pane_Contenedor.Controls[Var_i -1] is Tfn1_refe_fich_edic_06_editor) Then
        (pane_Contenedor.Controls[Var_i -1] as Tfn1_refe_fich_edic_06_editor).Guardar;  
end;

end.
