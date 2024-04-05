inherited FN1_Refe_Pres_Empaque1: TFN1_Refe_Pres_Empaque1
  Left = 232
  Top = 131
  VertScrollBar.Range = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Materiales de Empaque'
  ClientHeight = 482
  ClientWidth = 701
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dfsSplitter1: TdfsSplitter [0]
    Left = 390
    Top = 54
    Height = 418
    Cursor = crHSplit
    Align = alLeft
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  inherited padr_shap_xp_up: TShape
    Width = 701
  end
  inherited padr_shap_xp_down: TShape
    Top = 472
    Width = 701
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 701
  end
  inherited padr_pane_arriba: TPanel
    Width = 701
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 701
    inherited padr_beve_1: TBevel
      Width = 695
    end
    inherited padr_sepa_new: TShape
      Width = 695
    end
  end
  inherited padr_pane_info: TPanel
    Top = 481
    Width = 701
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
  object PCPFrame1: TPCPFrame [7]
    Tag = 396
    Left = 0
    Top = 54
    Width = 390
    Height = 418
    Align = alLeft
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Caption = 'Imagen Material de Empaque'
    Titulo_Color = 16244694
    Boton_Visible = False
    inline ffra_fotografiaDB1: Tffra_fotografiaDB
      Left = 3
      Top = 22
      Width = 384
      Height = 393
      Align = alClient
      TabOrder = 1
      inherited fram_pane_atras: TPanel
        Width = 384
        Height = 367
        inherited fram_fotografia: TEDBImage
          Width = 374
          Height = 334
          DataField = 'IMAGEN'
          DataSource = data_ventana
        end
        inherited fram_pane_stretch: TPanel
          Top = 339
          Width = 374
          inherited fram_chec_ajustar: TdxDBCheckEdit
            DataField = 'AJUS_IMAGEN'
            DataSource = data_ventana
          end
        end
      end
      inherited TBXDock1: TTBXDock
        Width = 384
      end
    end
  end
  object PCPFrame2: TPCPFrame [8]
    Tag = 396
    Left = 400
    Top = 54
    Width = 301
    Height = 418
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
    Caption = 'Observaciones'
    Titulo_Color = 16244694
    Boton_Visible = False
    object dxDBMemo1: TdxDBMemo
      Left = 3
      Top = 22
      Width = 295
      Align = alClient
      TabOrder = 1
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 393
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 473
    Width = 701
    inherited padr_beve_abajo: TBevel
      Width = 695
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 701
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_imprimir: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_REFE_VARI_PRES_EMPAQUE'
    object Tabla_VentanaCONS_REFE_VARI_PRES_EMPAQUE: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_REFE_VARI_PRES_EMPAQUE'
      Required = True
    end
    object Tabla_VentanaCONS_REFE_VARI_PRESENTACION: TIntegerField
      DisplayLabel = 'Referencia'
      FieldName = 'CONS_REFE_VARI_PRESENTACION'
      Required = True
    end
    object Tabla_VentanaIMAGEN: TBlobField
      DisplayLabel = 'Imagen'
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object Tabla_VentanaAJUS_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar Imagen'
      FieldName = 'AJUS_IMAGEN'
    end
    object Tabla_VentanaOBSERVACIONES: TMemoField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
  end
end
