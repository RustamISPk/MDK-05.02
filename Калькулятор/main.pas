unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, math;

type

  { TBack }

  TBack = class(TForm)
    PrintField: TEdit;
    EqualButton: TButton;
    PlusButton: TButton;
    FloatButton: TButton;
    NumberButton0: TButton;
    MinusButton: TButton;
    NumberButton3: TButton;
    NumberButton2: TButton;
    NumberButton1: TButton;
    HyperboleButton: TButton;
    MultiplicationButton: TButton;
    NumberButton6: TButton;
    NumberButton5: TButton;
    NumberButton4: TButton;
    SqrButton: TButton;
    DivisionButton: TButton;
    NumberButton9: TButton;
    NumberButton8: TButton;
    NumberButton7: TButton;
    ClearEditButton: TButton;
    ClearAllButton: TButton;
    SqrtButton: TButton;
    DeleteOneButton: TButton;
    procedure ClearAllButtonClick(Sender: TObject);
    procedure ClearEditButtonClick(Sender: TObject);
    procedure DeleteOneButtonClick(Sender: TObject);
    procedure DivisionButtonClick(Sender: TObject);
    procedure EqualButtonClick(Sender: TObject);
    procedure FloatButtonClick(Sender: TObject);
    procedure HyperboleButtonClick(Sender: TObject);
    procedure MinusButtonClick(Sender: TObject);
    procedure MultiplicationButtonClick(Sender: TObject);
    procedure NumberButton0Click(Sender: TObject);
    procedure NumberButton1Click(Sender: TObject);
    procedure NumberButton2Click(Sender: TObject);
    procedure NumberButton3Click(Sender: TObject);
    procedure NumberButton4Click(Sender: TObject);
    procedure NumberButton5Click(Sender: TObject);
    procedure NumberButton6Click(Sender: TObject);
    procedure NumberButton7Click(Sender: TObject);
    procedure NumberButton8Click(Sender: TObject);
    procedure NumberButton9Click(Sender: TObject);
    procedure PlusButtonClick(Sender: TObject);
    procedure SqrButtonClick(Sender: TObject);
    procedure SqrtButtonClick(Sender: TObject);
  private
    procedure division;
  public

  end;

var
  Back: TBack;
  firstnum, secondnum: double;
  choice: char;
  checkfloat, checkfirstnum, checkclearfield, minuscheck: boolean;

implementation

{$R *.lfm}

{ TBack }



procedure TBack.NumberButton1Click(Sender: TObject);
var field: string;
begin
   field := PrintField.Text;
   if (length(field) = 1) and (field = '0') then
   begin
   field := '1';
   PrintField.Text := field;
   end
   else
   begin
   field += '1';
   PrintField.Text := field;
   end;
end;

procedure TBack.NumberButton2Click(Sender: TObject);
var field: string;
begin
   field := PrintField.Text;
   if (length(field) = 1) and (field = '0') then
   begin
   field := '2';
   PrintField.Text := field;
   end
   else
   begin
   field += '2';
   PrintField.Text := field;
   end;
end;

procedure TBack.NumberButton3Click(Sender: TObject);
var field: string;
begin
   field := PrintField.Text;
   if (length(field) = 1) and (field = '0') then
   begin
   field := '3';
   PrintField.Text := field;
   end
   else
   begin
   field += '3';
   PrintField.Text := field;
   end;
end;

procedure TBack.NumberButton4Click(Sender: TObject);
var field: string;
begin
   field := PrintField.Text;
   if (length(field) = 1) and (field = '0') then
   begin
   field := '4';
   PrintField.Text := field;
   end
   else
   begin
   field += '4';
   PrintField.Text := field;
   end;
end;

procedure TBack.NumberButton5Click(Sender: TObject);
var field: string;
begin
   field := PrintField.Text;
   if (length(field) = 1) and (field = '0') then
   begin
   field := '5';
   PrintField.Text := field;
   end
   else
   begin
   field += '5';
   PrintField.Text := field;
   end;
end;

procedure TBack.NumberButton6Click(Sender: TObject);
var field: string;
begin
   field := PrintField.Text;
   if (length(field) = 1) and (field = '0') then
   begin
   field := '6';
   PrintField.Text := field;
   end
   else
   begin
   field += '6';
   PrintField.Text := field;
   end;
end;

procedure TBack.NumberButton7Click(Sender: TObject);
var field: string;
begin
   field := PrintField.Text;
   if (length(field) = 1) and (field = '0') then
   begin
   field := '7';
   PrintField.Text := field;
   end
   else
   begin
   field += '7';
   PrintField.Text := field;
   end;
end;

procedure TBack.NumberButton8Click(Sender: TObject);
var field: string;
begin
   field := PrintField.Text;
   if (length(field) = 1) and (field = '0') then
   begin
   field := '8';
   PrintField.Text := field;
   end
   else
   begin
   field += '8';
   PrintField.Text := field;
   end;
end;

procedure TBack.NumberButton9Click(Sender: TObject);
var field: string;
begin
   field := PrintField.Text;
   if (length(field) = 1) and (field = '0') then
   begin
   field := '9';
   PrintField.Text := field;
   end
   else
   begin
   field += '9';
   PrintField.Text := field;
   end;
end;

procedure TBack.PlusButtonClick(Sender: TObject);
var field: string;
begin
  if (PrintField.Text <> '') and (PrintField.Text <> '-') then
  begin
  choice := '+';
  field := PrintField.Text;
  if (field[length(field)] = ',') then delete(field, length(field), 1);
  if (checkclearfield = False) and (checkfirstnum = False) then
  begin
  firstnum := StrToFloat(field);
  PrintField.Text := '';
  checkfloat := False;
  checkclearfield := True;
  checkfirstnum := True;
  end;
  end;
end;

procedure TBack.SqrButtonClick(Sender: TObject);
var field: double;
begin
  if (PrintField.Text <> '') then
  begin
  field := StrToFloat(PrintField.Text);
  field := power(field, 2);
  PrintField.Text := FloatToStr(field);
  end;
end;

procedure TBack.SqrtButtonClick(Sender: TObject);
var field: double;
begin
  if (PrintField.Text <> '') and (StrToFloat(PrintField.Text) > 0) then
  begin
  field := StrToFloat(PrintField.Text);
  field := sqrt(field);
  PrintField.Text := FloatToStr(field);
  end;
end;

procedure TBack.division;
var res: double;
begin
  if (secondnum = 0) then ShowMessage('На ноль делить нельзя!')
  else
    begin
    res := firstnum / secondnum;
    PrintField.Text := FloatToStr(res)
    end;
end;

procedure TBack.DeleteOneButtonClick(Sender: TObject);
var field: string;
    count, posfloat, i: integer;
begin
  field := PrintField.Text;
  delete(field, length(field), 1);
  for i:= 1 to length(field) do
  begin
  if (field[i] = ',') then inc(count);
  posfloat := pos(',', field);
  end;
  if count > 1 then
  begin
  delete(field, posfloat, 1);
  checkfloat := false;
  end;
  if length(field) <= 1 then checkfloat := false;
  PrintField.Text := field;
end;

procedure TBack.DivisionButtonClick(Sender: TObject);
var field: string;
begin
  if (PrintField.Text <> '') and (PrintField.Text <> '-') then
  begin
  choice := '/';
  field := PrintField.Text;
  if (field[length(field)] = ',') then delete(field, length(field), 1);
  if (checkclearfield = False) and (checkfirstnum = False) then
  begin
  firstnum := StrToFloat(field);
  PrintField.Text := '';
  checkfloat := False;
  checkclearfield := True;
  checkfirstnum := True;
  end;
  end;
end;

procedure TBack.EqualButtonClick(Sender: TObject);
var res: double;
begin
  if (PrintField.Text <> '') and (PrintField.Text <> '-') then
  begin
    secondnum := StrToFloat(PrintField.Text);
    case choice of
    '+': res := firstnum + secondnum;
    '-': res := firstnum - secondnum;
    '/': division;
    '*': res := firstnum * secondnum;
    end;
    firstnum := 0;
    secondnum := 0;
    checkclearfield := False;
    checkfirstnum := False;
    if (choice <> '/') then PrintField.Text := FloatToStr(res);
  end;
end;

procedure TBack.FloatButtonClick(Sender: TObject);
var field: string;
begin
  field := PrintField.Text;
  if (length(field) <> 0) and (checkfloat = False) then
   begin
    field += ',';
    checkfloat := True;
    PrintField.Text := field;
   end;
end;


procedure TBack.HyperboleButtonClick(Sender: TObject);
var field: double;
begin
  field := StrToFloat(PrintField.Text);
  if (PrintField.Text <> '') and (field <> 0) then
  begin
  field := 1/field;
  PrintField.Text := FloatToStr(field);
  end;
end;

procedure TBack.MinusButtonClick(Sender: TObject);
var field: string;
begin
  if (PrintField.Text <> '') and (PrintField.Text <> '-') then
  begin
  choice := '-';
  field := PrintField.Text;
  if (field[length(field)] = ',') then delete(field, length(field), 1);
  if (checkclearfield = False) and (checkfirstnum = False) then
  begin
  firstnum := StrToFloat(field);
  PrintField.Text := '';
  checkfloat := False;
  checkclearfield := True;
  checkfirstnum := True;
  end;
  end
  else
  begin
  if (minuscheck = False) then
  begin
  PrintField.Text := '-';
  minuscheck := True;
  end;
  end;
end;

procedure TBack.MultiplicationButtonClick(Sender: TObject);
var field: string;
begin
  if (PrintField.Text <> '') and (PrintField.Text <> '-') then
  begin
  choice := '*';
  field := PrintField.Text;
  if (field[length(field)] = ',') then delete(field, length(field), 1);
  if (checkclearfield = False) and (checkfirstnum = False) then
  begin
  firstnum := StrToFloat(field);
  PrintField.Text := '';
  checkfloat := False;
  checkclearfield := True;
  checkfirstnum := True;
  end;
  end;
end;

procedure TBack.ClearAllButtonClick(Sender: TObject);
begin
  PrintField.Text := '';
  firstnum := 0;
  secondnum := 0;
  choice := ' ';
  checkfloat := False;
  checkclearfield := False;
  checkfirstnum := False;
  minuscheck := False;
end;

procedure TBack.ClearEditButtonClick(Sender: TObject);
begin
  PrintField.Text := '';
  checkfloat := False;
  checkclearfield := False;
  minuscheck := False;
end;

procedure TBack.NumberButton0Click(Sender: TObject);
var field: string;
begin
  field := PrintField.Text;
  if (length(field) = 0) then
  begin
  field += '0';
  PrintField.Text := field;
  end;
  if (length(field) >= 1) and (field <> '0') then
  begin
  field += '0';
  PrintField.Text := field;
  end;
end;

end.

