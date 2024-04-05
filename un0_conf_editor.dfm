object fn0_conf_editor: Tfn0_conf_editor
  Left = 233
  Top = 166
  Width = 461
  Height = 360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object barr_componentes: TTBXToolbar
    Left = 16
    Top = 112
    Width = 181
    Height = 30
    BorderStyle = bsNone
    Caption = 'Componentes'
    DragHandleStyle = dhDouble
    FullSize = True
    Images = _fMDI.imagenesDisenoVentanas
    ParentShowHint = False
    ProcessShortCuts = True
    ShowHint = True
    TabOrder = 0
    object TBXItem1: TTBXItem
      Caption = 'Guardar'
      OnClick = TBXItem1Click
    end
    object TBXItem2: TTBXItem
      Caption = 'Abrir'
      OnClick = TBXItem2Click
    end
    object boto_flecha: TTBXItem
      AutoCheck = True
      Checked = True
      GroupIndex = 1
      ImageIndex = 0
    end
    object TBXSeparatorItem8: TTBXSeparatorItem
    end
    object boto_panel: TTBXItem
      AutoCheck = True
      GroupIndex = 1
      ImageIndex = 1
    end
    object boto_boton: TTBXItem
      AutoCheck = True
      GroupIndex = 1
      ImageIndex = 2
    end
  end
  object pane_insp_objetos: TTBXDockablePanel
    Left = 192
    Top = 8
    Caption = 'Inspector de objetos'
    CloseButton = False
    CloseButtonWhenDocked = False
    DockedWidth = 254
    FloatingWidth = 254
    FloatingHeight = 128
    SupportedDocks = [dkStandardDock, dkMultiDock]
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 254
      Height = 128
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 4
      TabOrder = 0
      object Inspector: TELPropertyInspector
        Left = 4
        Top = 4
        Width = 246
        Height = 120
        PropKinds = [pkEvents]
        Splitter = 80
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object ActionList1: TActionList
    Left = 152
    Top = 76
    object acti_nuevo: TAction
      Category = 'File'
      Caption = 'Nuevo'
      ImageIndex = 0
      ShortCut = 16462
    end
    object acti_vist_previa: TAction
      Category = 'Report'
      Caption = 'Vista previa'
      ImageIndex = 20
      ShortCut = 120
    end
    object acti_ver_insp_objetos: TAction
      Category = 'View'
      Caption = 'Inspector de objetos'
      ImageIndex = 21
      ShortCut = 122
    end
    object acti_abrir: TAction
      Category = 'File'
      Caption = 'Abrir'
      ImageIndex = 1
      ShortCut = 16463
    end
    object acti_guardar: TAction
      Category = 'File'
      Caption = 'Guardar'
      ImageIndex = 2
      ShortCut = 16467
    end
    object acti_copiar: TAction
      Category = 'Edit'
      Caption = 'Copiar'
      ImageIndex = 5
      ShortCut = 16451
    end
    object acti_cortar: TAction
      Category = 'Edit'
      Caption = 'Cortar'
      ImageIndex = 6
      ShortCut = 16472
    end
    object acti_pegar: TAction
      Category = 'Edit'
      Caption = 'Pegar'
      ImageIndex = 7
      ShortCut = 16470
    end
    object acti_habilitar: TAction
      Category = 'Edit'
      Caption = 'Habilitar'
    end
    object acti_eliminar: TAction
      Category = 'Edit'
      Caption = 'Eliminar'
      ImageIndex = 9
      ShortCut = 46
    end
    object acti_bloquear: TAction
      Category = 'Edit'
      Caption = 'Bloquear control'
      ImageIndex = 10
    end
    object acti_desbloquear: TAction
      Category = 'Edit'
      Caption = 'Desbloquear control'
      ImageIndex = 11
    end
    object acti_desb_todos: TAction
      Category = 'Edit'
      Caption = 'Desbloquear todos'
    end
    object acti_sele_todos: TAction
      Category = 'Edit'
      Caption = 'Seleccionar todos'
      ShortCut = 16449
    end
    object acti_alin_grid: TAction
      Category = 'Edit'
      Caption = 'Alinear a la tabla'
      ImageIndex = 12
    end
    object acti_trae_frente: TAction
      Category = 'Edit'
      Caption = 'Traer al frente'
      ImageIndex = 14
    end
    object acti_envi_atras: TAction
      Category = 'Edit'
      Caption = 'Enviar al fondo'
      ImageIndex = 13
    end
    object acti_habi_todos: TAction
      Category = 'Edit'
      Caption = 'Habilitar todos'
    end
    object acti_camb_datos: TAction
      Category = 'Report'
      Caption = 'Cambiar la fuente de datos'
      ImageIndex = 18
      ShortCut = 16505
    end
    object acti_zoom_100: TAction
      Category = 'View'
      Caption = 'Mostrar al 100%'
    end
    object acti_imprimir: TAction
      Category = 'Report'
      Caption = 'Imprimir'
      ImageIndex = 19
      ShortCut = 16464
    end
    object acti_alin_izquierda: TAction
      Category = 'Align'
      Caption = 'Alinear a la izquierda'
      ImageIndex = 27
    end
    object acti_alin_derecha: TAction
      Tag = 1
      Category = 'Align'
      Caption = 'Alinear a la derecha'
      ImageIndex = 28
    end
    object acti_alin_arriba: TAction
      Tag = 2
      Category = 'Align'
      Caption = 'Alinear al borde superior'
      ImageIndex = 29
    end
    object acti_alin_abajo: TAction
      Tag = 3
      Category = 'Align'
      Caption = 'Alinear al borde inferior'
      ImageIndex = 32
    end
    object acti_alin_espa_horizontal: TAction
      Tag = 4
      Category = 'Align'
      Caption = 'Espacios horizontales iguales'
      ImageIndex = 24
    end
    object acti_alin_espa_vertical: TAction
      Tag = 5
      Category = 'Align'
      Caption = 'Espacios verticales iguales'
      ImageIndex = 31
    end
    object acti_alin_cent_horizontal: TAction
      Tag = 6
      Category = 'Align'
      Caption = 'Alinear al centro (horizontal)'
      ImageIndex = 23
    end
    object acti_alin_cent_vertical: TAction
      Tag = 7
      Category = 'Align'
      Caption = 'Alinear al centro (vertical)'
      ImageIndex = 30
    end
    object acti_alin_cent_vent_horizontal: TAction
      Tag = 8
      Category = 'Align'
      Caption = 'Centrar horizontalmente en la ventana'
      ImageIndex = 25
    end
    object acti_alin_cent_Vent_vertical: TAction
      Tag = 9
      Category = 'Align'
      Caption = 'Centrar verticalmente en la ventana'
      ImageIndex = 22
    end
    object acti_prop_reporte: TAction
      Category = 'Report'
      Caption = 'Propiedades del reporte'
      ImageIndex = 33
      ShortCut = 123
    end
  end
  object pop_menu_diseno: TTBXPopupMenu
    Left = 152
    Top = 112
    object Enable1: TTBXItem
      Action = acti_habilitar
    end
    object N7: TTBXSeparatorItem
    end
    object Cut2: TTBXItem
      Action = acti_cortar
    end
    object Copy2: TTBXItem
      Action = acti_copiar
    end
    object Paste2: TTBXItem
      Action = acti_pegar
    end
    object Delete2: TTBXItem
      Action = acti_eliminar
    end
    object N2: TTBXSeparatorItem
    end
    object Align2: TTBXSubmenuItem
      Caption = 'Alinear'
      object actALLeft2: TTBXItem
        Action = acti_alin_izquierda
      end
      object actALRight2: TTBXItem
        Action = acti_alin_derecha
      end
      object actALHSpace2: TTBXItem
        Action = acti_alin_espa_horizontal
      end
      object actALHCenter2: TTBXItem
        Action = acti_alin_cent_horizontal
      end
      object actALHCenterWindow2: TTBXItem
        Action = acti_alin_cent_vent_horizontal
      end
      object N10: TTBXSeparatorItem
      end
      object actALTop2: TTBXItem
        Action = acti_alin_arriba
      end
      object actALBottom2: TTBXItem
        Action = acti_alin_abajo
      end
      object actALVSpace2: TTBXItem
        Action = acti_alin_espa_vertical
      end
      object actALVCenter2: TTBXItem
        Action = acti_alin_cent_vertical
      end
      object actALVCenterWindow2: TTBXItem
        Action = acti_alin_cent_Vent_vertical
      end
    end
    object AlignToGrid1: TTBXItem
      Action = acti_alin_grid
    end
    object Bringtofront1: TTBXItem
      Action = acti_trae_frente
    end
    object Sendtoback2: TTBXItem
      Action = acti_envi_atras
    end
    object N6: TTBXSeparatorItem
    end
    object Lock2: TTBXItem
      Action = acti_bloquear
    end
    object Unlock1: TTBXItem
      Action = acti_desbloquear
    end
  end
  object disenador: TELDesigner
    ShowingHints = [htControl]
    PopupMenu = pop_menu_diseno
    ClipboardFormat = 'Extension Library designer components'
    OnControlInserting = disenadorControlInserting
    OnControlInserted = disenadorControlInserted
    OnChangeSelection = disenadorChangeSelection
    Left = 120
    Top = 78
  end
end
