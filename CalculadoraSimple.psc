Algoritmo CalculadoraSimple
	Definir NumX, NumY, suma, dif, producto, cociente, potencia,resto Como real
	Escribir  "Ingreso el primer numero: "
	Leer NumX
	Escribir  "Ingresa el segundo numero: "
	Leer NumY 
	suma = NumX + NumY
	dif = NumX - NumY
	producto = NumX * NumY
	cociente = NumX / NumY
	potencia = NumX ^ NumY
	resto = NumX mod NumY
	Escribir  "El resultado de la suma es: " NumX " + " NumY " es: " suma
	Escribir  "El resultado de la diferencia es: " NumX " - " NumY " es: " dif
	Escribir  "El resultado del producto es: " NumX " * " NumY " es: " producto
	Escribir  "El resultado del cociente es: " NumX " / " NumY " es: " cociente
	Escribir  "El resultado de la potenciacion es: " NumX " elevado " NumY " es: " potencia
	Escribir  "El resultado o modulo es: " NumX " / " NumY " es: " resto
FinAlgoritmo
