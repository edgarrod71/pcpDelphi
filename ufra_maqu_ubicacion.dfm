object ffra_maqu_ubicacion: Tffra_maqu_ubicacion
  Left = 0
  Top = 0
  Width = 627
  Height = 134
  TabOrder = 0
  object pane_tipo_ubicacion: TPanel
    Left = 0
    Top = 0
    Width = 627
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object SCLDBLabel33: TSCLDBLabel
      Left = 10
      Top = 3
      Width = 80
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = comb_tipo_ubicacion
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo ubicación:'
      Layout = tlTop
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_UBIC_TIPO'
      Field = 'CONS_UBIC_TIPO'
    end
    object comb_tipo_ubicacion: TPCPLookUpComboEdit
      Left = 92
      Top = 3
      Width = 193
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_UBIC_TIPO'
      KeyField = 'CONS_UBIC_TIPO'
      ListField = 'NOMB_UBIC_TIPO'
      ListSource = data_maqu_ubicaciones
      ParentCtl3D = False
      TabOrder = 0
      OnChange = comb_tipo_ubicacionChange
      DirectInput = False
    end
  end
  object pane_ubic_propia: TPanel
    Left = 0
    Top = 24
    Width = 627
    Height = 20
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object SCLDBLabel34: TSCLDBLabel
      Left = 10
      Top = -1
      Width = 80
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = comb_ubic_empresa
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Empresa:'
      Layout = tlTop
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_EMPRESA'
      Field = 'CONS_EMPRESA'
    end
    object SCLDBLabel35: TSCLDBLabel
      Left = 304
      Top = 0
      Width = 80
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = comb_ubic_area
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Area:'
      Layout = tlTop
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_AREA'
      Field = 'CONS_AREA'
    end
    object comb_ubic_empresa: TPCPLookUpComboEdit
      Left = 92
      Top = -1
      Width = 193
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_EMPRESA'
      KeyField = 'CONS_EMPRESA'
      ListField = 'NOMB_EMPRESA'
      ListSource = data_empresas
      ParentCtl3D = False
      TabOrder = 0
      DirectInput = False
    end
    object comb_ubic_area: TPCPLookUpComboEdit
      Left = 386
      Top = 0
      Width = 193
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_AREA'
      KeyField = 'CONS_AREA'
      ListField = 'NOMB_AREA'
      ListSource = data_areas
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object SCLButton6: TTBXButton
      Left = 287
      Top = -1
      Width = 21
      Height = 24
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 9
      Images = _fMDI.imagenesPCP
      TabOrder = 2
      TabStop = False
    end
    object SCLButton7: TTBXButton
      Left = 581
      Top = -1
      Width = 21
      Height = 24
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 9
      Images = _fMDI.imagenesPCP
      TabOrder = 3
      TabStop = False
    end
  end
  object pane_ubic_externa: TPanel
    Left = 0
    Top = 44
    Width = 627
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object SCLDBLabel36: TSCLDBLabel
      Left = 10
      Top = -1
      Width = 80
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = comb_ubic_planta
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Planta:'
      Layout = tlTop
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PLANTA'
      Field = 'CONS_PLANTA'
    end
    object SCLDBLabel37: TSCLDBLabel
      Left = 10
      Top = 19
      Width = 80
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = comb_ubic_seccion
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Sección:'
      Layout = tlTop
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_LINE_SECCION'
      Field = 'CONS_LINE_SECCION'
    end
    object SCLDBLabel1: TSCLDBLabel
      Left = 304
      Top = 0
      Width = 80
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = Comb_Ubic_Linea
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Línea:'
      Layout = tlTop
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PLAN_LINEA'
      Field = 'CONS_PLAN_LINEA'
    end
    object comb_ubic_planta: TPCPLookUpComboEdit
      Left = 92
      Top = -1
      Width = 193
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_PLANTA'
      KeyField = 'CONS_PLANTA'
      ListField = 'NOMB_PLANTA'
      ListSource = data_plantas
      ParentCtl3D = False
      TabOrder = 0
      DirectInput = False
    end
    object comb_ubic_seccion: TPCPLookUpComboEdit
      Left = 92
      Top = 19
      Width = 193
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_LINE_SECCION'
      KeyField = 'CONS_LINE_SECCION'
      ListField = 'NOMB_SECCION'
      ListSource = data_secciones
      ParentCtl3D = False
      TabOrder = 2
      DirectInput = False
    end
    object SCLButton8: TTBXButton
      Left = 287
      Top = -1
      Width = 21
      Height = 24
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 9
      Images = _fMDI.imagenesPCP
      TabOrder = 3
      TabStop = False
    end
    object SCLButton9: TTBXButton
      Left = 287
      Top = 18
      Width = 21
      Height = 24
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 9
      Images = _fMDI.imagenesPCP
      TabOrder = 5
      TabStop = False
    end
    object Comb_Ubic_Linea: TPCPLookUpComboEdit
      Left = 386
      Top = 0
      Width = 193
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_PLAN_LINEA'
      KeyField = 'CONS_PLAN_LINEA'
      ListField = 'NOMB_LINEA'
      ListSource = data_lineas
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object SCLButton1: TTBXButton
      Left = 581
      Top = -1
      Width = 21
      Height = 24
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 9
      Images = _fMDI.imagenesPCP
      TabOrder = 4
      TabStop = False
    end
  end
  object pane_ubic_bodega: TPanel
    Left = 0
    Top = 84
    Width = 627
    Height = 20
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    Visible = False
    object SCLDBLabel39: TSCLDBLabel
      Left = 10
      Top = -1
      Width = 80
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = comb_ubic_bodega
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Bodega:'
      Layout = tlTop
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_BODEGA'
      Field = 'CONS_BODEGA'
    end
    object comb_ubic_bodega: TPCPLookUpComboEdit
      Left = 92
      Top = -1
      Width = 193
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_BODEGA'
      KeyField = 'CONS_BODEGA'
      ListField = 'NOMB_BODEGA'
      ListSource = data_bodegas
      ParentCtl3D = False
      TabOrder = 0
      DirectInput = False
    end
    object SCLButton10: TTBXButton
      Left = 287
      Top = -1
      Width = 21
      Height = 24
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 9
      Images = _fMDI.imagenesPCP
      TabOrder = 1
      TabStop = False
    end
  end
  object pane_ubic_otra: TPanel
    Left = 0
    Top = 104
    Width = 627
    Height = 22
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    Visible = False
    object SCLDBLabel38: TSCLDBLabel
      Left = 10
      Top = -1
      Width = 80
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = edit_ubic_otra_ubicacion
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Otra ubicación:'
      Layout = tlTop
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'OTRA_UBICACION'
      Field = 'OTRA_UBICACION'
    end
    object edit_ubic_otra_ubicacion: TdxDBEdit
      Left = 92
      Top = -1
      Width = 193
      Style.BorderStyle = xbsThick
      TabOrder = 0
      DataField = 'OTRA_UBICACION'
    end
  end
  object quer_maqu_ubicaciones: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_UBIC_TIPOS'
      'ORDER BY CODI_UBIC_TIPO')
    Left = 386
    Top = 1
    object quer_maqu_ubicacionesCONS_UBIC_TIPO: TIntegerField
      FieldName = 'CONS_UBIC_TIPO'
      Origin = 'DATA_BASE_PCP.SIS_UBIC_TIPOS.CONS_UBIC_TIPO'
    end
    object quer_maqu_ubicacionesCODI_UBIC_TIPO: TStringField
      FieldName = 'CODI_UBIC_TIPO'
      Origin = 'DATA_BASE_PCP.SIS_UBIC_TIPOS.CODI_UBIC_TIPO'
      Size = 12
    end
    object quer_maqu_ubicacionesNOMB_UBIC_TIPO: TStringField
      FieldName = 'NOMB_UBIC_TIPO'
      Origin = 'DATA_BASE_PCP.SIS_UBIC_TIPOS.NOMB_UBIC_TIPO'
      Size = 60
    end
    object quer_maqu_ubicacionesVER_PLANTA: TIntegerField
      FieldName = 'VER_PLANTA'
      Origin = 'DATA_BASE_PCP.SIS_UBIC_TIPOS.VER_PLANTA'
    end
    object quer_maqu_ubicacionesVER_EMPRESA: TIntegerField
      FieldName = 'VER_EMPRESA'
      Origin = 'DATA_BASE_PCP.SIS_UBIC_TIPOS.VER_EMPRESA'
    end
    object quer_maqu_ubicacionesVER_BODEGA: TIntegerField
      FieldName = 'VER_BODEGA'
      Origin = 'DATA_BASE_PCP.SIS_UBIC_TIPOS.VER_BODEGA'
    end
    object quer_maqu_ubicacionesVER_OTRA_UBICACION: TIntegerField
      FieldName = 'VER_OTRA_UBICACION'
      Origin = 'DATA_BASE_PCP.SIS_UBIC_TIPOS.VER_OTRA_UBICACION'
    end
  end
  object data_maqu_ubicaciones: TDataSource
    DataSet = quer_maqu_ubicaciones
    Left = 418
    Top = 1
  end
  object quer_empresas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_EMPRESA, NOMB_EMPRESA'
      'FROM GLO_EMPRESAS'
      'ORDER BY NOMB_EMPRESA')
    Left = 386
    Top = 17
    object quer_empresasCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.CONS_EMPRESA'
    end
    object quer_empresasNOMB_EMPRESA: TStringField
      FieldName = 'NOMB_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.NOMB_EMPRESA'
      Size = 60
    end
  end
  object data_empresas: TDataSource
    DataSet = quer_empresas
    Left = 418
    Top = 17
  end
  object quer_areas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_AREA, NOMB_AREA'
      'FROM GLO_AREAS'
      'ORDER BY NOMB_AREA'
      ' ')
    Left = 386
    Top = 33
    object quer_areasCONS_AREA: TIntegerField
      FieldName = 'CONS_AREA'
      Origin = 'DATA_BASE_PCP.GLO_AREAS.CONS_AREA'
    end
    object quer_areasNOMB_AREA: TStringField
      FieldName = 'NOMB_AREA'
      Origin = 'DATA_BASE_PCP.GLO_AREAS.NOMB_AREA'
      Size = 60
    end
  end
  object data_areas: TDataSource
    DataSet = quer_areas
    Left = 418
    Top = 33
  end
  object quer_plantas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_empresas
    SQL.Strings = (
      'SELECT CONS_PLANTA, NOMB_PLANTA'
      'FROM GLO_PLANTAS'
      'WHERE CONS_EMPRESA = :CONS_EMPRESA'
      'ORDER BY NOMB_PLANTA'
      ' '
      ' ')
    Left = 386
    Top = 49
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_EMPRESA'
        ParamType = ptUnknown
      end>
    object quer_plantasCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
      Origin = 'DATA_BASE_PCP.GLO_PLANTAS.CONS_PLANTA'
    end
    object quer_plantasNOMB_PLANTA: TStringField
      FieldName = 'NOMB_PLANTA'
      Origin = 'DATA_BASE_PCP.GLO_PLANTAS.NOMB_PLANTA'
      Size = 60
    end
  end
  object data_plantas: TDataSource
    DataSet = quer_plantas
    Left = 418
    Top = 49
  end
  object quer_secciones: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_lineas
    SQL.Strings = (
      'SELECT S.CONS_SECCION, S.NOMB_SECCION, LS.CONS_LINE_SECCION'
      'FROM GLO_SECCIONES S, GLO_LINE_SECCIONES LS'
      'WHERE S.CONS_SECCION = LS.CONS_SECCION'
      ' AND LS.CONS_PLAN_LINEA = :CONS_PLAN_LINEA'
      'ORDER BY S.CONS_SECCION')
    Left = 386
    Top = 66
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PLAN_LINEA'
        ParamType = ptUnknown
      end>
    object quer_seccionesCONS_SECCION: TIntegerField
      FieldName = 'CONS_SECCION'
      Origin = 'DATA_BASE_PCP.GLO_SECCIONES.CONS_SECCION'
    end
    object quer_seccionesNOMB_SECCION: TStringField
      FieldName = 'NOMB_SECCION'
      Origin = 'DATA_BASE_PCP.GLO_SECCIONES.NOMB_SECCION'
      Size = 60
    end
    object quer_seccionesCONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
      Origin = 'DATA_BASE_PCP.GLO_LINE_SECCIONES.CONS_LINE_SECCION'
    end
  end
  object data_secciones: TDataSource
    DataSet = quer_secciones
    Left = 418
    Top = 66
  end
  object quer_bodegas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_plantas
    SQL.Strings = (
      'SELECT CONS_BODEGA, NOMB_BODEGA'
      'FROM GLO_BODEGAS'
      'ORDER BY NOMB_BODEGA'
      ' '
      ' '
      ' ')
    Left = 386
    Top = 82
    object quer_bodegasCONS_BODEGA: TIntegerField
      FieldName = 'CONS_BODEGA'
      Origin = 'DATA_BASE_PCP.GLO_BODEGAS.CONS_BODEGA'
    end
    object quer_bodegasNOMB_BODEGA: TStringField
      FieldName = 'NOMB_BODEGA'
      Origin = 'DATA_BASE_PCP.GLO_BODEGAS.NOMB_BODEGA'
      Size = 60
    end
  end
  object data_bodegas: TDataSource
    DataSet = quer_bodegas
    Left = 418
    Top = 82
  end
  object quer_lineas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_plantas
    SQL.Strings = (
      'SELECT L.CONS_LINEA, L.NOMB_LINEA, PL.CONS_PLAN_LINEA'
      'FROM GLO_LINEAS L, GLO_PLAN_LINEAS PL'
      'WHERE L.CONS_LINEA = PL.CONS_LINEA'
      ' AND PL.CONS_PLANTA = :CONS_PLANTA'
      'ORDER BY L.CONS_LINEA')
    Left = 450
    Top = 75
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PLANTA'
        ParamType = ptUnknown
      end>
    object quer_lineasCONS_LINEA: TIntegerField
      FieldName = 'CONS_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_LINEAS.CONS_LINEA'
    end
    object quer_lineasNOMB_LINEA: TStringField
      FieldName = 'NOMB_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_LINEAS.NOMB_LINEA'
      Size = 60
    end
    object quer_lineasCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_PLAN_LINEAS.CONS_PLAN_LINEA'
    end
  end
  object data_lineas: TDataSource
    DataSet = quer_lineas
    Left = 482
    Top = 75
  end
end
