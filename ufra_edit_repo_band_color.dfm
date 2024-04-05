object ffra_edit_repo_band_color: Tffra_edit_repo_band_color
  Left = 0
  Top = 0
  Width = 288
  Height = 63
  TabOrder = 0
  object SCLDBLabel1: TSCLDBLabel
    Left = 6
    Top = 4
    Width = 100
    Height = 25
    Alive = False
    ColorActive = clBtnFace
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'MS Sans Serif'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = edit_color
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvNone
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Color de la banda:'
    Transparent = True
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
  end
  object chec_gradiente: TdxCheckEdit
    Left = 27
    Top = 34
    Width = 77
    TabOrder = 0
    Caption = 'Gradiente:'
    OnChange = chec_gradienteChange
  end
  object edit_color: TJvOfficeColorButton
    Left = 108
    Top = 4
    Width = 73
    Height = 25
    TabOrder = 1
    Color = clBtnFace
    SelectedColor = clWhite
    Options = [cdPreventFullOpen, cdAnyColor]
    Properties.AutoCaption = 'Automático'
    Properties.OtherCaption = 'Other Colors...'
    Properties.DragBarHint = 'Drag to floating'
    OnColorChange = edit_colorColorChange
  end
  object edit_colo_gradiente: TJvOfficeColorButton
    Left = 108
    Top = 32
    Width = 73
    Height = 25
    Enabled = False
    TabOrder = 2
    Color = clBtnFace
    SelectedColor = clWhite
    Options = [cdPreventFullOpen, cdAnyColor]
    Properties.AutoCaption = 'Automático'
    Properties.OtherCaption = 'Other Colors...'
    Properties.DragBarHint = 'Drag to floating'
    OnColorChange = edit_colo_gradienteColorChange
  end
  object pane_gradiente: TPanel
    Left = 186
    Top = 28
    Width = 73
    Height = 31
    BevelOuter = bvNone
    TabOrder = 3
    Visible = False
    object boto_Grad_vertical: TTBXButtonSCL
      Left = 3
      Top = 5
      Width = 28
      Height = 24
      Hint = 'Vertical'
      GroupIndex = 1
      AutoSize = False
      BorderSize = 2
      ButtonStyle = bsFlat
      Checked = True
      ImageIndex = 101
      Images = _fMDI.imagenesPCP
      ParentShowHint = False
      ShowHint = True
      SmartFocus = False
      TabOrder = 0
      OnClick = boto_Grad_verticalClick
    end
    object boto_Grad_horizontal: TTBXButtonSCL
      Left = 35
      Top = 5
      Width = 28
      Height = 24
      Hint = 'Horizontal'
      GroupIndex = 1
      AutoSize = False
      BorderSize = 2
      ButtonStyle = bsFlat
      ImageIndex = 102
      Images = _fMDI.imagenesPCP
      ParentShowHint = False
      ShowHint = True
      SmartFocus = False
      TabOrder = 1
      OnClick = boto_Grad_horizontalClick
    end
  end
end
