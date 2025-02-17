Algoritmo ffpseint
	//                               FINAL FANTASY PSEINT
	//--------> Utilizar indices en arreglos y cadena en base 0 debe estar activado <-------
	
	vidaJefe<-1720
	vidamaxProtag<-120
	vidamaxMago<-135
	vidamaxSanad<-110
	rng<-1
	turnos<-0
	
	puntosMagia<-8
	
	Protagprotegiendose<-Falso
	
	jefeEnLlamas<-Falso
	dobledanolisto<-Falso
	dobledano<-Falso
	
	danoquemaduras<-0
	
	accionDeProtag<-0
	accionDeMago<-0
	accionDeSanad<-0
	
	
	vidaProtag<-vidamaxProtag
	vidaMago<-vidamaxMago
	vidaSanad<-vidamaxSanad
	
	
	Limpiar Pantalla
	Escribir '' 
	Escribir '//    ~FINAL FANTASY PSEINT~   //'
	Escribir '  y el dragon de la reparacion'
	Escribir'          \__\  '
	Escribir'     ___  (o  \__'
	Escribir'    /   \ ( ___vv        \o'
	Escribir'     /_  \  |             |\'
	Escribir'   ____| . . \            | '
	Escribir'       -^-^-^-           / \'
	Escribir '----------------------------------'
	Esperar 1 Segundos
	Escribir ' Presione una tecla para empezar'
	Esperar Tecla
	
	Repetir
	Limpiar Pantalla
	Escribir ''
	Escribir '//    ~FINAL FANTASY PSEINT~   //'
	Escribir '  y el dragon de la reparacion'
	Escribir '' 
	Escribir '         ________________'
	Escribir '    O   | Mi nombre es... '
	Escribir '   /|\  |/'
	Escribir '    |'
	Escribir '   / \'
	Escribir '----------------------------------'
	Escribir 'Ingrese el nombre del protagonista'
	leer nombreProtag

	longnombreprotag<-Longitud(nombreProtag)
	
	si longnombreprotag>10 Entonces
		Repetir
		Limpiar Pantalla
		Escribir ''
		Escribir '//    ~FINAL FANTASY PSEINT~   //'
		Escribir '  y el dragon de la reparacion'
		Escribir '' 
		Escribir '         _________________'
		Escribir '    O   | Mi nombre es...?'
		Escribir '   /|\  |/'
		Escribir '    |'
		Escribir '   / \'
		Escribir '----------------------------------'
		Escribir 'El nombre no puede ser mayor a 10 caracteres'
		Escribir 'Ingrese el nombre del protagonista'
		leer nombreProtag
		longnombreprotag<-Longitud(nombreProtag)
		Hasta Que longnombreprotag<10
	FinSi
	
	letranombreMin<-Subcadena(nombreProtag,1, longnombreprotag-1)
	letranombreMay<-Subcadena(nombreProtag,0,0)
	nombreprotag<-Mayusculas(letranombreMay)
	letranombremin2<-Minusculas(letranombreMin)
	nombreProtag<-Concatenar(nombreProtag,letranombremin2)

	
	Limpiar Pantalla
	Escribir ''
	Escribir '//    ~FINAL FANTASY PSEINT~   //'
	Escribir '  y el dragon de la reparacion'
	Escribir ''
	
	Escribir Sin Saltar '         '
	para i<-0 Hasta longnombreprotag+1 Hacer
		Escribir sin saltar '_'
	FinPara
	Escribir ''
	Escribir '    O   | ' nombreProtag '!'
	Escribir '   /|\  |/'
	Escribir '    |'
	Escribir '   / \'
	Escribir '----------------------------------'
	Escribir ' ' nombreProtag ', es correcto? [S/N]'
	leer siono
	
Hasta Que siono ='s' o siono='S'

longespacio<-18
Limpiar Pantalla
Escribir ''
Escribir '[Mago]:'
Escribir ' ____________________'
Escribir Sin Saltar '|' nombreProtag '!'
	para i<-0 Hasta longespacio-longnombreprotag Hacer
		Escribir sin saltar ' '
	FinPara
Escribir '|'
Escribir '|Debemos acabar con  |    _/^\_'
Escribir '|el dragon o todos   |      O'
Escribir '|iremos a reparacion!|     /|\'
Escribir '                    \|      |'
Escribir '                           / \'
Escribir '----------------------------------'
Esperar 2 Segundos
Escribir 'Presione una tecla para empezar el combate'
Esperar Tecla

// Aqui empieza el juego

Repetir
	si vidaJefe>0 Entonces
	
	Limpiar Pantalla
	Escribir ''
	Escribir ' Dragon de la reparacion'
	Escribir ' Puntos de vida: ' vidaJefe
	Escribir'        \__\  '
	Escribir'   ___  (o  \__'
	Escribir'  /   \ ( ___vv'
	Escribir'   /_  \  | '
	Escribir' ____| . . \                 o'
	Escribir'     -^-^-^-                /|\'
	Escribir '----------------------------------'
	Escribir 'Es el turno de ' nombreProtag '!'
	Escribir 'Puntos de vida de ' nombreProtag ' :' vidaProtag '/' vidamaxProtag
	Esperar 1 Segundos
	Escribir 'Que hara ' nombreProtag '?'
	Escribir '[1] Atacar'
	Escribir '[2] Cubrirse'
	leer accionDeProtag
	
	Segun accionDeProtag Hacer
		1: //     protag Ataca
			turnos<-turnos+1
			animacionATKcontador<-3
			Repetir
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\     _'
				Escribir'   ___  (o  \__ |\       '
				Escribir'  /   \ ( ___vv   \\o    '
				Escribir'   /_  \  |         |\   '
				Escribir' ____| . . \        |     '
				Escribir'     -^-^-^-       / \        '
				Escribir '----------------------------------'
				Escribir 'Es el turno de ' nombreProtag '!'
				Escribir 'Puntos de vida de ' nombreProtag ' :' vidaProtag '/' vidamaxProtag
				Escribir nombreProtag ' ataca al dragon...'
				Esperar 150 Milisegundos
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\  '
				Escribir'   ___  (>  \__'
				Escribir'  /   \ ( ___vv     o'
				Escribir'   /_  \  | <---|- /|\  '
				Escribir' ____| . . \        |        '
				Escribir'     -^-^-^-       / \       '
				Escribir '----------------------------------'
				Escribir 'Es el turno de ' nombreProtag '!'
				Escribir 'Puntos de vida de ' nombreProtag ' :' vidaProtag '/' vidamaxProtag
				Escribir nombreProtag ' ataca al dragon...'
				Esperar 150 Milisegundos
				animacionATKcontador<-animacionATKcontador-1
				
			Hasta Que animacionATKcontador=0
			
			
			danoHecho<-ALEATORIO(125,185)
			
			vidaJefe<-vidaJefe-danoHecho
			si vidaJefe<0 Entonces
				vidaJefe<-0
			FinSi
			
			
			Limpiar Pantalla
			Escribir ''
			Escribir ' Dragon de la reparacion'
			Escribir ' Puntos de vida: ' vidaJefe
			Escribir'        \__\  '
			Escribir'   ___  (o  \__'
			Escribir'  /   \ ( ___vv'
			Escribir'   /_  \  | '
			Escribir' ____| . . \                 o'
			Escribir'     -^-^-^-                /|\'
			Escribir '----------------------------------'
			Escribir 'Es el turno de ' nombreProtag '!'
			Escribir 'Puntos de vida de ' nombreProtag ' :' vidaProtag '/' vidamaxProtag
			Escribir nombreProtag ' ataca al dragon...'
			Escribir nombreProtag ' le quito ' danoHecho ' puntos de vida al dragon'
			Escribir '>Presione una tecla para continuar<'
			Esperar Tecla
			
			
		2: //    protag se defiende
			turnos<-turnos+1
			Limpiar Pantalla
			Escribir ''
			Escribir ' Dragon de la reparacion'
			Escribir ' Puntos de vida: ' vidaJefe
			Escribir'        \__\  '
			Escribir'   ___  (o  \__'
			Escribir'  /   \ ( ___vv'
			Escribir'   /_  \  |            _____'
			Escribir' ____| . . \           \ - / \o'
			Escribir'     -^-^-^-             v    |\'
			Escribir '----------------------------------'
			Escribir 'Es el turno de ' nombreProtag '!'
			Escribir 'Puntos de vida de ' nombreProtag ' :' vidaProtag '/' vidamaxProtag
			Escribir nombreProtag ' se defiende'
			
			esperar 1 Segundos
			Esperar 500 Milisegundos
			
			Protagprotegiendose<-Verdadero
			
			Limpiar Pantalla
			Escribir ''
			Escribir ' Dragon de la reparacion'
			Escribir ' Puntos de vida: ' vidaJefe
			Escribir'        \__\  '
			Escribir'   ___  (o  \__'
			Escribir'  /   \ ( ___vv'
			Escribir'   /_  \  |            _____'
			Escribir' ____| . . \           \ - / \o'
			Escribir'     -^-^-^-             v    |\'
			Escribir '----------------------------------'
			Escribir 'Es el turno de ' nombreProtag '!'
			Escribir 'Puntos de vida de ' nombreProtag ' :' vidaProtag '/' vidamaxProtag
			Escribir nombreProtag ' se defiende'
			Escribir nombreProtag ' recibira menos dano durante el siguiente turno'
			Escribir '>Presione una tecla para continuar<'
			Esperar Tecla
			
	FinSegun
	
FinSi


si vidaJefe>0 Entonces

	Limpiar Pantalla
	Escribir ''
	Escribir ' Dragon de la reparacion'
	Escribir ' Puntos de vida: ' vidaJefe
	Escribir'        \__\  '
	Escribir'   ___  (o  \__'
	Escribir'  /   \ ( ___vv'
	Escribir'   /_  \  |                _/^\_'
	Escribir' ____| . . \                 o'
	Escribir'     -^-^-^-                /|\'
	Escribir '----------------------------------'
	Escribir 'Es el turno del Mago!'
	Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
	Esperar 1 Segundos
	Escribir 'Que hara el Mago?'
	Escribir '[1] Atacar'
	Escribir '[2] Usar magia (' puntosMagia '/8)'
	leer accionDeMago
	animacionATKcontador<-3
	Segun accionDeMago hacer
		
		1: //mago ataca
			turnos<-turnos+1
			Repetir
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\  '
				Escribir'   ___  (o  \__'
				Escribir'  /   \ ( ___vv'
				Escribir'   /_  \  |           *-o  _/^\_'
				Escribir' ____| . . \            |  __o'
				Escribir'     -^-^-^-            |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'El Mago ataca al dragon...'
				
				Esperar 150 Milisegundos
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\  '
				Escribir'   ___  (o  \__'
				Escribir'  /   \ ( ___vv         x'
				Escribir'   /_  \  |       *--  xox _/^\_'
				Escribir' ____| . . \            |  __o'
				Escribir'     -^-^-^-            |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'El Mago ataca al dragon...'
				Esperar 150 Milisegundos
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\  '
				Escribir'   ___  (>  \__         |'
				Escribir'  /   \ ( ___vv         *'
				Escribir'   /_  \  | *--       -*o*-_/^\_'
				Escribir' ____| . . \            |  __o'
				Escribir'     -^-^-^-            |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'El Mago ataca al dragon...'
				animacionATKcontador<-animacionATKcontador-1
				Esperar 150 Milisegundos
				
			Hasta Que animacionATKcontador<1
			
			danoHecho<-ALEATORIO(65,155)
			
			vidaJefe<-vidaJefe-danoHecho
			si vidaJefe<0 Entonces
				vidaJefe<-0
			FinSi
			
			Limpiar Pantalla
			Escribir ''
			Escribir ' Dragon de la reparacion'
			Escribir ' Puntos de vida: ' vidaJefe
			Escribir'        \__\  '
			Escribir'   ___  (o  \__'
			Escribir'  /   \ ( ___vv'
			Escribir'   /_  \  |                _/^\_'
			Escribir' ____| . . \                 o'
			Escribir'     -^-^-^-                /|\'
			Escribir '----------------------------------'
			Escribir 'Es el turno del Mago!'
			Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
			Escribir 'El Mago le ha quitado ' danoHecho ' puntos de vida al dragon'
			Escribir '>Presione una tecla para continuar<'
			Esperar Tecla
			
		2: //usa magia aleatoria
			turnos<-turnos+1
			si puntosMagia>0 Entonces
			puntosMagia<-puntosMagia-1
			Repetir
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\  '
				Escribir'   ___  (o  \__'
				Escribir'  /   \ ( ___vv'
				Escribir'   /_  \  |             o  _/^\_'
				Escribir' ____| . . \            |  __o'
				Escribir'     -^-^-^-            |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'El Mago lanza un hechizo...'
				Esperar 150 Milisegundos
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\  '
				Escribir'   ___  (o  \__'
				Escribir'  /   \ ( ___vv         ^'
				Escribir'   /_  \  |            <o> _/^\_'
				Escribir' ____| . . \            |  __o'
				Escribir'     -^-^-^-            |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'El Mago lanza un hechizo...'
				Esperar 150 Milisegundos
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\  '
				Escribir'   ___  (o  \__         !'
				Escribir'  /   \ ( ___vv         *'
				Escribir'   /_  \  |           ~*o*~_/^\_'
				Escribir' ____| . . \            |  __o'
				Escribir'     -^-^-^-            |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'El Mago lanza un hechizo...'
				animacionATKcontador<-animacionATKcontador-1
				Esperar 150 Milisegundos
				
			Hasta Que animacionATKcontador<1
			rng<-Aleatorio(1,3) //1=trueno //2=fuego //3=doble danio
			animacionATKcontador<-5
			
			segun rng Hacer
				1: //trueno!!!!
					
					
					Limpiar Pantalla
					Escribir ''
					Escribir ' Dragon de la reparacion'
					Escribir ' Puntos de vida: ' vidaJefe
					Escribir'        \__\    \\  '
					Escribir'   ___  (o  \__     '
					Escribir'  /   \ ( ___vv    '
					Escribir'   /_  \  |             o  _/^\_'
					Escribir' ____| . . \            |  __o'
					Escribir'     -^-^-^-            |    |\'
					Escribir '----------------------------------'
					Escribir 'Es el turno del Mago!'
					Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
					Escribir 'Hechizo del trueno!'
					Esperar 60 Milisegundos
					
					Limpiar Pantalla
					Escribir ''
					Escribir ' Dragon de la reparacion'
					Escribir ' Puntos de vida: ' vidaJefe
					Escribir'        \__\    \\  '
					Escribir'   ___  (o  \__ //  '
					Escribir'  /   \ ( ___vv   '
					Escribir'   /_  \  |             o  _/^\_'
					Escribir' ____| . . \            |  __o'
					Escribir'     -^-^-^-            |    |\'
					Escribir '----------------------------------'
					Escribir 'Es el turno del Mago!'
					Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
					Escribir 'Hechizo del trueno!'
					Esperar 60 Milisegundos
					
					Limpiar Pantalla
					Escribir ''
					Escribir ' Dragon de la reparacion'
					Escribir ' Puntos de vida: ' vidaJefe
					Escribir'        \__\    \\  '
					Escribir'   ___  (o  \__ //  '
					Escribir'  /   \ ( ___vv \\  '
					Escribir'   /_  \  |             o  _/^\_'
					Escribir' ____| . . \            |  __o'
					Escribir'     -^-^-^-            |    |\'
					Escribir '----------------------------------'
					Escribir 'Es el turno del Mago!'
					Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
					Escribir 'Hechizo del trueno!'
					Esperar 60 Milisegundos
					
					Limpiar Pantalla
					Escribir ''
					Escribir ' Dragon de la reparacion'
					Escribir ' Puntos de vida: ' vidaJefe
					Escribir'        \__\    \\  '
					Escribir'   ___  (o  \__ //  '
					Escribir'  /   \ ( ___vv \\  '
					Escribir'   /_  \  |     //      o  _/^\_'
					Escribir' ____| . . \            |  __o'
					Escribir'     -^-^-^-            |    |\'
					Escribir '----------------------------------'
					Escribir 'Es el turno del Mago!'
					Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
					Escribir 'Hechizo del trueno!'
					Esperar 60 Milisegundos
					
					Limpiar Pantalla
					Escribir ''
					Escribir ' Dragon de la reparacion'
					Escribir ' Puntos de vida: ' vidaJefe
					Escribir'        \__\    \\  '
					Escribir'   ___  (o  \__ //   '
					Escribir'  /   \ ( ___vv \\  '
					Escribir'   /_  \  |     //      o  _/^\_'
					Escribir' ____| . . \    \\      |  __o'
					Escribir'     -^-^-^-            |    |\'
					Escribir '----------------------------------'
					Escribir 'Es el turno del Mago!'
					Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
					Escribir 'Hechizo del trueno!'
					Esperar 60 Milisegundos
					
					Repetir
					Limpiar Pantalla
					Escribir ''
					Escribir ' Dragon de la reparacion'
					Escribir ' Puntos de vida: ' vidaJefe
					Escribir'        \__\   *\\  '
					Escribir'   ___  (>  \__ // * '
					Escribir'  /   \ ( ___vv \\  '
					Escribir'   /_  \  |    *//      o  _/^\_'
					Escribir' ____| . . \    \\  *   |  __o'
					Escribir'     -^-^-^-  `_//_`    |    |\'
					Escribir '----------------------------------'
					Escribir 'Es el turno del Mago!'
					Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
					Escribir 'Hechizo del trueno!'
					Esperar 60 Milisegundos
					
					Limpiar Pantalla
					Escribir ' Dragon de la reparacion'
					Escribir ' Puntos de vida: ' vidaJefe
					Escribir'        \__\ *  \\  '
					Escribir'   ___  (>  \__ // . '
					Escribir'  /   \ ( ___vv \\  '
					Escribir'   /_  \  |     //  *   o  _/^\_'
					Escribir' ____| . . \  * \\      |  __o'
					Escribir'     -^-^-^-  `_//_`    |    |\'
					Escribir ''
					Escribir '----------------------------------'
					Escribir 'Es el turno del Mago!'
					Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
					Escribir 'Hechizo del trueno!'
					Esperar 60 Milisegundos
					animacionATKcontador<-animacionATKcontador-1
				Hasta Que animacionATKcontador=0
				
				danoHecho<-Aleatorio(199,255)
				vidaJefe<-vidaJefe-danoHecho
				si vidaJefe<0 Entonces
					vidaJefe<-0
				FinSi
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\  '
				Escribir'   ___  (o  \__'
				Escribir'  /   \ ( ___vv'
				Escribir'   /_  \  |                _/^\_'
				Escribir' ____| . . \                 o'
				Escribir'     -^-^-^-                /|\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'Hechizo del trueno!'
				Escribir 'El Mago le ha quitado ' danoHecho ' puntos de vida al dragon'
				Escribir '>Presione una tecla para continuar<'
				Esperar Tecla
				
			2: //quemadura
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\             '
				Escribir'   ___  (o  \__         '
				Escribir'  /   \ ( ___vv         ^ '
				Escribir'   /_  \  |            `o  _/^\_'
				Escribir' ____| . . \            |  __o'
				Escribir'     -^-^-^-            |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'Hechizo de quemadura!'
				Esperar 120 Milisegundos
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\             '
				Escribir'   ___  (o  \__         '
				Escribir'  /   \ ( ___vv    +  +^ '
				Escribir'   /_  \  |          \ `o  _/^\_'
				Escribir' ____| . . \        \   |  __o'
				Escribir'     -^-^-^-            |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'Hechizo de quemadura!'
				Esperar 120 Milisegundos
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\             '
				Escribir'   ___  (o  \__         '
				Escribir'  /   \ ( ___vv    `    '
				Escribir'   /_  \  |      `     `o  _/^\_'
				Escribir' ____| . . \   ^    \   |  __o'
				Escribir'     -^-^-^-    ^ \  @  |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'Hechizo de quemadura!'
				Esperar 120 Milisegundos
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\             '
				Escribir'   ___  (o  \__         '
				Escribir'  /   \ ( ___vv         '
				Escribir'   /_  \  |            `o  _/^\_'
				Escribir' __^_| . . \^  ` ^  \   |  __o'
				Escribir'  ^  -^-^-^-  ^ \  `    |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'Hechizo de quemadura!'
				Esperar 120 Milisegundos
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\             '
				Escribir'   ___  (o  \__         '
				Escribir'  /   \ ( ___vv         '
				Escribir'   /_  \  |             o  _/^\_'
				Escribir' __`_| . .`\`  ^        |  __o'
				Escribir'  `  -^v^-^-  ^ v       |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'Hechizo de quemadura!'
				Esperar 120 Milisegundos
				
				Repetir
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\             '
				Escribir'   ___  (>  \__         '
				Escribir'  /   \ ( ___vv         '
				Escribir'   /_  \  |             o  _/^\_'
				Escribir' ____| . .^\ ^ `        |  __o'
				Escribir'  ^  -^^^-^-  ` \       |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'Hechizo de quemadura!'
				Esperar 120 Milisegundos
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\             '
				Escribir'   ___  (>  \__         '
				Escribir'  /   \ ( ___vv         '
				Escribir'   /_  \  |    `        o  _/^\_'
				Escribir' __^_| ^ .`\ ` ^        |  __o'
				Escribir'  `  -^`^-^-  ` ^       |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'Hechizo de quemadura!'
				Esperar 120 Milisegundos
				animacionATKcontador<-animacionATKcontador-1
			Hasta Que animacionATKcontador<1
				
			jefeEnLlamas=Verdadero
			danoquemaduras=danoquemaduras+45
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\  '
				Escribir'   ___  (o  \__'
				Escribir'  /   \ ( ___vv'
				Escribir'   /_  \  |                _/^\_'
				Escribir' ____| . . \                 o'
				Escribir'     -^-^-^-                /|\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'Hechizo de quemadura!'
				Escribir 'El Dragon recibira dano por quemadura'
				Escribir '>Presione una tecla para continuar<'
				Esperar Tecla
				
			3: //dobledano!!!
				
				repetir 
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\            '
				Escribir'   ___  (o  \__         '
				Escribir'  /   \ ( ___vv    /\      '
				Escribir'   /_  \  |         o   o  _/^\_'
				Escribir' ____| . . \     /\   /\|  __o'
				Escribir'     -^-^-^-            |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'Hechizo de dano x2!'
				Esperar 60 Milisegundos
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\            '
				Escribir'   ___  (o  \__         '
				Escribir'  /   \ ( ___vv      /\  '
				Escribir'   /_  \  |      /\ o   o  _/^\_'
				Escribir' ____| . . \        /\  |  __o'
				Escribir'     -^-^-^-            |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'Hechizo de dano x2!'
				Esperar 60 Milisegundos
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\            '
				Escribir'   ___  (o  \__         '
				Escribir'  /   \ ( ___vv   /\    '
				Escribir'   /_  \  |         o /\o  _/^\_'
				Escribir' ____| . . \       /\   |  __o'
				Escribir'     -^-^-^-            |    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Mago!'
				Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
				Escribir 'Hechizo de dano x2!'
				Esperar 60 Milisegundos
				
				animacionATKcontador<-animacionATKcontador-1
			Hasta Que animacionATKcontador<1
			
			
			dobledanolisto<-Verdadero
			Limpiar Pantalla
			Escribir ''
			Escribir ' Dragon de la reparacion'
			Escribir ' Puntos de vida: ' vidaJefe
			Escribir'        \__\  '
			Escribir'   ___  (o  \__'
			Escribir'  /   \ ( ___vv'
			Escribir'   /_  \  |                _/^\_'
			Escribir' ____| . . \                 o'
			Escribir'     -^-^-^-                /|\'
			Escribir '----------------------------------'
			Escribir 'Es el turno del Mago!'
			Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
			Escribir 'Hechizo de dano x2!'
			Escribir 'Tu equipo hara el doble de dano'
			Escribir 'Durante el siguiente turno'
			Escribir '>Presione una tecla para continuar<'
			Esperar Tecla
			
			FinSegun
			
		SiNo
			
			Limpiar Pantalla
			Escribir ''
			Escribir ' Dragon de la reparacion'
			Escribir ' Puntos de vida: ' vidaJefe
			Escribir'        \__\  '
			Escribir'   ___  (o  \__'
			Escribir'  /   \ ( ___vv              !'
			Escribir'   /_  \  |                _/^\_'
			Escribir' ____| . . \                 o'
			Escribir'     -^-^-^-                /|\'
			Escribir '----------------------------------'
			Escribir 'Es el turno del Mago!'
			Escribir 'Puntos de vida del Mago:' vidaMago '/' vidamaxMago
			Escribir 'El Mago no puede seguir usando magia...'
			Escribir '>Presione una tecla para continuar<'
			Esperar Tecla
		FinSi
			
	FinSegun
FinSi

//Turno del jefe :O
si vidaJefe>0 Entonces
	rng<-Aleatorio(1,3)
	
	Limpiar Pantalla
	Escribir ''
	Escribir ' Dragon de la reparacion'
	Escribir ' Puntos de vida: ' vidaJefe
	Escribir'        \__\  '
	Escribir'   ___  (o  \__'
	Escribir'  /   \ ( ___vv'
	Escribir'   /_  \  | '
	Escribir' ____| . . \                 o'
	Escribir'     -^-^-^-                /|\'
	Escribir '----------------------------------'
	Escribir 'Es el turno del Dragon!'
	Escribir 'El dragon piensa que hacer...'
	Esperar 2 Segundos
	
	Segun rng Hacer
		
		1 o 2 o 3: //atk al Protag
			Limpiar Pantalla
			Escribir ''
			Escribir ' Dragon de la reparacion'
			Escribir ' Puntos de vida: ' vidaJefe
			Escribir'        \__\  '
			Escribir'   ___  (o  \__'
			Escribir'  /   \ ( ___vv (animacion de ataque)  '
			Escribir'   /_  \  | '
			Escribir' ____| . . \                 o'
			Escribir'     -^-^-^-                /|\'
			Escribir '----------------------------------'
			Escribir 'Es el turno del Dragon!'
			Escribir 'El dragon ataca a ' nombreProtag '!'
			Esperar 2 Segundos
			
			danoHecho<-Aleatorio(25,65)
			
			si Protagprotegiendose=Verdadero Entonces
				
				danoHecho=danoHecho/2
				danoHecho<-redon(danoHecho)
				
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\  '
				Escribir'   ___  (o  \__'
				Escribir'  /   \ ( ___vv'
				Escribir'   /_  \  |            _____'
				Escribir' ____| . . \           \ - / \o'
				Escribir'     -^-^-^-             v    |\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Dragon!'
				Escribir 'El dragon ataca a ' nombreProtag '!'
				Escribir nombreProtag ' recibe la mitad del dano al protegerse'
				Escribir nombreProtag ' recibio ' danoHecho ' puntos de dano'
				Escribir '>Presione una tecla para continuar<'
				Esperar Tecla
				Protagprotegiendose<-Falso
				
				
			SiNo
				vidaProtag=vidaProtag-danoHecho
				
				Limpiar Pantalla
				Escribir ''
				Escribir ' Dragon de la reparacion'
				Escribir ' Puntos de vida: ' vidaJefe
				Escribir'        \__\  '
				Escribir'   ___  (o  \__'
				Escribir'  /   \ ( ___vv'
				Escribir'   /_  \  | '
				Escribir' ____| . . \                 o'
				Escribir'     -^-^-^-                /|\'
				Escribir '----------------------------------'
				Escribir 'Es el turno del Dragon!'
				Escribir 'El dragon ataca a ' nombreProtag '!'
				Escribir nombreProtag ' recibio ' danoHecho ' puntos de dano'
				Escribir '>Presione una tecla para continuar<'
				Esperar Tecla
				
				
			FinSi
			
			
		
		
	FinSegun
	
	
FinSi

	
	
	
	
Hasta Que vidaJefe<1




FinAlgoritmo

//Escribir '    O'
//Escribir '   /|\'
//Escribir '    |'
//Escribir '   / \'

//Escribir '          _____________'
//Escribir '    O   | Me llamo... '
//Escribir '   /|\  |/'

//Escribir ''   <- 10 veces!!

//Escribir'        \__\   '
//Escribir'   ___  (o  \__'
//Escribir'  /   \ (  __vv'
//Escribir'   /_  \  |   '
//Escribir' ____| . . \  '
//Escribir'     -^-^-^-  '


