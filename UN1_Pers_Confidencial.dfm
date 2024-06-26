inherited FN1_Pers_Confidencial: TFN1_Pers_Confidencial
  Left = 205
  Top = 145
  Width = 779
  Height = 563
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 771
  end
  inherited padr_shap_xp_down: TShape
    Top = 535
    Width = 771
  end
  inherited padr_pane_1: TPanel
    Width = 545
    Height = 493
    inherited padr_pagina: TdxPageControl
      Width = 535
      Height = 483
      HideButtons = True
      inherited fram_pagi_lista: TdxTabSheet
        object Splitter2: TSplitter [0]
          Left = 0
          Top = 478
          Width = 535
          Height = 5
          Cursor = crVSplit
          Align = alBottom
          Beveled = True
        end
        inherited padr_grid: TSCLDBGrid
          Top = 177
          Width = 145
          Height = 301
          KeyField = 'CONS_PERSONAL'
          Color = clInfoBk
          OnDblClick = nil
          DataSource = DSTemporal
          Filter.Criteria = {00000000}
          HideSelectionTextColor = clWhite
          OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoResetColumnFocus, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoHideFocusRect, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
          OnCustomDrawCell = padr_gridCustomDrawCell
          object padr_gridColumn24: TdxDBGridCheckColumn
            Width = 17
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CHEQUEADO'
            ValueChecked = '1'
            ValueGrayed = '-1'
            ValueUnchecked = '-1'
            OnToggleClick = padr_gridColumn24ToggleClick
          end
          object padr_gridCONS_PERSONAL: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERSONAL'
          end
          object padr_gridCODI_PERSONAL: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERSONAL'
          end
          object padr_gridPRIM_APELLIDO: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Width = 106
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRIM_APELLIDO'
          end
          object padr_gridSEGU_APELLIDO: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SEGU_APELLIDO'
          end
          object padr_gridNOMBRES: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMBRES'
          end
          object padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Visible = False
            Width = 544
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMPLETO'
          end
          object padr_gridNUME_CONTRATO: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_CONTRATO'
          end
          object padr_gridAUXI_TRANSPORTE: TdxDBGridMaskColumn
            Width = 113
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AUXI_TRANSPORTE'
          end
          object padr_gridAUXI_SALARIAL: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AUXI_SALARIAL'
          end
          object padr_gridCONS_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Visible = False
            Width = 147
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_TIPO_CONTRATO'
          end
          object padr_gridCODI_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Visible = False
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_TIPO_CONTRATO'
          end
          object padr_gridNOMB_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Width = 145
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_TIPO_CONTRATO'
          end
          object padr_gridCONS_PERS_CARGO: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Visible = False
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_CARGO'
          end
          object padr_gridCODI_PERS_CARGO: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_CARGO'
          end
          object padr_gridNOMB_PERS_CARGO: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Width = 145
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_CARGO'
          end
          object padr_gridCONS_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Visible = False
            Width = 140
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_NIVE_SALARIAL'
          end
          object padr_gridCODI_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Visible = False
            Width = 84
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_NIVE_SALARIAL'
          end
          object padr_gridVALO_NIVE_SALARIAL: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALO_NIVE_SALARIAL'
          end
          object padr_gridCONS_PERI_PAGO: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Visible = False
            Width = 93
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERI_PAGO'
          end
          object padr_gridCODI_PERI_PAGO: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERI_PAGO'
          end
          object padr_gridNOMB_PERI_PAGO: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Width = 145
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERI_PAGO'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Color = clBtnFace
            ReadOnly = True
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            Color = clBtnFace
            ReadOnly = True
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 535
          inherited padr_barra: TTBXToolbar
            object TBXItem6: TTBXItem [2]
              Action = Acti_Modi_Confidencial
              Images = padr_imagenes
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 535
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 535
          inherited padr_beve_sepa: TBevel
            Width = 746
          end
          inherited padr_sepa_new: TShape
            Width = 529
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 177
          Height = 301
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 279
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 340
          Top = 177
          Height = 301
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 279
              inherited padr_prio_impresion: TdxTreeList
                Height = 53
              end
            end
          end
        end
        object PCPFrame1: TPCPFrame
          Left = 0
          Top = 52
          Width = 535
          Height = 125
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 2
          Constraints.MinHeight = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Caption = 'Datos Modificaci�n'
          Titulo_Color = 16244694
          TipoFrame = tfNinguno
          object SCLDBLabel40: TSCLDBLabel
            Left = 8
            Top = 1
            Width = 113
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = CBTipo_Documento
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Tipo Documento:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'CONS_TIPO_DOCUMENTO'
            Field = 'CONS_TIPO_DOCUMENTO'
          end
          object SCLDBLabel42: TSCLDBLabel
            Left = 297
            Top = 1
            Width = 113
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = ENumero_Documento
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'N�mero Documento:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'NUME_DOCUMENTO'
            Field = 'NUME_DOCUMENTO'
          end
          object SCLDBLabel64: TSCLDBLabel
            Left = 8
            Top = 23
            Width = 113
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = DBInicial
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha Inicial:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'FECH_INICIAL'
            Field = 'FECH_INICIAL'
          end
          object SCLDBLabel68: TSCLDBLabel
            Left = 8
            Top = 45
            Width = 113
            Height = 32
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = DBObservaciones
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Observaciones'
            Layout = tlTop
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'OBSERVACIONES'
            Field = 'OBSERVACIONES'
          end
          object SCLDBLabel65: TSCLDBLabel
            Left = 297
            Top = 23
            Width = 113
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = DBFinal
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha Final:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
            DataField = 'FECH_FINAL'
            Field = 'FECH_FINAL'
          end
          object SCLDBLabel3: TSCLDBLabel
            Left = 8
            Top = 79
            Width = 113
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = CBCargo
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Cargo:'
            Layout = tlTop
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel2: TSCLDBLabel
            Left = 297
            Top = 79
            Width = 113
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = CBTipo_Contrato
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Tipo de Contrato:'
            Layout = tlTop
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel6: TSCLDBLabel
            Left = 8
            Top = 101
            Width = 113
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = CBPeriodo_Pago
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Per�odo de Pago:'
            Layout = tlTop
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel5: TSCLDBLabel
            Left = 297
            Top = 101
            Width = 113
            Height = 21
            Alive = True
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = CBNivel_Salarial
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Nivel Salarial:'
            Layout = tlTop
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object CBTipo_Documento: TPCPLookUpComboEdit
            Left = 123
            Top = 1
            Width = 145
            Height = 21
            DropDownCount = 8
            KeyField = 'CONS_TIPO_DOCUMENTO'
            ListField = 'NOMB_TIPO_DOCUMENTO'
            ListSource = DSTipo_Documento
            TabOrder = 1
            DirectInput = False
          end
          object SCLButton27: TSCLButton
            Left = 272
            Top = 2
            Width = 20
            Height = 20
            TabOrder = 2
            TabStop = False
            Down = False
            ImageIndex = 0
            Flat = True
            Color = clBtnFace
            Style = bsNew
            BackColor = clBtnFace
            ColorBordeBoton = clBtnShadow
            TipoPintadoBoton = tpbContorno
            RedondeoBoton = 4
          end
          object ENumero_Documento: TdxEdit
            Left = 412
            Top = 1
            Width = 145
            TabOrder = 3
            StyleController = _fvent_modal.padr_estilo
          end
          object DBInicial: TdxDateEdit
            Left = 123
            Top = 23
            Width = 145
            TabOrder = 4
            StyleController = _fvent_modal.padr_estilo
            Date = -700000
          end
          object DBObservaciones: TdxEdit
            Left = 123
            Top = 45
            Width = 435
            TabOrder = 5
            AutoSize = False
            StyleController = _fvent_modal.padr_estilo
            Height = 32
          end
          object DBFinal: TdxDateEdit
            Left = 412
            Top = 23
            Width = 145
            TabOrder = 6
            StyleController = _fvent_modal.padr_estilo
            Date = -700000
          end
          object CBNivel_Salarial: TPCPLookUpComboEdit
            Left = 412
            Top = 101
            Width = 145
            Height = 21
            DropDownCount = 8
            KeyField = 'CONS_PERS_NIVE_SALARIAL'
            ListField = 'VALO_NIVE_SALARIAL'
            ListSource = DSNivel_Salarial
            TabOrder = 7
            DirectInput = False
          end
          object CBPeriodo_Pago: TPCPLookUpComboEdit
            Left = 123
            Top = 101
            Width = 145
            Height = 21
            DropDownCount = 8
            KeyField = 'CONS_PERI_PAGO'
            ListField = 'NOMB_PERI_PAGO'
            ListSource = DSPeriodo_Pago
            TabOrder = 8
            DirectInput = False
          end
          object CBTipo_Contrato: TPCPLookUpComboEdit
            Left = 412
            Top = 79
            Width = 145
            Height = 21
            DropDownCount = 8
            KeyField = 'CONS_PERS_TIPO_CONTRATO'
            ListField = 'NOMB_PERS_TIPO_CONTRATO'
            ListSource = DSTipo_Contrato
            TabOrder = 9
            DirectInput = False
          end
          object CBCargo: TPCPLookUpComboEdit
            Left = 123
            Top = 79
            Width = 145
            Height = 21
            DropDownCount = 8
            KeyField = 'CONS_PERS_CARGO'
            ListField = 'NOMB_PERS_CARGO'
            ListSource = DSCargos
            TabOrder = 10
            DirectInput = False
          end
          object SCLButton1: TSCLButton
            Left = 272
            Top = 79
            Width = 21
            Height = 21
            TabOrder = 11
            TabStop = False
            Down = False
            ImageIndex = 0
            Flat = True
            Color = clBtnFace
            Style = bsNew
            BackColor = clBtnFace
            ColorBordeBoton = clBtnShadow
            TipoPintadoBoton = tpbContorno
            RedondeoBoton = 4
          end
          object SCLButton2: TSCLButton
            Left = 562
            Top = 79
            Width = 21
            Height = 21
            TabOrder = 12
            TabStop = False
            Down = False
            ImageIndex = 0
            Flat = True
            Color = clBtnFace
            Style = bsNew
            BackColor = clBtnFace
            ColorBordeBoton = clBtnShadow
            TipoPintadoBoton = tpbContorno
            RedondeoBoton = 4
          end
          object SCLButton4: TSCLButton
            Left = 272
            Top = 101
            Width = 21
            Height = 21
            TabOrder = 13
            TabStop = False
            Down = False
            ImageIndex = 0
            Flat = True
            Color = clBtnFace
            Style = bsNew
            BackColor = clBtnFace
            ColorBordeBoton = clBtnShadow
            TipoPintadoBoton = tpbContorno
            RedondeoBoton = 4
          end
          object SCLButton3: TSCLButton
            Left = 562
            Top = 101
            Width = 21
            Height = 21
            TabOrder = 14
            TabStop = False
            Down = False
            ImageIndex = 0
            Flat = True
            Color = clBtnFace
            Style = bsNew
            BackColor = clBtnFace
            ColorBordeBoton = clBtnShadow
            TipoPintadoBoton = tpbContorno
            RedondeoBoton = 4
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 493
  end
  inherited padr_titu_ventana: TPanel
    Width = 771
    inherited padr_pane_2: TPanel
      Left = 700
    end
    inherited padr_pane_cerrar: TPanel
      Left = 718
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 700
      LabelCaption = 'Personal (Modificar Datos Confidenciales)'
      Caption = 'Personal (Modificar Datos Confidenciales)'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 563
    Height = 493
    inherited padr_page_ocul_reporte: TdxTabSheet
      inherited padr_repo_fortes: Tffra_edit_reportes
        inherited TBXDock3: TTBXDock
          inherited pane_insp_objetos: TTBXDockablePanel
            inherited page: TSCLPageControl
              FixedDimension = 19
              inherited page_propiedades: TSCLTabSheet
                inherited page_prop: TSCLPageControl
                  FixedDimension = 19
                end
              end
              inherited page_campos: TSCLTabSheet
                inherited grid_camp_disponibles: TSCLDBGrid
                  Filter.Criteria = {00000000}
                end
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_top: TTBXDock
    Width = 771
  end
  inherited padr_dock_bottom: TTBXDock
    Top = 526
    Width = 771
  end
  inherited padr_dock_right: TTBXDock
    Left = 554
    Height = 493
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_nuevo: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_modificar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_eliminar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_cancelar: TAction
      Enabled = False
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
      Visible = False
    end
    inherited acti_padr_cerr_todas_carpetas: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_ver_lista: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_comu_sele_rang_fechas: TAction
      Enabled = False
      Visible = False
    end
    object Acti_Modi_Confidencial: TAction
      ImageIndex = 14
      OnExecute = Acti_Modi_ConfidencialExecute
    end
  end
  inherited padr_imagenes: TImageList
    Bitmap = {
      494C010116001800040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000C000000001002000000000000080
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006699
      9900669999006699990066999900669999006699990066999900669999006699
      9900669999006699990066999900669999006699990066999900669999006699
      9900669999006699990066999900669999006699990066999900669999006699
      990066999900006666000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000666600006666000066
      6600006666000066660000666600006666000066660000666600006666000066
      6600006666000066660000666600006666000066660000666600006666000066
      6600006666000066660000666600006666000066660000666600006666000066
      660000666600669999000066660000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006699990099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC00669999006699
      990066999900006666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000066660000666600006666000066
      6600006666000066660000666600006666000066660000666600006666000066
      6600006666000066660000666600006666000066660000666600006666000066
      6600006666000066660000666600006666000066660000666600006666000066
      660066999900006666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006699990099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC000066
      660066999900669999000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006699990099FFFF00FFFF
      FF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC00FFFFFF0099FF
      FF00FFFFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC00FFFFFF0099FF
      FF00FFFFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC00FFFFFF0099CC
      CC0000666600669999000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066999900FFFFFF0099FF
      FF00FFFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC0099FFFF00FFFF
      FF0099FFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC0099FFFF00FFFF
      FF0099FFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC0099FFFF00FFFF
      FF0000666600669999000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006699990099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0066999900336666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066999900CCFF
      FF00FFFFFF00CCFFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF0099CCCC00336666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066999900FFFF
      FF00CCFFFF00FFFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC00FFFF
      FF0099FFFF00FFFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC00FFFF
      FF0099FFFF00FFFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC00FFFF
      FF0099FFFF00006666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066999900CCFF
      FF00FFFFFF00CCFFFF0099CCCC00FFFFFF00FFFFFF00FFFFFF0099CCCC0099FF
      FF00FFFFFF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF00336666003366660000000000FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006699990099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC00336666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066999900FFFF
      FF00FFFFFF00CCFFFF0099CCCC00CCFFFF00FFFFFF00CCFFFF0099CCCC00CCFF
      FF00FFFFFF00CCFFFF0099CCCC00CCFFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF00336666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00CCFFFF00FFFFFF0099CCCC00FFFF
      FF00CCFFFF00FFFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC00FFFF
      FF0099FFFF00FFFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC00FFFF
      FF0099FFFF00336666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00CCFFFF00FFFFFF00CCFFFF0099CCCC00CCFF
      FF00FFFFFF00CCFFFF0099CCCC00CCFFFF00FFFFFF00FFFFFF0099CCCC0099FF
      FF00FFFFFF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF00336666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006699990099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC00663399006633
      990066339900663399006633990099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC00336666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00FFFFFF00CCFFFF0066339900CCFF
      FF00FFFFFF00CCFFFF0066339900CCFFFF00FFFFFF00CCFFFF0099CCCC00CCFF
      FF00FFFFFF0099FFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF00336666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00FFFFFF00FFFFFF0066339900FFFF
      FF00CCFFFF00FFFFFF0066339900FFFFFF00CCFFFF00FFFFFF0099CCCC00FFFF
      FF00CCFFFF00FFFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC00FFFF
      FF0099FFFF00336666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00FFFFFF00FFFFFF0066339900FFFF
      FF00FFFFFF00CCFFFF0066339900CCFFFF00FFFFFF00CCFFFF0099CCCC00CCFF
      FF00FFFFFF00CCFFFF0099CCCC0099FFFF00FFFFFF0099FFFF0099CCCC0099FF
      FF00FFFFFF00336666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006699990099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC00663399006633
      990066339900663399006633990099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CCCC0099CC
      CC0099CCCC00336666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00FFFFFF00FFFFFF0099CCCC00FFFF
      FF00FFFFFF00FFFFFF0099CCCC00CCFFFF00FFFFFF00CCFFFF0099CCCC00CCFF
      FF00FFFFFF00CCFFFF0099CCCC00FFFFFF0099FFFF00FFFFFF0099CCCC0099FF
      FF00FFFFFF00336666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00FFFFFF00FFFFFF0099CCCC00FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00CCFFFF00FFFFFF0099CCCC00FFFF
      FF00CCFFFF00FFFFFF0099CCCC00CCFFFF00FFFFFF0099FFFF0099CCCC00FFFF
      FF0099FFFF00336666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066999900FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00FFFFFF00FFFFFF0099CCCC00FFFF
      FF00FFFFFF00FFFFFF0099CCCC00FFFFFF00FFFFFF00CCFFFF0099CCCC00CCFF
      FF00FFFFFF00CCFFFF0099CCCC00FFFFFF00CCFFFF00FFFFFF0099CCCC0099FF
      FF00FFFFFF00336666000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993333009933
      3300993333009933330099333300993333009933330099333300993333009933
      3300993333009933330099333300993333009933330099333300993333009933
      3300993333009933330099333300993333009933330099333300993333009933
      330099333300993333000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300993333000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300993333000066660000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC663300FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900993333000066660000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC663300CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC9966009933330000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC663300CC663300CC66330000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ACACACFFDCDCDCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ACACACFFDCDCDCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0E0E0FF8181
      81FF545454FF8A8A8AFF666666FFEBEBEBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0E0E0FF818181FF545454FF8A8A8AFF666666FFEBEBEBFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1E1E1FF929292FF494949FF4545
      45FF464646FFC1C1C1FFCDCDCDFF636363FFE0E0E0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1E1E1FF9292
      92FF494949FF454545FF464646FFC1C1C1FFCDCDCDFF636363FFE0E0E0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A7A7A7FF727272FF545454FF494949FF494949FF3B3B
      3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B6BFFE0E0E0FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFFCECECEFF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFFCECECEFF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A7A7A7FF727272FF545454FF4949
      49FF494949FF3B3B3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B6BFFE0E0
      E0FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0E0
      E0FF818181FF545454FF818181FF484848FF494949FF494949FF494949FF2C2C
      2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFC4C4C4FF636363FFECECECFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0E0E0FF818181FF545454FF818181FF484848FF494949FF4949
      49FF494949FF2C2C2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFC4C4C4FF6363
      63FFECECECFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E1FF929292FF4949
      49FF454545FF464646FFC1C1C1FFCDCDCDFF565656FF6B6B6BFF2E2E2EFF9A9A
      9AFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF656565FFDCDC
      DCFF000000000000000000000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFF4444DDFFB7B7D0FFCECECEFFCECECEFF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E1E1
      E1FF929292FF494949FF454545FF464646FFC1C1C1FFCDCDCDFF565656FF6B6B
      6BFF2E2E2EFF9A9A9AFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFF656565FFDCDCDCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000D0D0D0FF616161FF545454FF494949FF4949
      49FF3B3B3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B6BFF4C4C4CFFC7C7
      C7FFCFCFCFFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFC1C1C1FF6565
      65FFECECECFF0000000000000000000000000000000000000000000000004A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFB7B7D0FF2E2EDFFFB7B7D0FFCECECEFFCECECEFF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0D0D0FF616161FF5454
      54FF494949FF494949FF3B3B3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B
      6BFF4C4C4CFFC7C7C7FFCFCFCFFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFC1C1C1FF656565FFECECECFF000000000000000000000000000000000000
      0000F9F9F9FFB5B5B5FF6E6E6EFF5B5B5BFF474747FF494949FF494949FF4949
      49FF2C2C2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFF878787FF9E9E9EFFE6E6
      E6FFE0E0E0FFD7D7D7FFCECECEFFCECECEFFCECECEFFCECECEFFCDCDCDFFCDCD
      CDFF636363FFE0E0E0FF00000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFB7B7D0FF0A0AE3FFB7B7D0FFCECECEFFCECE
      CEFF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F9FFB5B5B5FF6E6E6EFF5B5B5BFF474747FF4949
      49FF494949FF494949FF2C2C2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFF8787
      87FF9E9E9EFFE6E6E6FFE0E0E0FFD7D7D7FFCECECEFFCECECEFFCECECEFFCECE
      CEFFCDCDCDFFCDCDCDFF636363FFE0E0E0FF0000000000000000F9F9F9FFAAAA
      AAFF5C5C5CFF4A4A4AFF383838FF898989FFCECECEFF797979FF525252FF2E2E
      2EFF9A9A9AFFCECECEFFCECECEFFCECECEFFC1C1C1FF535353FFE6E6E6FFE6E6
      E6FFE6E6E6FFE5E5E5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FFE2E2
      E2FF777777FFD0D0D0FF00000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFF7272D8FF5151DBFF4444DDFFCECECEFFCECE
      CEFFCECECEFF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFB7C5B7FF519E51FF038103FFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F9FFAAAAAAFF5C5C5CFF4A4A4AFF383838FF898989FFCECECEFF7979
      79FF525252FF2E2E2EFF9A9A9AFFCECECEFFCECECEFFCECECEFFC1C1C1FF5353
      53FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5E5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE2E2E2FFE2E2E2FF777777FFD0D0D0FF00000000B7B7B7FF6A6A6AFF4A4A
      4AFF4A4A4AFF484848FF313131FFCECECEFFCECECEFFCECECEFF898989FF4C4C
      4CFFC7C7C7FFCFCFCFFFCECECEFFCECECEFF9B9B9BFF8F8F8FFFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5
      E5FF606060FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFF1717E2FFB7B7D0FFCECECEFFCECECEFF0F85
      85FFB7C5C5FFCECECEFF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF000000FFCECECEFFB7C5
      B7FF5CA25CFF178817FF339233FF008000FFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFF000000FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7B7
      B7FF6A6A6AFF4A4A4AFF4A4A4AFF484848FF313131FFCECECEFFCECECEFFCECE
      CEFF898989FF4C4C4CFFC7C7C7FFCFCFCFFFCECECEFFCECECEFF9B9B9BFF8F8F
      8FFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE5E5E5FF606060FF00000000FBFBFBFF696969FF4A4A4AFF4A4A
      4AFF4A4A4AFF292929FFA1A1A1FFCECECEFFCECECEFFCECECEFF8E8E8EFF9E9E
      9EFFE6E6E6FFE0E0E0FFD7D7D7FFCECECEFF4B4B4BFFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF5656
      56FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFCECECEFFCECE
      CEFFCECECEFFCECECEFF7272D8FF5C5CDAFFCECECEFFCECECEFF72ABABFF479A
      9AFF2E9191FFCECECEFFCECECEFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFCECECEFF449A
      44FF72AB72FFA0BCA0FF2E912EFF008000FFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFBFF6969
      69FF4A4A4AFF4A4A4AFF4A4A4AFF292929FFA1A1A1FFCECECEFFCECECEFFCECE
      CEFF8E8E8EFF9E9E9EFFE6E6E6FFE0E0E0FFD7D7D7FFCECECEFF4B4B4BFFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FF565656FF000000000000000000000000E8E8E8FFBBBBBBFF5454
      54FF484848FF4E4E4EFFC2C2C2FFCECECEFFCECECEFFC0C0C0FF535353FFE6E6
      E6FFE6E6E6FFE6E6E6FFE5E5E5FF8E8E8EFFA7A7A7FFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFBABABAFF8383
      83FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFCECECEFFCECECEFF4444DDFFB7B7D0FFCECECEFFCECECEFF178888FFB7C5
      C5FF72ABABFF5CA2A2FFCECECEFFCECECEFF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFCECECEFF2E912EFFA0BCA0FF008000FFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFF89B4B4FF89B4B4FF001C1CFF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E8FFBBBBBBFF545454FF484848FF4E4E4EFFC2C2C2FFCECECEFFCECECEFFC0C0
      C0FF535353FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5E5FF8E8E8EFFA7A7A7FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFBABABAFF838383FF00000000000000000000000000000000000000000000
      00005A5A5AFF929292FFCECECEFFCECECEFFCECECEFF9B9B9BFF8F8F8FFFE6E6
      E6FFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7D7FFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF777777FFD0D0
      D0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFCECECEFFCECECEFFCECECEFFA0BCBCFF2E9191FF89C9
      C9FF72C8C8FF449A9AFF89B4B4FFCECECEFFCECECEFF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FF80B880FF66AD66FFCECECEFF2E912EFFCECECEFFCECECEFFA0BCBCFF5CA2
      A2FF008080FF008080FF3A9393FF4E9A9AFF4E9A9AFF098181FF008080FF72B8
      B8FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5AFF929292FFCECECEFFCECECEFFCECECEFF9B9B
      9BFF8F8F8FFFE6E6E6FFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7D7FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FF777777FFD0D0D0FF0000000000000000000000000000000000000000F2F2
      F2FF575757FFE3E3E3FFDEDEDEFFD1D1D1FFCECECEFF4B4B4BFFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5E5FFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFC9C9C9FF747474FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF339696FF9FCDCDFF1AC5
      C5FF00C1C1FFB5D0D0FF198B8BFFE6E6E6FFE6E6E6FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFCCDA
      CCFF339633FFCCDACCFFE6E6E6FFE6E6E6FFE6E6E6FF80B8B8FF1A8B8BFF67A8
      A8FFEAEEEEFFD5E0E0FFCADADAFFBCD2D2FFADCBCBFF9DC3C3FF8BBBBBFF73B2
      B2FF1D8E8EFF8EC6C6FF00000000000000000000000000000000000000000000
      000000000000F2F2F2FF575757FFE3E3E3FFDEDEDEFFD1D1D1FFCECECEFF4B4B
      4BFFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5E5FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFC9C9
      C9FF747474FF0000000000000000000000000000000000000000000000009898
      98FFACACACFFE6E6E6FFE6E6E6FFE6E6E6FF898989FFA7A7A7FFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5E5FFE5E5E5FFE6E6E6FF9D9D
      9DFF989898FF909090FFE6E6E6FFE6E6E6FFE5E5E5FF727272FFE0E0E0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFB3CFCFFF339696FF4CCDCDFF00C1
      C1FF33C9C9FF66ADADFF80B8B8FFE6E6E6FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF66AD
      66FF80B880FFE6E6E6FFE6E6E6FFE6E6E6FF66ADADFF399696FFF6F7F7FFEBEE
      EEFFE2E9E9FFD8E2E2FFCFDCDCFFC3D5D5FFB4CDCDFFA3C5C5FF93BCBCFF7FB4
      B4FF6CABABFF439C9CFF72B8B8FF000000000000000000000000000000000000
      000000000000989898FFACACACFFE6E6E6FFE6E6E6FFE6E6E6FF898989FFA7A7
      A7FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5E5FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FF8A8ABAFF2828D2FF8A8ABAFFE5E5E5FF7272
      72FFE0E0E0FF0000000000000000000000000000000000000000F2F2F2FF6060
      60FFDBDBDBFFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7D7FFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF838383FF8F8F8FFF949494FF8888
      88FF494949FF696969FF909090FFE6E6E6FFC9C9C9FF808080FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF66ADADFF80B8B8FF33C9C9FF00C1
      C1FF71CECEFF1A8B8BFFE6E6E6FFE6E6E6FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFB3CFB3FF3396
      33FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF058282FFFCFCFCFFF6F6F6FFEFF1
      F1FFE6EAEAFFDDE4E4FFD1DDDDFFC5D6D6FFB7CFCFFFA7C8C8FF97BFBFFF83B6
      B6FF6FADADFF5AA4A4FF1D8E8EFF000000000000000000000000000000000000
      0000F2F2F2FF606060FFDBDBDBFFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7
      D7FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF838383FFC5C5
      C5FFE6E6E6FFE6E6E6FFE6E6E6FF2828D2FF2828D2FF2828D2FFC9C9C9FF8080
      80FF0000000000000000000000000000000000000000000000009E9E9EFFA1A1
      A1FFE5E5E5FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5E5FFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFA9A9A9FF8B8B8BFF8B8B8BFF535353FF4D4D
      4DFFABABABFF7A7A7AFF6F6F6FFF939393FF6C6C6CFFE0E0E0FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFCCDADAFF1A8B8BFF66D1D1FF00C1C1FF33C9
      C9FF66ADADFF80B8B8FFE6E6E6FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF339633FFB3CF
      B3FFE6E6E6FFE6E6E6FFE6E6E6FFB3CFCFFF008080FFFBFBFBFFF4F5F5FFECEF
      EFFFE3E9E9FFD9E3E3FFD0DDDDFFC4D6D6FFB6CFCFFFA6C7C7FF95BEBEFF82B5
      B5FF6EACACFF58A3A3FF0D8686FF000000000000000000000000000000000000
      00009E9E9EFFA1A1A1FFE5E5E5FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5
      E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFB4B4B4FF6969
      69FF767676FFCCCCCCFFE6E6E6FF8A8ABAFF2828D2FF8A8ABAFF6C6C6CFFE0E0
      E0FF0000000000000000000000000000000000000000EEEEEEFF5B5B5BFFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5E5FFE5E5E5FFE6E6
      E6FFE6E6E6FFC9C9C9FF909090FF8D8D8DFF5C5C5CFF4A4A4AFF9E9E9EFFD3D3
      D3FFDADADAFFCACACAFF6F6F6FFF747474FF686868FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF80B8B8FF66ADADFF4CCDCDFF00C1C1FF71CE
      CEFF1A8B8BFFE6E6E6FFE6E6E6FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FF80B880FF66AD66FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE2E2E2FF008080FFF8F9F9FFF2F3F3FFEAEE
      EEFFE2E8E8FFD8E2E2FFCBDBDBFFBDD4D4FFAECCCCFF9DC3C3FF8BBBBBFF78B2
      B2FF63A9A9FF4B9E9EFF008080FF00000000000000000000000000000000EEEE
      EEFF5B5B5BFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5
      E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FF8AC6B1FF28AFBEFF8AC6B1FFE5E5
      E5FF5C5C5CFF686868FF727272FFD7D7D7FFE6E6E6FFBABABAFF7F7F7FFF0000
      00000000000000000000000000000000000000000000A0A0A0FFA5A5A5FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF838383FFC5C5C5FFE6E6
      E6FFE6E6E6FFCCCCCCFF656565FF464646FF909090FFD1D1D1FFDADADAFFDADA
      DAFFDADADAFFD8D8D8FFB8B8B8FF606060FFBABABAFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFCCCCE5FF4C4CE5FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF1A8B8BFF88D1D1FF00C1C1FF33C9C9FF66AD
      ADFF80B8B8FFE6E6E6FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FFE6E6E6FFCCDACCFF339633FFCCDACCFFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF0B8383FFF4F6F6FFEBEFEFFFE4EA
      EAFFDEE5E5FFD4DFDFFFC8D9D9FFBAD2D2FFACCACAFF9CC2C2FF89BABAFF76B1
      B1FF63A9A9FF4B9E9EFF008080FF00000000000000000000000000000000A0A0
      A0FFA5A5A5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF8383
      83FFC5C5C5FFE6E6E6FFE6E6E6FFE6E6E6FF28AFBEFF28AFBEFF28AFBEFFC9C9
      C9FF808080FFFCFCFCFFE0E0E0FF646464FF828282FF787878FFD0D0D0FF0000
      000000000000000000000000000000000000F8F8F8FF595959FFDEDEDEFFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFB4B4B4FF696969FF7878
      78FFCCCCCCFF8A8A8AFF828282FFCECECEFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFC8C8C8FFACACACFF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF6666E5FF8080E5FFE6E6
      E6FFE6E6E6FFE6E6E6FF80B8B8FF66ADADFF4CCDCDFF00C1C1FF71CECEFF1A8B
      8BFFE6E6E6FFE6E6E6FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FFE6E6E6FF66AD66FF80B880FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FFEFF2F2FFE3E9E9FFDCE5
      E5FFD6E1E1FFCBDBDBFFBFD5D5FFB6CFCFFFA8C8C8FF99C0C0FF86B8B8FF73AF
      AFFF5EA6A6FF479B9BFF008080FF000000000000000000000000F8F8F8FF5959
      59FFDEDEDEFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFB4B4
      B4FF696969FF787878FFCCCCCCFFE6E6E6FF8AC6B1FF28AFBEFF8AC6B1FF6C6C
      6CFFE0E0E0FF000000000000000000000000C4C4C4FFC4C4C4FF000000000000
      0000000000000000000000000000000000009A9A9AFFA7A7A7FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFBBBB
      BBFF4D4D4DFF616161FFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFD7D7D7FFB7B7B7FF555555FFF4F4F4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFCCCCE5FF1A1AE5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FF339696FF9FCDCDFF00C1C1FF33C9C9FF66ADADFF80B8
      B8FFE6E6E6FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFB3CFB3FF339633FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FFE8EEEEFFDAE4E4FFD5E0
      E0FFCDDCDCFFC6D7D7FFB9D1D1FFABCACAFF9DC3C3FF8CBBBBFF7AB3B3FF6FAD
      ADFF5AA4A4FF429999FF008080FF0000000000000000000000009A9A9AFFA7A7
      A7FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFBBBBBBFF4D4D4DFF727272FFD7D7D7FFE6E6E6FFBABABAFF7F7F
      7FFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7C7CFFACACACFFD5D5D5FFE6E6
      E6FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFC7C7
      C7FF6A6A6AFF6D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFDADADAFFC5C5C5FFA8A8A8FF7C7C7CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFE6E6E6FF4C4CE5FF8080E5FFE6E6E6FF6666E5FF8080E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFB3CFCFFF339696FF4CCDCDFF00C1C1FF71CECEFF1A8B8BFFE6E6
      E6FFE6E6E6FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFE6E6E6FFE6E6E6FFE6E6E6FF339633FFB3CFB3FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FFE3EAEAFFCFDEDEFFCADA
      DAFFC0D5D5FFBBD2D2FFAECCCCFF9FC4C4FF98C0C0FF87B8B8FF75B0B0FF60A7
      A7FF4B9E9EFF359595FF008080FF0000000000000000000000007C7C7CFFACAC
      ACFFD5D5D5FFE6E6E6FFE5E5E5FFE6E6E6FFE6E6E6FFD4D496FFBDBD31FFD3D3
      95FFE6E6E6FFC7C7C7FF6A6A6AFFE0E0E0FF646464FF828282FF787878FFD0D0
      D0FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFF989898FF626262FF9595
      95FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF6B6B
      6BFFE0E0E0FF6D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFDDDDDDFFE9E9E9FFB6B6B6FF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFCCCCE5FF6666E5FF3333E5FF2828E5FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FF4CA2A2FF99C4C4FF1AC5C5FF33C9C9FF66ADADFF80B8B8FFE6E6
      E6FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFE6E6E6FF80B880FF66AD66FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FFDBE5E5FFC9DBDBFF66AA
      AAFF048181FF008080FF399C9CFF55AAAAFF55AAAAFF008080FF008080FF87BB
      BBFF59A5A5FF2D9090FF008080FF000000000000000000000000FCFCFCFF9898
      98FF626262FF959595FFE6E6E6FFE6E6E6FFE6E6E6FFBDBD31FFBDBD31FFBDBD
      31FFE6E6E6FF6B6B6BFFE0E0E0FF0000000000000000C4C4C4FFC4C4C4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F4FFACAC
      ACFF565656FFA5A5A5FFD7D7D7FFE6E6E6FFE6E6E6FFE6E6E6FFBDBDBDFF8282
      82FFFEFEFEFF6D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDCDCDCFFEDEDEDFFE8E8E8FFCACACAFFDCDCDCFFA3A3A3FF848484FF0000
      0000000000000000000000000000000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFB3B3E5FF3333E5FF6666E5FFCCCCE5FFE6E6
      E6FFCCDADAFF1A8B8BFF66D1D1FF00C1C1FF71CECEFF1A8B8BFFE6E6E6FFE6E6
      E6FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFE6E6E6FF4CA24CFFCCDACCFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FFD9E6E6FF1A8B8BFF91BB
      BBFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF3F3F3FF84BD
      BDFF1D8E8EFF318F8FFF008080FF000000000000000000000000000000000000
      0000F4F4F4FFACACACFF565656FFA5A5A5FFD7D7D7FFD4D496FFBDBD31FFD4D4
      96FFBDBDBDFF828282FFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FFA0A0A0FF5C5C5CFF999999FFE6E6E6FFE6E6E6FF6F6F6FFFD3D3
      D3FF000000006D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDCDCDCFFEBEB
      EBFFE9E9E9FFCECECEFFC3C3C3FFC2C2C2FFC4C4C4FFD9D9D9FF4A4A4AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF8080E5FF4C4CE5FFE6E6
      E6FF66ADADFF80B8B8FF33C9C9FF33C9C9FF66ADADFF80B8B8FFE6E6E6FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FF339696FFEBEBEBFFECEC
      ECFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF3F3F3FFF5F5
      F5FF00000000399C9CFF008080FF000000000000000000000000000000000000
      00000000000000000000F7F7F7FFA0A0A0FF5C5C5CFF999999FFE6E6E6FFE6E6
      E6FF6F6F6FFFD3D3D3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F9FFAAAAAAFF5A5A5AFF9E9E9EFF737373FF0000
      0000000000006D6D6DFFDADADAFFDADADAFFDBDBDBFFE8E8E8FFEAEAEAFFD2D2
      D2FFC3C3C3FFC2C2C2FFC2C2C2FFC2C2C2FFC5C5C5FFE0E0E0FF6C6C6CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FF118787FFB5D7D7FF00C1C1FF5BCCCCFF1A8B8BFFE6E6E6FFE6E6E6FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FFEBEBEBFFEBEBEBFFECEC
      ECFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF3F3F3FFF5F5
      F5FFEFEFEFFFF8F8F8FF008080FF000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9FFAAAAAAFF5A5A5AFF9E9E
      9EFF737373FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F2FFA8A8A8FFF2F2F2FF0000
      0000000000006D6D6DFFDBDBDBFFE6E6E6FFE4E4E4FFBCBCBCFFC4C4C4FFC2C2
      C2FFC2C2C2FFC2C2C2FFC5C5C5FFD7D7D7FFB4B4B4FF696969FFE4E4E4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFCCDADAFF339696FF9FD4D4FF66ADADFF80B8B8FFE6E6E6FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFB3CFCFFF0B8484FFEBEBEBFFEBEBEBFFECEC
      ECFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF3F3F3FFF5F5
      F5FFEFEFEFFFF3F3F3FF0D8686FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F2FFA8A8
      A8FFF2F2F2FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000737373FFE7E7E7FFC2C2C2FFA3A3A3FF9E9E9EFFC2C2C2FFC2C2
      C2FFC4C4C4FFD3D3D3FFC1C1C1FF696969FFB8B8B8FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FFE6E6
      E6FFE6E6E6FFCCDADAFF4CA2A2FF339696FFE6E6E6FFE6E6E6FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF008080FFEBEBEBFFEBEBEBFFECEC
      ECFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF3F3F3FFF5F5
      F5FFF6F6F6FFF3F3F3FF008080FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007E7E7EFFC4C4C4FFB3B3B3FFA0A0A0FF9E9E9EFFC3C3C3FFD0D0
      D0FFCECECEFF6C6C6CFFA8A8A8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FF66ADADFF046565FFEBEBEBFFECEC
      ECFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF3F3F3FFF5F5
      F5FFF6F6F6FFF3F3F3FF72B8B8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000989898FF707070FFCECECEFFADADADFFDBDBDBFF7070
      70FF989898FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FF003838FF1D8E8EFF7EB4
      B4FFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF3F3F3FF81BB
      BBFF249090FF8EC6C6FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000888888FF777777FF888888FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF000000000000000072B8
      B8FF008080FF048181FF529F9FFF69ACACFF6BACACFF098282FF008080FF72B8
      B8FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000004A4A4A004A4A4A0000000000F2F2
      F200F2F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A0000000000F2F2
      F200F2F2F200F2F2F200000000000000000000000000000000002E7094002E70
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFFCECECEFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000F2F2F200F2F2
      F200F2F2F200E6E6E600B6B6B6000000000000000000000000002E7094003476
      9800347698000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000F2F2F200F2F2
      F200F2F2F200CECECE00B6B6B600AAAAAA00000000002E7094002A6D91002166
      8A0021668A002E71930000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000F2F2F200F2F2F200F2F2
      F200E6E6E600B6B6B600AAAAAA009E9E9E00000000002E70940021668A000D55
      7D000D557D0021668A002E719300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF4A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000F2F2F200F2F2F200F2F2
      F200CECECE00B6B6B600AAAAAA00000000002E7094002E709400000000000000
      0000000000000D557D0021668A002A6D91000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A0000000000F2F2F200F2F2F200F2F2F200DADA
      DA00B6B6B600AAAAAA009E9E9E00000000002E70940000000000AAAAAA00CACA
      CA00F2F2F200000000000D557D0021668A002A6D910000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000004A4A4A0000000000F2F2F200F2F2F200E6E6E600CECE
      CE00B6B6B600AAAAAA00000000003B7B9D0000000000AAAAAA00CACACA00DADA
      DA00DADADA00F2F2F200000000000D557D0021668A002A6D9100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F009A8F6F009A8F
      6F00CFCFCF000404040000000000000000009A8F6F009A8F6F00000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000F2F2F200F2F2F200F2F2F200E6E6E600B6B6
      B600AAAAAA009E9E9E00000000002E70940000000000C2C2C200CECECE00D5D5
      D500DADADA00DADADA00F2F2F200060606000D557D0021668A002A6D91000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F009A8F
      6F00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F0004040400040404009A8F
      6F009A8F6F00CFCFCF00040404009A8F6F0004040400040404009A8F6F000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE6E6E6FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000F2F2F200F2F2F200F2F2F200CECECE00B6B6
      B600AAAAAA00000000003B7B9D0000000000AAAAAA00CECECE00CFCFCF00D2D2
      D200D5D5D500D9D9D900DADADA00FEFEFE00000000000D557D0021668A002A6D
      9100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F00040404000404
      04009A8F6F00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404009A9AFA0004049A000404
      04009A8F6F009A8F6F009A8F6F000404040004049A0004049A00040404009A8F
      6F0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000F2F2F200F2F2F200F2F2F200DADADA00CECECE00AAAA
      AA009E9E9E00000000003B7B9D0000000000C2C2C200CECECE00CECECE00CECE
      CE00D1D1D100D4D4D400DADADA00E6E6E600FEFEFE00000000000D557D002166
      8A002A6D91000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000F4F24000F4F
      2400040404009A8F6F00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404009A9AFA000404FA000404
      9A00040404009A8F6F00040404002404C4000404FA0004049A00040404009A8F
      6F0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFD2D0
      D0FF954A1AFF944817FFC9BFB9FFCECECEFFCECECEFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000F2F2F200F2F2F200F2F2F200CECECE00B6B6B600AAAA
      AA00000000003B7B9D0000000000AAAAAA00CECECE00CECECE002525FF002525
      FF00CECECE00D0D0D000D3D3D300D9D9D900DADADA00FAFAFA00000000000D55
      7D001A6086000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF009A8F6F00040404001AA44F001AA4
      4F000F4F2400040404009A8F6F00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF00CFCFCF00040404009A9AFA000404
      FA0004049A00040404002404C4000404FA002404C400040404009A8F6F000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE7E3
      E1FF944817FF9D5023FF944817FFDCD2CDFFE6E6E6FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000F2F2F200F2F2F200F2F2F200E6E6E600B6B6B600AAAAAA009E9E
      9E00000000003B7B9D0000000000CACACA00DADADA002525FF006B6BFF000000
      DC00CECECE00C8C8C800C1C1C100B6B6B600B6B6B600C2C2C200DDDDDD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400040404001AA44F001AA44F0004C4
      8F001AA44F000F4F2400040404009A8F6F00E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404009A9A
      FA000404FA002404C4000404FA002404C400040404009A8F6F00000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E6E6FFE7E5E5FFE7E3E1FFE7E3E1FFE7E3E1FFE7E3E1FFE7E3E1FFE6D9
      D5FF944817FFC0834FFFA45C2EFF944817FF221812FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000F2F2F200F2F2F200F2F2F200CECECE00B6B6B600AAAAAA000000
      00003B7B9D0000000000AAAAAA00DADADA00DADADA00DADADA00DADADA000000
      DC00AAAAAA009E9E9E00959595009B9B9B009D9D9D00B6B6B600C2C2C200AAAA
      AA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4009A8F6F00040404001AA44F0004C48F000404
      040004C48F001AA44F000F4F2400040404009A8F6F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      04000404FA000404FA000404FA00040404009A8F6F009A8F6F00000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E5E5FF974C1CFF944817FF944817FF944817FF944817FF944817FF9448
      17FF964918FFC39541FFC39B46FFA35C2DFF8F4616FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000F2F2F200F2F2F200F2F2F200E6E6E600B6B6B600AAAAAA009E9E9E000000
      00003B7B9D0000000000D2D2D200DADADA00DADADA00DADADA00DADADA000000
      0000000000000000000083838300A5A5A500B6B6B600CECECE00DADADA00AAAA
      AA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404001AA44F0004C48F00040404000404
      04000404040004C48F001AA44F000F4F2400040404009A8F6F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404002404
      C4000404FA009A9AFA000404FA0004049A00040404009A8F6F009A8F6F000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E3E1FF944817FFBB6524FFBB6C21FFBB7122FFBC7725FFBD7D27FFBE82
      2AFFC19032FFC39D38FFC3A43DFFAA8628FFB1703BFFA15424FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000F2F2F200F2F2F200F2F2F200CECECE00B6B6B600AAAAAA00000000003B7B
      9D0000000000AAAAAA00E6E6E600E6E6E6002525FF002525FF00DADADA000000
      0000DADADA00DADADA0000000000CECECE00CECECE00CECECE00AAAAAA000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404001AA44F001AA44F0004040400E4E4
      E400E4E4E4000404040004C48F001AA44F000F4F2400040404009A8F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404002404C4000404
      FA002404C400040404009A9AFA000404FA0004049A00040404009A8F6F009A8F
      6F0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E3E1FF944817FFBB681FFFBD7A27FFBE8129FFBF882DFFC08F31FFC195
      33FFC29C37FFC3A339FFC4AA3DFFB59B30FFC7AB46FFBA8549FFA15525FF0000
      00FF000000FF000000FF000000FF000000FF000000000000000000000000F2F2
      F200F2F2F200F2F2F200E6E6E600B6B6B600AAAAAA009E9E9E00000000003B7B
      9D0000000000D2D2D200E6E6E6002525FF006B6BFF002525FF00DADADA000000
      0000F2F2F20000B9B9000096960000000000CECECE00C2C2C200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004040400E4E4E400E4E4
      E400E4E4E400E4E4E4000404040004C48F001AA44F000F4F2400040404009A8F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400040404009A9AFA000404FA002404
      C40004040400E4E4E400040404009A9AFA000404FA0004049A00040404009A8F
      6F0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E3E1FF944817FFBA671DFFBD7A26FFBE8129FFBF882DFFC08F31FFC195
      33FFC29C37FFC3A339FFC4AA3DFFC6B141FFC6B444FFC7B248FFBB8749FF9749
      18FF000000FF000000FF000000FF000000FF000000000000000000000000F2F2
      F200F2F2F200F2F2F200DADADA00B6B6B600AAAAAA00000000004181A3000000
      0000AAAAAA00C2C2C200E6E6E600E6E6E600E6E6E6002525FF00DADADA00DADA
      DA00000000001BD4D40003BCBC000096960000000000AAAAAA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400040404000404040004C48F001AA44F000F4F24000404
      04009A8F6F000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400040404009A9AFA009A9AFA000404
      0400E4E4E400E4E4E40004040400040404009A9AFA009A9AFA00040404009A8F
      6F0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E3E1FF944817FFBA671DFFBD7A26FFBE8129FFBF882DFFC08F31FFC195
      33FFC29C37FFC3A339FFC4AA3DFFC6B141FFC6B644FFC7BA48FFC8AF4AFFBD88
      5AFF974919FF000000FF000000FF000000FF0000000000000000F2F2F200F2F2
      F200F2F2F200F2F2F200DADADA00CECECE00B6B6B600000000004688AC002E70
      9400000000000000000000000000E6E6E600E6E6E6002525FF00E6E6E600DADA
      DA00DADADA000000000027E0E00000B9B9000096960000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000404040004C48F001AA44F000F4F
      2400040404000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004040400E4E4
      E400E4E4E400E4E4E400040404000000000004040400040404009A8F6F000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E3E1FF944817FFBA671DFFBD7A26FFBE8129FFBF882DFFC08F31FFC195
      33FFC29C37FFC3A339FFC4AA3DFFC6B141FFC6B644FFC6B445FFC49D4FFFAB5D
      30FF000000FF000000FF000000FF000000FF0000000000000000F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200E6E6E600CECECE00B6B6B600000000004C8E
      B200000000009B9B9B007272720000000000E6E6E600E6E6E600F2F2F200EFEF
      EF00E1E1E100DADADA00000000002AE3E30000B9B90000969600000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400040404000000000000000000000000000404040004C48F001AA4
      4F00040404000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E3E1FF944817FFBB681FFFBD7A27FFBE8129FFBF882DFFC08F31FFC195
      33FFC29C37FFC3A339FFC4AA3DFFC5AF41FFC6AE44FFC2994AFFAB5E30FF0000
      00FF000000FF000000FF000000FF000000FF00000000F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200E6E6E600CECECE00B6B6B6000000
      000000000000ADADAD00868686008686860000000000E6E6E600F0F0F000F7F7
      F700F4F4F400E9E9E900DADADA000000000018D1D10000B9B900009696000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000040404000404
      0400000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E3E1FF944817FFBB6524FFBB6C21FFBB7122FFBC7725FFBD7D27FFBF84
      2DFFC19032FFC39D39FFC4A83EFFC5A840FFC29649FFAA5B2CFF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200E6E6E600CECECE00B6B6B6009E9E
      9E0000000000BBBBBB009E9E9E00929292008686860000000000EAEAEA00F3F3
      F300FEFEFE00F5F5F500E6E6E600AAAAAA00000000001BD4D40000B9B9000096
      960000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E5E5FF974C1CFF944817FF944817FF944817FF944817FF944817FF9448
      17FF944817FFC39839FFC4A23DFFC19247FFAA5B2CFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000000000000000000000F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200CECECE00B6B6B6009E9E
      9E0000000000C2C2C2009E9E9E009E9E9E00929292008686860000000000E6E6
      E600FBFBFB00F6F6F600E6E6E6000000000000000000000000001ED7D7000096
      960000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE7E6E6FFE7E5E5FFE7E3E1FFE7E3E1FFE7E3E1FFE7E3E1FFE7E3E1FF4035
      31FF944817FFC38C3AFFC28F48FFAA5B2CFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000F2F2F200F2F2F200F2F2F200F2F2F200E6E6E600B6B6B600B6B6
      B60000000000C2C2C200AAAAAA009E9E9E009E9E9E0092929200868686000000
      0000DDDDDD00E6E6E600AAAAAA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF2925
      23FF944817FFC68A58FFAB5A2DFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000F2F2F200F2F2F200F2F2F200CECECE00CECE
      CE0000000000C2C2C2004A4A4A004A4A4A009E9E9E009E9E9E00929292000000
      0000AAAAAA00E6E6E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF0000
      00FFA9572DFFA95125FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F200F2F2F200E6E6
      E60000000000C2C2C2004A4A4A00868686009E9E9E004A4A4A0000000000295D
      790000000000AAAAAA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF0000
      00FFB76F4DFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F20000000000C2C2C200B6B6B6009E9E9E0000000000000000004385A9004082
      A600285C78000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000498B
      AF003D7FA3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A004A4A4A0000000000E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A004A4A4A0000000000E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6
      E600E6E6E600E6E6E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6
      E600E6E6E600E6E6E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFFCECECEFF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFFCECECEFF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFF0F8585FFB7C5C5FFCECECEFFCECECEFFCECECEFF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFF72ABABFF519E9EFF2E9191FFB7C5C5FFCECECEFFCECECEFFCECE
      CEFF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFBAC5
      BAFF469A44FF409F3FFF41A040FF41A040FF41A03FFF40A03FFF3F9F3EFF3E9F
      3EFF157414FF48A847FF49A747FF4EAB4DFF55AD53FF53AB51FF52AB51FF53AB
      51FF53AB51FF51A950FF97C396FF000000000000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A0000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFF178888FFB7C5C5FFB7C5C5FF2E9191FFB7C5C5FFCECECEFFCECE
      CEFFCECECEFF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFF88B3
      87FF59EE57FF70F26DFF6DF16AFF6BF068FF6AF066FF67F064FF65EF62FF63EE
      61FF61ED5FFF5FED5CFF5DEC5AFF5AEC59FF59EB56FF57EA54FF55EA53FF53E9
      51FF52E950FF51EE4EFF2BA82BFF000000000000000000000000000000000000
      000000000000000000004A4A4A0000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A0000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF000000FFCECECEFFCECE
      CEFF72ABABFF5CA2A2FF66C0C0FF58C1C1FFB7C5C5FF2E9191FFB7C5C5FFCECE
      CEFFCECECEFFCECECEFF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF000000FFCECECEFF86B1
      86FF40BE3FFF45BE43FF42BA40FF40B83FFF3EB63DFF3CB43BFF3AB139FF38AE
      37FF36AC35FF34A933FF32A731FF30A52FFF2EA32DFF2CA12BFF2A9E2AFF299C
      28FF289B28FF2BAD2AFF249723FF000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600CECE
      CE00C2C2C2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600CECE
      CE00C2C2C2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFCECECEFFCECE
      CEFF178888FFB7C5C5FF44BCBCFF38BFBFFF5BC4C4FFB7C5C5FF2E9191FFB7C5
      C5FFCECECEFFCECECEFFCECECEFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFCECECEFF86AF
      85FF2C9C2CFF2E9C2EFF2C9A2CFF2A972AFF289528FF269326FF249124FF238F
      22FF218C20FF1E8A1EFF1D881CFF198319FF1A7C1AFF1F7E1FFF1C7B1CFF1978
      19FF177718FF158816FF1E881DFF000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600CECECE00C2C2C200AAAA
      AA00AAAAAA009292920000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600CECECE00C2C2C200AAAA
      AA00AAAAAA009292920000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFE6E6E6FF80B8
      B8FF5CA2A2FF64BDBDFF34BBBBFF38BFBFFF3BC3C3FF5EC7C7FFB7C5C5FF2E91
      91FFB7C5C5FFCECECEFFCECECEFFCECECEFF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFE6E6E6FF93BC
      92FF279527FF289528FF238E23FF208A20FF1E881EFF1B861BFF1A841AFF1881
      18FF167F16FF147D14FF127912FF2C842BFF77C077FF7BC17CFF7AC17BFF79BF
      79FF74B674FF238F23FF1D851CFF000000000000000000000000000000000000
      00000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600CECECE00C2C2C200AAAAAA00AAAAAA009292
      920092929200929292007A7A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600CECECE00C2C2C200AAAAAA00AAAAAA009292
      920092929200929292007A7A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FF1A8B
      8BFF85C8C8FF31B7B7FF34BBBBFF38BFBFFF3BC3C3FF3FC7C7FF50C9C9FF9DC6
      C6FF2E9191FFB7C5C5FFCECECEFFCECECEFFCECECEFF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FF92BB
      92FF249324FF2F9730FF55A955FF61AC61FF62AC61FF61AB61FF5FAA5FFF5FA9
      5FFF5EA95EFF58A458FF569156FFAED3AEFFB6E1B6FFA2CFA2FF92C693FFA7D2
      A7FF5CA65CFF1A8C1AFF1D871CFF000000000000000000000000000000000000
      00000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600CECECE00B6B6B600AAAAAA00AAAAAA0092929200929292008686
      86007A7A7A007A7A7A006E6E6E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600CECECE00B6B6B600AAAAAA00AAAAAA0092929200929292008686
      86007A7A7A007A7A7A006E6E6E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FF80B8B8FF66AD
      ADFF56BEBEFF31B7B7FF34BBBBFF38BFBFFF3BC3C3FF3FC7C7FF43CBCBFF46CF
      CFFF91D6D6FF339696FFCCDADAFFE6E6E6FFE6E6E6FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FF92BB
      91FF228F21FF30962EFF76B976FFA4D8A3FF94D293FF91D091FF91D191FF91D0
      91FF8ECD8DFF8AB78AFFE2EFE2FFCEEBCFFFC1E4C2FFC9EBC9FFC0DEC0FF599E
      59FF177D17FF158B15FF1E881DFF000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FF198B8BFF88BC
      BCFF6BC3C3FF31B7B7FF34BBBBFF38BFBFFF3BC3C3FF3FC7C7FF43CBCBFF46CF
      CFFF4AD3D3FFA9D0D0FF198B8BFFE6E6E6FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BC
      92FF208D20FF208C20FF2D912DFF79B779FF9BCA9BFF87BF86FF82BC81FF7CB6
      7CFF84AA84FFE6F1E6FFC4E2C4FFB8D8B8FFBEDBBFFFC7DFC6FFB4E1B3FF55A3
      55FF187C18FF188D18FF188617FF000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600000000004A755800344439003444
      3900344439003444390034443900344439003444390034443900344439003444
      3900344439003444390034443900344439003444390034443900344439003444
      390034443900344439002F3A3300000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      810070A6810070A6810070A6810070A6810070A6810070A6810070A6810070A6
      810070A6810070A6810070A6810070A6810070A6810070A6810070A6810070A6
      810070A6810070A6810070A68100000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFCCDADAFF4CA2
      A2FF4CA2A2FF86CACAFF47BFBFFF38BFBFFF3BC3C3FF3FC7C7FF43CBCBFF46CF
      CFFF6CD6D6FF66ADADFF80B8B8FFE6E6E6FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BB
      92FF1D8A1DFF1F8B1FFF1A871AFF298D29FF73B473FF96C795FF80B680FF93B7
      93FFDEEDDEFFC2E1C1FFC1DDC1FFCBE2CBFFD4E7D4FFBCD9BCFFA0CEA0FFABE0
      ABFF52A052FF1D901DFF128412FF000000000000000000000000000000000000
      0000E6E6E600E6E6E600E6E6E600E6E6E6000000000057936A004A7558005793
      6A0057936A004A75580057936A0057936A004A75580057936A0057936A004A75
      580057936A0057936A004A7558004A75580057936A0057936A005B9C70005B9C
      700057936A004A75580034443900000000000000000000000000000000000000
      0000E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      810070A6810070A681002782270070A6810070A6810070A6810070A6810070A6
      810070A6810070A6810070A6810070A6810070A6810070A681002782270070A6
      810070A6810070A6810070A68100000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFCECEE8FF5757F5FFE6E6E6FFE6E6
      E6FF99C4C4FF339696FF99C4C4FF71CBCBFF3BC3C3FF3FC7C7FF43CBCBFF46CF
      CFFF91D6D6FF1A8B8BFFE6E6E6FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF93BB
      92FF1A871AFF1D881DFF1B861BFF178217FF248724FF69A769FFA5C2A4FFD7E9
      D6FFC2E1C2FFBADAB9FFD1E8D1FFC4DAC4FF94C293FF85BB85FF86BD86FF81BB
      81FF5AAA5AFF239723FF128412FF000000000000000000000000000000000000
      0000E6E6E600E6E6E600E6E6E600E6E6E600000000005B9C700041614B00E6E6
      E60057936A004A755800CECECE0057936A004A755800CECECE0057936A004A75
      5800E6E6E60057936A004A7558004A755800CECECE0057936A00E6E6E600CECE
      CE00CECECE0057936A0034443900000000000000000000000000000000000000
      0000E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      810070A68100000000002981290070A6810070A68100000000002981290070A6
      810070A68100000000002981290070A6810070A68100000000002981290070A6
      810070A6810070A6810070A68100000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FF5555F5FF9E9EEDFFE6E6E6FFE6E6
      E6FFE6E6E6FFCCDADAFF4CA2A2FF4CA2A2FF8BCFCFFF51CACAFF43CBCBFF68D3
      D3FF66ADADFF80B8B8FFE6E6E6FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BB
      92FF188418FF1B851BFF188319FF168016FF157815FF5AA65AFFB8DCB8FFCFE7
      CEFFBAD9BAFFBFDDBFFFCCE9CCFF86C185FF1A791AFF127D12FF158016FF1582
      16FF188418FF1F971FFF158714FF00000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600000000005B9C700041614B00E6E6
      E60057936A0057936A00CECECE0057936A004A755800CECECE0057936A004161
      4B00E6E6E60057936A0057936A004A755800CECECE0057936A00E6E6E6004161
      4B004A7558004A7558003444390000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      810070A68100000000002B7F2C0070A6810070A6810070A68100000000002B7F
      2C00000000002B7F2C0070A6810070A6810070A68100000000002B7F2C0070A6
      810070A6810070A6810070A68100000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FF9C9CEDFF5555F5FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF99C4C4FF339696FF99C4C4FF78D3D3FF8FD4
      D4FF1A8B8BFFE6E6E6FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BA
      91FF168116FF198219FF167F16FF177A17FF55A655FF8CCF8CFF89C289FFA7CE
      A7FFCFE5CFFFCAE2CAFF98C998FF8DCF8CFF61B060FF1B7C1BFF188319FF1C87
      1CFF1E891DFF229A22FF168815FF00000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600000000005B9C700041614B00E6E6
      E600E6E6E600E6E6E600E6E6E60057936A004A755800CECECE0057936A004161
      4B00E6E6E60057936A00E6E6E60057936A00CECECE0057936A00E6E6E6004A75
      58004A7558004A7558003444390000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      810070A68100000000002D7E2F0070A6810070A6810070A6810070A681000000
      00002D7E2F0070A6810070A6810070A6810070A68100000000002D7E2F0070A6
      810070A6810070A6810070A68100000000000000000000000000000000000000
      0000000000FFE6E6E6FFCDCDE8FF3A3AF8FF4646F7FF9C9CEEFFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFCCDADAFF4CA2A2FF4CA2A2FF5BA8
      A8FF80B8B8FFE6E6E6FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BA
      91FF147F14FF157F15FF167917FF57A657FF91D391FF83BE83FF7DB77DFF89BE
      89FFC3DDC3FFB5D5B5FF7FBB7FFF84C083FF94D493FF67B366FF1F801FFF1D88
      1DFF208B20FF259D25FF178A16FF000000000000000000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600000000005B9C700041614B00E6E6
      E60041614B0041614B00E6E6E60057936A004A755800CECECE0057936A004161
      4B00E6E6E600CECECE0041614B00E6E6E600CECECE0057936A00E6E6E6004A75
      58004A7558004A75580034443900000000000000000000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      81002E7C3100000000002E7C31002E7C31002E7C310070A68100000000002E7C
      3100000000002E7C310070A6810070A681002E7C3100000000002E7C31002E7C
      31002E7C310070A6810070A68100000000000000000000000000000000000000
      00FFE6E6E6FFE6E6E6FF5151F6FF9C9CEDFFCDCDE8FF5252F6FF5454F5FFCECE
      E8FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF99C4C4FF1087
      87FFE6E6E6FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF93BA
      92FF117C11FF1A7C1AFF5CA95CFF98D898FF81BB81FF7EB87EFF8BBF8BFFA3CC
      A3FF2A892AFF55A054FFA9D0A8FF86BE85FF85C184FF9BDB9AFF6FB86EFF2988
      28FF228D21FF27A127FF188C18FF000000000000000000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600000000005B9C700041614B00E6E6
      E6004A75580041614B00E6E6E60041614B00E6E6E600E6E6E600E6E6E6004161
      4B00E6E6E60041614B004A75580041614B00E6E6E60041614B00E6E6E6004A75
      58004A7558004A75580034443900000000000000000000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A681000000
      00000000000000000000000000000000000070A6810000000000307B340070A6
      810070A681000000000070A68100000000000000000000000000000000000000
      000070A6810070A6810070A68100000000000000000000000000000000000000
      00FFE6E6E6FF9A9AEEFF5050F6FFE6E6E6FFE6E6E6FFE6E6E6FF9D9DEDFF5757
      F5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BA
      91FF137B14FF56A457FFA5DDA5FF97C697FF95C495FF9AC79AFF97C697FF318C
      32FF147F14FF158015FF57A558FFA4CFA3FF9BCB9AFF9DCD9BFFAAE0A9FF6DB8
      6CFF2C932BFF29A42AFF1A8F19FF0000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600000000005B9C700041614B004161
      4B004A75580041614B0041614B0041614B0041614B0041614B0041614B004161
      4B0041614B004A7558004A7558004A75580041614B0041614B0041614B004A75
      58004A7558004A755800344439000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      810070A6810070A6810070A6810070A6810070A6810070A6810070A6810070A6
      810070A6810070A6810070A6810070A6810070A6810070A6810070A6810070A6
      810070A6810070A6810070A68100000000000000000000000000000000FFE6E6
      E6FFE6E6E6FF4E4EF6FFCDCDE8FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FF4E4EF6FF9C9CEEFFE6E6E6FFE6E6E6FFCECEE8FF5757F5FFE6E6
      E6FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BA
      92FF147B14FF509E50FF7BB37BFF7CB57CFF7BB47BFF71B072FF328E32FF157F
      16FF188218FF19851AFF1D871DFF55A555FF83BE83FF84BF84FF81BE81FF65B3
      64FF329931FF2CA62CFF1A901AFF0000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000070A681005B9C70005B9C
      70005B9C70005B9C70005B9C70005B9C70005B9C70005B9C70005B9C70005B9C
      70005B9C70005B9C70005B9C70005B9C70005B9C70005B9C70005B9C70005B9C
      700057936A0057936A004A7558000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000070A6810070A6810070A6
      810070A6810070A6810070A6810070A6810070A6810070A6810070A6810070A6
      810070A6810070A6810070A6810070A6810070A6810070A6810070A6810070A6
      810070A6810070A6810070A68100000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFCDCDE8FF5252F6FF5454F5FFCECEE8FF6D6DF3FF8686F0FFE6E6
      E6FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92B9
      91FF0F790FFF0F7B0FFF0D7A0DFF0E7B0EFF107C10FF127E12FF178317FF1A85
      1AFF1C881CFF1E8A1EFF208C1FFF1F8C1EFF1E8D1EFF20901FFF229221FF2695
      26FF2B992BFF32AD31FF1C931CFF00000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF9D9DEDFF4444F7FF3C3CF8FFE6E6E6FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF92BB
      92FF1D8D1DFF229222FF239222FF249424FF269725FF289827FF299A28FF2B9C
      2AFF2D9E2CFF2EA12EFF31A330FF33A632FF34A834FF36AA35FF38AC37FF3AAE
      39FF3CB03BFF44C743FF24A022FF000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60017171700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60017171700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF3838F8FFB5B5EBFFE6E6E6FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF97BF
      96FF43B842FF63CD62FF63CD61FF64CE62FF65D064FF67D265FF69D367FF6AD6
      68FF6DD76AFF6EDA6CFF6FDB6EFF72DD70FF73DF71FF74E173FF76E374FF77E4
      76FF79E778FF80F27EFF27B025FF000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF8181F0FF6969F3FFE6E6E6FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FFE6E6E6FFE6E6E6FFE0E3
      E0FF8FC48EFF9ACD9AFF9ACD99FF9ACD99FF9ACD99FF9ACE9AFF4C7F4BFFA3D7
      A2FFA4D7A2FFA4D8A3FFA4D8A3FFA4D8A4FFA5D8A3FFA5D8A4FFA4D8A4FFA4D8
      A4FFA5D9A4FFA1D9A0FFC5E2C5FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF4E4EF6FFCDCDE8FFE6E6E6FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007A7A7A007A7A7A007A7A
      7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A
      7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A
      7A007A7A7A007A7A7A007A7A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7A7A0044444400242424002424
      2400242424002424240024242400242424002424240024242400242424002424
      2400242424002424240024242400242424002424240024242400242424002424
      2400242424002424240024242400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000044444400BABABA00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00FACFCF00444444008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000024242400FACFCF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DADADA00EFEFEF00DADADA00DADA
      DA00DADADA00CFCFCF00EFEFEF00FACFCF004444440084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000024242400FACFCF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00DADADA00EFEFEF00DADADA00DADADA00DADA
      DA00CFCFCF00CFCFCF00CFCFCF00EFEFEF00FACFCF004444440044444400BABA
      BA00000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000044444400FACF
      CF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00DADADA00EFEFEF00DADADA00DADADA00DADADA00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00DADADA00DADADA00444444004444
      4400BABABA000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004444
      4400FACFCF00EFEFEF00EFEFEF00EFEFEF005A5A5A009A042F009A042F009A04
      2F009A042F009A042F009A042F009A042F009A042F009A042F009A042F009A04
      2F009A042F005A5A5A00BABABA00CFCFCF00CFCFCF00EFEFEF00EFEFEF00FACF
      CF0044444400BABABA0000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00644F4F005A5A5A008F8F8F00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000044444400FACFCF00EFEFEF00EFEFEF009A042F009A042F009A042F009A04
      2F009A042F009A042F009A042F009A042F009A042F009A042F009A042F009A04
      2F009A042F009A042F0084848400BABABA00CFCFCF00EFEFEF00EFEFEF00DADA
      DA007A7A7A008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00644F4F006F8F9A00A48484005A5A5A008F8F8F00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000044444400FACFCF009A042F009A042F005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A009A042F009A042F00BABABA00CFCFCF00CFCFCF00EFEFEF00EFEF
      EF00FACFCF004444440000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF0064BAEF00448FDA006F8F9A00A48484005A5A5A008F8F8F00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000444444009A042F00CF9A2F00CF9A2F00CF9A2F00CF9A
      2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A
      2F00CF9A2F00CF9A2F009A042F00BABABA00BABABA00CFCFCF00CFCFCF00DADA
      DA007A7A7A004444440000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400848FFA004FBAFA00448FDA006F8F9A00A48484005A5A5A008F8F
      8F00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A042F00AFAFAF00AFAFAF00AFAFAF00AFAF
      AF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAF
      AF00AFAFAF00AFAFAF009A042F0084848400BABABA00BABABA00CFCFCF00BABA
      BA00444444007A7A7A0000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00AFAF
      AF007A7A7A001A242F00243A44009A9A9A00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400848FFA004FBAFA00448FDA006F8F9A00AF8484005A5A
      5A008F8F8F00E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A042F00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA009A042F0084848400BABABA00BABABA00CFCFCF00FACF
      CF00BABABA007A7A7A00AFAFAF00000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4008F8F
      8F008484840084848400848484009A9A8F00E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400AFAFAF005A5A5A002F44
      4F003A5A6F00447A8F005A84A4004F4F4F00E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400848FFA005ABAFA00447ACF006F8F9A00A484
      84006F6F6F006F6F6F006F6F6F006F6F6F006F6F6F008F8F8F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A042F009A042F009A042F009A042F009A04
      2F009A042F009A042F009A042F009A042F009A042F009A042F009A042F009A04
      2F009A042F009A042F009A042F008484840084848400BABABA00BABABA00BABA
      BA00FACFCF004444440084848400000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400BABABA00C4AF9A00E4DA
      CF00EFE4E400EFE4E400EFE4E400CFCFCF00847A6F009A9A9A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400AFAFAF005A5A5A00243A44003A647A004F84
      A4004F84A400447A9A005A84A4004444440004040400FAFAFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400848FFA004FBAFA00448FDA008F8F
      8F007A7A7A00C49A8400CFAF8F00E4BAAF00DAAFA4006F6F6F006F6F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A5A5A009A042F00FAFAFA00CF9A
      2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A
      2F009A042F0084848400848484008484840084848400BABABA00BABABA00BABA
      BA00BABABA00BABABA0044444400AFAFAF000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4009A9A9A00E4CFC400FAFAEF00E4E4
      E400CFBAAF00DAAFA400E4BAAF00EFDACF00FAFAEF00E4E4E40084848400CFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4000F242400447A8F004F84A400447A9A004F84
      A4003A6F8F003A647A00648FAF0004040400040404005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400848FFA00848FFA00AF84
      8400FACFA400FAEFC400FAFACF00FAFADA00FAFADA00FAFADA00A48484006F6F
      6F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00DADADA00DADADA00BABABA00BABABA00BABABA00BABABA00CF9A
      2F009A042F00848484008484840084848400848484008484840084848400BABA
      BA00BABABA00FACFCF007A7A7A007A7A7A000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400DADADA00A4A4A400EFEFEF00EFEFEF00DAAF8F00C464
      3A00C4643A00DAAF8F00CF7A4F00BA642F00CF8F6F00EFE4E400EFEFEF008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A400447A8F003A647A004F84
      A400446F8F003A647A00648FAF00040404000F0F0F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400CFAF8F00FACF
      A400FAEFBA00FAFAC400FAFADA00FAFADA00FAFAFA00FAFAFA00FAEFC4007A64
      64008F8F8F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00DADADA00DADADA00DADADA00BABABA00BABABA00BABABA00CF9A
      2F009A042F008484840084848400848484008484840084848400848484008484
      8400BABABA00BABABA00BABABA007A7A7A000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400BABABA00E4CFC400FAFAEF00CF8F6F00BA642F00CF64
      2F00C4846F00EFEFEF00E4BAA400BA642F00BA642F00C47A4F00EFDACF00EFE4
      E4009A9A9A000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F005A84A4003A6F8F003A647A004F84
      9A003A6F8F003A647A006F9AAF00040404000F0F0F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAFA400FAEF
      C400FAE4AF00FAFAC400FAFADA00FAFAEF00FAFAFA00FAFAFA00FAFADA00C49A
      84006F6F6F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00DADADA00DADADA00DADADA00DADADA00BABABA00BABABA00CF9A
      2F009A042F004444440044444400444444004444440044444400444444004444
      44004444440044444400444444007A7A7A000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400AFA49A00FAFAFA00E4AF9A00BA642F00CF642F00CF64
      2F00CF643A00DA8F6400CF6F3A00CF642F00CF642F00BA642F00CF846400FAFA
      EF009A8F8F000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A400446F8F003A647A00447A
      8F003A647A001AC4CF006F9AAF00040404000F0F0F005A5A5A00000000008484
      8400DADADA000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400CFAF8F00FAFA
      CF00FADAAF00FAFAC400FAFADA00FAFADA00FAFAEF00FAFADA00FAFADA00CFAF
      8F006F6F6F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00EFEFEF00DADADA00DADADA00DADADA00BABABA00BABABA00CF9A
      2F009A042F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400BAAFAF00E4CFC400FAFAEF00CF7A4400CF642F00CF642F00CF64
      2F00CF7A4F00E4CFC400DA8F6F00CF642F00CF642F00CF642F00C4643A00EFDA
      CF00EFE4E4009A8F8F0000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A003A6F8F003A647A004F84
      A4004F849A0024A4AF006F9AAF00040404000F0F0F003A3A3A00645A5A00443A
      2F007A7A7A00AFAFAF00AFAFAF00000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAFA400FAEF
      C400FAE4AF00FAEFBA00FAFACF00FAFADA00FAFADA00FAFADA00FAFACF00CFAF
      8F006F6F6F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00DADADA00DADADA00DADADA00BABABA00CF9A
      2F009A042F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400AFA49A00EFDACF00EFDACF00CF6F3A00CF643A00CF642F00CF64
      2F00C47A4F00EFE4E400EFC4AF00CF6F3A00CF642F00CF642F00CF642F00DAAF
      9A00EFEFEF009A8F8F0000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A004F849A00447A9A004F84
      A400446F8F003A647A006F9AAF00040404000F0F0F003A2F2400847A64006F64
      4F0044443A0044443A001A0F0F00000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAFA400FAFA
      CF00FAFADA00FAE4AF00FAEFBA00FAFAC400FAFAC400FAFAC400FAFAC400BA8F
      84008F8F8F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DADADA009A042F009A042F009A04
      2F009A042F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400AFA49A00EFDACF00EFDACF00CF6F3A00CF6F3A00CF642F00CF64
      2F00CF642F00C48F7A00EFEFEF00EFC4AF00CF6F3A00CF642F00CF642F00E4AF
      8F00FAFAEF009A8F8F0000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F005A84A4003A6F8F003A647A004F84
      9A003A6F8F003A647A006F9AAF00040404000F0F0F006F644F00A48F7A009A8F
      6F009A8F6F008F8464002F24240000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAF9A00EFDA
      CF00FAFAFA00FAFADA00FAEFBA00FADAAF00FAE4AF00FAEFBA00FACFA4009A6F
      6F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF009A042F00FAFAFA00FAFA
      FA009A042F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400AFA49A00EFDACF00EFE4E400DA7A4400DA6F3A00CF642F00CF64
      2F00CF642F00CF642F00DAA48400FAFAFA00DA9A7A00CF643A00CF6F3A00EFBA
      AF00FAFAEF009A8F8F000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A400446F8F003A647A004F84
      9A00446F8F003A647A006F9AAF00040404001A1A1A00241A1A00645A4F006F64
      4F0044443A005A5A5A005A5A5A0000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAF
      A400FAEFC400FAFADA00FAFACF00FAEFBA00FAEFC400FACFA400BA8F8F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF009A042F00FAFAFA009A04
      2F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400BAAFAF00E4CFC400FAFAFA00EFA47A00E47A4400CF846400E4CF
      C400DA9A7A00CF642F00CF845A00FAFAEF00E4BAA400DA6F3A00DA7A4400EFE4
      E400EFE4E4009A8F8F000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A4003A6F8F003A647A00446F
      8F003A647A00447A8F006F9AAF000F0F0F001A1A1A005A5A5A00CFCFCF004444
      3A00BABABA000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400DAAFA400DAAFA400CFAF8F00E4BAA400DAAF9A008F8F8F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00AFAFAF009A042F009A042F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400AFA49A00FAFAEF00EFE4E400FA9A6F00E48F6400E4DA
      DA00FAFAEF00EFBAAF00EFE4E400FAFAFA00E4A48400E4844F00EFBA9A00FAFA
      FA009A8F8F000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A003A647A003A647A00447A
      9A00447A9A00648FAF00647A8F001A1A1A00242424005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F009A042F009A04
      2F009A042F009A042F009A042F009A042F009A042F009A042F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4CFC400FAFAFA00FAEFC400FAC48F00E4AF
      8F00EFDACF00EFE4E400EFE4E400FAC4A400FA9A6400FABA9A00FAFAFA00EFE4
      E400AFAFAF000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A00447A9A005A84A400648F
      AF00647A8F00444444002F2F2F0024242400242424005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400BABABA00E4DACF00FAFAFA00FAFAEF00FAEF
      C400FAE4AF00FADAA400FACFA400FACFA400EFDACF00FAFAFA00FAFAEF00AFAF
      A400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A2F2F005A84A4006F8F9A005A6F7A004444
      44002F2F2F002F2F2F002F2F2F002F2F2F002F2F2F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400BABABA00E4CFC400FAFAEF00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAEF00DAC4C400BAAFAF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400646464003A444F001A1A1A000F0F0F000F0F
      0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400BAAFAF00DAC4
      BA00EFDACF00EFDACF00EFDACF00DAC4BA00BABABA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A009A9A9A009A9A9A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009A9A9A009A9A9A008F8F8F008F8F8F008F8F8F009A9A
      9A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9A9A009A9A9A008F8F8F008F8F8F007A7A7A007A7A7A007A7A7A008F8F
      8F009A9A9A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00848484008484840004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A9A9A009A9A
      9A008F8F8F008F8F8F007A7A7A007A7A7A000404040004040400040404007A7A
      7A008F8F8F009A9A9A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400848484009A9A
      9A00AFAFAF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A009A9A9A008F8F8F008F8F
      8F007A7A7A007A7A7A0004040400040404009A9A9A00CFCFCF00BABABA000404
      04007A7A7A008F8F8F009A9A9A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00AFAFAF00848484000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009A9A9A009A9A9A008F8F8F008F8F8F007A7A7A007A7A
      7A0004040400040404009A9A9A00CFCFCF00DADADA00DADADA00CFCFCF00BABA
      BA00040404007A7A7A008F8F8F009A9A9A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004F4F4F004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00AFAFAF008484840084848400CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9A9A009A9A9A008F8F8F008F8F8F007A7A7A007A7A7A00040404000404
      04009A9A9A00CFCFCF00DADADA00DADADA00DADADA00DADADA00DADADA00BABA
      BA00BABABA00040404007A7A7A008F8F8F009A9A9A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCFCF00C4C4C400AFAF
      AF00848484008484840084848400CFCFCF00E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009A9A
      9A008F8F8F008F8F8F007A7A7A007A7A7A0004040400040404009A9A9A00CFCF
      CF00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00CFCF
      CF00BABABA00BABABA00040404007A7A7A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F00040404008484840084848400848484008F8F
      8F008F8F8F00AFAFAF00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007A7A7A007A7A7A0004040400040404009A9A9A00CFCFCF00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00BABABA00BABABA00BABABA00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF004F8F4F00045A0400046F
      0400046F040004640400246F24007AAF7A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F0004040400AFAFAF00AFAFAF00C4C4C400CFCF
      CF00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400040404009A9A9A00CFCFCF00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00CFCFCF00BABABA00BABABA007A7A7A000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF002F7A2F00046F0400049A04000FBA0F000FBA
      0F000FBA0F000FBA0F00049A0400048F0400246F240000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      04009A9A9A00CFCFCF00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00BABABA00BABABA00BABABA000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF000F7A0F00049A0400049A0400048F0400049A0400049A
      040004CF040004CF040004CF040004CF0400049A040004640400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404009A9A
      9A00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00CFCFCF00BABABA00BABABA007A7A7A0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF000464040004640400247A2400649A64007AAF7A007AAF7A004F8F
      4F0004640400049A040004CF040004CF040004CF0400049A0400649A64000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00BABABA00BABABA00BABABA0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E4000F7A0F001A7A1A008FAF8F00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00247A2400049A040004E4040004E4040004E40400046F04000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00CFCFCF00BABABA00BABABA007A7A7A00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E4005A8F4400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400046F040004CF040004EF040004EF0400049A04000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400BABABA008484840084848400BABABA00E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00BABABA00BABABA00BABABA00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400449A
      4400046F0400049A0400049A040004CF040004EF040004EF040004CF0400049A
      0400049A0400048F04000F7A0F00000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400BABABA004F4F4F000404040004040400040404000404040004040400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00CFCFCF00BABABA00BABABA007A7A7A000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E4002F9A2F00049A04000FFA0F000FFA0F000FFA0F000FFA0F000FFA0F000FFA
      0F000FE40F000F9A0F0000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400BABA
      BA004F4F4F004F4F4F00040404002F2F2F00BABABA00BABABA007A7A7A000404
      0400E4E4E4000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00E4E4E400FAFAFA00FAFAFA00BABABA00BABABA00BABABA000404
      0400000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400046404002F7A2F00E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4002F9A2F001ABA1A004FFA4F004FFA4F004FFA4F004FFA4F003AEF
      3A000F9A0F000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400C4C4C4006F6F
      6F004F4F4F008484840004040400E4E4E400E4E4E400BABABA00049A9A00049A
      9A00040404000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4
      E400FAFAFA00FAFAFA00DADADA00C4C4C400FAFAFA00BABABA00BABABA007A7A
      7A00040404000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000F7A0F00049A0400048F04002F7A2F00E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E4002FA42F002FBA2F008FFA8F008FFA8F006FEF6F001AA4
      1A00000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400848484006F6F
      6F0084848400BABABA0004040400EFEFEF00E4E4E400049A9A0004BABA0004BA
      BA0004BABA000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFA
      FA00DADADA00C4C4C400C4C4C400C4C4C400C4C4C400FAFAFA00BABABA00BABA
      BA00040404000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E4000F7A0F00049A040004CF040004CF0400048F04002F7A2F00E4E4E400E4E4
      E400E4E4E400E4E4E400040404002FAF2F0044C44400A4EFA4001AA41A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4006F6F6F006F6F
      6F00BABABA00E4E4E40004040400EFEFEF0044FAFA0004DADA0004DADA00049A
      9A0004BABA0004BABA0004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFAFA00DADADA00C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400FAFAFA00BABA
      BA007A7A7A000404040000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000F7A
      0F000FBA0F0004CF040004CF040004CF040004CF0400048F04002F7A2F00E4E4
      E400E4E4E400E4E4E40004040400000000002FBA3A000FAF1A00000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400646464008484
      8400E4E4E400E4E4E400E4E4E4000404040004DADA00AFFAFA0004DADA0004DA
      DA00046F6F00049A9A00049A9A00040404000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00E4E4E400FAFAFA00FAFAFA00DADADA00C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400FAFA
      FA00BABABA000404040000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000F7A0F0004CF
      040004E4040004E4040004E4040004E4040004E4040004E40400049A04002F7A
      2F00E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E40064646400BABA
      BA00E4E4E400E4E4E400E4E4E400E4E4E4000404040004DADA00AFFAFA0004DA
      DA0004BABA00046F6F00044F2F00044F2F000404040000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4
      E400FAFAFA00FAFAFA00DADADA00C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADA
      DA00FAFAFA000404040000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000F7A0F00048F0400048F
      0400048F040004CF040004EF040004EF04000FBA0F00048F0400048F0400046F
      04004F9A4F000404040000000000000000000000000000000000000000000000
      0000FAFAFA00000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4007A7A7A00BABA
      BA00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004DADA0004DA
      DA00046F6F00044F2F00049A6400046F4F00046F4F0004040400000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFA
      FA00DADADA00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFA
      FA0004040400000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400049A040004EF040004EF040004E404000F7A0F00E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000002F9A
      2F0084BA8400FAFAFA000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4009A9A9A007A7A
      7A00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004BA
      BA00044F2F0004BA7A00049A6400049A640004DA8F0004DA8F00040404000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFAFA00C4C4C4009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFAFA00040404000404
      040000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400048F04001AFA1A001AFA1A001AFA1A000FBA0F002F9A2F00E4E4
      E40004040400000000000000000000000000FAFAFA009AC49A001A8F1A000F9A
      0F00000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4009A9A
      9A00BABABA00E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000404
      0400044F2F0004BA7A0004BA7A0004DA8F000404FA0004049A0004049A000404
      040000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00E4E4E400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400DADADA00FAFAFA00FAFAFA000404040004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E40064BA64002FBA2F005AFA5A005AFA5A005AFA5A003ACF3A00049A
      04004FAF4F007AC47A007AC47A005ABA5A001AA41A00049A0400048F04000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400C4C4C400C4C4C400E4E4E400E4E4E400E4E4E40004040400000000000000
      00000404040004BA7A008FFACF002424FA000404FA000404FA0004049A006F6F
      FA0004040400000000000000000000000000000000000000000004040400E4E4
      E400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADA
      DA00FAFAFA00FAFAFA0004040400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E4000F9A0F005ADA5A009AFA9A009AFA9A009AFA9A009AFA
      9A007AE47A005ACF5A004FCF4F006FDA6F004FCF4F001AA41A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040000000000000000000000
      000000000000040404008FFACF006F6FFA002424FA006F6FFA006F6FFA004444
      FA004444FA00040404000000000000000000000000000000000004040400FAFA
      FA00C4C4C4009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFA
      FA00040404000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFEFCF0024AF240044C44400BAEFBA00CFEFCF00CFEF
      CF00CFEFCF00CFEFCF008FE48F002FBA2F002FAF2F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040000000000000000000000
      00000000000000000000040404004444FA006F6FFA008F8FFA002424FA002424
      FA002424FA000404040000000000000000000000000000000000000000000404
      0400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFAFA00040404000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4007ACF840024BA2F0024BA2F003AC4
      4F003AC44F000FAF1A004FC45A009ADA9A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      0000000000000000000000000000040404008F8FFA006F6FFA004444FA002424
      FA000404FA000404040000000000000000000000000000000000000000000000
      00000404040004040400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A
      9A00C4C4C400DADADA00FAFAFA00FAFAFA000404040004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400040404000000000000000000000000000000
      000000000000000000000000000000000000040404006F6FFA004444FA000404
      FA00040404000000000000000000000000000000000000000000000000000000
      000000000000000000000404040004040400FAFAFA00FAFAFA00C4C4C4009A9A
      9A00FAFAFA00FAFAFA0004040400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040400040404000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000404040004040400FAFAFA00FAFA
      FA00040404000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000C00000000100010000000000000C00000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000000000000000000000
      E0000003000000000000000000000000E0000001000000000000000000000000
      8000000000000000000000000000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000000000000000000000000000080000000000000000000000000000000
      80000000000000000000000000000000C0000000000000000000000000000000
      C0000000000000000000000000000000C0000000000000000000000000000000
      C0000000000000000000000000000000C0000000000000000000000000000000
      C0000000000000000000000000000000C0000000000000000000000000000000
      C0000000000000000000000000000000C0000000000000000000000000000000
      C0000000000000000000000000000000C0000000000000000000000000000000
      C0000000000000000000000000000000C0000000000000000000000000000000
      C0000000000000000000000000000000C0000000000000000000000000000000
      C0000000000000000000000000000000C0000000000000000000000000000000
      C0000000000000000000000000000000C0000000000000000000000000000000
      C0000000000000000000000000000000E0000000000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFF
      FFFFFE7FFFFFC0FFFFF9FFFFFFF9FFFFFFFFF03FFFFF007FFFC0FFFFFFC0FFFF
      FFFFC01FFFFC003FFF007FFFFF007FFFFFFF000FFFE0001FFC003FFFFC003FFF
      FFF80007FF80000FF0001FFFF0001FFFFFE00003FE000007E0000FFFE0000FFF
      FF800001F0000003F00007FFF00007FFFC000000C0000003FC0003FFFC0003FF
      F000000080000007FF0001FFFF0001FFE00000010000000FFF0000FFFF0000FF
      C00000038000000FFF00007FFF00007FE0000003F000000FFE00003FFE00000F
      FC000003E000001FFE00003FFE000003F8000007E000001FFC00007FFC000001
      F8000007C000003FFC00007FFC000001F000000FC000003FF80000FFF8000001
      F000000F8000007FF80000FFF8000001E000001F8000007FF00001FFF0000001
      E000001F0000007FF00001FFF0000001C000073F0000003FE00003FFE0000001
      C0000FFF0000003FE00003FFE0000001C0000FFF0000003FC00007FFC0000001
      C0019FFFC000001FC00007FFC0000001F001FFFFF008001FE0000FFFE0000009
      FC03FFFFFC18001FF8000FFFF8000001FF07FFFFFF18001FFE001FFFFE000001
      FFC7FFFFFFF8007FFF801FFFFF800001FFFFFFFFFFF801FFFFE03FFFFFE00001
      FFFFFFFFFFFC07FFFFF83FFFFFF80003FFFFFFFFFFFF1FFFFFFE7FFFFFFE600F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFF
      FFF9FFFFFF03CFFFFFF9FFFFFFF9FFFFFFC0FFFFFC0187FFFFC0FFFFFFC0FFFF
      FF007FFFF00083FFFF007FFFFF007FFFFC003FFFC00001FFFC003FFFFC003FFF
      F0001FFF800000FFF0001FFFF0001FFFE0000FFFC000007FE0000FFFE0000FFF
      F00007FFF000003FF00007FFF00007FFFC0003FFFC00001FFC0003FFFC00033F
      FF0001FFFC00000FFF0001FFFF00001FFF0000FFFC000007FF0000FFFF00000F
      FF00007FF8000003FF00007FFF00000FFE00003FF8000003FE00003FFE00001F
      FE00003FF0000007FE00003FFE00003FFC00007FF0000007FC00007FFC00003F
      FC00007FE0000007FC00003FFC00001FF800003FE000000FF800001FF800000F
      F800001FC000001FF800000FF800000FF000000FC000001FF0000007F000000F
      F00000078000003FF0000107F000011FE000000F8000001FE0000387E00003FF
      E000001F0000000FE00003CFE00003FFC000003F00000007C00007FFC00007FF
      C000007F80000087C00007FFC00007FFE00000FFE00000CFE0000FFFE0000FFF
      F80001FFF80001FFF8000FFFF8000FFFFE0013FFFE0001FFFE001FFFFE001FFF
      FF8017FFFF8003FFFF801FFFFF801FFFFFE03FFFFFE0C3FFFFE03FFFFFE03FFF
      FFF83FFFFFF9E7FFFFF83FFFFFF83FFFFFFE7FFFFFFFFFFFFFFE7FFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFE7FFFF
      FFF9FFFFFFF9FFFFFF03FFFFFF03FFFFFFC0FFFFFFC0FFFFFC01FFFFFC01FFFF
      FF007FFFFF007FFFF000FFFFF000FFFFFC003FFFFC003FFFC0007FFFC0007FFF
      F0001FFFF0001FFF80003FFF80003FFFE0000FFFE0000FFFC0001FFFC0001FFF
      F00007FFF0000001F0000FFFF0000FFFFC0003FFFC000001FC0007FFFC0007FF
      FF0001FFFF000001FC0003FFFC0003FFFF0000FFFF000001FC0001FFFC0001FF
      FF00007FFF000001F80000FFF80000FFFE00003FFE000001F80000FFF80000FF
      FE00003FFE000001F0000001F0000001FC00007FFC000001F0000000F0000000
      FC00007FFC000001E0000000E0000000F80000FFF8000001E0000000E0000000
      F80000FFF8000001C0000000C0000000F00001FFF0000001C0000000C0000000
      F00001FFF00000018000000080000000E00003FFE00000018000000080000000
      E00003FFE00000010000000000000000C00007FFC00000010000000000000000
      C00007FFC00000018000000180000001E0000FFFE0000001E0003FFFE0003FFF
      F8000FFFF8000001F8007FFFF8007FFFFE001FFFFE000001FE007FFFFE007FFF
      FF801FFFFF801FFFFF80FFFFFF80FFFFFFE03FFFFFE03FFFFFE0FFFFFFE0FFFF
      FFF83FFFFFF83FFFFFF9FFFFFFF9FFFFFFFE7FFFFFFE7FFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF9FFFFFFFFFFFFFFF9FFFFFFF9FFFFFFC0FFFF800001FFFFC0FFFFFFC0FFFF
      FF007FFF000000FFFF007FFFFF007FFFFC003FFF0000007FFC003FFFFC003FFF
      F0001FFF0000003FF0001FFFF0001FFFE0000FFF8000000FE0000FFFE0000FFF
      F00007FFC0000007F00007FFF00007FFFC0003FFE0000003FC0003FFFC0003FF
      FF0001FFF0000003FF0001FFFF0001FFFF0000FFF8000003FF0000FFFF0000FF
      FF00007FFC000003FF00007FFF00007FFE00003FFE000003FE00003FFE00003F
      FE00003FFE000001FE00003FFE00003FFC00003FFE000001FC00003FFC00003F
      FC00001FFF000000FC00000FFC00003FF800000FFF800000F800000FF800003F
      F8000007FF800000F8000007F800003FF0000007FF800000F0000007F0000027
      F0000007FF8007FFF0000003F0000001E0000007FF8007FFE0000003E0000001
      E0000007FF8007FFE0000003E0000001C000000FFF8007FFC0000003C0000001
      C000001FFF800FFFC0000003C0000007E000003FFF801FFFE0000007E000003F
      F8000FFFFF803FFFF8000007F800003FFE001FFFFFFFFFFFFE00000FFE00003F
      FF801FFFFFFFFFFFFF80001FFF80003FFFE03FFFFFFFFFFFFFE0007FFFE03FFF
      FFF83FFFFFFFFFFFFFF83FFFFFF83FFFFFFE7FFFFFFFFFFFFFFE7FFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFF
      FFF9FFFFFFE7FFFFFFFC0FFFFFF9FFFFFFC0FFFFFF03FFFFFFF007FFFFC0FFFF
      FF007FFFFC01FFFFFFC003FFFF007FFFFC003FFFF000FFFFFF0001FFFC003FFF
      F0001FFFC0007FFFFC0000FFF0001FFFE0000FFF80003FFFF000007FE0000FFF
      F00007FFC0001FFFE00000FFF00007FFFC0003FFF0000FFFF00000FFFC0000FF
      FF0001FFFC0007FFF000007FFF00007FFF0000FFFC0003FFE000007FFF00003F
      FF00007FFC0001FFC000003FFF00001FFE00003FF80000FFC000003FFE00001F
      FE00003FF80000FFC000001FFE00001FFC00007FF00001FFC000001FFC000001
      FC00007FF00001FFC000000FFC000003F80000FFE00003FFC000000FF8000007
      F80000FFE00003FFC0000007F800000FF00001FFC00003FFC0000007F000001F
      F00001FFC00001FFC0000003F000013FE00003FF800000FFC0000003E00003FF
      E00003FF8000007FC0000003E00003F7C00007FF0000003FC0000007C00007E3
      C00007FF0000001FC000000FC000070FE0000FFF8000200FC000003FE000001F
      F8000FFFE0003007C00000FFF800003FFE001FFFF8007803C00003FFFE00007F
      FF801FFFFE007C03E0000FFFFF8000FFFFE03FFFFF80FE03F0003FFFFFE000FF
      FFF83FFFFFE0FF07FC00FFFFFFF83FFFFFFE7FFFFFF9FF8FFF03FFFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_CONFIDENCIAL')
    object consultaCONS_PERSONAL: TIntegerField
      DisplayLabel = 'No. Personal'
      FieldName = 'CONS_PERSONAL'
    end
    object consultaCODI_PERSONAL: TStringField
      DisplayLabel = 'C�digo'
      FieldName = 'CODI_PERSONAL'
      Size = 12
    end
    object consultaPRIM_APELLIDO: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'PRIM_APELLIDO'
      Size = 30
    end
    object consultaSEGU_APELLIDO: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'SEGU_APELLIDO'
      Size = 30
    end
    object consultaNOMBRES: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'NOMBRES'
      Size = 40
    end
    object consultaNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombre Completo'
      FieldName = 'NOMB_COMPLETO'
      Size = 102
    end
    object consultaNUME_CONTRATO: TStringField
      DisplayLabel = 'N�mero Contrato'
      FieldName = 'NUME_CONTRATO'
    end
    object consultaAUXI_TRANSPORTE: TFloatField
      DisplayLabel = 'Aux. Transporte'
      FieldName = 'AUXI_TRANSPORTE'
    end
    object consultaAUXI_SALARIAL: TFloatField
      DisplayLabel = 'Aux. Salarial'
      FieldName = 'AUXI_SALARIAL'
    end
    object consultaCONS_PERS_CARGO: TIntegerField
      FieldName = 'CONS_PERS_CARGO'
    end
    object consultaCODI_PERS_CARGO: TStringField
      DisplayLabel = 'C�d. Cargo'
      FieldName = 'CODI_PERS_CARGO'
      Size = 12
    end
    object consultaNOMB_PERS_CARGO: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'NOMB_PERS_CARGO'
      Size = 60
    end
    object consultaCONS_PERS_NIVE_SALARIAL: TIntegerField
      FieldName = 'CONS_PERS_NIVE_SALARIAL'
    end
    object consultaCODI_PERS_NIVE_SALARIAL: TStringField
      DisplayLabel = 'C�d. Nivel Salarial'
      FieldName = 'CODI_PERS_NIVE_SALARIAL'
      Size = 12
    end
    object consultaVALO_NIVE_SALARIAL: TIntegerField
      DisplayLabel = 'Nivel Salarial'
      FieldName = 'VALO_NIVE_SALARIAL'
      DisplayFormat = '$ ,0'
    end
    object consultaCONS_PERS_TIPO_CONTRATO: TIntegerField
      FieldName = 'CONS_PERS_TIPO_CONTRATO'
    end
    object consultaCODI_PERS_TIPO_CONTRATO: TStringField
      DisplayLabel = 'C�d. Tipo Contrato'
      FieldName = 'CODI_PERS_TIPO_CONTRATO'
      Size = 12
    end
    object consultaNOMB_PERS_TIPO_CONTRATO: TStringField
      DisplayLabel = 'Tipo Contrato'
      FieldName = 'NOMB_PERS_TIPO_CONTRATO'
      Size = 60
    end
    object consultaCONS_PERI_PAGO: TIntegerField
      FieldName = 'CONS_PERI_PAGO'
    end
    object consultaCODI_PERI_PAGO: TStringField
      DisplayLabel = 'C�d. Per. Pago'
      FieldName = 'CODI_PERI_PAGO'
      Size = 12
    end
    object consultaNOMB_PERI_PAGO: TStringField
      DisplayLabel = 'Per�odo de Pago'
      FieldName = 'NOMB_PERI_PAGO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creaci�n'
      FieldName = 'FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creaci�n'
      FieldName = 'USUA_SISTEMA'
    end
  end
  inherited padr_popu_vist_actual: TTBXPopupMenu
    Left = 130
    Top = 25
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_COMPLETO'
    NombreAMostrar = 'Personal (Datos Confidenciales)'
    CamposDeBusqueda = 'CONS_PERSONAL'
    TipoGenero = geEl
    TablaMaestra = 'GLO_PERS_MOVI_CONFIDENCIAL'
    Left = 98
    Top = 26
  end
  object TTemporal: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CONS_PERSONAL'
        DataType = ftInteger
      end
      item
        Name = 'CODI_PERSONAL'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'PRIM_APELLIDO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SEGU_APELLIDO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NOMBRES'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NOMB_COMPLETO'
        DataType = ftString
        Size = 102
      end
      item
        Name = 'NUME_CONTRATO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AUXI_TRANSPORTE'
        DataType = ftFloat
      end
      item
        Name = 'AUXI_SALARIAL'
        DataType = ftFloat
      end
      item
        Name = 'CONS_PERS_CARGO'
        DataType = ftInteger
      end
      item
        Name = 'CODI_PERS_CARGO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'NOMB_PERS_CARGO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CONS_PERS_NIVE_SALARIAL'
        DataType = ftInteger
      end
      item
        Name = 'CODI_PERS_NIVE_SALARIAL'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'VALO_NIVE_SALARIAL'
        DataType = ftInteger
      end
      item
        Name = 'CONS_PERS_TIPO_CONTRATO'
        DataType = ftInteger
      end
      item
        Name = 'CODI_PERS_TIPO_CONTRATO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'NOMB_PERS_TIPO_CONTRATO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CONS_PERI_PAGO'
        DataType = ftInteger
      end
      item
        Name = 'CODI_PERI_PAGO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'NOMB_PERI_PAGO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'FECH_SISTEMA'
        DataType = ftDate
      end
      item
        Name = 'USUA_SISTEMA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CHEQUEADO'
        DataType = ftInteger
      end>
    BeforePost = TTemporalBeforePost
    Left = 704
    Top = 172
    object TTemporalCONS_PERSONAL: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERSONAL'
    end
    object TTemporalCODI_PERSONAL: TStringField
      DisplayLabel = 'C�digo'
      FieldName = 'CODI_PERSONAL'
      Size = 12
    end
    object TTemporalPRIM_APELLIDO: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'PRIM_APELLIDO'
      Size = 30
    end
    object TTemporalSEGU_APELLIDO: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'SEGU_APELLIDO'
      Size = 30
    end
    object TTemporalNOMBRES: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'NOMBRES'
      Size = 40
    end
    object TTemporalNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombre Completo'
      FieldName = 'NOMB_COMPLETO'
      Size = 102
    end
    object TTemporalNUME_CONTRATO: TStringField
      DisplayLabel = 'N�mero de Contrato'
      FieldName = 'NUME_CONTRATO'
    end
    object TTemporalAUXI_TRANSPORTE: TFloatField
      DisplayLabel = 'Auxilio de Transporte'
      FieldName = 'AUXI_TRANSPORTE'
    end
    object TTemporalAUXI_SALARIAL: TFloatField
      DisplayLabel = 'Auxilio Salarial'
      FieldName = 'AUXI_SALARIAL'
    end
    object TTemporalCONS_PERS_CARGO: TIntegerField
      DisplayLabel = 'No. Cargo'
      FieldName = 'CONS_PERS_CARGO'
    end
    object TTemporalCODI_PERS_CARGO: TStringField
      DisplayLabel = 'C�d. Cargo'
      FieldName = 'CODI_PERS_CARGO'
      Size = 12
    end
    object TTemporalNOMB_PERS_CARGO: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'NOMB_PERS_CARGO'
      Size = 60
    end
    object TTemporalCONS_PERS_NIVE_SALARIAL: TIntegerField
      DisplayLabel = 'No. Nivel salarial'
      FieldName = 'CONS_PERS_NIVE_SALARIAL'
    end
    object TTemporalCODI_PERS_NIVE_SALARIAL: TStringField
      DisplayLabel = 'C�d. Nivel Salarial'
      FieldName = 'CODI_PERS_NIVE_SALARIAL'
      Size = 12
    end
    object TTemporalVALO_NIVE_SALARIAL: TIntegerField
      DisplayLabel = 'Nivel Salarial'
      FieldName = 'VALO_NIVE_SALARIAL'
    end
    object TTemporalCONS_PERS_TIPO_CONTRATO: TIntegerField
      DisplayLabel = 'No. Tipo de Contrato'
      FieldName = 'CONS_PERS_TIPO_CONTRATO'
    end
    object TTemporalCODI_PERS_TIPO_CONTRATO: TStringField
      DisplayLabel = 'C�d. Tipo de Contrato'
      FieldName = 'CODI_PERS_TIPO_CONTRATO'
      Size = 12
    end
    object TTemporalNOMB_PERS_TIPO_CONTRATO: TStringField
      DisplayLabel = 'Tipo de Contrato'
      FieldName = 'NOMB_PERS_TIPO_CONTRATO'
      Size = 60
    end
    object TTemporalCONS_PERI_PAGO: TIntegerField
      DisplayLabel = 'No. Per�odo de Pago'
      FieldName = 'CONS_PERI_PAGO'
    end
    object TTemporalCODI_PERI_PAGO: TStringField
      DisplayLabel = 'C�d. Per�odo de Pago'
      FieldName = 'CODI_PERI_PAGO'
      Size = 12
    end
    object TTemporalNOMB_PERI_PAGO: TStringField
      DisplayLabel = 'Per�odo de Pago'
      FieldName = 'NOMB_PERI_PAGO'
      Size = 60
    end
    object TTemporalFECH_SISTEMA: TDateField
      DisplayLabel = 'Fecha Creaci�n'
      FieldName = 'FECH_SISTEMA'
    end
    object TTemporalUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creaci�n'
      FieldName = 'USUA_SISTEMA'
    end
    object TTemporalCHEQUEADO: TIntegerField
      DisplayLabel = ' '
      FieldName = 'CHEQUEADO'
    end
  end
  object DSTemporal: TDataSource
    DataSet = TTemporal
    Left = 736
    Top = 172
  end
  object TCargos: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_PERS_CARGOS'
    Left = 704
    Top = 32
  end
  object TTipo_Contrato: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_PERS_TIPO_CONTRATO'
    Left = 704
    Top = 60
  end
  object TNivel_Salarial: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_PERS_NIVE_SALARIALES'
    Left = 704
    Top = 88
  end
  object TPeriodo_Pago: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'SIS_PERI_PAGO'
    Left = 704
    Top = 116
  end
  object TTipo_Documento: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_TIPO_DOCUMENTO'
    Left = 704
    Top = 144
  end
  object DSTipo_Documento: TDataSource
    AutoEdit = False
    DataSet = TTipo_Documento
    Left = 736
    Top = 144
  end
  object DSPeriodo_Pago: TDataSource
    AutoEdit = False
    DataSet = TPeriodo_Pago
    Left = 736
    Top = 116
  end
  object DSNivel_Salarial: TDataSource
    AutoEdit = False
    DataSet = TNivel_Salarial
    Left = 736
    Top = 88
  end
  object DSTipo_Contrato: TDataSource
    AutoEdit = False
    DataSet = TTipo_Contrato
    Left = 736
    Top = 60
  end
  object DSCargos: TDataSource
    AutoEdit = False
    DataSet = TCargos
    Left = 736
    Top = 32
  end
  object SPModificacion: TStoredProc
    DatabaseName = 'data_base_pcp'
    StoredProcName = 'PRO_GLO_PERS_MODI_CONFIDENCIAL'
    Left = 705
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PE_CONS_TIPO_DOCUMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_NUME_DOCUMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PE_FECH_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PE_FECH_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_OBSERVACIONES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERSONAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERS_CARGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERS_TIPO_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERI_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERS_NIVE_SALARIAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_NUME_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_AUXI_TRANSPORTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_AUXI_SALARIAL'
        ParamType = ptInput
      end>
  end
end
