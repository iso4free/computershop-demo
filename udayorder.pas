unit udayorder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmDayOrder = class(TForm)
    pnlButtons: TPanel;
    bbCancel: TBitBtn;
    dgDayOrder: TDBGrid;
    lbDate: TLabel;
    DateTimePicker1: TDateTimePicker;
    procedure DateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDayOrder: TfrmDayOrder;

implementation

{$R *.dfm}

uses udata;

procedure TfrmDayOrder.DateTimePicker1Change(Sender: TObject);
begin
 //todo: правильний виклик процедури БД
 with DataModule1 do begin
   aspOrderByDate.Close;
   aspOrderByDate.Parameters.ParamByName('[Введіть дату замовлення товару]').Value:=DateTimePicker1.Date;
   aspOrderByDate.Open;
 end;
end;

end.
