inherited fn1_prod_dise_tiquetes1: Tfn1_prod_dise_tiquetes1
  Height = 426
  Caption = 'Diseño de tiquetes (producción)'
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 390
  end
  inherited padr_pane_info: TPanel
    Top = 389
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
    Top = 391
  end
  object PCPFrame1: TPCPFrame [8]
    Tag = 57
    Left = 0
    Top = 54
    Width = 557
    Height = 57
    Align = alTop
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Caption = 'Información del tiquete'
    Titulo_Color = 16244694
    FlatBorder = True
    object SCLDBLabel1: TSCLDBLabel
      Left = 8
      Top = 28
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
      FocusControl = edit_nombre
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nombre formato:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object edit_nombre: TdxDBEdit
      Left = 110
      Top = 28
      Width = 249
      TabOrder = 1
      DataField = 'NOMB_USUA_INFORME'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  object pane_diseno: TPCPFrame [9]
    Tag = 271
    Left = 0
    Top = 111
    Width = 557
    Height = 278
    Align = alClient
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Visible = False
    Caption = 'Diseño del tiquete'
    Titulo_Color = 16244694
    FlatBorder = True
    inline fram_edicion: Tffra_edit_reportes
      Left = 3
      Top = 22
      Width = 551
      Height = 253
      Align = alClient
      TabOrder = 1
      inherited TBXDock1: TTBXDock
        Width = 551
        inherited barr_edicion: TTBXToolbar
          Left = 36
          inherited comb_dataSources: TdxPickEdit
            Left = 253
          end
        end
        inherited TBXToolbar2: TTBXToolbar
          Left = 302
          DockPos = 280
        end
      end
      inherited TBXDock2: TTBXDock
        Height = 227
      end
      inherited pane_contenedor: TPCPFrame
        Tag = 186
        Width = 181
        Height = 227
        inherited ELDesignPanel1: TELDesignPanel
          Width = 167
          Height = 213
        end
      end
      inherited TBXDock3: TTBXDock
        Left = 216
        Height = 227
        inherited pane_insp_objetos: TTBXDockablePanel
          inherited page: TSCLPageControl
            Height = 207
            FixedDimension = 19
            inherited page_propiedades: TSCLTabSheet
              inherited page_prop: TSCLPageControl
                Height = 184
                FixedDimension = 19
                inherited page_labels: TSCLTabSheet
                  inherited scro_box: TScrollBox
                    Height = 161
                  end
                end
              end
            end
            inherited page_campos: TSCLTabSheet
              inherited grid_camp_disponibles: TSCLDBGrid
                Filter.Criteria = {00000000}
              end
            end
            inherited page_avanzado: TSCLTabSheet
              inherited PropInsp: TELPropertyInspector
                Height = 83
              end
            end
          end
        end
      end
      inherited ActionList1: TActionList
        inherited acti_nuevo: TAction
          Enabled = False
          Visible = False
        end
        inherited acti_vist_previa: TAction
          Enabled = False
          Visible = False
        end
        inherited acti_abrir: TAction
          Enabled = False
          Visible = False
        end
        inherited acti_guardar: TAction
          Enabled = False
          Visible = False
        end
        inherited acti_imprimir: TAction
          Enabled = False
          Visible = False
        end
        inherited acti_abri_repo_para_editar: TAction
          Enabled = False
          Visible = False
        end
      end
      inherited ELDesigner1: TELDesigner
        OnModified = fram_edicionELDesigner1Modified
      end
    end
  end
  inherited Tabla_Ventana: TTable
    Filter = 'IDEN_VENTANA=220500'
    Filtered = True
    TableName = 'SIS_USUA_INFORMES'
    Left = 252
    Top = 6
    object Tabla_VentanaCONS_USUA_INFORME: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_USUA_INFORME'
      Required = True
    end
    object Tabla_VentanaCONS_USUA_MODULO: TIntegerField
      FieldName = 'CONS_USUA_MODULO'
      Required = True
    end
    object Tabla_VentanaIDEN_VENTANA: TIntegerField
      FieldName = 'IDEN_VENTANA'
    end
    object Tabla_VentanaNOMB_USUA_INFORME: TStringField
      FieldName = 'NOMB_USUA_INFORME'
      Required = True
      Size = 100
    end
    object Tabla_VentanaCONTROLES: TBlobField
      FieldName = 'CONTROLES'
      BlobType = ftBlob
      Size = 1
    end
    object Tabla_VentanaORDE_1: TStringField
      FieldName = 'ORDE_1'
      Size = 60
    end
    object Tabla_VentanaORDE_ASCE_1: TIntegerField
      FieldName = 'ORDE_ASCE_1'
    end
    object Tabla_VentanaORDE_2: TStringField
      FieldName = 'ORDE_2'
      Size = 60
    end
    object Tabla_VentanaORDE_ASCE_2: TIntegerField
      FieldName = 'ORDE_ASCE_2'
    end
    object Tabla_VentanaORDE_3: TStringField
      FieldName = 'ORDE_3'
      Size = 60
    end
    object Tabla_VentanaORDE_ASCE_3: TIntegerField
      FieldName = 'ORDE_ASCE_3'
    end
    object Tabla_VentanaORDE_EJECUCION: TIntegerField
      FieldName = 'ORDE_EJECUCION'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  object tabl_diseno: TTable
    AfterInsert = Tabla_VentanaAfterInsert
    BeforePost = Tabla_VentanaBeforePost
    AfterPost = Tabla_VentanaAfterPost
    AfterScroll = Tabla_VentanaAfterScroll
    DatabaseName = 'PCPLocal'
    TableName = 'tmpTiqu_fabricacion.DB'
    Left = 249
    Top = 68
    object IntegerField1: TIntegerField
      FieldName = 'cons_tabla'
    end
    object StringField1: TStringField
      FieldName = 'codi_barras'
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'nume_prod_orden'
      Size = 12
    end
    object StringField3: TStringField
      FieldName = 'codi_referencia'
      Size = 12
    end
    object IntegerField2: TIntegerField
      FieldName = 'nume_paquete'
    end
    object IntegerField3: TIntegerField
      FieldName = 'secu_talla'
    end
    object StringField4: TStringField
      FieldName = 'talla'
      Size = 12
    end
    object IntegerField4: TIntegerField
      FieldName = 'secu_color'
    end
    object StringField5: TStringField
      FieldName = 'nomb_color'
      Size = 60
    end
    object FloatField1: TFloatField
      FieldName = 'tiem_operacion'
    end
    object IntegerField5: TIntegerField
      FieldName = 'cant_unidades'
    end
    object FloatField2: TFloatField
      FieldName = 'tiem_paquete'
    end
    object StringField6: TStringField
      FieldName = 'codi_recu_familia'
      Size = 12
    end
    object IntegerField6: TIntegerField
      FieldName = 'secu_operacion'
    end
    object StringField7: TStringField
      FieldName = 'codi_operacion'
      Size = 12
    end
    object StringField8: TStringField
      FieldName = 'nomb_operacion'
      Size = 30
    end
    object StringField9: TStringField
      FieldName = 'nume_lote'
      Size = 12
    end
  end
  object quer_modulo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT * FROM FUN_SIS_USUA_MODULOS_IU_INFO'
      '(:NOMB_MODULO)')
    Left = 280
    Top = 68
    ParamData = <
      item
        DataType = ftString
        Name = 'NOMB_MODULO'
        ParamType = ptInput
      end>
  end
end
