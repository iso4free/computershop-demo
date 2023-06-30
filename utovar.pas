unit utovar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmTovar = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTovar: TfrmTovar;

implementation

{$R *.dfm}

uses udata, umain;

end.
