inherited fn0_edit_campos: Tfn0_edit_campos
  Left = 219
  Top = 144
  Width = 397
  Height = 379
  Caption = 'Propiedades de los campos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 389
  end
  inherited padr_shap_xp_down: TShape
    Top = 343
    Width = 389
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 389
    inherited padr_barra: TTBXToolbar
      inherited padr_boto_cancelar: TTBXItem
        Action = acti_padr_cancelar_2
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 389
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 389
    inherited padr_sepa_new: TShape
      Width = 383
    end
  end
  inherited padr_pane_info: TPanel
    Top = 342
    Width = 389
    inherited _DBFecha_Creacion: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 344
    Width = 389
    inherited padr_beve_abajo: TBevel
      Width = 383
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 389
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 54
    Width = 389
    Height = 288
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 6
    object Grid: TdxDBGrid
      Left = 4
      Top = 4
      Width = 381
      Height = 280
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'cons_campo'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      DataSource = data_ventana
      Filter.Criteria = {00000000}
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object Gridcons_campo: TdxDBGridMaskColumn
        Color = clBtnFace
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 39
        BandIndex = 0
        RowIndex = 0
        FieldName = 'cons_campo'
      end
      object Gridtext_campo: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 168
        BandIndex = 0
        RowIndex = 0
        FieldName = 'text_campo'
      end
      object Gridnomb_campo: TdxDBGridMaskColumn
        Color = clBtnFace
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 170
        BandIndex = 0
        RowIndex = 0
        FieldName = 'nomb_campo'
      end
    end
  end
  inherited data_ventana: TDataSource
    DataSet = myTabla_Ventana
    Left = 277
    Top = 5
  end
  inherited padr_acciones: TActionList
    Left = 305
    Top = 5
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_imprimir: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_ayuda: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_salir: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Enabled = True
    end
    inherited padr_acti_aceptar: TAction
      Visible = True
    end
    inherited acti_padr_cancelar_2: TAction
      OnExecute = acti_padr_cancelar_2Execute
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
      Visible = False
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_xls: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_HTML: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_arch_sepa_comas: TAction
      Enabled = False
      Visible = False
    end
  end
  object myTabla_Ventana: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortFields = 'cons_campo'
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
    Left = 249
    Top = 5
    object myTabla_Ventanacons_campo: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'cons_campo'
    end
    object myTabla_Ventananume_campo: TIntegerField
      FieldName = 'nume_campo'
    end
    object myTabla_Ventanatext_campo: TStringField
      DisplayLabel = 'Nombre para mostrar'
      FieldName = 'text_campo'
      Size = 60
    end
    object myTabla_Ventananomb_campo: TStringField
      DisplayLabel = 'Nombre original'
      FieldName = 'nomb_campo'
      Size = 60
    end
  end
end
