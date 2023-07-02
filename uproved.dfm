object frmProviderEdit: TfrmProviderEdit
  Left = 0
  Top = 0
  Caption = #1055#1086#1089#1090#1072#1095#1072#1083#1100#1085#1080#1082
  ClientHeight = 179
  ClientWidth = 326
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
  object lbCountry: TLabel
    Left = 8
    Top = 22
    Width = 85
    Height = 13
    Caption = #1050#1088#1072#1111#1085#1072'-'#1074#1080#1088#1086#1073#1085#1080#1082
  end
  object lbAddress: TLabel
    Left = 8
    Top = 49
    Width = 37
    Height = 13
    Caption = #1040#1076#1088#1077#1089#1072
  end
  object lbName: TLabel
    Left = 8
    Top = 76
    Width = 98
    Height = 13
    Caption = #1030#1084#39#1103' '#1087#1086#1089#1090#1072#1095#1072#1083#1100#1085#1080#1082#1072
  end
  object lbPhone: TLabel
    Left = 8
    Top = 112
    Width = 49
    Height = 13
    Caption = #1050#1086#1085#1090#1072#1082#1090#1080
  end
  object Panel1: TPanel
    Left = 0
    Top = 145
    Width = 326
    Height = 34
    Align = alBottom
    AutoSize = True
    TabOrder = 0
    ExplicitTop = 137
    ExplicitWidth = 319
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
      ExplicitLeft = 0
    end
    object bbCancel: TBitBtn
      Left = 243
      Top = 1
      Width = 82
      Height = 32
      Align = alRight
      Caption = #1047#1072#1082#1088#1080#1090#1080
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      ExplicitLeft = 236
    end
  end
  object cbCountry: TComboBox
    Left = 99
    Top = 19
    Width = 179
    Height = 21
    Style = csDropDownList
    Color = 9984967
    TabOrder = 1
  end
  object bbCountrys: TButton
    Left = 284
    Top = 19
    Width = 34
    Height = 21
    Hint = #1042#1110#1076#1082#1088#1080#1090#1080' '#1076#1086#1074#1110#1076#1085#1080#1082' '#1079' '#1082#1088#1072#1111#1085#1072#1084#1080', '#1103#1082#1097#1086' '#1087#1086#1090#1088#1110#1073#1085#1072' '#1074#1110#1076#1089#1091#1090#1085#1103' '#1074' '#1087#1077#1088#1077#1083#1110#1082#1091
    Caption = '...'
    TabOrder = 2
    OnClick = bbCountrysClick
  end
  object edAddress: TEdit
    Left = 79
    Top = 46
    Width = 239
    Height = 21
    Color = 9984967
    TabOrder = 3
    Text = 'edAddress'
  end
  object edName: TEdit
    Left = 112
    Top = 73
    Width = 206
    Height = 21
    Color = 9984967
    TabOrder = 4
    Text = 'edName'
  end
  object mePhone: TMaskEdit
    Left = 79
    Top = 109
    Width = 239
    Height = 21
    Color = 9984967
    EditMask = '!\+389990000000;1;_'
    MaxLength = 13
    TabOrder = 5
    Text = '+38          '
  end
end
