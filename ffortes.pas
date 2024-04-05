unit ffortes;
{*******************************************************************
        Unit            : _func_fortes
        Objetivo        : Funciones generales del manejo de Fortes
                          Reports
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Marzo 02 de 2005
        Versión         : pcp4.0.20.6
*******************************************************************}


interface

uses db, dbTables, sysUtils, Forms, RLReport, RLBarcode,
        _cons_pcp, un0_edit_repo_tipo_banda,
       un0_edit_repo_labels, un0_edit_repo_imagenes;

procedure fortesLlamarInformeDesdeBlob(peReporte : TRLReport;
        peCampo : TBlobField);

//Dialogos de propiedades
Function FortesPropiedades(peBanda : TRLCustomSite) : Boolean; Overload;
Function FortesPropiedades(peLabel : TRLLabel) : Boolean; Overload;
Function FortesPropiedades(peDBText : TRLDBText) : Boolean; Overload;
Function FortesPropiedades(peDBBarCode : TRLDBBarcode) : Boolean; Overload;
Function FortesPropiedades(peBarCode : TRLBarcode) : Boolean; Overload;
Function FortesPropiedades(peDBResult : TRLCustomDBResult) : Boolean; Overload;
Function FortesPropiedades(peSystemInfo : TRLSystemInfo) : Boolean; Overload;
Function FortesPropiedades(peImagen : TRLImage) : Boolean; Overload;
Function FortesPropiedades(peDBImagen : TRLDBImage) : Boolean; Overload;

implementation


{****************************************************************
Procedimiento   : fortesLlamarInformeDesdeBlob
Objetivo        : Llamar un informe desde un Blob
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure fortesLlamarInformeDesdeBlob(peReporte : TRLReport;
        peCampo : TBlobField);
var
  var_Blob: TBlobStream;
  var_i : Integer;
begin
  //Iniciar un nuevo reporte
  if (peReporte = Nil) Then
    Raise Exception.Create(cosErrorReporteNoAsignado);
  if (peCampo = Nil) then
    Raise Exception.Create(cosErrorCampoNoAsignado);
  //Limpiar el reporte
  For var_i := 1 To peReporte.ControlCount do
     peReporte.Controls[peReporte.ControlCount - 1].Destroy;
  //Abrir
  var_Blob := TBlobStream.Create(peCampo, bmRead);
  try
    var_Blob.ReadComponent(peReporte);
    if peReporte.Visible Then
    Begin
      peReporte.Left := 0;
      peReporte.Top := 0;
    End;
    //doAsignarDataSource;
  finally
    var_Blob.Free;
  end;
end;
{****************************************************************
Procedimiento   : FortesPropiedades
Objetivo        : Abre los diálogos de edición de propiedades
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function FortesPropiedades(peBanda : TRLCustomSite) : Boolean;
Begin
    Result := False;
    if (peBanda = Nil) Then
        Raise Exception.Create(cosErroBandaReporteNoValida);
    //Mostrar el diálogo
    Application.CreateForm(Tfn0_edit_repo_Tipo_banda, fn0_edit_repo_Tipo_banda);
    Result := fn0_edit_repo_Tipo_banda.doEjecutar(peBanda);
End;
{****************************************************************
Procedimiento   : FortesPropiedades
Objetivo        : Abre el diálogo de edición de propiedades para labels
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function FortesPropiedades(peLabel : TRLLabel) : Boolean; 
Begin
    Result := False;
    if (peLabel = Nil) Then
        Raise Exception.Create(cosErrorComponenteNoValido);
    //Mostrar el diálogo
    Application.CreateForm(Tfn0_edit_repo_labels, fn0_edit_repo_labels);
    Result := fn0_edit_repo_labels.doEjecutar(peLabel);
End;
{****************************************************************
Procedimiento   : FortesPropiedades
Objetivo        : Abre el diálogo de edición de propiedades para labels DB
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function FortesPropiedades(peDBText : TRLDBText) : Boolean; Overload;
Begin
    Result := False;
    if (peDBText = Nil) Then
        Raise Exception.Create(cosErrorComponenteNoValido);
    //Mostrar el diálogo
    Application.CreateForm(Tfn0_edit_repo_labels, fn0_edit_repo_labels);
    Result := fn0_edit_repo_labels.doEjecutar(peDBText);
End;
{****************************************************************
Procedimiento   : FortesPropiedades
Objetivo        : Abre el diálogo de edición de propiedades para BarCodes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function FortesPropiedades(peBarCode : TRLBarcode) : Boolean;
Begin
    Result := False;
    if (peBarCode = Nil) Then
        Raise Exception.Create(cosErrorComponenteNoValido);
    //Mostrar el diálogo
    Application.CreateForm(Tfn0_edit_repo_labels, fn0_edit_repo_labels);
    Result := fn0_edit_repo_labels.doEjecutar(peBarCode);
End;

{****************************************************************
Procedimiento   : FortesPropiedades
Objetivo        : Abre el diálogo de edición de propiedades para BarCodesDB
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function FortesPropiedades(peDBBarCode : TRLDBBarcode) : Boolean;
Begin
    Result := False;
    if (peDBBarCode = Nil) Then
        Raise Exception.Create(cosErrorComponenteNoValido);
    //Mostrar el diálogo
    Application.CreateForm(Tfn0_edit_repo_labels, fn0_edit_repo_labels);
    Result := fn0_edit_repo_labels.doEjecutar(peDBBarCode);
End;

{****************************************************************
Procedimiento   : FortesPropiedades
Objetivo        : Abre el diálogo de edición de propiedades para DBResult
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function FortesPropiedades(peDBResult : TRLCustomDBResult) : Boolean;
Begin
    Result := False;
    if (peDBResult = Nil) Then
        Raise Exception.Create(cosErrorComponenteNoValido);
    //Mostrar el diálogo
    Application.CreateForm(Tfn0_edit_repo_labels, fn0_edit_repo_labels);
    Result := fn0_edit_repo_labels.doEjecutar(peDBResult);
End;
{****************************************************************
Procedimiento   : FortesPropiedades
Objetivo        : Abre el diálogo de edición de propiedades para SysInformation
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function FortesPropiedades(peSystemInfo : TRLSystemInfo) : Boolean;
Begin
    Result := False;
    if (peSystemInfo = Nil) Then
        Raise Exception.Create(cosErrorComponenteNoValido);
    //Mostrar el diálogo
    Application.CreateForm(Tfn0_edit_repo_labels, fn0_edit_repo_labels);
    Result := fn0_edit_repo_labels.doEjecutar(peSystemInfo);
End;

{****************************************************************
Procedimiento   : FortesPropiedades
Objetivo        : Abre el diálogo de edición de propiedades para Imagenes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function FortesPropiedades(peImagen : TRLImage) : Boolean;
Begin
    Result := False;
    if (peImagen = Nil) Then
        Raise Exception.Create(cosErrorComponenteNoValido);
    //Mostrar el diálogo
    Application.CreateForm(Tfn0_edit_repo_imagenes , fn0_edit_repo_imagenes);
    Result := fn0_edit_repo_imagenes.doEjecutar(peImagen);
End;

{****************************************************************
Procedimiento   : FortesPropiedades
Objetivo        : Abre el diálogo de edición de propiedades para ImagenesDB
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function FortesPropiedades(peDBImagen : TRLDBImage) : Boolean;
Begin
    Result := False;
    if (peDBImagen = Nil) Then
        Raise Exception.Create(cosErrorComponenteNoValido);
    //Mostrar el diálogo
    Application.CreateForm(Tfn0_edit_repo_imagenes, fn0_edit_repo_imagenes);
    Result := fn0_edit_repo_imagenes.doEjecutar(peDBImagen);
End;
end.