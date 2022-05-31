USE l:\dtax\respconceptos.dbf IN 1 exclusive

USE l:\dtax\table2.dbf IN 2 shared

select 1
SET filter TO letra="V"
go top
SELECT 2
GO top
Do while !eof()
   repl clave with table2.clave
   repl concepto with table2.concepto
   sele 2
   skip 
   IF EOF() 
       EXIT
   endif    
   select 1
 skip
enddo

@14,10 say "cambio efectuados"
CLOSE ALL
