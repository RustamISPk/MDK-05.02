program DKR_KochSnowFlake;
uses recursia, GraphABC;
var x,y,level,len:integer;
procedure instruction(m:integer);
  begin
    textout(10,100,'Left - влево');
    textout(10,120,'Right - вправо');
    textout(10,140,'Up - вверх');
    textout(10,160,'Down - вниз');
    textout(10,180,'num 4 - увеличить масштаб');
    textout(10,200,'num 5 - уменьшить масштаб');
    textout(10,220,'num 1 - увеличить глубину');
    textout(10,240,'num 2 - уменьшить глубину');
    textout(10,260, abs(level));
    textout(20,260, ' - Глубина рекурсии');
  end; 
procedure KeyDown(key: integer);
begin
  case key of
    VK_Down: begin y := y - 5 end;
    VK_Up: begin y += 5 end;
    VK_Right: begin x := x + 5 end;
    VK_Left: begin x := x - 5 end;
    VK_NumPad5: begin len := len - 50; x += 10 end;
    VK_NumPad4: begin len := len + 50; x -= 10 end;
    VK_NumPad2: if level>0 then level -= 1;
    VK_NumPad1:if level<7 then level += 1;
  end; 
  Window.Clear; 
  KochSnowflake(x, y, len, 0, level);
  instruction(level);
  redraw;
end;

begin
  LockDrawing;
  x := 100;
  y := 300;
  len:=700;
  level:= 0;
  KochSnowflake(x, y, len, 0, level);
  instruction(level);
  redraw;
  OnkeyDown := keydown;
end.