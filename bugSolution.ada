```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize array

   function Get_Value(Index : Integer) return Integer is
   begin
      return My_Arr(Index);
   exception
      when Constraint_Error =>
         return -1; -- Handle out-of-bounds index
   end Get_Value;

begin
   for I in My_Arr'Range loop -- Looping within the array bounds
      put_line("Value at index " & I'Image & ": " & Get_Value(I)'Image);
   end loop;
end Example;
```