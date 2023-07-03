unit ucoed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TfrmCountryEdit = class(TForm)
    Panel1: TPanel;
    bbOk: TBitBtn;
    bbCancel: TBitBtn;
    edCountry: TEdit;
    edAddress: TEdit;
    lbContact: TLabel;
    lbCountry: TLabel;
    lbAddress: TLabel;
    lbIndex: TLabel;
    meIndex: TMaskEdit;
    meContacts: TMaskEdit;
    procedure bbOkClick(Sender: TObject);
  private
    fNewRecord: Boolean;
    { Private declarations }
  public
    { Public declarations }
    property NewRecord: Boolean read fNewRecord write fNewRecord;
    // ознака додавання нової країни
    procedure Clear; // очистити поля форми для вводу нової країни
    procedure LoadData; // завантажити поточний запис для редагування
    procedure SaveData; // зберегти новий або відредагований запис
  end;

var
  frmCountryEdit: TfrmCountryEdit;

implementation

{$R *.dfm}

uses udata;

{ TfrmCountryEdit }

procedure TfrmCountryEdit.bbOkClick(Sender: TObject);
begin
  SaveData;
end;

procedure TfrmCountryEdit.Clear;
begin
  edCountry.Clear;
  edAddress.Clear;
  meContacts.Clear;
  meIndex.Clear;
end;

procedure TfrmCountryEdit.LoadData;
begin
  with DataModule1 do
  begin
    edCountry.Text := atCompanyDetails.FieldByName('producingcountry')
      .AsString;
    edAddress.Text := atCompanyDetails.FieldByName('address').AsString;
    meContacts.Text := atCompanyDetails.FieldByName('contacts').AsString;
    meIndex.Text := atCompanyDetails.FieldByName('postalindex').AsString;
  end;
end;

procedure TfrmCountryEdit.SaveData;
begin
  with DataModule1 do
  begin
    if NewRecord then
    begin
      atCompanyDetails.Append;
    end
    else
    begin
      atCompanyDetails.Edit;
    end;
    atCompanyDetails.FieldByName('producingcountry').AsString :=
      edCountry.Text;
    atCompanyDetails.FieldByName('address').AsString := edAddress.Text;
    atCompanyDetails.FieldByName('contacts').AsString := meContacts.Text;
    atCompanyDetails.FieldByName('postalindex').AsString := meIndex.Text;
    atCompanyDetails.Post;
  end;
end;

end.
