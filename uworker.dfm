object frmWorker: TfrmWorker
  Left = 0
  Top = 0
  Caption = #1055#1088#1072#1094#1110#1074#1085#1080#1082
  ClientHeight = 301
  ClientWidth = 313
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
  object lbName: TLabel
    Left = 24
    Top = 24
    Width = 37
    Height = 13
    Caption = #1055'.'#1110'.'#1087'-'#1073'.'
  end
  object lbAddress: TLabel
    Left = 24
    Top = 56
    Width = 37
    Height = 13
    Caption = #1040#1076#1088#1077#1089#1072
  end
  object lbPhone: TLabel
    Left = 24
    Top = 88
    Width = 44
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Label1: TLabel
    Left = 24
    Top = 122
    Width = 92
    Height = 13
    Caption = #1044#1072#1090#1072' '#1085#1072#1088#1086#1076#1078#1077#1085#1085#1103
  end
  object Label2: TLabel
    Left = 24
    Top = 152
    Width = 28
    Height = 13
    Caption = 'e-mail'
  end
  object lbPosada: TLabel
    Left = 24
    Top = 179
    Width = 37
    Height = 13
    Caption = #1055#1086#1089#1072#1076#1072
  end
  object lbSalary: TLabel
    Left = 24
    Top = 206
    Width = 48
    Height = 13
    Caption = #1047#1072#1088#1087#1083#1072#1090#1072
  end
  object lbGender: TLabel
    Left = 24
    Top = 233
    Width = 31
    Height = 13
    Caption = #1057#1090#1072#1090#1100
  end
  object Panel1: TPanel
    Left = 0
    Top = 267
    Width = 313
    Height = 34
    Align = alBottom
    AutoSize = True
    Color = 14003189
    ParentBackground = False
    TabOrder = 0
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
      Left = 230
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
  object edName: TEdit
    Left = 90
    Top = 21
    Width = 213
    Height = 21
    Color = 9984967
    TabOrder = 1
    Text = 'edName'
  end
  object edAddress: TEdit
    Left = 90
    Top = 54
    Width = 213
    Height = 21
    Color = 9984967
    TabOrder = 2
    Text = 'edAddress'
  end
  object mePhone: TMaskEdit
    Left = 90
    Top = 84
    Width = 213
    Height = 21
    Color = 9984967
    EditMask = '000000000;1;_'
    MaxLength = 9
    TabOrder = 3
    Text = '         '
  end
  object dpBirthday: TDatePicker
    Left = 153
    Top = 111
    Color = 9984967
    Date = 45110.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 4
  end
  object edEmail: TEdit
    Left = 90
    Top = 149
    Width = 213
    Height = 21
    Color = 9984967
    TabOrder = 5
    Text = 'edEmail'
  end
  object edSalary: TEdit
    Left = 90
    Top = 203
    Width = 213
    Height = 21
    Color = 9984967
    TabOrder = 6
    Text = 'edSalary'
  end
  object cbPosition: TComboBox
    Left = 90
    Top = 176
    Width = 213
    Height = 21
    ItemIndex = 0
    TabOrder = 7
    Text = #1054#1087#1077#1088#1072#1090#1086#1088' call-'#1094#1077#1085#1090#1088#1091
    Items.Strings = (
      #1054#1087#1077#1088#1072#1090#1086#1088' call-'#1094#1077#1085#1090#1088#1091
      #1050#1072#1089#1080#1088
      #1052#1077#1085#1077#1076#1078#1077#1088' '#1079' '#1088#1086#1079#1074#1080#1090#1082#1091', '#1087#1088#1086#1076#1072#1078#1091
      #1055#1088#1086#1076#1072#1074#1077#1094#1100'-'#1082#1086#1085#1089#1091#1083#1100#1090#1072#1085#1090
      #1052#1077#1085#1077#1076#1078#1077#1088' '#1087#1086' '#1088#1086#1073#1086#1090#1110' '#1079' '#1082#1083#1110#1108#1085#1090#1072#1084#1080
      #1040#1076#1084#1110#1085#1110#1089#1090#1088#1072#1090#1086#1088
      #1057#1077#1088#1074#1110#1089'-'#1084#1077#1085#1077#1076#1078#1077#1088)
  end
  object cbGender: TComboBox
    Left = 90
    Top = 230
    Width = 207
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    Sorted = True
    TabOrder = 8
    Text = #1046#1110#1085#1082#1072
    Items.Strings = (
      #1046#1110#1085#1082#1072
      #1063#1086#1083#1086#1074#1110#1082)
  end
end
