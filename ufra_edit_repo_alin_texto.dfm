object ffra_edit_repo_alin_texto: Tffra_edit_repo_alin_texto
  Left = 0
  Top = 0
  Width = 332
  Height = 27
  TabOrder = 0
  object labe_alin_texto: TSCLDBLabel
    Left = 10
    Top = 2
    Width = 100
    Height = 21
    Alive = False
    ColorActive = clBtnFace
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'MS Sans Serif'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Alineación texto:'
    Transparent = True
    ColorRequerido = clRed
    ColorNoRequerido = clWindowText
  end
  object edit_alin_texto: TdxImageEdit
    Left = 112
    Top = 3
    Width = 211
    TabOrder = 0
    Text = 'Izquierda'
    OnChange = edit_alin_textoChange
    Descriptions.Strings = (
      ''
      ''
      ''
      '')
    ImageIndexes.Strings = (
      '0'
      '1'
      '2'
      '3')
    Images = _fData.Imag_RL_Alin_texto
    Values.Strings = (
      'Izquierda'
      'Derecha'
      'Centrado'
      'Justificado')
  end
end
