unit ucountries;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCountries = class(TForm)
    Panel1: TPanel;
    bbAdd: TBitBtn;
    bbEdit: TBitBtn;
    bbDelete: TBitBtn;
    bbClose: TBitBtn;
    dgClients: TDBGrid;
    procedure bbCloseClick(Sender: TObject);
    procedure bbDeleteClick(Sender: TObject);
    procedure bbAddClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCountries: TfrmCountries;

implementation

{$R *.dfm}

uses udata, ucoed;

procedure TfrmCountries.bbAddClick(Sender: TObject);
begin
  frmCountryEdit.NewRecord := True;
  frmCountryEdit.Clear;
  frmCountryEdit.ShowModal;
end;

procedure TfrmCountries.bbCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCountries.bbDeleteClick(Sender: TObject);
begin
  if MessageDlg('Дійсно видалити цей запис з БД?', TMsgDlgType.mtConfirmation,
    mbYesNo, 0) = mrYes then
    DataModule1.atCompanyDetails.Delete;
end;

procedure TfrmCountries.bbEditClick(Sender: TObject);
begin
  frmCountryEdit.NewRecord := False;
  frmCountryEdit.LoadData;
  frmCountryEdit.ShowModal;
end;

end.
