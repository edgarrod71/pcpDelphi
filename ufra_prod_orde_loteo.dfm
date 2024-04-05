object ffra_prod_orde_loteo: Tffra_prod_orde_loteo
  Left = 0
  Top = 0
  Width = 970
  Height = 271
  TabOrder = 0
  inline fram_mens_material: Tffra_mens_atencion
    Top = 27
    Width = 970
    VertScrollBar.Visible = False
    inherited fram_label: TAdvPanel
      Width = 970
      Text = 
        '<IMG src="3"> Debe seleccionar uno de los materiales asignados a' +
        ' la referencia'
      FullHeight = 18
    end
  end
  object TBXDock2: TTBXDock
    Left = 0
    Top = 0
    Width = 970
    Height = 27
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      DockMode = dmCannotFloatOrChangeDocks
      FullSize = True
      ParentShowHint = False
      ProcessShortCuts = True
      ShowHint = True
      TabOrder = 0
      object TBXItem28: TTBXItem
        ImageIndex = 11
        Images = _fMDI.imag_varias
      end
      object TBXSeparatorItem13: TTBXSeparatorItem
      end
      object TBXItem6: TTBXItem
        ImageIndex = 25
        Images = _fMDI.imag_pequenas
      end
      object TBXItem5: TTBXItem
        ImageIndex = 26
        Images = _fMDI.imag_pequenas
      end
      object TBXItem4: TTBXItem
        ImageIndex = 27
        Images = _fMDI.imag_pequenas
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object TBXItem8: TTBXItem
        ImageIndex = 28
        Images = _fMDI.imag_pequenas
      end
      object TBXItem7: TTBXItem
        ImageIndex = 29
        Images = _fMDI.imag_pequenas
      end
      object TBControlItem1: TTBControlItem
        Control = fram_refe_material
      end
      object TBControlItem2: TTBControlItem
        Control = SCLDBLabel5
      end
      object TBControlItem3: TTBControlItem
        Control = dxDBCurrencyEdit1
      end
      object TBControlItem4: TTBControlItem
        Control = chec_lote_color
      end
      object TBControlItem5: TTBControlItem
        Control = comb_refe_color
      end
      object SCLDBLabel5: TSCLDBLabel
        Left = 631
        Top = 1
        Width = 58
        Height = 21
        Alive = False
        ColorActive = clNone
        FontActive.Charset = DEFAULT_CHARSET
        FontActive.Color = clWindowText
        FontActive.Height = -11
        FontActive.Name = 'MS Sans Serif'
        FontActive.Style = []
        FocusOffset = 2
        Position = wlpLeft
        FocusControl = dxDBCurrencyEdit1
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Consumo:'
        Transparent = True
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      inline fram_refe_material: Tffra_refe_material
        Left = 150
        Width = 481
        Color = 14609903
        ParentColor = False
        inherited SCLDBLabel5: TSCLDBLabel
          Left = 0
          Width = 75
          ColorActive = 14609903
        end
        inherited SCLDBLabel7: TSCLDBLabel
          Left = 212
          Width = 49
          ColorActive = 14609903
        end
        inherited fram_comb_codi_material: TPCPLookUpComboEdit
          Left = 77
          DataField = 'cons_refe_material'
        end
        inherited fram_comb_nomb_material: TPCPLookUpComboEdit
          Left = 263
          Width = 215
          DataField = 'cons_refe_material'
        end
      end
      object dxDBCurrencyEdit1: TdxDBCurrencyEdit
        Left = 689
        Top = 1
        Width = 46
        Enabled = False
        TabOrder = 1
        Alignment = taRightJustify
        DataField = 'CONSUMO'
        DataSource = fram_refe_material.data_refe_materiales
        DisplayFormat = ',0.00'
        Nullable = False
        StoredValues = 1
      end
      object chec_lote_color: TdxDBCheckEdit
        Left = 735
        Top = 1
        Width = 96
        Color = clBtnFace
        ParentColor = False
        TabOrder = 2
        Caption = 'Loteo por color'
        DataField = 'TIPO_LOTEO'
        ValueChecked = '2'
        ValueUnchecked = '1'
      end
      object comb_refe_color: TPCPLookUpComboEdit
        Left = 960
        Top = 23
        Width = 138
        Height = 21
        DropDownCount = 8
        DataField = 'cons_refe_color'
        Enabled = False
        KeyField = 'cons_refe_color'
        ListField = 'nomb_color'
        TabOrder = 3
        DirectInput = False
      end
    end
  end
end
