inherited FN1_Acce_Ingreso: TFN1_Acce_Ingreso
  Top = 36
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_ACCE_MOVIMIENTO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_ACCE_MOVIMIENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_ACCE_MOVIMIENTO'
          end
          object padr_gridCONS_ACCESORIO: TdxDBGridMaskColumn
            Visible = False
            Width = 84
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_ACCESORIO'
          end
          object padr_gridNUME_INVE_ACCESORIO: TdxDBGridMaskColumn
            Width = 101
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_INVE_ACCESORIO'
          end
          object padr_gridCONS_ACCE_GRUPO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_ACCE_GRUPO'
          end
          object padr_gridCODI_ACCE_GRUPO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_ACCE_GRUPO'
          end
          object padr_gridNOMB_ACCE_GRUPO: TdxDBGridMaskColumn
            Width = 214
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_ACCE_GRUPO'
          end
          object padr_gridCONS_ACCE_TIPO: TdxDBGridMaskColumn
            Visible = False
            Width = 63
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_ACCE_TIPO'
          end
          object padr_gridCODI_ACCE_TIPO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_ACCE_TIPO'
          end
          object padr_gridNOMB_ACCE_TIPO: TdxDBGridMaskColumn
            Width = 214
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_ACCE_TIPO'
          end
          object padr_gridCONS_RECU_MARCA: TdxDBGridMaskColumn
            Visible = False
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECU_MARCA'
          end
          object padr_gridCODI_RECU_MARCA: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECU_MARCA'
          end
          object padr_gridNOMB_RECU_MARCA: TdxDBGridMaskColumn
            Width = 214
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECU_MARCA'
          end
          object padr_gridNUME_SERIE: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_SERIE'
          end
          object padr_gridIMAGEN: TdxDBGridBlobColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IMAGEN'
          end
          object padr_gridDETA_IMAGEN: TdxDBGridBlobColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DETA_IMAGEN'
          end
          object padr_gridDIME_ENTRADA: TdxDBGridMaskColumn
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIME_ENTRADA'
          end
          object padr_gridDIME_SALIDA: TdxDBGridMaskColumn
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIME_SALIDA'
          end
          object padr_gridUSO: TdxDBGridMaskColumn
            Width = 214
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USO'
          end
          object padr_gridMATE_RECOMENDADO: TdxDBGridMaskColumn
            Width = 214
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MATE_RECOMENDADO'
          end
          object padr_gridCONS_ACCE_TIPO_MOVIMIENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 114
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_ACCE_TIPO_MOVIMIENTO'
          end
          object padr_gridCONS_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TIPO_DOCUMENTO'
          end
          object padr_gridCODI_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TIPO_DOCUMENTO'
          end
          object padr_gridNOMB_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Width = 214
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TIPO_DOCUMENTO'
          end
          object padr_gridNUME_DOCUMENTO: TdxDBGridMaskColumn
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_DOCUMENTO'
          end
          object padr_gridCONS_SOLICITA: TdxDBGridMaskColumn
            Visible = False
            Width = 101
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_SOLICITA'
          end
          object padr_gridCODI_SOLICITA: TdxDBGridMaskColumn
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SOLICITA'
          end
          object padr_gridNOMB_SOLICITA: TdxDBGridMaskColumn
            Width = 214
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SOLICITA'
          end
          object padr_gridCONS_ENTREGA: TdxDBGridMaskColumn
            Visible = False
            Width = 104
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_ENTREGA'
          end
          object padr_gridCODI_ENTREGA: TdxDBGridMaskColumn
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_ENTREGA'
          end
          object padr_gridNOMB_ENTREGA: TdxDBGridMaskColumn
            Width = 214
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_ENTREGA'
          end
          object padr_gridCONS_RECIBE: TdxDBGridMaskColumn
            Visible = False
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_RECIBE'
          end
          object padr_gridCODI_RECIBE: TdxDBGridMaskColumn
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_RECIBE'
          end
          object padr_gridNOMB_RECIBE: TdxDBGridMaskColumn
            Width = 214
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_RECIBE'
          end
          object padr_gridFECH_INICIAL: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_INICIAL'
          end
          object padr_gridFECH_FINAL: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_FINAL'
          end
          object padr_gridOBSERVACIONES: TdxDBGridMaskColumn
            Width = 214
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBSERVACIONES'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Maestro de accesorios'
      Caption = 'Maestro de accesorios'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    inherited padr_page_ocul_reporte: TdxTabSheet
      inherited padr_repo_fortes: Tffra_edit_reportes
        inherited TBXDock3: TTBXDock
          inherited pane_insp_objetos: TTBXDockablePanel
            inherited page: TSCLPageControl
              FixedDimension = 19
              inherited page_propiedades: TSCLTabSheet
                inherited page_prop: TSCLPageControl
                  FixedDimension = 19
                end
              end
              inherited page_campos: TSCLTabSheet
                inherited grid_camp_disponibles: TSCLDBGrid
                  Filter.Criteria = {00000000}
                end
              end
            end
          end
        end
      end
    end
  end
  inherited padr_acciones: TActionList
    object Acti_Generales: TAction
      Category = 'Movimientos'
      Caption = 'Datos Generales'
      OnExecute = padr_acti_modificarExecute
    end
    object Acti_Traslados: TAction
      Category = 'Movimientos'
      Caption = 'Traslados'
      OnExecute = Acti_TrasladosExecute
    end
    object Acti_Bajas: TAction
      Category = 'Movimientos'
      Caption = 'Bajas'
      OnExecute = Acti_BajasExecute
    end
    object Acti_Reingresos: TAction
      Category = 'Movimientos'
      Caption = 'Reingresos'
      Hint = 'Reingresos'
      OnExecute = Acti_ReingresosExecute
    end
    object Acti_anul_traslados: TAction
      Category = 'Anulados'
      Caption = 'Traslados'
      OnExecute = Acti_anul_trasladosExecute
    end
    object Acti_anul_bajas: TAction
      Category = 'Anulados'
      Caption = 'Bajas'
      OnExecute = Acti_anul_bajasExecute
    end
    object Acti_anul_reingresos: TAction
      Category = 'Anulados'
      Caption = 'Reingresos'
      OnExecute = Acti_anul_reingresosExecute
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_ACCE_MOVIMIENTO')
    object consultaCONS_ACCE_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Cons. Movimiento'
      FieldName = 'CONS_ACCE_MOVIMIENTO'
    end
    object consultaCONS_ACCESORIO: TIntegerField
      DisplayLabel = 'Conc. Accesorio'
      FieldName = 'CONS_ACCESORIO'
    end
    object consultaNUME_INVE_ACCESORIO: TStringField
      DisplayLabel = 'No. Inventario'
      FieldName = 'NUME_INVE_ACCESORIO'
      Size = 12
    end
    object consultaCONS_ACCE_GRUPO: TIntegerField
      DisplayLabel = 'Cons. Grupo'
      FieldName = 'CONS_ACCE_GRUPO'
    end
    object consultaCODI_ACCE_GRUPO: TStringField
      DisplayLabel = 'Cód. grupo'
      FieldName = 'CODI_ACCE_GRUPO'
      Size = 12
    end
    object consultaNOMB_ACCE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_ACCE_GRUPO'
      Size = 60
    end
    object consultaCONS_ACCE_TIPO: TIntegerField
      DisplayLabel = 'Cons. Tipo'
      FieldName = 'CONS_ACCE_TIPO'
    end
    object consultaCODI_ACCE_TIPO: TStringField
      DisplayLabel = 'Cód. Tipo'
      FieldName = 'CODI_ACCE_TIPO'
      Size = 12
    end
    object consultaNOMB_ACCE_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NOMB_ACCE_TIPO'
      Size = 60
    end
    object consultaCONS_RECU_MARCA: TIntegerField
      DisplayLabel = 'Cons. Marca'
      FieldName = 'CONS_RECU_MARCA'
    end
    object consultaCODI_RECU_MARCA: TStringField
      DisplayLabel = 'Cód. Marca'
      FieldName = 'CODI_RECU_MARCA'
      Size = 12
    end
    object consultaNOMB_RECU_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMB_RECU_MARCA'
      Size = 60
    end
    object consultaNUME_SERIE: TStringField
      DisplayLabel = 'No. Serie'
      FieldName = 'NUME_SERIE'
      Size = 12
    end
    object consultaIMAGEN: TBlobField
      DisplayLabel = 'Imagen'
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object consultaDETA_IMAGEN: TBlobField
      DisplayLabel = 'Detalle Imagen'
      FieldName = 'DETA_IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object consultaDIME_ENTRADA: TFloatField
      DisplayLabel = 'D. Entrada'
      FieldName = 'DIME_ENTRADA'
      DisplayFormat = ',0.00'
    end
    object consultaDIME_SALIDA: TFloatField
      DisplayLabel = 'D. Salida'
      FieldName = 'DIME_SALIDA'
      DisplayFormat = ',0.00'
    end
    object consultaUSO: TStringField
      DisplayLabel = 'Uso'
      FieldName = 'USO'
      Size = 240
    end
    object consultaMATE_RECOMENDADO: TStringField
      DisplayLabel = 'Material Recomendado'
      FieldName = 'MATE_RECOMENDADO'
      Size = 240
    end
    object consultaCONS_ACCE_TIPO_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Cons. Tipo Movimiento'
      FieldName = 'CONS_ACCE_TIPO_MOVIMIENTO'
    end
    object consultaCONS_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Cons. Tipo Documento'
      FieldName = 'CONS_TIPO_DOCUMENTO'
    end
    object consultaCODI_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Cód. Tipo Documento'
      FieldName = 'CODI_TIPO_DOCUMENTO'
      Size = 12
    end
    object consultaNOMB_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'NOMB_TIPO_DOCUMENTO'
      Size = 60
    end
    object consultaNUME_DOCUMENTO: TStringField
      DisplayLabel = 'No. Documento'
      FieldName = 'NUME_DOCUMENTO'
      Size = 12
    end
    object consultaCONS_SOLICITA: TIntegerField
      DisplayLabel = 'Cons. Solicitado Por'
      FieldName = 'CONS_SOLICITA'
    end
    object consultaCODI_SOLICITA: TStringField
      DisplayLabel = 'Cód. Solicitado Por'
      FieldName = 'CODI_SOLICITA'
      Size = 12
    end
    object consultaNOMB_SOLICITA: TStringField
      DisplayLabel = 'Solicitado Por'
      FieldName = 'NOMB_SOLICITA'
      Size = 102
    end
    object consultaCONS_ENTREGA: TIntegerField
      DisplayLabel = 'Cons. Entregado Por'
      FieldName = 'CONS_ENTREGA'
    end
    object consultaCODI_ENTREGA: TStringField
      DisplayLabel = 'Cód. Entregado Por'
      FieldName = 'CODI_ENTREGA'
      Size = 12
    end
    object consultaNOMB_ENTREGA: TStringField
      DisplayLabel = 'Entregado Por'
      FieldName = 'NOMB_ENTREGA'
      Size = 102
    end
    object consultaCONS_RECIBE: TIntegerField
      DisplayLabel = 'Cons. Recibido Por'
      FieldName = 'CONS_RECIBE'
    end
    object consultaCODI_RECIBE: TStringField
      DisplayLabel = 'Cód. Recibido Por'
      FieldName = 'CODI_RECIBE'
      Size = 12
    end
    object consultaNOMB_RECIBE: TStringField
      DisplayLabel = 'Recibido Por'
      FieldName = 'NOMB_RECIBE'
      Size = 102
    end
    object consultaFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha Inicial'
      FieldName = 'FECH_INICIAL'
    end
    object consultaFECH_FINAL: TDateTimeField
      DisplayLabel = 'Fecha Final'
      FieldName = 'FECH_FINAL'
    end
    object consultaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NUME_INVE_ACCESORIO'
    NombreAMostrar = 'Accesorio'
    CamposDeBusqueda = 'CONS_ACCE_MOVIMIENTO'
    TablaMaestra = 'GLO_ACCE_MOVIMIENTOS'
  end
  inherited padr_pop_grid: TTBXPopupMenu
    object TBXSubmenuItem3: TTBXSubmenuItem [5]
      Caption = 'Movimientos'
      object TBXItem21: TTBXItem
        Action = Acti_Generales
      end
      object TBXItem22: TTBXItem
        Action = Acti_Traslados
      end
      object TBXItem23: TTBXItem
        Action = Acti_Bajas
      end
      object TBXItem24: TTBXItem
        Action = Acti_Reingresos
      end
    end
    object TBXSubmenuItem4: TTBXSubmenuItem [6]
      Caption = 'Anular movimientos'
      object TBXItem27: TTBXItem
        Action = Acti_anul_traslados
      end
      object TBXItem26: TTBXItem
        Action = Acti_anul_bajas
      end
      object TBXItem25: TTBXItem
        Action = Acti_anul_reingresos
      end
    end
  end
  object QUbicacion: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_ACCE_UBICACION(:CONS_ACCE_MOVIMIENTO)')
    Left = 32
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_ACCE_MOVIMIENTO'
        ParamType = ptUnknown
      end>
    object QUbicacionCONS_ACCE_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_ACCE_MOVIMIENTO'
    end
    object QUbicacionCONS_ACCESORIO: TIntegerField
      FieldName = 'CONS_ACCESORIO'
    end
    object QUbicacionCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
    end
    object QUbicacionCODI_EMPRESA: TStringField
      FieldName = 'CODI_EMPRESA'
      Size = 12
    end
    object QUbicacionNOMB_EMPRESA: TStringField
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object QUbicacionCONS_AREA: TIntegerField
      FieldName = 'CONS_AREA'
    end
    object QUbicacionCODI_AREA: TStringField
      FieldName = 'CODI_AREA'
      Size = 12
    end
    object QUbicacionNOMB_AREA: TStringField
      FieldName = 'NOMB_AREA'
      Size = 60
    end
    object QUbicacionCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
    end
    object QUbicacionCODI_PLANTA: TStringField
      FieldName = 'CODI_PLANTA'
      Size = 12
    end
    object QUbicacionNOMB_PLANTA: TStringField
      FieldName = 'NOMB_PLANTA'
      Size = 60
    end
    object QUbicacionCONS_LINEA: TIntegerField
      FieldName = 'CONS_LINEA'
    end
    object QUbicacionCODI_LINEA: TStringField
      FieldName = 'CODI_LINEA'
      Size = 12
    end
    object QUbicacionNOMB_LINEA: TStringField
      FieldName = 'NOMB_LINEA'
      Size = 60
    end
    object QUbicacionCONS_SECCION: TIntegerField
      FieldName = 'CONS_SECCION'
    end
    object QUbicacionCODI_SECCION: TStringField
      FieldName = 'CODI_SECCION'
      Size = 12
    end
    object QUbicacionNOMB_SECCION: TStringField
      FieldName = 'NOMB_SECCION'
      Size = 60
    end
    object QUbicacionCONS_BODEGA: TIntegerField
      FieldName = 'CONS_BODEGA'
    end
    object QUbicacionCODI_BODEGA: TStringField
      FieldName = 'CODI_BODEGA'
      Size = 12
    end
    object QUbicacionNOMB_BODEGA: TStringField
      FieldName = 'NOMB_BODEGA'
      Size = 60
    end
    object QUbicacionOTRA_UBICACION: TStringField
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
    object QUbicacionCONS_UBIC_TIPO: TIntegerField
      FieldName = 'CONS_UBIC_TIPO'
    end
    object QUbicacionCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
    end
    object QUbicacionCONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
    end
    object QUbicacionCONS_RECURSO: TIntegerField
      FieldName = 'CONS_RECURSO'
    end
    object QUbicacionCODI_RECURSO: TStringField
      FieldName = 'CODI_RECURSO'
      Size = 12
    end
    object QUbicacionCODI_INTE_RECURSO: TStringField
      FieldName = 'CODI_INTE_RECURSO'
      Size = 12
    end
    object QUbicacionNUME_SERIE: TStringField
      FieldName = 'NUME_SERIE'
    end
  end
end
