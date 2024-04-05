inherited cn1_cont_nove_efic_grupo: Tcn1_cont_nove_efic_grupo
  Left = -101
  Top = 36
  Height = 612
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 584
  end
  inherited padr_pane_1: TPanel
    Height = 542
    inherited padr_pagina: TdxPageControl
      Height = 532
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          TabOrder = 1
          Filter.Criteria = {00000000}
        end
        inherited padr_dock_arriba: TTBXDock
          inherited padr_barra: TTBXToolbar
            inherited pane_zoom: TPanel
              inherited edit_zoom: TdxButtonEdit
                StoredValues = 4
                ExistButtons = True
              end
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          TabOrder = 3
        end
        inherited padr_pane_sepa_1: TPanel
          TabOrder = 4
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 225
          Height = 283
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 261
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Top = 225
          Height = 283
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 261
              inherited padr_prio_impresion: TdxTreeList
                Height = 35
              end
            end
          end
        end
        inherited padr_pane_vist_previa: TPCPFrame
          Tag = 326
          Left = 36
          Top = 225
          Width = 683
          Height = 283
          Align = alClient
          TabOrder = 7
          TabStop = True
          inherited padr_preview: TRLPreview
            Width = 677
            Height = 277
            inherited padr_Reporte: TRLReport
              DataSource = data_ventana2
              Margins.LeftMargin = 15
              inherited padr_repo_band_header: TRLBand
                Height = 130
                inherited padr_repo_pane_header: TRLPanel
                  Height = 42
                end
                object repo_pane_filtro: TRLPanel
                  Left = 0
                  Top = 42
                  Width = 721
                  Height = 21
                  Align = faTop
                  Alignment = taJustify
                  object RLLabel1: TRLLabel
                    Left = 8
                    Top = 4
                    Width = 35
                    Height = 14
                    Caption = 'Planta:'
                  end
                  object RLLabel2: TRLLabel
                    Left = 257
                    Top = 4
                    Width = 32
                    Height = 14
                    Caption = 'Línea:'
                  end
                  object RLLabel4: TRLLabel
                    Left = 492
                    Top = 4
                    Width = 45
                    Height = 14
                    Caption = 'Sección:'
                  end
                  object labe_planta: TRLLabel
                    Left = 63
                    Top = 2
                    Width = 180
                    Height = 18
                    AutoSize = False
                    Borders.Sides = sdCustom
                    Borders.DrawLeft = True
                    Borders.DrawTop = True
                    Borders.DrawRight = True
                    Borders.DrawBottom = True
                    Caption = ' '
                  end
                  object labe_linea: TRLLabel
                    Left = 293
                    Top = 1
                    Width = 180
                    Height = 18
                    AutoSize = False
                    Borders.Sides = sdCustom
                    Borders.DrawLeft = True
                    Borders.DrawTop = True
                    Borders.DrawRight = True
                    Borders.DrawBottom = True
                    Caption = ' '
                  end
                  object labe_seccion: TRLLabel
                    Left = 540
                    Top = 2
                    Width = 180
                    Height = 18
                    AutoSize = False
                    Borders.Sides = sdCustom
                    Borders.DrawLeft = True
                    Borders.DrawTop = True
                    Borders.DrawRight = True
                    Borders.DrawBottom = True
                    Caption = ' '
                  end
                end
                object pane_periodo: TRLPanel
                  Left = 0
                  Top = 63
                  Width = 721
                  Height = 29
                  Align = faTop
                  object RLLabel6: TRLLabel
                    Left = 478
                    Top = 4
                    Width = 59
                    Height = 14
                    Caption = 'Período del:'
                  end
                  object labe_fech_inicial: TRLLabel
                    Left = 540
                    Top = 2
                    Width = 78
                    Height = 18
                    AutoSize = False
                    Borders.Sides = sdCustom
                    Borders.DrawLeft = True
                    Borders.DrawTop = True
                    Borders.DrawRight = True
                    Borders.DrawBottom = True
                  end
                  object labe_fech_Final: TRLLabel
                    Left = 636
                    Top = 2
                    Width = 84
                    Height = 18
                    AutoSize = False
                    Borders.Sides = sdCustom
                    Borders.DrawLeft = True
                    Borders.DrawTop = True
                    Borders.DrawRight = True
                    Borders.DrawBottom = True
                  end
                  object RLLabel8: TRLLabel
                    Left = 621
                    Top = 4
                    Width = 14
                    Height = 14
                    Caption = 'al:'
                  end
                  object pane_operarios: TRLPanel
                    Left = 0
                    Top = 0
                    Width = 313
                    Height = 21
                    object RLLabel5: TRLLabel
                      Left = 7
                      Top = 4
                      Width = 54
                      Height = 14
                      Caption = 'Operarios:'
                    end
                    object labe_cuenta: TRLLabel
                      Left = 63
                      Top = 2
                      Width = 41
                      Height = 18
                      AutoSize = False
                      Borders.Sides = sdCustom
                      Borders.DrawLeft = True
                      Borders.DrawTop = True
                      Borders.DrawRight = True
                      Borders.DrawBottom = True
                    end
                  end
                end
                object pane_titulos: TRLPanel
                  Left = 0
                  Top = 92
                  Width = 721
                  Height = 38
                  Align = faTop
                  Borders.Sides = sdCustom
                  Borders.DrawLeft = False
                  Borders.DrawTop = True
                  Borders.DrawRight = False
                  Borders.DrawBottom = True
                  Borders.FixedBottom = True
                  object RLLabel10: TRLLabel
                    Left = 98
                    Top = 4
                    Width = 33
                    Height = 14
                    Caption = 'Fecha'
                  end
                  object RLMemo1: TRLMemo
                    Left = 208
                    Top = 4
                    Width = 57
                    Height = 30
                    AutoSize = False
                    Lines.Strings = (
                      'En '
                      'estándar')
                  end
                  object RLMemo2: TRLMemo
                    Left = 272
                    Top = 4
                    Width = 57
                    Height = 30
                    AutoSize = False
                    Lines.Strings = (
                      'Ajuste al mínimo')
                  end
                  object RLMemo3: TRLMemo
                    Left = 336
                    Top = 4
                    Width = 57
                    Height = 30
                    AutoSize = False
                    Lines.Strings = (
                      'NO'
                      'estándar')
                  end
                  object RLMemo4: TRLMemo
                    Left = 400
                    Top = 4
                    Width = 57
                    Height = 30
                    AutoSize = False
                    Lines.Strings = (
                      'Ajuste al mínimo')
                  end
                  object RLMemo5: TRLMemo
                    Left = 464
                    Top = 4
                    Width = 57
                    Height = 30
                    AutoSize = False
                    Lines.Strings = (
                      'Horas extras')
                  end
                  object RLMemo6: TRLMemo
                    Left = 528
                    Top = 4
                    Width = 57
                    Height = 30
                    AutoSize = False
                    Lines.Strings = (
                      'Bono H/Extras')
                  end
                  object RLMemo7: TRLMemo
                    Left = 592
                    Top = 4
                    Width = 57
                    Height = 30
                    AutoSize = False
                    Lines.Strings = (
                      'Promedio eficiencia')
                  end
                  object RLMemo8: TRLMemo
                    Left = 656
                    Top = 4
                    Width = 57
                    Height = 30
                    AutoSize = False
                    Lines.Strings = (
                      'Ajuste al mínimo')
                  end
                end
              end
              inherited padr_repo_band_footer: TRLBand
                Top = 237
              end
              object RLGroup1: TRLGroup
                Left = 57
                Top = 168
                Width = 721
                Height = 69
                DataFields = 'CONS_PERSONAL'
                object RLBand1: TRLBand
                  Left = 0
                  Top = 0
                  Width = 721
                  Height = 20
                  BandType = btHeader
                  Color = 14408667
                  ParentColor = False
                  Transparent = False
                  object RLDBText1: TRLDBText
                    Left = 5
                    Top = 4
                    Width = 81
                    Height = 14
                    AutoSize = False
                    DataField = 'CODI_PERSONAL'
                    DataSource = data_ventana2
                    Transparent = False
                  end
                  object RLDBText2: TRLDBText
                    Left = 96
                    Top = 4
                    Width = 220
                    Height = 14
                    AutoSize = False
                    DataField = 'NOMB_COMPLETO'
                    DataSource = data_ventana2
                    Transparent = False
                  end
                end
                object RLBand2: TRLBand
                  Left = 0
                  Top = 20
                  Width = 721
                  Height = 19
                  object RLDBText3: TRLDBText
                    Left = 97
                    Top = 3
                    Width = 96
                    Height = 14
                    AutoSize = False
                    DataField = 'FECHA'
                    DataSource = data_ventana2
                    DisplayMask = 'dd/mm/yyyy'
                  end
                  object RLDBText4: TRLDBText
                    Left = 209
                    Top = 3
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'EFIC_ESTANDAR'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00 %'
                  end
                  object RLDBText5: TRLDBText
                    Left = 273
                    Top = 3
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'VALO_AJUS_MINI_ESTANDAR'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00'
                  end
                  object RLDBText6: TRLDBText
                    Left = 337
                    Top = 3
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'EFIC_NO_ESTANDAR'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00 %'
                  end
                  object RLDBText7: TRLDBText
                    Left = 401
                    Top = 3
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'VALO_AJUS_MINI_NO_ESTANDA'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00'
                  end
                  object RLDBText8: TRLDBText
                    Left = 465
                    Top = 3
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'TIEM_EXTR_TOTAL'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00'
                  end
                  object RLDBText9: TRLDBText
                    Left = 529
                    Top = 3
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'VALO_BONO_EXTR_TOTAL'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00'
                  end
                  object RLDBText10: TRLDBText
                    Left = 593
                    Top = 3
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'EFIC_TOTAL'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00 %'
                  end
                  object RLDBText11: TRLDBText
                    Left = 657
                    Top = 3
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'VALO_AJUS_MINI_TOTAL'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00'
                  end
                end
                object RLBand3: TRLBand
                  Left = 0
                  Top = 39
                  Width = 721
                  Height = 23
                  BandType = btSummary
                  object RLDBResult1: TRLDBResult
                    Left = 209
                    Top = 5
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'EFIC_ESTANDAR'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00 %'
                    Info = riAverage
                  end
                  object RLDraw1: TRLDraw
                    Left = 207
                    Top = 0
                    Width = 512
                    Height = 6
                    DrawKind = dkLine
                  end
                  object RLDBResult2: TRLDBResult
                    Left = 273
                    Top = 5
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'VALO_AJUS_MINI_ESTANDAR'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00'
                    Info = riSum
                  end
                  object RLDBResult3: TRLDBResult
                    Left = 337
                    Top = 5
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'EFIC_NO_ESTANDAR'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00 %'
                    Info = riAverage
                  end
                  object RLDBResult4: TRLDBResult
                    Left = 401
                    Top = 5
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'VALO_AJUS_MINI_NO_ESTANDA'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00'
                    Info = riSum
                  end
                  object RLDBResult5: TRLDBResult
                    Left = 465
                    Top = 5
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'TIEM_EXTR_TOTAL'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00'
                    Info = riSum
                  end
                  object RLDBResult6: TRLDBResult
                    Left = 529
                    Top = 5
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'VALO_BONO_EXTR_TOTAL'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00'
                    Info = riSum
                  end
                  object RLDBResult7: TRLDBResult
                    Left = 593
                    Top = 5
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'EFIC_TOTAL'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00 %'
                    Info = riAverage
                  end
                  object RLDBResult8: TRLDBResult
                    Left = 657
                    Top = 5
                    Width = 56
                    Height = 14
                    Alignment = taRightJustify
                    AutoSize = False
                    DataField = 'VALO_AJUS_MINI_TOTAL'
                    DataSource = data_ventana2
                    DisplayMask = ',0.00'
                    Info = riAverage
                  end
                end
              end
            end
          end
        end
        object pane_filtros: TPCPFrame
          Tag = 173
          Left = 0
          Top = 52
          Width = 755
          Height = 173
          Align = alTop
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
          object SCLShape1: TSCLShape
            Left = 119
            Top = 49
            Width = 192
            Height = 22
            Brush.Style = bsClear
            Pen.Color = 14467501
          end
          object SCLDBLabel1: TSCLDBLabel
            Left = 16
            Top = 29
            Width = 100
            Height = 21
            Alive = False
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha inicial:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel2: TSCLDBLabel
            Left = 280
            Top = 29
            Width = 100
            Height = 21
            Alive = False
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha final:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel3: TSCLDBLabel
            Left = 16
            Top = 53
            Width = 100
            Height = 21
            Alive = False
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = []
            FocusOffset = 2
            Position = wlpLeft
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Tiempo en:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object edit_fech_inicial: TdxDateEdit
            Left = 119
            Top = 29
            Width = 121
            TabOrder = 0
            StyleController = padr_estilo
            OnChange = doActualizarConsulta
            Date = -700000
          end
          object edit_fech_final: TdxDateEdit
            Left = 383
            Top = 29
            Width = 121
            TabOrder = 3
            StyleController = padr_estilo
            OnChange = doActualizarConsulta
            Date = -700000
          end
          inline fram_ubicacion: Tffra_maqu_ubicacion
            Left = 26
            Top = 76
            Height = 87
            TabOrder = 5
            inherited pane_tipo_ubicacion: TPanel
              inherited SCLDBLabel33: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
              inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
                OnChange = fram_ubicacioncomb_tipo_ubicacionChange
              end
            end
            inherited pane_ubic_propia: TPanel
              inherited SCLDBLabel34: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
              inherited SCLDBLabel35: TSCLDBLabel
                FontActive.Name = 'Tahoma'
                Enabled = False
                Visible = False
              end
              inherited comb_ubic_empresa: TPCPLookUpComboEdit
                OnChange = doActualizarConsulta
              end
              inherited comb_ubic_area: TPCPLookUpComboEdit
                Enabled = False
                Visible = False
              end
              inherited SCLButton7: TTBXButton
                Visible = False
              end
            end
            inherited pane_ubic_externa: TPanel
              inherited SCLDBLabel36: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
              inherited SCLDBLabel37: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
              inherited SCLDBLabel1: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
              inherited comb_ubic_planta: TPCPLookUpComboEdit
                OnChange = doActualizarConsulta
              end
              inherited comb_ubic_seccion: TPCPLookUpComboEdit
                OnChange = doActualizarConsulta
              end
              inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
                OnChange = doActualizarConsulta
              end
            end
            inherited pane_ubic_bodega: TPanel
              inherited SCLDBLabel39: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
              inherited comb_ubic_bodega: TPCPLookUpComboEdit
                OnChange = doActualizarConsulta
              end
            end
            inherited pane_ubic_otra: TPanel
              inherited SCLDBLabel38: TSCLDBLabel
                FontActive.Name = 'Tahoma'
              end
            end
          end
          object chec_horas: TRadioButton
            Left = 124
            Top = 53
            Width = 73
            Height = 17
            Caption = 'Horas'
            Checked = True
            TabOrder = 1
            TabStop = True
            OnClick = doActualizarConsulta
          end
          object chec_minutos: TRadioButton
            Left = 223
            Top = 52
            Width = 81
            Height = 17
            Caption = 'Minutos'
            TabOrder = 2
            OnClick = doActualizarConsulta
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 542
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Consulta de eficiencias por operario'
      Caption = 'Consulta de eficiencias por operario'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Height = 542
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
  inherited padr_dock_bottom: TTBXDock
    Top = 575
  end
  inherited padr_dock_right: TTBXDock
    Height = 542
  end
  inherited data_ventana: TDataSource
    DataSet = nil
    Left = 924
    Top = 106
  end
  inherited consulta: TQuery
    BeforeOpen = consultaBeforeOpen
    DatabaseName = 'PCPLOCAL'
    Left = 896
    Top = 106
    object consultaFECHA: TDateTimeField
      FieldName = 'FECHA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".FECHA'
    end
    object consultaCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PERSONAL'
    end
    object consultaCODI_PERSONAL: TStringField
      FieldName = 'CODI_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CODI_PERSONAL'
      Size = 12
    end
    object consultaNOMB_COMPLETO: TStringField
      FieldName = 'NOMB_COMPLETO'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_COMPLETO'
      Size = 102
    end
    object consultaCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_EMPRESA'
    end
    object consultaNOMB_EMPRESA: TStringField
      FieldName = 'NOMB_EMPRESA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_EMPRESA'
      Size = 60
    end
    object consultaCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PLANTA'
    end
    object consultaNOMB_PLANTA: TStringField
      FieldName = 'NOMB_PLANTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_PLANTA'
      Size = 60
    end
    object consultaCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PLAN_LINEA'
    end
    object consultaNOMB_PLAN_LINEA: TStringField
      FieldName = 'NOMB_PLAN_LINEA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_PLAN_LINEA'
      Size = 60
    end
    object consultaCONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_LINE_SECCION'
    end
    object consultaNOMB_LINE_SECCION: TStringField
      FieldName = 'NOMB_LINE_SECCION'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_LINE_SECCION'
      Size = 60
    end
    object consultaREPORTA: TIntegerField
      FieldName = 'REPORTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".REPORTA'
    end
    object consultaTIEM_TRAB_ESTANDAR: TFloatField
      FieldName = 'TIEM_TRAB_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_ESTANDAR'
    end
    object consultaTIEM_TRAB_NO_ESTANDAR: TFloatField
      FieldName = 'TIEM_TRAB_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_NO_ESTANDAR'
    end
    object consultaTIEM_TRAB_TOTAL: TFloatField
      FieldName = 'TIEM_TRAB_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_TOTAL'
    end
    object consultaTIEM_PROD_ESTANDAR: TFloatField
      FieldName = 'TIEM_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_ESTANDAR'
    end
    object consultaTIEM_PROD_NO_ESTANDAR: TFloatField
      FieldName = 'TIEM_PROD_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_NO_ESTANDAR'
    end
    object consultaTIEM_PROD_TOTAL: TFloatField
      FieldName = 'TIEM_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_TOTAL'
    end
    object consultaEFIC_ESTANDAR: TFloatField
      FieldName = 'EFIC_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".EFIC_ESTANDAR'
    end
    object consultaEFIC_NO_ESTANDAR: TFloatField
      FieldName = 'EFIC_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".EFIC_NO_ESTANDAR'
    end
    object consultaEFIC_TOTAL: TFloatField
      FieldName = 'EFIC_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".EFIC_TOTAL'
    end
    object consultaVALO_GANA_PROD_ESTANDAR: TFloatField
      FieldName = 'VALO_GANA_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_GANA_PROD_ESTANDAR'
    end
    object consultaVALO_GANA_PROD_NO_ESTANDA: TFloatField
      FieldName = 'VALO_GANA_PROD_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_GANA_PROD_NO_ESTANDA'
    end
    object consultaVALO_GANA_PROD_TOTAL: TFloatField
      FieldName = 'VALO_GANA_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_GANA_PROD_TOTAL'
    end
    object consultaVALO_AJUS_MINI_ESTANDAR: TFloatField
      FieldName = 'VALO_AJUS_MINI_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_ESTANDAR'
    end
    object consultaVALO_AJUS_MINI_NO_ESTANDA: TFloatField
      FieldName = 'VALO_AJUS_MINI_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_NO_ESTANDA'
    end
    object consultaVALO_AJUS_MINI_TOTAL: TFloatField
      FieldName = 'VALO_AJUS_MINI_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_TOTAL'
    end
    object consultaVALO_BONO_PROD_ESTANDAR: TFloatField
      FieldName = 'VALO_BONO_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_PROD_ESTANDAR'
    end
    object consultaVALO_BONO_PROD_NO_ESTANDA: TFloatField
      FieldName = 'VALO_BONO_PROD_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_PROD_NO_ESTANDA'
    end
    object consultaVALO_BONO_PROD_TOTAL: TFloatField
      FieldName = 'VALO_BONO_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_PROD_TOTAL'
    end
    object consultaTIEM_EXTR_ESTANDAR: TFloatField
      FieldName = 'TIEM_EXTR_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_EXTR_ESTANDAR'
    end
    object consultaTIEM_EXTR_NO_ESTANDAR: TFloatField
      FieldName = 'TIEM_EXTR_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_EXTR_NO_ESTANDAR'
    end
    object consultaTIEM_EXTR_TOTAL: TFloatField
      FieldName = 'TIEM_EXTR_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_EXTR_TOTAL'
    end
    object consultaVALO_BONO_EXTR_ESTANDAR: TFloatField
      FieldName = 'VALO_BONO_EXTR_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_EXTR_ESTANDAR'
    end
    object consultaVALO_BONO_EXTR_NO_ESTANDA: TFloatField
      FieldName = 'VALO_BONO_EXTR_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_EXTR_NO_ESTANDA'
    end
    object consultaVALO_BONO_EXTR_TOTAL: TFloatField
      FieldName = 'VALO_BONO_EXTR_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_EXTR_TOTAL'
    end
    object consultaVALO_DEVE_ESTANDAR: TFloatField
      FieldName = 'VALO_DEVE_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_DEVE_ESTANDAR'
    end
    object consultaVALO_DEVE_NO_ESTANDAR: TFloatField
      FieldName = 'VALO_DEVE_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_DEVE_NO_ESTANDAR'
    end
    object consultaVALO_DEVE_TOTAL: TFloatField
      FieldName = 'VALO_DEVE_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_DEVE_TOTAL'
    end
  end
  object consulta_db: TQuery [33]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_PCP_CONT_REPO_PAGO_BRUTO'
      '(:fech_inicial, :fech_final, :tiem_en_horas)'
      ''
      ' ')
    Left = 32
    Top = 62
    ParamData = <
      item
        DataType = ftDate
        Name = 'fech_inicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fech_final'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'tiem_en_horas'
        ParamType = ptInput
      end>
  end
  object data_ventana2: TDataSource [34]
    DataSet = consulta
    Left = 924
    Top = 134
  end
  object quer_promedios: TQuery [35]
    DatabaseName = 'PCPLOCAL'
    SQL.Strings = (
      'SELECT'
      'CONS_PERSONAL,'
      'SUM(TIEM_TRAB_ESTANDAR) AS TIEM_TRAB_ESTANDAR,'
      'SUM(TIEM_TRAB_NO_ESTANDAR) AS TIEM_TRAB_NO_ESTANDA,'
      'SUM(TIEM_TRAB_TOTAL) AS TIEM_TRAB_TOTAL,'
      'SUM(TIEM_PROD_ESTANDAR) AS TIEM_PROD_ESTANDAR,'
      'SUM(TIEM_PROD_NO_ESTANDAR) AS TIEM_PROD_NO_ESTANDAR,'
      'SUM(TIEM_PROD_TOTAL) AS TIEM_PROD_TOTAL,'
      'SUM(VALO_AJUS_MINI_ESTANDAR) AS VALO_AJUS_MINI_ESTANDAR,'
      'SUM(VALO_AJUS_MINI_NO_ESTANDA) AS VALO_AJUS_MINI_NO_ESTANDA,'
      'SUM(VALO_AJUS_MINI_TOTAL) AS VALO_AJUS_MINI_TOTAL,'
      'SUM(TIEM_EXTR_TOTAL) AS TIEM_EXTR_TOTAL,'
      'SUM(VALO_BONO_EXTR_TOTAL) AS VALO_BONO_EXTR_TOTAL'
      'FROM "TMPRPT_CONT_EFIC_DIARIAS"'
      'GROUP BY CONS_PERSONAL'
      '')
    Left = 895
    Top = 161
    object quer_promediosCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PERSONAL'
    end
    object quer_promediosTIEM_TRAB_ESTANDAR: TFloatField
      FieldName = 'TIEM_TRAB_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_ESTANDAR'
    end
    object quer_promediosTIEM_TRAB_NO_ESTANDA: TFloatField
      FieldName = 'TIEM_TRAB_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_NO_ESTANDAR'
    end
    object quer_promediosTIEM_TRAB_TOTAL: TFloatField
      FieldName = 'TIEM_TRAB_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_TOTAL'
    end
    object quer_promediosTIEM_PROD_ESTANDAR: TFloatField
      FieldName = 'TIEM_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_ESTANDAR'
    end
    object quer_promediosTIEM_PROD_NO_ESTANDAR: TFloatField
      FieldName = 'TIEM_PROD_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_NO_ESTANDAR'
    end
    object quer_promediosTIEM_PROD_TOTAL: TFloatField
      FieldName = 'TIEM_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_TOTAL'
    end
    object quer_promediosVALO_AJUS_MINI_ESTANDAR: TFloatField
      FieldName = 'VALO_AJUS_MINI_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_ESTANDAR'
    end
    object quer_promediosVALO_AJUS_MINI_NO_ESTANDA: TFloatField
      FieldName = 'VALO_AJUS_MINI_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_NO_ESTANDA'
    end
    object quer_promediosVALO_AJUS_MINI_TOTAL: TFloatField
      FieldName = 'VALO_AJUS_MINI_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_TOTAL'
    end
    object quer_promediosTIEM_EXTR_TOTAL: TFloatField
      FieldName = 'TIEM_EXTR_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_EXTR_TOTAL'
    end
    object quer_promediosVALO_BONO_EXTR_TOTAL: TFloatField
      FieldName = 'VALO_BONO_EXTR_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_EXTR_TOTAL'
    end
    object quer_promediosEFIC_ESTANDAR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EFIC_ESTANDAR'
      Calculated = True
    end
    object quer_promediosEFIC_NO_ESTANDAR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EFIC_NO_ESTANDAR'
      Calculated = True
    end
    object quer_promediosEFIC_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EFIC_TOTAL'
      Calculated = True
    end
  end
  object tabl_local: TTable [36]
    DatabaseName = 'PCPLOCAL'
    TableName = 'tmpRpt_cont_efic_diarias'
    Left = 64
    Top = 63
  end
end
