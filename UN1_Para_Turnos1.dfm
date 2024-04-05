inherited FN1_Para_Turnos1: TFN1_Para_Turnos1
  Left = 255
  Top = 131
  Width = 664
  Height = 526
  ActiveControl = DBCodigo
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLShape2: TSCLShape [0]
    Left = 47
    Top = 216
    Width = 543
    Height = 200
    Brush.Style = bsClear
    Enabled = False
    Pen.Color = 14467501
  end
  object SCLDBLabel1: TSCLDBLabel [1]
    Left = 10
    Top = 56
    Width = 100
    Height = 21
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBCodigo
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Código:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_TURNO'
    Field = 'CODI_TURNO'
  end
  object SCLDBLabel2: TSCLDBLabel [2]
    Left = 10
    Top = 77
    Width = 100
    Height = 57
    Alive = True
    ColorActive = 16578290
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
    Caption = 'Tipo Turno:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'TIPO_TURNO'
    Field = 'TIPO_TURNO'
  end
  object SCLDBLabel15: TSCLDBLabel [3]
    Left = 10
    Top = 140
    Width = 100
    Height = 44
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBDescripcion
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Descripción:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'DESCRIPCION'
    Field = 'DESCRIPCION'
  end
  object LLunes: TSCLDBLabel [4]
    Tag = 1
    Left = 40
    Top = 259
    Width = 70
    Height = 21
    Hint = 'Clic para copiar o habilitar la copia'
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = T1
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Lunes:   '
    Layout = tlTop
    ParentShowHint = False
    ShowHint = True
    Transparent = True
    OnClick = LLunesClick
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'LUNE_MINUTOS'
    Field = 'LUNE_MINUTOS'
  end
  object Label1: TLabel [5]
    Left = 125
    Top = 240
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'Desde'
    FocusControl = _DBFecha_Creacion
  end
  object Label2: TLabel [6]
    Left = 214
    Top = 240
    Width = 28
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hasta'
    FocusControl = _DBFecha_Creacion
  end
  object LMartes: TSCLDBLabel [7]
    Tag = 2
    Left = 40
    Top = 279
    Width = 70
    Height = 21
    Hint = 'Clic para copiar o habilitar la copia'
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = T5
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Martes:   '
    Layout = tlTop
    ParentShowHint = False
    ShowHint = True
    Transparent = True
    OnClick = LLunesClick
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'MART_MINUTOS'
    Field = 'MART_MINUTOS'
  end
  object LMiercoles: TSCLDBLabel [8]
    Tag = 3
    Left = 40
    Top = 299
    Width = 70
    Height = 21
    Hint = 'Clic para copiar o habilitar la copia'
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = T9
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Miercoles:   '
    Layout = tlTop
    ParentShowHint = False
    ShowHint = True
    Transparent = True
    OnClick = LLunesClick
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'MIER_MINUTOS'
    Field = 'MIER_MINUTOS'
  end
  object LJueves: TSCLDBLabel [9]
    Tag = 4
    Left = 40
    Top = 319
    Width = 70
    Height = 21
    Hint = 'Clic para copiar o habilitar la copia'
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = T13
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Jueves:   '
    Layout = tlTop
    ParentShowHint = False
    ShowHint = True
    Transparent = True
    OnClick = LLunesClick
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'JUEV_MINUTOS'
    Field = 'JUEV_MINUTOS'
  end
  object LViernes: TSCLDBLabel [10]
    Tag = 5
    Left = 40
    Top = 339
    Width = 70
    Height = 21
    Hint = 'Clic para copiar o habilitar la copia'
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = T17
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Viernes:   '
    Layout = tlTop
    ParentShowHint = False
    ShowHint = True
    Transparent = True
    OnClick = LLunesClick
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'VIER_MINUTOS'
    Field = 'VIER_MINUTOS'
  end
  object LSabado: TSCLDBLabel [11]
    Tag = 6
    Left = 40
    Top = 367
    Width = 70
    Height = 21
    Hint = 'Clic para copiar o habilitar la copia'
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = T21
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Sábado:   '
    Layout = tlTop
    ParentShowHint = False
    ShowHint = True
    Transparent = True
    OnClick = LLunesClick
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'SABA_MINUTOS'
    Field = 'SABA_MINUTOS'
  end
  object LDomingo: TSCLDBLabel [12]
    Tag = 7
    Left = 40
    Top = 387
    Width = 70
    Height = 21
    Hint = 'Clic para copiar o habilitar la copia'
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = T25
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Domingo:   '
    Layout = tlTop
    ParentShowHint = False
    ShowHint = True
    Transparent = True
    OnClick = LLunesClick
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'DOMI_MINUTOS'
    Field = 'DOMI_MINUTOS'
  end
  object Label3: TLabel [13]
    Left = 456
    Top = 240
    Width = 60
    Height = 13
    Alignment = taRightJustify
    Caption = 'Contratados'
    FocusControl = _DBFecha_Creacion
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [14]
    Left = 301
    Top = 240
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'Desde'
    FocusControl = _DBFecha_Creacion
  end
  object Label5: TLabel [15]
    Left = 390
    Top = 240
    Width = 28
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hasta'
    FocusControl = _DBFecha_Creacion
  end
  object Label6: TLabel [16]
    Left = 151
    Top = 219
    Width = 78
    Height = 13
    Alignment = taRightJustify
    Caption = 'Primera Jornada'
  end
  object Label7: TLabel [17]
    Left = 320
    Top = 219
    Width = 84
    Height = 13
    Alignment = taRightJustify
    Caption = 'Segunda Jornada'
  end
  object Bevel2: TSCLShape [18]
    Left = 100
    Top = 235
    Width = 352
    Height = 1
    Brush.Style = bsClear
    Pen.Color = 14467501
  end
  object Bevel3: TSCLShape [19]
    Left = 275
    Top = 216
    Width = 1
    Height = 201
    Brush.Style = bsClear
    Pen.Color = 14467501
  end
  object Bevel4: TSCLShape [20]
    Left = 451
    Top = 216
    Width = 1
    Height = 228
    Brush.Style = bsClear
    Pen.Color = 14467501
  end
  object Copiar1: TImage [21]
    Tag = 1
    Left = 24
    Top = 259
    Width = 16
    Height = 16
    AutoSize = True
    Picture.Data = {
      07544269746D617036030000424D360300000000000036000000280000001000
      0000100000000100180000000000000300000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF040404040404040404040404040404040404040404040404040404
      040404040404040404040404040404FFFFFF00999966CCCC66CCCC66CCCC66CC
      CC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC040404FF
      FFFF009999CCFFFF99CCFF99FFFF99CCFF99FFFF99CCFF99FFFF99CCFF99FFFF
      99CCFF99CCFF99CCFF66CCCC040404FFFFFF009999CCFFFF99FFFF99FFFF99CC
      FF99FFFF8000008000009999CC99FFFF99CCFF99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF99FFFF99FFFF80000080000080000066669999CCFF
      99FFFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF99FFFF99FFFF8000
      00800000FF0000FF00008000009999CC99CCFF99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF800000FF0000FF0000868686FF0000800000666699
      99CCFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF99FFFFFF0000FF00
      0099FFFF99CCFFFF0000FF00008000009999CC99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF99FFFF99FFFF99FFFF99FFFF99CCFFFF0000800000
      66669999CCFF99FFFF66CCCC040404FFFFFF009999CCFFFFCCFFFFCCFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF0000800000868686FFFFFF66CCCC040404FF
      FFFF00999966CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC009999
      FF0000800000009999009999FFFFFFFFFFFFFFFFFF009999F1F1F1CCFFFF99FF
      FF99FFFF99FFFF009999040404FFFFFFFF0000800000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF009999009999009999009999009999040404FFFFFFFFFFFF
      FFFFFFFF0000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000800000FFFFFFFF
      FFFF}
    Transparent = True
    Visible = False
  end
  object Copiar2: TImage [22]
    Tag = 2
    Left = 24
    Top = 279
    Width = 16
    Height = 16
    AutoSize = True
    Picture.Data = {
      07544269746D617036030000424D360300000000000036000000280000001000
      0000100000000100180000000000000300000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF040404040404040404040404040404040404040404040404040404
      040404040404040404040404040404FFFFFF00999966CCCC66CCCC66CCCC66CC
      CC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC040404FF
      FFFF009999CCFFFF99CCFF99FFFF99CCFF99FFFF99CCFF99FFFF99CCFF99FFFF
      99CCFF99CCFF99CCFF66CCCC040404FFFFFF009999CCFFFF99FFFF99FFFF99CC
      FF99FFFF8000008000009999CC99FFFF99CCFF99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF99FFFF99FFFF80000080000080000066669999CCFF
      99FFFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF99FFFF99FFFF8000
      00800000FF0000FF00008000009999CC99CCFF99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF800000FF0000FF0000868686FF0000800000666699
      99CCFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF99FFFFFF0000FF00
      0099FFFF99CCFFFF0000FF00008000009999CC99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF99FFFF99FFFF99FFFF99FFFF99CCFFFF0000800000
      66669999CCFF99FFFF66CCCC040404FFFFFF009999CCFFFFCCFFFFCCFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF0000800000868686FFFFFF66CCCC040404FF
      FFFF00999966CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC009999
      FF0000800000009999009999FFFFFFFFFFFFFFFFFF009999F1F1F1CCFFFF99FF
      FF99FFFF99FFFF009999040404FFFFFFFF0000800000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF009999009999009999009999009999040404FFFFFFFFFFFF
      FFFFFFFF0000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000800000FFFFFFFF
      FFFF}
    Transparent = True
    Visible = False
  end
  object Copiar3: TImage [23]
    Tag = 3
    Left = 24
    Top = 299
    Width = 16
    Height = 16
    AutoSize = True
    Picture.Data = {
      07544269746D617036030000424D360300000000000036000000280000001000
      0000100000000100180000000000000300000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF040404040404040404040404040404040404040404040404040404
      040404040404040404040404040404FFFFFF00999966CCCC66CCCC66CCCC66CC
      CC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC040404FF
      FFFF009999CCFFFF99CCFF99FFFF99CCFF99FFFF99CCFF99FFFF99CCFF99FFFF
      99CCFF99CCFF99CCFF66CCCC040404FFFFFF009999CCFFFF99FFFF99FFFF99CC
      FF99FFFF8000008000009999CC99FFFF99CCFF99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF99FFFF99FFFF80000080000080000066669999CCFF
      99FFFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF99FFFF99FFFF8000
      00800000FF0000FF00008000009999CC99CCFF99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF800000FF0000FF0000868686FF0000800000666699
      99CCFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF99FFFFFF0000FF00
      0099FFFF99CCFFFF0000FF00008000009999CC99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF99FFFF99FFFF99FFFF99FFFF99CCFFFF0000800000
      66669999CCFF99FFFF66CCCC040404FFFFFF009999CCFFFFCCFFFFCCFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF0000800000868686FFFFFF66CCCC040404FF
      FFFF00999966CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC009999
      FF0000800000009999009999FFFFFFFFFFFFFFFFFF009999F1F1F1CCFFFF99FF
      FF99FFFF99FFFF009999040404FFFFFFFF0000800000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF009999009999009999009999009999040404FFFFFFFFFFFF
      FFFFFFFF0000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000800000FFFFFFFF
      FFFF}
    Transparent = True
    Visible = False
  end
  object Copiar4: TImage [24]
    Tag = 4
    Left = 24
    Top = 319
    Width = 16
    Height = 16
    AutoSize = True
    Picture.Data = {
      07544269746D617036030000424D360300000000000036000000280000001000
      0000100000000100180000000000000300000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF040404040404040404040404040404040404040404040404040404
      040404040404040404040404040404FFFFFF00999966CCCC66CCCC66CCCC66CC
      CC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC040404FF
      FFFF009999CCFFFF99CCFF99FFFF99CCFF99FFFF99CCFF99FFFF99CCFF99FFFF
      99CCFF99CCFF99CCFF66CCCC040404FFFFFF009999CCFFFF99FFFF99FFFF99CC
      FF99FFFF8000008000009999CC99FFFF99CCFF99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF99FFFF99FFFF80000080000080000066669999CCFF
      99FFFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF99FFFF99FFFF8000
      00800000FF0000FF00008000009999CC99CCFF99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF800000FF0000FF0000868686FF0000800000666699
      99CCFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF99FFFFFF0000FF00
      0099FFFF99CCFFFF0000FF00008000009999CC99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF99FFFF99FFFF99FFFF99FFFF99CCFFFF0000800000
      66669999CCFF99FFFF66CCCC040404FFFFFF009999CCFFFFCCFFFFCCFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF0000800000868686FFFFFF66CCCC040404FF
      FFFF00999966CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC009999
      FF0000800000009999009999FFFFFFFFFFFFFFFFFF009999F1F1F1CCFFFF99FF
      FF99FFFF99FFFF009999040404FFFFFFFF0000800000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF009999009999009999009999009999040404FFFFFFFFFFFF
      FFFFFFFF0000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000800000FFFFFFFF
      FFFF}
    Transparent = True
    Visible = False
  end
  object Copiar5: TImage [25]
    Tag = 5
    Left = 24
    Top = 339
    Width = 16
    Height = 16
    AutoSize = True
    Picture.Data = {
      07544269746D617036030000424D360300000000000036000000280000001000
      0000100000000100180000000000000300000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF040404040404040404040404040404040404040404040404040404
      040404040404040404040404040404FFFFFF00999966CCCC66CCCC66CCCC66CC
      CC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC040404FF
      FFFF009999CCFFFF99CCFF99FFFF99CCFF99FFFF99CCFF99FFFF99CCFF99FFFF
      99CCFF99CCFF99CCFF66CCCC040404FFFFFF009999CCFFFF99FFFF99FFFF99CC
      FF99FFFF8000008000009999CC99FFFF99CCFF99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF99FFFF99FFFF80000080000080000066669999CCFF
      99FFFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF99FFFF99FFFF8000
      00800000FF0000FF00008000009999CC99CCFF99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF800000FF0000FF0000868686FF0000800000666699
      99CCFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF99FFFFFF0000FF00
      0099FFFF99CCFFFF0000FF00008000009999CC99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF99FFFF99FFFF99FFFF99FFFF99CCFFFF0000800000
      66669999CCFF99FFFF66CCCC040404FFFFFF009999CCFFFFCCFFFFCCFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF0000800000868686FFFFFF66CCCC040404FF
      FFFF00999966CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC009999
      FF0000800000009999009999FFFFFFFFFFFFFFFFFF009999F1F1F1CCFFFF99FF
      FF99FFFF99FFFF009999040404FFFFFFFF0000800000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF009999009999009999009999009999040404FFFFFFFFFFFF
      FFFFFFFF0000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000800000FFFFFFFF
      FFFF}
    Transparent = True
    Visible = False
  end
  object Copiar6: TImage [26]
    Tag = 6
    Left = 24
    Top = 367
    Width = 16
    Height = 16
    AutoSize = True
    Picture.Data = {
      07544269746D617036030000424D360300000000000036000000280000001000
      0000100000000100180000000000000300000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF040404040404040404040404040404040404040404040404040404
      040404040404040404040404040404FFFFFF00999966CCCC66CCCC66CCCC66CC
      CC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC040404FF
      FFFF009999CCFFFF99CCFF99FFFF99CCFF99FFFF99CCFF99FFFF99CCFF99FFFF
      99CCFF99CCFF99CCFF66CCCC040404FFFFFF009999CCFFFF99FFFF99FFFF99CC
      FF99FFFF8000008000009999CC99FFFF99CCFF99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF99FFFF99FFFF80000080000080000066669999CCFF
      99FFFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF99FFFF99FFFF8000
      00800000FF0000FF00008000009999CC99CCFF99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF800000FF0000FF0000868686FF0000800000666699
      99CCFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF99FFFFFF0000FF00
      0099FFFF99CCFFFF0000FF00008000009999CC99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF99FFFF99FFFF99FFFF99FFFF99CCFFFF0000800000
      66669999CCFF99FFFF66CCCC040404FFFFFF009999CCFFFFCCFFFFCCFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF0000800000868686FFFFFF66CCCC040404FF
      FFFF00999966CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC009999
      FF0000800000009999009999FFFFFFFFFFFFFFFFFF009999F1F1F1CCFFFF99FF
      FF99FFFF99FFFF009999040404FFFFFFFF0000800000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF009999009999009999009999009999040404FFFFFFFFFFFF
      FFFFFFFF0000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000800000FFFFFFFF
      FFFF}
    Transparent = True
    Visible = False
  end
  object Copiar7: TImage [27]
    Tag = 7
    Left = 24
    Top = 387
    Width = 16
    Height = 16
    AutoSize = True
    Picture.Data = {
      07544269746D617036030000424D360300000000000036000000280000001000
      0000100000000100180000000000000300000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF040404040404040404040404040404040404040404040404040404
      040404040404040404040404040404FFFFFF00999966CCCC66CCCC66CCCC66CC
      CC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC040404FF
      FFFF009999CCFFFF99CCFF99FFFF99CCFF99FFFF99CCFF99FFFF99CCFF99FFFF
      99CCFF99CCFF99CCFF66CCCC040404FFFFFF009999CCFFFF99FFFF99FFFF99CC
      FF99FFFF8000008000009999CC99FFFF99CCFF99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF99FFFF99FFFF80000080000080000066669999CCFF
      99FFFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF99FFFF99FFFF8000
      00800000FF0000FF00008000009999CC99CCFF99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF800000FF0000FF0000868686FF0000800000666699
      99CCFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF99FFFFFF0000FF00
      0099FFFF99CCFFFF0000FF00008000009999CC99FFFF99CCFF66CCCC040404FF
      FFFF009999CCFFFF99FFFF99FFFF99FFFF99FFFF99FFFF99CCFFFF0000800000
      66669999CCFF99FFFF66CCCC040404FFFFFF009999CCFFFFCCFFFFCCFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF0000800000868686FFFFFF66CCCC040404FF
      FFFF00999966CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC009999
      FF0000800000009999009999FFFFFFFFFFFFFFFFFF009999F1F1F1CCFFFF99FF
      FF99FFFF99FFFF009999040404FFFFFFFF0000800000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF009999009999009999009999009999040404FFFFFFFFFFFF
      FFFFFFFF0000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000800000FFFFFFFF
      FFFF}
    Transparent = True
    Visible = False
  end
  object SCLDBLabel3: TSCLDBLabel [28]
    Left = 10
    Top = 183
    Width = 100
    Height = 21
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBPrimer_Descanso
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Primer descanso:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'PRIM_DESCANSO'
    Field = 'PRIM_DESCANSO'
  end
  object SCLDBLabel4: TSCLDBLabel [29]
    Left = 242
    Top = 183
    Width = 100
    Height = 21
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBSegundo_Descanso
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Segundo descanso:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'SEGU_DESCANSO'
    Field = 'SEGU_DESCANSO'
  end
  object Label8: TLabel [30]
    Left = 527
    Top = 240
    Width = 53
    Height = 13
    Alignment = taRightJustify
    Caption = 'Disponibles'
    FocusControl = _DBFecha_Creacion
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel6: TSCLShape [31]
    Left = 519
    Top = 216
    Width = 1
    Height = 228
    Brush.Style = bsClear
    Pen.Color = 14467501
  end
  object Bevel7: TSCLShape [32]
    Left = 364
    Top = 415
    Width = 226
    Height = 29
    Brush.Style = bsClear
    Pen.Color = 14467501
  end
  object Label9: TLabel [33]
    Left = 397
    Top = 422
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'Totales'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited padr_shap_xp_up: TShape
    Width = 656
  end
  inherited padr_shap_xp_down: TShape
    Top = 489
    Width = 656
  end
  object SCLShape1: TSCLShape [36]
    Left = 112
    Top = 76
    Width = 219
    Height = 59
    Brush.Style = bsClear
    Pen.Color = 14467501
  end
  object Bevel5: TSCLShape [37]
    Left = 100
    Top = 216
    Width = 1
    Height = 201
    Brush.Style = bsClear
    Pen.Color = 14467501
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 656
  end
  inherited padr_pane_arriba: TPanel
    Width = 656
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 656
    inherited padr_beve_1: TBevel
      Width = 650
    end
    inherited padr_sepa_new: TShape
      Width = 650
    end
  end
  inherited padr_pane_info: TPanel
    Top = 498
    Width = 656
    TabOrder = 43
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 406
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 432
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 407
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 433
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object RGTipo: TJvDBRadioPanel [42]
    Left = 113
    Top = 77
    Width = 217
    Height = 57
    BevelOuter = bvNone
    Color = clWhite
    Columns = 2
    DataField = 'TIPO_TURNO'
    DataSource = data_ventana
    Items.Strings = (
      'Completo'
      'Mañana'
      'Tarde'
      'Noche')
    TabOrder = 4
    Values.Strings = (
      '0'
      '1'
      '2'
      '3')
  end
  object DBDescripcion: TdxDBEdit [43]
    Left = 112
    Top = 140
    Width = 321
    TabOrder = 5
    AutoSize = False
    DataField = 'DESCRIPCION'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    Height = 44
    StoredValues = 64
  end
  object T1: TdxDBTimeEdit [44]
    Left = 112
    Top = 259
    Width = 73
    TabOrder = 8
    OnExit = T1Exit
    DataField = 'LUNE_DESD_1'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T2: TdxDBTimeEdit [45]
    Left = 193
    Top = 259
    Width = 73
    TabOrder = 9
    OnExit = T1Exit
    DataField = 'LUNE_HAST_1'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T5: TdxDBTimeEdit [46]
    Left = 112
    Top = 279
    Width = 73
    TabOrder = 12
    OnExit = T1Exit
    DataField = 'MART_DESD_1'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T6: TdxDBTimeEdit [47]
    Left = 193
    Top = 279
    Width = 73
    TabOrder = 13
    OnExit = T1Exit
    DataField = 'MART_HAST_1'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T9: TdxDBTimeEdit [48]
    Left = 112
    Top = 299
    Width = 73
    TabOrder = 16
    OnExit = T1Exit
    DataField = 'MIER_DESD_1'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T10: TdxDBTimeEdit [49]
    Left = 193
    Top = 299
    Width = 73
    TabOrder = 17
    OnExit = T1Exit
    DataField = 'MIER_HAST_1'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T13: TdxDBTimeEdit [50]
    Left = 112
    Top = 319
    Width = 73
    TabOrder = 20
    OnExit = T1Exit
    DataField = 'JUEV_DESD_1'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T14: TdxDBTimeEdit [51]
    Left = 193
    Top = 319
    Width = 73
    TabOrder = 21
    OnExit = T1Exit
    DataField = 'JUEV_HAST_1'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T17: TdxDBTimeEdit [52]
    Left = 112
    Top = 339
    Width = 73
    TabOrder = 24
    OnExit = T1Exit
    DataField = 'VIER_DESD_1'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T18: TdxDBTimeEdit [53]
    Left = 193
    Top = 339
    Width = 73
    TabOrder = 25
    OnExit = T1Exit
    DataField = 'VIER_HAST_1'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T21: TdxDBTimeEdit [54]
    Left = 112
    Top = 367
    Width = 73
    TabOrder = 28
    OnExit = T1Exit
    DataField = 'SABA_DESD_1'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T22: TdxDBTimeEdit [55]
    Left = 193
    Top = 367
    Width = 73
    TabOrder = 29
    OnExit = T1Exit
    DataField = 'SABA_HAST_1'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T25: TdxDBTimeEdit [56]
    Left = 112
    Top = 387
    Width = 73
    TabOrder = 32
    OnExit = T1Exit
    DataField = 'DOMI_DESD_1'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T26: TdxDBTimeEdit [57]
    Left = 193
    Top = 387
    Width = 73
    TabOrder = 33
    OnExit = T1Exit
    DataField = 'DOMI_HAST_1'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object dxDBEdit2: TdxDBEdit [58]
    Left = 461
    Top = 259
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 36
    TabStop = False
    DataField = 'LUNE_MINUTOS'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit3: TdxDBEdit [59]
    Left = 461
    Top = 279
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 37
    TabStop = False
    DataField = 'MART_MINUTOS'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit4: TdxDBEdit [60]
    Left = 461
    Top = 299
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 38
    TabStop = False
    DataField = 'MIER_MINUTOS'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit5: TdxDBEdit [61]
    Left = 461
    Top = 319
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 39
    TabStop = False
    DataField = 'JUEV_MINUTOS'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit6: TdxDBEdit [62]
    Left = 461
    Top = 339
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 40
    TabStop = False
    DataField = 'VIER_MINUTOS'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit7: TdxDBEdit [63]
    Left = 461
    Top = 367
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 41
    TabStop = False
    DataField = 'SABA_MINUTOS'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit8: TdxDBEdit [64]
    Left = 461
    Top = 387
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 42
    TabStop = False
    DataField = 'DOMI_MINUTOS'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object T3: TdxDBTimeEdit [65]
    Left = 288
    Top = 259
    Width = 73
    TabOrder = 10
    OnExit = T1Exit
    DataField = 'LUNE_DESD_2'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T4: TdxDBTimeEdit [66]
    Left = 369
    Top = 259
    Width = 73
    TabOrder = 11
    OnExit = T1Exit
    DataField = 'LUNE_HAST_2'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T7: TdxDBTimeEdit [67]
    Left = 288
    Top = 279
    Width = 73
    TabOrder = 14
    OnExit = T1Exit
    DataField = 'MART_DESD_2'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T8: TdxDBTimeEdit [68]
    Left = 369
    Top = 279
    Width = 73
    TabOrder = 15
    OnExit = T1Exit
    DataField = 'MART_HAST_2'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T11: TdxDBTimeEdit [69]
    Left = 288
    Top = 299
    Width = 73
    TabOrder = 18
    OnExit = T1Exit
    DataField = 'MIER_DESD_2'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T12: TdxDBTimeEdit [70]
    Left = 369
    Top = 299
    Width = 73
    TabOrder = 19
    OnExit = T1Exit
    DataField = 'MIER_HAST_2'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T15: TdxDBTimeEdit [71]
    Left = 288
    Top = 319
    Width = 73
    TabOrder = 22
    OnExit = T1Exit
    DataField = 'JUEV_DESD_2'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T16: TdxDBTimeEdit [72]
    Left = 369
    Top = 319
    Width = 73
    TabOrder = 23
    OnExit = T1Exit
    DataField = 'JUEV_HAST_2'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T19: TdxDBTimeEdit [73]
    Left = 288
    Top = 339
    Width = 73
    TabOrder = 26
    OnExit = T1Exit
    DataField = 'VIER_DESD_2'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T120: TdxDBTimeEdit [74]
    Left = 369
    Top = 339
    Width = 73
    TabOrder = 27
    OnExit = T1Exit
    DataField = 'VIER_HAST_2'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T23: TdxDBTimeEdit [75]
    Left = 288
    Top = 367
    Width = 73
    TabOrder = 30
    OnExit = T1Exit
    DataField = 'SABA_DESD_2'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T24: TdxDBTimeEdit [76]
    Left = 369
    Top = 367
    Width = 73
    TabOrder = 31
    OnExit = T1Exit
    DataField = 'SABA_HAST_2'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T27: TdxDBTimeEdit [77]
    Left = 288
    Top = 387
    Width = 73
    TabOrder = 34
    OnExit = T1Exit
    DataField = 'DOMI_DESD_2'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object T28: TdxDBTimeEdit [78]
    Left = 369
    Top = 387
    Width = 73
    TabOrder = 35
    OnExit = T1Exit
    DataField = 'DOMI_HAST_2'
    DataSource = data_ventana
    StyleController = padr_estilo
    TimeEditFormat = tfHourMin
    StoredValues = 4
  end
  object DBCodigo: TdxDBEdit [79]
    Left = 112
    Top = 56
    Width = 89
    TabOrder = 3
    CharCase = ecUpperCase
    DataField = 'CODI_TURNO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object DBPrimer_Descanso: TdxDBEdit [80]
    Left = 112
    Top = 183
    Width = 89
    TabOrder = 6
    CharCase = ecUpperCase
    DataField = 'PRIM_DESCANSO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object DBSegundo_Descanso: TdxDBEdit [81]
    Left = 344
    Top = 183
    Width = 89
    TabOrder = 7
    CharCase = ecUpperCase
    DataField = 'SEGU_DESCANSO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit1: TdxDBEdit [82]
    Left = 530
    Top = 259
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 46
    TabStop = False
    DataField = 'LUNE_DISPONIBLE'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit9: TdxDBEdit [83]
    Left = 530
    Top = 279
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 47
    TabStop = False
    DataField = 'MART_DISPONIBLE'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit10: TdxDBEdit [84]
    Left = 530
    Top = 299
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 48
    TabStop = False
    DataField = 'MIER_DISPONIBLE'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit11: TdxDBEdit [85]
    Left = 530
    Top = 319
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 49
    TabStop = False
    DataField = 'JUEV_DISPONIBLE'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit12: TdxDBEdit [86]
    Left = 530
    Top = 339
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 50
    TabStop = False
    DataField = 'VIER_DISPONIBLE'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit13: TdxDBEdit [87]
    Left = 530
    Top = 367
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 51
    TabStop = False
    DataField = 'SABA_DISPONIBLE'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit14: TdxDBEdit [88]
    Left = 530
    Top = 387
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 52
    TabStop = False
    DataField = 'DOMI_DISPONIBLE'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit15: TdxDBEdit [89]
    Left = 461
    Top = 419
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 53
    TabStop = False
    DataField = 'TOTA_CONTRATADOS'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit16: TdxDBEdit [90]
    Left = 530
    Top = 419
    Width = 49
    Color = clBtnFace
    Enabled = False
    TabOrder = 54
    TabStop = False
    DataField = 'TOTA_DISPONIBLES'
    DataSource = data_ventana
    ReadOnly = True
    StyleController = padr_estilo
    StoredValues = 64
  end
  inherited pane_beve_abajo: TPanel
    Top = 490
    Width = 656
    TabOrder = 44
    inherited padr_beve_abajo: TBevel
      Width = 650
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 656
    TabOrder = 45
  end
  inherited Tabla_Ventana: TTable
    OnCalcFields = Tabla_VentanaCalcFields
    TableName = 'GLO_TURNOS'
    object Tabla_VentanaCONS_TURNO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_TURNO'
      Required = True
    end
    object Tabla_VentanaCODI_TURNO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_TURNO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaTIPO_TURNO: TIntegerField
      DisplayLabel = 'Tipo Turno'
      FieldName = 'TIPO_TURNO'
    end
    object Tabla_VentanaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Size = 240
    end
    object Tabla_VentanaLUNE_DESD_1: TDateTimeField
      DisplayLabel = 'Lunes Desde 1ª Jornada'
      FieldName = 'LUNE_DESD_1'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaLUNE_HAST_1: TDateTimeField
      DisplayLabel = 'Lunes Hasta 1ª Jornada'
      FieldName = 'LUNE_HAST_1'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaLUNE_DESD_2: TDateTimeField
      DisplayLabel = 'Lunes Desde 2ª Jornada'
      FieldName = 'LUNE_DESD_2'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaLUNE_HAST_2: TDateTimeField
      DisplayLabel = 'Lunes Hasta 2ª Jornada'
      FieldName = 'LUNE_HAST_2'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaLUNE_MINUTOS: TIntegerField
      DisplayLabel = 'Lunes Minutos'
      FieldName = 'LUNE_MINUTOS'
      DisplayFormat = ',0'
    end
    object Tabla_VentanaMART_DESD_1: TDateTimeField
      DisplayLabel = 'Martes Desde 1ª Jornada'
      FieldName = 'MART_DESD_1'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaMART_HAST_1: TDateTimeField
      DisplayLabel = 'Martes Hasta 1ª Jornada'
      FieldName = 'MART_HAST_1'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaMART_DESD_2: TDateTimeField
      DisplayLabel = 'Martes Desde 2ª Jornada'
      FieldName = 'MART_DESD_2'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaMART_HAST_2: TDateTimeField
      DisplayLabel = 'Martes Hasta 2ª Jornada'
      FieldName = 'MART_HAST_2'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaMART_MINUTOS: TIntegerField
      DisplayLabel = 'Martes Minutos'
      FieldName = 'MART_MINUTOS'
      DisplayFormat = ',0'
    end
    object Tabla_VentanaMIER_DESD_1: TDateTimeField
      DisplayLabel = 'Miercoles Desde 1ª Jornada'
      FieldName = 'MIER_DESD_1'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaMIER_HAST_1: TDateTimeField
      DisplayLabel = 'Miercoles Hasta 1ª Jornada'
      FieldName = 'MIER_HAST_1'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaMIER_DESD_2: TDateTimeField
      DisplayLabel = 'Miercoles Desde 2ª Jornada'
      FieldName = 'MIER_DESD_2'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaMIER_HAST_2: TDateTimeField
      DisplayLabel = 'Miercoles Hasta 2ª Jornada'
      FieldName = 'MIER_HAST_2'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaMIER_MINUTOS: TIntegerField
      DisplayLabel = 'Miercoles Minutos'
      FieldName = 'MIER_MINUTOS'
      DisplayFormat = ',0'
    end
    object Tabla_VentanaJUEV_DESD_1: TDateTimeField
      DisplayLabel = 'Jueves Desde 1ª Jornada'
      FieldName = 'JUEV_DESD_1'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaJUEV_HAST_1: TDateTimeField
      DisplayLabel = 'Jueves Hasta 1ª Jornada'
      FieldName = 'JUEV_HAST_1'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaJUEV_DESD_2: TDateTimeField
      DisplayLabel = 'Jueves Desde 2ª Jornada'
      FieldName = 'JUEV_DESD_2'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaJUEV_HAST_2: TDateTimeField
      DisplayLabel = 'Jueves Hasta 2ª Jornada'
      FieldName = 'JUEV_HAST_2'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaJUEV_MINUTOS: TIntegerField
      DisplayLabel = 'Jueves Minutos'
      FieldName = 'JUEV_MINUTOS'
      DisplayFormat = ',0'
    end
    object Tabla_VentanaVIER_DESD_1: TDateTimeField
      DisplayLabel = 'Viernes Desde 1ª Jornada'
      FieldName = 'VIER_DESD_1'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaVIER_HAST_1: TDateTimeField
      DisplayLabel = 'Viernes Hasta 1ª Jornada'
      FieldName = 'VIER_HAST_1'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaVIER_DESD_2: TDateTimeField
      DisplayLabel = 'Viernes Desde 2ª Jornada'
      FieldName = 'VIER_DESD_2'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaVIER_HAST_2: TDateTimeField
      DisplayLabel = 'Viernes Hasta 2ª Jornada'
      FieldName = 'VIER_HAST_2'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaVIER_MINUTOS: TIntegerField
      DisplayLabel = 'Viernes Minutos'
      FieldName = 'VIER_MINUTOS'
      DisplayFormat = ',0'
    end
    object Tabla_VentanaSABA_DESD_1: TDateTimeField
      DisplayLabel = 'Sábado Desde 1ª Jornada'
      FieldName = 'SABA_DESD_1'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaSABA_HAST_1: TDateTimeField
      DisplayLabel = 'Sábado Hasta 1ª Jornada'
      FieldName = 'SABA_HAST_1'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaSABA_DESD_2: TDateTimeField
      DisplayLabel = 'Sábado Desde 2ª Jornada'
      FieldName = 'SABA_DESD_2'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaSABA_HAST_2: TDateTimeField
      DisplayLabel = 'Sábado Hasta 2ª Jornada'
      FieldName = 'SABA_HAST_2'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaSABA_MINUTOS: TIntegerField
      DisplayLabel = 'Sábado Minutos'
      FieldName = 'SABA_MINUTOS'
      DisplayFormat = ',0'
    end
    object Tabla_VentanaDOMI_DESD_1: TDateTimeField
      DisplayLabel = 'Domingo Desde 1ª Jornada'
      FieldName = 'DOMI_DESD_1'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaDOMI_HAST_1: TDateTimeField
      DisplayLabel = 'Domingo Hasta 1ª Jornada'
      FieldName = 'DOMI_HAST_1'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaDOMI_DESD_2: TDateTimeField
      DisplayLabel = 'Domingo Desde 2ª Jornada'
      FieldName = 'DOMI_DESD_2'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaDOMI_HAST_2: TDateTimeField
      DisplayLabel = 'Domingo Hasta 2ª Jornada'
      FieldName = 'DOMI_HAST_2'
      DisplayFormat = 'hh:mm'
    end
    object Tabla_VentanaDOMI_MINUTOS: TIntegerField
      DisplayLabel = 'Domingo Minutos'
      FieldName = 'DOMI_MINUTOS'
      DisplayFormat = ',0'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaPRIM_DESCANSO: TIntegerField
      DisplayLabel = 'Primer descanso'
      FieldName = 'PRIM_DESCANSO'
    end
    object Tabla_VentanaSEGU_DESCANSO: TIntegerField
      DisplayLabel = 'Segundo descanso'
      FieldName = 'SEGU_DESCANSO'
    end
    object Tabla_VentanaLUNE_DISPONIBLE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'LUNE_DISPONIBLE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object Tabla_VentanaMART_DISPONIBLE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'MART_DISPONIBLE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object Tabla_VentanaMIER_DISPONIBLE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'MIER_DISPONIBLE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object Tabla_VentanaJUEV_DISPONIBLE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'JUEV_DISPONIBLE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object Tabla_VentanaVIER_DISPONIBLE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'VIER_DISPONIBLE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object Tabla_VentanaSABA_DISPONIBLE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'SABA_DISPONIBLE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object Tabla_VentanaDOMI_DISPONIBLE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DOMI_DISPONIBLE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object Tabla_VentanaTOTA_CONTRATADOS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTA_CONTRATADOS'
      DisplayFormat = ',0'
      Calculated = True
    end
    object Tabla_VentanaTOTA_DISPONIBLES: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTA_DISPONIBLES'
      DisplayFormat = ',0'
      Calculated = True
    end
  end
end
