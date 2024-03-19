Unit dynamic;
Uses CRT;
type PNode = ^deque;    
     deque = record    
       data: integer; 
       next: PNode;
     end;
     
function CreateNode_dynam (): PNode;
var NewNode: PNode;
    NewValue: integer;
begin
  writeln('Введите значение');
  Readln(NewValue);
  New(NewNode);
  NewNode^.data := NewValue;
  NewNode^.next := nil;
  Result := NewNode;
end;

procedure AddFirst_dynam ( var Head: PNode );
var NewNode: PNode;
begin
  NewNode := CreateNode_dynam();
  NewNode^.next := Head;
  Head := NewNode;
end;

procedure AddAfter_dynam ( var Head: PNode );
var p, temp, NewNode: PNode;
begin
  NewNode := CreateNode_dynam();
  p := Head;
  temp := p^.next;
  p^.next := NewNode;
  NewNode^.next := temp;
end;

procedure AddLast_dynam ( var Head: PNode);
var pp: PNode;
begin
  if Head = nil then
    AddFirst_dynam ( Head )
  else begin
    pp := Head;
    while pp^.next <> nil do
      pp := pp^.next;
    AddAfter_dynam ( pp );
  end;
end;
    
procedure printer_dynam(Head: PNode);
  var
    pp: PNode;
  begin
    pp:=Head;
    while pp <> nil do
    begin
      write(pp^.data, ' ');
      pp := pp^.next;
    end;
  end;
  
function FindLast_dynam(Head: PNode): PNode;
var pp: PNode;
begin
  pp := Head;
  while (pp^.next <> nil) do
  begin
    pp := pp^.next;
   end; 
  Result := pp;
end;

Procedure Remove_First_dynam (var Head: PNode);
var pp: PNode;
begin
  pp := Head;
  if (pp = nil) then writeln('Дек пуст')
  else
  begin
  Head := pp^.next;
  dispose(pp);
  end;
end;

Procedure Remove_Last_dynam (Head: PNode);
var a, pp: PNode;
begin
  pp := Head;
  if (pp = nil) then writeln('Дек пуст')
  else
  begin
  a := FindLast_dynam(Head);
  while (pp^.next <> nil) and (pp^.next <> a) do
  begin
    pp := pp^.next;
  end;
  pp^.next := nil;
  dispose(a);
  end;
end;

var Head: PNode;
    choice :integer;

procedure dynam();
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
    1:AddFirst_dynam(Head);
    2:AddLast_dynam(Head);
    3:Remove_First_dynam(Head);
    4:Remove_Last_dynam(Head);
    5:printer_dynam(Head);
  end;
  until choice = 0;
end;
end.