unit recursia;
uses GraphABC;
procedure KochSnowflake(x, y, len, angle: real; level: integer); // параметризация
begin
  if level = 0 then // база рекурсии
  begin
    Line(round(x), round(y), round(x + len * cos(angle)), round(y + len * sin(angle)));
  end
  else
  begin
    len := len / 3;
    KochSnowflake(x, y, len, angle, level - 1); // декомпозиция
    x := x + len * cos(angle);
    y := y + len * sin(angle);
    angle := angle - pi / 3;
    KochSnowflake(x, y, len, angle, level - 1); // декомпозиция
    x := x + len * cos(angle);
    y := y + len * sin(angle);
    angle := angle + 2 * pi / 3;
    KochSnowflake(x, y, len, angle, level - 1); // декомпозиция
    x := x + len * cos(angle);
    y := y + len * sin(angle);
    angle := angle - pi / 3;
    KochSnowflake(x, y, len, angle, level - 1); // декомпозиция
  end;
end;
end.
