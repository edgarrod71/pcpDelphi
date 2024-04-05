inherited fn1_refe_fich_02_hoja_diseno1: Tfn1_refe_fich_02_hoja_diseno1
  Height = 623
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 580
  end
  inherited padr_pane_info: TPanel
    Top = 579
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
    Top = 581
  end
  inherited fram_seleccion: Tffra_sele_refe_variacion
    inherited fram_pane_sele_referencia: TPCPFrame
      inherited fram_pane_referencia: TPanel
        inherited comb_codi_referencia: TPCPLookUpComboEdit
          DataSource = data_ventana
        end
        inherited comb_variacion: TPCPLookUpComboEdit
          DataSource = data_ventana
        end
      end
      inherited fram_pane_informacion: TPCPFrame
        inherited dxDBEdit4: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit6: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit7: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit8: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit5: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit1: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit2: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit3: TdxDBEdit
          StoredValues = 64
        end
      end
    end
  end
  inherited padr_page: TSCLPageControl
    Height = 469
    FixedDimension = 19
    inherited page_info_ficha: TSCLTabSheet
      object Splitter3: TSplitter
        Left = 337
        Top = 0
        Width = 3
        Height = 446
        Cursor = crHSplit
      end
      object pane_frente: TPCPFrame
        Left = 0
        Top = 0
        Width = 337
        Height = 446
        Align = alLeft
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
        Boton_Visible = False
        FlatBorder = True
        object Splitter1: TSplitter
          Left = 3
          Top = 301
          Width = 331
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object pane_obse_frente: TPCPFrame
          Left = 3
          Top = 304
          Width = 331
          Height = 139
          Align = alBottom
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
          Titulo_Color = 16244694
          TipoFrame = tfGrupo
          BorderWidthIn = 4
          object dxDBMemo2: TdxDBMemo
            Left = 6
            Top = 25
            Width = 319
            Align = alClient
            TabOrder = 1
            DataField = 'OBSE_1'
            DataSource = data_auxiliar
            Height = 108
          end
        end
        object pane_imag_frente: TPanel
          Left = 3
          Top = 22
          Width = 331
          Height = 279
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 1
          OnResize = pane_imag_frenteResize
          object imag_frente: TEDBImage
            Left = 8
            Top = 16
            Width = 313
            Height = 33
            DataField = 'IMAG_1'
            DataSource = data_auxiliar
            PopupMenu = padr_popImagen
            TabOrder = 0
            ZoomToFit = False
            OnDblClick = imag_frenteDblClick
          end
        end
      end
      object pane_espalda: TPCPFrame
        Left = 340
        Top = 0
        Width = 337
        Height = 446
        Align = alLeft
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Titulo_Color = 16244694
        Boton_Visible = False
        FlatBorder = True
        object Splitter2: TSplitter
          Left = 3
          Top = 301
          Width = 331
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object pane_obse_espalda: TPCPFrame
          Left = 3
          Top = 304
          Width = 331
          Height = 139
          Align = alBottom
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
          Titulo_Color = 16244694
          TipoFrame = tfGrupo
          BorderWidthIn = 4
          object dxDBMemo1: TdxDBMemo
            Left = 6
            Top = 25
            Width = 319
            Align = alClient
            TabOrder = 1
            DataField = 'OBSE_2'
            DataSource = data_auxiliar
            Height = 108
          end
        end
        object pane_imag_espalda: TPanel
          Left = 3
          Top = 22
          Width = 331
          Height = 279
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 1
          OnResize = pane_imag_espaldaResize
          object imag_espalda: TEDBImage
            Left = 8
            Top = 16
            Width = 313
            Height = 33
            DataField = 'IMAG_2'
            DataSource = data_auxiliar
            PopupMenu = padr_popImagen
            TabOrder = 0
            ZoomToFit = False
            OnClick = imag_espaldaClick
          end
        end
      end
    end
    inherited page_info_Referencia: TSCLTabSheet
      inherited padr_pane_info_referencia: TPanel
        inherited padr_labe_nomb_referencia: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit4
          DataSource = fram_seleccion.data_referencias
        end
        inherited padr_labe_temporada: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit5
          DataSource = fram_seleccion.data_referencias
        end
        inherited padr_labe_marca: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit6
          DataSource = fram_seleccion.data_referencias
        end
        inherited padr_labe_grupo: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit1
          DataSource = fram_seleccion.data_referencias
        end
        inherited padr_labe_estilo: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit2
          DataSource = fram_seleccion.data_referencias
        end
        inherited padr_labe_linea: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit7
          DataSource = fram_seleccion.data_referencias
        end
        inherited padr_labe_estado: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit3
          DataSource = fram_seleccion.data_referencias
        end
        inherited padr_labe_edad: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit8
          DataSource = fram_seleccion.data_referencias
        end
        inherited padr_labe_grup_tallas: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit1
          DataSource = fram_seleccion.data_referencias
        end
        inherited padr_edit_nomb_referencia: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited padr_edit_temporada: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited padr_edit_marca: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited padr_edit_grupo: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited padr_edit_estilo: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited padr_edit_linea: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited padr_edit_edad: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited padr_edit_estado: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited padr_edit_tallas: TdxDBEdit
          StoredValues = 64
        end
        inherited padr_edit_tall_muestra: TdxDBEdit
          StoredValues = 64
        end
        inherited padr_edit_grup_tallas: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
      end
      inherited padr_pane_descripcion: TPCPFrame
        inherited padr_edit_observaciones: TdxDBMemo
          Height = 124
        end
      end
    end
  end
  inherited quer_tallas: TQuery
    DataSource = fram_seleccion.data_referencias
  end
  inherited acti_fichas: TActionList
    inherited acti_post_load: TAction
      OnExecute = acti_post_loadExecute
    end
    inherited acti_befo_post: TAction
      OnExecute = acti_befo_postExecute
    end
  end
  inherited myTabla_Auxiliar: TkbmMemTable
    object myTabla_AuxiliarCONS_HERR_IMAG_1: TIntegerField
      FieldName = 'CONS_HERR_IMAG_1'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_02_HOJA_DISENO.CONS_HERR_IMAG_1'
    end
    object myTabla_AuxiliarIMAG_1: TBlobField
      FieldName = 'IMAG_1'
      BlobType = ftBlob
    end
    object myTabla_AuxiliarOBSE_1: TMemoField
      FieldName = 'OBSE_1'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_02_HOJA_DISENO.OBSE_1'
      BlobType = ftMemo
      Size = 5000
    end
    object myTabla_AuxiliarCONS_HERR_IMAG_2: TIntegerField
      FieldName = 'CONS_HERR_IMAG_2'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_02_HOJA_DISENO.CONS_HERR_IMAG_2'
    end
    object myTabla_AuxiliarIMAG_2: TBlobField
      FieldName = 'IMAG_2'
      BlobType = ftBlob
    end
    object myTabla_AuxiliarOBSE_2: TMemoField
      FieldName = 'OBSE_2'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_02_HOJA_DISENO.OBSE_2'
      BlobType = ftMemo
      Size = 5000
    end
  end
  object quer_Sele_Detalle: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM PCP_REFE_FICH_02_HOJA_DISENO'
      'WHERE CONS_REFE_FICHA = :CONS_REFE_FICHA')
    Left = 616
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_FICHA'
        ParamType = ptInput
      end>
  end
  object quer_guar_detalle: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_auxiliar
    SQL.Strings = (
      'EXECUTE PROCEDURE PRO_PCP_REFE_FICH_02_HOJA_IU'
      '(:CONS_REFE_FICHA,'
      ':CONS_HERR_IMAG_1,'
      ':OBSE_1,'
      ':CONS_HERR_IMAG_2,'
      ':OBSE_2)')
    Left = 648
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_FICHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_HERR_IMAG_1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSE_1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_HERR_IMAG_2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSE_2'
        ParamType = ptUnknown
      end>
  end
end
