unit umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    bbTovar: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Image1: TImage;
    procedure bbTovarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}
uses udata, utovar, uklient;


procedure TfrmMain.bbTovarClick(Sender: TObject);
begin
 frmTovar.ShowModal;
end;

procedure TfrmMain.BitBtn2Click(Sender: TObject);
begin
 frmKlient.ShowModal;
end;

end.
