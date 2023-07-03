unit uorder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Grids;

type
  TfrmOrder = class(TForm)
    Panel1: TPanel;
    bbOk: TBitBtn;
    bbCancel: TBitBtn;
    gbOrderCheck: TGroupBox;
    lbCodeOrder: TLabel;
    cbWorkers: TComboBox;
    edCodeOrder: TEdit;
    lblWorker: TLabel;
    bWorkers: TButton;
    lbDateOrder: TLabel;
    dpOrderDate: TDateTimePicker;
    lbClient: TLabel;
    cbClients: TComboBox;
    bClients: TButton;
    gbOrderProducts: TGroupBox;
    sgOrderProduct: TStringGrid;
    pnlOrderButtons: TPanel;
    bbDeleteTovar: TBitBtn;
    bbAddTovar: TBitBtn;
    procedure bbOkClick(Sender: TObject);
    procedure bWorkersClick(Sender: TObject);
    procedure bClientsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    fNewRecord: Boolean;
    { Private declarations }
    procedure GetWorkers; //�������� ������ ����������� � ���������
    procedure GetClients; //�������� ������ �볺��� � ���������
    function GetProdByCode(aCode : Integer) : String; //������� ����� ������ �� ���� ����
    procedure ShowDetails;//���������� � ��� ����� ����������
  public
    { Public declarations }
    property NewRecord: Boolean read fNewRecord write fNewRecord;
    // ������ ��������� ������ ����������
    procedure Clear; // �������� ���� ����� ��� ����� ������ ����������
    procedure LoadData; // ����������� ������� ���������� ��� �����������
    procedure SaveData; // �������� ���� ��� ������������ ����������
  end;

var
  frmOrder: TfrmOrder;

implementation

{$R *.dfm}

uses udata, uworkers, uclient, system.Generics.Collections;

type
   //����� ��� ������������� ����� ����������
    TOrderProduct = record
      aProduct : Integer;  //��� ������ � ��������
      aProdName : String;  //����� ������ ��� �����������
      aNum : Integer;      //�������
      aPayment : Boolean;  //������
      aDelivery : Boolean; //��������
      isDeleted : Boolean; //������ ��������� ������
    end;

 var
   OrderList : Tlist<TOrderProduct>;

{ TfrmOrder }

procedure TfrmOrder.bbOkClick(Sender: TObject);
begin
 SaveData;
end;

procedure TfrmOrder.bClientsClick(Sender: TObject);
var
   client : String;
begin
    frmKlient.ShowModal;
    client:=DataModule1.atClients.FieldByName('nameclient').AsString;
    GetClients;
    cbClients.ItemIndex:=cbClients.Items.IndexOf(client);
end;

procedure TfrmOrder.bWorkersClick(Sender: TObject);
var
   worker : String;
begin
    frmWorkers.ShowModal;
    worker:=DataModule1.atWorkers.FieldByName('workername').AsString;
    GetWorkers;
    cbWorkers.ItemIndex:=cbWorkers.Items.IndexOf(worker);
end;

procedure TfrmOrder.Clear;
begin
  edCodeOrder.Clear;
  dpOrderDate.DateTime:=Now();
  GetWorkers;
  GetClients;
  ShowDetails;
end;

procedure TfrmOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if Assigned(OrderList) then FreeAndNil(OrderList);
 
end;

procedure TfrmOrder.GetClients;
begin
    with DataModule1 do
    begin
        cbClients.Clear;
        atClients.First;
        while not atClients.EOF do
        begin
            cbClients.Items.Add
              (atClients.FieldByName('nameclient').AsString);
            atClients.Next;
        end;
    end;
end;

function TfrmOrder.GetProdByCode(aCode: Integer): String;
begin
  DataModule1.atProduct.Locate('productcode',aCode,[]);
  result:=DataModule1.atProduct.FieldByName('productname').AsString;
end;

procedure TfrmOrder.GetWorkers;
begin
    with DataModule1 do
    begin
        cbWorkers.Clear;
        atWorkers.First;
        while not atWorkers.EOF do
        begin
            cbWorkers.Items.Add
              (atWorkers.FieldByName('workername').AsString);
            atWorkers.Next;
        end;
    end;
end;

procedure TfrmOrder.LoadData;
begin
  with DataModule1 do begin
    edCodeOrder.Text:=atCheck.FieldByName('codeorder').AsString;
    dpOrderDate.DateTime:=atCheck.FieldByName('dateorder').AsDateTime;
    //����� �볺��� �� ����
    GetClients;
    atClients.Locate('codeclient',atCheck.FieldByName('client').AsInteger,[]);
    cbClients.ItemIndex:=cbClients.Items.IndexOf(atClients.FieldByName('nameclient').AsString);
    //����� ���������� �� ����
    GetWorkers;
    atWorkers.Locate('code',atCheck.FieldByName('codeworker').AsInteger,[]);
    cbWorkers.ItemIndex:=cbWorkers.Items.IndexOf(atWorkers.FieldByName('workername').AsString);


    OrderList:=TList<TOrderProduct>.Create;
    atOrderProduct.First;
    while not atOrderProduct.EOF do begin
       //todo: ����������� � ������� ����� ����������
      atOrderProduct.Next;
    end;
    ShowDetails;
  end;
end;

procedure TfrmOrder.SaveData;
begin

end;


procedure TfrmOrder.ShowDetails;
begin
 if not Assigned(OrderList) then
    sgOrderProduct.RowCount:=1
    else sgOrderProduct.RowCount:=OrderList.Count+1;
 sgOrderProduct.Cells[0,0]:='��������';
 sgOrderProduct.Cells[1,0]:='����� ������';
 sgOrderProduct.Cells[2,0]:='ʳ������';
 sgOrderProduct.Cells[3,0]:='����';
 sgOrderProduct.Cells[4,0]:='������';
 sgOrderProduct.Cells[5,0]:='��������';
//todo: ���������� ����
end;

end.
