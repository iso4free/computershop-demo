unit utovar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmTovar = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    bbAdd: TBitBtn;
    bbEdit: TBitBtn;
    bbDelete: TBitBtn;
    bbSearch: TBitBtn;
    bbClose: TBitBtn;
    edSearch: TEdit;
    procedure bbCloseClick(Sender: TObject);
    procedure bbAddClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
    procedure bbDeleteClick(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure bbSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTovar: TfrmTovar;

implementation

{$R *.dfm}

uses udata, umain, utovedit;

procedure TfrmTovar.bbAddClick(Sender: TObject);
begin
 frmEditTovar.NewRecord:=True;
 frmEditTovar.Clear;
 frmEditTovar.ShowModal;
end;

procedure TfrmTovar.bbEditClick(Sender: TObject);
begin
 frmEditTovar.NewRecord:=False;
 frmEditTovar.LoadData;
 frmEditTovar.ShowModal;
end;

procedure TfrmTovar.bbSearchClick(Sender: TObject);
begin
 edSearch.Clear;
 edSearch.Visible:=not edSearch.Visible;
 if edSearch.Visible then edSearch.SetFocus;
end;

procedure TfrmTovar.edSearchChange(Sender: TObject);
begin
//фільтрувати таблицю на основі даних для пошуку
if edSearch.Text<>'' then
   DataModule1.atProduct.Locate('product name',QuotedStr(edSearch.Text),[loCaseInsensitive, loPartialKey]);
end;

procedure TfrmTovar.bbCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmTovar.bbDeleteClick(Sender: TObject);
begin
  if MessageDlg('Дійсно видалити цей запис з БД?',TMsgDlgType.mtConfirmation,mbYesNo,0)=mrYes then
     DataModule1.atProduct.Delete;
end;

end.
