inherited fn1_prod_padr_child: Tfn1_prod_padr_child
  Left = 105
  Top = 144
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Top = 144
          Height = 288
          Filter.Criteria = {00000000}
        end
        inherited padr_pane_sepa_2: TPanel
          Top = 141
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 144
          Height = 288
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 266
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Top = 144
          Height = 288
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 266
              inherited padr_prio_impresion: TdxTreeList
                Height = 40
              end
            end
          end
        end
        object padr_fram_informacion: TPCPFrame
          Tag = 92
          Left = 0
          Top = 49
          Width = 556
          Height = 92
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
          Caption = 'Información de la orden de producción'
          Titulo_Color = 16244694
          FlatBorder = True
          object padr_SCLDBLabel1: TSCLDBLabel
            Left = 10
            Top = 24
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
            FocusControl = padr_dxDBEdit1
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
          object padr_SCLDBLabel2: TSCLDBLabel
            Left = 530
            Top = 26
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
            FocusControl = padr_dxDBEdit2
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha creación:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object padr_SCLDBLabel3: TSCLDBLabel
            Left = 10
            Top = 44
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
            FocusControl = padr_dxDBEdit3
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Usuario:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object padr_scllabel4: TSCLDBLabel
            Left = 270
            Top = 44
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
            FocusControl = padr_dxDBEdit4
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Referencia:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object padr_scllabel5: TSCLDBLabel
            Left = 530
            Top = 44
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
            FocusControl = padr_dxDBEdit5
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
          object padr_scllabel6: TSCLDBLabel
            Left = 10
            Top = 64
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
            FocusControl = padr_dxDBEdit6
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Variación:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object padr_scllabel7: TSCLDBLabel
            Left = 270
            Top = 64
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
            FocusControl = padr_dxDBEdit7
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
          object padr_labe_nume_lote: TSCLDBLabel
            Left = 270
            Top = 24
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
            FocusControl = padr_comb_nume_lote
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Lote:'
            Transparent = True
            Visible = False
            SCLPropiedades = Variables
            ColorRequerido = clBlue
            ColorNoRequerido = clWindowText
          end
          object padr_dxDBEdit1: TdxDBEdit
            Left = 112
            Top = 24
            Width = 130
            Enabled = False
            TabOrder = 1
            Visible = False
            DataField = 'NUME_PROD_ORDEN'
            DataSource = padr_data_ordenes
            StyleController = padr_estilo
          end
          object padr_dxDBEdit2: TdxDBEdit
            Tag = -1
            Left = 632
            Top = 26
            Width = 130
            Enabled = False
            TabOrder = 2
            DataField = 'FECH_SISTEMA'
            DataSource = padr_data_ordenes
            StyleController = padr_estilo
          end
          object padr_comb_nume_lote: TPCPLookUpComboEdit
            Left = 372
            Top = 24
            Width = 61
            Height = 21
            DropDownCount = 8
            EscapeClear = False
            Ctl3D = True
            KeyField = 'cons_prod_lote'
            ListField = 'nume_lote'
            ListSource = padr_data_lotes
            ParentCtl3D = False
            TabOrder = 9
            Visible = False
            DirectInput = False
          end
          object padr_boto_menu_Referencia: TTBXButtonSCL
            Left = 504
            Top = 44
            Width = 29
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            DropDownMenu = _fMDI.mdi_menu_referencia
            ImageIndex = 64
            Images = _fMDI.imagenesPCP
            SmartFocus = False
            TabOrder = 10
            TabStop = False
          end
          object padr_boto_info_orden: TTBXButtonSCL
            Left = 244
            Top = 25
            Width = 24
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            DropDownMenu = _fMDI.mdi_menu_orde_produccion
            ImageIndex = 64
            Images = _fMDI.imagenesPCP
            SmartFocus = False
            TabOrder = 11
            TabStop = False
          end
          object padr_dxDBEdit4: TdxDBEdit
            Tag = -1
            Left = 372
            Top = 44
            Width = 130
            Enabled = False
            TabOrder = 4
            DataField = 'CODI_REFERENCIA'
            DataSource = padr_data_prod_referencias
            StyleController = padr_estilo
          end
          object padr_dxDBEdit5: TdxDBEdit
            Tag = -1
            Left = 632
            Top = 44
            Width = 130
            Color = clWhite
            Enabled = False
            TabOrder = 5
            DataField = 'CODI_INTE_REFERENCIA'
            DataSource = padr_data_prod_referencias
            StyleController = padr_estilo
          end
          object padr_dxDBEdit6: TdxDBEdit
            Tag = -1
            Left = 112
            Top = 64
            Width = 130
            Enabled = False
            TabOrder = 6
            DataField = 'NOMB_REFE_TIPO_VARIACION'
            DataSource = padr_data_prod_referencias
            StyleController = padr_estilo
          end
          object padr_dxDBEdit7: TdxDBEdit
            Tag = -1
            Left = 372
            Top = 64
            Width = 261
            Enabled = False
            TabOrder = 7
            DataField = 'NOMB_REFERENCIA'
            DataSource = padr_data_prod_referencias
            StyleController = padr_estilo
          end
          object padr_comb_nume_orden: TPCPLookUpComboEdit
            Left = 112
            Top = 24
            Width = 130
            Height = 21
            DropDownCount = 8
            EscapeClear = False
            Ctl3D = True
            KeyField = 'cons_prod_orden'
            ListField = 'nume_prod_orden'
            ListSource = padr_data_ordenes
            ParentCtl3D = False
            TabOrder = 8
            OnChange = padr_comb_nume_ordenChange
            DirectInput = False
          end
          object padr_dxDBEdit3: TdxDBEdit
            Tag = -1
            Left = 112
            Top = 44
            Width = 130
            Enabled = False
            TabOrder = 3
            DataField = 'USUA_SISTEMA'
            DataSource = padr_data_ordenes
            StyleController = padr_estilo
          end
          object padr_pane_unidades: TPanel
            Left = 271
            Top = 23
            Width = 259
            Height = 22
            TabOrder = 12
            Visible = False
            object SCLDBLabel1: TSCLDBLabel
              Left = -1
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
              FocusControl = dxDBEdit1
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Unidades:'
              Transparent = True
              SCLPropiedades = Variables
              ColorRequerido = clBlue
              ColorNoRequerido = clWindowText
            end
            object dxDBEdit1: TdxDBEdit
              Tag = -1
              Left = 101
              Top = 1
              Width = 130
              Enabled = False
              TabOrder = 0
              Alignment = taRightJustify
              DataField = 'unidades'
              DataSource = data_prod_orde_unidades
              StyleController = padr_estilo
              StoredValues = 1
            end
            object boto_info_unidades: TTBXButtonSCL
              Left = 234
              Top = 0
              Width = 19
              Height = 20
              AllowAllUnchecked = True
              BorderSize = 2
              ButtonStyle = bsFlat
              ImageIndex = 71
              Images = _fMDI.imagenesPCP
              ParentShowHint = False
              ShowHint = True
              SmartFocus = False
              TabOrder = 1
              TabStop = False
              Visible = False
            end
          end
        end
      end
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
  inherited data_ventana: TDataSource
    DataSet = padr_quer_ordenes
  end
  inherited padr_popu_vist_actual: TTBXPopupMenu
    Left = 34
    Top = 96
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 2
    Top = 98
  end
  inherited padr_pop_grid: TTBXPopupMenu
    Left = 894
    Top = 100
  end
  object padr_quer_ordenes: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_prod_orden, nume_prod_orden,'
      'cons_referencia, fech_sistema, usua_sistema'
      'from pcp_prod_ordenes'
      'where anulada = -1'
      'order by nume_prod_orden')
    Left = 826
    Top = 5
  end
  object padr_quer_prod_referencias: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = padr_data_ordenes
    SQL.Strings = (
      'Select * from'
      'vis_pcp_prod_orde_referencias'
      'where cons_prod_orden = :cons_prod_orden'
      'order by cons_referencia')
    Left = 908
    Top = 33
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptUnknown
      end>
  end
  object padr_data_prod_referencias: TDataSource
    DataSet = padr_quer_prod_referencias
    Left = 936
    Top = 33
  end
  object padr_quer_lotes: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = padr_data_ordenes
    SQL.Strings = (
      
        'Select cons_prod_lote, cast(nume_lote as VARCHAR(12)) as nume_lo' +
        'te'
      'from pcp_prod_lotes'
      'where cons_prod_orden = :cons_prod_orden'
      'order by nume_lote')
    Left = 908
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_orden'
        ParamType = ptInput
      end>
  end
  object padr_data_lotes: TDataSource
    DataSet = padr_quer_lotes
    Left = 936
    Top = 5
  end
  object padr_data_ordenes: TDataSource
    DataSet = padr_quer_ordenes
    Left = 856
    Top = 5
  end
  object quer_prod_orde_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = padr_data_ordenes
    SQL.Strings = (
      'Select sum(unidades) as unidades'
      'from VIS_PCP_PEDI_UNID_PLAN_BASICO'
      'where cons_prod_orden = :cons_prod_orden')
    Left = 908
    Top = 61
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_orden'
        ParamType = ptUnknown
      end>
  end
  object data_prod_orde_unidades: TDataSource
    DataSet = quer_prod_orde_unidades
    Left = 936
    Top = 61
  end
end
