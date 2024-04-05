inherited fn1_refe_list_mate_copiar: Tfn1_refe_list_mate_copiar
  Left = 85
  Top = 115
  VertScrollBar.Range = 0
  ActiveControl = fram_sele_referencia.comb_codi_referencia
  BorderStyle = bsDialog
  Caption = 'Copiar lista de materiales'
  ClientHeight = 185
  ClientWidth = 519
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 519
  end
  inherited padr_shap_xp_down: TShape
    Top = 184
    Width = 519
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 519
  end
  inherited padr_pane_arriba: TPanel
    Width = 519
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 519
    inherited padr_beve_1: TBevel
      Width = 513
    end
    inherited padr_sepa_new: TShape
      Width = 513
    end
  end
  inherited padr_pane_info: TPanel
    Top = 183
    Width = 519
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
  inline fram_sele_referencia: Tffra_sele_refe_variacion [6]
    Top = 104
    Width = 519
    Height = 71
    Align = alClient
    TabOrder = 6
    OnResize = fram_sele_referenciaResize
    inherited fram_pane_sele_referencia: TPCPFrame
      Width = 519
      Height = 225
      Caption = 'Referencia de orígen'
      inherited fram_pane_referencia: TPanel
        Width = 515
        Height = 34
        inherited SCLDBLabel1: TSCLDBLabel
          DataSource = data_ventana
          DataField = 'cons_referencia'
          Field = 'cons_referencia'
        end
        inherited SCLDBLabel3: TSCLDBLabel
          Left = 269
          DataSource = data_ventana
          DataField = 'cons_refe_variacion'
          Field = 'cons_refe_variacion'
        end
        inherited comb_codi_referencia: TPCPLookUpComboEdit
          DataField = 'cons_referencia'
          DataSource = data_ventana
        end
        inherited comb_variacion: TPCPLookUpComboEdit
          Left = 371
          DataField = 'cons_refe_variacion'
          DataSource = data_ventana
        end
      end
      inherited fram_pane_informacion: TPCPFrame
        Top = 55
        Width = 515
        Height = 168
        Caption = ' '
        inherited SCLDBLabel9: TSCLDBLabel
          Left = 270
        end
        inherited SCLDBLabel11: TSCLDBLabel
          Left = 10
          Top = 68
        end
        inherited SCLDBLabel12: TSCLDBLabel
          Left = 270
          Top = 68
        end
        inherited SCLDBLabel10: TSCLDBLabel
          Left = 10
          Top = 44
        end
        inherited SCLDBLabel4: TSCLDBLabel
          Top = 98
        end
        inherited SCLDBLabel5: TSCLDBLabel
          Top = 99
        end
        inherited SCLDBLabel6: TSCLDBLabel
          Left = 10
          Top = 123
        end
        inherited dxDBEdit4: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit6: TdxDBEdit
          Left = 372
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit7: TdxDBEdit
          Left = 112
          Top = 68
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit8: TdxDBEdit
          Left = 372
          Top = 68
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit5: TdxDBEdit
          Left = 112
          Top = 44
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit1: TdxDBEdit
          Top = 98
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit2: TdxDBEdit
          Top = 99
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit3: TdxDBEdit
          Left = 112
          Top = 123
          StyleController = padr_estilo
          StoredValues = 64
        end
      end
    end
  end
  object PCPFrame1: TPCPFrame [7]
    Tag = 50
    Left = 0
    Top = 54
    Width = 519
    Height = 50
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
    TabOrder = 7
    Caption = 'Referencia de destino'
    Titulo_Color = 16244694
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 25
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
      Caption = 'Referencia:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'cons_referencia'
      Field = 'cons_referencia'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 270
      Top = 25
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Variación:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'cons_referencia'
      Field = 'cons_referencia'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 25
      Width = 130
      Enabled = False
      TabOrder = 1
      DataField = 'codi_referencia'
      DataSource = data_origen
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 372
      Top = 25
      Width = 130
      Enabled = False
      TabOrder = 2
      DataField = 'nomb_refe_variacion'
      DataSource = data_origen
      StyleController = padr_estilo
    end
  end
  inherited pane_beve_abajo: TPanel [8]
    Top = 175
    Width = 519
    inherited padr_beve_abajo: TBevel
      Width = 513
    end
  end
  inherited padr_pane_principal: TPanel [9]
    Width = 519
  end
  inherited Variables: TSCLPropiedadesForm [10]
  end
  inherited Tabla_Ventana: TTable [11]
  end
  inherited padr_estilo: TdxEditStyleController [12]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [13]
  end
  inherited padr_esti_panel: TAdvPanelStyler [14]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [15]
  end
  inherited imag_pequenas: TImageList [16]
  end
  inherited padr_quer_consecutivo: TQuery [17]
  end
  inherited padr_imag_tem1_colo: TImageList [18]
  end
  inherited padr_acciones: TActionList [19]
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_imprimir: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_ayuda: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_salir: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Enabled = True
    end
    inherited acti_padr_cancelar_2: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
      Visible = False
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = False
      Visible = False
    end
  end
  inherited data_ventana: TDataSource [20]
    DataSet = myTabla_Ventana
  end
  inherited Imagenes_Botones_Pequenos: TImageList [21]
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_referencia'
        DataType = ftInteger
      end
      item
        Name = 'cons_refe_variacion'
        DataType = ftInteger
      end>
    Left = 218
    Top = 4
    object myTabla_Ventanacons_referencia: TIntegerField
      FieldName = 'cons_referencia'
    end
    object myTabla_Ventanacons_refe_variacion: TIntegerField
      FieldName = 'cons_refe_variacion'
    end
  end
  object data_origen: TDataSource
    Left = 218
    Top = 36
  end
  object quer_importar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Execute procedure '
      'PRO_PCP_REFE_MATE_IMPORTAR'
      '(:pe_cons_refe_origen, :pe_cons_refe_vari_origen,'
      ':pe_cons_refe_destino, :pe_cons_refe_vari_destino)')
    Left = 256
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pe_cons_refe_origen'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pe_cons_refe_vari_origen'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pe_cons_refe_destino'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pe_cons_refe_vari_destino'
        ParamType = ptInput
      end>
  end
end
