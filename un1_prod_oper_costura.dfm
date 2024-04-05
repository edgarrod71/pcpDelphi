inherited fn1_prod_oper_costura: Tfn1_prod_oper_costura
  Left = 72
  Top = 150
  Height = 536
  Caption = 'Operaciones de costura por lote'
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 508
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 157
  end
  inherited padr_pane_info: TPanel
    Top = 507
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
    Top = 499
  end
  inherited padr_pane_principal: TPanel
    Top = 164
  end
  inherited padr_fram_informacion: TPCPFrame
    inherited padr_labe_nume_lote: TSCLDBLabel
      Visible = True
    end
    inherited padr_comb_nume_lote: TPCPLookUpComboEdit
      DataField = 'cons_prod_lote'
      DataSource = fram_list_operaciones.myData_Ventana
      Visible = True
      OnChange = doActualizarVentana
    end
    inherited comb_nume_orden: TPCPLookUpComboEdit
      DataField = 'cons_prod_orden'
      DataSource = fram_list_operaciones.myData_Ventana
      OnChange = doActualizarVentana
    end
  end
  inline fram_list_operaciones: Tffra_prod_list_oper_costura [9]
    Top = 166
    Height = 333
    Align = alClient
    TabOrder = 7
    Visible = False
    inherited page: TSCLPageControl
      Height = 333
      FixedDimension = 22
      inherited page_operaciones: TSCLTabSheet
        inherited TBXDock2: TTBXDock
          inherited TBXToolbar1: TTBXToolbar
            Images = _fMDI.imagenesPCP
            inherited fram_boto_cancelar: TTBXItem [1]
            end
            inherited fram_boto_sepa_1: TTBXSeparatorItem [2]
            end
            inherited fram_boto_volv_llamar: TTBXItem [3]
              DisplayMode = nbdmImageAndText
            end
            object boto_actualizar: TTBXItem [4]
              Action = padr_acti_actualizar
              ImageIndex = 4
              Images = _fMDI.imagenesPCP
            end
          end
        end
        inherited TBXDock1: TTBXDock
          Top = 282
          inherited TBXToolbar2: TTBXToolbar
            inherited edit_tota_filas: TdxCurrencyEdit
              StoredValues = 65
            end
            inherited edit_tiem_total: TdxCurrencyEdit
              StoredValues = 65
            end
            inherited edit_tota_operaciones: TdxCurrencyEdit
              StoredValues = 65
            end
            inherited edit_oper_seleccionada: TdxSpinEdit
              StoredValues = 49
            end
            inherited edit_cost_total: TdxCurrencyEdit
              StoredValues = 65
            end
          end
        end
        inherited grid: TSCLColumnGrid
          Height = 256
          GridLineColor = 14467501
          ScrollWidth = 16
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
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBtnFace
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'No.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridNUMERO'
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
              Width = 24
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taCenter
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'S'
              Color = clWhite
              ColumnPopup = fram_list_operaciones.pop_operacion
              ColumnPopupType = cpNormalCellsLClick
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'T'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridES_TITULO'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 25
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'PR'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridPROCESO'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 30
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'CO'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridCOMPONENTE'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 30
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'OP'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridOPERACION'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 30
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Código'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridCODIGO'
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
              Width = 83
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Operación'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridNOMB_OPERACION'
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
              Width = 226
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'F'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridFRECUENCIA'
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
              Width = 48
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Máquina'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridTIPO_MAQUINA'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
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
              Alignment = taRightJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'P.P.C.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridPPC'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 46
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'R.P.M.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridRPM'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 67
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clBtnFace
              ColumnPopupType = cpFixedCellsRClick
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Tiempo'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridTIEMPO'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 67
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clBtnFace
              ColumnPopupType = cpFixedCellsRClick
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'P.H.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridPH'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 43
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
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'P.H.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridTIEM_CRONOMETRO'
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
              Width = 0
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edFloat
              Filter.Strings = ()
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
              Name = 'gridCOST_OPERACION'
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
              Width = 64
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
              ColumnPopup = fram_list_operaciones.padr_pop_punt_control
              ColumnPopupType = cpNormalCellsLClick
              ComboItems.Strings = ()
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              Filter.Strings = ()
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'P. Control'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridPUNT_CONTROL'
              Password = False
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
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
              Width = 64
            end>
        end
      end
      inherited page_avance: TSCLTabSheet
        inherited fram_avance: Tffra_prod_resp_lote_proceso
          inherited pane_arriba: TPanel
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
            inherited PCPFrame1: TPCPFrame
              inherited dxDBMemo1: TdxDBMemo
                Height = 188
              end
            end
          end
          inherited pane_seleccion: TPanel
            inherited fram_lote: Tffra_prod_sele_lote
              inherited padr_labe_nume_lote: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
            end
          end
        end
      end
    end
    inherited myTabla_Ventana: TRxMemoryData
      Left = 250
      Top = 43
    end
    inherited quer_recu_familias: TQuery
      Top = 43
    end
    inherited myData_Ventana: TDataSource
      Left = 282
      Top = 43
    end
    inherited data_guardar: TDataSource
      OnStateChange = fram_list_operacionesdata_guardarStateChange
    end
  end
  inline fram_aten_sele_lote: Tffra_mens_atencion [10]
    Top = 137
    Width = 804
    Height = 20
    TabOrder = 8
    inherited padr_shap_top: TShape
      Width = 804
    end
    inherited padr_shap_bottom: TShape
      Top = 19
      Width = 804
    end
    inherited padr_shap_right: TShape
      Left = 803
      Height = 18
    end
    inherited padr_shap_left: TShape
      Height = 18
    end
    inherited fram_label: TAdvPanel
      Width = 802
      Height = 18
      Text = '<IMG src="3"> Debe seleccionar una orden de producción y un lote'
      FullHeight = 18
    end
  end
  inherited padr_imag_tem1_colo: TImageList [20]
  end
  inherited padr_quer_consecutivo: TQuery [21]
  end
  inherited padr_pict_container: TPictureContainer [22]
  end
  inherited padr_quer_ordenes: TQuery [23]
  end
  inherited padr_quer_prod_referencias: TQuery [24]
  end
  inherited padr_data_prod_referencias: TDataSource [25]
  end
  inherited data_ventana: TDataSource [26]
  end
end
