inherited fn1_refe_fich_edic_05_espe_empaque: Tfn1_refe_fich_edic_05_espe_empaque
  Height = 379
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pane_informacion: TPCPFrame
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
    Tag = 303
    Height = 310
    object Panel1: TPanel
      Left = 3
      Top = 22
      Width = 698
      Height = 285
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      OnResize = Panel1Resize
      inline pane_imagen: Tffra_fotografiaDB
        Left = 120
        Top = 40
        Width = 451
        Height = 191
        inherited fram_pane_atras: TPanel
          Width = 451
          Height = 165
          inherited fram_fotografia: TEDBImage
            Width = 441
            Height = 132
            DataField = 'IMAG_1'
            DataSource = data_tabl_fich_Detalles
          end
          inherited fram_pane_stretch: TPanel
            Top = 137
            Width = 441
            inherited fram_chec_ajustar: TdxDBCheckEdit
              Visible = False
            end
          end
        end
        inherited TBXDock1: TTBXDock
          Width = 451
        end
      end
    end
  end
  inherited pane_mensaje: Tffra_mens_atencion
    inherited fram_label: TAdvPanel
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
    FieldDefs = <
      item
        Name = 'CONS_REFE_FICHA'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    BeforePost = padr_tabl_fich_DetallesBeforePost
    object padr_tabl_fich_DetallesIMAG_1: TBlobField
      FieldName = 'IMAG_1'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_05_ESPE_EMPAQUE.IMAG_1'
      BlobType = ftBlob
      Size = 1
    end
    object padr_tabl_fich_DetallesIMAG_1_SMALL: TBlobField
      FieldName = 'IMAG_1_SMALL'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_05_ESPE_EMPAQUE.IMAG_1_SMALL'
      BlobType = ftBlob
      Size = 1
    end
  end
  object quer_Sele_Detalle: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM PCP_REFE_FICH_05_ESPE_EMPAQUE'
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
      'EXECUTE PROCEDURE PRO_PCP_REFE_FICH_05_ESPE_IU'
      '(:CONS_REFE_FICHA, '
      ':IMAG_1, '
      ':IMAG_1_SMALL)')
    Left = 564
    Top = 89
    ParamData = <
      item
        DataType = ftInteger
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
      end>
  end
end
