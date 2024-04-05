inherited fn1_maqu_cons_rela_ingr_inventario: Tfn1_maqu_cons_rela_ingr_inventario
  Left = 99
  Top = 163
  Width = 841
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    Width = 824
    inherited padr_pagina: TdxPageControl
      Width = 814
      HideButtons = True
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TdxDBGrid
          Top = 56
          Width = 619
          Height = 345
          Bands = <
            item
              Caption = 'Documento'
            end
            item
              Caption = 'Información del recurso'
            end
            item
              Caption = 'Ubicación actual'
            end
            item
              Caption = 'Otros datos'
            end>
          DefaultLayout = False
          KeyField = 'CODI_MAQUINA'
          SummaryGroups = <
            item
              DefaultGroup = False
              SummaryItems = <>
              Name = 'padr_summary_grid'
            end
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  ColumnName = 'padr_gridCODI_MAQUINA'
                  SummaryFormat = '0'
                  SummaryType = cstCount
                end>
              Name = 'padr_gridSummaryGroup2'
            end>
          PopupMenu = popu_loca_grid
          Filter.Criteria = {00000000}
          ShowBands = True
          object padr_gridCODI_MAQUINA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 92
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CODI_MAQUINA'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridCODI_INTERNO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CODI_INTERNO'
          end
          object padr_gridCODI_MAQU_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 75
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CODI_MAQU_GRUPO'
          end
          object padr_gridNOMB_MAQU_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 131
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NOMB_MAQU_GRUPO'
          end
          object padr_gridCODI_MAQU_TIPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 75
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CODI_MAQU_TIPO'
          end
          object padr_gridNOMB_MAQU_TIPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 149
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NOMB_MAQU_TIPO'
          end
          object padr_gridCODI_MAQU_FAMILIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 75
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CODI_MAQU_FAMILIA'
          end
          object padr_gridNOMB_MAQU_FAMILIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 141
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NOMB_MAQU_FAMILIA'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 96
            BandIndex = 3
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 108
            BandIndex = 3
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
          object padr_gridFECH_COMPRA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 137
            BandIndex = 3
            RowIndex = 0
            FieldName = 'FECH_COMPRA'
          end
          object padr_gridCLASE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 158
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CLASE'
          end
          object padr_gridCODI_MAQU_MARCA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 75
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CODI_MAQU_MARCA'
          end
          object padr_gridNOMB_MAQU_MARCA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 83
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NOMB_MAQU_MARCA'
          end
          object padr_gridNUME_SERIE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 85
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NUME_SERIE'
          end
          object padr_gridCODI_TIPO_PUNTADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 84
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CODI_TIPO_PUNTADA'
          end
          object padr_gridRPM: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 1
            RowIndex = 0
            FieldName = 'RPM'
          end
          object padr_gridNOMB_MAQU_UBICACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 121
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NOMB_MAQU_UBICACION'
          end
          object padr_gridCODI_EMPRESA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 164
            BandIndex = 2
            RowIndex = 0
            FieldName = 'CODI_EMPRESA'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 120
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridCODI_AREA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 152
            BandIndex = 2
            RowIndex = 0
            FieldName = 'CODI_AREA'
          end
          object padr_gridNOMB_AREA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 117
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NOMB_AREA'
          end
          object padr_gridCODI_PLANTA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 152
            BandIndex = 2
            RowIndex = 0
            FieldName = 'CODI_PLANTA'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 118
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
          end
          object padr_gridCODI_SECCION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 158
            BandIndex = 2
            RowIndex = 0
            FieldName = 'CODI_SECCION'
          end
          object padr_gridNOMB_SECCION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 127
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NOMB_SECCION'
          end
          object padr_gridCODI_BODEGA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 157
            BandIndex = 2
            RowIndex = 0
            FieldName = 'CODI_BODEGA'
          end
          object padr_gridNOMB_BODEGA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 130
            BandIndex = 2
            RowIndex = 0
            FieldName = 'NOMB_BODEGA'
          end
          object padr_gridOTRA_UBICACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 164
            BandIndex = 2
            RowIndex = 0
            FieldName = 'OTRA_UBICACION'
          end
          object padr_gridCODI_TIPO_DOCU_ENTRADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 129
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TIPO_DOCU_ENTRADA'
          end
          object padr_gridNOMB_TIPO_DOCU_ENTRADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 99
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TIPO_DOCU_ENTRADA'
          end
          object padr_gridNUME_DOCU_ENTRADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 121
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_DOCU_ENTRADA'
          end
          object padr_gridFECH_INGRESO: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 147
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_INGRESO'
          end
          object padr_gridNOMB_ENTREGA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 142
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NOMB_ENTREGA'
          end
          object padr_gridNOMB_RECIBE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 191
            BandIndex = 3
            RowIndex = 0
            FieldName = 'NOMB_RECIBE'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 814
          Height = 45
          inherited padr_barra: TTBXToolbar
            object TBControlItem1: TTBControlItem [0]
              Control = Panel1
            end
            object TBXSeparatorItem4: TTBXSeparatorItem [2]
            end
            object TBXItem6: TTBXItem [3]
              Action = acti_loca_regi_ingreso
            end
            object TBXItem7: TTBXItem [4]
              Action = acti_loca_movimientos
            end
            object TBXSeparatorItem3: TTBXSeparatorItem [5]
            end
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 149
              Height = 41
              BevelOuter = bvNone
              TabOrder = 0
              object SCLDBLabel1: TSCLDBLabel
                Left = 0
                Top = 0
                Width = 49
                Height = 19
                Alive = True
                ColorActive = clBtnFace
                FontActive.Charset = DEFAULT_CHARSET
                FontActive.Color = clWindowText
                FontActive.Height = -11
                FontActive.Name = 'MS Sans Serif'
                FontActive.Style = []
                FocusOffset = 2
                Position = wlpLeft
                FocusControl = edit_fech_desde
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Desde:'
                Layout = tlTop
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = clBlue
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel2: TSCLDBLabel
                Left = 0
                Top = 22
                Width = 49
                Height = 18
                Alive = True
                ColorActive = clBtnFace
                FontActive.Charset = DEFAULT_CHARSET
                FontActive.Color = clWindowText
                FontActive.Height = -11
                FontActive.Name = 'MS Sans Serif'
                FontActive.Style = []
                FocusOffset = 2
                Position = wlpLeft
                FocusControl = edit_fech_hasta
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Hasta:'
                Layout = tlTop
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = clBlue
                ColorNoRequerido = clWindowText
              end
              object edit_fech_desde: TdxEdit
                Left = 51
                Top = 0
                Width = 94
                Enabled = False
                TabOrder = 0
                AutoSize = False
                StyleController = padr_estilo
                Height = 19
              end
              object edit_fech_hasta: TdxEdit
                Left = 51
                Top = 22
                Width = 94
                Enabled = False
                TabOrder = 1
                AutoSize = False
                StyleController = padr_estilo
                Height = 18
              end
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          Top = 53
          Width = 814
        end
        inherited padr_pane_sepa_1: TPanel
          Top = 45
          Width = 814
          inherited padr_beve_sepa: TBevel
            Width = 808
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 56
          Height = 345
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 319
            end
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 833
    inherited padr_pane_titulo: TPanel
      Width = 804
      Caption = 'Relación de ingreso de recursos'
    end
    inherited padr_pane_2: TPanel
      Left = 806
    end
  end
  inherited data_ventana: TDataSource
    OnStateChange = data_ventanaStateChange
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'Select *'
      'from con_pcp_maquinaria("NOW")'
      'order by fech_ingreso')
    Left = 56
    Top = 2
    object consultaCODI_MAQUINA: TStringField
      DisplayLabel = 'Código recurso'
      FieldName = 'CODI_MAQUINA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_MAQUINA'
      Size = 12
    end
    object consultaCODI_INTERNO: TStringField
      DisplayLabel = 'Código interno'
      FieldName = 'CODI_INTERNO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_INTERNO'
      Size = 12
    end
    object consultaCODI_MAQU_GRUPO: TStringField
      DisplayLabel = 'Código grupo'
      FieldName = 'CODI_MAQU_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_MAQU_GRUPO'
      Size = 12
    end
    object consultaNOMB_MAQU_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_MAQU_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_MAQU_GRUPO'
      Size = 60
    end
    object consultaCODI_MAQU_TIPO: TStringField
      DisplayLabel = 'Código tipo'
      FieldName = 'CODI_MAQU_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_MAQU_TIPO'
      Size = 12
    end
    object consultaNOMB_MAQU_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NOMB_MAQU_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_MAQU_TIPO'
      FixedChar = True
      Size = 60
    end
    object consultaCODI_MAQU_FAMILIA: TStringField
      DisplayLabel = 'Código familia'
      FieldName = 'CODI_MAQU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_MAQU_FAMILIA'
      Size = 12
    end
    object consultaNOMB_MAQU_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'NOMB_MAQU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_MAQU_FAMILIA'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.USUA_SISTEMA'
    end
    object consultaFECH_COMPRA: TDateTimeField
      DisplayLabel = 'Fecha compra'
      FieldName = 'FECH_COMPRA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.FECH_COMPRA'
    end
    object consultaCLASE: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'CLASE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CLASE'
      Size = 30
    end
    object consultaCODI_MAQU_MARCA: TStringField
      DisplayLabel = 'Código marca'
      FieldName = 'CODI_MAQU_MARCA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_MAQU_MARCA'
      Size = 12
    end
    object consultaNOMB_MAQU_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMB_MAQU_MARCA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_MAQU_MARCA'
      Size = 60
    end
    object consultaNUME_SERIE: TStringField
      DisplayLabel = 'Número serie'
      FieldName = 'NUME_SERIE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NUME_SERIE'
      Size = 30
    end
    object consultaCODI_TIPO_PUNTADA: TStringField
      DisplayLabel = 'Tipo de puntada'
      FieldName = 'CODI_TIPO_PUNTADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_TIPO_PUNTADA'
      Size = 12
    end
    object consultaRPM: TIntegerField
      DisplayLabel = 'R.P.M.'
      FieldName = 'RPM'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.RPM'
    end
    object consultaNOMB_MAQU_UBICACION: TStringField
      DisplayLabel = 'Ubicación'
      FieldName = 'NOMB_MAQU_UBICACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_MAQU_UBICACION'
      Size = 60
    end
    object consultaCODI_EMPRESA: TStringField
      DisplayLabel = 'Código empresa'
      FieldName = 'CODI_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_EMPRESA'
      Size = 12
    end
    object consultaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_EMPRESA'
      Size = 60
    end
    object consultaCODI_AREA: TStringField
      DisplayLabel = 'Código área'
      FieldName = 'CODI_AREA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_AREA'
      Size = 12
    end
    object consultaNOMB_AREA: TStringField
      DisplayLabel = 'Area'
      FieldName = 'NOMB_AREA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_AREA'
      Size = 60
    end
    object consultaCODI_PLANTA: TStringField
      DisplayLabel = 'Código planta'
      FieldName = 'CODI_PLANTA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_PLANTA'
      Size = 12
    end
    object consultaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_PLANTA'
      Size = 60
    end
    object consultaCODI_SECCION: TStringField
      DisplayLabel = 'Código sección'
      FieldName = 'CODI_SECCION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_SECCION'
      Size = 12
    end
    object consultaNOMB_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_SECCION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_TIPO_DOCU_ENTRADA'
      Size = 60
    end
    object consultaCODI_BODEGA: TStringField
      DisplayLabel = 'Código bodega'
      FieldName = 'CODI_BODEGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_BODEGA'
      Size = 12
    end
    object consultaNOMB_BODEGA: TStringField
      DisplayLabel = 'Bodega'
      FieldName = 'NOMB_BODEGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_BODEGA'
      Size = 60
    end
    object consultaOTRA_UBICACION: TStringField
      DisplayLabel = 'Otra ubicación'
      FieldName = 'OTRA_UBICACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.OTRA_UBICACION'
      Size = 30
    end
    object consultaCARACTERISTICAS: TMemoField
      DisplayLabel = 'Características'
      FieldName = 'CARACTERISTICAS'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CARACTERISTICAS'
      BlobType = ftMemo
      Size = 1
    end
    object consultaCODI_TIPO_DOCU_ENTRADA: TStringField
      DisplayLabel = 'Código tipo documento'
      FieldName = 'CODI_TIPO_DOCU_ENTRADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.CODI_TIPO_DOCU_ENTRADA'
      Size = 12
    end
    object consultaNOMB_TIPO_DOCU_ENTRADA: TStringField
      DisplayLabel = 'Tipo doc. ingreso'
      FieldName = 'NOMB_TIPO_DOCU_ENTRADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_TIPO_DOCU_ENTRADA'
      Size = 60
    end
    object consultaNUME_DOCU_ENTRADA: TStringField
      DisplayLabel = 'No. documento ingreso'
      FieldName = 'NUME_DOCU_ENTRADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NUME_DOCU_ENTRADA'
      Size = 30
    end
    object consultaFECH_INGRESO: TDateTimeField
      DisplayLabel = 'Fecha ingreso'
      FieldName = 'FECH_INGRESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.FECH_INGRESO'
    end
    object consultaNOMB_ENTREGA: TStringField
      DisplayLabel = 'Entregado por'
      FieldName = 'NOMB_ENTREGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_ENTREGA'
      Size = 60
    end
    object consultaNOMB_RECIBE: TStringField
      DisplayLabel = 'Recibido por'
      FieldName = 'NOMB_RECIBE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MAQUINARIA.NOMB_RECIBE'
      Size = 60
    end
  end
  inherited Eliminar: TQuery
    Left = 80
    Top = 2
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'CODI_MAQUINA'
    NombreAMostrar = 'Ingreso de recurso'
    CamposDeBusqueda = 'CODI_MAQUINA'
    TipoGenero = geEl
    TablaMaestra = 'NA'
    TipoModal = tmConsulta
    Top = 136
  end
  inherited pop_pagina: TTBXPopupMenu
    Left = 211
  end
  object acci_ventana: TActionList
    Top = 37
    object acti_loca_regi_ingreso: TAction
      Category = 'Locales'
      Caption = 'Ir al registro de ingreso'
    end
    object acti_loca_movimientos: TAction
      Category = 'Locales'
      Caption = 'Ver movimientos del recurso...'
    end
  end
  object popu_loca_grid: TTBXPopupMenu
    Left = 230
    Top = 162
    object TBXItem8: TTBXItem
      Action = acti_loca_regi_ingreso
    end
    object TBXItem9: TTBXItem
      Action = acti_loca_movimientos
    end
  end
  object dial_fecha: TSCLDialogoFecha
    ControlFechaInicial = edit_fech_desde
    ControlFechaFinal = edit_fech_hasta
    ValoresPorDefecto = False
    TipoFiltro = tfFecha
    Left = 256
    Top = 36
  end
end
