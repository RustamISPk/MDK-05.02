program dkr6;
Uses CRT, statistic, dynamic;
var choice_button: integer;
procedure choose();
begin
  writeln('Использовать динамический дек - 1');
  writeln('Использовать статический дек - 2');
  choice_button := ReadInteger;
    case choice_button of
    1:dynam();
    2:stat();
    end;
end;
begin
  choose();
end.