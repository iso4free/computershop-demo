object frmCountryEdit: TfrmCountryEdit
  Left = 0
  Top = 0
  ClientHeight = 171
  ClientWidth = 319
  Color = 14003189
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object lbContact: TLabel
    Left = 24
    Top = 70
    Width = 49
    Height = 13
    Caption = #1050#1086#1085#1090#1072#1082#1090#1080
  end
  object lbCountry: TLabel
    Left = 24
    Top = 16
    Width = 33
    Height = 13
    Caption = #1050#1088#1072#1111#1085#1072
  end
  object lbAddress: TLabel
    Left = 24
    Top = 43
    Width = 37
    Height = 13
    Caption = #1040#1076#1088#1077#1089#1072
  end
  object lbIndex: TLabel
    Left = 24
    Top = 97
    Width = 86
    Height = 13
    Caption = #1055#1086#1096#1090#1086#1074#1080#1081' '#1110#1085#1076#1077#1082#1089
  end
  object Panel1: TPanel
    Left = 0
    Top = 137
    Width = 319
    Height = 34
    Align = alBottom
    AutoSize = True
    TabOrder = 0
    ExplicitTop = 128
    ExplicitWidth = 313
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
      Left = 236
      Top = 1
      Width = 82
      Height = 32
      Align = alRight
      Caption = #1047#1072#1082#1088#1080#1090#1080
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      ExplicitLeft = 230
    end
  end
  object edCountry: TEdit
    Left = 90
    Top = 13
    Width = 213
    Height = 21
    Color = 9984967
    TabOrder = 1
    Text = 'edCountry'
  end
  object edAddress: TEdit
    Left = 90
    Top = 40
    Width = 213
    Height = 21
    Color = 9984967
    TabOrder = 2
    Text = 'edAddress'
  end
  object meIndex: TMaskEdit
    Left = 116
    Top = 94
    Width = 184
    Height = 21
    Color = 9984967
    EditMask = '00000;1;_'
    MaxLength = 5
    TabOrder = 3
    Text = '     '
  end
  object meContacts: TMaskEdit
    Left = 90
    Top = 67
    Width = 208
    Height = 21
    Color = 9984967
    EditMask = '000000000;1;_'
    MaxLength = 9
    TabOrder = 4
    Text = '         '
  end
end
