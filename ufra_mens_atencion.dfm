object ffra_mens_atencion: Tffra_mens_atencion
  Left = 0
  Top = 0
  Width = 443
  Height = 19
  Align = alTop
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentColor = False
  ParentFont = False
  TabOrder = 0
  object padr_shap_top: TShape
    Left = 0
    Top = 0
    Width = 443
    Height = 1
    Align = alTop
  end
  object padr_shap_bottom: TShape
    Left = 0
    Top = 18
    Width = 443
    Height = 1
    Align = alBottom
  end
  object padr_shap_right: TShape
    Left = 442
    Top = 1
    Width = 1
    Height = 17
    Align = alRight
  end
  object padr_shap_left: TShape
    Left = 0
    Top = 1
    Width = 1
    Height = 17
    Align = alLeft
  end
  object fram_label: TAdvPanel
    Left = 1
    Top = 1
    Width = 441
    Height = 17
    Align = alClient
    BevelOuter = bvNone
    Color = 3538379
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    OnResize = fram_labelResize
    AnchorHint = False
    AutoSize.Enabled = False
    AutoSize.Height = False
    AutoSize.Width = False
    AutoHideChildren = True
    BackgroundPosition = bpTopLeft
    BorderColor = clGreen
    BorderShadow = False
    Buffered = True
    CanMove = False
    CanSize = False
    Caption.ButtonPosition = cbpRight
    Caption.Color = clHighlight
    Caption.ColorTo = clWhite
    Caption.CloseColor = clBtnFace
    Caption.CloseButton = False
    Caption.CloseButtonColor = clWhite
    Caption.Flat = False
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Height = 20
    Caption.Indent = 5
    Caption.MinMaxButton = False
    Caption.MinMaxButtonColor = clWhite
    Caption.ShadeLight = 200
    Caption.ShadeGrain = 32
    Caption.ShadeType = stHShadeInv
    Caption.Shape = csRectangle
    Caption.TopIndent = 0
    Caption.Visible = False
    Collaps = False
    CollapsColor = clGray
    CollapsDelay = 20
    CollapsSteps = 0
    ColorTo = 253094
    FixedTop = False
    FixedLeft = False
    FixedHeight = False
    FixedWidth = False
    FreeOnClose = False
    Hover = True
    HoverColor = 4227327
    HoverFontColor = clWhite
    Indent = 5
    PictureContainer = fram_pict_container
    Position.Save = False
    Position.Location = clRegistry
    ShadowColor = clGray
    ShadowOffset = 2
    ShowMoveCursor = False
    TextVAlign = tvaCenter
    TopIndent = 0
    URLColor = clBlue
    FullHeight = 15
    object data_label: TDBText
      Left = 294
      Top = 3
      Width = 50
      Height = 13
      AutoSize = True
      Transparent = True
      Visible = False
    end
    object boto_Salir: TSpeedButton
      Left = 423
      Top = 0
      Width = 18
      Height = 17
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000074
        9CFF076382FF005C7BFFAED8E6FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000C86
        B0FF5EB6D4FF028AB8FF035570FF004962FFE4F0F4FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00004259FF073E50FF002B39FF0B83
        ACFF60B9D7FF0F95C3FF0F95C3FF034C65FF006080FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00097093FFFFFFFFFFFFFFFFFF0A80
        A8FF5FBBDAFF0F9AC8FF0F9AC8FF0F9AC8FF0C86B0FFFF00FF00FF00FF00FF00
        FF00FF00FF00000885FF0B0B0BFFFF00FF00055570FFFFFFFFFFFFFFFFFF097C
        A4FF60BEDDFF109DCCFF109DCCFF109DCCFF0B83ACFFFF00FF00FF00FF00FF00
        FF00FF00FF0000044EFF000DB8FF0B0B0BFF061D25FFFFFFFFFFFFFFFFFF0879
        9FFF61C0E0FF46B5DBFF61C0E0FF11A1D1FF0A80A8FFFF00FF00000885FF0004
        4EFF00044EFF00044EFF0011FFFF000DB8FF0B0B0BFFFFFFFFFFFFFFFFFF0775
        9AFF61C2E3FF000000FF000000FF61C2E3FF097CA4FFFF00FF0000044EFF7C8A
        FFFF0011FFFF0011FFFF0011FFFF0011FFFF000DB8FF0B0B0BFFFFFFFFFF0671
        96FF62C6E7FF2DB2DFFF000000FF62C6E7FF08799FFFFF00FF0000044EFF7C8A
        FFFF7C8AFFFF7C8AFFFF0001FFFF7C8AFFFF0102B8FF0B0B0BFFFFFFFFFF056D
        92FF62C8EAFF14ACE0FF14ACE0FF14ACE0FF07759AFFFF00FF000B0B0BFF0B0B
        0BFF0B0B0BFF0B0B0BFF7C8AFFFF0102B8FF0B0B0BFFFFFFFFFFFFFFFFFF046A
        8CFF63CAEEFF14B0E5FF14B0E5FF14B0E5FF067196FFFF00FF00FF00FF00FF00
        FF00FF00FF0000044EFF7C8AFFFF0B0B0BFF063A4CFFFFFFFFFFFFFFFFFF0366
        88FF63CDF2FF15B4EAFF15B4EAFF15B4EAFF056D92FFFF00FF00FF00FF00FF00
        FF00FF00FF000B0B0BFF0B0B0BFFFF00FF000A779CFFFFFFFFFFFFFFFFFF0263
        83FF64D0F4FF16B8EFFF16B8EFFF16B8EFFF046A8CFFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00076382FFFFFFFFFFFFFFFFFF0075
        9DFF00465EFF42C2ECFF17BCF4FF17BCF4FF036688FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00044E67FFFFFFFFFFFFFFFFFFFFFF
        FFFF003040FF006283FF26AAD7FF14B7EEFF026383FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00003547FF073E50FF073E50FF073E
        50FF073E50FF002B39FF002937FF003E53FF004962FFFF00FF00}
      Visible = False
    end
  end
  object fram_pict_container: TPictureContainer
    Items = <
      item
        Picture.Stretch = False
        Picture.Frame = 1
        Picture.Data = {
          47494638396110001000870000000000636363C60000D65252DE0000DE5252E7
          4242EF0000EF4242F75A5AF76363F78484FF0000FF0808FF1010FF1818FF2121
          FF2929FF3131FF3939FF4242FF4A4AFF5252FF5A5AFF6363FF6B6BFF7373FF7B
          7BFF8484FF8C8CFF9494FF9C9CFFA5A5FFADADFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000021F904030000FF002C00000000100010000008
          9900FF091C48B060410208132234F88FC0000F1F408400F16100818309342CE8
          D0C14387051B145C1448C0C0850C1A17A8DC9001838191042A5848204244000D
          350324B0007302050B3915E4AC4001660408162C08B59994820406242148AD50
          21A754A9501B3E909A5382550807483E78E02067599B0E1E0820E9A06DDAB164
          DD8E6CE8A081DDBA751B38984BD2AE5FBF7C072A54C8B070C180003B}
        Name = 'error'
        Tag = 0
      end
      item
        Picture.Stretch = False
        Picture.Frame = 1
        Picture.Data = {
          47494638396110001000870000000000085200085A00086300105A0010630010
          6B00186B00187300217310297B18317B18319C08319C1039A50839A51039A518
          39AD1842AD1842AD2142B5184A94394AAD184AAD214AB521529C4252B52152B5
          295ABD295AC63163BD3163C63163C6396BC63973D6427BD6427BDE4A84DE4A84
          DE528CBD848CDE528CE74A94BD8C94DE6B94E75294E7639CEF63A5EF6BADD69C
          ADEF7BADF773ADF77BB5EF8CB5F77BB5F784B5FF84BDFF8CBDFF94C6F7A5C6FF
          9CCEF7B5CEFFADD6FFADD6FFB5D6FFBDDEFFC6E7FFD6EFFFE7F7FFEFFFFFF7FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000021F904030000FF002C00000000100010000008
          BB00FF091C48B060C10007142C5890A0400083FF0AB4F02184C8901F3B4C1028
          58C0858D1D418608E961A346898D020388701123470F203F72F03042E3C3C388
          2650B0C491C3061023404914107860448918345EBC9809B48287030211845801
          F4850EA0462A700001F5DF010E30B062D50A824357031B1E9C105B4183870D17
          0C082C80E182DAA617385CB88041404A097B19A8C8F060EF5E0837FF1130DC00
          82E1BD2807129050D73006089109062860E0C001030312431C2D3020003B}
        Name = 'ok'
        Tag = 0
      end
      item
        Picture.Stretch = False
        Picture.Frame = 1
        Picture.Data = {
          474946383961100010008700000000000010A50010BD0010CE0010DE0010E700
          10EF0018F70018FF0821FF1029FF1831FF2139DE2139EF2139FF2939FF2942FF
          3129FF3142D63142FF314AFF3942D6394AFF3952FF4252F74252FF425AFF4A5A
          FF5263FF5A6BFF6373F76373FF6B7BFF7384FF7B84FF848CFF8494FF8C94FF8C
          9CFF9494BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000021F904030000FF002C00000000100010000008
          9B00FF091C48B060410108132234F84F4085102348942021A282808318387800
          8102C5090F1F305C1428A0C1850D1D3C743CD161C30606230540B080C125879B
          1B3058A010D3C1049A185662C000C1414C053F2D5858A9F48102022411245DEA
          51E98204501B1E4830214284955E0F201840F28059B32BCF1E0850D6C0D9B407
          0C1818D9D04081BB76ED16384097E4DDBF7FFB0E54A890A1E1820101003B}
        Name = 'info'
        Tag = 0
      end
      item
        Picture.Stretch = False
        Picture.Frame = 1
        Picture.Data = {
          474946383961100010008700000000007B52008452008C5A0094630094632994
          7329947B29948429948C299494299C6300A56B00AD7300B57300BD00BDBD7B00
          C67B00CE8400FFB531FFBD31FFC631FFCE31FFD631FFDE31FFE731FFEF31FFF7
          31FFFF39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFBE04BC21F904030000FF002C00000000100010000008
          9300FF091CF84F82048208094AE0C0E16042851B1428D8E0F061040D093460D4
          10E121848D1A374240E82003820C1900004079D2C1C00618106098A972664C0C
          0DFE31B869B3A64D990C165C3870A1E8059546875E58F08F80850316A24A8D0A
          95C0C001150E54A8A072ABD60108B11AE00AA0C258B0090550186B9682808702
          03502850804200B803034C9870176FDEBE080302003B}
        Name = 'warning'
        Tag = 0
      end
      item
        Picture.Stretch = False
        Picture.Frame = 1
        Picture.Data = {
          474946383961100010008700000031BD104AB5104ABD104AC61852C61852CE21
          52BD2152C6215AC6215ACE295AC62963CE2963E73163C63163CE316BCE316BD6
          316BDE3963BD396BCE3973E74273D64A4A4A4A8CFF525252527BC6527BD65A5A
          5A5A7BC65A84DE636363638CDE6B6B6B6B737B6B84C66B8CCE6B8CDE6B9CF773
          73737394DE739CE773B5FF7B848C7B9CD67B9CE77BA5F7849CCE84ADEF949CA5
          94A5C694ADD694ADEF94CEFF9C9C9C9CADD6A5B5CEA5BDE7ADADADADD6FFADDE
          FFB5BDCEBDC6CEBDC6DEC6CECEC6CEDEC6CEE7C6F7FFCED6E7CEDEF7CEDEFFCE
          EFFFD6DEEFD6DEF7D6E7F7DEDEDEDEE7EFDEE7F7DEEFFFE7E7E7E7E7F7E7EFF7
          EFEFF7EFEFFFEFF7F7F7F7EFF7F7F7F7F7FFFF00FFFFFFEFFFFFF7FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF00FF21F904030000FF002C00000000100010000008
          F500FF098432258AC18350042AFC17E5C8132D10212E39A2646143884276D0A0
          A1C38A96233F141ED16224C58B255496B4B850E4634828519A5CE880450B8E2C
          58285090C204C6BF8725188C58A201C00A2D1F0AA0D0E22307142811202C4040
          4000102D15124CB07204041422091C385870E0861616041628688801CA110462
          1388D03263C0D8B547DA5669A0E04182114C26C02590210B100C4FAAC8103076
          0289050E1404F0010586877F47B2701040208696130202B8C87264438D7F4398
          64711140820D04066C644112C284C21E49AA38B921C30795862A409C569823C8
          9124498E1CE1B1C1C4F085354060B0401DC3F37F0101003B}
        Name = 'help'
        Tag = 0
      end
      item
        Picture.Stretch = False
        Picture.Frame = 1
        Picture.Data = {
          474946383961100010008700000000007B52008452008C5A0094630094632994
          7329947B29948429948C299494299C6300A56B00AD7300B57300BD00BDBD7B00
          C67B00CE8400FFB531FFBD31FFC631FFCE31FFD631FFDE31FFE731FFEF31FFF7
          31FFFF39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFBE04BC21F904030000FF002C00000000100010000008
          9300FF091CF84F82048208094AE0C0E16042851B1428D8E0F061040D093460D4
          10E121848D1A374240E82003820C1900004079D2C1C00618106098A972664C0C
          0DFE31B869B3A64D990C165C3870A1E8059546875E58F08F80850316A24A8D0A
          95C0C001150E54A8A072ABD60108B11AE00AA0C258B0090550186B9682808702
          03502850804200B803034C9870176FDEBE080302003B}
        Name = '3'
        Tag = 0
      end>
    Left = 160
  end
end
