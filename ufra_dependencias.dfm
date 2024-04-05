object ffra_dependencias: Tffra_dependencias
  Left = 0
  Top = 0
  Width = 115
  Height = 80
  TabOrder = 0
  object pane_dependencia: TPCPFrame
    Left = 0
    Top = 0
    Width = 115
    Height = 80
    Align = alClient
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Titulo_Color = 16244694
    FlatBorder = True
    object Panel1: TPanel
      Left = 3
      Top = 22
      Width = 109
      Height = 55
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 5
      TabOrder = 1
      object fram_list_dependencia: TdxDBTreeList
        Left = 5
        Top = 5
        Width = 99
        Height = 45
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CONS_CONSULTA'
        ParentField = 'PADR_CONSULTA'
        Align = alClient
        TabOrder = 0
        DataSource = fram_data_dependencia
        HideFocusRect = True
        HideSelection = True
        ImageIndexFieldName = 'INDE_IMAGEN'
        Images = _fMDI.imag_varias
        LookAndFeel = lfFlat
        OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoMultiSelect, etoTabThrough]
        OptionsDB = [etoAutoCalcKeyValue, etoCanDelete, etoCanNavigation, etoCheckHasChildren, etoConfirmDelete, etoLoadAllRecords]
        OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoHideFocusRect, etoUseBitmap, etoUseImageIndexForSelected]
        RootValue = '-1'
        ShowHeader = False
        TreeLineColor = clGrayText
        OnCustomDrawCell = fram_list_dependenciaCustomDrawCell
        object fram_list_dependenciaCONS_CONSULTA: TdxDBTreeListMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_CONSULTA'
        end
        object fram_list_dependenciaPADR_CONSULTA: TdxDBTreeListMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PADR_CONSULTA'
        end
        object fram_list_dependenciaVALO_TABL_DEPENDENCIA: TdxDBTreeListMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VALO_TABL_DEPENDENCIA'
          SummaryFooterType = cstCount
        end
        object fram_list_dependenciaCONS_TABL_DEPENDENCIA: TdxDBTreeListMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_TABL_DEPENDENCIA'
        end
      end
    end
  end
  object fram_quer_dependencias: TQuery
    BeforeOpen = fram_quer_dependenciasBeforeOpen
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select * from CON_PCP_(:)'
      'order by padr_consulta, cons_consulta')
    Left = 18
    Top = 26
    ParamData = <
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
    object quer_dependenciaCONS_CONSULTA: TIntegerField
      FieldName = 'CONS_CONSULTA'
    end
    object quer_dependenciaPADR_CONSULTA: TIntegerField
      FieldName = 'PADR_CONSULTA'
    end
    object quer_dependenciaVALO_TABL_DEPENDENCIA: TStringField
      DisplayLabel = 'Dependencias'
      FieldName = 'VALO_TABL_DEPENDENCIA'
      Size = 120
    end
    object quer_dependenciaINDE_IMAGEN: TIntegerField
      FieldName = 'INDE_IMAGEN'
    end
    object quer_dependenciaCONS_TABL_DEPENDENCIA: TStringField
      FieldName = 'CONS_TABL_DEPENDENCIA'
      Size = 120
    end
  end
  object fram_data_dependencia: TDataSource
    DataSet = fram_quer_dependencias
    Left = 50
    Top = 26
  end
end
