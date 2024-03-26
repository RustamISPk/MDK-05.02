unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Close ();
end;

procedure TForm1.Button2Click(Sender: TObject);
var y, h, a, b : double;
begin
  a := strtofloat(Edit1.Text);
  b := strtofloat(Edit2.Text);
  h := strtofloat(Edit3.Text);
  while a <= b do
  begin
    y := power(a, 2);
    Memo1.Lines.add('значение функции на точке x = '+FloatToStr(a)+' равно '+FloatToStr(y));
    a += h;
  end;
end;

end.

