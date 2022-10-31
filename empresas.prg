set safety off

USE l:\dtax\diferencia.dbf IN 8 EXCLUSIVE
select 8
zap


INSERT INTO diferencia SELECT t1.em1,t2.em1,t2.em2,t2.em3,t2.em4,t2.em5,t2.em6,t2.em7,t2.em8,t2.em9,t2.em10,t2.em11  FROM data\empresas t1 RIGHT outer JOIN vempresas t2 ON t1.em1=t2.em1 WHERE t1.em1 is null


**//COPY TO diferencia.dbf
**//select 8
**//ALTER TABLE diferencia RENAME COLUMN em1_b TO em1

clos all

select 1
use data\empresas 
go bottom
con = id_em + 1

select 2
use diferencia
go top

select 2
do while !eof()
   select 1
   append blank
 
   replace id_em with con
   replace empresas.em1 with diferencia.em1
   replace empresas.em2 with diferencia.em2
   replace empresas.em3 with diferencia.em3
   replace empresas.em4 with diferencia.em4
   replace empresas.em5 with diferencia.em5
   replace empresas.em6 with diferencia.em6
   replace empresas.em7 with diferencia.em7
   replace empresas.em8 with diferencia.em8
   replace empresas.em9 with diferencia.em9
   replace empresas.em10 with diferencia.em10
   replace empresas.em11 with diferencia.em11  

   con = con + 1
   select 2
   skip
enddo

set safety on
clos all

**// SELECT t1.em1,t2.em1,t2.em2,t2.em3,t2.em4,t2.em5,t2.em6,t2.em7,t2.em8,t2.em9,t2.em10,t2.em11 FROM data\empresas t1 RIGHT **// outer JOIN vempresas t2 ON t1.em1=t2.em1 WHERE t1.em1 is null