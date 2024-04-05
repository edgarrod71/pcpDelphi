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
        Unit            : _ventantas
        Objetivo        : Libreria de funciones para el manejo de ventanas
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero 18 de 2004
        Versión         : pcp4000
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
Versión         : pcp4000
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
