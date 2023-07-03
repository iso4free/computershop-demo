object frmClientEdit: TfrmClientEdit
  Left = 0
  Top = 0
  ClientHeight = 176
  ClientWidth = 329
  Color = 14003189
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbCode: TLabel
    Left = 24
    Top = 12
    Width = 60
    Height = 13
    Caption = #1050#1086#1076' '#1082#1083#1110#1108#1085#1090#1072
  end
  object lbName: TLabel
    Left = 24
    Top = 43
    Width = 37
    Height = 13
    Caption = #1055'.'#1110'.'#1087'-'#1073'.'
  end
  object lbAddress: TLabel
    Left = 24
    Top = 75
    Width = 37
    Height = 13
    Caption = #1040#1076#1088#1077#1089#1072
  end
  object lbPhone: TLabel
    Left = 24
    Top = 107
    Width = 44
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Panel1: TPanel
    Left = 0
    Top = 142
    Width = 329
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
      Left = 246
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
  object edCode: TEdit
    Left = 90
    Top = 10
    Width = 215
    Height = 21
    Color = 9984967
    TabOrder = 1
    Text = 'edCode'
  end
  object edName: TEdit
    Left = 90
    Top = 40
    Width = 215
    Height = 21
    Color = 9984967
    TabOrder = 2
    Text = 'edName'
  end
  object edAddress: TEdit
    Left = 90
    Top = 73
    Width = 215
    Height = 21
    Color = 9984967
    TabOrder = 3
    Text = 'edAddress'
  end
  object mePhone: TMaskEdit
    Left = 90
    Top = 103
    Width = 215
    Height = 21
    Color = 9984967
    EditMask = '!\+389990000000;1;_'
    MaxLength = 13
    TabOrder = 4
    Text = '+38          '
  end
end
