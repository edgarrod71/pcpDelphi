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
        Unit            : ufra_arbo_menu
        Objetivo        : Frame para funciones asociadas con
                          el arbol del menú principal
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 13-Abr-2005
        Versión         : pcp4.0.20.6
*******************************************************************}

unit ufra_arbo_menu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, kbmMemTable, dxDBTLCl, dxTL, dxDBCtrl, dxCntner, dxDBTL, TB2Dock,
  TB2Toolbar, TBX, tb2Item;
  
type
  Tffra_arbo_menu = class(TFrame)
    tabla: TkbmMemTable;
    data_modulos: TDataSource;
    lista: TdxDBTreeList;
    listaCONS_CONSULTA: TdxDBTreeListMaskColumn;
    listaPADR_CONSULTA: TdxDBTreeListMaskColumn;
    listaNOMB_OBJETO: TdxDBTreeListMaskColumn;
    listaCAPTION: TdxDBTreeListMaskColumn;
    listaGRANTED: TdxDBTreeListCheckColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create(Owner : TComponent);Override;
    Procedure Ejecutar(peLlamarItems : Boolean = True);
  end;

implementation

uses _func_varias, _MDI, _cons_pcp;

{$R *.DFM}

{****************************************************************
Procedimiento   : Create
Objetivo        : Crear e inicializar el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Constructor Tffra_arbo_menu.Create(Owner : TComponent);
Begin
        Inherited Create(Owner);
        //Inicializar
        AutoHints(Self);
End;

{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecuta el frame y carga el menú en el arbol
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_arbo_menu.Ejecutar(peLlamarItems : Boolean = True);

    Procedure AgregarItem(vNombre, vCaption : String;
        vComponente : TTBCustomItem; var viden_item : Integer; viden_Padre : Integer);
        Var
            vContador   : Integer;
            vAuxiliar   : Integer;
            vString : String;
        Begin
              if ((peLlamarItems) And (vComponente is TTBXItem)) or
                 (vComponente is TTBXSubmenuItem) Then
              Begin
                With tabla do
                    Begin
                        Insert;
                        FieldByName('cons_consulta').Value := viden_item;
                        FieldByName('padr_consulta').Value := viden_padre;
                        if (vComponente.Action = Nil) Then vString := vComponente.Name
                        Else vString := vComponente.Action.Name;
                        FieldByName('nomb_objeto').Value := vString;
                        FieldByName('caption').Value := vComponente.Caption;
                        if (vComponente is TTBXSubMenuItem) Then
                                FieldByName('index_imagen').Value := cosIndexImagenFolder
                        Else
                                FieldByName('index_imagen').Value := vComponente.ImageIndex;
                        Post;
                    End;
              End;
              vAuxiliar := viden_item;
              Inc(viden_item);
              //Recursivo para los hijos
              if (vComponente.Count > 0) then
                 for vContador := 1 to vComponente.Count do
                    AgregarItem(vComponente.Items[vContador - 1].Name,
                                vComponente.Items[vContador - 1].Caption,
                                vComponente.Items[vContador - 1],
                                vIden_item,
                                vAuxiliar);
        End;
Var
    vCurr_parent : Integer;
    vIndex  : Integer;
    vContador : IntegeR;
    vAuxiliar   : Integer;
    vNombre : String;
begin
  inherited;
  Try
      //Inicializar la lista de permisos
      With Tabla do
        Begin
          DisableControls;
          vIndex := 0;
          Close;
          Open;
          For vcurr_parent := 1 to _fmdi.Barra.Items.Count do
            Begin
                Insert;
                FieldByName('cons_consulta').Value := vIndex;
                FieldByName('padr_consulta').Value := -1;
                if (_fmdi.Barra.Items[vcurr_parent - 1].Action = Nil) then
                    vNombre := _fmdi.Barra.Items[vcurr_parent - 1].Name
                Else
                    vNombre := _fmdi.Barra.Items[vcurr_parent - 1].Action.Name;
                FieldByName('nomb_objeto').Value := vNombre;
                FieldByName('caption').Value := _fmdi.Barra.Items[vcurr_parent - 1].Caption;
                FieldByName('index_imagen').Value := cosIndexImagenFolder;
                Post;
                vAuxiliar := vIndex;
                Inc(vIndex);
                //Crear los hijos
                For vContador := 1 to _fmdi.Barra.Items[vcurr_parent - 1].Count do
                    AgregarItem(_fmdi.Barra.Items[vcurr_parent - 1].Items[vContador - 1].Name,
                                _fmdi.Barra.Items[vcurr_parent - 1].Items[vContador - 1].Caption,
                                _fmdi.Barra.Items[vcurr_parent - 1].Items[vContador - 1],
                                vIndex,
                                vAuxiliar);
            End;
            //Ir al ultimo registro (que es el inicial)
            Last;
        End;
  Except
      On e:Exception do
        EjecutarMensajeError(e.Message);
  End;
  //
  tabla.EnableControls;
End;
end.
