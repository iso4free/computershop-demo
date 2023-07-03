unit umain;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
    System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
    TfrmMain = class(TForm)
        bbTovar: TBitBtn;
        bbCustomers: TBitBtn;
        bbHistory: TBitBtn;
        bbProviders: TBitBtn;
        bbPersonal: TBitBtn;
        imLogo: TImage;
        procedure bbTovarClick(Sender: TObject);
        procedure bbCustomersClick(Sender: TObject);
        procedure bbProvidersClick(Sender: TObject);
        procedure bbPersonalClick(Sender: TObject);
    procedure bbHistoryClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    frmMain: TfrmMain;

implementation

{$R *.dfm}

uses udata, utovar, uclient, uprovider, uworkers, uhistory;

procedure TfrmMain.bbHistoryClick(Sender: TObject);
begin
    frmHistory.ShowModal;
end;

procedure TfrmMain.bbPersonalClick(Sender: TObject);
begin
    frmWorkers.ShowModal;
end;

procedure TfrmMain.bbProvidersClick(Sender: TObject);
begin
    frmProvider.ShowModal;
end;

procedure TfrmMain.bbTovarClick(Sender: TObject);
begin
    frmTovar.ShowModal;
end;

procedure TfrmMain.bbCustomersClick(Sender: TObject);
begin
    frmKlient.ShowModal;
end;

end.
