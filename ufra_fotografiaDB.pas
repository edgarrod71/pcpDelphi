{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeaci�n y Control de la Producci�n                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo est� protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducci�n no autorizada, la ingenier�a inversa y la   }
{       distribuci�n total o parcial del c�digo contenido en este   }
{       archivo est� estrictamente prohibido y podr� tener severas  }
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
        Unit            : ufra_fotografiaDB
        Objetivo        : Frame para fotograf�as DB (Blob)
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero 20 de 2004
        Versi�n         : pcp4000
*******************************************************************}
{$I DEFINICIONES.INC}

unit ufra_fotografiaDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  EDBImage, ExtCtrls, dxCntner, dxExEdtr, dxEdLib, dxDBELib, ActnList,
  ExtDlgs, TB2Item, TBX, Menus, Db, DBTables, StdCtrls, SCLDBLabel,
  graphicEx,jpeg,
  SCLPanelLabel {$IFDEF PCP4}, _mdi, TB2Dock, TB2Toolbar  {$ENDIF};


type
  Tffra_fotografiaDB = class(TFrame)
    fram_pane_atras: TPanel;
    fram_fotografia: TEDBImage;
    fram_pane_stretch: TPanel;
    fram_chec_ajustar: TdxDBCheckEdit;
    fram_acciones: TActionList;
    fram_acti_abrir: TAction;
    fram_acti_guardar: TAction;
    fram_acti_copiar: TAction;
    fram_acti_pegar: TAction;
    fram_acti_cortar: TAction;
    fram_acti_limpiar: TAction;
    fram_dial_guardar: TSavePictureDialog;
    fram_pop_up: TTBXPopupMenu;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem6: TTBXItem;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem7: TTBXItem;
    TBXItem8: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem9: TTBXItem;
    TBXItem10: TTBXItem;
    TBXItem11: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXItem12: TTBXItem;
    CBAjustar: TdxCheckEdit;
    fram_dial_abrir: TOpenPictureDialog;
    fram_acti_ver_nuev_ventana: TAction;
    TBXItem13: TTBXItem;
    procedure AjustarTamanoFotografia(Sender: TObject);
    procedure fram_acti_abrirExecute(Sender: TObject);
    procedure ValidarPropiedades(Sender: TObject);
    procedure fram_acti_guardarExecute(Sender: TObject);
    procedure fram_acti_copiarExecute(Sender: TObject);
    procedure fram_acti_pegarExecute(Sender: TObject);
    procedure fram_acti_cortarExecute(Sender: TObject);
    procedure fram_acti_limpiarExecute(Sender: TObject);
    procedure CBAjustarChange(Sender: TObject);
    procedure fram_fotografiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fram_fotografiaDblClick(Sender: TObject);
    procedure fram_acti_ver_nuev_ventanaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
  end;

implementation

uses _func_varias, _cons_colores
     {$IFDEF PCP4} , _func_pcp {$ENDIF}
     ;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el Frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Noviembre 03 de 2004
Versi�n         : pcp4000
*****************************************************************}
Constructor Tffra_fotografiaDB.Create (Owner : TComponent);
Begin
     //Heredar la creacion
     Inherited Create (Owner);
     {$IFDEF PCP4}
       fram_acti_ver_nuev_ventana.Enabled := True;
     {$ELSE}
       fram_acti_ver_nuev_ventana.Enabled := False; <<--
     {$ENDIF}
     AutoHints(Self);
     fram_Chec_Ajustar.Style.BorderColor := clLineaGradiente;
End;

{****************************************************************
Procedimiento   : AjustarTamanoFotografia
Objetivo        : Ejecutar las acciones cuando se selecciones
                  el cuadro de ajustar la fotograf�a
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_fotografiaDB.AjustarTamanoFotografia(Sender: TObject);
begin
        //Ajustar el tama�o de la imagen
        fram_fotografia.ShrinkToFit := fram_chec_ajustar.Checked;
        fram_fotografia.Repaint;
end;
{****************************************************************
Procedimiento   : fram_acti_abrirExecute
Objetivo        : Abrir un archivo para la fotograf�a
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_fotografiaDB.fram_acti_abrirExecute(Sender: TObject);
begin
        //validar las propiedades del componente
        ValidarPropiedades(Sender);
        //Ejecutar el dialogo de abrir fotograf�a
        if fram_dial_abrir.Execute then
        Begin
            //validar el nombre del archivo
            if fram_dial_abrir.FileName = '' Then Exit;
            If Not (fram_fotografia.DataSource.DataSet.State in [dsEdit, dsInsert]) Then
               fram_fotografia.DataSource.DataSet.Edit;
            fram_fotografia.Picture.LoadFromFile(fram_dial_abrir.FileName);
        End;
end;
{****************************************************************
Procedimiento   : ValidarPropiedades
Objetivo        : Verificar que las propiedades del
                  componente de la fotograf�a sean v�lidas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_fotografiaDB.ValidarPropiedades(Sender: TObject);
begin
        if fram_fotografia.DataSource = Nil Then Abort;
        if fram_fotografia.DataSource.DataSet = Nil Then Abort;
        if fram_fotografia.DataField = '' then Abort;
end;
{****************************************************************
Procedimiento   : fram_acti_guardarExecute
Objetivo        : Guardar la imagen a un archivo en disco
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_fotografiaDB.fram_acti_guardarExecute(Sender: TObject);
begin
        //validar las propiedades del componente
        ValidarPropiedades(Sender);
        //Ejecutar el dialogo de abrir fotograf�a
        if fram_dial_guardar.Execute then
        Begin
            //validar el nombre del archivo
            if fram_dial_guardar.FileName = '' Then Exit;
            fram_fotografia.Picture.SaveToFile(fram_dial_abrir.FileName);
        End;

end;
{****************************************************************
Procedimiento   : fram_acti_copiarExecute
Objetivo        : Copiar al portapapeles la imagen
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_fotografiaDB.fram_acti_copiarExecute(Sender: TObject);
begin
        fram_fotografia.CopyToClipboard;
end;
{****************************************************************
Procedimiento   : fram_acti_pegarExecute
Objetivo        : Pegar del portapapeles la im�gen
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_fotografiaDB.fram_acti_pegarExecute(Sender: TObject);
begin
        //validar las propiedades del componente
        ValidarPropiedades(Sender);
        If Not (fram_fotografia.DataSource.DataSet.State in [dsEdit, dsInsert]) Then
               fram_fotografia.DataSource.DataSet.Edit;
        fram_fotografia.PasteFromClipboard;
end;
{****************************************************************
Procedimiento   : fram_acti_cortarExecute
Objetivo        : Cortar la im�gen al portapapeles
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_fotografiaDB.fram_acti_cortarExecute(Sender: TObject);
begin
        //validar las propiedades del componente
        ValidarPropiedades(Sender);
        If Not (fram_fotografia.DataSource.DataSet.State in [dsEdit, dsInsert]) Then
               fram_fotografia.DataSource.DataSet.Edit;
        fram_fotografia.CutToClipboard;
end;
{****************************************************************
Procedimiento   : fram_acti_limpiarExecute
Objetivo        : Limpiar la im�gen
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_fotografiaDB.fram_acti_limpiarExecute(Sender: TObject);
begin
        //validar las propiedades del componente
        ValidarPropiedades(Sender);
        If Not (fram_fotografia.DataSource.DataSet.State in [dsEdit, dsInsert]) Then
               fram_fotografia.DataSource.DataSet.Edit;
        fram_fotografia.Picture.Assign(Nil);

end;

{****************************************************************
Procedimiento   : CBAjustarChange
Objetivo        : Ajustar la imagen sin modificar el campo
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Martes 22 de Junio de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tffra_fotografiaDB.CBAjustarChange(Sender: TObject);
begin
	fram_fotografia.ShrinkToFit := CBAjustar.Checked;
end;
{****************************************************************
Procedimiento   : fram_fotografiaKeyDown
Objetivo        : Evaluar las pulsaciones del teclado
                  sobre el componente de im�gen
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 11-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tffra_fotografiaDB.fram_fotografiaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        //Abrir con espaciadora
        if (key = vk_Space) Then
          if fram_acti_abrir.Enabled Then
            fram_acti_abrir.Execute;
end;
{****************************************************************
Procedimiento   : fram_fotografiaDblClick
Objetivo        : Mostrar el pop-up al hacer doble click sobre la
                  im�gen
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tffra_fotografiaDB.fram_fotografiaDblClick(Sender: TObject);
begin
        if Assigned(fram_fotografia.PopupMenu) Then
           fram_Fotografia.PopupMenu.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);
end;
{****************************************************************
Procedimiento   : fram_acti_ver_nuev_ventanaExecute
Objetivo        : Mostrar en una nueva ventana la im�gen
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 27-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tffra_fotografiaDB.fram_acti_ver_nuev_ventanaExecute(
  Sender: TObject);
begin
        {$IFDEF PCP4}
        if (fram_fotografia.DataSource = Nil) Then Exit;
        if (fram_fotografia.DataSource.DataSet = Nil) Then Exit;
        if Not(fram_fotografia.DataSource.DataSet.Active) Then Exit;
        if (fram_fotografia.DataField = '') Then Exit;
        MostrarImagenVentanaCompleta(fram_fotografia.DataSource,
                                fram_Fotografia.DataField);
        {$ENDIF}
end;

end.
