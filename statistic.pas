Unit statistic;
const MAXSIZE = 50;
type
   deque = record   {дек рассчитан на MAXSIZE символов} 
      data: array[1..MAXSIZE] of integer;
      size: integer;  {число элементов }
   end; 

var dek: deque;
    choice: integer;
  
procedure AddFirst_stat(var d: deque);
var arr:array[1..MAXSIZE] of integer;
begin
  if (d.size = 0) then
  begin
    writeln('Введите первый элемент дека');
    read(d.data[1]);
    d.size += 1;
  end
  else
  begin
  if (d.size < MAXSIZE) then
  begin
    for var j := 1 to MAXSIZE do
    begin
      arr[j] := d.data[j];
    end;
    for var i := 1 to d.size do
      begin
        d.data[1] := 0;
        d.data[i+1] := arr[i];
      end;
      writeln('Введите число');
      read(d.data[1]);
      d.size += 1
   end
   else
    begin
      writeln('Нет места для добавления элемента');
    end;
  end;
end;

procedure AddLast_stat(var d:deque);
begin
  if (d.size < MAXSIZE) then
  begin
    writeln('Введите последний элемент');
    read(d.data[d.size+1]);
    d.size += 1;
  end
  else
  begin
    writeln('Нет места для добавления элемента');
  end;
end;

procedure PopFirst_stat(var d:deque);
begin
  for var i:= 1 to d.size-1 do
  begin
    d.data[i] := d.data[i+1];
  end;
  d.size -= 1;
end;

procedure PopLast_stat (var d:deque);
begin
  d.data[d.size] := 0;
  d.size -= 1;
end;

procedure Printer_stat (d:deque);
begin
  Writeln('Элементы дека');
  for var i:= 1 to d.size do
  begin
    write(d.data[i], ' ');
  end;
end;

procedure stat();
begin
  writeln('Добавить элемент в начало - 1');
  writeln('Добавить элемент в конец - 2');
  writeln('Удалить первый элемент - 3');
  writeln('Удалить последний элемент - 4');
  writeln('Вывести элементы дека - 5');
  writeln('Завершить программу - 0');
  repeat
  choice:=readInteger('Выберите действие');
  case choice of
    1:AddFirst_stat(dek);
    2:AddLast_stat(dek);
    3:PopFirst_stat(dek);
    4:PopLast_stat(dek);
    5:Printer_stat(dek);
  end;
  until choice = 0;
end;
end.