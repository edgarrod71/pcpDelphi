inherited fn1_pers_form_pago_bonos: Tfn1_pers_form_pago_bonos
  Left = 9
  Top = 43
  Width = 812
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 578
    inherited padr_pagina: TdxPageControl
      Width = 568
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Top = 137
          Width = 178
          Height = 295
          KeyField = 'CONS_FORM_PAGO_BONO_PERSONAL'
          TabOrder = 1
          Filter.Criteria = {00000000}
          object padr_gridCONS_FORM_PAGO_BONO_PERSONAL: TdxDBGridMaskColumn
            Visible = False
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_FORM_PAGO_BONO_PERSONAL'
          end
          object padr_gridFECH_INICIAL: TdxDBGridDateColumn
            Width = 107
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_INICIAL'
          end
          object padr_gridCONS_FORM_PAGO_BONO: TdxDBGridMaskColumn
            Visible = False
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_FORM_PAGO_BONO'
          end
          object padr_gridCODI_FORM_PAGO_BONO: TdxDBGridMaskColumn
            Visible = False
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_FORM_PAGO_BONO'
          end
          object padr_gridNOMB_FORM_PAGO_BONO: TdxDBGridMaskColumn
            Width = 215
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_FORM_PAGO_BONO'
          end
          object padr_gridINDICADOR: TdxDBGridMaskColumn
            Visible = False
            Width = 128
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INDICADOR'
          end
          object padr_gridNOMB_INDICADOR: TdxDBGridMaskColumn
            Width = 95
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_INDICADOR'
          end
          object padr_gridES_PORCENTUAL: TdxDBGridCheckColumn
            Width = 35
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ES_PORCENTUAL'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object padr_gridVALO_BONIFICACION: TdxDBGridMaskColumn
            Width = 87
            BandIndex = 0
            RowIndex = 0
            OnCustomDrawCell = padr_gridVALO_BONIFICACIONCustomDrawCell
            FieldName = 'VALO_BONIFICACION'
          end
          object padr_gridMETA_EFICIENCIA: TdxDBGridMaskColumn
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'META_EFICIENCIA'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Visible = False
            Width = 178
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            Visible = False
            Width = 198
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 568
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 568
          TabOrder = 3
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 568
          TabOrder = 4
          inherited padr_sepa_new: TShape
            Width = 562
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 137
          Height = 295
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 273
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 373
          Top = 137
          Height = 295
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 273
              inherited padr_prio_impresion: TdxTreeList
                Height = 47
              end
            end
          end
        end
        object pane_filtros: TPCPFrame
          Tag = 85
          Left = 0
          Top = 52
          Width = 568
          Height = 85
          Align = alTop
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Titulo_Color = 16244694
          FlatBorder = True
          object SCLDBLabel1: TSCLDBLabel
            Left = 8
            Top = 32
            Width = 100
            Height = 21
            Alive = False
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Cód. operario:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel2: TSCLDBLabel
            Left = 320
            Top = 32
            Width = 100
            Height = 21
            Alive = False
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Nombres:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object comb_codi_personal: TPCPLookUpComboEdit
            Left = 112
            Top = 32
            Width = 161
            Height = 21
            DropDownCount = 8
            DataField = 'cons_personal'
            DataSource = myData_Ventana
            KeyField = 'cons_personal'
            ListField = 'codi_personal'
            ListSource = data_pers_codigo
            TabOrder = 1
            OnChange = GuardarYActualizar
            DirectInput = False
          end
          object comb_nomb_personal: TPCPLookUpComboEdit
            Left = 424
            Top = 32
            Width = 321
            Height = 21
            DropDownCount = 8
            DataField = 'cons_personal'
            DataSource = myData_Ventana
            KeyField = 'cons_personal'
            ListField = 'nomb_completo'
            ListSource = data_pers_nombres
            TabOrder = 2
            OnChange = GuardarYActualizar
            DirectInput = False
          end
          object chec_fech_inicial: TdxCheckEdit
            Left = 25
            Top = 52
            Width = 83
            TabOrder = 3
            AutoSize = False
            Caption = 'Fecha inicial:'
            OnChange = chec_fech_inicialChange
            FullFocusRect = True
            Height = 21
          end
          object comb_fech_inicial: TdxDBDateEdit
            Left = 112
            Top = 52
            Width = 121
            Enabled = False
            TabOrder = 4
            DataField = 'fech_inicial'
            DataSource = myData_Ventana
            StyleController = padr_estilo
            OnChange = GuardarYActualizar
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
          object chec_fech_final: TdxCheckEdit
            Left = 337
            Top = 52
            Width = 83
            TabOrder = 5
            AutoSize = False
            Caption = 'Fecha inicial:'
            OnChange = chec_fech_finalChange
            FullFocusRect = True
            Height = 21
          end
          object comb_fech_final: TdxDBDateEdit
            Left = 424
            Top = 52
            Width = 121
            Enabled = False
            TabOrder = 6
            DataField = 'fech_final'
            DataSource = myData_Ventana
            StyleController = padr_estilo
            OnChange = GuardarYActualizar
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 804
    inherited padr_pane_2: TPanel
      Left = 733
    end
    inherited padr_pane_cerrar: TPanel
      Left = 751
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 733
      LabelCaption = 'Asignación de bonos por producción'
      Caption = 'Asignación de bonos por producción'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 596
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
  inherited padr_dock_top: TTBXDock
    Width = 804
  end
  inherited padr_dock_bottom: TTBXDock
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 587
  end
  inherited consulta: TQuery
    BeforeOpen = consultaBeforeOpen
    DataSource = myData_Ventana
    SQL.Strings = (
      'SELECT *'
      'FROM CON_PCP_FORM_PAGO_BONO_PERSONAL'
      '(:CONS_PERSONAL,'
      ':FECH_INICIAL, :FECH_FINAL)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_personal'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'fech_inicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'fech_final'
        ParamType = ptUnknown
      end>
    object consultaCONS_FORM_PAGO_BONO_PERSONAL: TIntegerField
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_FORM_PAGO_BONO_PERSONAL'
    end
    object consultaFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha inicial'
      FieldName = 'FECH_INICIAL'
    end
    object consultaCONS_FORM_PAGO_BONO: TIntegerField
      DisplayLabel = 'Cons. obo'
      FieldName = 'CONS_FORM_PAGO_BONO'
    end
    object consultaCODI_FORM_PAGO_BONO: TStringField
      DisplayLabel = 'Cód. bono'
      FieldName = 'CODI_FORM_PAGO_BONO'
      Size = 12
    end
    object consultaNOMB_FORM_PAGO_BONO: TStringField
      DisplayLabel = 'Bono'
      FieldName = 'NOMB_FORM_PAGO_BONO'
      Size = 60
    end
    object consultaINDICADOR: TIntegerField
      DisplayLabel = 'Cons. indicador'
      FieldName = 'INDICADOR'
    end
    object consultaNOMB_INDICADOR: TStringField
      DisplayLabel = 'Indicador'
      FieldName = 'NOMB_INDICADOR'
      Size = 60
    end
    object consultaES_PORCENTUAL: TIntegerField
      DisplayLabel = '%'
      FieldName = 'ES_PORCENTUAL'
    end
    object consultaVALO_BONIFICACION: TFloatField
      DisplayLabel = 'Bonificación'
      FieldName = 'VALO_BONIFICACION'
      DisplayFormat = ',0.00'
    end
    object consultaMETA_EFICIENCIA: TFloatField
      DisplayLabel = 'Meta'
      FieldName = 'META_EFICIENCIA'
      DisplayFormat = ',0.00 %'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'fech_inicial'
    NombreAMostrar = 'Asignación bono de producción'
    CamposDeBusqueda = 'CONS_FORM_PAGO_BONO_PERSONAL'
    TipoGenero = geLa
    TablaMaestra = 'PCP_FORM_PAGO_BONO_PERSONAL'
  end
  object myTabla_Ventana: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'cons_personal'
        DataType = ftInteger
      end
      item
        Name = 'fech_inicial'
        DataType = ftDate
      end
      item
        Name = 'fech_final'
        DataType = ftDate
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 38
    Top = 119
    object myTabla_Ventanacons_personal: TIntegerField
      FieldName = 'cons_personal'
    end
    object myTabla_Ventanafech_inicial: TDateField
      FieldName = 'fech_inicial'
    end
    object myTabla_Ventanafech_final: TDateField
      FieldName = 'fech_final'
    end
  end
  object myData_Ventana: TDataSource
    DataSet = myTabla_Ventana
    Left = 66
    Top = 119
  end
  object quer_pers_codigo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERSONAL, CODI_PERSONAL'
      'FROM GLO_PERSONAL'
      'ORDER BY CODI_PERSONAL')
    Left = 270
    Top = 398
  end
  object quer_pers_nombres: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERSONAL, NOMB_COMPLETO'
      'FROM GLO_PERSONAL'
      'ORDER BY NOMB_COMPLETO')
    Left = 302
    Top = 398
  end
  object data_pers_codigo: TDataSource
    DataSet = quer_pers_codigo
    Left = 270
    Top = 438
  end
  object data_pers_nombres: TDataSource
    DataSet = quer_pers_nombres
    Left = 302
    Top = 438
  end
end
