{ 18/03/2004 11:50:30 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 18/03/2004 11:50:27 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 04:35:43 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 10/03/2004 04:33:35 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 06/03/2004 12:42:17 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 06/03/2004 12:42:11 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 06/03/2004 12:31:08 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 06/03/2004 12:30:30 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:40:13 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:40 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit u8n0_anotacion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, dxExEdtr, DBTables, SoCtrls, SCLDBLabel,
  PictureContainer, AdvPanel, Placemnt, Boxes, PCPFrame;

type
  Tfn0_anotacion = class(T_fvent_modal)
    edit_usua_creacion: TdxEdit;
    edit_fech_creacion: TdxDateEdit;
    Panel1: TPanel;
    AdvPanel1: TPCPFrame;
    memo_anotacion: TdxDBMemo;
    procedure padr_acti_guardarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure NuevaAnotacion(DataSource : TDataSource;
              NombreCampo : String = 'TEXT_ANOTACION'; Usuario : String = '');
    Procedure EditarAnotacion(DataSource : TDataSource;
              NombreCampo : String = 'TEXT_ANOTACION'; Usuario : String = '');
  end;

var
  fn0_anotacion: Tfn0_anotacion;

Const
  cosNuevaAnotacion     = 'Nueva anotación';
  cosEditarAnotacion    = 'Editando anotación';

implementation
Uses _cons_pcp, _func_varias;
{$R *.DFM}

Procedure Tfn0_anotacion.NuevaAnotacion(DataSource : TDataSource;
              NombreCampo : String = 'TEXT_ANOTACION'; Usuario : String = '');
Begin
      //Validar la fuente de Datos
      if (DataSource = Nil) or (DataSource.DataSet = Nil) then
         Raise Exception.Create(Format(cosErrorFuenteDatosNoValida,['']));
      If (Not DataSource.DataSet.Active) Then
         Raise Exception.Create(Format(cosErrorFuenteDatosCerrada,['']));
      //Asignar el DataSet al local y los valores del procedimiento a los controles de la ventana
      data_ventana := DataSource;
      memo_anotacion.DataSource := DataSource;
      memo_anotacion.DataField := NombreCampo;
      edit_fech_creacion.Date := NOW;
      Caption := cosNuevaAnotacion;
      If Usuario <> '' Then
      Begin
           _lUsuario.Visible := True;
           edit_usua_creacion.Visible := True;
           edit_usua_creacion.Text := Usuario;
      End;
      DataSource.DataSet.Insert;
      ShowModal;
End;
{****************************************************************
Procedimiento   : EditarAnotacion
Objetivo        : Edita la anotación activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tfn0_anotacion.EditarAnotacion(DataSource : TDataSource;
              NombreCampo : String = 'TEXT_ANOTACION'; Usuario : String = '');
Begin
      //Validar la fuente de Datos
      if (DataSource = Nil) or (DataSource.DataSet = Nil) then
         Raise Exception.Create(Format(cosErrorFuenteDatosNoValida,['']));
      If (Not DataSource.DataSet.Active) Then
         Raise Exception.Create(Format(cosErrorFuenteDatosCerrada,['']));
      //Asignar el DataSet al local y los valores del procedimiento a los controles de la ventana
      data_ventana := DataSource;
      memo_anotacion.DataSource := DataSource;
      memo_anotacion.DataField := NombreCampo;
      edit_fech_creacion.Date := NOW;
      Caption := cosEditarAnotacion;
      If Usuario <> '' Then
      Begin
           _lUsuario.Visible := True;
           edit_usua_creacion.Visible := True;
           edit_usua_creacion.Text := Usuario;
      End;
      DataSource.DataSet.Edit;
      ShowModal;
End;
{****************************************************************
Procedimiento   : padr_acti_guardarExecute
Objetivo        : Cerrar la ventana luego de guardar
Realizado por   : Carlos Calle (DESARROLLO2)
Fecha           : Abril 06 de 2004
Versión         : pct1000
*****************************************************************}
procedure Tfn0_anotacion.padr_acti_guardarExecute(Sender: TObject);
begin
  inherited;
  //Actualizar el dataSet del historial
  Try
      RefreshDataSet(Data_Ventana.DataSet);
  Except
  End;
  //Cerrar el form
  Close;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn0_anotacion.FormCreate(Sender: TObject);
begin
  inherited;
  //Hacer visible la barra de herramientas
  padr_barra.Visible := True;
  //Ocultar algunas acciones
  padr_acti_nuevo.Enabled := False;
  padr_acti_nuevo.Visible := False;
end;

end.
