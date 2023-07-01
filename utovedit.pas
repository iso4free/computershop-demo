unit utovedit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmEditTovar = class(TForm)
    lbKod: TLabel;
    edKod: TEdit;
    lbNazva: TLabel;
    edNazva: TEdit;
    mCharacter: TMemo;
    lbPrice: TLabel;
    edPrice: TEdit;
    lbGuarant: TLabel;
    edGuarant: TEdit;
    lbCountry: TLabel;
    cbCountry: TComboBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    lbNewTovar: TLabel;
    gbCharacter: TGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditTovar: TfrmEditTovar;

implementation

{$R *.dfm}

end.
