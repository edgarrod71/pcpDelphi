object ffra_list_rapida: Tffra_list_rapida
  Left = 0
  Top = 0
  Width = 480
  Height = 344
  TabOrder = 0
  object Grid: TcxGrid
    Left = 0
    Top = 0
    Width = 480
    Height = 344
    Align = alClient
    TabOrder = 0
    object GridGrid: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = data_lista
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      Styles.StyleSheet = _fData.cxEstilo_DevExpress
    end
    object GridLevel1: TcxGridLevel
      GridView = GridGrid
    end
  end
  object data_lista: TDataSource
    Left = 328
    Top = 56
  end
end
