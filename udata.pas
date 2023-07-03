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
        atWorkers: TADOTable;
        dsWorkers: TDataSource;
        atCheck: TADOTable;
        atOrderProduct: TADOTable;
        dsCheck: TDataSource;
        dsOrderProduct: TDataSource;
    aspOrderByDate: TADOStoredProc;
    dsOrderByDate: TDataSource;
    dsPayment: TDataSource;
    atPayment: TADOTable;
        procedure DataModuleCreate(Sender: TObject);
        procedure DataModuleDestroy(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
        DatabaseFile: TFileName;
    end;

var
    DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
    // файл БД рохзміщується рразом з виконуваним файлоом програми,
    // це враховуємо при формуванні рядку підключення
    DatabaseFile := ExtractFileDir(ParamStr(0)) +
      '\Бірюкова_Магазин_комп’ютерної_техніки.MDB';
    ADOConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;' +
      'Data Source=' + DatabaseFile;
    // відкриваємо таблиці БД
    atProduct.Open; // товари
    atProvider.Open; // постачальника
    atCompanyDetails.Open; // країни-виробники
    atClients.Open; // клієнти
    atWorkers.Open; // персонал
    atCheck.Open; // історія замовлень
    atOrderProduct.Open; // замовлені товари
    atPayment.Open; //історія оплат
end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
    // закриваємо всі таблиці БД - в оберненому порядку
    atPayment.Close; //історія оплат
    atOrderProduct.Close; // замовлені товари
    atCheck.Close; // історія замовлень
    atWorkers.Close; // персонал
    atClients.Close; // клієнти
    atCompanyDetails.Close; // країни-виробники
    atProvider.Close; // постачальника
    atProduct.Close; // товари
end;

end.
