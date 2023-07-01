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
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure bbAddClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
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
 frmEditTovar.ShowModal;
end;

procedure TfrmTovar.BitBtn2Click(Sender: TObject);
begin
frmEditTovar.ShowModal;
end;

procedure TfrmTovar.BitBtn5Click(Sender: TObject);
begin
 Close;
end;

end.
