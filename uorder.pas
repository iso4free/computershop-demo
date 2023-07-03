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
    procedure bbDeleteTovarClick(Sender: TObject);
    procedure bbAddTovarClick(Sender: TObject);
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

uses udata, uworkers, uclient, uaddtov, system.Generics.Collections;

type
   //����� ��� ������������� ����� ����������
    TOrderProduct = class
      aProduct : Integer;  //��� ������ � ��������
      aProdName : String;  //����� ������ ��� �����������
      aNum : Integer;      //�������
      aColor : String;     //����
      aPayment : Boolean;  //������
      aDelivery : Boolean; //��������
      isDeleted : Boolean; //������ ��������� ������
      isNew : Boolean;     //������ ������ ������
      constructor Create(Prod : Integer; num : Integer; Color : String; Pay : Boolean; Delivery : Boolean);
    end;

 var
   OrderList : TObjectList<TOrderProduct>;

{ TfrmOrder }

procedure TfrmOrder.bbAddTovarClick(Sender: TObject);
begin
 frmAddPosition.Clear;
 frmAddPosition.ShowModal;
 if frmAddPosition.ModalResult=mrOk then begin
   //����� ����� �����
   OrderList.Add(TOrderProduct.Create(frmAddPosition.selectedcode,
                                      frmAddPosition.seAmount.Value,
                                      frmAddPosition.edColor.Text,
                                      frmAddPosition.chbPayment.Checked,
                                      frmAddPosition.chbDelivery.Checked));
   OrderList.Items[OrderList.Count-1].isNew := True;
   ShowDetails;
 end;
end;

procedure TfrmOrder.bbDeleteTovarClick(Sender: TObject);
begin
 if sgOrderProduct.RowCount=1 then Exit;
 //�� 1 �����, ���� �� ��������� ������� �� �����������
 OrderList.Items[sgOrderProduct.Row-1].isDeleted:=not OrderList.Items[sgOrderProduct.Row-1].isDeleted;
 if OrderList.Items[sgOrderProduct.Row-1].isNew then OrderList.Remove(OrderList.Items[sgOrderProduct.Row-1]);
 ShowDetails;
end;

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
  dpOrderDate.Date:=Now();
  GetWorkers;
  GetClients;
  if not Assigned(OrderList) then OrderList:=TObjectList<TOrderProduct>.Create;
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
    dpOrderDate.Date:=atCheck.FieldByName('dateorder').AsDateTime;
    //����� �볺��� �� ����
    GetClients;
    atClients.Locate('codeclient',atCheck.FieldByName('client').AsInteger,[]);
    cbClients.ItemIndex:=cbClients.Items.IndexOf(atClients.FieldByName('nameclient').AsString);
    //����� ���������� �� ����
    GetWorkers;
    atWorkers.Locate('code',atCheck.FieldByName('codeworker').AsInteger,[]);
    cbWorkers.ItemIndex:=cbWorkers.Items.IndexOf(atWorkers.FieldByName('workername').AsString);

    OrderList:=TObjectList<TOrderProduct>.Create;
    if not atOrderProduct.IsEmpty then begin
      atOrderProduct.First;
      while not atOrderProduct.EOF do begin
         //����������� � ������� ����� ����������
         OrderList.Add(TOrderProduct.Create(atOrderProduct.FieldByName('product').AsInteger,
                                            atOrderProduct.FieldByName('numberoforderedgoods').AsInteger,
                                            atOrderProduct.FieldByName('color').AsString,
                                            atOrderProduct.FieldByName('payment').AsBoolean,
                                            atOrderProduct.FieldByName('delivery').AsBoolean));
         atOrderProduct.Next;
      end;
    end;
    ShowDetails;
  end;
end;

procedure TfrmOrder.SaveData;
var
   i : Integer;
begin
 with DataModule1 do begin
   if NewRecord then begin
      //������ ������ � ���� ��� ������ �������� �������
      for i:=0 to OrderList.Count-1 do begin
        atOrderProduct.Append;
        atOrderProduct.FieldByName('codeorder').AsString:=edCodeOrder.Text;
        atOrderProduct.FieldByName('product').AsInteger:=OrderList.Items[i].aProduct;
        atOrderProduct.FieldByName('numberoforderedgoods').AsInteger:=OrderList.Items[i].aNum;
        atOrderProduct.FieldByName('color').AsString:=OrderList.Items[i].aColor;
        atOrderProduct.FieldByName('payment').AsBoolean:=OrderList.Items[i].aPayment;
        atOrderProduct.FieldByName('delivery').AsBoolean:=OrderList.Items[i].aDelivery;
        atOrderProduct.Post;
      end;
     end else begin
     //���������� �� ����� ����� � ������� ����, � �.�. ��������� �������� ������
       atOrderProduct.First;
       for i := 0 to OrderList.Count-1 do begin
         if OrderList.Items[i].isDeleted then begin
           atOrderProduct.Delete;
         end else begin
          if not OrderList.Items[i].isNew then atOrderProduct.Edit
             else atOrderProduct.Append;
             atOrderProduct.FieldByName('codeorder').AsString:=edCodeOrder.Text;
             atOrderProduct.FieldByName('product').AsInteger:=OrderList.Items[i].aProduct;
             atOrderProduct.FieldByName('numberoforderedgoods').AsInteger:=OrderList.Items[i].aNum;
             atOrderProduct.FieldByName('color').AsString:=OrderList.Items[i].aColor;
             atOrderProduct.FieldByName('payment').AsBoolean:=OrderList.Items[i].aPayment;
             atOrderProduct.FieldByName('delivery').AsBoolean:=OrderList.Items[i].aDelivery;
             atOrderProduct.Post;
             atOrderProduct.Next;
         end;
       end;
     end;
   //���� ���� �������� ������� ������� �����
   if NewRecord then atCheck.Append else atCheck.Edit;
   atCheck.FieldByName('codeorder').AsString:=edCodeOrder.Text;
   atCheck.FieldByName('codeworker').AsInteger:=atWorkers.FieldByName('code').AsInteger;
   atCheck.FieldByName('client').AsInteger:=atClients.FieldByName('codeclient').AsInteger;
   atCheck.FieldByName('dateorder').AsDateTime:=dpOrderDate.Date;
   atCheck.Post;
 end;
end;


procedure TfrmOrder.ShowDetails;
var
  i : Integer;
begin
 sgOrderProduct.Cells[0,0]:='��������';
 sgOrderProduct.Cells[1,0]:='����� ������';
 sgOrderProduct.Cells[2,0]:='ʳ������';
 sgOrderProduct.Cells[3,0]:='����';
 sgOrderProduct.Cells[4,0]:='������';
 sgOrderProduct.Cells[5,0]:='��������';
 if not Assigned(OrderList) then begin
    sgOrderProduct.RowCount:=1;
    Exit;
 end
    else sgOrderProduct.RowCount:=OrderList.Count+1;
  for i:= 0 to OrderList.Count-1 do begin
     if OrderList.Items[i].isDeleted then sgOrderProduct.Cells[0,i+1]:='*'
      else sgOrderProduct.Cells[0,i+1]:='';
     sgOrderProduct.Cells[1,i+1]:=OrderList.Items[i].aProdName;
     sgOrderProduct.Cells[2,i+1]:=IntToStr(OrderList.Items[i].aNum);
     sgOrderProduct.Cells[3,i+1]:=OrderList.Items[i].aColor;
     if OrderList.Items[i].aPayment then sgOrderProduct.Cells[4,i+1]:='���'
       else sgOrderProduct.Cells[4,i+i]:='�';
     if OrderList.Items[i].aDelivery then sgOrderProduct.Cells[5,i+1]:='���'
       else sgOrderProduct.Cells[5,i+i]:='�';
  end;
  sgOrderProduct.Row:=sgOrderProduct.RowCount-1;
end;

{ TOrderProduct }

constructor TOrderProduct.Create(Prod, num: Integer; color : String; Pay, Delivery: Boolean);
begin
      aProduct := Prod;
      aProdName := frmOrder.GetProdByCode(Prod);
      aNum :=num;
      aColor := Color;
      aPayment := Pay;
      aDelivery :=Delivery;
      isDeleted := False;
      isNew := False;
end;

end.
