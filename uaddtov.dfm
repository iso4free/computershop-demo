object frmAddPosition: TfrmAddPosition
  Left = 0
  Top = 0
  Caption = #1058#1086#1074#1072#1088
  ClientHeight = 182
  ClientWidth = 295
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
  object lbTovar: TLabel
    Left = 16
    Top = 16
    Width = 30
    Height = 13
    Caption = #1058#1086#1074#1072#1088
  end
  object lbAmount: TLabel
    Left = 16
    Top = 43
    Width = 46
    Height = 13
    Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100
  end
  object lbColor: TLabel
    Left = 16
    Top = 72
    Width = 27
    Height = 13
    Caption = #1050#1086#1083#1110#1088
  end
  object Panel1: TPanel
    Left = 0
    Top = 148
    Width = 295
    Height = 34
    Align = alBottom
    AutoSize = True
    Color = 14003189
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -8
    object bbOk: TBitBtn
      Left = 1
      Top = 1
      Width = 75
      Height = 32
      Align = alLeft
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      ExplicitLeft = 0
    end
    object bbCancel: TBitBtn
      Left = 212
      Top = 1
      Width = 82
      Height = 32
      Align = alRight
      Caption = #1047#1072#1082#1088#1080#1090#1080
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      ExplicitLeft = 324
    end
  end
  object edTovat: TEdit
    Left = 68
    Top = 13
    Width = 219
    Height = 21
    Hint = #1044#1074#1110#1095#1110' '#1082#1083#1072#1094#1085#1110#1090#1100' '#1084#1080#1096#1082#1086#1102' '#1097#1086#1073' '#1074#1110#1076#1082#1088#1080#1090#1080' '#1076#1086#1074#1110#1076#1085#1080#1082' '#1090#1086#1074#1072#1088#1110#1074
    Color = 9984967
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    OnDblClick = edTovatDblClick
  end
  object seAmount: TSpinEdit
    Left = 68
    Top = 40
    Width = 219
    Height = 22
    Color = 9984967
    MaxValue = 100000000
    MinValue = 1
    TabOrder = 2
    Value = 1
  end
  object edColor: TEdit
    Left = 68
    Top = 68
    Width = 219
    Height = 21
    Color = 9984967
    TabOrder = 3
  end
  object chbPayment: TCheckBox
    Left = 16
    Top = 112
    Width = 97
    Height = 17
    Caption = #1054#1087#1083#1072#1090#1072
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object chbDelivery: TCheckBox
    Left = 152
    Top = 112
    Width = 97
    Height = 17
    Caption = #1044#1086#1089#1090#1072#1074#1082#1072
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
end
