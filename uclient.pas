unit uclient;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
    Vcl.ExtCtrls,
    Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls;

type
    TfrmKlient = class(TForm)
        Panel1: TPanel;
        bbAdd: TBitBtn;
        bbEdit: TBitBtn;
        bbDelete: TBitBtn;
        bbClose: TBitBtn;
        dgClients: TDBGrid;
    gbHistory: TGroupBox;
    dgHistory: TDBGrid;
        procedure bbCloseClick(Sender: TObject);
        procedure bbAddClick(Sender: TObject);
        procedure bbEditClick(Sender: TObject);
        procedure bbDeleteClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    frmKlient: TfrmKlient;

implementation

{$R *.dfm}

uses udata, uclied;

procedure TfrmKlient.bbAddClick(Sender: TObject);
begin
    frmClientEdit.NewRecord := True;
    frmClientEdit.Clear;
    frmClientEdit.ShowModal;
end;

procedure TfrmKlient.bbCloseClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmKlient.bbDeleteClick(Sender: TObject);
begin
    if MessageDlg('Дійсно видалити цей запис з БД?', TMsgDlgType.mtConfirmation,
      mbYesNo, 0) = mrYes then
        DataModule1.atClients.Delete;
end;

procedure TfrmKlient.bbEditClick(Sender: TObject);
begin
    frmClientEdit.NewRecord := False;
    frmClientEdit.LoadData;
    frmClientEdit.ShowModal;
end;

end.
