object ffra_edit_sino: Tffra_edit_sino
  Left = 0
  Top = 0
  Width = 115
  Height = 17
  TabOrder = 0
  object chec_si: TmbTBXRadioButton
    Left = 0
    Top = 0
    Width = 48
    Height = 17
    Caption = 'Si'
    Checked = True
    TabOrder = 0
    OnChange = chec_siChange
  end
  object chec_no: TmbTBXRadioButton
    Left = 56
    Top = 0
    Width = 48
    Height = 17
    Caption = 'No'
    TabOrder = 1
    OnChange = chec_noChange
  end
end
