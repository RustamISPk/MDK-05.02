unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, DateUtils;

type

  { TForm1 }

  TForm1 = class(TForm)
    StartButton: TButton;
    ClearButton: TButton;
    StopButton: TButton;
    ExitButton: TButton;
    SmileBox: TCheckBox;
    Smile: TImage;
    ViewField: TLabel;
    TimerSec: TTimer;
    procedure StartButtonClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure StopButtonClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure SmileBoxChange(Sender: TObject);
    procedure TimerSecTimer(Sender: TObject);
  private
  public

  end;

var
  Form1: TForm1;
  sec, min, hour: integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.StartButtonClick(Sender: TObject);
begin
    StartButton.Caption := 'Начать';
    StopButton.Enabled := True;
    TimerSec.Interval:= 1000;
    TimerSec.Enabled:= true;
    ViewField.Transparent := False;
end;

procedure TForm1.ClearButtonClick(Sender: TObject);
begin
  TimerSec.Enabled:= False;
  sec := 0;
  min := 0;
  hour := 0;
  ViewField.Caption:= '';
  StartButton.Caption := 'Начать';
end;

procedure TForm1.StopButtonClick(Sender: TObject);
begin
   TimerSec.Enabled:= False;
   StartButton.Caption := 'Продолжить';
   StopButton.Enabled := False;
end;

procedure TForm1.ExitButtonClick(Sender: TObject);
begin
  Close();
end;

procedure TForm1.SmileBoxChange(Sender: TObject);
begin
  if SmileBox.Checked = True then
  begin
    Smile.Visible := True;
  end
  else
  begin
     Smile.Visible := False;
  end;
end;

procedure TForm1.TimerSecTimer(Sender: TObject);
begin
  inc(sec);
  if (sec = 60) then
  begin
    inc(min);
    sec := 0;
  end;
  if (min = 60) then
  begin
    inc(hour);
    min := 0;
  end;
  ViewField.Caption:= IntToStr(hour) + ':' + intToStr(min) + ':' + inttostr(sec);
end;

end.

