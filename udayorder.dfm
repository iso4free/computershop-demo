object frmDayOrder: TfrmDayOrder
  Left = 0
  Top = 0
  Caption = #1047#1072#1084#1086#1074#1083#1077#1085#1085#1103' '#1079#1072' '#1086#1073#1088#1072#1085#1091' '#1076#1072#1090#1091
  ClientHeight = 292
  ClientWidth = 560
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
  object pnlButtons: TPanel
    Left = 0
    Top = 258
    Width = 560
    Height = 34
    Align = alBottom
    AutoSize = True
    Color = 14003189
    ParentBackground = False
    TabOrder = 0
    object lbDate: TLabel
      Left = 16
      Top = 10
      Width = 147
      Height = 13
      Caption = #1054#1073#1077#1088#1110#1090#1100' '#1076#1072#1090#1091' '#1076#1083#1103' '#1087#1077#1088#1077#1075#1083#1103#1076#1091
    end
    object bbCancel: TBitBtn
      Left = 477
      Top = 1
      Width = 82
      Height = 32
      Align = alRight
      Caption = #1047#1072#1082#1088#1080#1090#1080
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Left = 184
      Top = 6
      Width = 105
      Height = 21
      Date = 45111.000000000000000000
      Time = 0.022361435185302980
      TabOrder = 1
      OnChange = DateTimePicker1Change
    end
  end
  object dgDayOrder: TDBGrid
    Left = 0
    Top = 0
    Width = 560
    Height = 258
    Align = alClient
    DataSource = DataModule1.dsOrderByDate
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codeorder'
        Title.Caption = #1050#1086#1076' '#1079#1072#1084#1086#1074#1083#1077#1085#1085#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'client'
        Title.Caption = #1050#1086#1076' '#1082#1083#1110#1108#1085#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dateorder'
        Title.Caption = #1044#1072#1090#1072' '#1079#1072#1084#1086#1074#1083#1077#1085#1085#1103
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Title.Caption = #1062#1110#1085#1072
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'numberoforderedgoods'
        Title.Caption = #1050'-'#1089#1090#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'productcode'
        Title.Caption = #1050#1086#1076' '#1090#1086#1074#1072#1088#1091
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1042#1072#1088#1090#1110#1089#1090#1100
        Width = 72
        Visible = True
      end>
  end
end
