inherited fn2_prot_camb_estado: Tfn2_prot_camb_estado
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_info: TPanel
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
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPanel
      Caption = 'Cambio de estado (prototipos)'
    end
  end
  inherited page: TSCLPageControl
    FixedDimension = 22
    inherited dxTabSheet1: TSCLTabSheet
      inherited PCPFrame1: TPCPFrame
        Caption = 'Información del prototipo'
        inherited SCLDBLabel1: TSCLDBLabel
          Caption = 'Prototipo:'
        end
        inherited comb_codi_referencia: TPCPLookUpComboEdit
          ListSource = fram_lista.data_consulta
        end
        inherited PCPLookUpComboEdit2: TPCPLookUpComboEdit
          ListSource = fram_lista.data_consulta
        end
        inherited dxDBEdit4: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
        inherited dxDBEdit5: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
        inherited dxDBEdit6: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
        inherited dxDBEdit7: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
        inherited dxDBEdit8: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
        inherited padr_boto_menu_Referencia: TTBXButtonSCL
          DropDownMenu = _fMDI.mdi_menu_prototipos
        end
      end
      inherited PCPFrame2: TPCPFrame
        inherited dxDBMemo1: TdxDBMemo
          Height = 96
        end
        inherited dxDBEdit1: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
      end
    end
    inherited page_lista: TSCLTabSheet
      Caption = 'Listado de prototipos'
      inherited fram_lista: Tffra_list_referencias
        inherited padr_grid: TdxDBGrid
          Filter.Criteria = {00000000}
        end
        inherited consulta: TQuery
          SQL.Strings = (
            'SELECT *'
            'FROM VIS_GLO_PROTOTIPOS'
            'ORDER BY CODI_REFERENCIA')
        end
      end
    end
    inherited dxTabSheet3: TSCLTabSheet
      inherited dxDBGrid1: TdxDBGrid
        Filter.Criteria = {00000000}
      end
      inherited PCPFrame3: TPCPFrame
        inherited SCLDBLabel6: TSCLDBLabel
          Caption = 'Prototipo:'
          DataSource = fram_lista.data_consulta
        end
        inherited SCLDBLabel7: TSCLDBLabel
          DataSource = fram_lista.data_consulta
        end
        inherited dxDBEdit2: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
        inherited dxDBEdit3: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
      end
    end
  end
  inherited quer_historial: TQuery
    DataSource = fram_lista.data_consulta
  end
end
