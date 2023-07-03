unit uhistory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmHistory = class(TForm)
    Panel1: TPanel;
    bbAdd: TBitBtn;
    bbEdit: TBitBtn;
    bbDelete: TBitBtn;
    bbClose: TBitBtn;
    gbCheck: TGroupBox;
    gbOrderProducts: TGroupBox;
    dgHistory: TDBGrid;
    dgDetails: TDBGrid;
    procedure bbCloseClick(Sender: TObject);
    procedure bbAddClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHistory: TfrmHistory;

implementation

{$R *.dfm}

uses udata, uorder;

procedure TfrmHistory.bbAddClick(Sender: TObject);
begin
 frmOrder.NewRecord:=True;
 frmOrder.Clear;
 frmOrder.ShowModal;
end;

procedure TfrmHistory.bbCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmHistory.bbEditClick(Sender: TObject);
begin
 frmOrder.NewRecord:=False;
 frmOrder.LoadData;
 frmOrder.ShowModal;
end;

end.
