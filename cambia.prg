clear
viejo = 0
nuevo = 0
@10,10 say "Viejo "
@10,25 get viejo
@12,10 say "nuevo "
@12,25 get nuevo
read
USE data\cap_isr
APPEND FROM \dtax_old\data\cap_isr FOR id_em=viejo
REPLACE id_em WITH nuevo for id_em=viejo

USE data\cap_iva
APPEND FROM \dtax_old\data\cap_iva FOR id_em=viejo
REPLACE id_em WITH nuevo for id_em=viejo

USE data\cap_nom
APPEND FROM \dtax_old\data\cap_nom FOR id_em=viejo
REPLACE id_em WITH nuevo for id_em=viejo

USE data\cap_hos
APPEND FROM \dtax_old\data\cap_hos FOR id_em=viejo
REPLACE id_em WITH nuevo for id_em=viejo

USE data\cap_ret
APPEND FROM \dtax_old\data\cap_ret FOR id_em=viejo
REPLACE id_em WITH nuevo for id_em=viejo

USE data\capietu1
APPEND FROM \dtax_old\data\capietu1 FOR id_em=viejo
REPLACE id_em WITH nuevo for id_em=viejo

USE data\sub_emp
APPEND FROM \dtax_old\data\sub_emp FOR id_em=viejo
REPLACE id_em WITH nuevo for id_em=viejo

USE data\sub_emp1
APPEND FROM \dtax_old\data\sub_emp1 FOR id_em=viejo
REPLACE id_em WITH nuevo for id_em=viejo

@14,10 say "cambio efectuados"
CLOSE ALL
