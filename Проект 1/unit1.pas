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
  Close();
end;
procedure TForm1.Button2Click(Sender: TObject);
var a, b, t, f, e: double;
begin
   a := strtofloat(edit1.text);
   b := strtofloat(edit2.text);
   t := strtofloat(edit3.text);
   e := -b*t;
   f:= exp(e) * sin(a*t+b) - sqrt(abs(b*t + a));
   Memo1.Lines.Add('значение функции равно '+FloatToStr(f));
end;
end.

