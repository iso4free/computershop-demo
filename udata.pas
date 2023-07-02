unit udata;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Dialogs;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    atProduct: TADOTable;
    dsProduct: TDataSource;
    atProvider: TADOTable;
    dsProvider: TDataSource;
    atCompanyDetails: TADOTable;
    dsCompanyDetails: TDataSource;
    atClients: TADOTable;
    dsClients: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DatabaseFile : TFileName;
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
 //файл БД рохзміщується рразом з виконуваним файлоом програми,
 //це враховуємо при формуванні рядку підключення
 DatabaseFile:=ExtractFileDir(ParamStr(0))+'\Бірюкова_Магазин_комп’ютерної_техніки.MDB';
 ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;'+
 'Data Source='+DatabaseFile;
 //відкриваємо таблиці БД
 atProduct.Open; //товари
 atProvider.Open; //постачальника
 atCompanyDetails.Open; //країни-виробники
 atClients.Open;  //клієнти
end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
 //закриваємо всі таблиці БД
 atProduct.Close; //товари
 atProvider.Close; //постачальника
 atCompanyDetails.Close; //країни-виробники
 atClients.Close; //клієнти
end;



end.
