unit uclied;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TfrmClientEdit = class(TForm)
    Panel1: TPanel;
    bbOk: TBitBtn;
    bbCancel: TBitBtn;
    lbCode: TLabel;
    lbName: TLabel;
    lbAddress: TLabel;
    lbPhone: TLabel;
    edCode: TEdit;
    edName: TEdit;
    edAddress: TEdit;
    mePhone: TMaskEdit;
    procedure bbOkClick(Sender: TObject);
  private
    fNewRecord: Boolean;
    { Private declarations }
  public
    { Public declarations }
    property NewRecord: Boolean read fNewRecord write fNewRecord;
    // ознака додавання нового клієнта
    procedure Clear; // очистити поля форми для вводу нового клієнта
    procedure LoadData; // завантажити поточний запис для редагування
    procedure SaveData; // зберегти новий або відредагований запис
  end;

var
  frmClientEdit: TfrmClientEdit;

implementation

{$R *.dfm}

uses udata;

{ TfrmClientEdit }

procedure TfrmClientEdit.bbOkClick(Sender: TObject);
begin
  SaveData;
end;

procedure TfrmClientEdit.Clear;
begin
  edCode.Clear;
  edName.Clear;
  edAddress.Clear;
  mePhone.Clear;
end;

procedure TfrmClientEdit.LoadData;
begin
  with DataModule1 do
  begin
    edCode.Text := atClients.FieldByName('codeclient').AsString;
    edName.Text := atClients.FieldByName('nameclient').AsString;
    edAddress.Text := atClients.FieldByName('address').AsString;
    mePhone.Text := atClients.FieldByName('phonenumber').AsString;
  end;
end;

procedure TfrmClientEdit.SaveData;
begin
  with DataModule1 do
  begin
    if NewRecord then
    begin
      atClients.Append;
    end
    else
    begin
      atClients.Edit;
    end;
    atClients.FieldByName('codeclient').AsString := edCode.Text;
    atClients.FieldByName('nameclient').AsString := edName.Text;
    atClients.FieldByName('address').AsString := edAddress.Text;
    atClients.FieldByName('phonenumber').AsString := mePhone.Text;
    atClients.Post;
  end;
end;

end.
