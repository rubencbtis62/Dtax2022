	select 1
	use ejemplo
	select 2
	use data\conceptos
	go top
	SET FILTER TO SUBSTR(clave1,1,1)="U"   
	GO top			
	DO while .t.
		SELECT ejemplo
		APPEND BLANK
		replace tipo with 1
		REPLACE ejemplo.clave WITH conceptos.clave1
		REPLACE ejemplo.concepto WITH conceptos.concepto1
		REPLACE ejemplo.numero WITH conceptos.numero
		REPLACE ejemplo.letra WITH conceptos.letra
		SELECT conceptos
		SKIP
		IF EOF()
			EXIT
		ENDIF                    
	ENDDO
select conceptos
use
select ejemplo
use
