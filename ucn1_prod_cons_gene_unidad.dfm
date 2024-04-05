inherited cn1_prod_cons_gene_unidad: Tcn1_prod_cons_gene_unidad
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Top = 154
          Height = 278
          KeyField = 'CONS_PROD_LOTE'
          TabOrder = 1
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          object padr_gridCONS_PROD_LOTE: TdxDBGridMaskColumn
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROD_LOTE'
          end
          object padr_gridNUME_LOTE: TdxDBGridMaskColumn
            Sorted = csUp
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_LOTE'
            SummaryFooterType = cstCount
            SummaryFooterField = 'CONS_PROD_ORDEN'
            SummaryFooterFormat = ',0'
          end
          object padr_gridANULADA: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Width = 54
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ANULADA'
            Descriptions.Strings = (
              'No'
              'Si')
            Images = _fMDI.imag_anulado
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              '-1'
              '1')
          end
          object padr_gridFINALIZADA: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FINALIZADO'
            Descriptions.Strings = (
              'No'
              'Si')
            Images = _fMDI.imag_finalizado
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              '-1'
              '1')
          end
          object padr_gridFECH_CREACION: TdxDBGridDateColumn
            Width = 225
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_CREACION'
          end
          object padr_gridUSUA_CREACION: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_CREACION'
          end
          object padr_gridUNIDADES: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UNIDADES'
            SummaryFooterType = cstSum
            SummaryFooterField = 'UNIDADES'
            SummaryFooterFormat = ',0'
          end
          object padr_gridFECH_ESTI_FINALIZACION: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_ESTI_FINALIZACION'
          end
          object padr_gridNOMB_PROC_FINALIZADO: TdxDBGridMaskColumn
            Width = 130
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PROC_FINALIZADO'
          end
          object padr_gridFECH_FINA_PROC_FINALIZADO: TdxDBGridDateColumn
            Width = 127
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_FINA_PROC_FINALIZADO'
          end
          object padr_gridFECH_ESTI_PROC_FINALIZADO: TdxDBGridDateColumn
            Width = 152
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_ESTI_PROC_FINALIZADO'
          end
          object padr_gridDIFE_DIAS: TdxDBGridMaskColumn
            Width = 78
            BandIndex = 0
            RowIndex = 0
            OnCustomDrawCell = padr_gridDIFE_DIASCustomDrawCell
            FieldName = 'DIFE_DIAS'
          end
          object padr_gridNOMB_PROC_ACTUAL: TdxDBGridMaskColumn
            Width = 180
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PROC_ACTUAL'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          inherited padr_barra: TTBXToolbar
            object TBXSubmenuItem1: TTBXSubmenuItem [0]
              Caption = 'Consultar'
              ImageIndex = 24
              Images = _fMDI.imag_grandes
              LinkSubitems = _fMDI.menu_produccion
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          TabOrder = 3
        end
        inherited padr_pane_sepa_1: TPanel
          TabOrder = 4
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 154
          Height = 278
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 256
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Top = 154
          Height = 278
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 256
              inherited padr_prio_impresion: TdxTreeList
                Height = 30
              end
            end
          end
        end
        object PCPFrame1: TPCPFrame
          Tag = 81
          Left = 0
          Top = 52
          Width = 556
          Height = 81
          Align = alTop
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Caption = 'Filtros de la consulta'
          Titulo_Color = 16244694
          FlatBorder = True
          object SCLDBLabel2: TSCLDBLabel
            Left = 9
            Top = 27
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
            Caption = 'No. orden:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object comb_nume_orden: TPCPLookUpComboEdit
            Left = 110
            Top = 26
            Width = 139
            Height = 21
            DropDownCount = 8
            Ctl3D = False
            KeyField = 'cons_prod_orden'
            ListField = 'nume_prod_orden'
            ListSource = data_prod_ordenes
            ParentCtl3D = False
            TabOrder = 1
            OnChange = comb_nume_ordenChange
            DirectInput = False
          end
          object pane_info_referencia: TPanel
            Left = 3
            Top = 50
            Width = 550
            Height = 28
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            Visible = False
            object SCLDBLabel1: TSCLDBLabel
              Left = 9
              Top = 1
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
              Caption = 'Cód. referencia:'
              Transparent = True
              SCLPropiedades = Variables
              ColorRequerido = clBlue
              ColorNoRequerido = clWindowText
            end
            object SCLDBLabel3: TSCLDBLabel
              Left = 273
              Top = 1
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
              Caption = 'Nombre referencia:'
              Transparent = True
              SCLPropiedades = Variables
              ColorRequerido = clBlue
              ColorNoRequerido = clWindowText
            end
            object SCLDBLabel4: TSCLDBLabel
              Left = 657
              Top = 1
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
              Caption = 'C.I.R.:'
              Transparent = True
              SCLPropiedades = Variables
              ColorRequerido = clBlue
              ColorNoRequerido = clWindowText
            end
            object dxDBEdit1: TdxDBEdit
              Left = 108
              Top = 0
              Width = 138
              Enabled = False
              TabOrder = 0
              DataField = 'CODI_REFERENCIA'
              DataSource = data_ventana
              StyleController = padr_estilo
            end
            object dxDBEdit2: TdxDBEdit
              Left = 376
              Top = 1
              Width = 273
              Enabled = False
              TabOrder = 1
              DataField = 'NOMB_REFERENCIA'
              DataSource = data_ventana
              StyleController = padr_estilo
            end
            object dxDBEdit3: TdxDBEdit
              Left = 764
              Top = 0
              Width = 123
              Enabled = False
              TabOrder = 2
              DataField = 'CODI_INTE_REFERENCIA'
              DataSource = data_ventana
              StyleController = padr_estilo
            end
            object padr_boto_menu_Referencia: TTBXButtonSCL
              Left = 249
              Top = 1
              Width = 24
              Height = 20
              AllowAllUnchecked = True
              BorderSize = 2
              ButtonStyle = bsFlat
              DropDownMenu = _fMDI.mdi_menu_referencia
              ImageIndex = 64
              Images = _fMDI.imagenesPCP
              SmartFocus = False
              TabOrder = 3
              TabStop = False
            end
          end
          object SCLButton1: TTBXButtonSCL
            Left = 252
            Top = 27
            Width = 24
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            DropDownMenu = _fMDI.mdi_menu_orde_produccion
            ImageIndex = 64
            Images = _fMDI.imagenesPCP
            SmartFocus = False
            TabOrder = 3
            TabStop = False
          end
        end
        inline pane_mens_atencion: Tffra_mens_atencion
          Top = 133
          Width = 556
          Height = 21
          TabOrder = 7
          Visible = False
          inherited padr_shap_top: TShape
            Width = 556
          end
          inherited padr_shap_bottom: TShape
            Top = 20
            Width = 556
          end
          inherited padr_shap_right: TShape
            Left = 555
            Height = 19
          end
          inherited padr_shap_left: TShape
            Height = 19
          end
          inherited fram_label: TAdvPanel
            Width = 554
            Height = 19
            Text = 
              '<IMG src="3"> No se encontraron lotes de la orden de producción ' +
              'seleccionada.  Por favor revise la liquidación de corte.'
            FullHeight = 18
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Búsqueda de ordenes de producción'
      Caption = 'Búsqueda de ordenes de producción'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    inherited padr_page_ocul_reporte: TdxTabSheet
      inherited padr_repo_fortes: Tffra_edit_reportes
        inherited TBXDock3: TTBXDock
          inherited pane_insp_objetos: TTBXDockablePanel
            inherited page: TSCLPageControl
              FixedDimension = 19
              inherited page_propiedades: TSCLTabSheet
                inherited page_prop: TSCLPageControl
                  FixedDimension = 19
                end
              end
              inherited page_campos: TSCLTabSheet
                inherited grid_camp_disponibles: TSCLDBGrid
                  Filter.Criteria = {00000000}
                end
              end
            end
          end
        end
      end
    end
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_nuevo: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_modificar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_eliminar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'Select *'
      'from CON_PCP_PROD_ORDE_UNIDAD'
      '(:PE_CONS_PROD_ORDEN)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PE_CONS_PROD_ORDEN'
        ParamType = ptInput
      end>
    object consultaCONS_PROD_ORDEN: TIntegerField
      DisplayLabel = 'Cons. orden'
      FieldName = 'CONS_PROD_ORDEN'
    end
    object consultaNUME_PROD_ORDEN: TStringField
      DisplayLabel = 'No. orden'
      FieldName = 'NUME_PROD_ORDEN'
      Size = 12
    end
    object consultaCONS_PROD_LOTE: TIntegerField
      DisplayLabel = 'Cons. lote'
      FieldName = 'CONS_PROD_LOTE'
    end
    object consultaNUME_LOTE: TIntegerField
      DisplayLabel = 'No. lote'
      FieldName = 'NUME_LOTE'
    end
    object consultaANULADA: TIntegerField
      DisplayLabel = 'Anulada'
      FieldName = 'ANULADA'
    end
    object consultaFINALIZADO: TIntegerField
      DisplayLabel = 'Finalizado'
      FieldName = 'FINALIZADO'
    end
    object consultaFECH_CREACION: TDateTimeField
      DisplayLabel = 'Fecha creación'
      FieldName = 'FECH_CREACION'
    end
    object consultaUSUA_CREACION: TStringField
      DisplayLabel = 'Usuario creación'
      FieldName = 'USUA_CREACION'
    end
    object consultaCONS_REFERENCIA: TIntegerField
      DisplayLabel = 'Cons. referencia'
      FieldName = 'CONS_REFERENCIA'
    end
    object consultaCODI_REFERENCIA: TStringField
      DisplayLabel = 'Cód. referencia'
      FieldName = 'CODI_REFERENCIA'
      Size = 12
    end
    object consultaNOMB_REFERENCIA: TStringField
      DisplayLabel = 'Nombre referencia'
      FieldName = 'NOMB_REFERENCIA'
      Size = 60
    end
    object consultaCODI_INTE_REFERENCIA: TStringField
      DisplayLabel = 'C.I.R.'
      FieldName = 'CODI_INTE_REFERENCIA'
      Size = 12
    end
    object consultaUNIDADES: TIntegerField
      DisplayLabel = 'Unidades'
      FieldName = 'UNIDADES'
      DisplayFormat = ',0'
    end
    object consultaNOMB_PROC_FINALIZADO: TStringField
      DisplayLabel = 'Ultimo proceso'
      FieldName = 'NOMB_PROC_FINALIZADO'
      Size = 60
    end
    object consultaNOMB_PROC_ACTUAL: TStringField
      DisplayLabel = 'Proceso actual'
      FieldName = 'NOMB_PROC_ACTUAL'
      Size = 60
    end
    object consultaFECH_FINA_PROC_FINALIZADO: TDateTimeField
      DisplayLabel = 'Fecha real último proceso'
      FieldName = 'FECH_FINA_PROC_FINALIZADO'
    end
    object consultaFECH_ESTI_PROC_FINALIZADO: TDateTimeField
      DisplayLabel = 'Fecha estimada último proceso'
      FieldName = 'FECH_ESTI_PROC_FINALIZADO'
    end
    object consultaFECH_ESTI_FINALIZACION: TDateTimeField
      DisplayLabel = 'Fecha estimada'
      FieldName = 'FECH_ESTI_FINALIZACION'
    end
    object consultaDIFE_DIAS: TIntegerField
      DisplayLabel = 'Diferencia días'
      FieldName = 'DIFE_DIAS'
    end
  end
  inherited padr_popu_vist_actual: TTBXPopupMenu
    Left = 586
    Top = 57
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 554
    Top = 58
  end
  inherited padr_pop_grid: TTBXPopupMenu
    object TBXSubmenuItem2: TTBXSubmenuItem [0]
      Caption = 'Consultar'
      ImageIndex = 64
      Images = _fMDI.imagenesPCP
      LinkSubitems = _fMDI.menu_produccion
    end
  end
  object quer_prod_ordenes: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_prod_orden, nume_prod_orden'
      'from PCP_PROD_ORDENES'
      'Order by nume_prod_orden')
    Left = 664
    Top = 63
  end
  object data_prod_ordenes: TDataSource
    DataSet = quer_prod_ordenes
    Left = 696
    Top = 63
  end
end
