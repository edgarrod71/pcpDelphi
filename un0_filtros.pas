unit un0_filtros;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, ExtCtrls,
  dxEditor, dxEdLib, dxDBELib, TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls,
  SoCtrls, SCLDBLabel, ufra_sele_rang_fechas, Boxes, PCPProceso;

type
  TTipoFiltro = (tfFecha, tfFechaHora);
  TFiltro = Set of TTipoFiltro;

  TRespuestaFiltro = Record
     AplicarFiltro      : Boolean;
     AplicarFechaDesde  : Boolean;
     FechaDesde         : TDate;
     HoraDesde          : TTime;
     AplicarFechaHasta  : Boolean;
     FechaHasta         : TDate;
     HoraHasta          : TTime;
  End;

  Tfn0_filtros = class(T_fvent_modal)
    ffra_sele_rang_fechas: Tffra_sele_rang_fechas;
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure padr_acti_cancelarExecute(Sender: TObject);
  private
    { Private declarations }
    var_result  : TRespuestaFiltro;
  public
    { Public declarations }
    Function SeleccionarFiltro(aTitulo : String;  aTipoFiltro : TFiltro;
         aFiltroInicial : TRespuestaFiltro) : TRespuestaFiltro;
  end;

var
  fn0_filtros: Tfn0_filtros;

ResourceString
cosErrorCreandoVentanaFiltros   = 'Ocurrió un error mientras se creaba la ventana de filtros.';

implementation
uses _func_varias;
{$R *.DFM}
{****************************************************************
Procedimiento   : SeleccionarFiltro
Objetivo        : Ejecuta la ventana para la selección de un filtro
                  de acuerdo con los parámetros enviados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 01 de 2004
Versión         : pcp4000
*****************************************************************}
Function Tfn0_filtros.SeleccionarFiltro(aTitulo : String;  aTipoFiltro : TFiltro;
         aFiltroInicial : TRespuestaFiltro) : TRespuestaFiltro;
Begin
     //Mostrar/Ocultar panels
     ffra_sele_rang_fechas.Visible := ((tfFecha in aTipoFiltro) or (tfFechaHora in aTipoFiltro));
     //Panel Fecha/hora-----
     //Mostrar horas
//     ffra_sele_rang_fechas.edit_hora_desde.Visible := (tfFechaHora in aTipoFiltro);
//     ffra_sele_rang_fechas.edit_hora_hasta.Visible := (tfFechaHora in aTipoFiltro);
     //Inicializar los controles con los valores por defecto
     //Para que aplique los valores por defecto del filtro, se envia el parametro
     //Aplicar filtro como true
     If (aFiltroInicial.AplicarFiltro) then
     Begin
         ffra_sele_rang_fechas.chec_desde.Checked := aFiltroInicial.AplicarFechaDesde;
         ffra_sele_rang_fechas.comb_fech_desde.Date := aFiltroInicial.FechaDesde;
         ffra_sele_rang_fechas.comb_fech_hasta.Date := aFiltroInicial.FechaHasta;
         ffra_sele_rang_fechas.chec_Hasta.Checked := aFiltroInicial.AplicarFechaHasta;
         ffra_sele_rang_fechas.comb_fech_Hasta.Date := aFiltroInicial.FechaHasta;
         ffra_sele_rang_fechas.comb_fech_hasta.Date := aFiltroInicial.FechaHasta;
     End
     Else
     Begin
         ffra_sele_rang_fechas.comb_fech_desde.Date := NowDate;
         ffra_sele_rang_fechas.comb_fech_hasta.Date := NowDate;
     End;
     ShowModal;
     Result := var_result;
End;
{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Aceptar el filtro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn0_filtros.padr_acti_aceptarExecute(Sender: TObject);
begin
  inherited;
  //Asignar los valores del filtro a la variable
  With Var_Result do
  Begin
       AplicarFiltro := True;
       AplicarFechaDesde := ffra_sele_rang_fechas.chec_desde.Checked;
       FechaDesde := ffra_sele_rang_fechas.comb_fech_desde.Date;
//       HoraDesde := ffra_sele_rang_fechas.edit_hora_desde.Time;
       AplicarFechaHasta := ffra_sele_rang_fechas.chec_Hasta.Checked;
       FechaHasta := ffra_sele_rang_fechas.comb_fech_Hasta.Date;
//       HoraHasta := ffra_sele_rang_fechas.edit_hora_Hasta.Time;
  End;
  //Cerrar la ventana
  Close;
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Cancelar el filtro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn0_filtros.padr_acti_cancelarExecute(Sender: TObject);
begin
  inherited;
  //Asignar los valores del filtro a la variable
  With Var_Result do
       AplicarFiltro := False;
  //Cerrar la ventana
  Close;
end;

end.
