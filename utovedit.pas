unit utovedit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TfrmEditTovar = class(TForm)
    lbKod: TLabel;
    edKod: TEdit;
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
  private
    fNewRecord: Boolean;
    { Private declarations }
    procedure GetCountrys; //отримати список країн-виробників
  public
    { Public declarations }
    procedure Clear; //очистити поля форми для вводу нового товару
    procedure LoadData; //завантажити поточний запис для редагування
    procedure SaveData; //зберегти новий або відредагований запис

    property NewRecord : Boolean read fNewRecord write fNewRecord; //ознака додавання нового товару
  end;

var
  frmEditTovar: TfrmEditTovar;

implementation

{$R *.dfm}

uses umain, udata;
{ TfrmEditTovar }

procedure TfrmEditTovar.bbOkClick(Sender: TObject);
begin
 SaveData;
end;

procedure TfrmEditTovar.Clear;
begin
 lbNewTovar.Caption:='Новий товар';
 edKod.Clear;
 edNazva.Clear;
 mCharacter.Clear;
 edPrice.Clear;
 edGuarant.Clear;
 GetCountrys;
end;

procedure TfrmEditTovar.GetCountrys;
begin
 with DataModule1 do begin
   cbCountry.Clear;
   atCompanyDetails.First;
   while not atCompanyDetails.EOF do begin
    cbCountry.Items.Add(atCompanyDetails.FieldByName('producing country').AsString);
    atCompanyDetails.Next;
   end;

 end;
end;


procedure TfrmEditTovar.LoadData;
begin
 lbNewTovar.Caption:='Редагування товару';
 GetCountrys;
 with DataModule1 do begin
   edKod.Text:=atProduct.FieldByName('product code').AsString;
   edNazva.Text:=atProduct.FieldByName('product name').AsString;
   mCharacter.Text:=atProduct.FieldByName('characteristic').AsString;
   edPrice.Text:=atProduct.FieldByName('price').AsString;
   edGuarant.Text:=atProduct.FieldByName('guarantee').AsString;
   cbCountry.ItemIndex:=cbCountry.Items.IndexOf(atProduct.FieldByName('producing country').AsString);
 end;
end;

procedure TfrmEditTovar.SaveData;
begin
  with DataModule1 do begin
   if NewRecord then begin
      atProduct.Append;

   end else begin
      atProduct.Edit;
   end;
   atProduct.FieldByName('product code').AsString:=edKod.Text;
   atProduct.FieldByName('product name').AsString:=edNazva.Text;
   atProduct.FieldByName('characteristic').AsString:=mCharacter.Text;
   atProduct.FieldByName('price').AsString:=edPrice.Text;
   atProduct.FieldByName('guarantee').AsString:=edGuarant.Text;
   atProduct.FieldByName('producing country').AsString:=cbCountry.Text;
   atProduct.Post;
  end;
end;

end.
