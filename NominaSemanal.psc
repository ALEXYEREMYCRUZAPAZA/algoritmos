Algoritmo NominaSemanal
    // Declaración de variables
    Definir horas, tarifa, salario_base, impuestos, salario_neto, sueldo_bruto Como Real
    Definir nombre Como Caracter
    Definir sueldo_mensual Como Entero
    Definir num_empleados Como Entero
    Definir horas_normales Como Entero
    Definir horas_extras Como Entero
    Definir promedio_extras Como Real
    Definir contador_empleados Como Entero
    Definir sueldo_base_detalle Como Real
    Definir horas_extras_detalle Como Entero
    Definir impuestos_detalle Como Real
	
    // Lectura del número de empleados
    Escribir "Ingrese el número de empleados:"
    Leer num_empleados
    contador_empleados = 0
	
	// Bucle para calcular la nómina de cada empleado
    Para i = 1 Hasta num_empleados Con Paso 1 Hacer
        // Lectura de datos del empleado
        Escribir "Ingrese el nombre del empleado ", i, ":"
        Leer nombre 
        Escribir "Ingrese el número de horas trabajadas:"
        Leer horas
        Escribir "Ingrese la tarifa horaria:"
        Leer tarifa
        
        // Cálculo del salario base
        Si horas <= 35 Entonces
            salario_base = horas * tarifa
            sueldo_base_detalle = salario_base
            horas_extras_detalle = 0
        Sino
            horas_normales = 35
            horas_extras = horas - horas_normales
            promedio_extras = 1.5
            salario_base = (horas_normales * tarifa) + (horas_extras * tarifa * promedio_extras)
            sueldo_base_detalle = (horas_normales * tarifa) 
            horas_extras_detalle = horas_extras 
        FinSi
        
        // Cálculo del sueldo bruto
        sueldo_bruto = salario_base + (horas_extras * tarifa * promedio_extras)
        
        // Cálculo de impuestos
        Si salario_base <= 2000 Entonces
            impuestos = 0
            impuestos_detalle = 0
        Sino
            Si salario_base > 2000 Y salario_base <= 2220 Entonces
                impuestos = (salario_base - 2000) * 0.2
                impuestos_detalle = impuestos
            Sino
                sueldo_mensual = salario_base * 4
                impuestos = (220 * 0.2) + ((sueldo_mensual - 2200) * 0.3)
                impuestos_detalle = impuestos
            FinSi
        FinSi
        
        // Cálculo del salario neto
        salario_neto = sueldo_bruto - impuestos
        
        // Impresión de resultados detallados
        contador_empleados = contador_empleados + 1
        Escribir "Detalle de la nómina del empleado ", contador_empleados, ":"
        Escribir "Nombre del empleado: ", nombre
        Escribir "Número de horas trabajadas: ", horas
        Escribir "Tarifa horaria: ", tarifa
        Escribir "Salario base: ", sueldo_base_detalle
        Escribir "Horas extras: ", horas_extras_detalle
        Escribir "Sueldo bruto: ", sueldo_bruto
        Escribir "Impuestos: ", impuestos_detalle
        Escribir "Salario neto: ", salario_neto
    FinPara
FinAlgoritmo
