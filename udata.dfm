object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 397
  Width = 607
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=MSAcc')
    Left = 80
    Top = 56
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 464
    Top = 56
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    ODBCDriver = 'Driver do Microsoft Access (*.mdb)'
    Left = 88
    Top = 192
  end
  object FDMSAccessService1: TFDMSAccessService
    DriverLink = FDPhysMSAccessDriverLink1
    Database = 
      'C:\Users\iso4f\OneDrive\Documents\GitHub\birykov\'#1041#1110#1088#1102#1082#1086#1074#1072'_'#1052#1072#1075#1072#1079#1080 +
      #1085'_'#1082#1086#1084#1087#8217#1102#1090#1077#1088#1085#1086#1111'_'#1090#1077#1093#1085#1110#1082#1080'.accdb'
    Left = 64
    Top = 280
  end
end
