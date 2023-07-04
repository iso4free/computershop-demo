unit uproved;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TfrmProviderEdit = class(TForm)
    Panel1: TPanel;
    bbOk: TBitBtn;
    bbCancel: TBitBtn;
    lbCountry: TLabel;
    lbAddress: TLabel;
    lbName: TLabel;
    lbPhone: TLabel;
    cbCountry: TComboBox;
    bbCountrys: TButton;
    edAddress: TEdit;
    edName: TEdit;
    mePhone: TMaskEdit;
    procedure bbCountrysClick(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
  private
    fNewRecord: Boolean;
    { Private declarations }
    procedure GetCountrys; // отримати список крањн-виробник≥в
  public
    { Public declarations }
    property NewRecord: Boolean read fNewRecord write fNewRecord;
    // ознака додаванн€ нового постачальника
    procedure Clear; // очистити пол€ форми дл€ вводу нового постачальника
    procedure LoadData; // завантажити поточний запис дл€ редагуванн€
    procedure SaveData; // зберегти новий або в≥дредагований запис
  end;

var
  frmProviderEdit: TfrmProviderEdit;

implementation

{$R *.dfm}

uses udata, ucountries;
{ TfrmProviderEdit }

procedure TfrmProviderEdit.bbCountrysClick(Sender: TObject);
begin
  frmCountries.ShowModal;
  GetCountrys;
end;

procedure TfrmProviderEdit.bbOkClick(Sender: TObject);
begin
  SaveData;
end;

procedure TfrmProviderEdit.Clear;
begin
  GetCountrys;
  edAddress.Clear;
  edName.Clear;
  mePhone.Clear;
end;

procedure TfrmProviderEdit.GetCountrys;
begin
  with DataModule1 do
  begin
    cbCountry.Clear;
    atCompanyDetails.First;
    while not atCompanyDetails.EOF do
    begin
      cbCountry.Items.Add(atCompanyDetails.FieldByName('producingcountry')
        .AsString);
      atCompanyDetails.Next;
    end;
  end;
end;

procedure TfrmProviderEdit.LoadData;
begin
  with DataModule1 do
  begin
    GetCountrys;
    cbCountry.ItemIndex := cbCountry.Items.IndexOf
      (atProvider.FieldByName('producingcountry').AsString);
    edAddress.Text := atProvider.FieldByName('address').AsString;
    edName.Text := atProvider.FieldByName('nameprovider').AsString;
    mePhone.Text := atProvider.FieldByName('contacts').AsString;
  end;
end;

procedure TfrmProviderEdit.SaveData;
begin
  with DataModule1 do
  begin
    if NewRecord then
    begin
      atProvider.Append;
    end
    else
    begin
      atProvider.Edit;
    end;

    atProvider.FieldByName('producingcountry').AsString := cbCountry.Text;
    atProvider.FieldByName('address').AsString := edAddress.Text;
    atProvider.FieldByName('nameprovider').AsString := edName.Text;
    atProvider.FieldByName('contacts').AsString := mePhone.Text;

    atProvider.Post;
  end;
end;

end.
