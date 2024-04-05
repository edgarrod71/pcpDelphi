object ffra_filt_avanzado: Tffra_filt_avanzado
  Left = 0
  Top = 0
  Width = 593
  Height = 27
  TabOrder = 0
  object PCPFrame1: TPCPFrame
    Tag = 27
    Left = 0
    Top = 0
    Width = 593
    Height = 27
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 0
    Caption = 'Condición'
    Titulo_Color = 16244694
    Boton_Visible = False
    TipoFrame = tfNinguno
    FlatBorder = True
    object pane_1: TPanel
      Left = 96
      Top = 2
      Width = 309
      Height = 23
      Align = alLeft
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object comb_campo: TPCPLookUpComboEdit
        Left = 2
        Top = 1
        Width = 174
        Height = 21
        DropDownCount = 8
        KeyField = 'nomb_campo'
        ListField = 'texto'
        ListSource = data_campos
        TabOrder = 0
        OnChange = comb_campoChange
        DirectInput = False
      end
      object comb_filt_opciones: TPCPLookUpComboEdit
        Left = 175
        Top = 1
        Width = 130
        Height = 21
        DropDownCount = 8
        Enabled = False
        KeyField = 'cons_filt_opcion'
        ListField = 'nomb_filt_opcion'
        ListSource = data_filt_opciones
        TabOrder = 1
        OnChange = comb_filt_opcionesChange
        DirectInput = False
      end
    end
    object pane_edit_1: TPanel
      Left = 405
      Top = 2
      Width = 68
      Height = 23
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      OnResize = pane_edit_1Resize
      object edit_1: TdxEdit
        Left = 3
        Top = 1
        Width = 106
        Enabled = False
        TabOrder = 0
      end
    end
    object pane_entre: TPanel
      Left = 473
      Top = 2
      Width = 118
      Height = 23
      Align = alRight
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      Visible = False
      object Label1: TLabel
        Left = 1
        Top = 4
        Width = 6
        Height = 13
        Caption = 'y'
      end
      object edit_2: TdxEdit
        Left = 10
        Top = 1
        Width = 106
        TabOrder = 0
      end
    end
    object pane_nuevo: TPanel
      Left = 2
      Top = 2
      Width = 23
      Height = 23
      Align = alLeft
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 4
      object boto_nuevo: TTBXButtonSCL
        Left = 2
        Top = 1
        Width = 18
        Height = 20
        BorderSize = 2
        ButtonStyle = bsFlat
        ImageIndex = 0
        Images = _fMDI.imagenesPCP
        TabOrder = 0
        TabStop = False
      end
    end
    object pane_eliminar: TPanel
      Left = 25
      Top = 2
      Width = 23
      Height = 23
      Align = alLeft
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 5
      object boto_eliminar: TTBXButtonSCL
        Left = 2
        Top = 1
        Width = 18
        Height = 20
        BorderSize = 2
        ButtonStyle = bsFlat
        ImageIndex = 2
        Images = _fMDI.imagenesPCP
        TabOrder = 0
        TabStop = False
        OnClick = boto_eliminarClick
      end
    end
    object pane_yo: TPanel
      Left = 48
      Top = 2
      Width = 48
      Height = 23
      Align = alLeft
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 6
      Visible = False
      object comb_yo: TPCPLookUpComboEdit
        Left = 2
        Top = 1
        Width = 46
        Height = 21
        DropDownCount = 8
        EscapeClear = False
        KeyField = 'text_yo'
        ListField = 'text_yo'
        ListSource = data_yo
        TabOrder = 0
        DirectInput = False
      end
    end
  end
  object quer_Filt_opciones: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_FILT_OPCIONES'
      'ORDER BY CONS_FILT_OPCION')
    Left = 257
    Top = 1
  end
  object data_filt_opciones: TDataSource
    DataSet = quer_Filt_opciones
    Left = 285
    Top = 1
  end
  object data_campos: TDataSource
    Left = 200
    Top = 5
  end
  object tabl_yo: TRxMemoryData
    FieldDefs = <>
    Left = 135
    Top = 6
    object tabl_yotext_yo: TStringField
      FieldName = 'text_yo'
      Size = 5
    end
  end
  object data_yo: TDataSource
    DataSet = tabl_yo
    Left = 107
    Top = 5
  end
end
