inherited _FVent_Most_Imagen: T_FVent_Most_Imagen
  Left = 230
  Top = 113
  Height = 469
  Caption = 'Imagen'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 432
  end
  inherited padr_pane_info: TPanel
    Top = 441
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
  inline fram_fotografia: Tffra_fotografiaDB [6]
    Top = 54
    Width = 557
    Height = 378
    Align = alClient
    TabOrder = 6
    inherited fram_pane_atras: TPanel
      Width = 557
      Height = 352
      inherited fram_fotografia: TEDBImage
        Width = 547
        Height = 319
        OnKeyDown = ffra_fotografiaDB1fram_fotografiaKeyDown
      end
      inherited fram_pane_stretch: TPanel
        Top = 324
        Width = 547
        inherited fram_chec_ajustar: TdxDBCheckEdit
          Enabled = False
          Visible = False
          OnChange = ffra_fotografiaDB1fram_chec_ajustarChange
        end
        inherited CBAjustar: TdxCheckEdit
          StyleController = padr_estilo_chec
          OnChange = CBAjustarChange
        end
      end
    end
    inherited TBXDock1: TTBXDock
      Width = 557
    end
    inherited fram_acciones: TActionList
      inherited fram_acti_abrir: TAction
        Enabled = False
        Visible = False
      end
      inherited fram_acti_pegar: TAction
        Enabled = False
        Visible = False
      end
      inherited fram_acti_cortar: TAction
        Enabled = False
        Visible = False
      end
      inherited fram_acti_limpiar: TAction
        Enabled = False
        Visible = False
      end
      inherited fram_acti_ver_nuev_ventana: TAction
        Enabled = False
      end
    end
  end
  inherited pane_beve_abajo: TPanel [7]
    Top = 433
  end
  inherited padr_pane_principal: TPanel [8]
  end
  inherited padr_acciones: TActionList [9]
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
    inherited padr_acti_nuevo: TDataSetInsert
      Visible = False
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      Visible = False
    end
  end
  inherited padr_imag_tem1_colo: TImageList [10]
  end
  inherited Tabla_Ventana: TTable [12]
    Left = 337
    Top = 20
  end
  inherited padr_estilo: TdxEditStyleController [13]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [14]
  end
  inherited padr_esti_panel: TAdvPanelStyler [15]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [16]
  end
  inherited imag_pequenas: TImageList [17]
  end
  inherited padr_quer_consecutivo: TQuery [18]
  end
  inherited data_ventana: TDataSource [19]
    DataSet = nil
  end
  inherited Variables: TSCLPropiedadesForm [20]
  end
end
