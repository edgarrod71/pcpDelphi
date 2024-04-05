inherited fcn1_prod_cons_maes_lotes: Tfcn1_prod_cons_maes_lotes
  Left = 102
  Top = 103
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        object dfsSplitter1: TdfsSplitter [0]
          Left = 0
          Top = 399
          Width = 556
          Height = 10
          Cursor = crVSplit
          Align = alBottom
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        inherited padr_grid: TSCLDBGrid
          Top = 107
          Height = 292
          KeyField = 'CONS_PROD_LOTE'
          SummaryGroups = <
            item
              DefaultGroup = False
              SummaryItems = <>
              Name = 'padr_summary_grid'
            end
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  SummaryField = 'NUME_LOTE'
                  SummaryFormat = 'Lotes : ,0'
                  SummaryType = cstCount
                end
                item
                  SummaryField = 'UNIDADES'
                  SummaryFormat = 'Unidades : ,0'
                  SummaryType = cstSum
                end>
              Name = 'padr_gridSummaryGroup2'
            end>
          TabOrder = 1
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          object padr_gridCONS_PROD_ORDEN: TdxDBGridMaskColumn
            Visible = False
            Width = 55
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROD_ORDEN'
          end
          object padr_gridNUME_PROD_ORDEN: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_PROD_ORDEN'
            SummaryFooterType = cstCount
            SummaryFooterField = 'CONS_PROD_ORDEN'
            SummaryFooterFormat = ',0'
          end
          object padr_gridCONS_PROD_LOTE: TdxDBGridMaskColumn
            Visible = False
            Width = 55
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROD_LOTE'
          end
          object padr_gridNUME_LOTE: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_LOTE'
          end
          object padr_gridANULADA: TdxDBGridImageColumn
            Alignment = taRightJustify
            MinWidth = 16
            Width = 64
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
              ''
              '1')
          end
          object padr_gridFINALIZADO: TdxDBGridImageColumn
            Alignment = taLeftJustify
            MinWidth = 16
            Width = 73
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
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_CREACION'
          end
          object padr_gridUSUA_CREACION: TdxDBGridMaskColumn
            Visible = False
            Width = 111
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_CREACION'
          end
          object padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn
            Visible = False
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFERENCIA'
          end
          object padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFERENCIA'
          end
          object padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn
            Width = 151
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFERENCIA'
          end
          object padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_INTE_REFERENCIA'
          end
          object padr_gridUNIDADES: TdxDBGridMaskColumn
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UNIDADES'
            SummaryFooterType = cstSum
            SummaryFooterField = 'UNIDADES'
            SummaryFooterFormat = ',0'
          end
          object padr_gridFECH_ESTI_FINALIZACION: TdxDBGridDateColumn
            Width = 155
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_ESTI_FINALIZACION'
          end
          object padr_gridNOMB_PROC_FINALIZADO: TdxDBGridMaskColumn
            Visible = False
            Width = 325
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PROC_FINALIZADO'
          end
          object padr_gridNOMB_PROC_ACTUAL: TdxDBGridMaskColumn
            Width = 174
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PROC_ACTUAL'
          end
          object padr_gridFECH_FINA_PROC_FINALIZADO: TdxDBGridDateColumn
            Visible = False
            Width = 114
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_FINA_PROC_FINALIZADO'
          end
          object padr_gridFECH_ESTI_PROC_FINALIZADO: TdxDBGridDateColumn
            Visible = False
            Width = 135
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_ESTI_PROC_FINALIZADO'
          end
          object padr_gridDIFE_DIAS: TdxDBGridMaskColumn
            Visible = False
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIFE_DIAS'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          inherited padr_barra: TTBXToolbar
            object TBXSubmenuItem1: TTBXSubmenuItem [0]
              Caption = 'Consultar'
              ImageIndex = 25
              Images = _fMDI.imag_grandes
              LinkSubitems = _fMDI.menu_produccion
            end
            inherited padr_boto_nuevo: TTBXItem
              Action = nil
              Caption = 'Planeación de órdenes de trabajo'
              Hint = ''
              ImageIndex = -1
              Images = _fMDI.imag_grandes
              ShortCut = 0
              Visible = False
            end
            object boto_Finalizar: TTBXItem [8]
              Action = acti_camb_finalizada
              ImageIndex = 5
              Images = _fMDI.imag_general32
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
          Top = 107
          Height = 292
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 270
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Top = 107
          Height = 292
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 270
              inherited padr_prio_impresion: TdxTreeList
                Height = 44
              end
            end
          end
        end
        object pane_historial: TPCPFrame
          Tag = 190
          Left = 0
          Top = 409
          Width = 556
          Height = 23
          Align = alBottom
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Caption = 'Historial'
          Titulo_Color = 16244694
          Titulo_Comprimido = True
          BorderWidthIn = 4
          FlatBorder = True
          inline fram_historial: Tffra_historialDB
            Left = 7
            Top = 26
            Width = 542
            Height = 157
            Align = alClient
            TabOrder = 1
            inherited fram_pane: TPanel
              Width = 542
              Height = 157
              inherited fram_grid_historial: TdxDBGrid
                Width = 542
                Height = 131
                Filter.Criteria = {00000000}
              end
              inherited TBXDock1: TTBXDock
                Width = 542
              end
            end
            inherited data_historial: TDataSource
              DataSet = tabl_historial
            end
          end
        end
        object PCPFrame1: TPCPFrame
          Tag = 55
          Left = 0
          Top = 52
          Width = 556
          Height = 55
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
            Ctl3D = True
            KeyField = 'cons_prod_orden'
            ListField = 'nume_prod_orden'
            ListSource = data_prod_ordenes
            ParentCtl3D = False
            TabOrder = 1
            OnChange = comb_nume_ordenChange
            DirectInput = False
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
            TabOrder = 2
            TabStop = False
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Maestro de lotes de producción'
      Caption = 'Maestro de lotes de producción'
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
      OnUpdate = padr_acti_eliminarUpdate
    end
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited consulta: TQuery
    BeforeOpen = consultaBeforeOpen
    SQL.Strings = (
      'Select * from'
      'CON_PCP_PROD_ORDE_FECHA(NULL, NULL)')
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
      DisplayLabel = 'Anulado'
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
    Top = 209
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NA'
    CamposDeBusqueda = 'NA'
    TablaMaestra = 'NA'
    Left = 106
    Top = 202
  end
  inherited padr_pop_grid: TTBXPopupMenu
    object TBXSubmenuItem2: TTBXSubmenuItem [0]
      Caption = 'Consultar'
      ImageIndex = 64
      Images = _fMDI.imagenesPCP
      LinkSubitems = _fMDI.menu_produccion
    end
    object TBXItem2: TTBXItem [1]
      Action = acti_camb_finalizada
      ImageIndex = 69
      Images = _fMDI.imagenesPCP
    end
    inherited padr_boto_nuevo2: TTBXItem
      Action = nil
      Caption = 'Planeación de órdenes de trabajo'
      Enabled = False
      Hint = ''
      Images = _fMDI.imagenesPCP
      ShortCut = 0
      Visible = False
    end
  end
  object quer_eliminar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Execute procedure'
      'PRO_PCP_PROD_ORDE_LOTE_ELIMINAR'
      '(:PE_CONS_PROD_LOTE, 1)')
    Left = 640
    Top = 17
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PE_CONS_PROD_LOTE'
        ParamType = ptInput
      end>
  end
  object acti_ventana: TActionList
    OnUpdate = acti_ventanaUpdate
    Left = 710
    Top = 173
    object acti_camb_finalizada: TAction
      Caption = 'Cambiar estado FINALIZADA'
      OnExecute = acti_camb_finalizadaExecute
    end
  end
  object quer_anular: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Update PCP_PROD_LOTES'
      'Set ANULADA = :PE_ANULADA'
      'WHERE CONS_PROD_LOTE = :PE_CONS_PROD_LOTE')
    Left = 542
    Top = 229
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PE_ANULADA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PROD_LOTE'
        ParamType = ptInput
      end>
  end
  object quer_finalizar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Update PCP_PROD_LOTES'
      'Set FINALIZADO = :PE_FINALIZADA'
      'WHERE CONS_PROD_LOTE = :PE_CONS_PROD_LOTE')
    Left = 574
    Top = 229
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PE_FINALIZADA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PROD_LOTE'
        ParamType = ptInput
      end>
  end
  object tabl_historial: TTable
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_PROD_ORDEN'
    MasterFields = 'CONS_PROD_ORDEN'
    MasterSource = data_ventana
    TableName = 'PCP_PROD_ORDE_HISTORIAL'
    Left = 158
    Top = 428
    object tabl_historialCONS_ANOTACION: TIntegerField
      FieldName = 'CONS_ANOTACION'
      Required = True
    end
    object tabl_historialCONS_PROD_ORDEN: TIntegerField
      FieldName = 'CONS_PROD_ORDEN'
      Required = True
    end
    object tabl_historialTEXT_ANOTACION: TStringField
      FieldName = 'TEXT_ANOTACION'
      Required = True
      Size = 240
    end
    object tabl_historialFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_historialUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
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
