object ffra_disenar: Tffra_disenar
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  object PCPFrame1: TPCPFrame
    Tag = 240
    Left = 0
    Top = 0
    Width = 320
    Height = 240
    Align = alClient
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
    BorderWidthIn = 4
    FlatBorder = True
    object ELDesignPanel1: TELDesignPanel
      Left = 7
      Top = 7
      Width = 306
      Height = 226
      BorderStyle = bsNone
      AutoScroll = True
      Align = alClient
      TabOrder = 1
      TabStop = True
    end
  end
  object ELDesigner1: TELDesigner
    DesignPanel = ELDesignPanel1
    ShowingHints = [htControl]
    ClipboardFormat = 'Extension Library designer components'
    Left = 24
    Top = 24
  end
end
