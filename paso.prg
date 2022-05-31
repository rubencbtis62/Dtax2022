local val1, val2, clav, conce

val1 =1
val2 =0
clav =""
conce=""
CLOSE TABLES
select 1
use data\conceptos
SET FILTER TO letra="I"
go top
&&LOCATE for clave = "I19"
skip 14
select 2
use paso
SET FILTER TO letra="I"
go top
&&LOCATE for clave = "I14"
skip 18
do while !eof()
     select 1    
     repl conceptos.concepto3 with paso.con
     SKIP
     IF EOF()
         EXIT
     endif    
     select 2
     skip
enddo
CLOSE TABLES



