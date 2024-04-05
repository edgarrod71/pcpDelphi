inherited fn1_prod_orde_liqu_corte: Tfn1_prod_orde_liqu_corte
  Left = 63
  Top = 30
  Height = 612
  Caption = 'Liquidación de corte (unidades)'
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 584
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 158
  end
  inherited padr_pane_info: TPanel
    Top = 583
    inherited _DBFecha_Creacion: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 575
  end
  inherited padr_pane_principal: TPanel
    Top = 165
  end
  object page: TSCLPageControl [8]
    Left = 0
    Top = 167
    Width = 804
    Height = 408
    ActivePage = page_unidades
    Align = alClient
    BoldCurrentTab = True
    Color = 16578290
    FlatColor = 10435335
    Images = _fMDI.imagenesPCP
    Margin = 5
    ParentColor = False
    TabColors.Shadow = 15582631
    TabColors.Unselected = 16578290
    TabIndex = 0
    TabOrder = 6
    Transparent = True
    Visible = False
    FixedDimension = 22
    object page_unidades: TSCLTabSheet
      Color = 16578290
      ImageIndex = 74
      Caption = 'Liquidación de unidades'
      object dfsSplitter1: TdfsSplitter
        Left = 0
        Top = 217
        Width = 800
        Height = 10
        Cursor = crVSplit
        Align = alTop
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object PCPFrame1: TPCPFrame
        Tag = 197
        Left = 0
        Top = 227
        Width = 800
        Height = 155
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
        Caption = 'Unidades cortadas'
        Titulo_Color = 16244694
        Boton_Visible = False
        BorderWidthIn = 4
        FlatBorder = True
        object grid: TSCLColumnGrid
          Left = 7
          Top = 52
          Width = 786
          Height = 96
          Cursor = crDefault
          Align = alClient
          ColCount = 5
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 19
          FixedColor = 15582631
          RowCount = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ScrollBars = ssBoth
          ShowHint = False
          TabOrder = 1
          OnKeyDown = gridKeyDown
          OnSelectCell = gridSelectCell
          ActiveCellShow = True
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          EnhRowColMove = False
          OnGetCellColor = gridGetCellColor
          OnGetAlignment = gridGetAlignment
          ControlLook.ControlStyle = csClassic
          Flat = True
          SearchFooter.FindNextCaption = 'Find next'
          SearchFooter.FindPrevCaption = 'Find previous'
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SelectionColor = clHighlight
          SelectionTextColor = clHighlightText
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.Borders = pbNoborder
          PrintSettings.Centered = False
          PrintSettings.PageNumSep = '/'
          CellNode.ShowTree = False
          FixedColWidth = 100
          FixedRowHeight = 19
          FixedRowAlways = True
          FixedColAlways = True
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = []
          FloatFormat = '%.2f'
          WordWrap = False
          ColumnHeaders.Strings = (
            'Color'
            'No. color'
            ''
            'Unidades')
          HideFocusRect = True
          Filter = <>
          Version = '3.0.0.10'
          Columns = <
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Color'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'NOMB_COLOR'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 100
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'No. color'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'NUME_COLOR'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 60
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'CONS_REFE_COLOR'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = -1
              Width = 0
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Unidades'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'UNIDADES'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = -1
              Width = 0
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 40
            end>
          FilterDropDown.Color = clWindow
          FilterDropDown.ColumnWidth = False
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'MS Sans Serif'
          FilterDropDown.Font.Style = []
          FilterDropDown.Height = 200
          FilterDropDown.Width = 200
          ActiveCellPaintSCL = False
          ColWidths = (
            100
            60
            0
            0
            40)
          RowHeights = (
            19
            19
            19
            19
            19)
        end
        object TBXDock1: TTBXDock
          Left = 3
          Top = 26
          Width = 794
          Height = 26
          object TBXToolbar1: TTBXToolbar
            Left = 0
            Top = 0
            BorderStyle = bsNone
            DockMode = dmCannotFloatOrChangeDocks
            DragHandleStyle = dhNone
            FullSize = True
            Images = _fMDI.imagenesPCP
            ProcessShortCuts = True
            TabOrder = 0
            object TBXItem3: TTBXItem
              Action = acti_guardar
              DisplayMode = nbdmImageAndText
              Images = _fMDI.imagenesPCP
            end
            object TBXItem2: TTBXItem
              Action = acti_cancelar
              DisplayMode = nbdmImageAndText
              Images = _fMDI.imagenesPCP
            end
            object TBXSeparatorItem1: TTBXSeparatorItem
            end
            object TBXItem4: TTBXItem
              Action = acti_limpiar
              DisplayMode = nbdmImageAndText
            end
            object TBXItem1: TTBXItem
              Action = acti_impo_unid_planeadas
              DisplayMode = nbdmImageAndText
            end
          end
        end
      end
      object PCPFrame2: TPCPFrame
        Tag = 217
        Left = 0
        Top = 0
        Width = 800
        Height = 217
        Align = alTop
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Caption = 'Unidades planeadas'
        Titulo_Color = 16244694
        BorderWidthIn = 4
        FlatBorder = True
        inline fram_programado: Tffra_prod_orde_unid_lote
          Left = 7
          Top = 26
          Width = 786
          Height = 184
          Align = alClient
          TabOrder = 1
          inherited fram_unidades: Tffra_prod_orde_unidades
            Width = 786
            Height = 184
            inherited fram_dock: TTBXDock
              Width = 786
            end
            inherited grid: TSCLColumnGrid
              Width = 786
              Height = 158
              SelectionColor = clHighlight
              SelectionTextColor = clHighlightText
              ShowSelection = True
            end
          end
        end
      end
    end
    object page_materiales: TSCLTabSheet
      Color = 16578290
      TabVisible = False
      Caption = 'Materiales utilizados'
    end
    object page_avance: TSCLTabSheet
      Color = 16578290
      ImageIndex = 45
      Caption = 'Avance'
      inline fram_avance: Tffra_prod_resp_lote_proceso
        Width = 800
        Height = 382
        inherited pane_arriba: TPanel
          Width = 800
          inherited SCLDBLabel1: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel2: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel3: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel4: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel5: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited pane_finalizacion: TPanel
            inherited SCLDBLabel6: TSCLDBLabel
              FontActive.Name = 'Tahoma'
            end
          end
        end
        inherited pane_observaciones: TPanel
          Width = 800
          Height = 236
          inherited PCPFrame1: TPCPFrame
            Tag = 277
            Width = 1097
            Height = 277
            inherited dxDBMemo1: TdxDBMemo
              Width = 1083
              Height = 244
            end
          end
        end
        inherited TBXDock1: TTBXDock
          Width = 800
        end
        inherited pane_seleccion: TPanel
          Width = 800
          inherited fram_lote: Tffra_prod_sele_lote
            Width = 800
            inherited padr_labe_nume_lote: TSCLDBLabel
              FontActive.Name = 'Tahoma'
            end
          end
        end
      end
    end
  end
  inline fram_mens_refe_mate_basico: Tffra_mens_atencion [9]
    Top = 137
    Width = 804
    Height = 21
    TabOrder = 7
    Visible = False
    inherited padr_shap_top: TShape
      Width = 804
    end
    inherited padr_shap_bottom: TShape
      Top = 20
      Width = 804
    end
    inherited padr_shap_right: TShape
      Left = 803
      Height = 19
    end
    inherited padr_shap_left: TShape
      Height = 19
    end
    inherited fram_label: TAdvPanel
      Width = 802
      Height = 19
      Text = 
        '<IMG src="3"> La referencia no tiene un material básico definido' +
        '.'
      FullHeight = 18
    end
  end
  inherited padr_fram_informacion: TPCPFrame [10]
    TabOrder = 8
    inherited padr_comb_nume_lote: TPCPLookUpComboEdit
      Enabled = False
      OnChange = padr_comb_nume_loteChange
    end
  end
  inherited padr_acciones: TActionList [11]
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
      DataSource = nil
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = False
      DataSource = nil
    end
    inherited padr_acti_nuevo: TDataSetInsert
      DataSource = nil
    end
    inherited padr_acti_modificar: TDataSetEdit
      DataSource = nil
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      DataSource = nil
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      DataSource = nil
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList [12]
  end
  inherited Variables: TSCLPropiedadesForm [13]
  end
  inherited Tabla_Ventana: TTable [14]
  end
  inherited padr_estilo: TdxEditStyleController [15]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [16]
  end
  inherited padr_esti_panel: TAdvPanelStyler [17]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [18]
  end
  inherited imag_pequenas: TImageList [19]
  end
  inherited padr_imag_tem1_colo: TImageList [20]
  end
  inherited data_ventana: TDataSource [27]
  end
  object quer_mate_principal: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = padr_data_prod_referencias
    SQL.Strings = (
      'SELECT * FROM VIS_PCP_REFE_MATE_BASICO'
      'WHERE CONS_REFERENCIA = :CONS_REFERENCIA'
      'AND CONS_REFE_TIPO_VARIACION = 0')
    Left = 784
    Top = 69
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_REFERENCIA'
        ParamType = ptUnknown
      end>
  end
  object data_mate_principal: TDataSource
    DataSet = quer_mate_principal
    Left = 816
    Top = 69
  end
  object tabl_guardar: TRxMemoryData
    FieldDefs = <
      item
        Name = 'myField'
        DataType = ftInteger
      end>
    BeforePost = tabl_guardarBeforePost
    Left = 592
    Top = 508
    object tabl_guardarmyField: TIntegerField
      FieldName = 'myField'
    end
  end
  object data_Guardar: TDataSource
    DataSet = tabl_guardar
    OnStateChange = data_GuardarStateChange
    Left = 624
    Top = 508
  end
  object quer_elim_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Delete'
      'FROM PCP_PROD_LOTE_UNIDADES'
      'Where cons_prod_lote = :cons_prod_lote')
    Left = 248
    Top = 508
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end>
  end
  object quer_guar_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Insert into PCP_PROD_LOTE_UNIDADES'
      
        '(cons_prod_lote, cons_refe_color, cons_grup_tall_detalle, cant_u' +
        'nidades)'
      'VALUES'
      
        '(:cons_prod_lote, :cons_refe_color, :cons_grup_tall_detalle, :ca' +
        'nt_unidades)'
      ' ')
    Left = 280
    Top = 508
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_lote'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_refe_color'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_grup_tall_detalle'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cant_unidades'
        ParamType = ptInput
      end>
  end
  object quer_llam_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_refe_color, cons_grup_tall_detalle, cant_unidades'
      'from pcp_prod_lote_unidades'
      'where cons_prod_lote = :cons_prod_lote')
    Left = 312
    Top = 508
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end>
  end
  object acti_ventana: TActionList
    Images = _fMDI.imagenesPCP
    Left = 496
    Top = 508
    object acti_cancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 8
      ShortCut = 16449
      OnExecute = acti_cancelarExecute
    end
    object acti_guardar: TAction
      Caption = 'Guardar'
      ImageIndex = 5
      ShortCut = 16455
      OnExecute = acti_guardarExecute
    end
    object acti_impo_unid_planeadas: TAction
      Caption = 'Importar las unidades planeadas'
      ImageIndex = 74
      OnExecute = acti_impo_unid_planeadasExecute
    end
    object acti_limpiar: TAction
      Caption = 'Limpiar las unidades cortadas'
      ImageIndex = 36
      OnExecute = acti_limpiarExecute
    end
  end
end
