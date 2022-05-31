local val1, val2, clav, conce

vall =1
val2 =0
clav =""
conce=""

select 1
use table2
go top

do while !eof()
     repl Clave with "V"+alltrim(str(vall,0))
     SKIP
     IF EOF()
         EXIT
     endif    
     vall=vall+1
enddo

CLOSE TABLES



