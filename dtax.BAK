LOCAL Aviso
rutaml = ADDBS(SYS(5)+SYS(2003))
aviso = FirsTime("dtax.exe")  && retorna .F.
IF aviso = .t.
	set status bar off
	set talk off
	set defa to &rutaml
	on key label F1 help
	set help to help\ayuda.chm
	_screen.windowstate = 2
	_screen.closable = .f.
	modify window screen title 'Sistema calculo de pagos Provisionales' icon file '\Icons\favicon.ico' 

	_screen.addobject("olm","image")
	_screen.olm.picture="images\fondo.jpg"
	_screen.olm.stretch=2
	_screen.olm.width=SYSMETRIC(1)
	_screen.olm.height=SYSMETRIC(2)
	_screen.olm.visible=.t.

	on shutdown do final  
	DO menus\principal.mpr
	DO FORM forms\frmmenu.scx	
	read events
	clear all
	clos all
	set sysmenu to default
endif	

Procedure Final
  Clear Events
  clear events
  clear all
  close all
  release all
  release all extended
  clear windows all
  quit
Return