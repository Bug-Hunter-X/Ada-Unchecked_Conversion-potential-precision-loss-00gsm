```ada
function Safe_Conversion(Source : in Integer) return Float is
   Result : Float;
begin
   if Source > Float'Last then
      Put_Line("Integer too large for Float conversion");
      return Float'Last;
   elsif Source < Float'First then
      Put_Line("Integer too small for Float conversion");
      return Float'First; 
   else
      Result := Float(Source);
   end if;
   return Result;
end Safe_Conversion;

procedure Main is
   My_Integer : Integer := 10;
   My_Float : constant Float := Safe_Conversion(My_Integer);
begin
   Put_Line("My_Float: " & Float'Image(My_Float));
end Main;
```