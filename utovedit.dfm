object frmEditTovar: TfrmEditTovar
  Left = 0
  Top = 0
  ClientHeight = 330
  ClientWidth = 347
  Color = 14003189
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbKod: TLabel
    Left = 8
    Top = 49
    Width = 68
    Height = 13
    Caption = #1050#1086#1076' '#1090#1086#1074#1072#1088#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbNazva: TLabel
    Left = 8
    Top = 74
    Width = 80
    Height = 13
    Caption = #1053#1072#1079#1074#1072' '#1090#1086#1074#1072#1088#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbPrice: TLabel
    Left = 8
    Top = 218
    Width = 26
    Height = 13
    Caption = #1062#1110#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbGuarant: TLabel
    Left = 8
    Top = 246
    Width = 51
    Height = 13
    Caption = #1043#1072#1088#1072#1085#1090#1110#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbCountry: TLabel
    Left = 8
    Top = 270
    Width = 97
    Height = 13
    Caption = #1050#1088#1072#1111#1085#1072'-'#1074#1080#1088#1086#1073#1085#1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbNewTovar: TLabel
    Left = 0
    Top = 0
    Width = 347
    Height = 33
    Align = alTop
    Alignment = taCenter
    Caption = #1053#1054#1042#1048#1049' '#1058#1054#1042#1040#1056
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 204
  end
  object edCode: TEdit
    Left = 96
    Top = 45
    Width = 243
    Height = 21
    Color = 9984967
    TabOrder = 0
    Text = 'edCode'
  end
  object edNazva: TEdit
    Left = 94
    Top = 72
    Width = 245
    Height = 21
    Color = 9984967
    TabOrder = 1
    Text = 'edNazva'
  end
  object edPrice: TEdit
    Left = 94
    Top = 216
    Width = 245
    Height = 21
    Color = 9984967
    TabOrder = 2
    Text = 'edPrice'
  end
  object edGuarant: TEdit
    Left = 94
    Top = 243
    Width = 245
    Height = 21
    Color = 9984967
    TabOrder = 3
    Text = 'edGuarant'
  end
  object cbCountry: TComboBox
    Left = 111
    Top = 269
    Width = 188
    Height = 21
    Style = csDropDownList
    Color = 14003189
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 347
    Height = 34
    Align = alBottom
    AutoSize = True
    TabOrder = 5
    object bbOk: TBitBtn
      Left = 1
      Top = 1
      Width = 75
      Height = 32
      Align = alLeft
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = bbOkClick
    end
    object bbCancel: TBitBtn
      Left = 264
      Top = 1
      Width = 82
      Height = 32
      Align = alRight
      Caption = #1047#1072#1082#1088#1080#1090#1080
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object gbCharacter: TGroupBox
    Left = 8
    Top = 105
    Width = 331
    Height = 105
    Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object mCharacter: TMemo
      Left = 2
      Top = 15
      Width = 327
      Height = 88
      Align = alClient
      Color = 9984967
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'mCharacter')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 17
    end
  end
  object bbCountrys: TButton
    Left = 305
    Top = 270
    Width = 34
    Height = 21
    Hint = #1042#1110#1076#1082#1088#1080#1090#1080' '#1076#1086#1074#1110#1076#1085#1080#1082' '#1079' '#1082#1088#1072#1111#1085#1072#1084#1080', '#1103#1082#1097#1086' '#1087#1086#1090#1088#1110#1073#1085#1072' '#1074#1110#1076#1089#1091#1090#1085#1103' '#1074' '#1087#1077#1088#1077#1083#1110#1082#1091
    Caption = '...'
    TabOrder = 7
    OnClick = bbCountrysClick
  end
end
