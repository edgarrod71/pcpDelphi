object ffra_edit_repo_distribucion: Tffra_edit_repo_distribucion
  Left = 0
  Top = 0
  Width = 330
  Height = 82
  TabOrder = 0
  object labe_alin_control: TSCLDBLabel
    Left = 0
    Top = 2
    Width = 110
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
    Caption = 'Alineaci�n control:'
    Transparent = True
    ColorRequerido = clRed
    ColorNoRequerido = clWindowText
  end
  object labe_dist_texto: TSCLDBLabel
    Left = 0
    Top = 22
    Width = 110
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
    Caption = 'Distribuci�n texto:'
    Transparent = True
    ColorRequerido = clRed
    ColorNoRequerido = clWindowText
  end
  object chec_autoSize: TdxCheckEdit
    Left = 112
    Top = 52
    Width = 211
    Style.BorderStyle = xbsThick
    TabOrder = 2
    Caption = 'Ajustar tama�o autom�ticamente'
    OnChange = chec_autoSizeChange
  end
  object edit_layout: TdxImageEdit
    Left = 112
    Top = 22
    Width = 211
    TabOrder = 1
    Text = 'Arriba'
    OnChange = edit_layoutChange
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
    Images = _fData.imag_rl_layout
    Values.Strings = (
      'Arriba'
      'Centrado'
      'Abajo'
      'Justificado')
  end
  object edit_cont_align: TdxImageEdit
    Left = 112
    Top = 2
    Width = 211
    TabOrder = 0
    Text = 'Ninguna'
    OnChange = edit_cont_alignChange
    Descriptions.Strings = (
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    ImageIndexes.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23'
      '24'
      '25'
      '26')
    Images = _fData.imag_rl_obje_distribution
    Values.Strings = (
      'Ninguna'
      'Izquierda'
      'Arriba'
      'Derecha'
      'Abajo'
      'Izquierda (sobre todos)'
      'Derecha (sobre todos)'
      'Todo el espacio'
      'Izquierda y arriba'
      'Derecha y arriba'
      'Izquierda y abajo'
      'Derecha y abajo'
      'Centrado'
      'Centrado y a la izquierda'
      'Centrado y arriba'
      'Centrado y a la derecha'
      'Centrado y abajo'
      'Todo el espacio y a la izquierda'
      'Todo el espacio y arriba'
      'Todo el espacio y a la derecha'
      'Todo el espacio y abajo'
      'Ajustar al alto'
      'Ajustar al ancho'
      'Izquierda (�ltimo)'
      'Derecha (�ltimo)'
      'Arriba (�ltimo)'
      'Abajo (�ltimo)')
  end
end
