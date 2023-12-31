unit utovedit;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
    Vcl.ExtCtrls,
    Vcl.DBCtrls;

type
    TfrmEditTovar = class(TForm)
        lbKod: TLabel;
        edCode: TEdit;
        lbNazva: TLabel;
        edNazva: TEdit;
        mCharacter: TMemo;
        lbPrice: TLabel;
        edPrice: TEdit;
        lbGuarant: TLabel;
        edGuarant: TEdit;
        lbCountry: TLabel;
        cbCountry: TComboBox;
        Panel1: TPanel;
        bbOk: TBitBtn;
        bbCancel: TBitBtn;
        lbNewTovar: TLabel;
        gbCharacter: TGroupBox;
        bbCountrys: TButton;
        procedure bbOkClick(Sender: TObject);
        procedure bbCountrysClick(Sender: TObject);
    private
        fNewRecord: Boolean;
        { Private declarations }
        procedure GetCountrys; // �������� ������ ����-���������
    public
        { Public declarations }
        procedure Clear; // �������� ���� ����� ��� ����� ������ ������
        procedure LoadData; // ����������� �������� ����� ��� �����������
        procedure SaveData; // �������� ����� ��� ������������� �����

        property NewRecord: Boolean read fNewRecord write fNewRecord;
        // ������ ��������� ������ ������
    end;

var
    frmEditTovar: TfrmEditTovar;

implementation

{$R *.dfm}

uses umain, udata, ucountries;
{ TfrmEditTovar }

procedure TfrmEditTovar.bbCountrysClick(Sender: TObject);
var
   country : String;
begin
    frmCountries.ShowModal;
    country:=DataModule1.atCompanyDetails.FieldByName('producingcountry').AsString;
    GetCountrys;
    cbCountry.ItemIndex:=cbCountry.Items.IndexOf(country);
end;

procedure TfrmEditTovar.bbOkClick(Sender: TObject);
begin
    SaveData;
end;

procedure TfrmEditTovar.Clear;
begin
    lbNewTovar.Caption := '����� �����';
    edCode.Clear;
    edNazva.Clear;
    mCharacter.Clear;
    edPrice.Clear;
    edGuarant.Clear;
    GetCountrys;
end;

procedure TfrmEditTovar.GetCountrys;
begin
    with DataModule1 do
    begin
        cbCountry.Clear;
        atCompanyDetails.First;
        while not atCompanyDetails.EOF do
        begin
            cbCountry.Items.Add
              (atCompanyDetails.FieldByName('producingcountry').AsString);
            atCompanyDetails.Next;
        end;
    end;
end;

procedure TfrmEditTovar.LoadData;
begin
    lbNewTovar.Caption := '����������� ������';
    GetCountrys;
    with DataModule1 do
    begin
        edCode.Text := atProduct.FieldByName('productcode').AsString;
        edNazva.Text := atProduct.FieldByName('productname').AsString;
        mCharacter.Text := atProduct.FieldByName('characteristic').AsString;
        edPrice.Text := atProduct.FieldByName('price').AsString;
        edGuarant.Text := atProduct.FieldByName('guarantee').AsString;
        cbCountry.ItemIndex := cbCountry.Items.IndexOf
          (atProduct.FieldByName('producingcountry').AsString);
    end;
end;

procedure TfrmEditTovar.SaveData;
begin
    with DataModule1 do
    begin
        if NewRecord then
        begin
            atProduct.Append;
        end
        else
        begin
            atProduct.Edit;
        end;
        atProduct.FieldByName('productcode').AsString := edCode.Text;
        atProduct.FieldByName('productname').AsString := edNazva.Text;
        atProduct.FieldByName('characteristic').AsString := mCharacter.Text;
        atProduct.FieldByName('price').AsString := edPrice.Text;
        atProduct.FieldByName('guarantee').AsString := edGuarant.Text;
        atProduct.FieldByName('producingcountry').AsString := cbCountry.Text;
        atProduct.Post;
    end;
end;

end.
