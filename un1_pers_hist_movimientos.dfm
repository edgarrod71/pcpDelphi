inherited fn1_pers_hist_movimientos: Tfn1_pers_hist_movimientos
  Top = 115
  Width = 812
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 759
    inherited padr_pagina: TdxPageControl
      Width = 749
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Top = 112
          Width = 359
          Height = 320
          KeyField = 'CONS_PERS_MOVIMIENTO'
          ShowSummaryFooter = False
          TabOrder = 1
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          ShowRowFooter = False
          object padr_gridCONS_PERS_MOVIMIENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 104
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_MOVIMIENTO'
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
          object padr_gridES_ANULADO: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Visible = False
            Width = 117
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ES_ANULADO'
            Descriptions.Strings = (
              'No'
              'Si')
            Images = _fMDI.imag_anulado
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              '-1'
              '1')
          end
          object padr_gridCONS_FAMI_MOVIMIENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 142
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_FAMI_MOVIMIENTO'
          end
          object padr_gridCODI_FAMI_MOVIMIENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 134
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_FAMI_MOVIMIENTO'
          end
          object padr_gridNOMB_FAMI_MOVIMIENTO: TdxDBGridMaskColumn
            Width = 111
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_FAMI_MOVIMIENTO'
          end
          object padr_gridCONS_PERS_TIPO_MOVIMIENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 128
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
          end
          object padr_gridCODI_PERS_TIPO_MOVIMIENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 123
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_TIPO_MOVIMIENTO'
          end
          object padr_gridNOMB_PERS_TIPO_MOVIMIENTO: TdxDBGridMaskColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_TIPO_MOVIMIENTO'
          end
          object padr_gridCONS_ESTADO: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_ESTADO'
            Descriptions.Strings = (
              'Activo'
              'Inactivo')
            Images = _fData.imag_pers_estados
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              '1'
              '2')
          end
          object padr_gridCODI_ESTADO: TdxDBGridMaskColumn
            Visible = False
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_ESTADO'
          end
          object padr_gridNOMB_ESTADO: TdxDBGridMaskColumn
            Visible = False
            Width = 428
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_ESTADO'
          end
          object padr_gridCONS_PERS_MOVI_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 128
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
          end
          object padr_gridCODI_PERS_MOVI_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Visible = False
            Width = 123
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_MOVI_TIPO_DOCUMENTO'
          end
          object padr_gridNOMB_PERS_MOVI_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
          end
          object padr_gridNUME_DOCUMENTO: TdxDBGridMaskColumn
            Width = 79
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_DOCUMENTO'
          end
          object padr_gridCONS_SOLICITA: TdxDBGridMaskColumn
            Visible = False
            Width = 96
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_SOLICITA'
          end
          object padr_gridCODI_SOLICITA: TdxDBGridMaskColumn
            Visible = False
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_SOLICITA'
          end
          object padr_gridNOMB_SOLICITA: TdxDBGridMaskColumn
            Width = 182
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SOLICITA'
          end
          object padr_gridCONS_APROBO: TdxDBGridMaskColumn
            Visible = False
            Width = 116
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_APROBO'
          end
          object padr_gridCODI_APROBO: TdxDBGridMaskColumn
            Visible = False
            Width = 111
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_APROBO'
          end
          object padr_gridNOMB_APROBO: TdxDBGridMaskColumn
            Width = 169
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_APROBO'
          end
          object padr_gridOBSERVACIONES: TdxDBGridBlobColumn
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBSERVACIONES'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Visible = False
            Width = 132
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            Visible = False
            Width = 146
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 749
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 749
          TabOrder = 3
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 749
          TabOrder = 4
          inherited padr_sepa_new: TShape
            Width = 743
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 112
          Height = 320
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 298
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 554
          Top = 112
          Height = 320
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 298
              inherited padr_prio_impresion: TdxTreeList
                Height = 72
              end
            end
          end
        end
        object PCPFrame1: TPCPFrame
          Tag = 60
          Left = 0
          Top = 52
          Width = 749
          Height = 60
          Align = alTop
          BorderWidth = 2
          Constraints.MinHeight = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Titulo_Color = 16244694
          TipoFrame = tfNinguno
          FlatBorder = True
          object SCLDBLabel1: TSCLDBLabel
            Left = 8
            Top = 9
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
            FocusControl = comb_pers_codigo
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Código:'
            Transparent = True
            DataSource = data_filtro
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'cons_personal'
            Field = 'cons_personal'
          end
          object SCLDBLabel2: TSCLDBLabel
            Left = 240
            Top = 9
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
            FocusControl = comb_pers_nombre
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Nombres:'
            Transparent = True
            DataSource = data_filtro
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'cons_personal'
            Field = 'cons_personal'
          end
          object SCLDBLabel3: TSCLDBLabel
            Left = 8
            Top = 29
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
            FocusControl = comb_fech_inicial
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha inicial:'
            Transparent = True
            DataSource = data_filtro
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'fech_inicial'
            Field = 'fech_inicial'
          end
          object SCLDBLabel4: TSCLDBLabel
            Left = 240
            Top = 29
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
            FocusControl = comb_fech_final
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha final:'
            Transparent = True
            DataSource = data_filtro
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'fech_final'
            Field = 'fech_final'
          end
          object comb_pers_codigo: TPCPLookUpComboEdit
            Left = 110
            Top = 9
            Width = 123
            Height = 21
            DropDownCount = 8
            DataField = 'cons_personal'
            DataSource = data_filtro
            KeyField = 'cons_personal'
            ListField = 'codi_personal'
            ListSource = data_pers_codigo
            TabOrder = 1
            OnChange = GuardarLosCambios
            DirectInput = False
          end
          object comb_pers_nombre: TPCPLookUpComboEdit
            Left = 342
            Top = 9
            Width = 302
            Height = 21
            DropDownCount = 8
            DataField = 'cons_personal'
            DataSource = data_filtro
            KeyField = 'cons_personal'
            ListField = 'nomb_completo'
            ListSource = data_pers_nombres
            TabOrder = 2
            OnChange = GuardarLosCambios
            DirectInput = False
          end
          object comb_fech_inicial: TdxDBDateEdit
            Left = 110
            Top = 29
            Width = 123
            TabOrder = 3
            DataField = 'fech_inicial'
            DataSource = data_filtro
            StyleController = padr_estilo
            OnChange = GuardarLosCambios
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
          object comb_fech_final: TdxDBDateEdit
            Left = 342
            Top = 29
            Width = 123
            TabOrder = 4
            DataField = 'fech_final'
            DataSource = data_filtro
            StyleController = padr_estilo
            OnChange = GuardarLosCambios
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
          object chec_ver_anulados: TdxCheckEdit
            Left = 472
            Top = 29
            Width = 172
            TabOrder = 5
            Caption = 'Mostrar movimientos anulados'
            StyleController = padr_estilo
            OnChange = chec_ver_anuladosChange
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
      LabelCaption = 'Historial de movimientos de personal'
      Caption = 'Historial de movimientos de personal'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 777
    Width = 27
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
    Left = 768
  end
  inherited data_ventana: TDataSource
    DataSet = nil
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_nuevo: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_modificar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_eliminar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_aceptar: TAction
      Enabled = False
    end
    inherited padr_acti_cancelar: TAction
      Enabled = False
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_cerr_carp_activa: TAction
      Enabled = False
      Visible = False
    end
    inherited acti_padr_cerr_todas_carpetas: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_ver_lista: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_llam_todos: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_comu_sele_rang_fechas: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited consulta: TQuery
    Filter = 'es_anulado = -1'
    Filtered = True
    DataSource = data_filtro
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_HIST_MOVIMIENTOS'
      '(:CONS_PERSONAL, :FECH_INICIAL, :FECH_FINAL)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PERSONAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECH_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECH_FINAL'
        ParamType = ptInput
      end>
    object consultaCONS_PERS_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Cons. movimiento'
      FieldName = 'CONS_PERS_MOVIMIENTO'
    end
    object consultaFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha inicial'
      FieldName = 'FECH_INICIAL'
    end
    object consultaFECH_FINAL: TDateTimeField
      DisplayLabel = 'Fecha Final'
      FieldName = 'FECH_FINAL'
    end
    object consultaES_ANULADO: TIntegerField
      DisplayLabel = 'Anulado'
      FieldName = 'ES_ANULADO'
    end
    object consultaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Cons. tipo movimiento'
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
    end
    object consultaCODI_PERS_TIPO_MOVIMIENTO: TStringField
      DisplayLabel = 'Cód. tipo movimiento'
      FieldName = 'CODI_PERS_TIPO_MOVIMIENTO'
      Size = 12
    end
    object consultaNOMB_PERS_TIPO_MOVIMIENTO: TStringField
      DisplayLabel = 'Tipo movimiento'
      FieldName = 'NOMB_PERS_TIPO_MOVIMIENTO'
      Size = 60
    end
    object consultaCONS_FAMI_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Cons. familia movimiento'
      FieldName = 'CONS_FAMI_MOVIMIENTO'
    end
    object consultaCODI_FAMI_MOVIMIENTO: TStringField
      DisplayLabel = 'Cód. familia movimento'
      FieldName = 'CODI_FAMI_MOVIMIENTO'
      Size = 12
    end
    object consultaNOMB_FAMI_MOVIMIENTO: TStringField
      DisplayLabel = 'Familia movimiento'
      FieldName = 'NOMB_FAMI_MOVIMIENTO'
      Size = 60
    end
    object consultaCONS_ESTADO: TIntegerField
      DisplayLabel = 'Cons. estado'
      FieldName = 'CONS_ESTADO'
    end
    object consultaCODI_ESTADO: TStringField
      DisplayLabel = 'Cód. estado'
      FieldName = 'CODI_ESTADO'
      Size = 12
    end
    object consultaNOMB_ESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'NOMB_ESTADO'
      Size = 60
    end
    object consultaCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Cons. tipo documento'
      DisplayWidth = 10
      FieldName = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
    end
    object consultaCODI_PERS_MOVI_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Cód. tipo documento'
      FieldName = 'CODI_PERS_MOVI_TIPO_DOCUMENTO'
      Size = 12
    end
    object consultaNOMB_PERS_MOVI_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Tipo de documento'
      FieldName = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
      Size = 60
    end
    object consultaNUME_DOCUMENTO: TStringField
      DisplayLabel = 'No. documento'
      FieldName = 'NUME_DOCUMENTO'
      Size = 12
    end
    object consultaCONS_SOLICITA: TIntegerField
      DisplayLabel = 'Cons. solictante'
      FieldName = 'CONS_SOLICITA'
    end
    object consultaCODI_SOLICITA: TStringField
      DisplayLabel = 'Cód. solicitante'
      FieldName = 'CODI_SOLICITA'
      Size = 12
    end
    object consultaNOMB_SOLICITA: TStringField
      DisplayLabel = 'Solicitado por'
      FieldName = 'NOMB_SOLICITA'
      Size = 102
    end
    object consultaCONS_APROBO: TIntegerField
      DisplayLabel = 'Cons. aprobado por'
      FieldName = 'CONS_APROBO'
    end
    object consultaCODI_APROBO: TStringField
      DisplayLabel = 'Cód. aprobado por'
      FieldName = 'CODI_APROBO'
      Size = 12
    end
    object consultaNOMB_APROBO: TStringField
      DisplayLabel = 'Aprobado por'
      FieldName = 'NOMB_APROBO'
      Size = 102
    end
    object consultaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
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
  inherited padr_popu_vist_actual: TTBXPopupMenu
    Left = 138
    Top = 257
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 106
    Top = 258
  end
  object tabl_filtro: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
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
    Left = 222
    Top = 222
    object tabl_filtrocons_personal: TIntegerField
      FieldName = 'cons_personal'
    end
    object tabl_filtrofech_inicial: TDateField
      FieldName = 'fech_inicial'
    end
    object tabl_filtrofech_final: TDateField
      FieldName = 'fech_final'
    end
  end
  object data_filtro: TDataSource
    DataSet = tabl_filtro
    Left = 254
    Top = 222
  end
  object quer_pers_codigo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERSONAL, CODI_PERSONAL'
      'FROM GLO_PERSONAL'
      'ORDER BY CODI_PERSONAL')
    Left = 222
    Top = 262
  end
  object quer_pers_nombres: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERSONAL, NOMB_COMPLETO'
      'FROM GLO_PERSONAL'
      'ORDER BY NOMB_COMPLETO')
    Left = 222
    Top = 294
  end
  object data_pers_codigo: TDataSource
    DataSet = quer_pers_codigo
    Left = 254
    Top = 262
  end
  object data_pers_nombres: TDataSource
    DataSet = quer_pers_nombres
    Left = 254
    Top = 294
  end
end
