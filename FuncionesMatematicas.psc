Algoritmo FuncionesMatematicas
	Definir ValorAbs, ParteEntera, Redondear, RaizC, NumX como real
	Escribir  "ingresa el numero a calcular: "
	Leer NumX
	ValorAbs = abs(NumX)
	ParteEntera = trunc(NumX)
	Redondear = redon(NumX)
	RaizC = raiz(NumX)
	Escribir  "El valor absoluto de: " NumX " es: " ValorAbs
	Escribir  "La parte entera de: " NumX " es: " ParteEntera
	Escribir  "El numero: " NumX " redondeado es: " Redondear
	Escribir  "La raiz cuadrada de: " NumX " es: " RaizC
FinAlgoritmo