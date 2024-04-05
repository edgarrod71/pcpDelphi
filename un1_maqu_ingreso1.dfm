inherited fn1_maqu_ingreso1: Tfn1_maqu_ingreso1
  Left = 71
  Top = 27
  Width = 718
  Height = 572
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 710
  end
  inherited padr_shap_xp_down: TShape
    Top = 533
    Width = 710
  end
  inherited padr_dock_arriba: TTBXDock
    Top = 1
    Width = 710
  end
  inherited padr_pane_arriba: TPanel
    Top = 273
    Width = 710
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 275
    Width = 710
    inherited padr_beve_1: TBevel
      Width = 727
    end
    inherited padr_sepa_new: TShape
      Width = 704
    end
  end
  inherited padr_pane_info: TPanel
    Top = 544
    Width = 710
    inherited _LFecha_Creacion: TSCLDBLabel
      Left = 626
      Top = 463
      Visible = False
    end
    inherited _LUsuario: TSCLDBLabel
      Left = 664
      Top = 485
      Visible = False
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Left = 728
      Top = 463
      Visible = False
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Left = 766
      Top = 485
      Visible = False
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      Left = 304
      Top = -42
      Height = 94
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object pagina: TSCLPageControl [6]
    Left = 0
    Top = 282
    Width = 710
    Height = 251
    ActivePage = PCRecurso
    Align = alClient
    BoldCurrentTab = True
    Color = 16578290
    FlatColor = 10435335
    Margin = 5
    ParentColor = False
    TabColors.Shadow = 15582631
    TabColors.Unselected = 16578290
    TabIndex = 0
    TabOrder = 6
    Transparent = True
    FixedDimension = 19
    object PCRecurso: TSCLTabSheet
      Color = 16578290
      Caption = 'Recurso'
      object PCPFrame2: TPCPFrame
        Tag = 145
        Left = 0
        Top = 0
        Width = 706
        Height = 145
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
        Caption = 'Datos del Recurso'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        OmitirAnimacion = False
        object SCLDBLabel1: TSCLDBLabel
          Left = 16
          Top = 24
          Width = 89
          Height = 18
          Alive = True
          ColorActive = clBtnFace
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = []
          FocusOffset = 2
          Position = wlpLeft
          FocusControl = DBCodigo_Recurso
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvNone
          BevelOuter = bvNone
          Light = lpLeftTop
          Caption = 'Código recurso:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CODI_RECURSO'
          Field = 'CODI_RECURSO'
        end
        object SCLDBLabel2: TSCLDBLabel
          Left = 325
          Top = 24
          Width = 89
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
          FocusControl = DBCodigo_Interno
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvNone
          BevelOuter = bvNone
          Light = lpLeftTop
          Caption = 'Código interno:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CODI_INTE_RECURSO'
          Field = 'CODI_INTE_RECURSO'
        end
        object SCLDBLabel3: TSCLDBLabel
          Left = 16
          Top = 44
          Width = 89
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
          FocusControl = CBGrupo_Recurso
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvNone
          Light = lpLeftTop
          Caption = 'Grupo:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_GRUPO'
          Field = 'CONS_RECU_GRUPO'
        end
        object SCLDBLabel4: TSCLDBLabel
          Left = 325
          Top = 44
          Width = 89
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
          FocusControl = CBTipo_Recurso
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvNone
          Light = lpLeftTop
          Caption = 'Sub - Grupo:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_TIPO'
          Field = 'CONS_RECU_TIPO'
        end
        object SCLDBLabel5: TSCLDBLabel
          Left = 16
          Top = 64
          Width = 89
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
          FocusControl = CBFamilia_Recurso
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvNone
          Light = lpLeftTop
          Caption = 'Familia:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_FAMILIA'
          Field = 'CONS_RECU_FAMILIA'
        end
        object SCLDBLabel6: TSCLDBLabel
          Left = 325
          Top = 64
          Width = 89
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
          FocusControl = CBMarca_Recurso
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvNone
          Light = lpLeftTop
          Caption = 'Marca:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_MARCA'
          Field = 'CONS_RECU_MARCA'
        end
        object SCLDBLabel16: TSCLDBLabel
          Left = 16
          Top = 84
          Width = 89
          Height = 22
          Alive = True
          ColorActive = clBtnFace
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = []
          FocusOffset = 2
          Position = wlpLeft
          FocusControl = DBClase
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvNone
          BevelOuter = bvNone
          Light = lpLeftTop
          Caption = 'Clase:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CLASE'
          Field = 'CLASE'
        end
        object SCLDBLabel7: TSCLDBLabel
          Left = 324
          Top = 84
          Width = 89
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
          FocusControl = DBSerie
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Número de serie:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'NUME_SERIE'
          Field = 'NUME_SERIE'
        end
        object DBCodigo_Recurso: TdxDBEdit
          Left = 107
          Top = 24
          Width = 118
          TabOrder = 1
          CharCase = ecUpperCase
          DataField = 'CODI_RECURSO'
          DataSource = DSRecursos
          StyleController = padr_estilo
        end
        object DBCodigo_Interno: TdxDBEdit
          Left = 416
          Top = 24
          Width = 118
          TabOrder = 2
          CharCase = ecUpperCase
          DataField = 'CODI_INTE_RECURSO'
          DataSource = DSRecursos
          StyleController = padr_estilo
        end
        object CBGrupo_Recurso: TPCPLookUpComboEdit
          Left = 107
          Top = 44
          Width = 185
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_GRUPO'
          DataSource = DSRecursos
          KeyField = 'CONS_RECU_GRUPO'
          ListField = 'NOMB_RECU_GRUPO'
          ListSource = DSQGrupos
          ParentCtl3D = False
          TabOrder = 3
          DirectInput = False
        end
        object CBTipo_Recurso: TPCPLookUpComboEdit
          Left = 416
          Top = 44
          Width = 185
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_TIPO'
          DataSource = DSRecursos
          KeyField = 'CONS_RECU_TIPO'
          ListField = 'NOMB_RECU_TIPO'
          ListSource = DSQTipo_Recurso
          ParentCtl3D = False
          TabOrder = 4
          DirectInput = False
        end
        object CBFamilia_Recurso: TPCPLookUpComboEdit
          Left = 107
          Top = 64
          Width = 185
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_FAMILIA'
          DataSource = DSRecursos
          KeyField = 'CONS_RECU_FAMILIA'
          ListField = 'NOMB_RECU_FAMILIA'
          ListSource = DSQFamilias
          ParentCtl3D = False
          TabOrder = 5
          OnClick = CBFamilia_RecursoClick
          DirectInput = False
        end
        object CBMarca_Recurso: TPCPLookUpComboEdit
          Left = 416
          Top = 64
          Width = 185
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_MARCA'
          DataSource = DSRecursos
          KeyField = 'CONS_RECU_MARCA'
          ListField = 'NOMB_RECU_MARCA'
          ListSource = DSQMarcas
          ParentCtl3D = False
          TabOrder = 6
          DirectInput = False
        end
        object DBClase: TdxDBEdit
          Left = 107
          Top = 84
          Width = 118
          TabOrder = 7
          CharCase = ecUpperCase
          DataField = 'CLASE'
          DataSource = DSRecursos
          StyleController = padr_estilo
        end
        object DBSerie: TdxDBEdit
          Left = 416
          Top = 84
          Width = 185
          TabOrder = 8
          CharCase = ecUpperCase
          DataField = 'NUME_SERIE'
          DataSource = DSRecursos
          StyleController = padr_estilo
        end
      end
    end
    object PCGenerales: TSCLTabSheet
      Color = 16578290
      TabVisible = False
      Caption = 'Datos Técnicos Básicos'
      object PCPFrame7: TPCPFrame
        Tag = 254
        Left = 0
        Top = 0
        Width = 729
        Height = 254
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
        TabOrder = 0
        Caption = 'Datos Técnicos Especiales'
        Titulo_Color = 16244694
        Boton_Visible = False
        TipoFrame = tfGrupo
        OmitirAnimacion = False
        object DBAsignados: TdxDBGrid
          Left = 2
          Top = 21
          Width = 725
          Height = 231
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CODI_TIPO_CARACTERISTICA'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 1
          DataSource = DSCaracteristicas_Asignadas
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          object DBAsignadosCONS_TIPO_CARACTERISTICA: TdxDBGridMaskColumn
            ReadOnly = True
            Visible = False
            Width = 297
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TIPO_CARACTERISTICA'
          end
          object DBAsignadosCODI_TIPO_CARACTERISTICA: TdxDBGridMaskColumn
            ReadOnly = True
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TIPO_CARACTERISTICA'
          end
          object DBAsignadosNOMB_TIPO_CARACTERISTICA: TdxDBGridMaskColumn
            ReadOnly = True
            Sorted = csUp
            Width = 298
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TIPO_CARACTERISTICA'
          end
          object DBAsignadosVALOR: TdxDBGridMaskColumn
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALOR'
          end
        end
      end
    end
    object PCUbicacion: TSCLTabSheet
      Color = 16578290
      Caption = 'Ubicación'
      object PCPFrame6: TPCPFrame
        Tag = 190
        Left = 0
        Top = 0
        Width = 706
        Height = 190
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
        Caption = 'Datos de Ubicación'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        OmitirAnimacion = False
        inline ffra_maqu_ubicacion1: Tffra_maqu_ubicacion
          Left = 2
          Top = 21
          Width = 702
          Height = 167
          Align = alClient
          TabOrder = 1
          inherited pane_tipo_ubicacion: TPanel
            Width = 702
            inherited SCLDBLabel33: TSCLDBLabel
              Left = 16
              Width = 89
              FontActive.Name = 'Tahoma'
              DataSource = DSTraslados
            end
            inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
              Left = 107
              Width = 185
              DataSource = DSTraslados
              OnChange = ffra_maqu_ubicacion1comb_tipo_ubicacionChange
            end
          end
          inherited pane_ubic_propia: TPanel
            Width = 702
            inherited SCLDBLabel34: TSCLDBLabel
              Left = 16
              Width = 89
              FontActive.Name = 'Tahoma'
              DataSource = DSTraslados
            end
            inherited SCLDBLabel35: TSCLDBLabel
              Left = 325
              Width = 89
              Height = 20
              FontActive.Name = 'Tahoma'
              DataSource = DSTraslados
            end
            inherited comb_ubic_empresa: TPCPLookUpComboEdit
              Left = 107
              Width = 185
              DataSource = DSTraslados
            end
            inherited comb_ubic_area: TPCPLookUpComboEdit
              Left = 416
              Width = 185
              Height = 20
              DataSource = DSTraslados
            end
            inherited SCLButton6: TTBXButton
              Left = 297
              Images = Imagenes_Botones_Pequenos
            end
            inherited SCLButton7: TTBXButton
              Left = 608
              Images = Imagenes_Botones_Pequenos
            end
          end
          inherited pane_ubic_externa: TPanel
            Width = 702
            inherited SCLDBLabel36: TSCLDBLabel
              Left = 16
              Width = 89
              FontActive.Name = 'Tahoma'
              DataSource = DSTraslados
            end
            inherited SCLDBLabel37: TSCLDBLabel
              Left = 16
              Width = 89
              FontActive.Name = 'Tahoma'
              DataSource = DSTraslados
            end
            inherited SCLDBLabel1: TSCLDBLabel
              Left = 325
              Top = -1
              Width = 89
              FontActive.Name = 'Tahoma'
              DataSource = DSTraslados
            end
            inherited comb_ubic_planta: TPCPLookUpComboEdit
              Left = 107
              Width = 185
              DataSource = DSTraslados
            end
            inherited comb_ubic_seccion: TPCPLookUpComboEdit
              Left = 107
              Width = 185
              DataSource = DSTraslados
            end
            inherited SCLButton8: TTBXButton
              Left = 297
              Images = Imagenes_Botones_Pequenos
            end
            inherited SCLButton9: TTBXButton
              Left = 297
              Images = Imagenes_Botones_Pequenos
            end
            inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
              Left = 416
              Top = -1
              Width = 185
              DataSource = DSTraslados
            end
            inherited SCLButton1: TTBXButton
              Left = 608
            end
          end
          inherited pane_ubic_bodega: TPanel
            Width = 702
            inherited SCLDBLabel39: TSCLDBLabel
              Left = 16
              Width = 89
              FontActive.Name = 'Tahoma'
              DataSource = DSTraslados
            end
            inherited comb_ubic_bodega: TPCPLookUpComboEdit
              Left = 107
              Width = 185
              DataSource = DSTraslados
            end
            inherited SCLButton10: TTBXButton
              Left = 297
              Images = Imagenes_Botones_Pequenos
            end
          end
          inherited pane_ubic_otra: TPanel
            Width = 702
            inherited SCLDBLabel38: TSCLDBLabel
              Left = 16
              Width = 89
              FontActive.Name = 'Tahoma'
              DataSource = DSTraslados
            end
            inherited edit_ubic_otra_ubicacion: TdxDBEdit
              Left = 107
              Width = 185
              DataSource = DSTraslados
              StyleController = padr_estilo
            end
          end
        end
      end
    end
    object PCExtendido: TSCLTabSheet
      Color = 16578290
      Caption = 'Equipos Extendido'
      object FExtendido: TPCPFrame
        Tag = 108
        Left = 0
        Top = 0
        Width = 706
        Height = 108
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
        Caption = 'General'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        OmitirAnimacion = False
        object SCLDBLabel10: TSCLDBLabel
          Left = 8
          Top = 32
          Width = 123
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
          FocusControl = PCPLookUpComboEdit1
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Accionamiento:'
          Transparent = True
          DataSource = DSExtendido
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_ACCIONAMIENTO'
          Field = 'CONS_ACCIONAMIENTO'
        end
        object SCLDBLabel11: TSCLDBLabel
          Left = 320
          Top = 32
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
          FocusControl = PCPLookUpComboEdit2
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Tipo de Extendido:'
          Transparent = True
          DataSource = DSExtendido
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_TIPO_EXTENDIDO'
          Field = 'CONS_TIPO_EXTENDIDO'
        end
        object SCLDBLabel13: TSCLDBLabel
          Left = 8
          Top = 55
          Width = 123
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
          FocusControl = PCPLookUpComboEdit3
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Presentación Tejido:'
          Transparent = True
          DataSource = DSExtendido
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_PRES_TEJIDO'
          Field = 'CONS_PRES_TEJIDO'
        end
        object SCLDBLabel14: TSCLDBLabel
          Left = 319
          Top = 55
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
          FocusControl = dxDBEdit1
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Ancho (Máximo):'
          Transparent = True
          DataSource = DSExtendido
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'ANCH_MAXIMO'
          Field = 'ANCH_MAXIMO'
        end
        object SCLDBLabel15: TSCLDBLabel
          Left = 519
          Top = 55
          Width = 58
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
          FocusControl = dxDBEdit2
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = '(Mínimo):'
          Transparent = True
          DataSource = DSExtendido
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'ANCH_MINIMO'
          Field = 'ANCH_MINIMO'
        end
        object SCLDBLabel17: TSCLDBLabel
          Left = 8
          Top = 78
          Width = 123
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
          FocusControl = dxDBEdit3
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Velocidad de Extendido:'
          Transparent = True
          DataSource = DSExtendido
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'VELO_EXTENDIDO'
          Field = 'VELO_EXTENDIDO'
        end
        object SCLDBLabel18: TSCLDBLabel
          Left = 256
          Top = 78
          Width = 163
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
          FocusControl = dxDBEdit4
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Altura de Extendido (Máximo):'
          Transparent = True
          DataSource = DSExtendido
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'ALTU_EXTE_MAXIMO'
          Field = 'ALTU_EXTE_MAXIMO'
        end
        object SCLDBLabel19: TSCLDBLabel
          Left = 519
          Top = 78
          Width = 58
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
          FocusControl = dxDBEdit5
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = '(Mínimo):'
          Transparent = True
          DataSource = DSExtendido
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'ALTU_EXTE_MINIMO'
          Field = 'ALTU_EXTE_MINIMO'
        end
        object Label2: TLabel
          Left = 498
          Top = 60
          Width = 22
          Height = 13
          Caption = 'cms.'
        end
        object Label3: TLabel
          Left = 498
          Top = 82
          Width = 22
          Height = 13
          Caption = 'cms.'
        end
        object Label4: TLabel
          Left = 212
          Top = 82
          Width = 36
          Height = 13
          Caption = 'mtr/min'
        end
        object Label5: TLabel
          Left = 656
          Top = 60
          Width = 22
          Height = 13
          Caption = 'cms.'
        end
        object Label6: TLabel
          Left = 656
          Top = 82
          Width = 22
          Height = 13
          Caption = 'cms.'
        end
        object PCPLookUpComboEdit1: TPCPLookUpComboEdit
          Left = 133
          Top = 32
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_ACCIONAMIENTO'
          DataSource = DSExtendido
          KeyField = 'CONS_ACCIONAMIENTO'
          ListField = 'NOMB_ACCIONAMIENTO'
          ListSource = DSQAccionamiento
          TabOrder = 1
          DirectInput = False
        end
        object PCPLookUpComboEdit2: TPCPLookUpComboEdit
          Left = 422
          Top = 32
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_TIPO_EXTENDIDO'
          DataSource = DSExtendido
          KeyField = 'CONS_RECU_TIPO_EXTENDIDO'
          ListField = 'NOMB_RECU_TIPO_EXTENDIDO'
          ListSource = DSQTipo_Extendido
          TabOrder = 2
          DirectInput = False
        end
        object PCPLookUpComboEdit3: TPCPLookUpComboEdit
          Left = 133
          Top = 55
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_PRES_TEJIDO'
          DataSource = DSExtendido
          KeyField = 'CONS_PRES_TEJIDO'
          ListField = 'NOMB_PRES_TEJIDO'
          ListSource = DSQPresentacion_Tejido
          TabOrder = 3
          DirectInput = False
        end
        object dxDBEdit1: TdxDBEdit
          Left = 421
          Top = 55
          Width = 75
          TabOrder = 4
          DataField = 'ANCH_MAXIMO'
          DataSource = DSExtendido
          StyleController = padr_estilo
        end
        object dxDBEdit2: TdxDBEdit
          Left = 579
          Top = 55
          Width = 75
          TabOrder = 5
          DataField = 'ANCH_MINIMO'
          DataSource = DSExtendido
          StyleController = padr_estilo
        end
        object dxDBEdit3: TdxDBEdit
          Left = 133
          Top = 78
          Width = 75
          TabOrder = 6
          DataField = 'VELO_EXTENDIDO'
          DataSource = DSExtendido
          StyleController = padr_estilo
        end
        object dxDBEdit4: TdxDBEdit
          Left = 421
          Top = 78
          Width = 75
          TabOrder = 7
          DataField = 'ALTU_EXTE_MAXIMO'
          DataSource = DSExtendido
          StyleController = padr_estilo
        end
        object dxDBEdit5: TdxDBEdit
          Left = 579
          Top = 78
          Width = 75
          TabOrder = 8
          DataField = 'ALTU_EXTE_MINIMO'
          DataSource = DSExtendido
          StyleController = padr_estilo
        end
      end
    end
    object PCCorte: TSCLTabSheet
      Color = 16578290
      Caption = 'Equipos Corte'
      object PCPFrame5: TPCPFrame
        Tag = 249
        Left = 0
        Top = 0
        Width = 706
        Height = 249
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
        Caption = 'General'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        OmitirAnimacion = False
        object SCLDBLabel20: TSCLDBLabel
          Left = 40
          Top = 32
          Width = 123
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
          FocusControl = PCPLookUpComboEdit4
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Accionamiento:'
          Transparent = True
          DataSource = DSCorte
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_ACCI_CORTE'
          Field = 'CONS_ACCI_CORTE'
        end
        object SCLDBLabel21: TSCLDBLabel
          Left = 295
          Top = 32
          Width = 52
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
          FocusControl = PCPLookUpComboEdit5
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Cuchilla:'
          Transparent = True
          DataSource = DSCorte
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_CUCHILLA'
          Field = 'CONS_CUCHILLA'
        end
        object SCLDBLabel23: TSCLDBLabel
          Left = 8
          Top = 55
          Width = 154
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
          FocusControl = dxDBEdit6
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Velocidad de Corte (Máximo):'
          Transparent = True
          DataSource = DSCorte
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'VELO_MAXI_CORTE'
          Field = 'VELO_MAXI_CORTE'
        end
        object SCLDBLabel24: TSCLDBLabel
          Left = 289
          Top = 55
          Width = 58
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
          FocusControl = dxDBEdit7
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = '(Mínimo):'
          Transparent = True
          DataSource = DSCorte
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'VELO_MINI_CORTE'
          Field = 'VELO_MINI_CORTE'
        end
        object SCLDBLabel26: TSCLDBLabel
          Left = -1
          Top = 78
          Width = 163
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
          FocusControl = dxDBEdit9
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Altura de Corte (Máximo):'
          Transparent = True
          DataSource = DSCorte
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'ALTU_MAX_CORTE'
          Field = 'ALTU_MAX_CORTE'
        end
        object SCLDBLabel27: TSCLDBLabel
          Left = 289
          Top = 78
          Width = 58
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
          FocusControl = dxDBEdit10
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = '(Mínimo):'
          Transparent = True
          DataSource = DSCorte
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'ALTU_MINI_CORTE'
          Field = 'ALTU_MINI_CORTE'
        end
        object Label7: TLabel
          Left = 242
          Top = 60
          Width = 22
          Height = 13
          Caption = 'cms.'
        end
        object Label8: TLabel
          Left = 241
          Top = 82
          Width = 22
          Height = 13
          Caption = 'cms.'
        end
        object Label10: TLabel
          Left = 426
          Top = 60
          Width = 22
          Height = 13
          Caption = 'cms.'
        end
        object Label11: TLabel
          Left = 426
          Top = 82
          Width = 22
          Height = 13
          Caption = 'cms.'
        end
        object SCLDBLabel22: TSCLDBLabel
          Left = 511
          Top = 55
          Width = 65
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
          FocusControl = dxDBEdit11
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = '(Promedio):'
          Transparent = True
          DataSource = DSCorte
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'VELO_PROM_CORTE'
          Field = 'VELO_PROM_CORTE'
        end
        object Label12: TLabel
          Left = 656
          Top = 60
          Width = 22
          Height = 13
          Caption = 'cms.'
        end
        object SCLDBLabel28: TSCLDBLabel
          Left = 472
          Top = 31
          Width = 104
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
          FocusControl = dxDBEdit12
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Dimensión Cuchilla:'
          Transparent = True
          DataSource = DSCorte
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'DIMENSION'
          Field = 'DIMENSION'
        end
        object Label13: TLabel
          Left = 656
          Top = 36
          Width = 22
          Height = 13
          Caption = 'cms.'
        end
        object PCPLookUpComboEdit4: TPCPLookUpComboEdit
          Left = 165
          Top = 32
          Width = 111
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_ACCI_CORTE'
          DataSource = DSCorte
          KeyField = 'CONS_ACCI_CORTE'
          ListField = 'NOMB_ACCI_CORTE'
          ListSource = DSQAccionamiento_Corte
          TabOrder = 1
          DirectInput = False
        end
        object PCPLookUpComboEdit5: TPCPLookUpComboEdit
          Left = 349
          Top = 32
          Width = 111
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_CUCHILLA'
          DataSource = DSCorte
          KeyField = 'CONS_CUCHILLA'
          ListField = 'NOMB_CUCHILLA'
          ListSource = DSQCuchillas
          TabOrder = 2
          DirectInput = False
        end
        object dxDBEdit6: TdxDBEdit
          Left = 164
          Top = 55
          Width = 75
          TabOrder = 4
          DataField = 'VELO_MAXI_CORTE'
          DataSource = DSCorte
          StyleController = padr_estilo
        end
        object dxDBEdit7: TdxDBEdit
          Left = 349
          Top = 55
          Width = 75
          TabOrder = 5
          DataField = 'VELO_MINI_CORTE'
          DataSource = DSCorte
          StyleController = padr_estilo
        end
        object dxDBEdit9: TdxDBEdit
          Left = 164
          Top = 78
          Width = 75
          TabOrder = 7
          DataField = 'ALTU_MAX_CORTE'
          DataSource = DSCorte
          StyleController = padr_estilo
        end
        object dxDBEdit10: TdxDBEdit
          Left = 349
          Top = 78
          Width = 75
          TabOrder = 8
          DataField = 'ALTU_MINI_CORTE'
          DataSource = DSCorte
          StyleController = padr_estilo
        end
        object dxDBEdit11: TdxDBEdit
          Left = 578
          Top = 55
          Width = 75
          TabOrder = 6
          DataField = 'VELO_PROM_CORTE'
          DataSource = DSCorte
          StyleController = padr_estilo
        end
        object dxDBEdit12: TdxDBEdit
          Left = 578
          Top = 31
          Width = 75
          TabOrder = 3
          DataField = 'DIMENSION'
          DataSource = DSCorte
          StyleController = padr_estilo
        end
      end
    end
    object PCFusionado: TSCLTabSheet
      Color = 16578290
      Caption = 'Equipos Fusionado'
      object PCPFrame8: TPCPFrame
        Tag = 137
        Left = 0
        Top = 0
        Width = 706
        Height = 137
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
        Caption = 'General'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        OmitirAnimacion = False
        object SCLDBLabel25: TSCLDBLabel
          Left = 18
          Top = 32
          Width = 123
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
          FocusControl = CBTipo_Fusionado
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Tipo:'
          Transparent = True
          DataSource = DSFusionado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_TIPO_FUSIONADO'
          Field = 'CONS_TIPO_FUSIONADO'
        end
        object SCLDBLabel29: TSCLDBLabel
          Left = 42
          Top = 77
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
          FocusControl = PCPLookUpComboEdit7
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Accionamiento:'
          Transparent = True
          DataSource = DSFusionado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_ACCI_FUSIONADO'
          Field = 'CONS_ACCI_FUSIONADO'
        end
        object SCLDBLabel32: TSCLDBLabel
          Left = 296
          Top = 77
          Width = 87
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
          FocusControl = PCPLookUpComboEdit8
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Sistema Presión:'
          Transparent = True
          DataSource = DSFusionado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_SIST_PRESION'
          Field = 'CONS_SIST_PRESION'
        end
        object SCLDBLabel35: TSCLDBLabel
          Left = 83
          Top = 100
          Width = 58
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
          FocusControl = dxDBEdit13
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Velocidad:'
          Transparent = True
          DataSource = DSFusionado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'VELOCIDAD'
          Field = 'VELOCIDAD'
        end
        object SCLDBLabel36: TSCLDBLabel
          Left = 8
          Top = 54
          Width = 133
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
          FocusControl = dxDBEdit14
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Dimensiones Plato Ancho:'
          Transparent = True
          DataSource = DSFusionado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'DIME_PLAT_ANCHO'
          Field = 'DIME_PLAT_ANCHO'
        end
        object SCLDBLabel37: TSCLDBLabel
          Left = 296
          Top = 54
          Width = 86
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
          FocusControl = dxDBEdit15
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Largo:'
          Transparent = True
          DataSource = DSFusionado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'DIME_PLAT_LARGO'
          Field = 'DIME_PLAT_LARGO'
        end
        object SCLDBLabel38: TSCLDBLabel
          Left = 504
          Top = 54
          Width = 91
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
          FocusControl = dxDBEdit16
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Area de Trabajo:'
          Transparent = True
          DataSource = DSFusionado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'DIME_PLAT_AREA'
          Field = 'DIME_PLAT_AREA'
        end
        object Label14: TLabel
          Left = 461
          Top = 58
          Width = 18
          Height = 13
          Caption = 'cms'
        end
        object Label15: TLabel
          Left = 222
          Top = 58
          Width = 18
          Height = 13
          Caption = 'cms'
        end
        object Label16: TLabel
          Left = 222
          Top = 106
          Width = 36
          Height = 13
          Caption = 'mtr/min'
        end
        object Label17: TLabel
          Left = 674
          Top = 58
          Width = 19
          Height = 13
          Caption = 'cm2'
        end
        object SCLDBLabel39: TSCLDBLabel
          Left = 305
          Top = 31
          Width = 77
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
          FocusControl = DBCantidad_Fusionado
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Cantidad:'
          Transparent = True
          DataSource = DSFusionado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CANTIDAD'
          Field = 'CANTIDAD'
        end
        object CBTipo_Fusionado: TPCPLookUpComboEdit
          Left = 143
          Top = 32
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_TIPO_FUSIONADO'
          DataSource = DSFusionado
          KeyField = 'CONS_TIPO_FUSIONADO'
          ListField = 'NOMB_TIPO_FUSIONADO'
          ListSource = DSQTipo_Fusionado
          TabOrder = 1
          OnChange = CBTipo_FusionadoChange
          DirectInput = False
        end
        object PCPLookUpComboEdit7: TPCPLookUpComboEdit
          Left = 144
          Top = 77
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_ACCI_FUSIONADO'
          DataSource = DSFusionado
          KeyField = 'CONS_ACCI_FUSIONADO'
          ListField = 'NOMB_ACCI_FUSIONADO'
          ListSource = DSQAccionamiento_Fusionado
          TabOrder = 6
          DirectInput = False
        end
        object PCPLookUpComboEdit8: TPCPLookUpComboEdit
          Left = 385
          Top = 77
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_SIST_PRESION'
          DataSource = DSFusionado
          KeyField = 'CONS_SIST_PRESION'
          ListField = 'NOMB_SIST_PRESION'
          ListSource = DSQSistema_Presion
          TabOrder = 7
          DirectInput = False
        end
        object dxDBEdit13: TdxDBEdit
          Left = 143
          Top = 100
          Width = 75
          TabOrder = 8
          DataField = 'VELOCIDAD'
          DataSource = DSFusionado
          StyleController = padr_estilo
        end
        object dxDBEdit14: TdxDBEdit
          Left = 143
          Top = 54
          Width = 75
          TabOrder = 3
          DataField = 'DIME_PLAT_ANCHO'
          DataSource = DSFusionado
          StyleController = padr_estilo
        end
        object dxDBEdit15: TdxDBEdit
          Left = 384
          Top = 54
          Width = 75
          TabOrder = 4
          DataField = 'DIME_PLAT_LARGO'
          DataSource = DSFusionado
          StyleController = padr_estilo
        end
        object dxDBEdit16: TdxDBEdit
          Left = 597
          Top = 54
          Width = 75
          TabOrder = 5
          DataField = 'DIME_PLAT_AREA'
          DataSource = DSFusionado
          StyleController = padr_estilo
        end
        object DBCantidad_Fusionado: TdxDBEdit
          Left = 384
          Top = 31
          Width = 75
          TabOrder = 2
          DataField = 'CANTIDAD'
          DataSource = DSFusionado
          StyleController = padr_estilo
        end
      end
    end
    object PCCostura: TSCLTabSheet
      Color = 16578290
      Caption = 'Equipos Costura'
      object PCPFrame9: TPCPFrame
        Tag = 233
        Left = 0
        Top = 0
        Width = 706
        Height = 233
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
        Caption = 'General'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        OmitirAnimacion = False
        object SCLDBLabel43: TSCLDBLabel
          Left = 16
          Top = 55
          Width = 82
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
          FocusControl = dxDBEdit8
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'No. de Agujas:'
          Transparent = True
          DataSource = DSCostura
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'NUME_AGUJAS'
          Field = 'NUME_AGUJAS'
        end
        object SCLDBLabel44: TSCLDBLabel
          Left = 184
          Top = 55
          Width = 131
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
          FocusControl = dxDBEdit18
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Separación entre Agujas:'
          Transparent = True
          DataSource = DSCostura
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'SEPA_AGUJAS'
          Field = 'SEPA_AGUJAS'
        end
        object SCLDBLabel45: TSCLDBLabel
          Left = 152
          Top = 78
          Width = 163
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
          FocusControl = dxDBEdit19
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Largo Puntada (Máximo):'
          Transparent = True
          DataSource = DSCostura
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'LARG_PUNT_MAXIMO'
          Field = 'LARG_PUNT_MAXIMO'
        end
        object SCLDBLabel46: TSCLDBLabel
          Left = 404
          Top = 78
          Width = 80
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
          FocusControl = dxDBEdit20
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = '(Mínimo):'
          Transparent = True
          DataSource = DSCostura
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'LARG_PUNT_MINIMO'
          Field = 'LARG_PUNT_MINIMO'
        end
        object SCLDBLabel47: TSCLDBLabel
          Left = 404
          Top = 55
          Width = 80
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
          FocusControl = dxDBEdit21
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Altura p/telas:'
          Transparent = True
          DataSource = DSCostura
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'ALTU_PRENSATELAS'
          Field = 'ALTU_PRENSATELAS'
        end
        object Label21: TLabel
          Left = 570
          Top = 60
          Width = 22
          Height = 13
          Caption = 'cms.'
        end
        object SCLDBLabel48: TSCLDBLabel
          Left = 16
          Top = 31
          Width = 82
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
          FocusControl = dxDBEdit22
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Transporte:'
          Transparent = True
          DataSource = DSCostura
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'TRANSPORTE'
          Field = 'TRANSPORTE'
        end
        object SCLDBLabel34: TSCLDBLabel
          Left = 210
          Top = 31
          Width = 104
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
          FocusControl = dxDBEdit23
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Arrastre:'
          Transparent = True
          DataSource = DSCostura
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'ARRASTRE'
          Field = 'ARRASTRE'
        end
        object SCLDBLabel41: TSCLDBLabel
          Left = 404
          Top = 31
          Width = 80
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
          FocusControl = dxDBEdit24
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Ajuste:'
          Transparent = True
          DataSource = DSCostura
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'AJUSTE'
          Field = 'AJUSTE'
        end
        object SCLDBLabel49: TSCLDBLabel
          Left = 152
          Top = 101
          Width = 163
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
          FocusControl = dxDBEdit25
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Ancho de Costura (Máximo):'
          Transparent = True
          DataSource = DSCostura
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'ANCH_COST_MAXIMO'
          Field = 'ANCH_COST_MAXIMO'
        end
        object SCLDBLabel50: TSCLDBLabel
          Left = 404
          Top = 101
          Width = 80
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
          FocusControl = dxDBEdit26
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = '(Mínimo):'
          Transparent = True
          DataSource = DSCostura
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'ANCH_COST_MINIMO'
          Field = 'ANCH_COST_MINIMO'
        end
        object Label1: TLabel
          Left = 179
          Top = 127
          Width = 52
          Height = 13
          Caption = '(m/minuto)'
        end
        object SCLDBLabel58: TSCLDBLabel
          Left = 12
          Top = 147
          Width = 88
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
          FocusControl = CBTipo_Puntada
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Tipo de Puntada:'
          Transparent = True
          DataSource = DSCostura
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_TIPO_PUNTADA'
          Field = 'CONS_RECU_TIPO_PUNTADA'
        end
        object SCLDBLabel8: TSCLDBLabel
          Left = 41
          Top = 124
          Width = 58
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
          FocusControl = DBVelocidad_Corte
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Velocidad:'
          Transparent = True
          DataSource = DSCostura
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'VELOCIDAD'
          Field = 'VELOCIDAD'
        end
        object SCLDBLabel9: TSCLDBLabel
          Left = 250
          Top = 124
          Width = 65
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
          FocusControl = DBRPM
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'R.P.M.'
          Transparent = True
          DataSource = DSCostura
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'RPM'
          Field = 'RPM'
        end
        object dxDBEdit8: TdxDBEdit
          Left = 100
          Top = 55
          Width = 75
          TabOrder = 4
          DataField = 'NUME_AGUJAS'
          DataSource = DSCostura
          StyleController = padr_estilo
        end
        object dxDBEdit18: TdxDBEdit
          Left = 317
          Top = 55
          Width = 75
          TabOrder = 5
          DataField = 'SEPA_AGUJAS'
          DataSource = DSCostura
          StyleController = padr_estilo
        end
        object dxDBEdit19: TdxDBEdit
          Left = 317
          Top = 78
          Width = 75
          TabOrder = 7
          DataField = 'LARG_PUNT_MAXIMO'
          DataSource = DSCostura
          StyleController = padr_estilo
        end
        object dxDBEdit20: TdxDBEdit
          Left = 486
          Top = 78
          Width = 75
          TabOrder = 8
          DataField = 'LARG_PUNT_MINIMO'
          DataSource = DSCostura
          StyleController = padr_estilo
        end
        object dxDBEdit21: TdxDBEdit
          Left = 486
          Top = 55
          Width = 75
          TabOrder = 6
          DataField = 'ALTU_PRENSATELAS'
          DataSource = DSCostura
          StyleController = padr_estilo
        end
        object dxDBEdit22: TdxDBEdit
          Left = 100
          Top = 31
          Width = 75
          TabOrder = 1
          DataField = 'TRANSPORTE'
          DataSource = DSCostura
          StyleController = padr_estilo
        end
        object dxDBEdit23: TdxDBEdit
          Left = 316
          Top = 31
          Width = 75
          TabOrder = 2
          DataField = 'ARRASTRE'
          DataSource = DSCostura
          StyleController = padr_estilo
        end
        object dxDBEdit24: TdxDBEdit
          Left = 486
          Top = 31
          Width = 75
          TabOrder = 3
          DataField = 'AJUSTE'
          DataSource = DSCostura
          StyleController = padr_estilo
        end
        object dxDBEdit25: TdxDBEdit
          Left = 317
          Top = 101
          Width = 75
          TabOrder = 9
          DataField = 'ANCH_COST_MAXIMO'
          DataSource = DSCostura
          StyleController = padr_estilo
        end
        object dxDBEdit26: TdxDBEdit
          Left = 486
          Top = 101
          Width = 75
          TabOrder = 10
          DataField = 'ANCH_COST_MINIMO'
          DataSource = DSCostura
          StyleController = padr_estilo
        end
        object CBTipo_Puntada: TPCPLookUpComboEdit
          Left = 102
          Top = 147
          Width = 111
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_TIPO_PUNTADA'
          DataSource = DSCostura
          KeyField = 'CONS_RECU_TIPO_PUNTADA'
          ListField = 'CODI_RECU_TIPO_PUNTADA'
          ListSource = DSQTipo_Puntada
          ParentCtl3D = False
          TabOrder = 11
          DirectInput = False
        end
        object DBRPM: TdxDBCurrencyEdit
          Left = 317
          Top = 124
          Width = 75
          TabOrder = 12
          Alignment = taRightJustify
          DataField = 'RPM'
          DataSource = DSCostura
          StyleController = padr_estilo
          DisplayFormat = ',0'
          Nullable = False
          StoredValues = 1
        end
        object DBVelocidad_Corte: TdxDBCurrencyEdit
          Left = 101
          Top = 124
          Width = 75
          TabOrder = 13
          Alignment = taRightJustify
          DataField = 'VELOCIDAD'
          DataSource = DSCostura
          StyleController = padr_estilo
          DisplayFormat = ',0'
          Nullable = False
          StoredValues = 1
        end
        object EDBImage1: TEDBImage
          Left = 222
          Top = 147
          Width = 169
          Height = 84
          DataField = 'IMAGEN'
          DataSource = DSQTipo_Puntada
          Enabled = False
          Stretch = True
          TabOrder = 14
          ZoomToFit = False
        end
      end
    end
    object PCPlanchado: TSCLTabSheet
      Color = 16578290
      Caption = 'Equipos Planchado'
      object PCPFrame10: TPCPFrame
        Tag = 131
        Left = 0
        Top = 0
        Width = 706
        Height = 131
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
        Caption = 'General'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        OmitirAnimacion = False
        object SCLDBLabel51: TSCLDBLabel
          Left = 96
          Top = 32
          Width = 65
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
          FocusControl = PCPLookUpComboEdit9
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Tipo:'
          Transparent = True
          DataSource = DSPlanchado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_TIPO_PLANCHADO'
          Field = 'CONS_TIPO_PLANCHADO'
        end
        object SCLDBLabel52: TSCLDBLabel
          Left = 96
          Top = 54
          Width = 65
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
          FocusControl = PCPLookUpComboEdit10
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Sistema:'
          Transparent = True
          DataSource = DSPlanchado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_SIST_PLANCHADO'
          Field = 'CONS_SIST_PLANCHADO'
        end
        object SCLDBLabel53: TSCLDBLabel
          Left = 320
          Top = 54
          Width = 53
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
          FocusControl = dxDBEdit27
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Utilidad:'
          Transparent = True
          DataSource = DSPlanchado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'UTIL_MESA'
          Field = 'UTIL_MESA'
        end
        object SCLDBLabel54: TSCLDBLabel
          Left = 96
          Top = 76
          Width = 65
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
          FocusControl = PCPLookUpComboEdit11
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Tipo:'
          Transparent = True
          DataSource = DSPlanchado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_TIPO_BRAZO'
          Field = 'CONS_TIPO_BRAZO'
        end
        object SCLDBLabel55: TSCLDBLabel
          Left = 320
          Top = 76
          Width = 53
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
          FocusControl = PCPLookUpComboEdit12
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Sistema:'
          Transparent = True
          DataSource = DSPlanchado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_SIST_PLAN_BRAZO'
          Field = 'CONS_SIST_PLAN_BRAZO'
        end
        object SCLDBLabel56: TSCLDBLabel
          Left = 96
          Top = 98
          Width = 65
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
          FocusControl = PCPLookUpComboEdit13
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Tipo:'
          Transparent = True
          DataSource = DSPlanchado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_TIPO_PRENSA'
          Field = 'CONS_TIPO_PRENSA'
        end
        object SCLDBLabel57: TSCLDBLabel
          Left = 320
          Top = 98
          Width = 53
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
          FocusControl = dxDBEdit28
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Utilidad:'
          Transparent = True
          DataSource = DSPlanchado
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'UTIL_PRENSA'
          Field = 'UTIL_PRENSA'
        end
        object dxDBCheckEdit1: TdxDBCheckEdit
          Left = 16
          Top = 32
          Width = 80
          TabOrder = 1
          Caption = 'Plancha:'
          DataField = 'PLANCHA'
          DataSource = DSPlanchado
          StyleController = padr_estilo_chec
          ValueChecked = '1'
          ValueGrayed = '-1'
          ValueUnchecked = '-1'
        end
        object PCPLookUpComboEdit9: TPCPLookUpComboEdit
          Left = 163
          Top = 32
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_TIPO_PLANCHADO'
          DataSource = DSPlanchado
          KeyField = 'CONS_TIPO_PLANCHADO'
          ListField = 'NOMB_TIPO_PLANCHADO'
          ListSource = DSQTipo_Planchado
          TabOrder = 2
          DirectInput = False
        end
        object dxDBCheckEdit2: TdxDBCheckEdit
          Left = 16
          Top = 54
          Width = 80
          TabOrder = 3
          Caption = 'Mesa:'
          DataField = 'MESA'
          DataSource = DSPlanchado
          StyleController = padr_estilo_chec
          ValueChecked = '1'
          ValueGrayed = '-1'
          ValueUnchecked = '-1'
        end
        object PCPLookUpComboEdit10: TPCPLookUpComboEdit
          Left = 163
          Top = 54
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_SIST_PLANCHADO'
          DataSource = DSPlanchado
          KeyField = 'CONS_SIST_PLANCHADO'
          ListField = 'NOMB_SIST_PLANCHADO'
          ListSource = DSQSistema_Planchado
          TabOrder = 4
          DirectInput = False
        end
        object dxDBEdit27: TdxDBEdit
          Left = 375
          Top = 54
          Width = 145
          TabOrder = 5
          DataField = 'UTIL_MESA'
          DataSource = DSPlanchado
          StyleController = padr_estilo
        end
        object dxDBCheckEdit3: TdxDBCheckEdit
          Left = 16
          Top = 76
          Width = 80
          TabOrder = 6
          Caption = 'Brazo:'
          DataField = 'BRAZO'
          DataSource = DSPlanchado
          StyleController = padr_estilo_chec
          ValueChecked = '1'
          ValueGrayed = '-1'
          ValueUnchecked = '-1'
        end
        object PCPLookUpComboEdit11: TPCPLookUpComboEdit
          Left = 163
          Top = 76
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_TIPO_BRAZO'
          DataSource = DSPlanchado
          KeyField = 'CONS_TIPO_BRAZO'
          ListField = 'NOMB_TIPO_BRAZO'
          ListSource = DSQTipo_Brazo
          TabOrder = 7
          DirectInput = False
        end
        object PCPLookUpComboEdit12: TPCPLookUpComboEdit
          Left = 375
          Top = 76
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_SIST_PLAN_BRAZO'
          DataSource = DSPlanchado
          KeyField = 'CONS_SIST_PLANCHADO'
          ListField = 'NOMB_SIST_PLANCHADO'
          ListSource = DSQSistema_Planchado_Brazo
          TabOrder = 8
          DirectInput = False
        end
        object dxDBCheckEdit4: TdxDBCheckEdit
          Left = 16
          Top = 98
          Width = 80
          TabOrder = 9
          Caption = 'Prensa:'
          DataField = 'PRENSA'
          DataSource = DSPlanchado
          StyleController = padr_estilo_chec
          ValueChecked = '1'
          ValueGrayed = '-1'
          ValueUnchecked = '-1'
        end
        object PCPLookUpComboEdit13: TPCPLookUpComboEdit
          Left = 163
          Top = 98
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_TIPO_PRENSA'
          DataSource = DSPlanchado
          KeyField = 'CONS_TIPO_PRENSA'
          ListField = 'NOMB_TIPO_PRENSA'
          ListSource = DSQTipo_Prensa
          TabOrder = 10
          DirectInput = False
        end
        object dxDBEdit28: TdxDBEdit
          Left = 375
          Top = 98
          Width = 145
          TabOrder = 11
          DataField = 'UTIL_PRENSA'
          DataSource = DSPlanchado
          StyleController = padr_estilo
        end
      end
    end
    object PCImagen: TSCLTabSheet
      Color = 16578290
      Caption = 'Imágen'
      object sohoSplitter1: TsohoSplitter
        Left = 363
        Top = 0
        Width = 7
        Height = 228
        Cursor = crHSplit
        UnPackWidth = 100
      end
      object PCPFrame1: TPCPFrame
        Tag = 228
        Left = 0
        Top = 0
        Width = 363
        Height = 228
        Align = alLeft
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
        Caption = 'Imagen del Recurso'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        OmitirAnimacion = False
        inline ffra_fotografiaDB1: Tffra_fotografiaDB
          Left = 2
          Top = 21
          Width = 359
          Height = 205
          Align = alClient
          TabOrder = 1
          inherited fram_pane_atras: TPanel
            Width = 359
            Height = 179
            inherited fram_fotografia: TEDBImage
              Width = 349
              Height = 172
              DataField = 'IMAGEN'
              DataSource = DSRecursos
            end
            inherited fram_pane_stretch: TPanel
              Top = 177
              Width = 349
              inherited fram_chec_ajustar: TdxDBCheckEdit
                DataField = 'AJUS_IMAGEN'
                DataSource = DSRecursos
              end
            end
          end
          inherited TBXDock1: TTBXDock
            Width = 359
          end
        end
      end
      object PCPFrame4: TPCPFrame
        Tag = 228
        Left = 370
        Top = 0
        Width = 336
        Height = 228
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
        Caption = 'Detalle del Recurso'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        OmitirAnimacion = False
        inline ffra_fotografiaDB2: Tffra_fotografiaDB
          Left = 2
          Top = 21
          Width = 332
          Height = 205
          Align = alClient
          TabOrder = 1
          inherited fram_pane_atras: TPanel
            Width = 332
            Height = 179
            inherited fram_fotografia: TEDBImage
              Width = 345
              Height = 172
              DataField = 'DETA_IMAGEN'
              DataSource = DSRecursos
            end
            inherited fram_pane_stretch: TPanel
              Top = 177
              Width = 345
              inherited fram_chec_ajustar: TdxDBCheckEdit
                DataField = 'AJUS_DETA_IMAGEN'
                DataSource = DSRecursos
              end
            end
          end
          inherited TBXDock1: TTBXDock
            Width = 332
          end
        end
      end
    end
  end
  object Panel2: TPanel [7]
    Left = 0
    Top = 43
    Width = 710
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 5
    object Bevel1: TBevel
      Left = 3
      Top = 3
      Width = 704
      Height = 2
      Align = alClient
    end
  end
  object FMovimiento: TPCPFrame [8]
    Tag = 222
    Left = 0
    Top = 51
    Width = 710
    Height = 222
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
    TabOrder = 8
    Titulo_Color = 16244694
    TipoFrame = tfNinguno
    OmitirAnimacion = False
    object SCLDBLabel40: TSCLDBLabel
      Left = 8
      Top = 5
      Width = 97
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
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_TIPO_DOCUMENTO'
      Field = 'CONS_TIPO_DOCUMENTO'
    end
    object SCLDBLabel42: TSCLDBLabel
      Left = 325
      Top = 5
      Width = 89
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
      FocusControl = DBNumero_Documento
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nro. Documento:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NUME_DOCUMENTO'
      Field = 'NUME_DOCUMENTO'
    end
    object SCLDBLabel64: TSCLDBLabel
      Left = 8
      Top = 25
      Width = 97
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
      FocusControl = DBFecha_Inicial
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha movimiento:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_INICIAL'
      Field = 'FECH_INICIAL'
    end
    object SCLDBLabel65: TSCLDBLabel
      Left = 8
      Top = 45
      Width = 97
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
      FocusControl = DBFecha_Final
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha Devolución:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_FINAL'
      Field = 'FECH_FINAL'
    end
    object SCLDBLabel30: TSCLDBLabel
      Left = 16
      Top = 73
      Width = 89
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
      FocusControl = DBSolicitado
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Solicitado por:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_SOLICITA'
      Field = 'CONS_SOLICITA'
    end
    object SCLDBLabel31: TSCLDBLabel
      Left = 8
      Top = 93
      Width = 97
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
      FocusControl = DBEntregado
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Entregado por:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_ENTREGA'
      Field = 'CONS_ENTREGA'
    end
    object SCLDBLabel33: TSCLDBLabel
      Left = 16
      Top = 113
      Width = 89
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
      FocusControl = DBRecibido
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Recibido por:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_RECIBE'
      Field = 'CONS_RECIBE'
    end
    object SCLDBLabel68: TSCLDBLabel
      Left = 8
      Top = 141
      Width = 97
      Height = 68
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
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'OBSERVACIONES'
      Field = 'OBSERVACIONES'
    end
    object CBTipo_Documento: TPCPLookUpComboEdit
      Left = 107
      Top = 5
      Width = 185
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_TIPO_DOCUMENTO'
      DataSource = data_ventana
      KeyField = 'CONS_TIPO_DOCUMENTO'
      ListField = 'NOMB_TIPO_DOCUMENTO'
      ListSource = DSQTipo_Documento_Movimiento
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object DBNumero_Documento: TdxDBEdit
      Left = 416
      Top = 5
      Width = 118
      TabOrder = 2
      DataField = 'NUME_DOCUMENTO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object DBFecha_Inicial: TdxDBDateEdit
      Left = 107
      Top = 25
      Width = 118
      TabOrder = 3
      DataField = 'FECH_INICIAL'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object DBObservaciones: TdxDBMemo
      Left = 107
      Top = 141
      Width = 430
      TabOrder = 9
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 68
    end
    object DBFecha_Final: TdxDBDateEdit
      Left = 107
      Top = 45
      Width = 118
      Enabled = False
      TabOrder = 5
      DataField = 'FECH_FINAL'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object DBSolicitado: TPCPLookUpComboEdit
      Left = 107
      Top = 73
      Width = 310
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_SOLICITA'
      DataSource = data_ventana
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQPersonal
      ParentCtl3D = False
      TabOrder = 6
      DirectInput = False
    end
    object DBEntregado: TPCPLookUpComboEdit
      Left = 107
      Top = 93
      Width = 310
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_ENTREGA'
      DataSource = data_ventana
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQPersonal
      ParentCtl3D = False
      TabOrder = 7
      DirectInput = False
    end
    object DBRecibido: TPCPLookUpComboEdit
      Left = 107
      Top = 113
      Width = 310
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_RECIBE'
      DataSource = data_ventana
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQPersonal
      ParentCtl3D = False
      TabOrder = 8
      DirectInput = False
    end
    object CBPrestamo: TdxDBCheckEdit
      Left = 358
      Top = 25
      Width = 75
      TabOrder = 4
      Alignment = taRightJustify
      Caption = 'Prestamo:'
      DataField = 'PRESTAMO'
      DataSource = DSRecursos
      StyleController = padr_estilo_chec
      ValueChecked = '1'
      ValueGrayed = '-1'
      ValueUnchecked = '-1'
      OnChange = CBPrestamoChange
      StoredValues = 1
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 536
    Width = 710
    inherited padr_beve_abajo: TBevel
      Width = 704
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 534
    Width = 710
    Align = alBottom
    TabOrder = 7
  end
  inherited padr_acciones: TActionList
    Left = 9
    object Acti_Nuev_Caracteristica: TAction
      Category = 'Caracterisitcas'
      Hint = 'Adicionar Características Disponibles'
      ImageIndex = 0
      OnExecute = Acti_Nuev_CaracteristicaExecute
    end
    object Acti_Elim_Caracteristica: TAction
      Category = 'Caracterisitcas'
      Hint = 'Eliminar Características Asignadas'
      ImageIndex = 2
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList
    Left = 777
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 776
    Top = 8
  end
  inherited Tabla_Ventana: TTable
    AutoRefresh = True
    TableName = 'GLO_RECU_MOVIMIENTOS'
    object Tabla_VentanaCONS_RECU_MOVIMIENTO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No. Movimiento'
      FieldName = 'CONS_RECU_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_TIPO_MOVIMIENTO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo Movimiento'
      FieldName = 'CONS_RECU_TIPO_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaCONS_RECURSO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Recurso'
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object Tabla_VentanaCONS_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'CONS_TIPO_DOCUMENTO'
      Required = True
    end
    object Tabla_VentanaNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Nro. Documento'
      FieldName = 'NUME_DOCUMENTO'
    end
    object Tabla_VentanaCONS_SOLICITA: TIntegerField
      DisplayLabel = 'Solicitado por'
      FieldName = 'CONS_SOLICITA'
      Required = True
    end
    object Tabla_VentanaCONS_ENTREGA: TIntegerField
      DisplayLabel = 'Entregado por'
      FieldName = 'CONS_ENTREGA'
    end
    object Tabla_VentanaCONS_RECIBE: TIntegerField
      DisplayLabel = 'Recibido por'
      FieldName = 'CONS_RECIBE'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha movimiento'
      FieldName = 'FECH_INICIAL'
      Required = True
    end
    object Tabla_VentanaFECH_FINAL: TDateTimeField
      DisplayLabel = 'Fecha Devolución'
      FieldName = 'FECH_FINAL'
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object Tabla_VentanaCODI_RECURSO: TStringField
      FieldKind = fkLookup
      FieldName = 'CODI_RECURSO'
      LookupDataSet = TRecursos
      LookupKeyFields = 'CONS_RECURSO'
      LookupResultField = 'CODI_RECURSO'
      KeyFields = 'CONS_RECURSO'
      Size = 12
      Lookup = True
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 746
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 778
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 746
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 778
  end
  inherited imag_pequenas: TImageList
    Left = 747
  end
  inherited padr_pict_container: TPictureContainer
    Left = 746
  end
  object DSQTipo_Documento_Movimiento: TDataSource
    AutoEdit = False
    DataSet = QTipo_Documento_Movimiento
    Left = 556
    Top = 441
  end
  object DSQPersonal: TDataSource
    AutoEdit = False
    DataSet = QPersonal
    Left = 556
    Top = 469
  end
  object DSQGrupos: TDataSource
    AutoEdit = False
    DataSet = QGrupos
    Left = 500
    Top = 414
  end
  object DSQTipo_Recurso: TDataSource
    AutoEdit = False
    DataSet = QTipo_Recurso
    Left = 500
    Top = 442
  end
  object DSQFamilias: TDataSource
    AutoEdit = False
    DataSet = QFamilias
    Left = 500
    Top = 470
  end
  object DSQMarcas: TDataSource
    AutoEdit = False
    DataSet = QMarcas
    Left = 500
    Top = 498
  end
  object DSQTipo_Puntada: TDataSource
    AutoEdit = False
    DataSet = QTipo_Puntada
    Left = 556
    Top = 413
  end
  object TRecursos: TTable
    AutoRefresh = True
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_RECURSO'
    MasterFields = 'CONS_RECURSO'
    MasterSource = data_ventana
    TableName = 'GLO_RECURSOS'
    Left = 584
    Top = 412
    object TRecursosCONS_RECURSO: TIntegerField
      DisplayLabel = 'No. Recurso'
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object TRecursosCODI_RECURSO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECURSO'
      Required = True
      Size = 12
    end
    object TRecursosCODI_INTE_RECURSO: TStringField
      DisplayLabel = 'Código Interno'
      FieldName = 'CODI_INTE_RECURSO'
    end
    object TRecursosCONS_RECU_GRUPO: TIntegerField
      DisplayLabel = 'Grupo de recurso'
      FieldName = 'CONS_RECU_GRUPO'
      Required = True
    end
    object TRecursosCONS_RECU_TIPO: TIntegerField
      DisplayLabel = 'Sub - Grupo'
      FieldName = 'CONS_RECU_TIPO'
      Required = True
    end
    object TRecursosCONS_RECU_FAMILIA: TIntegerField
      DisplayLabel = 'Familia'
      FieldName = 'CONS_RECU_FAMILIA'
      Required = True
    end
    object TRecursosCONS_RECU_MARCA: TIntegerField
      DisplayLabel = 'Marca'
      FieldName = 'CONS_RECU_MARCA'
      Required = True
    end
    object TRecursosCLASE: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'CLASE'
      Size = 60
    end
    object TRecursosNUME_SERIE: TStringField
      DisplayLabel = 'Número Serie'
      FieldName = 'NUME_SERIE'
    end
    object TRecursosPRESTAMO: TIntegerField
      DisplayLabel = 'Prestamo'
      FieldName = 'PRESTAMO'
    end
    object TRecursosIMAGEN: TBlobField
      DisplayLabel = 'Imagen del Recurso'
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object TRecursosAJUS_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar Imagen del Recurso'
      FieldName = 'AJUS_IMAGEN'
    end
    object TRecursosDETA_IMAGEN: TBlobField
      DisplayLabel = 'Detalle del Recurso'
      FieldName = 'DETA_IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object TRecursosAJUS_DETA_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar Detalle del Recurso'
      FieldName = 'AJUS_DETA_IMAGEN'
    end
  end
  object DSRecursos: TDataSource
    DataSet = TRecursos
    OnStateChange = DSRecursosStateChange
    Left = 612
    Top = 412
  end
  object TTraslados: TTable
    AutoRefresh = True
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_RECU_MOVIMIENTO'
    MasterFields = 'CONS_RECU_MOVIMIENTO'
    MasterSource = data_ventana
    TableName = 'GLO_RECU_MOVI_TRASLADOS'
    Left = 584
    Top = 440
    object TTrasladosCONS_RECU_MOVIMIENTO: TIntegerField
      DisplayLabel = 'No. Movimiento'
      FieldName = 'CONS_RECU_MOVIMIENTO'
      Required = True
    end
    object TTrasladosCONS_UBIC_TIPO: TIntegerField
      DisplayLabel = 'Tipo Ubicación'
      FieldName = 'CONS_UBIC_TIPO'
      Required = True
    end
    object TTrasladosCONS_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'CONS_EMPRESA'
      Required = True
    end
    object TTrasladosCONS_AREA: TIntegerField
      DisplayLabel = 'Area'
      FieldName = 'CONS_AREA'
      Required = True
    end
    object TTrasladosCONS_PLANTA: TIntegerField
      DisplayLabel = 'Planta'
      FieldName = 'CONS_PLANTA'
      Required = True
    end
    object TTrasladosCONS_PLAN_LINEA: TIntegerField
      DisplayLabel = 'Línea'
      FieldName = 'CONS_PLAN_LINEA'
      Required = True
    end
    object TTrasladosCONS_LINE_SECCION: TIntegerField
      DisplayLabel = 'Sección'
      FieldName = 'CONS_LINE_SECCION'
      Required = True
    end
    object TTrasladosCONS_BODEGA: TIntegerField
      DisplayLabel = 'Bodega'
      FieldName = 'CONS_BODEGA'
      Required = True
    end
    object TTrasladosOTRA_UBICACION: TStringField
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
  end
  object DSTraslados: TDataSource
    DataSet = TTraslados
    OnStateChange = DSRecursosStateChange
    Left = 612
    Top = 440
  end
  object TRecursos_Temporal: TRxMemoryData
    FieldDefs = <>
    BeforePost = TRecursos_TemporalBeforePost
    Left = 640
    Top = 412
    object TRecursos_TemporalCONS_RECURSO: TIntegerField
      DisplayLabel = 'No. Recurso'
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object TRecursos_TemporalCODI_RECURSO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECURSO'
      Required = True
      Size = 12
    end
    object TRecursos_TemporalCODI_INTE_RECURSO: TStringField
      DisplayLabel = 'Código Interno'
      FieldName = 'CODI_INTE_RECURSO'
    end
    object TRecursos_TemporalCONS_RECU_GRUPO: TIntegerField
      DisplayLabel = 'Grupo de recurso'
      FieldName = 'CONS_RECU_GRUPO'
      Required = True
    end
    object TRecursos_TemporalCONS_RECU_TIPO: TIntegerField
      DisplayLabel = 'Sub - Grupo'
      FieldName = 'CONS_RECU_TIPO'
      Required = True
    end
    object TRecursos_TemporalCONS_RECU_FAMILIA: TIntegerField
      DisplayLabel = 'Familia'
      FieldName = 'CONS_RECU_FAMILIA'
      Required = True
    end
    object TRecursos_TemporalCONS_RECU_MARCA: TIntegerField
      DisplayLabel = 'Marca'
      FieldName = 'CONS_RECU_MARCA'
      Required = True
    end
    object TRecursos_TemporalCLASE: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'CLASE'
      Size = 60
    end
    object TRecursos_TemporalNUME_SERIE: TStringField
      DisplayLabel = 'Número Serie'
      FieldName = 'NUME_SERIE'
    end
    object TRecursos_TemporalPRESTAMO: TIntegerField
      DisplayLabel = 'Prestamo'
      FieldName = 'PRESTAMO'
    end
    object TRecursos_TemporalIMAGEN: TBlobField
      DisplayLabel = 'Imagen'
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object TRecursos_TemporalAJUS_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar Imagen'
      FieldName = 'AJUS_IMAGEN'
    end
    object TRecursos_TemporalDETA_IMAGEN: TBlobField
      DisplayLabel = 'Detalle Imagen'
      FieldName = 'DETA_IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object TRecursos_TemporalAJUS_DETA_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar Detalle Imagen'
      FieldName = 'AJUS_DETA_IMAGEN'
    end
  end
  object TTraslados_Temporal: TRxMemoryData
    FieldDefs = <>
    BeforePost = TTraslados_TemporalBeforePost
    Left = 640
    Top = 440
    object TTraslados_TemporalCONS_UBIC_TIPO: TIntegerField
      DisplayLabel = 'Tipo Ubicación'
      FieldName = 'CONS_UBIC_TIPO'
      Required = True
    end
    object TTraslados_TemporalCONS_EMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'CONS_EMPRESA'
      Required = True
    end
    object TTraslados_TemporalCONS_AREA: TIntegerField
      DisplayLabel = 'Area'
      FieldName = 'CONS_AREA'
      Required = True
    end
    object TTraslados_TemporalCONS_PLANTA: TIntegerField
      DisplayLabel = 'Planta'
      FieldName = 'CONS_PLANTA'
      Required = True
    end
    object TTraslados_TemporalCONS_PLAN_LINEA: TIntegerField
      DisplayLabel = 'Línea'
      FieldName = 'CONS_PLAN_LINEA'
      Required = True
    end
    object TTraslados_TemporalCONS_LINE_SECCION: TIntegerField
      DisplayLabel = 'Sección'
      FieldName = 'CONS_LINE_SECCION'
      Required = True
    end
    object TTraslados_TemporalCONS_BODEGA: TIntegerField
      DisplayLabel = 'Bodega'
      FieldName = 'CONS_BODEGA'
      Required = True
    end
    object TTraslados_TemporalOTRA_UBICACION: TStringField
      DisplayLabel = 'Otra Ubicación'
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
  end
  object DSRecursos_Temporal: TDataSource
    DataSet = TRecursos_Temporal
    Left = 668
    Top = 412
  end
  object DSTraslados_Temporal: TDataSource
    DataSet = TTraslados_Temporal
    Left = 668
    Top = 440
  end
  object QConsecutivo_Recurso: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT SECUENCIA'
      'FROM FUN_GLO_GENE_SECUENCIA("GLO_RECURSOS","CONS_RECURSO")')
    Left = 668
    Top = 468
  end
  object QCaracteristicas_Asignadas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT DISTINCT C.CONS_TIPO_CARACTERISTICA,'
      ' C.CODI_TIPO_CARACTERISTICA, C.NOMB_TIPO_CARACTERISTICA,'
      ' R.CONS_RECU_TIPO_CARACTERISTICA'
      
        'FROM GLO_TIPO_CARACTERISTICAS C, GLO_RECU_TIPO_CARACTERISTICAS T' +
        ','
      '   GLO_RECU_CARACTERISTICAS R'
      'WHERE C.CONS_TIPO_CARACTERISTICA = T.CONS_TIPO_CARACTERISTICA'
      
        ' AND T.CONS_RECU_TIPO_CARACTERISTICA = R.CONS_RECU_TIPO_CARACTER' +
        'ISTICA'
      ' AND R.CONS_RECURSO = :CONS_RECURSO'
      'ORDER BY NOMB_TIPO_CARACTERISTICA')
    Left = 416
    Top = 415
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_RECURSO'
        ParamType = ptUnknown
      end>
    object QCaracteristicas_AsignadasCONS_TIPO_CARACTERISTICA: TIntegerField
      FieldName = 'CONS_TIPO_CARACTERISTICA'
    end
    object QCaracteristicas_AsignadasCODI_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_TIPO_CARACTERISTICA'
      Size = 12
    end
    object QCaracteristicas_AsignadasNOMB_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Tipo de Característica'
      FieldName = 'NOMB_TIPO_CARACTERISTICA'
      Size = 60
    end
    object QCaracteristicas_AsignadasCONS_RECU_TIPO_CARACTERISTICA: TIntegerField
      FieldName = 'CONS_RECU_TIPO_CARACTERISTICA'
      Origin = 
        'DATA_BASE_PCP.GLO_RECU_CARACTERISTICAS.CONS_RECU_TIPO_CARACTERIS' +
        'TICA'
    end
  end
  object DSCaracteristicas_Asignadas: TDataSource
    DataSet = TCaracteristicas_Asignadas
    Left = 444
    Top = 443
  end
  object QEliminar_Caracteristica: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'DELETE FROM GLO_RECU_TIPO_CARACTERISTICAS'
      'WHERE CONS_RECU_TIPO = :CONS_RECU_TIPO'
      ' AND CONS_TIPO_CARACTERISTICA = :CONS_TIPO_CARACTERISTICA')
    Left = 444
    Top = 415
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_RECU_TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_TIPO_CARACTERISTICA'
        ParamType = ptInput
      end>
  end
  object TCaracteristicas_Asignadas: TTable
    BeforePost = TCaracteristicas_AsignadasBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_RECURSO'
    MasterFields = 'CONS_RECURSO'
    MasterSource = DSRecursos
    TableName = 'GLO_RECU_CARACTERISTICAS'
    Left = 416
    Top = 443
    object TCaracteristicas_AsignadasCONS_RECU_CARACTERISTICA: TIntegerField
      FieldName = 'CONS_RECU_CARACTERISTICA'
      Required = True
    end
    object TCaracteristicas_AsignadasCONS_RECURSO: TIntegerField
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object TCaracteristicas_AsignadasCONS_RECU_TIPO_CARACTERISTICA: TIntegerField
      FieldName = 'CONS_RECU_TIPO_CARACTERISTICA'
      Required = True
    end
    object TCaracteristicas_AsignadasVALOR: TStringField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Required = True
      Size = 60
    end
    object TCaracteristicas_AsignadasCODI_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Código'
      FieldKind = fkLookup
      FieldName = 'CODI_TIPO_CARACTERISTICA'
      LookupDataSet = QTipo_Caracteristicas_Tipo
      LookupKeyFields = 'CONS_RECU_TIPO_CARACTERISTICA'
      LookupResultField = 'CODI_TIPO_CARACTERISTICA'
      KeyFields = 'CONS_RECU_TIPO_CARACTERISTICA'
      Size = 12
      Lookup = True
    end
    object TCaracteristicas_AsignadasNOMB_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Tipo de Característica'
      FieldKind = fkLookup
      FieldName = 'NOMB_TIPO_CARACTERISTICA'
      LookupDataSet = QTipo_Caracteristicas_Tipo
      LookupKeyFields = 'CONS_RECU_TIPO_CARACTERISTICA'
      LookupResultField = 'NOMB_TIPO_CARACTERISTICA'
      KeyFields = 'CONS_RECU_TIPO_CARACTERISTICA'
      Size = 60
      Lookup = True
    end
  end
  object TCaracteristicas_Asignadas_Temporal: TRxMemoryData
    FieldDefs = <>
    BeforePost = TCaracteristicas_Asignadas_TemporalBeforePost
    Left = 416
    Top = 471
    object TCaracteristicas_Asignadas_TemporalVALOR: TStringField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Size = 60
    end
    object TCaracteristicas_Asignadas_TemporalCODI_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_TIPO_CARACTERISTICA'
      Size = 12
    end
    object TCaracteristicas_Asignadas_TemporalNOMB_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Tipo de Característica'
      FieldName = 'NOMB_TIPO_CARACTERISTICA'
      Size = 60
    end
  end
  object DSCaracteristicas_Asignadas_Temporal: TDataSource
    DataSet = TCaracteristicas_Asignadas_Temporal
    Left = 444
    Top = 471
  end
  object QTipo_Caracteristicas_Tipo: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQFamilias
    SQL.Strings = (
      'SELECT C.CONS_TIPO_CARACTERISTICA, C.CODI_TIPO_CARACTERISTICA,'
      ' C.NOMB_TIPO_CARACTERISTICA, T.CONS_RECU_TIPO_CARACTERISTICA'
      'FROM GLO_TIPO_CARACTERISTICAS C, GLO_RECU_TIPO_CARACTERISTICAS T'
      'WHERE C.CONS_TIPO_CARACTERISTICA = T.CONS_TIPO_CARACTERISTICA'
      ' AND T.CONS_RECU_FAMILIA = :CONS_RECU_FAMILIA'
      'ORDER BY C.NOMB_TIPO_CARACTERISTICA')
    Left = 612
    Top = 468
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_RECU_FAMILIA'
        ParamType = ptUnknown
      end>
  end
  object QConsecutivo_Caracteristica: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT SECUENCIA'
      
        'FROM FUN_GLO_GENE_SECUENCIA("GLO_RECU_CARACTERISTICAS","CONS_REC' +
        'U_CARACTERISTICA")')
    Left = 444
    Top = 499
  end
  object QGrupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_GRUPOS'
      'ORDER BY NOMB_RECU_GRUPO')
    Left = 472
    Top = 414
  end
  object QTipo_Recurso: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQGrupos
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_TIPOS'
      'WHERE CONS_RECU_GRUPO = :CONS_RECU_GRUPO'
      'ORDER BY NOMB_RECU_TIPO')
    Left = 472
    Top = 442
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_RECU_GRUPO'
        ParamType = ptUnknown
      end>
  end
  object QFamilias: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQTipo_Recurso
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_FAMILIAS'
      'WHERE CONS_RECU_TIPO = :CONS_RECU_TIPO'
      'ORDER BY NOMB_RECU_FAMILIA')
    Left = 472
    Top = 470
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_RECU_TIPO'
        ParamType = ptUnknown
      end>
  end
  object QMarcas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_MARCAS'
      'ORDER BY NOMB_RECU_MARCA')
    Left = 472
    Top = 498
  end
  object QTipo_Puntada: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_TIPO_PUNTADA'
      'ORDER BY CODI_RECU_TIPO_PUNTADA')
    Left = 528
    Top = 413
  end
  object QTipo_Documento_Movimiento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_TIPO_DOCUMENTO'
      'ORDER BY NOMB_TIPO_DOCUMENTO')
    Left = 528
    Top = 441
  end
  object QPersonal: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERSONAL'
      'ORDER BY NOMB_COMPLETO')
    Left = 528
    Top = 469
  end
  object TExtendido: TTable
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_RECURSO'
    MasterFields = 'CONS_RECURSO'
    MasterSource = DSRecursos
    TableName = 'GLO_RECU_EXTENDIDO'
    Left = 349
    Top = 409
    object TExtendidoCONS_RECURSO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object TExtendidoCONS_ACCIONAMIENTO: TIntegerField
      DisplayLabel = 'Accionamiento'
      FieldName = 'CONS_ACCIONAMIENTO'
    end
    object TExtendidoCONS_TIPO_EXTENDIDO: TIntegerField
      DisplayLabel = 'Tipo de Extendido'
      FieldName = 'CONS_TIPO_EXTENDIDO'
    end
    object TExtendidoCONS_PRES_TEJIDO: TIntegerField
      DisplayLabel = 'Presentación Tejido'
      FieldName = 'CONS_PRES_TEJIDO'
    end
    object TExtendidoANCH_MAXIMO: TFloatField
      DisplayLabel = 'Ancho (Máximo)'
      FieldName = 'ANCH_MAXIMO'
    end
    object TExtendidoANCH_MINIMO: TFloatField
      DisplayLabel = 'Ancho (Mínimo)'
      FieldName = 'ANCH_MINIMO'
    end
    object TExtendidoVELO_EXTENDIDO: TFloatField
      DisplayLabel = 'Velocidad de Extendido'
      FieldName = 'VELO_EXTENDIDO'
    end
    object TExtendidoALTU_EXTE_MAXIMO: TFloatField
      DisplayLabel = 'Altura Extendido (Máximo)'
      FieldName = 'ALTU_EXTE_MAXIMO'
    end
    object TExtendidoALTU_EXTE_MINIMO: TFloatField
      DisplayLabel = 'Altura Extendido (Mínimo)'
      FieldName = 'ALTU_EXTE_MINIMO'
    end
  end
  object DSExtendido: TDataSource
    DataSet = TExtendido
    OnStateChange = DSRecursosStateChange
    Left = 377
    Top = 409
  end
  object TExtendido_Temporal: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CONS_ACCIONAMIENTO'
        DataType = ftInteger
      end
      item
        Name = 'CONS_TIPO_EXTENDIDO'
        DataType = ftInteger
      end
      item
        Name = 'CONS_PRES_TEJIDO'
        DataType = ftInteger
      end
      item
        Name = 'ANCH_MAXIMO'
        DataType = ftFloat
      end
      item
        Name = 'ANCH_MINIMO'
        DataType = ftFloat
      end
      item
        Name = 'VELO_EXTENDIDO'
        DataType = ftFloat
      end
      item
        Name = 'ALTU_EXTE_MAXIMO'
        DataType = ftFloat
      end
      item
        Name = 'ALTU_EXTE_MINIMO'
        DataType = ftFloat
      end>
    Left = 349
    Top = 437
    object TExtendido_TemporalCONS_ACCIONAMIENTO: TIntegerField
      DisplayLabel = 'Accionamiento'
      FieldName = 'CONS_ACCIONAMIENTO'
    end
    object TExtendido_TemporalCONS_TIPO_EXTENDIDO: TIntegerField
      DisplayLabel = 'Tipo de Extendido'
      FieldName = 'CONS_TIPO_EXTENDIDO'
    end
    object TExtendido_TemporalCONS_PRES_TEJIDO: TIntegerField
      DisplayLabel = 'Presentación Tejido'
      FieldName = 'CONS_PRES_TEJIDO'
    end
    object TExtendido_TemporalANCH_MAXIMO: TFloatField
      DisplayLabel = 'Ancho (Máximo)'
      FieldName = 'ANCH_MAXIMO'
    end
    object TExtendido_TemporalANCH_MINIMO: TFloatField
      DisplayLabel = 'Ancho (Mínimo)'
      FieldName = 'ANCH_MINIMO'
    end
    object TExtendido_TemporalVELO_EXTENDIDO: TFloatField
      DisplayLabel = 'Velocidad de Extendido'
      FieldName = 'VELO_EXTENDIDO'
    end
    object TExtendido_TemporalALTU_EXTE_MAXIMO: TFloatField
      DisplayLabel = 'Altura Extendido (Máximo)'
      FieldName = 'ALTU_EXTE_MAXIMO'
    end
    object TExtendido_TemporalALTU_EXTE_MINIMO: TFloatField
      DisplayLabel = 'Altura Extendido (Mínimo)'
      FieldName = 'ALTU_EXTE_MINIMO'
    end
  end
  object DSExtendido_Temporal: TDataSource
    DataSet = TExtendido_Temporal
    Left = 377
    Top = 437
  end
  object QAccionamiento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_RECU_ACCIONAMIENTO'
      'ORDER BY NOMB_ACCIONAMIENTO')
    Left = 9
    Top = 414
  end
  object DSQAccionamiento: TDataSource
    AutoEdit = False
    DataSet = QAccionamiento
    Left = 37
    Top = 414
  end
  object DSQTipo_Extendido: TDataSource
    AutoEdit = False
    DataSet = QTipo_Extendido
    Left = 37
    Top = 442
  end
  object QTipo_Extendido: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_RECU_TIPO_EXTENDIDO'
      'ORDER BY NOMB_RECU_TIPO_EXTENDIDO')
    Left = 9
    Top = 442
  end
  object DSQPresentacion_Tejido: TDataSource
    AutoEdit = False
    DataSet = QPresentacion_Tejido
    Left = 37
    Top = 470
  end
  object QPresentacion_Tejido: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_RECU_PRES_TEJIDO'
      'ORDER BY NOMB_PRES_TEJIDO')
    Left = 9
    Top = 470
  end
  object QAccionamiento_Corte: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_RECU_ACCI_CORTE'
      'ORDER BY NOMB_ACCI_CORTE')
    Left = 65
    Top = 414
  end
  object DSQAccionamiento_Corte: TDataSource
    AutoEdit = False
    DataSet = QAccionamiento_Corte
    Left = 93
    Top = 414
  end
  object TCorte: TTable
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_RECURSO'
    MasterFields = 'CONS_RECURSO'
    MasterSource = DSRecursos
    TableName = 'GLO_RECU_CORTE'
    Left = 349
    Top = 465
    object TCorteCONS_RECURSO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object TCorteCONS_ACCI_CORTE: TIntegerField
      DisplayLabel = 'Accionamiento Corte'
      FieldName = 'CONS_ACCI_CORTE'
    end
    object TCorteCONS_CUCHILLA: TIntegerField
      DisplayLabel = 'Cuhilla'
      FieldName = 'CONS_CUCHILLA'
    end
    object TCorteDIMENSION: TFloatField
      DisplayLabel = 'Dimensión Cuchilla'
      FieldName = 'DIMENSION'
    end
    object TCorteVELO_MAXI_CORTE: TFloatField
      DisplayLabel = 'Valocidad de Corte (Máximo)'
      FieldName = 'VELO_MAXI_CORTE'
    end
    object TCorteVELO_MINI_CORTE: TFloatField
      DisplayLabel = 'Valocidad de Corte (Mínimo)'
      FieldName = 'VELO_MINI_CORTE'
    end
    object TCorteVELO_PROM_CORTE: TFloatField
      DisplayLabel = 'Valocidad de Corte (Promedio)'
      FieldName = 'VELO_PROM_CORTE'
    end
    object TCorteALTU_MAX_CORTE: TFloatField
      DisplayLabel = 'Altura de Corte (Máximo)'
      FieldName = 'ALTU_MAX_CORTE'
    end
    object TCorteALTU_MINI_CORTE: TFloatField
      DisplayLabel = 'Altura de Corte (Mínimo)'
      FieldName = 'ALTU_MINI_CORTE'
    end
  end
  object DSCorte: TDataSource
    DataSet = TCorte
    OnStateChange = DSRecursosStateChange
    Left = 377
    Top = 465
  end
  object TCorte_Temporal: TRxMemoryData
    FieldDefs = <>
    Left = 350
    Top = 493
    object TCorte_TemporalCONS_RECURSO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object TCorte_TemporalCONS_ACCI_CORTE: TIntegerField
      DisplayLabel = 'Accionamiento Corte'
      FieldName = 'CONS_ACCI_CORTE'
    end
    object TCorte_TemporalCONS_CUCHILLA: TIntegerField
      DisplayLabel = 'Cuhilla'
      FieldName = 'CONS_CUCHILLA'
    end
    object TCorte_TemporalDIMENSION: TFloatField
      DisplayLabel = 'Dimensión Cuchilla'
      FieldName = 'DIMENSION'
    end
    object TCorte_TemporalVELO_MAXI_CORTE: TFloatField
      DisplayLabel = 'Valocidad de Corte (Máximo)'
      FieldName = 'VELO_MAXI_CORTE'
    end
    object TCorte_TemporalVELO_MINI_CORTE: TFloatField
      DisplayLabel = 'Valocidad de Corte (Mínimo)'
      FieldName = 'VELO_MINI_CORTE'
    end
    object TCorte_TemporalVELO_PROM_CORTE: TFloatField
      DisplayLabel = 'Valocidad de Corte (Promedio)'
      FieldName = 'VELO_PROM_CORTE'
    end
    object TCorte_TemporalALTU_MAX_CORTE: TFloatField
      DisplayLabel = 'Altura de Corte (Máximo)'
      FieldName = 'ALTU_MAX_CORTE'
    end
    object TCorte_TemporalALTU_MINI_CORTE: TFloatField
      DisplayLabel = 'Altura de Corte (Mínimo)'
      FieldName = 'ALTU_MINI_CORTE'
    end
  end
  object DSCorte_Temporal: TDataSource
    DataSet = TCorte_Temporal
    Left = 378
    Top = 493
  end
  object DSQCuchillas: TDataSource
    AutoEdit = False
    DataSet = QCuchillas
    Left = 93
    Top = 442
  end
  object QCuchillas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_RECU_CUCHILLA'
      'ORDER BY NOMB_CUCHILLA')
    Left = 65
    Top = 442
  end
  object TFusionado: TTable
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_RECURSO'
    MasterFields = 'CONS_RECURSO'
    MasterSource = DSRecursos
    TableName = 'GLO_RECU_FUSIONADO'
    Left = 293
    Top = 410
    object TFusionadoCONS_RECURSO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object TFusionadoCONS_TIPO_FUSIONADO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'CONS_TIPO_FUSIONADO'
    end
    object TFusionadoCANTIDAD: TIntegerField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
    end
    object TFusionadoDIME_PLAT_ANCHO: TFloatField
      DisplayLabel = 'Dimensiones Plato Ancho'
      FieldName = 'DIME_PLAT_ANCHO'
    end
    object TFusionadoDIME_PLAT_LARGO: TFloatField
      DisplayLabel = 'Dimensiones Plato Largo'
      FieldName = 'DIME_PLAT_LARGO'
    end
    object TFusionadoDIME_PLAT_AREA: TFloatField
      DisplayLabel = 'Area de Trabajo'
      FieldName = 'DIME_PLAT_AREA'
    end
    object TFusionadoCONS_ACCI_FUSIONADO: TIntegerField
      DisplayLabel = 'Accionamionto'
      FieldName = 'CONS_ACCI_FUSIONADO'
    end
    object TFusionadoCONS_SIST_PRESION: TIntegerField
      DisplayLabel = 'Sistema Presión'
      FieldName = 'CONS_SIST_PRESION'
    end
    object TFusionadoVELOCIDAD: TFloatField
      DisplayLabel = 'Velocidad'
      FieldName = 'VELOCIDAD'
    end
  end
  object DSFusionado: TDataSource
    DataSet = TFusionado
    OnStateChange = DSRecursosStateChange
    Left = 321
    Top = 410
  end
  object QTipo_Fusionado: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_RECU_TIPO_FUSIONADO'
      'ORDER BY NOMB_TIPO_FUSIONADO')
    Left = 65
    Top = 470
  end
  object DSQTipo_Fusionado: TDataSource
    AutoEdit = False
    DataSet = QTipo_Fusionado
    Left = 93
    Top = 470
  end
  object DSQAccionamiento_Fusionado: TDataSource
    AutoEdit = False
    DataSet = QAccionamiento_Fusionado
    Left = 149
    Top = 414
  end
  object QAccionamiento_Fusionado: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_RECU_ACCI_FUSIONADO'
      'ORDER BY NOMB_ACCI_FUSIONADO')
    Left = 121
    Top = 414
  end
  object DSQSistema_Presion: TDataSource
    AutoEdit = False
    DataSet = QSistema_Presion
    Left = 149
    Top = 442
  end
  object QSistema_Presion: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_RECU_SIST_PRESION'
      'ORDER BY NOMB_SIST_PRESION')
    Left = 121
    Top = 442
  end
  object TFusionado_Temporal: TRxMemoryData
    FieldDefs = <>
    Left = 293
    Top = 438
    object TFusionado_TemporalCONS_RECURSO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object TFusionado_TemporalCONS_TIPO_FUSIONADO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'CONS_TIPO_FUSIONADO'
    end
    object TFusionado_TemporalCANTIDAD: TIntegerField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
    end
    object TFusionado_TemporalDIME_PLAT_ANCHO: TFloatField
      DisplayLabel = 'Dimensiones Plato Ancho'
      FieldName = 'DIME_PLAT_ANCHO'
    end
    object TFusionado_TemporalDIME_PLAT_LARGO: TFloatField
      DisplayLabel = 'Dimensiones Plato Largo'
      FieldName = 'DIME_PLAT_LARGO'
    end
    object TFusionado_TemporalDIME_PLAT_AREA: TFloatField
      DisplayLabel = 'Area de Trabajo'
      FieldName = 'DIME_PLAT_AREA'
    end
    object TFusionado_TemporalCONS_ACCI_FUSIONADO: TIntegerField
      DisplayLabel = 'Accionamionto'
      FieldName = 'CONS_ACCI_FUSIONADO'
    end
    object TFusionado_TemporalCONS_SIST_PRESION: TIntegerField
      DisplayLabel = 'Sistema Presión'
      FieldName = 'CONS_SIST_PRESION'
    end
    object TFusionado_TemporalVELOCIDAD: TFloatField
      DisplayLabel = 'Velocidad'
      FieldName = 'VELOCIDAD'
    end
  end
  object DSFusionado_Temporal: TDataSource
    DataSet = TFusionado_Temporal
    Left = 321
    Top = 438
  end
  object TCostura: TTable
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_RECURSO'
    MasterFields = 'CONS_RECURSO'
    MasterSource = DSRecursos
    TableName = 'GLO_RECU_COSTURA'
    Left = 293
    Top = 466
    object TCosturaCONS_RECURSO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object TCosturaTRANSPORTE: TStringField
      DisplayLabel = 'Transporte'
      FieldName = 'TRANSPORTE'
      Size = 30
    end
    object TCosturaARRASTRE: TStringField
      DisplayLabel = 'Arrastre'
      FieldName = 'ARRASTRE'
      Size = 30
    end
    object TCosturaAJUSTE: TStringField
      DisplayLabel = 'Ajuste'
      FieldName = 'AJUSTE'
      Size = 12
    end
    object TCosturaNUME_AGUJAS: TIntegerField
      DisplayLabel = 'No. de Agujas'
      FieldName = 'NUME_AGUJAS'
    end
    object TCosturaSEPA_AGUJAS: TFloatField
      DisplayLabel = 'Separación entre Agujas'
      FieldName = 'SEPA_AGUJAS'
    end
    object TCosturaALTU_PRENSATELAS: TFloatField
      DisplayLabel = 'Altura p/telas'
      FieldName = 'ALTU_PRENSATELAS'
    end
    object TCosturaLARG_PUNT_MAXIMO: TFloatField
      DisplayLabel = 'Largo Puntada (Máximo)'
      FieldName = 'LARG_PUNT_MAXIMO'
    end
    object TCosturaLARG_PUNT_MINIMO: TFloatField
      DisplayLabel = 'Largo Puntada (Mínimo)'
      FieldName = 'LARG_PUNT_MINIMO'
    end
    object TCosturaANCH_COST_MAXIMO: TFloatField
      DisplayLabel = 'Ancho de Costura (Máximo)'
      FieldName = 'ANCH_COST_MAXIMO'
    end
    object TCosturaANCH_COST_MINIMO: TFloatField
      DisplayLabel = 'Ancho de Costura (Mínimo)'
      FieldName = 'ANCH_COST_MINIMO'
    end
    object TCosturaCONS_RECU_TIPO_PUNTADA: TIntegerField
      DisplayLabel = 'Tipo Puntada'
      FieldName = 'CONS_RECU_TIPO_PUNTADA'
    end
    object TCosturaVELOCIDAD: TFloatField
      DisplayLabel = 'Velocidad'
      FieldName = 'VELOCIDAD'
    end
    object TCosturaRPM: TIntegerField
      FieldName = 'RPM'
    end
  end
  object DSCostura: TDataSource
    DataSet = TCostura
    OnStateChange = DSRecursosStateChange
    Left = 321
    Top = 466
  end
  object TCostura_Temporal: TRxMemoryData
    FieldDefs = <>
    Left = 293
    Top = 494
    object TCostura_TemporalCONS_RECURSO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object TCostura_TemporalTRANSPORTE: TStringField
      DisplayLabel = 'Transporte'
      FieldName = 'TRANSPORTE'
      Size = 30
    end
    object TCostura_TemporalARRASTRE: TStringField
      DisplayLabel = 'Arrastre'
      FieldName = 'ARRASTRE'
      Size = 30
    end
    object TCostura_TemporalAJUSTE: TStringField
      DisplayLabel = 'Ajuste'
      FieldName = 'AJUSTE'
      Size = 12
    end
    object TCostura_TemporalNUME_AGUJAS: TIntegerField
      DisplayLabel = 'No. de Agujas'
      FieldName = 'NUME_AGUJAS'
    end
    object TCostura_TemporalSEPA_AGUJAS: TFloatField
      DisplayLabel = 'Separación entre Agujas'
      FieldName = 'SEPA_AGUJAS'
    end
    object TCostura_TemporalALTU_PRENSATELAS: TFloatField
      DisplayLabel = 'Altura p/telas'
      FieldName = 'ALTU_PRENSATELAS'
    end
    object TCostura_TemporalLARG_PUNT_MAXIMO: TFloatField
      DisplayLabel = 'Largo Puntada (Máximo)'
      FieldName = 'LARG_PUNT_MAXIMO'
    end
    object TCostura_TemporalLARG_PUNT_MINIMO: TFloatField
      DisplayLabel = 'Largo Puntada (Mínimo)'
      FieldName = 'LARG_PUNT_MINIMO'
    end
    object TCostura_TemporalANCH_COST_MAXIMO: TFloatField
      DisplayLabel = 'Ancho de Costura (Máximo)'
      FieldName = 'ANCH_COST_MAXIMO'
    end
    object TCostura_TemporalANCH_COST_MINIMO: TFloatField
      DisplayLabel = 'Ancho de Costura (Mínimo)'
      FieldName = 'ANCH_COST_MINIMO'
    end
    object TCostura_TemporalCONS_RECU_TIPO_PUNTADA: TIntegerField
      DisplayLabel = 'Tipo Puntada'
      FieldName = 'CONS_RECU_TIPO_PUNTADA'
    end
    object TCostura_TemporalVELOCIDAD: TFloatField
      DisplayLabel = 'Velocidad'
      FieldName = 'VELOCIDAD'
    end
    object TCostura_TemporalRPM: TIntegerField
      FieldName = 'RPM'
    end
  end
  object DSCostura_Temporal: TDataSource
    DataSet = TCostura_Temporal
    Left = 321
    Top = 494
  end
  object TPlanchado: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_RECU_PLANCHADO'
    Left = 237
    Top = 411
    object TPlanchadoCONS_RECURSO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object TPlanchadoPLANCHA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Plancha'
      FieldName = 'PLANCHA'
    end
    object TPlanchadoCONS_TIPO_PLANCHADO: TIntegerField
      DisplayLabel = 'Tipo Plancha'
      FieldName = 'CONS_TIPO_PLANCHADO'
    end
    object TPlanchadoMESA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Mesa'
      FieldName = 'MESA'
    end
    object TPlanchadoCONS_SIST_PLANCHADO: TIntegerField
      DisplayLabel = 'Sistema Mesa'
      FieldName = 'CONS_SIST_PLANCHADO'
    end
    object TPlanchadoUTIL_MESA: TStringField
      DisplayLabel = 'Utilidad Mesa'
      FieldName = 'UTIL_MESA'
      Size = 30
    end
    object TPlanchadoBRAZO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Brazo'
      FieldName = 'BRAZO'
    end
    object TPlanchadoCONS_TIPO_BRAZO: TIntegerField
      DisplayLabel = 'Tipo Brazo'
      FieldName = 'CONS_TIPO_BRAZO'
    end
    object TPlanchadoCONS_SIST_PLAN_BRAZO: TIntegerField
      DisplayLabel = 'Sistema Brazo'
      FieldName = 'CONS_SIST_PLAN_BRAZO'
    end
    object TPlanchadoPRENSA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Prensa'
      FieldName = 'PRENSA'
    end
    object TPlanchadoCONS_TIPO_PRENSA: TIntegerField
      DisplayLabel = 'Tipo Prensa'
      FieldName = 'CONS_TIPO_PRENSA'
    end
    object TPlanchadoUTIL_PRENSA: TStringField
      DisplayLabel = 'Utilidad Prensa'
      FieldName = 'UTIL_PRENSA'
      Size = 30
    end
  end
  object DSPlanchado: TDataSource
    DataSet = TPlanchado
    OnStateChange = DSRecursosStateChange
    Left = 265
    Top = 411
  end
  object TPlanchado_Temporal: TRxMemoryData
    FieldDefs = <>
    Left = 237
    Top = 439
    object TPlanchado_TemporalCONS_RECURSO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object TPlanchado_TemporalPLANCHA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Plancha'
      FieldName = 'PLANCHA'
    end
    object TPlanchado_TemporalCONS_TIPO_PLANCHADO: TIntegerField
      DisplayLabel = 'Tipo Plancha'
      FieldName = 'CONS_TIPO_PLANCHADO'
    end
    object TPlanchado_TemporalMESA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Mesa'
      FieldName = 'MESA'
    end
    object TPlanchado_TemporalCONS_SIST_PLANCHADO: TIntegerField
      DisplayLabel = 'Sistema Mesa'
      FieldName = 'CONS_SIST_PLANCHADO'
    end
    object TPlanchado_TemporalUTIL_MESA: TStringField
      DisplayLabel = 'Utilidad Mesa'
      FieldName = 'UTIL_MESA'
      Size = 30
    end
    object TPlanchado_TemporalBRAZO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Brazo'
      FieldName = 'BRAZO'
    end
    object TPlanchado_TemporalCONS_TIPO_BRAZO: TIntegerField
      DisplayLabel = 'Tipo Brazo'
      FieldName = 'CONS_TIPO_BRAZO'
    end
    object TPlanchado_TemporalCONS_SIST_PLAN_BRAZO: TIntegerField
      DisplayLabel = 'Sistema Brazo'
      FieldName = 'CONS_SIST_PLAN_BRAZO'
    end
    object TPlanchado_TemporalPRENSA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Prensa'
      FieldName = 'PRENSA'
    end
    object TPlanchado_TemporalCONS_TIPO_PRENSA: TIntegerField
      DisplayLabel = 'Tipo Prensa'
      FieldName = 'CONS_TIPO_PRENSA'
    end
    object TPlanchado_TemporalUTIL_PRENSA: TStringField
      DisplayLabel = 'Utilidad Prensa'
      FieldName = 'UTIL_PRENSA'
      Size = 30
    end
  end
  object DSPlanchado_Temporal: TDataSource
    DataSet = TPlanchado_Temporal
    Left = 265
    Top = 439
  end
  object QTipo_Planchado: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_RECU_TIPO_PLANCHADO'
      'ORDER BY NOMB_TIPO_PLANCHADO')
    Left = 121
    Top = 470
  end
  object DSQTipo_Planchado: TDataSource
    AutoEdit = False
    DataSet = QTipo_Planchado
    Left = 149
    Top = 470
  end
  object QSistema_Planchado: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_RECU_SIST_PLANCHADO'
      'ORDER BY NOMB_SIST_PLANCHADO')
    Left = 177
    Top = 414
  end
  object DSQTipo_Brazo: TDataSource
    AutoEdit = False
    DataSet = QTipo_Brazo
    Left = 205
    Top = 442
  end
  object QTipo_Brazo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_RECU_TIPO_BRAZO'
      'ORDER BY NOMB_TIPO_BRAZO'
      #9)
    Left = 177
    Top = 442
  end
  object QTipo_Prensa: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_RECU_TIPO_PRENSA'
      'ORDER BY NOMB_TIPO_PRENSA')
    Left = 9
    Top = 498
  end
  object DSQTipo_Prensa: TDataSource
    AutoEdit = False
    DataSet = QTipo_Prensa
    Left = 37
    Top = 498
  end
  object DSQSistema_Planchado: TDataSource
    AutoEdit = False
    DataSet = QSistema_Planchado
    Left = 205
    Top = 414
  end
  object QSistema_Planchado_Brazo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_RECU_SIST_PLANCHADO'
      'ORDER BY NOMB_SIST_PLANCHADO')
    Left = 177
    Top = 470
  end
  object DSQSistema_Planchado_Brazo: TDataSource
    AutoEdit = False
    DataSet = QSistema_Planchado_Brazo
    Left = 205
    Top = 470
  end
end
