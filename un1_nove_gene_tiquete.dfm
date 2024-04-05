inherited fn1_nove_gene_tiquete: Tfn1_nove_gene_tiquete
  Left = 324
  Top = 141
  Width = 381
  Height = 463
  Caption = 'Generar tiquete'
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 373
  end
  inherited padr_shap_xp_down: TShape
    Top = 428
    Width = 373
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 373
  end
  inherited padr_pane_arriba: TPanel
    Width = 373
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 373
    inherited padr_sepa_new: TShape
      Width = 367
    end
  end
  inherited padr_pane_info: TPanel
    Top = 404
    Width = 373
    inherited _DBFecha_Creacion: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 396
    Width = 373
    inherited padr_beve_abajo: TBevel
      Width = 367
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 373
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 54
    Width = 373
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 8
      Top = 8
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
      Caption = 'Número orden:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 8
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Lote:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 112
      Top = 8
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      DirectInput = False
    end
    object PCPLookUpComboEdit2: TPCPLookUpComboEdit
      Left = 112
      Top = 28
      Width = 65
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_imprimir: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = False
    end
    inherited padr_acti_aceptar: TAction
      Enabled = False
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
    inherited padr_acti_expo_xls: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_HTML: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_arch_sepa_comas: TAction
      Enabled = False
      Visible = False
    end
  end
end
