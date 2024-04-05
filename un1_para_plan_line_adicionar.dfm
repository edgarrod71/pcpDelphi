inherited fn1_para_plan_line_adicionar: Tfn1_para_plan_line_adicionar
  Left = 440
  Top = 299
  Width = 390
  Height = 160
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Asignar nueva línea'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 382
  end
  inherited padr_shap_xp_down: TShape
    Top = 123
    Width = 382
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 382
    inherited padr_barra: TTBXToolbar
      object TBXItem1: TTBXItem [7]
        Action = acti_padr_cancelar_2
      end
      inherited padr_boto_cancelar: TTBXItem
        Action = acti_padr_cancelar_2
        Visible = False
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 382
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 382
    inherited padr_sepa_new: TShape
      Width = 376
    end
  end
  inherited padr_pane_info: TPanel
    Top = 132
    Width = 382
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
    Top = 124
    Width = 382
    inherited padr_beve_abajo: TBevel
      Width = 376
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 382
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 54
    Width = 382
    Height = 69
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 8
      Top = 6
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
      Caption = 'Nombre línea:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object comb_lineas: TPCPLookUpComboEdit
      Left = 112
      Top = 8
      Width = 257
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      KeyField = 'cons_linea'
      ListField = 'nomb_linea'
      ListSource = data_lineas
      ParentCtl3D = False
      TabOrder = 0
      DirectInput = False
    end
  end
  inherited data_ventana: TDataSource
    DataSet = nil
  end
  inherited padr_acciones: TActionList
    OnUpdate = padr_accionesUpdate
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
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = False
    end
    inherited padr_acti_aceptar: TAction
      Visible = True
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
  object quer_lineas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_linea, nomb_linea'
      'from glo_lineas'
      'where cons_linea > 0'
      'and not cons_linea in'
      '(Select cons_linea from glo_plan_lineas'
      'where cons_planta = :cons_planta)'
      'order by nomb_linea')
    Left = 186
    Top = 36
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_planta'
        ParamType = ptInput
      end>
  end
  object data_lineas: TDataSource
    DataSet = quer_lineas
    Left = 218
    Top = 36
  end
  object quer_insertar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Insert into GLO_PLAN_LINEAS'
      '(cons_planta, cons_linea)'
      'Values'
      '(:cons_planta, :cons_linea)')
    Left = 250
    Top = 36
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_planta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_linea'
        ParamType = ptInput
      end>
  end
end
