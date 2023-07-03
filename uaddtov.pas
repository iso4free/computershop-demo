unit uaddtov;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TfrmAddPosition = class(TForm)
    Panel1: TPanel;
    bbOk: TBitBtn;
    bbCancel: TBitBtn;
    lbTovar: TLabel;
    edTovat: TEdit;
    lbAmount: TLabel;
    seAmount: TSpinEdit;
    lbColor: TLabel;
    edColor: TEdit;
    chbPayment: TCheckBox;
    chbDelivery: TCheckBox;
    procedure edTovatDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    selectedcode : Integer;
    procedure Clear;
  end;

var
  frmAddPosition: TfrmAddPosition;

implementation

{$R *.dfm}

uses udata, utovar;

procedure TfrmAddPosition.Clear;
begin
  selectedcode:=-1;
  edTovat.Clear;
  seAmount.Value:=1;
  edColor.Clear;
  chbPayment.Checked:=True;
  chbDelivery.Checked:=True;
end;

procedure TfrmAddPosition.edTovatDblClick(Sender: TObject);
begin
  frmTovar.ShowModal;
  selectedcode:=DataModule1.atProduct.FieldByName('productcode').AsInteger;
  edTovat.Text:=DataModule1.atProduct.FieldByName('productname').AsString;
end;

end.
