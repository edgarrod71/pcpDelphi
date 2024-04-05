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
        Unit            : un0_edit_repo_tipo_banda
        Objetivo        : Editar las propiedades de las bandas
                          de reportes fortes
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Marzo 02 de 2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit un0_edit_repo_tipo_banda;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, RLReport, dxExEdtr, dxEdLib, StdCtrls,
  ufra_edit_repo_fuente, ufra_edit_repo_margenes,
  ufra_edit_Repo_band_bordes, ufra_edit_repo_band_color, dxEditor,
  ExtCtrls, PCPFrame, SCLTabs, TB2Item, PictureContainer, DBTables,
  AdvPanel, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, Boxes, PCPProceso, dxDBELib, SoCtrls, SCLDBLabel, TBX, TB2Dock,
  TB2Toolbar;


type
  Tfn0_edit_repo_Tipo_banda = class(T_fvent_modal)
    page: TSCLPageControl;
    page_gene_RLBand: TSCLTabSheet;
    dxTabSheet2: TSCLTabSheet;
    PCPFrame2: TPCPFrame;
    grup_tipo_banda: TRadioGroup;
    myBanda: TRLBand;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    PCPFrame1: TPCPFrame;
    fram_edit_colores: Tffra_edit_repo_band_color;
    page_margenes: TSCLTabSheet;
    PCPFrame5: TPCPFrame;
    fram_Edit_marg_externas: Tffra_edit_repo_margenes;
    PCPFrame6: TPCPFrame;
    fram_edit_marg_internas: Tffra_edit_repo_margenes;
    page_otros: TSCLTabSheet;
    PCPFrame3: TPCPFrame;
    fram_edit_Bordes: Tffra_edit_Repo_band_bordes;
    pane_fuente: TPCPFrame;
    fram_edit_fuente: Tffra_edit_repo_fuente;
    page_gene_RLGroup: TSCLTabSheet;
    pane_nombre: TPCPFrame;
    SCLDBLabel3: TSCLDBLabel;
    edit_nomb_objeto: TdxEdit;
    pane_salt_pagina: TPCPFrame;
    chec_salt_ninguno: TRadioButton;
    chec_salt_antes: TRadioButton;
    chec_salt_despues: TRadioButton;
    PCPFrame4: TPCPFrame;
    chec_visible: TdxCheckEdit;
    RLGroup1: TRLGroup;
    TBControlItem1: TTBControlItem;
    PCPFrame7: TPCPFrame;
    edit_camp_agrupacion: TdxButtonEdit;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    edit_camp_formula: TdxButtonEdit;
    procedure FormShow(Sender: TObject);
    procedure padr_acti_cancelarExecute(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edit_camp_agrupacionButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    var_Banda   : TRLCustomSite;
    Var_Resultado : Boolean;
    Procedure doSave;
  public
    { Public declarations }
    Function doEjecutar(peBanda : TRLCustomSite) : Boolean;
  end;

var
  fn0_edit_repo_Tipo_banda: Tfn0_edit_repo_Tipo_banda;

implementation

uses _cons_pcp, _func_varias, _func_pcp, _Traductor ;

{$R *.DFM}

procedure Tfn0_edit_repo_Tipo_banda.FormShow(Sender: TObject);
begin
  inherited;
  DarFoco(edit_nomb_objeto);
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Cancelar las propiedades
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_edit_repo_Tipo_banda.padr_acti_cancelarExecute(
  Sender: TObject);
begin
  //inherited;
  Var_Resultado := False;
  Close;
end;
{****************************************************************
Procedimiento   : doEjecutar
Objetivo        : Ejecutar la ventana de edición de las propiedades de
                  la banda
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function Tfn0_edit_repo_Tipo_banda.doEjecutar(peBanda : TRLCustomSite) : Boolean;
Begin
    Result := False;
    //Validar
    if peBanda = Nil Then
    Begin
        Raise Exception.Create(cosErroBandaReporteNoValida);
        Close;
    End;
    var_Banda := peBanda;
    //Nombre
    edit_nomb_objeto.Text := var_Banda.Name;
    Caption := Caption + ' - [' + var_Banda.Name + ']';
    //Colores
    fram_edit_colores.Banda := var_Banda;
    //Bordes
    fram_edit_bordes.Banda := var_Banda;
    //Fuente
    fram_edit_fuente.Fuente := var_Banda.Font;
    //Margenes externas
    With fram_Edit_marg_externas, var_banda.Margins do
         SetMargenes(TopMargin, BottomMargin, LeftMargin, RightMargin);
    //Margenes internas
    With fram_Edit_marg_Internas, var_banda.InsideMargins do
         SetMargenes(TopMargin, BottomMargin, LeftMargin, RightMargin);
    //Salto de página
    If (var_Banda is TRLBand) Then
    Case TRLBand(var_Banda).pageBreaking of
        pbNone : chec_salt_ninguno.Checked := True;
        pbBeforePrint : chec_salt_antes.Checked := True;
        pbAfterPrint : chec_salt_despues.Checked := True;
    End;
    //Visiblidad
    Chec_Visible.Checked := var_Banda.Visible;


    //Tipo de banda
    if (peBanda is TRLBand) Then
    Begin
        Case TRLBand(var_Banda).BandType of
            btHeader : grup_tipo_banda.ItemIndex := 0;
            btTitle : grup_tipo_banda.ItemIndex := 1;
            btColumnHeader : grup_tipo_banda.ItemIndex := 2;
            btDetail : grup_tipo_banda.ItemIndex := 3;
            btColumnFooter : grup_tipo_banda.ItemIndex := 4;
            btSummary : grup_tipo_banda.ItemIndex := 5;
            btFooter : grup_tipo_banda.ItemIndex := 6;
        End;
    End
    Else
    //Grupo
    if (peBanda is TRLGroup) Then
    Begin
        edit_camp_agrupacion.Text := TRLGroup(peBanda).DataFields;
        edit_camp_formula.Text := TRLGroup(peBanda).DataFormula;

    End;
    //Inicializar
    Var_Resultado := False;
    //Mostrar/Ocultar controles de acuerdo con el tipo de banda
    page_gene_RLBand.TabVisible := (var_Banda is TRLBand);
    pane_Salt_pagina.Visible := (var_banda is TRLBand);
    page_gene_RLGroup.TabVisible := (var_Banda is TRLGroup);
    //Pagina inicial de acuerdo con  el tipo de banda
    If (var_Banda is TRLBand) Then
    Begin
        page.ActivePage := page_gene_RLBand;
    End
    Else
    If (var_Banda is TRLGroup) Then
    Begin
        page.ActivePage := page_gene_RLGroup;
    End;
    //Panel de letra
    pane_Fuente.Align := alClient;
    pane_Fuente.Parent := page.ActivePage;
    //Panel del nombre
    pane_nombre.Parent := page.ActivePage;
    pane_nombre.Top := -1;
    pane_nombre.TabOrder := 0;
    //Mostrar el diálogo
    ShowModal;
    if (Var_Resultado) Then
    Begin
         doSave;
    End;
    Result := Var_Resultado;
End;
{****************************************************************
Procedimiento   : doSave
Objetivo        : Guarda los cambios en el objeto
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tfn0_edit_repo_Tipo_banda.doSave;
Begin
    //Validar
    if var_Banda = Nil Then
    Begin
        Raise Exception.Create(cosErroBandaReporteNoValida);
        Close;
    End;
    //Tipo de banda
    if (var_Banda Is TRLBand) Then
    Begin
        TRLBand(var_Banda).BandType := TRLBandType(grup_tipo_banda.ItemIndex);
    End
    Else
    //Grupo
    if (var_banda is TRLGroup) Then
    Begin
        TRLGroup(var_banda).DataFields := edit_camp_agrupacion.Text;
        TRLGroup(var_banda).DataFormula := edit_camp_formula.Text;

    End;

    //Colores
    fram_edit_colores.DoSave;
    //Bandas
    fram_Edit_Bordes.doSave;
    //Fuente
    var_Banda.Font.Assign(fram_edit_fuente.Fuente);
    //Margenes externas
    With fram_Edit_marg_externas, var_banda.Margins do
    Begin
        TopMargin := Margenes.Arriba;
        BottomMargin := Margenes.Abajo;
        LeftMargin := Margenes.Izquierda;
        RightMargin := Margenes.Derecha;
    End;
    //Margenes internas
    With fram_Edit_marg_Internas, var_banda.InsideMargins do
    Begin
        TopMargin := Margenes.Arriba;
        BottomMargin := Margenes.Abajo;
        LeftMargin := Margenes.Izquierda;
        RightMargin := Margenes.Derecha;
    End;
    //Salto de página
    if (var_Banda is TRLBand) Then
    Begin
       if chec_salt_ninguno.Checked Then TRLBand(var_Banda).pageBreaking := pbNone
       else if chec_salt_antes.Checked Then TRLBand(var_Banda).pageBreaking := pbBeforePrint
       else if chec_salt_despues.Checked Then TRLBand(var_Banda).pageBreaking := pbAfterPrint;
    End;
    //Visiblidad
    var_Banda.Visible := Chec_Visible.Checked;
    //Nombre
    if (edit_nomb_objeto.Text <> var_Banda.Name) Then
       var_Banda.Name := edit_nomb_objeto.Text;
End;

{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Ejecuta la acción de aceptar los cambios
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_edit_repo_Tipo_banda.padr_acti_aceptarExecute(
  Sender: TObject);
begin
  //inherited;
  Var_Resultado := True;
  Close;
end;
{****************************************************************
Procedimiento   : FormActivate
Objetivo        : Actualizar los controles al activa la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_edit_repo_Tipo_banda.FormActivate(Sender: TObject);
begin
  inherited;
  //Mostrar barra
  padr_Acti_aceptar.Enabled := true;
  padr_acti_cancelar.Enabled := True;
  padr_Acti_Aceptar.Visible := true;
  padr_acti_cancelar.Visible := True;
  padr_boto_aceptar.Visible := True;
  padr_boto_cancelar.Visible := True;
end;
{****************************************************************
Procedimiento   : edit_camp_agrupacionButtonClick
Objetivo        : Asignar los camppos del grupo, buscándolos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_edit_repo_Tipo_banda.edit_camp_agrupacionButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
Var
    var_DataSet : TDataSet;
    var_Campo : String;
begin
  inherited;
  //Obtener el DS
  if (var_Banda.FindParentReport <> Nil) Then
    if (var_banda.FindParentReport.DataSource <> Nil) Then
       if (var_banda.FindParentReport.DataSource.DataSet <> Nil) Then
          var_DataSet := var_banda.FindParentReport.DataSource.DataSet;
  if (var_DataSet = Nil) Then
     Raise Exception.Create(cosErrorReporteNoTieneDataSet);
  //Buscar el campo
  if doEjecutarDialogoSeleccionCampos(var_DataSet, var_campo) Then
    if (var_Campo <> '') Then
    Begin
       //Verificar si ya existían campos
       if (Length(edit_Camp_agrupacion.Text) > 0) Then
          edit_Camp_agrupacion.Text := edit_Camp_agrupacion.Text + ';';
       //Agregar el nuevo campo
       edit_Camp_agrupacion.Text := UpperCase(edit_Camp_agrupacion.Text) + UpperCase(var_Campo);
       edit_camp_agrupacion.SetSelection(Length(edit_Camp_agrupacion.Text) - Length(var_Campo), Length(edit_camp_agrupacion.Text), False); 
    End;
end;

procedure Tfn0_edit_repo_Tipo_banda.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
