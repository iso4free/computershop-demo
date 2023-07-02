unit uprovider;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmProvider = class(TForm)
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
  frmProvider: TfrmProvider;

implementation

{$R *.dfm}

uses udata, uproved;

procedure TfrmProvider.bbAddClick(Sender: TObject);
begin
 frmProviderEdit.NewRecord:=True;
 frmProviderEdit.Clear;
 frmProviderEdit.ShowModal;
end;

procedure TfrmProvider.bbCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmProvider.bbDeleteClick(Sender: TObject);
begin
  if MessageDlg('Дійсно видалити цей запис з БД?',TMsgDlgType.mtConfirmation,mbYesNo,0)=mrYes then
     DataModule1.atProvider.Delete;
end;

procedure TfrmProvider.bbEditClick(Sender: TObject);
begin
 frmProviderEdit.NewRecord:=False;
 frmProviderEdit.LoadData;
 frmProviderEdit.ShowModal;
end;

end.
