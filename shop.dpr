program shop;

uses
  Vcl.Forms,
  umain in 'umain.pas' {Form1},
  udata in 'udata.pas' {DataModule1: TDataModule},
  utovar in 'utovar.pas' {frmTovar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmTovar, frmTovar);
  Application.Run;
end.
