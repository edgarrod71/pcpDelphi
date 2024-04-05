object ffra_edit_Repo_imagen: Tffra_edit_Repo_imagen
  Left = 0
  Top = 0
  Width = 334
  Height = 276
  TabOrder = 0
  object pane_imagen: TPCPFrame
    Tag = 188
    Left = 0
    Top = 0
    Width = 334
    Height = 188
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Caption = 'Imágen'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object imagen: TEDBImage
      Left = 6
      Top = 26
      Width = 160
      Height = 160
      TabOrder = 1
    end
    object boto_imag_seleccionar: TTBXButtonSCL
      Left = 176
      Top = 28
      Width = 151
      Height = 24
      Caption = 'Seleccionar...'
      ImageIndex = 24
      Images = _fMDI.imagenesPCP
      TabOrder = 2
      OnClick = boto_imag_seleccionarClick
      TipoBotonSCL = tbSCLNormal
    end
    object boto_imag_limpiar: TTBXButtonSCL
      Left = 176
      Top = 70
      Width = 151
      Height = 24
      Caption = 'Limpiar'
      ImageIndex = 36
      Images = _fMDI.imagenesPCP
      TabOrder = 3
      OnClick = boto_imag_limpiarClick
      TipoBotonSCL = tbSCLNormal
    end
    object boto_imag_exportar: TTBXButtonSCL
      Left = 176
      Top = 146
      Width = 151
      Height = 24
      Caption = 'Exportar imágen...'
      ImageIndex = 16
      Images = _fMDI.imagenesPCP
      TabOrder = 4
      TipoBotonSCL = tbSCLNormal
    end
  end
  object pane_distribucion: TPCPFrame
    Tag = 88
    Left = 0
    Top = 188
    Width = 334
    Height = 88
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Caption = 'Distribución'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    inline fram_distribucion: Tffra_edit_repo_distribucion
      Left = 3
      Top = 23
      TabOrder = 1
      inherited labe_alin_control: TSCLDBLabel
        FontActive.Name = 'Tahoma'
      end
      inherited labe_dist_texto: TSCLDBLabel
        FontActive.Name = 'Tahoma'
      end
      inherited chec_autoSize: TdxCheckEdit
        Top = 22
      end
    end
  end
end
