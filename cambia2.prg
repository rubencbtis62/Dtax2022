USE l:\dtax\data\conceptos IN 1 exclusive


select 1
SET FILTER TO !EMPTY(concepto5) and letra="V"
go top

GO top
Do while !eof()
   repl clave5 with ALLTRIM(letra+ALLTRIM(STR(numero)))
   skip 
enddo

@14,10 say "cambio efectuados"
CLOSE ALL
