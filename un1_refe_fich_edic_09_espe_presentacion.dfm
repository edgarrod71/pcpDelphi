inherited fn1_refe_fich_edic_09_espe_presentacion: Tfn1_refe_fich_edic_09_espe_presentacion
  Top = 138
  Width = 705
  Height = 533
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited pane_informacion: TPCPFrame
    Width = 697
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
    Tag = 457
    Width = 697
    Height = 464
    object pane_contenedor: TScrollBox
      Left = 3
      Top = 46
      Width = 691
      Height = 415
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 1
    end
    object pane_opciones: TPanel
      Left = 3
      Top = 22
      Width = 691
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object divi_1: TSCLShape
        Left = 211
        Top = 4
        Width = 1
        Height = 18
        Brush.Style = bsClear
        Pen.Color = 14467501
      end
      object labe_nume_imagenes: TLabel
        Left = 219
        Top = 6
        Width = 71
        Height = 13
        AutoSize = False
      end
      object divi_2: TSCLShape
        Left = 292
        Top = 3
        Width = 1
        Height = 18
        Brush.Style = bsClear
        Pen.Color = 14467501
      end
      object boto_nueva: TTBXButtonSCL
        Left = 2
        Top = 2
        Width = 100
        Height = 20
        BorderSize = 2
        ButtonStyle = bsFlat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 0
        Images = _fMDI.imagenesPCP
        ParentFont = False
        TabOrder = 0
        Action = acti_nuev_imagen
      end
      object boto_eliminar: TTBXButtonSCL
        Left = 108
        Top = 3
        Width = 100
        Height = 20
        BorderSize = 2
        ButtonStyle = bsFlat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 2
        Images = _fMDI.imagenesPCP
        ParentFont = False
        TabOrder = 1
        Action = acti_elim_imagen
      end
    end
  end
  inherited pane_mensaje: Tffra_mens_atencion
    Width = 697
    inherited padr_shap_top: TShape
      Width = 697
    end
    inherited padr_shap_bottom: TShape
      Width = 697
    end
    inherited padr_shap_right: TShape
      Left = 696
    end
    inherited fram_label: TAdvPanel
      Width = 695
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
  inherited padr_tabl_fich_tecnicas: TkbmMemTable
    Top = 90
  end
  inherited padr_data_fich_Tecnicas: TDataSource
    Top = 90
  end
  inherited padr_tabl_fich_Detalles: TkbmMemTable
    Top = 118
    object padr_tabl_fich_DetallesCONS_REFE_FICH_DETALLE: TIntegerField [0]
      FieldName = 'CONS_REFE_FICH_DETALLE'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_09_ESPE_PRES.CONS_REFE_FICH_DETALLE'
    end
    object padr_tabl_fich_DetallesIMAG_1: TBlobField
      FieldName = 'IMAG_1'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_09_ESPE_PRES.IMAG_1'
      BlobType = ftBlob
      Size = 1
    end
    object padr_tabl_fich_DetallesIMAG_1_SMALL: TBlobField
      FieldName = 'IMAG_1_SMALL'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_09_ESPE_PRES.IMAG_1_SMALL'
      BlobType = ftBlob
      Size = 1
    end
  end
  inherited data_tabl_fich_Detalles: TDataSource
    Top = 118
  end
  object quer_Sele_Detalle: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_FICH_DETALLE'
      'FROM PCP_REFE_FICH_09_ESPE_PRES'
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
  object Acciones: TActionList
    Images = _fMDI.imagenesPCP
    Left = 14
    Top = 149
    object acti_nuev_imagen: TAction
      Caption = 'Nueva imágen'
      ImageIndex = 0
      OnExecute = acti_nuev_imagenExecute
    end
    object acti_elim_imagen: TAction
      Caption = 'Eliminar imágen'
      ImageIndex = 2
      OnExecute = acti_elim_imagenExecute
      OnUpdate = acti_elim_imagenUpdate
    end
  end
end
