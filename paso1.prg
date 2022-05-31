select 1
use data\empresas
go top
con = 1
do while !eof()
   replace id_em with con
   con = con + 1
   skip
enddo
close all
