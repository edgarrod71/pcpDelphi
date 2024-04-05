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
        Unit            : _ventantas
        Objetivo        : Libreria de funciones para el manejo de ventanas
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero 18 de 2004
        Versi�n         : pcp4000
*******************************************************************}

unit _ventanas;

Uses _vent_child, _vent_modal, db, Forms;

// Creacion de ventanas MODALES
//....................................................................
Function CrearVentanaEdicion(Titulo:String;formStyle: TFormStyle;TipoAccion: TAccionRegistro;
      VerModal:Boolean;WindowState:TWindowState;Propiedades:TSCLPropiedadesForm;
      DataSource:TDataSource) :T_fvent_modal;




interface


{****************************************************************
Procedimiento   : CrearVentanaEdicion
Objetivo        :
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           :
Versi�n         : pcp4000
*****************************************************************}
Function CrearVentanaEdicion(Titulo:String;formStyle: TFormStyle;TipoAccion: TAccionRegistro;
      VerModal:Boolean;WindowState:TWindowState;Propiedades:TSCLPropiedadesForm;
      DataSource:TDataSource):T_fvent_modal;
Begin
     //Crear el Formulario
     Result := T_fvent_Child.Create(Application.MainForm);
     If Result <> Nil then
        With Result Do
        Begin







        End;
End;


implementation





end.
