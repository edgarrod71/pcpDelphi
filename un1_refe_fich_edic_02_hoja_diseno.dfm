inherited fn1_refe_fich_edic_02_hoja_diseno: Tfn1_refe_fich_edic_02_hoja_diseno
  Top = 188
  Width = 808
  Height = 527
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pane_informacion: TPCPFrame
    Width = 800
    inherited padr_edit_nomb_referencia: TdxDBEdit
      StoredValues = 64
    end
    inherited padr_edit_marca: TdxDBEdit
      StoredValues = 64
    end
    inherited padr_edit_grupo: TdxDBEdit
      StoredValues = 64
    end
    inherited padr_edit_estilo: TdxDBEdit
      StoredValues = 64
    end
    inherited padr_edit_linea: TdxDBEdit
      StoredValues = 64
    end
    inherited padr_edit_tallas: TdxDBEdit
      StoredValues = 64
    end
    inherited padr_edit_tall_muestra: TdxDBEdit
      StoredValues = 64
    end
    inherited padr_edit_grup_tallas: TdxDBEdit
      StoredValues = 64
    end
  end
  inherited padr_pane_deta_ficha: TPCPFrame
    Tag = 348
    Width = 800
    Height = 458
    object SCLShape1: TSCLShape
      Left = 340
      Top = 22
      Width = 1
      Height = 433
      Align = alLeft
      Brush.Style = bsClear
      Pen.Color = 14467501
    end
    object SCLShape2: TSCLShape
      Left = 678
      Top = 22
      Width = 1
      Height = 433
      Align = alLeft
      Brush.Style = bsClear
      Pen.Color = 14467501
    end
    object pane_frente: TPCPFrame
      Tag = 323
      Left = 3
      Top = 22
      Width = 337
      Height = 433
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
      TabOrder = 1
      Titulo_Color = 16244694
      Boton_Visible = False
      TipoFrame = tfGrupo
      FlatBorder = True
      object pane_imag_frente: TPanel
        Left = 2
        Top = 21
        Width = 333
        Height = 271
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 2
        TabOrder = 0
        OnResize = pane_imag_frenteResize
        inline imag_frente: Tffra_fotografiaDB
          Left = 40
          Top = 8
          Width = 233
          Height = 126
          inherited fram_pane_atras: TPanel
            Width = 233
            Height = 100
            inherited fram_fotografia: TEDBImage
              Width = 223
              Height = 67
              DataField = 'IMAG_1'
              DataSource = data_tabl_fich_Detalles
            end
            inherited fram_pane_stretch: TPanel
              Top = 72
              Width = 223
              Visible = False
            end
          end
          inherited TBXDock1: TTBXDock
            Width = 233
          end
        end
      end
      object pane_obse_frente: TPCPFrame
        Tag = 139
        Left = 2
        Top = 292
        Width = 333
        Height = 139
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 2
        Constraints.MinHeight = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Titulo_Color = 16244694
        TipoFrame = tfNinguno
        object labe_obse_frente: TLabel
          Left = 2
          Top = 2
          Width = 329
          Height = 13
          Align = alTop
        end
        object edit_frente: TdxDBMemo
          Left = 2
          Top = 15
          Width = 329
          Align = alClient
          TabOrder = 1
          DataField = 'OBSE_1'
          DataSource = data_tabl_fich_Detalles
          Height = 122
        end
      end
    end
    object pane_espalda: TPCPFrame
      Tag = 323
      Left = 341
      Top = 22
      Width = 337
      Height = 433
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
      TabOrder = 2
      Titulo_Color = 16244694
      Boton_Visible = False
      TipoFrame = tfGrupo
      FlatBorder = True
      object pane_imag_espalda: TPanel
        Left = 2
        Top = 21
        Width = 333
        Height = 271
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 2
        TabOrder = 0
        OnResize = pane_imag_espaldaResize
        inline imag_espalda: Tffra_fotografiaDB
          Left = 40
          Top = 8
          Width = 233
          Height = 126
          inherited fram_pane_atras: TPanel
            Width = 233
            Height = 100
            inherited fram_fotografia: TEDBImage
              Width = 223
              Height = 67
              DataField = 'IMAG_2'
              DataSource = data_tabl_fich_Detalles
            end
            inherited fram_pane_stretch: TPanel
              Top = 72
              Width = 223
              Visible = False
            end
          end
          inherited TBXDock1: TTBXDock
            Width = 233
          end
        end
      end
      object pane_obse_espalda: TPCPFrame
        Tag = 139
        Left = 2
        Top = 292
        Width = 333
        Height = 139
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 2
        Constraints.MinHeight = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Titulo_Color = 16244694
        TipoFrame = tfNinguno
        object labe_obse_espalda: TLabel
          Left = 2
          Top = 2
          Width = 329
          Height = 13
          Align = alTop
        end
        object edit_espalda: TdxDBMemo
          Left = 2
          Top = 15
          Width = 329
          Align = alClient
          TabOrder = 1
          DataField = 'OBSE_2'
          DataSource = data_tabl_fich_Detalles
          Height = 122
        end
      end
    end
  end
  inherited pane_mensaje: Tffra_mens_atencion
    Width = 800
    inherited padr_shap_top: TShape
      Width = 800
    end
    inherited padr_shap_bottom: TShape
      Width = 800
    end
    inherited padr_shap_right: TShape
      Left = 799
    end
    inherited fram_label: TAdvPanel
      Width = 798
      FullHeight = 15
    end
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_AfterEjecutar: TAction
      OnExecute = padr_acti_AfterEjecutarExecute
    end
    inherited padr_acti_AfterPost: TAction
      OnExecute = padr_acti_AfterPostExecute
    end
  end
  inherited padr_tabl_fich_Detalles: TkbmMemTable
    BeforePost = padr_tabl_fich_DetallesBeforePost
    object padr_tabl_fich_DetallesIMAG_1: TBlobField
      FieldName = 'IMAG_1'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_02_HOJA_DISENO.IMAG_1'
      BlobType = ftBlob
      Size = 1
    end
    object padr_tabl_fich_DetallesIMAG_1_SMALL: TBlobField
      FieldName = 'IMAG_1_SMALL'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_02_HOJA_DISENO.IMAG_1_SMALL'
      BlobType = ftBlob
      Size = 1
    end
    object padr_tabl_fich_DetallesOBSE_1: TMemoField
      FieldName = 'OBSE_1'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_02_HOJA_DISENO.OBSE_1'
      BlobType = ftMemo
      Size = 5000
    end
    object padr_tabl_fich_DetallesIMAG_2: TBlobField
      FieldName = 'IMAG_2'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_02_HOJA_DISENO.IMAG_2'
      BlobType = ftBlob
      Size = 1
    end
    object padr_tabl_fich_DetallesIMAG_2_SMALL: TBlobField
      FieldName = 'IMAG_2_SMALL'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_02_HOJA_DISENO.IMAG_2_SMALL'
      BlobType = ftBlob
      Size = 1
    end
    object padr_tabl_fich_DetallesOBSE_2: TMemoField
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
    Left = 528
    Top = 89
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_FICHA'
        ParamType = ptInput
      end>
  end
  object quer_guar_detalle: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_tabl_fich_Detalles
    SQL.Strings = (
      'EXECUTE PROCEDURE PRO_PCP_REFE_FICH_02_HOJA_IU'
      '(:CONS_REFE_FICHA, :IMAG_1,'
      ':IMAG_1_SMALL, :OBSE_1,'
      ':IMAG_2, :IMAG_2_SMALL,'
      ':OBSE_2)')
    Left = 556
    Top = 89
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_FICHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAG_1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAG_1_SMALL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSE_1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAG_2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAG_2_SMALL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSE_2'
        ParamType = ptUnknown
      end>
  end
end
