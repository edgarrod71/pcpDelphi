inherited fn2_come_clientes1: Tfn2_come_clientes1
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
  inherited pagina: TdxPageControl
    inherited dxTabSheet1: TdxTabSheet
      inherited PCPFrame1: TPCPFrame
        inherited dxDBEditD: TdxDBEdit
          Height = 21
        end
        inherited dxDBEdit2: TdxDBEdit
          Height = 21
        end
      end
      inherited PCPFrame2: TPCPFrame
        inherited dxDBEditJ: TdxDBEdit
          Height = 21
        end
        inherited dxDBEditK: TdxDBEdit
          Height = 21
        end
        inherited dxDBEditL: TdxDBEdit
          Height = 21
        end
        inherited dxDBEditM: TdxDBEdit
          Height = 21
        end
        inherited dxDBEditN: TdxDBEdit
          Height = 21
        end
        inherited dxDBEditO: TdxDBEdit
          Height = 21
        end
        inherited dxDBEditP: TdxDBEdit
          Height = 21
        end
      end
    end
    inherited page_contactos: TdxTabSheet
      inherited fram_contactos: TFFra_Contactos
        PopupMenu = fram_contactos.popu_contactos
        inherited grid_contactos: TdxDBGrid
          Filter.Criteria = {00000000}
        end
        inherited Tabla_contactos: TTable
          MasterSource = data_ventana
        end
        inherited popu_contactos: TTBXPopupMenu
          inherited TBXItem3: TTBXItem
            Images = imag_pequenas
          end
          inherited TBXItem2: TTBXItem
            Images = imag_pequenas
          end
          inherited TBXItem1: TTBXItem
            Images = imag_pequenas
          end
        end
        inherited ActionList1: TActionList
          Images = imag_pequenas
        end
      end
      inherited TBXDock1: TTBXDock
        inherited TBXToolbar1: TTBXToolbar
          inherited TBXItem3: TTBXItem
            Action = fram_contactos.Acti_Nuev_Contacto
          end
          inherited TBXItem2: TTBXItem
            Action = fram_contactos.Acti_Modi_Contacto
          end
          inherited TBXItem1: TTBXItem
            Action = fram_contactos.Acti_Elim_Contacto
          end
        end
      end
    end
    inherited page_historial: TdxTabSheet
      inherited ffra_historialDB1: Tffra_historialDB
        inherited fram_pane: TPanel
          inherited fram_grid_historial: TdxDBGrid
            Filter.Criteria = {00000000}
          end
          inherited TBXDock1: TTBXDock
            inherited TBXToolbar1: TTBXToolbar
              inherited TBXItem4: TTBXItem
                Images = imag_pequenas
              end
              inherited TBXItem5: TTBXItem
                Images = imag_pequenas
              end
              inherited TBXItem6: TTBXItem
                Images = imag_pequenas
              end
            end
          end
        end
        inherited data_historial: TDataSource
          DataSet = Tabla_Historial
        end
        inherited fram_acciones: TActionList
          Images = imag_pequenas
        end
        inherited pop_grid_anotaciones: TTBXPopupMenu
          Images = imag_pequenas
          inherited TBXItem1: TTBXItem
            Images = imag_pequenas
          end
          inherited TBXItem2: TTBXItem
            Images = imag_pequenas
          end
          inherited TBXItem3: TTBXItem
            Images = imag_pequenas
          end
        end
      end
    end
    inherited dxTabSheet2: TdxTabSheet
      inherited Grid_facturar: TdxDBGrid
        Filter.Criteria = {00000000}
      end
    end
    inherited dxTabSheet3: TdxTabSheet
      inherited Grid_despachar: TdxDBGrid
        Filter.Criteria = {00000000}
        inherited Grid_despacharIDEN_DESPACHAR_A: TdxDBGridMaskColumn
          Sorted = csUp
        end
      end
    end
  end
  inherited Panel1: TPanel
    inherited dxDBEditA: TdxDBEdit
      Height = 21
    end
    inherited dxDBEditB: TdxDBEdit
      Height = 21
      StoredValues = 2
    end
    inherited dxDBEditC: TdxDBEdit
      OnEnter = nil
      Height = 21
    end
    inherited dxDBEdit1: TdxDBEdit
      Height = 21
    end
  end
  inherited tabl_tipo_tercero: TTable
    TableName = 'PCP_TERCEROS'
  end
  inherited quer_terc_existe: TQuery
    SQL.Strings = (
      'Select cons_tercero, nomb_tercero'
      'from GLO_TERCEROS'
      'where codi_tercero = :codi_tercero'
      'and cons_tercero not in'
      '(Select cons_Tercero from pcp_terceros'
      'where cons_tipo_tercero = :cons_tipo_tercero)')
  end
end
