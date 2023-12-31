program shop;

uses
  Vcl.Forms,
  umain in 'umain.pas' {frmMain},
  udata in 'udata.pas' {DataModule1: TDataModule},
  utovar in 'utovar.pas' {frmTovar},
  utovedit in 'utovedit.pas' {frmEditTovar},
  uclient in 'uclient.pas' {frmKlient},
  uclied in 'uclied.pas' {frmClientEdit},
  ucountries in 'ucountries.pas' {frmCountries},
  ucoed in 'ucoed.pas' {frmCountryEdit},
  uprovider in 'uprovider.pas' {frmProvider},
  uproved in 'uproved.pas' {frmProviderEdit},
  uworkers in 'uworkers.pas' {frmWorkers},
  uworker in 'uworker.pas' {frmWorker},
  uhistory in 'uhistory.pas' {frmHistory},
  uorder in 'uorder.pas' {frmOrder},
  uaddtov in 'uaddtov.pas' {frmAddPosition},
  udayorder in 'udayorder.pas' {frmDayOrder};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmTovar, frmTovar);
  Application.CreateForm(TfrmEditTovar, frmEditTovar);
  Application.CreateForm(TfrmKlient, frmKlient);
  Application.CreateForm(TfrmClientEdit, frmClientEdit);
  Application.CreateForm(TfrmCountries, frmCountries);
  Application.CreateForm(TfrmCountryEdit, frmCountryEdit);
  Application.CreateForm(TfrmProvider, frmProvider);
  Application.CreateForm(TfrmProviderEdit, frmProviderEdit);
  Application.CreateForm(TfrmWorkers, frmWorkers);
  Application.CreateForm(TfrmWorker, frmWorker);
  Application.CreateForm(TfrmHistory, frmHistory);
  Application.CreateForm(TfrmOrder, frmOrder);
  Application.CreateForm(TfrmAddPosition, frmAddPosition);
  Application.CreateForm(TfrmDayOrder, frmDayOrder);
  Application.Run;

end.
