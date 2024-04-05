{ 05/03/2004 10:41:44 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:39:16 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
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
        Unit            : _vari_pcp
        Objetivo        : Librería de variables globales de PCP
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero 12 de 2003
        Versión         : pcp4000
*******************************************************************}

unit _vari_pcp;

interface

Uses
	Graphics;

Type
    tVari_pcp   = (vpcp_cons_prod_orden, vpcp_cons_prod_lote, vpcp_cons_referencia, vpcp_cons_prototipo);
  
Var
    //Se utiliza para colocar un color a los labels de los campos que son requeridos para cada usuario
    Color_Requerido : TColor;
    //Se utiliza para saber si en una tabla falta información en los campos requeridos esto se hace en la
    // función validar de cada módulo y se utiliza en el BeforePost de cada Tabla
    Campos_Requeridos : String;
    //Indica que los análisis de operaciones CST se han modificado
    var_nece_actu_operaciones       : Boolean;
    //Usuario activo
    var_usua_activo     : String;
    var_role_activo     : String;
    var_pass_activo     : String;
    var_ulti_menu   : String;
    //Variables DB
    var_pathLocal   : String;
    //Ventana MDIChild
    var_anclarHijos : Boolean;
    //Variables de consecutivos muy utilizados que se guardan en memoria para ser usados de ventana en ventana
    //TODO - HABILITACION DE VARIABLES GLOBALES EN ARRAY
    Variables : Array[tVari_pcp] of Integer;
    //RC20.13
    var_glob_integer    : Integer;
		Var_Nombre_Empresa : String;


implementation

Initialization
    var_nece_actu_operaciones := False;
    var_AnclarHijos := False;
    var_glob_integer := -1;

end.
