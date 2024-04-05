object ffra_fotografiaDB: Tffra_fotografiaDB
  Left = 0
  Top = 0
  Width = 482
  Height = 359
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object fram_pane_atras: TPanel
    Left = 0
    Top = 26
    Width = 482
    Height = 333
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 0
    object fram_fotografia: TEDBImage
      Left = 5
      Top = 5
      Width = 472
      Height = 300
      Align = alClient
      PopupMenu = fram_pop_up
      TabOrder = 0
      OnDblClick = fram_fotografiaDblClick
      OnKeyDown = fram_fotografiaKeyDown
    end
    object fram_pane_stretch: TPanel
      Left = 5
      Top = 305
      Width = 472
      Height = 23
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object fram_chec_ajustar: TdxDBCheckEdit
        Left = -1
        Top = -2
        Width = 168
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsFlat
        TabOrder = 0
        Caption = 'Ajustar al tamaño del cuadro'
        ValueChecked = '1'
        ValueGrayed = '-1'
        ValueUnchecked = '-1'
        OnChange = AjustarTamanoFotografia
        NullStyle = nsUnchecked
      end
      object CBAjustar: TdxCheckEdit
        Left = 290
        Top = 2
        Width = 175
        TabOrder = 1
        Visible = False
        Caption = 'Ajustar al tamaño del cuadro'
        OnChange = CBAjustarChange
      end
    end
  end
  object TBXDock1: TTBXDock
    Left = 0
    Top = 0
    Width = 482
    Height = 26
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      DockMode = dmCannotFloatOrChangeDocks
      FullSize = True
      TabOrder = 0
      Visible = False
      object TBXItem7: TTBXItem
        Action = fram_acti_abrir
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imag_pequenas
      end
      object TBXItem8: TTBXItem
        Action = fram_acti_guardar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imag_pequenas
      end
      object TBXSeparatorItem3: TTBXSeparatorItem
      end
      object TBXItem9: TTBXItem
        Action = fram_acti_copiar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imag_pequenas
      end
      object TBXItem10: TTBXItem
        Action = fram_acti_cortar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imag_pequenas
      end
      object TBXItem11: TTBXItem
        Action = fram_acti_pegar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imag_pequenas
      end
      object TBXSeparatorItem4: TTBXSeparatorItem
      end
      object TBXItem12: TTBXItem
        Action = fram_acti_limpiar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imag_pequenas
      end
    end
  end
  object fram_acciones: TActionList
    Images = _fMDI.imag_pequenas
    Left = 38
    Top = 38
    object fram_acti_abrir: TAction
      Caption = '&Seleccionar imágen del disco'
      ImageIndex = 24
      OnExecute = fram_acti_abrirExecute
    end
    object fram_acti_guardar: TAction
      Caption = '&Guardar imágen en el disco...'
      ImageIndex = 5
      OnExecute = fram_acti_guardarExecute
    end
    object fram_acti_copiar: TAction
      Caption = '&Copiar'
      ImageIndex = 11
      OnExecute = fram_acti_copiarExecute
    end
    object fram_acti_pegar: TAction
      Caption = '&Pegar'
      ImageIndex = 12
      OnExecute = fram_acti_pegarExecute
    end
    object fram_acti_cortar: TAction
      Caption = 'Cortar'
      ImageIndex = 13
      OnExecute = fram_acti_cortarExecute
    end
    object fram_acti_limpiar: TAction
      Caption = '&Limpiar'
      ImageIndex = 36
      OnExecute = fram_acti_limpiarExecute
    end
    object fram_acti_ver_nuev_ventana: TAction
      Caption = 'Ver imágen en nueva ventana...'
      OnExecute = fram_acti_ver_nuev_ventanaExecute
    end
  end
  object fram_dial_guardar: TSavePictureDialog
    Title = 'Guardar imágen'
    Left = 8
    Top = 64
  end
  object fram_pop_up: TTBXPopupMenu
    Left = 8
    Top = 92
    object TBXItem2: TTBXItem
      Action = fram_acti_abrir
      Images = _fMDI.imag_pequenas
    end
    object TBXItem1: TTBXItem
      Action = fram_acti_guardar
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem1: TTBXSeparatorItem
    end
    object TBXItem3: TTBXItem
      Action = fram_acti_copiar
      Images = _fMDI.imag_pequenas
    end
    object TBXItem4: TTBXItem
      Action = fram_acti_cortar
      Images = _fMDI.imag_pequenas
    end
    object TBXItem5: TTBXItem
      Action = fram_acti_pegar
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem2: TTBXSeparatorItem
    end
    object TBXItem6: TTBXItem
      Action = fram_acti_limpiar
      Images = _fMDI.imag_pequenas
    end
    object TBXItem13: TTBXItem
      Action = fram_acti_ver_nuev_ventana
    end
  end
  object fram_dial_abrir: TOpenPictureDialog
    Filter = 
      'Todos los tipos(*.qbmp;*.gif;*.bmp;*.ico;*.emf;*.wmf)|*.qbmp;*.g' +
      'if;*.bmp;*.ico;*.emf;*.wmf;*.jpg|Imágen Quick Bitmap (*.qbmp)|*.' +
      'qbmp|Imágen CompuServe GIF (*.gif)|*.gif|Mapas de Bits(*.bmp)|*.' +
      'bmp|Iconos (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Metafi' +
      'les (*.wmf)|*.wmf|JPG (*.jpg)|*.jpg;*.jpeg'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Abrir imágen'
    Left = 8
    Top = 36
  end
end
