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
        Unit            : urn1_meto_list_oper_corte
        Objetivo        : Informe de listado de operaciones
                          de corte por referencia
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Agosto 30 de 2004 
        Versión         : pcp4000
*******************************************************************}


unit urn1_meto_list_oper_corte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_refe_base_informe, Menus, TB2Item, TBX, pcpQRControl, Db, ActnList,
  DBTables, dxfDesigner, QRExport, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, ZPropLst, dxPageControl, StdCtrls, SoCtrls, Boxes,
  PCPFrame, ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar,
  Qrctrls, PCPQRForma, PCPQrImage, PCPQrLabel, QuickRpt, PCPQRBand,
  PCPQuickReport, PCPQrDBText, JvExControls, JvComponent,
  JvGradientHeaderPanel, SCLTabs;

type
  Trn1_meto_list_oper_corte = class(Trn1_refe_base_informe)
    grup_detalle: TQRGroup;
    subd_detalle: TQRSubDetail;
    PCPQrForma10: TPCPQrForma;
    tPCPQrLabel11: tPCPQrLabel;
    tPCPQrLabel2: tPCPQrLabel;
    tPCPQrLabel3: tPCPQrLabel;
    tPCPQrLabel4: tPCPQrLabel;
    tPCPQrLabel5: tPCPQrLabel;
    tPCPQrLabel6: tPCPQrLabel;
    tPCPQrLabel7: tPCPQrLabel;
    PCPQRDBText1: TPCPQRDBText;
    PCPQRDBText2: TPCPQRDBText;
    PCPQRDBText3: TPCPQRDBText;
    PCPQRDBText4: TPCPQRDBText;
    PCPQRDBText5: TPCPQRDBText;
    PCPQRDBText6: TPCPQRDBText;
    PCPQRDBText7: TPCPQRDBText;
    quer_operaciones: TQuery;
    foot_detalle: TQRBand;
    PCPQrForma1: TPCPQrForma;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    quer_operacionesnumero: TIntegerField;
    quer_operacionesproceso: TStringField;
    quer_operacionescodigo: TStringField;
    quer_operacionesnomb_operacion: TStringField;
    quer_operacionesunid_medida: TStringField;
    quer_operacionestiempo: TFloatField;
    quer_operacionesph: TIntegerField;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    PCPQrForma2: TPCPQrForma;
    PCPQrForma3: TPCPQrForma;
    tPCPQrLabel8: tPCPQrLabel;
    tPCPQrLabel9: tPCPQrLabel;
    qrla_nomb_material: tPCPQrLabel;
    qrla_codi_material: tPCPQrLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure DoGenerar(aCodi_Material, aNomb_Material : String);
  end;

var
  rn1_meto_list_oper_corte: Trn1_meto_list_oper_corte;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : DoGenerar
Objetivo        : Genera la vista previa del informe
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 30 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Trn1_meto_list_oper_corte.DoGenerar(aCodi_Material, aNomb_Material : String);
Begin
     //Textos del material
     qrla_codi_material.Caption := aCodi_material;
     qrla_nomb_material.Caption := aNomb_material;
     //Abrir las consultas
     AbrirDataSet(quer_operaciones);
     //Generar la vista previa
     Acti_informe.Execute;
     //Cerrar
     Close;
End;

procedure Trn1_meto_list_oper_corte.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.
