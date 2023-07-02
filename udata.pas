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
 //���� �� ����������� ������ � ����������� ������� ��������,
 //�� ��������� ��� ��������� ����� ����������
 DatabaseFile:=ExtractFileDir(ParamStr(0))+'\��������_�������_����������_������.MDB';
 ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;'+
 'Data Source='+DatabaseFile;
 //��������� ������� ��
 atProduct.Open; //������
 atProvider.Open; //�������������
 atCompanyDetails.Open; //�����-���������
 atClients.Open;  //�볺���
end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
 //��������� �� ������� ��
 atProduct.Close; //������
 atProvider.Close; //�������������
 atCompanyDetails.Close; //�����-���������
 atClients.Close; //�볺���
end;



end.
