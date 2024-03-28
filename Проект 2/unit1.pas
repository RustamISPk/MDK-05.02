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
    Label1: TLabel;
    Label2: TLabel;
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
var c, angle, S, l, tg, a, h: double;
begin
   c := StrToFloat(Edit1.Text);
   angle := StrToFloat(Edit2.Text);
   angle := angle * pi / 180;
   a := c / (2 * cos(angle));
   h := sin(angle) * a;
   S := a * h / 2;
   Memo1.Lines.Add('площадь треугольника равна ' + FloatToStr(S));
end;

end.

