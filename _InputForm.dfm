object _fInputForm: T_fInputForm
  Left = 242
  Top = 176
  BorderStyle = bsNone
  BorderWidth = 2
  ClientHeight = 225
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 17
    Width = 339
    Height = 25
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BevelWidth = 6
    BorderWidth = 6
    Caption = 'Texto de la busqueda'
    TabOrder = 0
  end
  object pan_0: TPanel
    Left = 0
    Top = 42
    Width = 339
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object edi_0: TdxCurrencyEditPCP
      Left = 8
      Top = 3
      Width = 105
      TabOrder = 0
      Alignment = taRightJustify
      AutoSize = False
      DisplayFormat = ',0'
      Height = 21
      StoredValues = 1
    end
  end
  object pan_1: TPanel
    Left = 0
    Top = 70
    Width = 339
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object edi_1: TdxCurrencyEditPCP
      Left = 8
      Top = 3
      Width = 105
      TabOrder = 0
      Alignment = taRightJustify
      AutoSize = False
      DisplayFormat = ',0.000'
      Height = 21
      StoredValues = 1
    end
  end
  object pan_2: TPanel
    Left = 0
    Top = 98
    Width = 339
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    Visible = False
    object edi_2: TdxEdit
      Left = 6
      Top = 3
      Width = 329
      TabOrder = 0
    end
  end
  object pan_3: TPanel
    Left = 0
    Top = 126
    Width = 339
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    Visible = False
    object edi_3: TRadioButton
      Left = 7
      Top = 6
      Width = 42
      Height = 17
      Caption = '&Si'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object edis: TRadioButton
      Left = 111
      Top = 8
      Width = 42
      Height = 15
      Caption = '&No'
      TabOrder = 1
    end
  end
  object Pan_4: TPanel
    Left = 0
    Top = 154
    Width = 339
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    Visible = False
    object edi_4: TPCPLookUpComboEdit
      Left = 8
      Top = 2
      Width = 325
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      Ctl3D = True
      ListSource = dat_consulta
      ParentCtl3D = False
      TabOrder = 0
      DirectInput = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 193
    Width = 339
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 6
    object Panel3: TPanel
      Left = 154
      Top = 0
      Width = 185
      Height = 32
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object bot_Aceptar: TTBXButtonSCL
        Left = 11
        Top = 3
        Width = 83
        Height = 24
        AllowAllUnchecked = True
        Caption = '&Aceptar'
        ImageIndex = 7
        Images = _fMDI.imagenesPCP
        ModalResult = 1
        TabOrder = 0
        OnClick = bot_AceptarClick
        TipoBotonSCL = tbSCLNormal
      end
      object bot_cancelar: TTBXButtonSCL
        Left = 97
        Top = 3
        Width = 83
        Height = 24
        AllowAllUnchecked = True
        Caption = '&Cancelar'
        ImageIndex = 8
        Images = _fMDI.imagenesPCP
        ModalResult = 2
        TabOrder = 1
        OnClick = bot_cancelarClick
        TipoBotonSCL = tbSCLNormal
      end
    end
  end
  object titu_ventana: TJvGradientHeaderPanel
    Left = 0
    Top = 0
    Width = 339
    Height = 17
    GradientStartColor = 15982803
    GradientEndColor = 15582631
    GradientStyle = grVertical
    LabelTop = 0
    LabelCaption = ' '
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = 8072450
    LabelFont.Height = -13
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = [fsBold]
    LabelAlignment = taLeftJustify
    Align = alTop
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8072450
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    TabOrder = 7
    OnMouseDown = titu_ventanaMouseDown
  end
  object que_consulta: TQuery
    Left = 287
    Top = 17
  end
  object dat_consulta: TDataSource
    DataSet = que_consulta
    Left = 259
    Top = 17
  end
  object Variables: TSCLPropiedadesForm
    TipoDeBusqueda = tbNormal
    TipoGenero = geNinguno
    ColorRequerido = clRed
    ColorNoRequerido = clWindowText
    ColorFuentePanel = clWhite
    ColorPanel = 4227327
    ColorBoton = clBtnShadow
    RedondeoBoton = 4
    TipoPintdoBoton = tpbContorno
    verBotonesNavegacion = True
    Left = 264
    Top = 50
  end
end
