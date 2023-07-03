unit uworker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.WinXPickers;

type
  TfrmWorker = class(TForm)
    Panel1: TPanel;
    bbOk: TBitBtn;
    bbCancel: TBitBtn;
    lbName: TLabel;
    edName: TEdit;
    lbAddress: TLabel;
    edAddress: TEdit;
    lbPhone: TLabel;
    mePhone: TMaskEdit;
    Label1: TLabel;
    dpBirthday: TDatePicker;
    Label2: TLabel;
    edEmail: TEdit;
    lbPosada: TLabel;
    lbSalary: TLabel;
    edSalary: TEdit;
    cbPosition: TComboBox;
    cbGender: TComboBox;
    lbGender: TLabel;
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
  frmWorker: TfrmWorker;

implementation

{$R *.dfm}

uses udata;

{ TForm1 }

procedure TfrmWorker.bbOkClick(Sender: TObject);
begin
  SaveData;
end;

procedure TfrmWorker.Clear;
begin
  edName.Clear;
  edAddress.Clear;
  mePhone.Clear;
  dpBirthday.Date := Now();
  edEmail.Clear;
  cbPosition.ItemIndex := -1;
  edSalary.Clear;
  cbGender.ItemIndex := -1;
end;

procedure TfrmWorker.LoadData;
begin
  with DataModule1 do
  begin
    edName.Text := atWorkers.FieldByName('workername').AsString;
    edAddress.Text := atWorkers.FieldByName('address').AsString;
    mePhone.Text := atWorkers.FieldByName('phonenumber').AsString;
    dpBirthday.Date := atWorkers.FieldByName('datebirth').AsDateTime;
    edEmail.Text := atWorkers.FieldByName('email').AsString;
    cbPosition.Text := atWorkers.FieldByName('position').AsString;
    edSalary.Text := atWorkers.FieldByName('salary').AsString;
    cbGender.ItemIndex := cbGender.Items.IndexOf
      (atWorkers.FieldByName('woman/man').AsString);
  end;
end;

procedure TfrmWorker.SaveData;
begin
  with DataModule1 do
  begin
    if NewRecord then
      atWorkers.Append
    else
      atWorkers.Edit;
    atWorkers.FieldByName('workername').AsString := edName.Text;
    atWorkers.FieldByName('address').AsString := edAddress.Text;
    atWorkers.FieldByName('phonenumber').AsString := mePhone.Text;
    atWorkers.FieldByName('datebirth').AsDateTime := dpBirthday.Date;
    atWorkers.FieldByName('email').AsString := edEmail.Text;
    atWorkers.FieldByName('position').AsString := cbPosition.Text;
    atWorkers.FieldByName('salary').AsString := edSalary.Text;
    atWorkers.FieldByName('woman/man').AsString := cbGender.Text;

    atWorkers.Post;
  end;
end;

end.
