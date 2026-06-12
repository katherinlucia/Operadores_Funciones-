Algoritmo Batalla_RPG_Dragon
	
	// ==========================================
	// 1. INICIO DEL JUEGO Y ENTRADA DE DATOS
	// ==========================================
	Escribir "=== ¡BIENVENIDO A PSEINT RPG: EL DESPERTAR DEL DRAGÓN! ==="
	Escribir "Ingresa el nombre de tu héroe o heroína:"
	Leer nombreHeroe
	
	Escribir "Ingresa los puntos de Vida iniciales de tu héroe (ejemplo: 100):"
	Leer vidaHeroe
	
	Escribir "Elige la potencia base de tu hechizo mágico (un número con decimales, ej: 25.75):"
	Leer poderMagico
	
	Escribir "Ingresa el ángulo de lanzamiento de tu ataque (en grados, de 1 a 90):"
	Leer anguloAtaque
	
	Escribir "--------------------------------------------------------"
	Escribir "¡EL COMBATE HA COMENZADO! El Dragón ruge con fuerza..."
	Escribir "--------------------------------------------------------"
	
	// ==========================================
	// 2. FUNCIONES DE CADENAS (TEXTO)
	// ==========================================
	longitudNombre <- Longitud(nombreHeroe)
	inicialHeroe <- SubCadena(nombreHeroe, 1, 1)
	
	nombreMayus <- Mayusculas(nombreHeroe)
	nombreMinus <- Minusculas(nombreHeroe)
	tituloHeroe <- Concatenar("EL PODEROSO ", nombreMayus)
	
	// Conversiones obligatorias de texto/número
	textoVidaInicial <- ConvertirATexto(vidaHeroe)
	codigoSecretoEnemigo <- ConvertirANumero("999")
	
	// ==========================================
	// 3. OPERADORES ALGEBRAICOS Y CONSTANTES
	// ==========================================
	vidaDragon <- 350.0
	
	// Operaciones matemáticas de batalla
	dañoEfectuado <- poderMagico * 3.5
	vidaRestanteDragon <- vidaDragon - dañoEfectuado
	pocionSanacion <- vidaHeroe + 45.5
	dañoDividido <- dañoEfectuado / 2
	criticoPotencia <- 4 ^ 3                      // Potencia (4 al cubo = 64)
	residuoTurno <- vidaHeroe MOD 4               // Módulo / Resto
	
	// Constantes mágicas del universo
	magiaPi <- PI
	magiaEuler <- Euler
	
	// ==========================================
	// 4. FUNCIONES MATEMÁTICAS (BALÍSTICA MÁGICA)
	// ==========================================
	errorAbsoluto <- abs(-12.5)
	dañoTruncado <- trunc(dañoEfectuado)          // Quita decimales al daño
	dañoRedondeado <- redon(dañoEfectuado)        // Redondea el daño
	raizDefensa <- raiz(vidaHeroe)                // Raíz cuadrada de tu vida
	
	// Trigonometría para calcular la trayectoria del hechizo
	radianesAtaque <- anguloAtaque * (PI / 180)
	vSen <- sen(radianesAtaque)
	vCos <- cos(radianesAtaque)
	vTan <- tan(radianesAtaque)
	
	// Otras funciones matemáticas exigidas
	vAsen <- asen(0.5)
	vAcos <- acos(0.5)
	vAtan <- atan(1)
	logMina <- ln(vidaHeroe)                      // Logaritmo natural
	expEscudo <- exp(1)                           // Exponencial e^1
	
	// ==========================================
	// 5. OTRAS FUNCIONES (AZAR, FECHA Y HORA)
	// ==========================================
	contraataqueDragon <- Azar(60)                // Daño aleatorio del dragón entre 0 y 59
	bonoSuerteHeroe <- Aleatorio(10, 30)          // Bono de daño extra entre 10 y 30
	
	// ==========================================
	// 6. OPERADORES RELACIONALES
	// ==========================================
	heroeVivo <- (vidaHeroe > 0)
	dragonHerido <- (vidaRestanteDragon <= 200)
	esAtaquePerfecto <- (anguloAtaque = 45)
	esNombreDiferente <- (nombreHeroe <> "Dragon")
	ataqueDebil <- (dañoEfectuado < 50)
	ataqueMuyFuerte <- (dañoEfectuado >= 150)
	
	// ==========================================
	// 7. OPERADORES LÓGICOS
	// ==========================================
	condicionAtaque <- heroeVivo Y dragonHerido
	condicionDefensa <- esAtaquePerfecto O ataqueMuyFuerte
	estadoFailsafe <- NO ataqueDebil
	
	// ==========================================
	// 8. DESARROLLO DE LA AVENTURA (PANTALLA)
	// ==========================================
	Escribir "Fecha de la crónica: ", FechaActual()
	Escribir "Hora del impacto:    ", HoraActual()
	Escribir "--------------------------------------------------------"
	Escribir "¡", tituloHeroe, " entra en acción!"
	Escribir "Tu nombre en registro minúsculo: ", nombreMinus
	Escribir "Tu nombre tiene ", longitudNombre, " letras. Tu estandarte inicia con la letra: ", inicialHeroe
	Escribir "Tu escudo rúnico tiene un valor de texto de: ", textoVidaInicial, " y descifraste el código del enemigo: ", codigoSecretoEnemigo
	Escribir "--------------------------------------------------------"
	Escribir "=== BITÁCORA DE COMBATE ==="
	Escribir " - Si usaras una poción, tu vida subiría a: ", pocionSanacion
	Escribir " - Multiplicador de hechizo elemental: ", dañoEfectuado
	Escribir " - División de energía de impacto: ", dañoDividido
	Escribir " - Tu poder de impacto crítico puro (4^3): ", criticoPotencia
	Escribir " - Energía residual mística (Vida MOD 4): ", residuoTurno
	Escribir " - Raíz cuadrada de tu vitalidad de defensa: ", raizDefensa
	Escribir " - Logaritmo espiritual de tu héroe: ", logMina
	Escribir "--------------------------------------------------------"
	Escribir "=== CÁLCULO DE TELEMETRÍA MÁGICA (ÁNGULO ", anguloAtaque, "°) ==="
	Escribir " - Precisión Vertical (Seno): ", vSen
	Escribir " - Precisión Horizontal (Coseno): ", vCos
	Escribir " - Trayectoria Parabólica (Tangente): ", vTan
	Escribir " - Constantes del cosmos -> PI: ", magiaPi, " | Euler: ", magiaEuler, " | Exponencial: ", expEscudo
	Escribir " - Arcos trigonométricos calculados -> Asen: ", vAsen, " | Acos: ", vAcos, " | Atan: ", vAtan
	Escribir " - Margen de error absoluto de caída: ", errorAbsoluto
	Escribir "--------------------------------------------------------"
	Escribir "=== INFORME DE DAÑO FINAL ==="
	Escribir " - Daño Truncado aplicado al monstruo: ", dañoTruncado
	Escribir " - Daño Redondeado aplicado al monstruo: ", dañoRedondeado
	Escribir " - ¡Bono místico de los dioses (Aleatorio): +", bonoSuerteHeroe, " puntos de fuego!"
	
	dañoFinalHeroe <- dañoRedondeado + bonoSuerteHeroe
	vidaFinalDragon <- vidaDragon - dañoFinalHeroe
	
	Escribir " >> DAÑO TOTAL PRODUCIDO AL DRAGÓN: ", dañoFinalHeroe
	Escribir " >> El dragón contraataca ferozmente y te quita (Azar): ", contraataqueDragon, " de vida."
	
	vidaFinalHeroe <- vidaHeroe - contraataqueDragon
	Escribir "--------------------------------------------------------"
	Escribir "=== RESULTADO DE LA BATALLA ==="
	Escribir "Vida final del Dragón: ", vidaFinalDragon
	Escribir "Vida final de ", nombreHeroe, ": ", vidaFinalHeroe
	Escribir "--------------------------------------------------------"
	
	// Condición final usando los operadores lógicos evaluados arriba
	Si (vidaFinalDragon <= 0) Y (vidaFinalHeroe > 0) Entonces
		Escribir "¡VICTORIA! ", nombreMayus, " ha derrotado al dragón y salvado al reino de PSeInt."
	Sino
		Si (condicionDefensa O estadoFailsafe) Entonces
			Escribir "¡EMPATE O RETIRADA ESTRATÉGICA! El combate fue épico, ambos siguen de pie."
		Sino
			Escribir "¡DERROTA! El dragón ha vencido. Tu aventura termina aquí... intenta con más poder mágico."
		FinSi
	FinSi
	
FinAlgoritmo