object DataModule1: TDataModule1
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 598
  Width = 759
  PixelsPerInch = 120
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\iso4f\OneDrive\Documents\GitHub\birykov\Win32\Debug\'#1041#1110#1088#1102#1082#1086#1074#1072 +
      '_'#1052#1072#1075#1072#1079#1080#1085'_'#1082#1086#1084#1087#8217#1102#1090#1077#1088#1085#1086#1111'_'#1090#1077#1093#1085#1110#1082#1080'.MDB;Mode=Share Deny None;Persist S' +
      'ecurity Info=False;Jet OLEDB:System database="";Jet OLEDB:Regist' +
      'ry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=' +
      '5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bul' +
      'k Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Datab' +
      'ase Password="";Jet OLEDB:Create System Database=False;Jet OLEDB' +
      ':Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=F' +
      'alse;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SF' +
      'P=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 670
    Top = 30
  end
  object atProduct: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableDirect = True
    TableName = 'Product'
    Left = 50
    Top = 30
  end
  object dsProduct: TDataSource
    DataSet = atProduct
    Left = 150
    Top = 30
  end
  object atProvider: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Provider'
    Left = 50
    Top = 100
  end
  object dsProvider: TDataSource
    DataSet = atProvider
    Left = 150
    Top = 100
  end
  object atCompanyDetails: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Company details'
    Left = 50
    Top = 180
  end
  object dsCompanyDetails: TDataSource
    DataSet = atCompanyDetails
    Left = 150
    Top = 180
  end
  object atClients: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Clients'
    Left = 50
    Top = 250
  end
  object dsClients: TDataSource
    DataSet = atClients
    Left = 150
    Top = 250
  end
  object atWorkers: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Workers'
    Left = 60
    Top = 320
  end
  object dsWorkers: TDataSource
    DataSet = atWorkers
    Left = 140
    Top = 320
  end
  object atCheck: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'OrderCheck'
    Left = 50
    Top = 400
  end
  object atOrderProduct: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'codeorder'
    MasterFields = 'codeorder'
    MasterSource = dsCheck
    TableName = 'Order_product'
    Left = 50
    Top = 480
  end
  object dsCheck: TDataSource
    DataSet = atCheck
    Left = 160
    Top = 400
  end
  object dsOrderProduct: TDataSource
    DataSet = atOrderProduct
    Left = 160
    Top = 480
  end
  object aspOrderByDate: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Order_on_a_specific_day'
    Parameters = <
      item
        Name = '['#1042#1074#1077#1076#1110#1090#1100' '#1076#1072#1090#1091' '#1079#1072#1084#1086#1074#1083#1077#1085#1085#1103' '#1090#1086#1074#1072#1088#1091']'
        DataType = ftDateTime
        Value = 44845d
      end>
    Left = 280
    Top = 130
  end
  object dsOrderByDate: TDataSource
    DataSet = aspOrderByDate
    Left = 390
    Top = 130
  end
  object dsPayment: TDataSource
    DataSet = atPayment
    Left = 350
    Top = 30
  end
  object atPayment: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'codeclient'
    MasterFields = 'codeclient'
    MasterSource = dsClients
    TableName = 'Payment1'
    Left = 260
    Top = 30
  end
end
