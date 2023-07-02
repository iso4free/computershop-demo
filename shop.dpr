program shop;

uses
  Vcl.Forms,
  umain in 'umain.pas' {frmMain},
  udata in 'udata.pas' {DataModule1: TDataModule},
  utovar in 'utovar.pas' {frmTovar},
  utovedit in 'utovedit.pas' {frmEditTovar},
  uklient in 'uklient.pas' {frmKlient};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmTovar, frmTovar);
  Application.CreateForm(TfrmEditTovar, frmEditTovar);
  Application.CreateForm(TfrmKlient, frmKlient);
  Application.Run;
end.
