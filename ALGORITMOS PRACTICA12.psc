Algoritmo HavardAlex
	Definir NomEstudiante Como Caracter
	Definir Carrera Como Entero
	Definir ConFecha Como Numero
	Definir Matricula, Mensualidad Como Real
	
	Escribir "* --- UNIVERSIDAD DE HAVARD--- *"
	Escribir "SISTEMA DE PAGOS DE MATRICULAS Y PENSIONES"
	Escribir "Ingrese el nombre del estudiante: " Sin Saltar
	Leer  NomEstudiante
	
	Escribir "Qué carrera estudia?"
	Escribir "[1] Computación e Informática"
	Escribir "[2] Secretariado Ejecutivo"
	Escribir "[3] Administración"
	Escribir "Seleccione la opción:" Sin Saltar
	Leer Carrera
	Si (Carrera = 1) Entonces
		Matricula = 300
		Mensualidad = 450
	FinSi
	si (Carrera = 2) Entonces
		Matricula = 200
		Mensualidad = 350
	FinSi
	Si (Carrera = 3) Entonces
		Matricula = 250
		Mensualidad = 400
	FinSi
	
	Escribir "Esta en el rango de fecha permitido?" Sin Saltar
	Escribir "(1) = SI (0) = NO" Sin Saltar
	Leer  ConFecha
	
	si (ConFecha = 1) Entonces
		Definir concepto Como Entero
		Escribir "El estudiante esta dentro del rango de las fechas permitidas"
		Escribir "Qué concepto desea pagar?"
		Escribir "[1] Matricula o Mensualidad"
		Escribir "[2] Matricula y Mensualidades"
		Escribir "[3] Todo el Semestre"
		Escribir "[4] Toda la Carrera"
		Escribir "Seleccione el concepto a pagar:" Sin Saltar
		Leer concepto
		
		si (concepto =1) Entonces
			//Condición 1: Pago de Matricula o Mensualidad no hay descuento
			Definir OpcionMM Como Entero
			Escribir "Elije la opción para pagar: "
			Escribir "[1] Matricula"
			Escribir "[2] Mensualidad"
			Leer OpcionMM
			si OpcionMM = 1 Entonces
				Escribir "Ustede debe pagar: " Matricula
			SiNo
				Escribir "Ustede debe pagar: " Mensualidad
			FinSi
		SiNo
			Escribir "No se puede realizar la operación"
		FinSi
		
		si (concepto = 2) Entonces
			Definir NroMensualidades Como Entero
			Escribir "Cuantas mensualidades desea pagar?"
			Leer NroMensualidades
			si (NroMensualidades >= 2) Y (NroMensualidades <= 4) Entonces
				Definir NueMatricula, NueMensualidad, MontoPagar Como Real
				NueMatricula = Matricula * 0.05
				NueMensualidad = Mensualidad * 0.10
				MontoPagar = (Matricula-NueMatricula) + (Mensualidad - NueMensualidad)*NroMensualidades
				Escribir "Usted debe pagar: " MontoPagar
			SiNo
				Escribir "Error!!! No se puede realizar la operación"
			FinSi
		FinSi
		
		Si (concepto = 3) Entonces
			Definir NueMatricula, NueMensualidad, MontoPagar Como Real
			NueMatricula = Matricula*0.10
			NueMensualidad = Mensualidad*0.20
			MontoPagar = (Matricula - NueMatricula) + ((Mensualidad - NueMensualidad)*5)
			Escribir "Usted debe pagar: " MontoPagar
		FinSi
		
		Si (concepto = 4) Entonces
			Definir NueMatricula, NueMensualidad, MontoPagar Como Real
			NueMatricula = Matricula*0.20
			NueMensualidad = Mensualidad*0.40
			MontoPagar = ((Matricula - NueMatricula)*6) + ((Mensualidad - NueMensualidad)*30)
			Escribir "Usted debe pagar: " MontoPagar
		FinSi
		
	sino	
		Escribir "El estudiante esta fuera del rango de las fechas permitidas"
		Definir multa Como real
		multa = Mensualidad *0.01
		Mensualidad = Mensualidad + multa
		Escribir "La nueva mensualidad es:" Mensualidad
	FinSi
FinAlgoritmo