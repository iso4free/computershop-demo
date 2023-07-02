unit uklient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmKlient = class(TForm)
    Panel1: TPanel;
    bbAdd: TBitBtn;
    bbEdit: TBitBtn;
    bbDelete: TBitBtn;
    bbClose: TBitBtn;
    dgClients: TDBGrid;
    procedure bbCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKlient: TfrmKlient;

implementation

{$R *.dfm}

uses udata;

procedure TfrmKlient.bbCloseClick(Sender: TObject);
begin
 Close;
end;

end.
