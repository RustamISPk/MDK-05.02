unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfMain }

  TfMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
     procedure MyPrivat;
     procedure MyDouble;
  public

  end;

var
  fMain: TfMain;
  MyNum: real;

implementation

{$R *.lfm}

{ TfMain }
//Не является процедурой формы, придется передавать в нее параметры формы
//самостоятельно
procedure Udvoenie(st: string);
var
  r: real;
begin
   //полученную строку преобразуем в число:
   r:= StrToFloat(st);
   //теперь удвоим его:
   r:= r * 2;
   //теперь выведем результат в сообщении:
   ShowMessage(FloatToStr(r));
end;

procedure TfMain.Button1Click(Sender: TObject);
begin
   Udvoenie(Edit1.Text);
end;
// не является функцией формы, придется передавать параметры формы вручную
// в отличии от процедур, функция возвращает значение определенной переменной
function FuncUdvoenie(st: string): string;
var
  r: real;
begin
   //полученную строку сначала преобразуем в число:
   r:= StrToFloat(st);
   //теперь удвоим его:
   r:= r * 2;
   //теперь вернем результат в виде строки:
   Result:= FloatToStr(r);
end;

procedure TfMain.Button2Click(Sender: TObject);
begin
   ShowMessage(FuncUdvoenie(Edit1.Text));
end;
// процедура с объявлением аргумента
procedure UdvoeniePoSsilke(var r: real);
begin
  r:= r * 2;
end;

procedure TfMain.Button3Click(Sender: TObject);
var
  myReal: real;
begin
  myReal:= StrToFloat(Edit1.Text);
  UdvoeniePoSsilke(myReal);
  ShowMessage(FloatToStr(myReal));
end;

procedure TfMain.Button4Click(Sender: TObject);
begin
  MyPrivat
end;

procedure TfMain.Button5Click(Sender: TObject);
begin
  MyNum:= StrToFloat(Edit1.Text);
  //теперь удвоим его:
  MyDouble;
  //выводим результат на экран:
  ShowMessage(FloatToStr(MyNum));
end;
// приватная процедура с локальными переменными,
//которая принадлежит классу TfMain
procedure TfMain.MyPrivat;
var
  r: real;
begin
  //преобразуем в число то, что ввел пользователь:
  r:= StrToFloat(Edit1.Text);
  //теперь удвоим его:
  r:= r * 2;
  //теперь выведем результат в сообщении:
  ShowMessage(FloatToStr(r));
end;
// приватная процедура с глобальными переменными,
//которая принадлежит классу TfMain
procedure TfMain.MyDouble;
begin
  MyNum:= MyNum * 2;
end;

end.
