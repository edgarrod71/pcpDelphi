inherited fn0_list_rapida: Tfn0_list_rapida
  Caption = 'Lista rápida'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_dock_arriba: TTBXDock
    inherited padr_barra: TTBXToolbar
      inherited padr_boto_aceptar: TTBXItem
        InheritOptions = False
      end
      inherited padr_boto_cancelar: TTBXItem
        InheritOptions = False
      end
    end
  end
  inherited padr_pane_info: TPanel
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
  object Panel1: TPanel [8]
    Left = 0
    Top = 54
    Width = 557
    Height = 140
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 6
    inline fram_lista: Tffra_list_rapida
      Left = 4
      Top = 4
      Width = 549
      Height = 132
      Align = alClient
      inherited Grid: TcxGrid
        Width = 549
        Height = 132
        inherited GridGrid: TcxGridDBTableView
          Styles.Background = nil
          Styles.Content = nil
          Styles.ContentEven = nil
          Styles.ContentOdd = nil
          Styles.FilterBox = nil
          Styles.Inactive = nil
          Styles.IncSearch = nil
          Styles.Selection = nil
          Styles.Footer = nil
          Styles.Group = nil
          Styles.GroupByBox = nil
          Styles.Header = nil
          Styles.Indicator = nil
          Styles.Preview = nil
        end
      end
    end
  end
  inherited data_ventana: TDataSource
    Tag = -1
    AutoEdit = False
    DataSet = nil
  end
  inherited padr_acciones: TActionList
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
      Enabled = False
      Visible = False
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
    inherited padr_acti_Data_primero: TDataSetFirst
      Enabled = False
      Visible = False
    end
    inherited padr_acti_Data_anterior: TDataSetPrior
      Enabled = False
      Visible = False
    end
    inherited padr_acti_Data_siguiente: TDataSetNext
      Enabled = False
      Visible = False
    end
    inherited padr_acti_Data_ultimo: TDataSetLast
      Enabled = False
      Visible = False
    end
    inherited padr_acti_busc_lista: TAction
      Enabled = False
      Visible = False
    end
  end
end
