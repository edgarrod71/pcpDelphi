object fn1_refe_fich_edic_06_editor: Tfn1_refe_fich_edic_06_editor
  Left = 419
  Top = 88
  Width = 277
  Height = 574
  Align = alLeft
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object pane_superior: TPCPFrame
    Tag = 400
    Left = 0
    Top = 0
    Width = 269
    Height = 407
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
    Titulo_Color = 16244694
    TipoFrame = tfNinguno
    FlatBorder = True
    inline pane_titulo: Tffra_mens_atencion
      Left = 3
      Top = 3
      Width = 263
      TabOrder = 1
      inherited padr_shap_top: TShape
        Width = 263
      end
      inherited padr_shap_bottom: TShape
        Width = 263
      end
      inherited padr_shap_right: TShape
        Left = 262
      end
      inherited fram_label: TAdvPanel
        Width = 261
        FullHeight = 15
      end
    end
    object pane_cont_imagen: TPanel
      Left = 3
      Top = 22
      Width = 263
      Height = 382
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      OnResize = pane_cont_imagenResize
      object shap_1: TShape
        Left = 0
        Top = 0
        Width = 263
        Height = 359
        Align = alClient
        Brush.Style = bsFDiagonal
        Pen.Style = psClear
        Visible = False
      end
      object labe_prep_eliminar: TLabel
        Left = 28
        Top = 4
        Width = 127
        Height = 13
        Caption = 'Marcada para eliminar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object imag_prep_eliminar: TJvImageSquare
        Left = 3
        Top = 2
        Width = 23
        Height = 16
        BorderStyle = bsNone
        HiColor = clBtnFace
        Images = _fMDI.imag_varias
        ImageIndex = 5
        Text = 'imag_prep_eliminar'
        Visible = False
        Enabled = False
      end
      inline pane_imagen: Tffra_fotografiaDB
        Left = 7
        Top = 55
        Width = 247
        Height = 147
        inherited fram_pane_atras: TPanel
          Width = 247
          Height = 121
          inherited fram_fotografia: TEDBImage
            Width = 237
            Height = 88
            DataField = 'IMAG_1'
            DataSource = data_Ventana
          end
          inherited fram_pane_stretch: TPanel
            Top = 93
            Width = 237
            inherited fram_chec_ajustar: TdxDBCheckEdit
              Visible = False
            end
          end
        end
        inherited TBXDock1: TTBXDock
          Width = 247
          inherited TBXToolbar1: TTBXToolbar
            DockPos = -32
          end
        end
      end
      object pane_eliminar: TPanel
        Left = 0
        Top = 359
        Width = 263
        Height = 23
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object chec_eliminar: TdxCheckEdit
          Left = 0
          Top = 0
          Width = 260
          TabOrder = 0
          Caption = 'Eliminar'
          OnChange = chec_eliminarChange
        end
      end
    end
  end
  object pane_inferior: TPCPFrame
    Tag = 140
    Left = 0
    Top = 407
    Width = 269
    Height = 140
    Align = alBottom
    BorderWidth = 2
    Constraints.MinHeight = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Titulo_Color = 16244694
    TipoFrame = tfNinguno
    FlatBorder = True
    object shap_2: TShape
      Left = 3
      Top = 3
      Width = 263
      Height = 134
      Align = alClient
      Brush.Style = bsFDiagonal
      Pen.Style = psClear
      Visible = False
    end
    object edit_observaciones: TdxDBMemo
      Left = 3
      Top = 3
      Width = 263
      Align = alClient
      Style.BorderStyle = xbsNone
      TabOrder = 0
      DataField = 'OBSE_1'
      DataSource = data_Ventana
      Height = 134
    end
  end
  object tabl_ventana: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'CONS_REFE_FICH_DETALLE'
        DataType = ftInteger
      end
      item
        Name = 'CONS_REFE_FICHA'
        DataType = ftInteger
      end
      item
        Name = 'IMAG_1'
        DataType = ftBlob
      end
      item
        Name = 'IMAG_1_SMALL'
        DataType = ftBlob
      end
      item
        Name = 'OBSE_1'
        DataType = ftBlob
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    BeforeInsert = tabl_ventanaBeforeInsert
    BeforePost = tabl_ventanaBeforePost
    Left = 16
    Top = 224
    object tabl_ventanaCONS_REFE_FICH_DETALLE: TIntegerField
      FieldName = 'CONS_REFE_FICH_DETALLE'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_06_ESPE_CONS.CONS_REFE_FICH_DETALLE'
    end
    object tabl_ventanaCONS_REFE_FICHA: TIntegerField
      FieldName = 'CONS_REFE_FICHA'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_06_ESPE_CONS.CONS_REFE_FICHA'
    end
    object tabl_ventanaIMAG_1: TBlobField
      FieldName = 'IMAG_1'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_06_ESPE_CONS.IMAG_1'
      BlobType = ftBlob
      Size = 1
    end
    object tabl_ventanaIMAG_1_SMALL: TBlobField
      FieldName = 'IMAG_1_SMALL'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_06_ESPE_CONS.IMAG_1_SMALL'
      BlobType = ftBlob
      Size = 1
    end
    object tabl_ventanaOBSE_1: TMemoField
      FieldName = 'OBSE_1'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_06_ESPE_CONS.OBSE_1'
      BlobType = ftMemo
      Size = 5000
    end
  end
  object data_Ventana: TDataSource
    DataSet = tabl_ventana
    OnStateChange = data_VentanaStateChange
    Left = 48
    Top = 224
  end
  object quer_sele_ficha: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM PCP_REFE_FICH_06_ESPE_CONS'
      'WHERE CONS_REFE_FICH_DETALLE = :CONS_REFE_FICH_DETALLE')
    Left = 80
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_FICH_DETALLE'
        ParamType = ptInput
      end>
  end
  object quer_guar_ficha: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_Ventana
    SQL.Strings = (
      'EXECUTE PROCEDURE PRO_PCP_REFE_FICH_06_ESPE_IU'
      '(:CONS_REFE_FICH_DETALLE, '
      ':CONS_REFE_FICHA, '
      ':IMAG_1, '
      ':IMAG_1_SMALL, '
      ':OBSE_1)')
    Left = 19
    Top = 262
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_FICH_DETALLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONS_REFE_FICHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftBlob
        Name = 'IMAG_1'
        ParamType = ptUnknown
      end
      item
        DataType = ftBlob
        Name = 'IMAG_1_SMALL'
        ParamType = ptUnknown
      end
      item
        DataType = ftBlob
        Name = 'OBSE_1'
        ParamType = ptUnknown
      end>
  end
  object quer_elim_ficha: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_Ventana
    SQL.Strings = (
      'DELETE FROM '
      'PCP_REFE_FICH_06_ESPE_CONS '
      'WHERE CONS_REFE_FICH_DETALLE = :CONS_REFE_FICH_DETALLE')
    Left = 51
    Top = 262
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_FICH_DETALLE'
        ParamType = ptUnknown
      end>
  end
end
