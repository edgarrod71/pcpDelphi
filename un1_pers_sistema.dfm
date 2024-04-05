inherited fn1_pers_sistema: Tfn1_pers_sistema
  Left = -31
  Top = 55
  Width = 812
  Height = 505
  Caption = 'Modificando personal (sistema)'
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 469
    Width = 804
  end
  object spli: TdfsSplitter [2]
    Left = 315
    Top = 54
    Height = 414
    Cursor = crHSplit
    Align = alRight
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    inherited padr_barra: TTBXToolbar
      inherited padr_boto_vinculos: TTBXSubmenuItem
        Images = _fMDI.imag_grandes
        LinkSubitems = _fMDI.menu_personal
        Visible = True
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 47
    Width = 804
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 468
    Width = 804
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
    Top = 470
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 45
    Width = 804
  end
  object pane_datos: TPanel [9]
    Left = 325
    Top = 54
    Width = 479
    Height = 414
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 6
    object pane_sistema: TPCPFrame
      Tag = 407
      Left = 0
      Top = 0
      Width = 479
      Height = 414
      Align = alClient
      BorderWidth = 2
      Constraints.MinHeight = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Caption = 'Información del personal'
      Titulo_Color = 16244694
      TipoFrame = tfNinguno
      FlatBorder = True
      object Panel3: TPanel
        Left = 3
        Top = 3
        Width = 473
        Height = 23
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        inline fram_nomb_operario: Tffra_mens_atencion
          Width = 473
          Height = 20
          inherited padr_shap_top: TShape
            Width = 473
          end
          inherited padr_shap_bottom: TShape
            Top = 19
            Width = 473
          end
          inherited padr_shap_right: TShape
            Left = 472
            Height = 18
          end
          inherited padr_shap_left: TShape
            Height = 18
          end
          inherited fram_label: TAdvPanel
            Width = 471
            Height = 18
            Color = 14059353
            BorderColor = clNone
            CollapsColor = clNone
            ColorTo = 9648131
            FullHeight = 15
            inherited data_label: TDBText
              Left = 5
              Width = 60
              DataField = 'NOMB_COMPLETO'
              DataSource = fram_list_personal.data_pers_disponible
              Font.Color = clWhite
              Font.Style = [fsBold]
              ParentFont = False
              Visible = True
            end
          end
        end
      end
      object PCPFrame3: TPCPFrame
        Tag = 110
        Left = 3
        Top = 26
        Width = 473
        Height = 110
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
        TabOrder = 2
        Caption = 'Detalles de la ubicación'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        inline fram_ubicacion: Tffra_maqu_ubicacion
          Left = 2
          Top = 21
          Width = 469
          Height = 89
          Align = alTop
          TabOrder = 1
          inherited pane_tipo_ubicacion: TPanel
            Width = 469
            inherited SCLDBLabel33: TSCLDBLabel
              Left = 26
              FontActive.Name = 'Tahoma'
            end
            inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
              Left = 108
              Width = 157
              DataSource = data_ventana
              Enabled = False
              OnChange = fram_ubicacioncomb_tipo_ubicacionChange
              HideButton = True
            end
          end
          inherited pane_ubic_propia: TPanel
            Width = 469
            inherited SCLDBLabel34: TSCLDBLabel
              Left = 26
              FontActive.Name = 'Tahoma'
            end
            inherited SCLDBLabel35: TSCLDBLabel
              Left = 224
              Height = 20
              FontActive.Name = 'Tahoma'
            end
            inherited comb_ubic_empresa: TPCPLookUpComboEdit
              Left = 108
              Width = 157
              DataSource = data_ventana
              Enabled = False
              HideButton = True
            end
            inherited comb_ubic_area: TPCPLookUpComboEdit
              Left = 306
              Width = 157
              Height = 20
              DataSource = data_ventana
              Enabled = False
              HideButton = True
            end
            inherited SCLButton6: TTBXButton
              Left = 207
              Visible = False
            end
            inherited SCLButton7: TTBXButton
              Left = 589
              Visible = False
            end
          end
          inherited pane_ubic_externa: TPanel
            Width = 469
            inherited SCLDBLabel36: TSCLDBLabel
              Left = 26
              FontActive.Name = 'Tahoma'
            end
            inherited SCLDBLabel37: TSCLDBLabel
              Left = 26
              FontActive.Name = 'Tahoma'
            end
            inherited SCLDBLabel1: TSCLDBLabel
              Left = 224
              Top = -1
              FontActive.Name = 'Tahoma'
            end
            inherited comb_ubic_planta: TPCPLookUpComboEdit
              Left = 108
              Width = 157
              DataSource = data_ventana
              Enabled = False
              HideButton = True
            end
            inherited comb_ubic_seccion: TPCPLookUpComboEdit
              Left = 108
              Width = 157
              DataSource = data_ventana
              Enabled = False
              HideButton = True
            end
            inherited SCLButton8: TTBXButton
              Left = 207
              Visible = False
            end
            inherited SCLButton9: TTBXButton
              Left = 191
              Top = 10
              Visible = False
            end
            inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
              Left = 306
              Top = -1
              Width = 157
              DataSource = data_ventana
              Enabled = False
              HideButton = True
            end
            inherited SCLButton1: TTBXButton
              Left = 589
              Visible = False
            end
          end
          inherited pane_ubic_bodega: TPanel
            Width = 469
            inherited SCLDBLabel39: TSCLDBLabel
              Left = 26
              FontActive.Name = 'Tahoma'
            end
            inherited comb_ubic_bodega: TPCPLookUpComboEdit
              Left = 108
              Width = 157
              DataSource = data_ventana
              Enabled = False
              HideButton = True
            end
            inherited SCLButton10: TTBXButton
              Left = 255
              Top = 7
              Visible = False
            end
          end
          inherited pane_ubic_otra: TPanel
            Width = 469
            inherited SCLDBLabel38: TSCLDBLabel
              Left = 26
              FontActive.Name = 'Tahoma'
            end
            inherited edit_ubic_otra_ubicacion: TdxDBEdit
              Left = 108
              Width = 157
              Enabled = False
              DataSource = data_ventana
            end
          end
          inherited quer_maqu_ubicaciones: TQuery
            Left = 2
          end
          inherited data_maqu_ubicaciones: TDataSource
            Left = 34
          end
          inherited quer_empresas: TQuery
            Left = 2
          end
          inherited data_empresas: TDataSource
            Left = 34
          end
          inherited quer_areas: TQuery
            Left = 2
          end
          inherited data_areas: TDataSource
            Left = 34
          end
          inherited quer_plantas: TQuery
            Left = 2
          end
          inherited data_plantas: TDataSource
            Left = 34
          end
          inherited quer_secciones: TQuery
            Left = 2
          end
          inherited data_secciones: TDataSource
            Left = 34
          end
          inherited quer_bodegas: TQuery
            Left = 2
          end
          inherited data_bodegas: TDataSource
            Left = 34
          end
          inherited quer_lineas: TQuery
            Left = 66
            Top = 59
          end
          inherited data_lineas: TDataSource
            Left = 98
            Top = 59
          end
        end
      end
      object PCPFrame2: TPCPFrame
        Tag = 207
        Left = 3
        Top = 136
        Width = 473
        Height = 207
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
        TabOrder = 3
        Caption = 'Datos del sistema'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        object SCLDBLabel51: TSCLDBLabel
          Left = 14
          Top = 131
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
          Caption = 'Nombre de usuario:'
          Transparent = True
          Visible = False
          DataSource = data_glo_pers_sistema
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'USUA_PERSONAL'
          Field = 'USUA_PERSONAL'
        end
        object SCLDBLabel52: TSCLDBLabel
          Left = 14
          Top = 33
          Width = 108
          Height = 21
          Alive = False
          ColorActive = clBtnFace
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = [fsBold]
          FocusOffset = 2
          Position = wlpLeft
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Módulo personal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object dxDBEdit1: TdxDBEdit
          Left = 116
          Top = 131
          Width = 137
          TabOrder = 0
          Visible = False
          CharCase = ecUpperCase
          DataField = 'USUA_PERSONAL'
          DataSource = data_glo_pers_sistema
        end
        object dxDBCheckEdit2: TdxDBCheckEdit
          Left = 125
          Top = 33
          Width = 188
          TabOrder = 1
          Caption = 'Solicitar movimientos'
          DataField = 'PERS_MOVI_SOLICITAR'
          DataSource = data_glo_pers_sistema
          StyleController = padr_estilo
          ValueChecked = '1'
          ValueUnchecked = '-1'
        end
        object dxDBCheckEdit3: TdxDBCheckEdit
          Left = 125
          Top = 53
          Width = 188
          TabOrder = 2
          Caption = 'Aprobar movimientos'
          DataField = 'PERS_MOVI_APROBAR'
          DataSource = data_glo_pers_sistema
          StyleController = padr_estilo
          ValueChecked = '1'
          ValueUnchecked = '-1'
        end
        object PANE_INACTIVO: TPanel
          Left = 125
          Top = 121
          Width = 164
          Height = 83
          TabOrder = 3
          Visible = False
          object SCLShape1: TSCLShape
            Left = 8
            Top = 8
            Width = 149
            Height = 66
            Brush.Style = bsClear
            Pen.Color = 14467501
          end
          object labe_pers_inactivo: THTMLabel
            Left = 15
            Top = 10
            Width = 138
            Height = 61
            ColorTo = clNone
            AnchorHint = False
            AutoSizing = False
            AutoSizeType = asVertical
            Ellipsis = False
            GradientType = gtFullHorizontal
            HintShowFull = False
            Hover = False
            HoverColor = clNone
            HoverFontColor = clNone
            HTMLHint = False
            HTMLText.Strings = (
              
                '<IMG src="1"> <FONT color="#000000"><B>  ATENCIÓN</B><BR><BR>El ' +
                'estado actual de esta persona es: </FONT><FONT color="#FF0000">I' +
                'NACTIVO</FONT>')
            LineWidth = 0
            PictureContainer = padr_pict_container
            ShadowColor = clGray
            ShadowOffset = 2
            Transparent = True
            URLColor = clBlue
            VAlignment = tvaTop
            Version = '1.7.1.1'
          end
          object SCLShape2: TSCLShape
            Left = 11
            Top = 30
            Width = 143
            Height = 1
            Brush.Style = bsClear
            Pen.Color = 14467501
          end
        end
        object dxDBCheckEdit4: TdxDBCheckEdit
          Left = 125
          Top = 73
          Width = 188
          TabOrder = 5
          Caption = 'Avisar vencimiento de contratos'
          DataField = 'PERS_AVIS_VENC_CONTRATOS'
          DataSource = data_glo_pers_sistema
          StyleController = padr_estilo
          ValueChecked = '1'
          ValueGrayed = '-1'
          ValueUnchecked = '-1'
        end
      end
    end
  end
  inline fram_list_personal: Tffra_sele_pers_lista [10]
    Top = 54
    Width = 315
    Height = 414
    Align = alClient
    TabOrder = 7
    inherited pane_filtros: TPCPFrame
      Tag = 111
      Top = 391
      Width = 315
      Height = 23
      Align = alBottom
      Titulo_Comprimido = True
      inherited Panel1: TPanel
        Width = 309
        inherited fram_filt_personal: Tffra_maqu_ubicacion
          Width = 309
          Height = 584
          inherited pane_tipo_ubicacion: TPanel
            Width = 309
          end
          inherited pane_ubic_propia: TPanel
            Width = 309
            inherited comb_ubic_area: TPCPLookUpComboEdit
              Width = 149
            end
          end
          inherited pane_ubic_externa: TPanel
            Width = 309
            inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
              Width = 149
            end
          end
          inherited pane_ubic_bodega: TPanel
            Width = 309
          end
          inherited pane_ubic_otra: TPanel
            Width = 309
          end
        end
      end
    end
    inherited PCPFrame1: TPCPFrame
      Tag = 384
      Top = 0
      Width = 315
      Height = 391
      inherited grid_pers_disponible: TSCLDBGrid
        Width = 301
        Height = 358
        Filter.Criteria = {00000000}
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
      end
    end
    inherited quer_pers_disponible: TQuery
      AfterScroll = fram_list_personalquer_pers_disponibleAfterScroll
      SQL.Strings = (
        'SELECT'
        '*'
        'FROM CON_GLO_PERS_UBIC_FECH_COMPLETO(:PE_FECHA)'
        '')
    end
  end
  inherited data_ventana: TDataSource
    DataSet = fram_list_personal.quer_pers_disponible
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_guardar: TDataSetPost
      OnUpdate = padr_acti_guardarUpdate
      DataSource = data_glo_pers_sistema
    end
    inherited padr_acti_cancelar: TDataSetCancel
      OnUpdate = padr_acti_cancelarUpdate
      DataSource = data_glo_pers_sistema
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
      Visible = False
      DataSource = data_glo_pers_sistema
    end
    inherited padr_acti_modificar: TDataSetEdit
      Enabled = True
      Visible = True
      DataSource = data_glo_pers_sistema
    end
    inherited padr_acti_eliminar: TDataSetDelete
      DataSource = data_glo_pers_sistema
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      OnUpdate = padr_acti_guar_cerrarUpdate
      DataSource = data_glo_pers_sistema
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      DataSource = data_glo_pers_sistema
    end
  end
  inherited padr_imag_tem1_colo: TImageList [21]
  end
  inherited padr_quer_consecutivo: TQuery [22]
  end
  object tabl_glo_pers_sistema: TTable
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_PERSONAL'
    MasterFields = 'CONS_PERSONAL'
    MasterSource = data_ventana
    TableName = 'GLO_PERS_SISTEMA'
    Left = 528
    Top = 400
    object tabl_glo_pers_sistemaCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
      Required = True
    end
    object tabl_glo_pers_sistemaUSUA_PERSONAL: TStringField
      FieldName = 'USUA_PERSONAL'
    end
    object tabl_glo_pers_sistemaPERS_MOVI_SOLICITAR: TIntegerField
      FieldName = 'PERS_MOVI_SOLICITAR'
    end
    object tabl_glo_pers_sistemaPERS_MOVI_APROBAR: TIntegerField
      FieldName = 'PERS_MOVI_APROBAR'
    end
    object tabl_glo_pers_sistemaPERS_AVIS_VENC_CONTRATOS: TIntegerField
      FieldName = 'PERS_AVIS_VENC_CONTRATOS'
    end
  end
  object data_glo_pers_sistema: TDataSource
    DataSet = tabl_glo_pers_sistema
    Left = 560
    Top = 399
  end
end
