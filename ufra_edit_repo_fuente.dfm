object ffra_edit_repo_fuente: Tffra_edit_repo_fuente
  Left = 0
  Top = 0
  Width = 320
  Height = 71
  TabOrder = 0
  object pane_fuente: TPanel
    Left = 8
    Top = 9
    Width = 169
    Height = 52
    BevelOuter = bvLowered
    Caption = 'Aa Bb Cc Dd Ed'
    TabOrder = 0
  end
  object boto_Camb_fuente: TTBXButtonSCL
    Left = 185
    Top = 11
    Width = 125
    Height = 20
    BorderSize = 2
    ButtonStyle = bsFlat
    Caption = 'Cambiar fuente...'
    ImageIndex = 103
    Images = _fMDI.imagenesPCP
    TabOrder = 1
    TabStop = False
    OnClick = boto_Camb_fuenteClick
  end
  object dial_Fuentes: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 200
    Top = 32
  end
end
