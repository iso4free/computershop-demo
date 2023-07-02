unit upersonal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmWorkers = class(TForm)
    Panel1: TPanel;
    bbAdd: TBitBtn;
    bbEdit: TBitBtn;
    bbDelete: TBitBtn;
    bbClose: TBitBtn;
    dgWorkers: TDBGrid;
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
  frmWorkers: TfrmWorkers;

implementation

{$R *.dfm}

uses udata, uworker;

procedure TfrmWorkers.bbAddClick(Sender: TObject);
begin
  frmWorker.NewRecord:=True;
  frmWorker.Clear;
  frmWorker.ShowModal;
end;

procedure TfrmWorkers.bbCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmWorkers.bbDeleteClick(Sender: TObject);
begin
  if MessageDlg('Дійсно видалити цей запис з БД?',TMsgDlgType.mtConfirmation,mbYesNo,0)=mrYes then
     DataModule1.atWorkers.Delete;
end;

procedure TfrmWorkers.bbEditClick(Sender: TObject);
begin
  frmWorker.NewRecord:=False;
  frmWorker.LoadData;
  frmWorker.ShowModal;
end;

end.
