inherited fN1_Para_line_secciones_adicionar: TfN1_Para_line_secciones_adicionar
  Left = 315
  Top = 241
  Width = 356
  Height = 153
  BorderIcons = [biSystemMenu]
  Caption = 'Adicionar sección a una línea'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 348
  end
  inherited padr_shap_xp_down: TShape
    Top = 125
    Width = 348
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 348
    inherited padr_barra: TTBXToolbar
      object TBXItem1: TTBXItem [7]
        Action = acti_padr_cancelar_2
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 348
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 348
    inherited padr_sepa_new: TShape
      Width = 342
    end
  end
  inherited padr_pane_info: TPanel
    Top = 124
    Width = 348
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
    Top = 116
    Width = 348
    inherited padr_beve_abajo: TBevel
      Width = 342
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 348
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 54
    Width = 348
    Height = 62
    Align = alClient
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
      Caption = 'Nombre sección:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object comb_Seccion: TPCPLookUpComboEdit
      Left = 112
      Top = 8
      Width = 225
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      KeyField = 'cons_seccion'
      ListField = 'nomb_seccion'
      ListSource = data_secciones
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
  object quer_secciones: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_seccion, nomb_seccion'
      'from glo_secciones'
      'where cons_seccion> 0'
      'and not'
      ' cons_seccion in ('
      'Select cons_Seccion from glo_line_secciones'
      'where cons_plan_linea = :cons_plan_linea)'
      'order by nomb_seccion')
    Left = 144
    Top = 62
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_plan_linea'
        ParamType = ptInput
      end>
  end
  object data_secciones: TDataSource
    DataSet = quer_secciones
    Left = 176
    Top = 62
  end
  object quer_insertar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Insert into glo_line_secciones'
      '(cons_seccion, cons_plan_linea)'
      'values'
      '(:cons_seccion, :cons_plan_linea)')
    Left = 208
    Top = 62
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_seccion'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_plan_linea'
        ParamType = ptInput
      end>
  end
end
