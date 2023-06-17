// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "       Elija opción[1..",lim,"]" Sin Saltar
	leer opcion
FinFuncion

//EJERCICIOS SELECTIVOS
//EJERCICIO 1
//Se definen las variables resultado1, resultado4, y resultado5 como tipo lógico (booleano) para almacenar los resultados de las expresiones como verdadero o falso.
//Se define la variable resultado2 como tipo entero para almacenar el resultado de la expresión como un número entero.
//Se define la variable resultado3 como tipo real (flotante) para almacenar el resultado de la expresión como un número decimal.
//Se evalúa la expresión (5 + 3 * 2) + 9 > 3 * 5 * (14 % 3) y el resultado se asigna a la variable resultado1. Esta expresión involucra operaciones aritméticas y operadores de comparación. El resultado será verdadero (true) o falso (false).
//Se evalúa la expresión 2 * ((4 - 10 + 8) / 2) + 36 * (1/2) y el resultado se asigna a la variable resultado2. Esta expresión también involucra operaciones aritméticas y se evalúa siguiendo las reglas de precedencia de operadores. El resultado será un número entero.
//Se evalúa la expresión (260 / 12) + (54 % 3) - (85 % 7) y el resultado se asigna a la variable resultado3. Esta expresión involucra operaciones aritméticas y se evalúa siguiendo las reglas de precedencia de operadores. El resultado será un número decimal.
//Se evalúa la expresión (48 < (2 * 3)) O ((2 * 7) < 12) y el resultado se asigna a la variable resultado4. Esta expresión involucra operadores de comparación y operadores lógicos. El resultado será verdadero (true) o falso (false).
//Se evalúa la expresión ((8 > 2) O (932 < 23)) Y (4 == 2) y el resultado se asigna a la variable resultado5. Esta expresión involucra operadores de comparación y operadores lógicos. El resultado será verdadero (true) o falso (false).
//Se imprime en pantalla el resultado de cada expresión utilizando la función Escribir.
Funcion Convertir_expresionMatematica()
    Definir resultado1, resultado4, resultado5 Como Logico
    Definir resultado2 Como Entero
    Definir resultado3 Como Real
    
    resultado1 <- (5 + 3 * 2) + 9 > 3 * 5 * (14 % 3)
    resultado2 <- 2 * ((4 - 10 + 8) / 2) + 36 * (1/2)
    resultado3 <- (260 / 12) + (54 % 3) - (85 % 7)
    resultado4 <- (48 < (2 * 3)) O ((2 * 7) < 12)
    resultado5 <- ((8 > 2) O (932 < 23)) Y (4 == 2)
    
    Escribir "El resultado de la expresion1 es: ", resultado1
    Escribir "El resultado de la expresion2 es: ", resultado2
    Escribir "El resultado de la expresion3 es: ", resultado3
    Escribir "El resultado de la expresion4 es: ", resultado4
    Escribir "El resultado de la expresion5 es: ", resultado5
    
FinFuncion

//EJERCICIO 2
//Se definen las variables num1, num2, suma, resta, multiplicacion, division y modulo como tipo real (flotante) para almacenar los números ingresados y los resultados de las operaciones.
//Se define la variable opcion como tipo entero para almacenar la opción seleccionada por el usuario.
//Se muestra un menú con diferentes opciones de operaciones matemáticas para el usuario seleccionar.
//e lee la opción seleccionada por el usuario y se almacena en la variable opcion.
//Se solicita al usuario que ingrese el primer número y se almacena en la variable num1.
//Se solicita al usuario que ingrese el segundo número y se almacena en la variable num2.
//Se utiliza la estructura "Segun opcion Hacer" para ejecutar el bloque de código correspondiente a la opción seleccionada por el usuario:
//Si la opción es 1 (suma), se realiza la suma de los números ingresados y se muestra el resultado.
//Si la opción es 2 (resta), se realiza la resta de los números ingresados y se muestra el resultado.
//Si la opción es 3 (multiplicación), se realiza la multiplicación de los números ingresados y se muestra el resultado.
//Si la opción es 4 (división), se verifica si el divisor (num2) es diferente de cero. Si es así, se realiza la división de los números ingresados y se muestra el resultado. Si el divisor es cero, se muestra un mensaje de error.
//Si la opción es 5 (módulo), se realiza el cálculo del módulo de los números ingresados y se muestra el resultado.
//En caso de seleccionar otra opción, se muestra un mensaje de error.
//Se finaliza la estructura "Segun" y se finaliza la función.
Funcion MenuOperaciones()
    Definir num1, num2, suma, resta, multiplicacion, division, modulo Como Real
    Definir opcion Como Entero
	
    Escribir "Seleccione una opción:"
    Escribir "1. Suma"
    Escribir "2. Resta"
    Escribir "3. Multiplicación"
    Escribir "4. División"
    Escribir "5. Módulo"
    Leer opcion
	
    Escribir Sin Saltar"Ingrese el primer número: "
    Leer num1
    Escribir Sin Saltar"Ingrese el segundo número: "
    Leer num2
	
    Segun opcion Hacer
        1:
            suma = num1 + num2
            Escribir Sin Saltar"La suma de los números es: ", suma
        2:
            resta = num1 - num2
            Escribir "La resta de los números es: ", resta
        3:
            multiplicacion = num1 * num2
            Escribir Sin Saltar"La multiplicación de los números es: ", multiplicacion
        4:
            Si num2 <> 0 Entonces
                division = num1 / num2
                Escribir Sin Saltar"La división de los números es: ", division
            SiNo
                Escribir Sin Saltar"No se puede dividir entre cero."
            FinSi
        5:
            modulo = num1 % num2
            Escribir Sin Saltar"El módulo de los números es: ", modulo
        De Otro Modo:
            Escribir Sin Saltar"Opción inválida."
			
    FinSegun
FinFuncion

//EJERCICIO 3
//Se definen las variables a, b y c como enteros para almacenar los coeficientes de la ecuación cuadrática, y las variables delta, x1 y x2 como reales para almacenar el valor del discriminante y las soluciones de la ecuación.
//Se muestra un mensaje solicitando al usuario ingresar el valor de a (coeficiente cuadrático) y se almacena en la variable a.
//Se muestra un mensaje solicitando al usuario ingresar el valor de b (coeficiente lineal) y se almacena en la variable b.
//Se muestra un mensaje solicitando al usuario ingresar el valor de c (término independiente) y se almacena en la variable c.
//Se calcula el valor del discriminante utilizando la fórmula delta = b*b - 4*a*c.
//Se realiza una comprobación utilizando la estructura "Si delta < 0 Entonces" para verificar si la ecuación cuadrática no tiene solución real. En ese caso, se muestra un mensaje indicando que la ecuación no tiene solución real.
//Si el discriminante es mayor o igual a cero, se ejecuta el bloque de código dentro del "SiNo":
//Se calcula el valor de la primera solución x1 utilizando la fórmula x1 = (-b + RAIZ(delta)) / (2*a).
//Se calcula el valor de la segunda solución x2 utilizando la fórmula x2 = (-b - RAIZ(delta)) / (2*a).
//Se realiza una comprobación adicional utilizando la estructura "Si delta = 0 Entonces" para verificar si la ecuación cuadrática tiene una solución doble. En ese caso, se muestra un mensaje indicando la solución doble x1.
//Si no se cumple la condición anterior, se muestra un mensaje indicando las dos soluciones x1 y x2 de la ecuación.
//Se finaliza la estructura "Si" y se finaliza la función.
Funcion Aplicacion_resolvente()
	Definir a,b,c Como Entero
	Definir delta Como entero
	Definir x1,x2 Como Real
	
	Escribir "Ingrese el valor de a:"
	Leer a
	Escribir "Ingrese el valor de b:"
	Leer b
	Escribir "Ingrese el valor de c:"
	Leer c
	delta <- b*b - 4*a*c
	Si delta < 0 Entonces
		Escribir "La ecuación no tiene solución real"
	SiNo
		x1 = (-b + RAIZ (delta)) / (2*a)
		x2 = (-b - RAIZ (delta)) / (2*a)
		Si delta = 0 Entonces
			Escribir "La ecuación tiene una solución doble: ", x1
		SiNo
			Escribir "La ecuación tiene dos soluciones: ", x1, " y ", x2
		Fin Si
	Fin Si
FinFuncion

//EJERCICIO 4
//Se define la variable hipotenusa como real para almacenar el valor de la hipotenusa del triángulo, y la variable opcion como entero para almacenar la opción seleccionada por el usuario.
//Se muestra un mensaje solicitando al usuario que seleccione una opción. A continuación, se muestra el menú de opciones con las descripciones correspondientes.
//Se solicita al usuario ingresar una opción y se almacena en la variable opcion.
//Se utiliza la estructura "Segun opcion Hacer" para ejecutar el código correspondiente según la opción seleccionada.
//Si la opción es igual a 1, se ejecuta el bloque de código dentro del "Si opcion = 1 Entonces":
//Se muestra un mensaje solicitando al usuario ingresar la longitud del lado A del triángulo en centímetros y se almacena en la variable ladoA.
//Se muestra un mensaje solicitando al usuario ingresar la longitud del lado B del triángulo en centímetros y se almacena en la variable ladoB.
//Se calcula la hipotenusa sumando las longitudes de los dos lados utilizando la fórmula de Pitágoras.
//La hipotenusa calculada se asigna a la variable hipotenusa.
//Se muestra un mensaje que indica el resultado de la hipotenusa, independientemente de la opción seleccionada. Sin embargo, es importante tener en cuenta que si la opción seleccionada no es 1, el valor de hipotenusa no se calculará correctamente y puede ser un valor no válido.
//Si la opción seleccionada es igual a 2, se muestra un mensaje indicando que se está saliendo del programa.
//Se finaliza la estructura "Segun" y se finaliza la función.
Funcion CalcularHipotenusa()
	Definir hipotenusa Como Real
	Definir opcion Como Entero
	
    Escribir "seleccione una opcion"
	Escribir "1. Calcular hipotenusa"
	Escribir "2. Salir"
	Escribir "Ingrese una opción: "
	Leer opcion
    Segun opcion Hacer
		1:
			Si opcion = 1 Entonces
				Escribir "Ingrese la longitud del lado A del triángulo en cm: "
				Leer ladoA
				
				Escribir "Ingrese la longitud del lado B del triángulo en cm: "
				Leer ladoB
				
				hipotenusa <- ladoA + ladoB
			FinSi
			Escribir "resultado de: ", hipotenusa
		2:	
			Escribir "Saliendo del programa..."
	FinSegun
	
    
FinFuncion

//EJERCICIO 5
//Se define la variable num como entero para almacenar el número ingresado por el usuario.
//Se muestra un mensaje solicitando al usuario que ingrese un número.
//El número ingresado por el usuario se lee y se almacena en la variable num.
//Se utiliza la estructura "Si num % 2 = 0 Entonces" para verificar si el número es divisible por 2 (es decir, si es par) o no.
//Si la condición es verdadera, es decir, si el número es divisible por 2 y no tiene residuo, se ejecuta el bloque de código dentro del "Si num % 2 = 0 Entonces":
//Se muestra un mensaje indicando que el número es par.
//Si la condición es falsa, es decir, si el número no es divisible por 2 y tiene residuo, se ejecuta el bloque de código dentro del "SiNo":
//Se muestra un mensaje indicando que el número es impar.
//Se finaliza la estructura "Si" y se finaliza la función.
Funcion Imprimir_par_impar()
	Definir num Como Entero
    Escribir "Ingrese un número:"
    Leer num
    Si num % 2 = 0 Entonces
        Escribir "El número es par"
    SiNo
        Escribir "El número es impar"
    FinSi
FinFuncion

//EJERCICIO 6
//Se definen las variables numeroBinario, digito1, digito2, digito3, digito4 y numeroDecimal como enteros. Estas variables se utilizarán para almacenar los valores necesarios durante la conversión.
//Se muestra un mensaje solicitando al usuario que ingrese un número binario de 4 dígitos.
//El número binario ingresado por el usuario se lee y se almacena en la variable numeroBinario.
//Se realiza la conversión de cada dígito del número binario al número decimal correspondiente.
//Primero se obtiene el valor del dígito más a la derecha (digito4) utilizando el operador de módulo % para obtener el residuo de dividir numeroBinario entre 10. Luego se actualiza numeroBinario dividiéndolo entre 10 utilizando la función trunc() para obtener el resultado entero.
//El proceso se repite para los dígitos restantes (digito3, digito2 y digito1), obteniendo su valor y actualizando numeroBinario en cada iteración.
//Se realiza el cálculo del número decimal utilizando la fórmula: numeroDecimal = digito1 * 2^3 + digito2 * 2^2 + digito3 * 2^1 + digito4 * 2^0. Los exponentes de 2 corresponden a las posiciones de los dígitos en el número binario, donde el dígito más a la izquierda tiene un exponente mayor.
//Se muestra en pantalla el resultado de la conversión, es decir, el número decimal equivalente al número binario ingresado.
//Se finaliza la función.
Funcion ConvertirBinarioADecimal()
    Definir numeroBinario, digito1, digito2, digito3, digito4 Como Entero
    Definir numeroDecimal Como Entero
	
    Escribir "Ingrese un número binario de 4 dígitos: "
    Leer numeroBinario
	
    digito4 <- numeroBinario % 10
    numeroBinario <- trunc(numeroBinario / 10)
	
    digito3 <- numeroBinario % 10
    numeroBinario <- trunc(numeroBinario / 10)
	
    digito2 <- numeroBinario % 10
    numeroBinario <- trunc(numeroBinario / 10)
	
    digito1 <- numeroBinario % 10
	
    numeroDecimal <- digito1 * 2^3 + digito2 * 2^2 + digito3 * 2^1 + digito4 * 2^0
	
    Escribir "El número decimal correspondiente es: ", numeroDecimal
FinFuncion

//EJERCICIO 7
//Se muestra un menú con dos opciones: imprimir los dígitos de un número de cuatro dígitos o salir del programa.
//Se solicita al usuario que ingrese una opción.
//Se utiliza la estructura "Segun opcion" para evaluar la opción ingresada por el usuario.
//Si la opción es igual a 1, se procede a solicitar al usuario que ingrese un número de cuatro dígitos.
//Se verifica si el número ingresado se encuentra en el rango de 1000 a 9999 (ambos inclusive) utilizando las condiciones "numero >= 1000" y "numero <= 9999". Si el número cumple esta condición, se continúa con el proceso de descomposición en dígitos.
//Se calcula el dígito de las unidades de mil dividiendo el número por 1000 y se almacena en la variable "unidadesMil".
//Se calcula el dígito de las centenas tomando el residuo de la división entre 1000 y luego dividiendo ese resultado por 100. El resultado se almacena en la variable "centenas".
//Se calcula el dígito de las decenas tomando el residuo de la división entre 100 y luego dividiendo ese resultado por 10. El resultado se almacena en la variable "decenas".
//Se calcula el dígito de las unidades tomando el residuo de la división entre 10 y se almacena en la variable "unidades".
//Se imprime cada uno de los dígitos obtenidos en pasos anteriores utilizando la función "Escribir". Por ejemplo, "Escribir 'Unidades de mil: ', unidadesMil".
//Si la opción ingresada por el usuario es igual a 2, se muestra el mensaje "Saliendo del programa..." y se finaliza la función.
//Se finaliza la estructura "Segun".
//Se finaliza la función "ImprimirDigitos".
Funcion ImprimirDigitos()
	Escribir "1. Imprimir los dígitos de un número de cuatro dígitos"
	Escribir "2. Salir"
	Escribir "Ingrese una opción: "
	Leer opcion
    Segun opcion Hacer
		1:    
			Si opcion = 1 Entonces
				Escribir "Ingrese un número de cuatro dígitos: "
				Leer numero
				
				Si numero >= 1000 Y numero <= 9999 Entonces
					unidadesMil <- numero / 1000
					centenas <- (numero MOD 1000) / 100
					decenas <- (numero MOD 100) /10
					unidades <- numero MOD 10
					
					
					Escribir "Unidades de mil: ", unidadesMil
					Escribir "Centenas: ", centenas
					Escribir "Decenas: ", decenas
					Escribir "Unidades: ", unidades
				Sino
					Escribir "El número debe tener exactamente cuatro dígitos."
				FinSi
				
				Si opcion = 2 Entonces
					Escribir "Saliendo del programa..."
				FinSi
				
			FinSi
			
	FinSegun
FinFuncion

//EJERCICIO 8
//Se define la variable "caractere" de tipo caracter para almacenar el carácter ingresado por el usuario.
//Se muestra el mensaje "Ingrese un carácter:" para solicitar al usuario que ingrese un carácter.
//Se lee el carácter ingresado y se almacena en la variable "caractere".
//Se utiliza la estructura "Si" para evaluar las condiciones del carácter ingresado.
//Primero se verifica si el carácter está en el rango de "0" a "9" utilizando las condiciones "caractere >= '0'" y "caractere <= '9'". Si el carácter cumple esta condición, se imprime el mensaje "El carácter es un dígito".
//Si el carácter no cumple la primera condición, se continúa con las siguientes evaluaciones.
//Se verifica si el carácter está en el rango de "a" a "z" (minúsculas) o en el rango de "A" a "Z" (mayúsculas). Esto se realiza utilizando las condiciones "caractere >= 'a'" y "caractere <= 'z'" o "caractere >= 'A'" y "caractere <= 'Z'". Si el carácter cumple alguna de estas condiciones, se imprime el mensaje "El carácter es una consonante".
//Si el carácter no cumple ninguna de las condiciones anteriores, se asume que es un carácter especial y se imprime el mensaje "El carácter es un carácter especial".
//Se finaliza la estructura "Si".
//Se finaliza la función "Indicar_digito_consonante_caracterespecial".
Funcion Indicar_digito_consonante_caracterespecial()
	Definir caractere Como Caracter
    Escribir "Ingrese un carácter:"
    Leer caractere
    Si caractere >= "0" Y caractere <= "9" Entonces
        Escribir "El carácter es un dígito"
    Sino
		si caractere >= "a" Y caractere<= "z" O caractere >= "A" Y caractere <= "Z" Entonces
			Escribir "El carácter es una consonante"
		SiNo
			Escribir "El carácter es un carácter especial"
		FinSi
	FinSi
FinFuncion

//EJERCICIO 9
//Se definen las variables "caracter1" y "caracter2" de tipo caracter para almacenar los caracteres ingresados por el usuario.
//Se muestra el mensaje "Ingrese el primer carácter:" para solicitar al usuario que ingrese el primer carácter.
//Se lee el primer carácter ingresado por el usuario y se almacena en la variable "caracter1".
//Se muestra el mensaje "Ingrese el segundo carácter:" para solicitar al usuario que ingrese el segundo carácter.
//Se lee el segundo carácter ingresado por el usuario y se almacena en la variable "caracter2".
//Se utiliza la estructura "Si" para realizar las comparaciones entre los caracteres ingresados.
//Primero se verifica si el "caracter1" es igual a "caracter2" utilizando la condición "caracter1 = caracter2". Si los caracteres son iguales, se imprime el mensaje "El primer carácter es igual al segundo".
//Si los caracteres no son iguales, se ejecuta la estructura "SiNo" para realizar la siguiente comparación.
//Se verifica si el "caracter1" es mayor que el "caracter2" utilizando la condición "caracter1 > caracter2". Si esta condición se cumple, se imprime el mensaje "El primer carácter es mayor que el segundo".
//Si la condición anterior no se cumple, se asume que el "caracter1" es menor que el "caracter2" y se imprime el mensaje "El primer carácter es menor que el segundo".
//Se finaliza la estructura "SiNo".
//Se finaliza la estructura "Si".
//Se finaliza la función "Indicarcaracterigual_mayor_menor".
Funcion Indicarcaracterigual_mayor_menor()
	Definir caracter1,caracter2 Como Caracter
    Escribir "Ingrese el primer carácter:"
    Leer caracter1
    Escribir "Ingrese el segundo carácter:"
    Leer caracter2
    Si caracter1 = caracter2 Entonces
        Escribir "El primer carácter es igual al segundo"
    SiNo 
		Si caracter1 > caracter2 Entonces
			Escribir "El primer carácter es mayor que el segundo"
		SiNo
			Escribir "El primer carácter es menor que el segundo"
		FinSi
	FinSi
	
FinFuncion

//EJERCICIO 10
//Se define la variable "frase" de tipo caracter para almacenar la frase ingresada por el usuario.
//Se muestra el mensaje "Ingrese una frase:" para solicitar al usuario que ingrese la frase.
//Se lee la frase ingresada por el usuario y se almacena en la variable "frase".
//Se muestran las opciones disponibles al usuario mediante los mensajes:
//"1. Presentar frase en mayúscula"
//"2. Presentar frase en minúscula"
//"3. Salir"
//"Ingrese una opción:"
//Se lee la opción seleccionada por el usuario y se almacena en la variable "opcion".
//Se utiliza la estructura "Segun opcion Hacer" para realizar diferentes acciones según la opción seleccionada.
//Dentro de la estructura "Segun opcion Hacer", se evalúa cada opción seleccionada.
//Si la opción es 1, se ejecuta la acción correspondiente:
//Se verifica si la opción es igual a 1 con la condición "opcion = 1".
//Si la condición se cumple, se muestra la frase en mayúscula utilizando la función "Mayusculas(frase)" y se imprime el resultado con el mensaje "La frase en mayúscula es: ".
//Si la opción es 2, se ejecuta la acción correspondiente:
//Se verifica si la opción es igual a 2 con la condición "opcion = 2".
//Si la condición se cumple, se muestra la frase en minúscula utilizando la función "Minusculas(frase)" y se imprime el resultado con el mensaje "La frase en minúscula es: ".
//Si la opción es 3, se muestra el mensaje "Saliendo del programa..." para indicar al usuario que el programa finalizará.
//Se finaliza la estructura "Segun opcion Hacer".
//Se finaliza la función "PresentarFrase".
Funcion PresentarFrase()
	Definir frase Como Caracter
	
	Escribir "Ingrese una frase: "
	Leer frase
	Escribir "1. Presentar frase en mayúscula"
	Escribir "2. Presentar frase en minúscula"
	Escribir "3. Salir"
	Escribir "Ingrese una opción: "
	Leer opcion
    Segun opcion Hacer
		1:
			Si opcion = 1 Entonces
				Escribir "La frase en mayúscula es: ", Mayusculas(frase)
			FinSi
		2:		
			Si opcion = 2 Entonces
				Escribir "La frase en minúscula es: ", Minusculas(frase)
			FinSi
		3:	
			Escribir "Saliendo del programa..."
			
	FinSegun
	
FinFuncion



//ejercicios condicionales
//EJERCICIO 1
//Todos los años que se dividen exactamente entre 400, o que son divisibles exactamente
//entre 4 y no son divisibles exactamente entre 100 son años bisiestos.Usando estas 
//premisas crea un algoritmo que lea una fecha como un en tres variables: aaaa,mes, dia, y 
//luego indique si el año de la fecha es un año bisiesto o no.
Funcion AñoBisiesto()
	//Entrada
	//Se define variables
    Definir año, mes, día como enteros
	//Ingresar el año 
    Escribir "Ingrese el año:"
    Leer año
	//Ingresar el mes
    Escribir "Ingrese el mes:"
    Leer mes
	//Ingresar el dia
    Escribir "Ingrese el día:"
    Leer día
	//Verificar si el año cumple las condiciones para que pueda estimar como un año bisiesto
	//Usando una condicion de Si y SiNo
    Si ((año % 400 = 0) O ((año % 4 = 0) Y (año % 100 <> 0))) Entonces
        Escribir año, " es un año bisiesto."
    Sino
        Escribir año, " no es un año bisiesto."
    Fin Si
	//Salida
	//Muestre el resultado final en la pantalla
FinFuncion

//EJERCICIO 2
//defini a,b,n,c,d como enteros
//pedi ingresar 5 digitos
// utilice trunc y mod para las divisiones
// a tenia que ser igual a b y c igual a d para que sea escapicua
Funcion numeroCapicua()
	definir a,b,n,c,d como entero
	
	Escribir "Digite 5 numeros"
	leer n
	
	a = trunc(n/10000) mod 10
	c = trunc(n/1000) mod 10
	b = trunc(n mod 10) mod 10
	d = trunc(n/10) mod 10
	si a==b y c==d Entonces
		Escribir "El numero ",n," si es un numero capicua"
	SiNo
		Escribir "El numero ",n," no es un numero capicua"
	FinSi
FinFuncion

//EJERCICIO 3
//primero defini la variables, se (segundos) como entero, minutos, horas y dias como reales
//despues pedi al usuario que digite los segundos
//la conversion para transformar de segundos a minutos, horas y dias es dividiendo
funcion minutoshorasdías()
	definir se Como Entero
	definir minutos,horas,dias Como Real
	
	
	Escribir "Digite los segundos"
	leer se
	
	minutos <- se/60
	horas <- se/3600
	dias <- se/86400
	
	
	
	
	
	Escribir "La cantidad en minutos es ",minutos
	Escribir "La cantidad en horas es ",horas
	Escribir "La cantidad en dias es ",dias
	
finfuncion

//EJERCICIO 4
//Dados tres números enteros positivos A, B y C, ¿Determine si son iguales? ¿cuál de ellos es
//elmayor? y ¿cuál es el segundo mayor?
Funcion Enterospositivos()
	//Entrada 
	//Se define las variables
	Definir A,B,C,mayor,segundomayor Como Entero
	Escribir "Ingrese el nùmero A: "
	Leer A
	Escribir "Ingrese el nùmero B: "
	Leer B
	Escribir "Ingrese el nùmero C: "
	Leer C
	// Se usa una condiciòn de Si y SiNo
	// Proceso
	Si A=B y A=C Entonces
		Escribir "Los tres nùmeros son iguales: "
	SiNo
		Si A>B y A>C Entonces
			mayor <- A
			Si B >C Entonces
				segundoMayor <- B
			SiNo
				segundoMayor <- C
			FinSi
		SiNo
			Si B>A y B>C Entonces
				mayor <- B
				Si A>C Entonces
					segundoMayor <-A
				SiNo
					segundoMayor <-C
				FinSi
			SiNo
				mayor <- C 
				Si A>B Entonces
					segundoMayor <- A
				SiNo
					segundoMayor <- B
				FinSi
			FinSi
		FinSi
		Escribir "El nùmero mayor es: ", mayor
		Escribir "El segundo nùmero mayor es: ", segundoMayor
	FinSi
	//Salida
	//Finalmente, se muestra al usuario el nùmero mayor y el segundoMayor.
FinFuncion

//defini minutos y horas como entero 
//r1 (resultado1), r2 (resultado2), resultado como reales
//multiplique el 1.5 por horas
//al minuto le puse que si es menor a 30 que cobre $0.5
//al de hora le puse que lo multiplique con 1.5
funcion calcularmonto()
	definir horas,minutos Como Entero
	definir r1,r2,resultado Como Real
	
	Escribir "Digite las horas"
	leer horas
	
	escribir "Digite los minutos"
	leer minutos
	
	si horas>=1 Entonces
		r1 <- horas * 1.5 
	FinSi
	
	si minutos<30 Entonces
		r2 <- 0.50
	SiNo
		si minutos>=30 Entonces
			r2 <- 1.5
			
		FinSi
		
	FinSi
	
	si minutos=0 Entonces
		resultado <- r1
	SiNo
		si minutos>1 Entonces
			resultado <- r1 + r2
		FinSi
	FinSi
	
	
	Escribir "El valor a pagar es de $",resultado
	
FinFuncion

//Ejercicio 6.
//El IMC resulta de la división de la masa del individuo (en kilogramos) entre el cuadrado de
//la estatura (en metros). El índice de masa corporal es un indicadordel peso de una
//persona en relación con su altura.
//Clasificación del IMC de acuerdo con la OMS de la ONU:
//a. Menor a 16: Criterio de ingreso.
//b. 16 a 16.9: infra peso.
//c.17 a 18.4: bajo peso.
//d. 18.5 a 24.9: peso normal.
//e. 25 a 29.9: sobrepeso.
//f. 30 a 34.9: obesidad pre-mórbida.
//g. 40 a 45: obesidad mórbida.
//h. Mayor a 45: obesidad híper-mórbida.
//Dado el peso de una persona en libras (1 libra = 0,453592 Kg) y su estatura en
//centímetros, calcule su IMC e indique como salida el peso en kilogramos, el valorde IMC
//de la persona y la categoría en la cual fue clasificado.
Funcion calcularIMC()
	Definir masa_libras, masa_kilos Como real   //DEFINO LAS VARIABLES COMO REALES
	Definir estatura_centimentro, estatura_metro Como real
	Definir IMC Como real
	
	Escribir "INGRESE EL PESO DEL INDIVIDUO (LIBRA)" //IMPRIMO MENSAJE DE LO QUE PIDE (PIDE LA MASA EN LIBRA)
	leer masa_libra
	
	Escribir "INGRESE LA ESTATURA DEL INDIVIDUO (CENTIMETROS)" //IMPRIMO MENSAJE DE LO QUE PIDE (PIDE ALTURA EN CM)
	leer estatura_centimentro
	
	masa_kilos<- masa_libra * 0.45359237          //TRANSFORMO DE LIBRA A KILOS
	estatura_metro<- estatura_centimentro / 100   //TRANSFORMO DE CM A M
	
	IMC<- masa_kilos/estatura_metro^2   	//Y APLICO LA FORMULA DE IMC a división de la masa del individuo 
	//(en kilogramos) entre el cuadrado de
	//la estatura (en metros)
	
	si IMC >= 45
		Escribir "obesidad híper-mórbida."         
	SiNo
		si (IMC >= 40 y IMC <= 45) //PONGO RANGOS DEL IMC AL MOMENTO DEL RESULTADO DE LA FORMULA
			Escribir "obesidad mórbida" //SU CATEGORIA
			Escribir "su IMC es: " IMC //RESULTADO DEL IMC (DE LA FORMULA)
			Escribir "SU PESO EN KILOGRAMOS ES: ", masa_kilos //PESO EN KILOS 
		SiNo
			si (IMC >= 30 y IMC <= 34.9) //PONGO RANGOS DEL IMC AL MOMENTO DEL RESULTADO DE LA FORMULA
				Escribir "obesidad pre-mórbida" //SU CATEGORIA
				Escribir "su IMC es: " IMC //RESULTADO DEL IMC (DE LA FORMULA)
				Escribir "SU PESO EN KILOGRAMOS ES: ", masa_kilos //PESO EN KILOS 
				
			SiNo si (IMC >= 25 y IMC <= 29.9)  //PONGO RANGOS DEL IMC AL MOMENTO DEL RESULTADO DE LA FORMULA
					Escribir"sobrepreso" //SU CATEGORIA
					Escribir "su IMC es: " IMC //RESULTADO DEL IMC (DE LA FORMULA)
					Escribir "SU PESO EN KILOGRAMOS ES: ", masa_kilos //PESO EN KILOS 
					
				SiNo
					si (IMC >= 18.5 y IMC <= 24.9)  //PONGO RANGOS DEL IMC AL MOMENTO DEL RESULTADO DE LA FORMULA
						Escribir "peso normal" //SU CATEGORIA
						Escribir "su IMC es: " IMC //RESULTADO DEL IMC (DE LA FORMULA)
						Escribir "SU PESO EN KILOGRAMOS ES: ", masa_kilos //PESO EN KILOS 
						
					SiNo
						si (IMC >= 17 y IMC <= 18.4)  //PONGO RANGOS DEL IMC AL MOMENTO DEL RESULTADO DE LA FORMULA
							Escribir "bajo peso" //SU CATEGORIA
							Escribir "su IMC es: " IMC //RESULTADO DEL IMC (DE LA FORMULA)
							Escribir "SU PESO EN KILOGRAMOS ES: ", masa_kilos //PESO EN KILOS 
							
						sino 
							si (IMC >= 16 y IMC <= 16.9)  //PONGO RANGOS DEL IMC AL MOMENTO DEL RESULTADO DE LA FORMULA
								Escribir "infra peso" //SU CATEGORIA
								Escribir "su IMC es: " IMC //RESULTADO DEL IMC (DE LA FORMULA)
								Escribir "SU PESO EN KILOGRAMOS ES: ", masa_kilos //PESO EN KILOS 
								
							sino
								si (IMC < 16) //PONGO RANGOS DEL IMC AL MOMENTO DEL RESULTADO DE LA FORMULA
									Escribir "CRITERIO DE INGRESO" //SU CATEGORIA
									Escribir "su IMC es: " IMC //RESULTADO DEL IMC (DE LA FORMULA)
									Escribir "SU PESO EN KILOGRAMOS ES: ", masa_kilos //PESO EN KILOS 
								FinSi
								
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

//Ejercicio 7.
//Escriba un algoritmo que reciba una fecha (día y mes) correspondiente al año2014 e
//imprima por pantalla el número de días que han pasado desde el 1 deEnero de 2014
//hasta la fecha dada.
Funcion DIASPASADOS()
    Definir dia, mes, totalDias Como Entero //DEFINO LAS VARIABLES COMO ENTERO
	
    Escribir "Ingrese el día:" //MUESTRO MENSAJE PARA QUE INGRESE EL DIA
    Leer dia
	
    Escribir "Ingrese el mes:" //MUESTRO MENSAJE PARA INGRESAR EL MES 
    Leer mes
	
    totalDias = 0  //DOY VALOR DE 0 A LA VARIABLE DIAS
	
    totalDias = totalDias + (mes - 1) * 31 //Se calcula el número de días correspondientes a los meses 
	//completos transcurridos hasta el mes ingresado (mes - 1) y se multiplica por 31. 
	//Esto se debe a que, en este caso, se asume que todos los meses tienen 31 días.
	
    Si mes > 2 entonces
        totalDias = totalDias - ((mes - 1)) // Si el mes ingresado es mayor que 2 se realiza 
		//un ajuste en el valor de "totalDias" restando ((mes - 1) / 2). 
		//Esto se hace para considerar los meses con menos de 31 días, como febrero.
    FinSi
	
    totalDias = totalDias + dia - 1 //Se suma el valor del día ingresado menos 1 a "totalDias". La resta de 1 se realiza porque se asume que el día 
	//ingresado se cuenta como parte de los días transcurridos.
	
    Escribir "El número de días pasados desde el 1 de enero de 2014 hasta la fecha ingresada es:", totalDias //imprimo resultado
FinFuncion

//Ejercicio 8.
//Solicitar un número entre el 1 y el 12 e imprimir el mes correspondiente a dicho número
Funcion IMPRIMIRMES()
	Definir mes Como Entero //DEFINO MES COMO ENTERO 
	
	Escribir "INGRES EL MES"	//MUESTRO MENSAJE DE LO QUE SE PIDE
	leer mes  //LEO LA VARIABLE
	
	
	
	Segun mes Hacer  //SEGUN EL NUMERO SE MOSTRARA EL NUMERO EL MENSAJE CORRESPONDIDO A CADA MES
		
		1:	Escribir "ENERO"         //LOS MESES TIENEN VALOR DE 1 A 12 (EN ORDEN)
			
		2:	Escribir "FEBRERO"
			
		3:	Escribir "MARZO"	
			
		4:	Escribir "ABRIL"	
			
		5:	Escribir "MAYO"	
			
		6:	Escribir "JUNIO"	
			
		7:	Escribir "JULIO"	
			
		8:	Escribir "AGOSTO"	
			
		9:	Escribir "SEPTIEMBRE"	
			
		10:	Escribir "OCTUBRE"
			
		11:	Escribir "NOVIEMBRE"	
			
		12:	Escribir "DICIEMBRE"	
			
		De Otro Modo:
			Escribir "INGRESE UNA FECHA CORRECTA PORFAVOR" //SI SE INGRESA UN NUMERO NO CORRESPONDIENTE LE DIRA UN MENSAJE QUE ESTA INCORRECTO
			
	FinSegun
	
	
FinFuncion


//Ejercicio9
//En un almacén se hace un 20% de descuento a los clientes cuya compra supere los $1000, 
//se desea que realice un algoritmo el cual tome por entrada el monto apagar por el cliente 
//y arroje como salida el monto aplicando el descuento de ser necesario.
Funcion AplicarDescuento()
	//Entrada
	//Definir las variables como Real
    Definir montoAPagar, montoConDescuento Como Real
    Escribir "Ingrese el monto a pagar por el cliente:"//Muestro mensaje para que ingrese el montoa pagar.
    Leer montoAPagar
    //Proceso 
	//Usamos la condiciòn de Si y SiNo
    Si montoAPagar > 1000 Entonces
        montoConDescuento = montoAPagar - (montoAPagar * 0.2)
        Escribir "El monto a pagar con descuento es:", montoConDescuento
    SiNo
        Escribir "El monto a pagar es:", montoAPagar
    FinSi
    //Salida 
	//Mostrar en la pantalla el monto a pagar con descuento si corresponde.
	//O sino solo el monto original si no se cumple la condiciòn.
FinFuncion

//Ejercicio 10
//Dado dos números y un operador matemático(+,-,*,/,mod,div) realizar la suma, resta,
//multiplicación, división, resto y división entera(div) de los dos números según el operador
//ingresado.
Funcion OPERACIONESMAT()
	Definir num, num2 como entero
	Definir operador_1 Como real     //DEFINO LAS VARIABLES
	Definir operador_0 Como Caracter
	
	Escribir "INGRESE PRIMER NUMERO"  //INGRESO EL PRIMER NUMERO, MUESTRO MENSAJE QUE PIDA INGRESAR
	leer num                   
	
	Escribir "INGRESE SEGUNDO NUMERO"   //INGRESO EL SEGUNDO NUMERO, MUSTRO MENSAJE QUE PIDA INGRESAR
	leer num2
	
	Escribir "INGRESE UN OPERADOR MATEMATICO PARA RESOLVER LOS NUMEROS (+. - * , MOD, DIV)" //MUESTRO MENSAJE PARA DEDCIDIR QUE OPERADOR SE USARA
	leer operador_0  
	
	
	si operador_0="+"    //SI EL OPERADOR ES + LOS NUMEROS SE SUMARAN
		
		operador_1<- num + num2	
		
	sino
		si operador_0="-" //SI EL OPERADOR ES - LOS NUMEROS SE RESTARAN
			operador_1<- num - num2		
			
		SiNo
			Si operador_0="*"  //SI EL OPERADOR ES * LOS NUMEROS SE MULTIPLICARAN
				operador_1<- num * num2	
				
			sino
				si operador_0="MOD" o operador_0="mod" //SI EL OPERADOR ES MOD LOS NUMEROS SE SACARA EL RESIDUO DE LA DIVISION
					operador_1<- num MOD num2
					
				SiNo
					si operador_0="div" o operador_0="DIV" //SI EL OPERADOR ES DIV  LOS NUMEROS SE DIVIDIRAN
						operador_1<- (num/ num2)
					FinSi
					
				FinSi
			FinSi
		FinSi
	FinSi
	
	Escribir "LA RESPUESTA ES :", operador_1  //MENSAJE FINAL DE EL VALOR DEL OPERADOR QUE SE PIDIO DE LOS NUMEROS
	
	
FinFuncion

//EJERCICIOS ITERATIVOS

//EJECICIO 1
//Muestra un mensaje pidiendo al usuario que ingrese un número entero.
//Lee el número ingresado por el usuario y lo almacena en la variable numero.
//Inicializa un contador en cero.
//Entra en un bucle mientras el valor de numerosea mayor que cero.
//En cada iteración, divida numeroentre 10 usando la función truncpara eliminar el dígito más a la derecha y actualizar el valor de numero.
//Incrementa el contador en uno en cada iteración.
//Cuando numerosea igual a cero, sale el bucle.
//Muestra en pantalla el mensaje "La longitud del número es:" seguido del valor del contador, que representa la longitud del número ingresado.
Función longitud_numero_entero()
Escribir 'Ingrese un número entero:'
Leer numero
contador <- 0
Mientras numero>0 Hacer
	numero <- trunc(numero/10)
	contador <- contador+1
FinMientras
Escribir 'La longitud del número es:', contador
FinFunción

//EJERCICIO 2 
//Se definen las variables numero, numeroInvertido, digito, numeroOriginal y resto como enteros. Estas variables se utilizarán para almacenar los diferentes valores durante el proceso de verificación.
//Se muestra en pantalla el mensaje "Ingrese un número:" para solicitar al usuario que ingrese un número.
//Se lee el número ingresado por el usuario y se almacena en la variable numeroOriginal. Esto es importante para comparar posteriormente con el número invertido.
//Se inicializa la variable numeroInvertido en 0, ya que en esta variable se irá construyendo el número invertido.
//Se utiliza un bucle Mientras que se repetirá mientras numero sea mayor que 0. Este bucle se encarga de invertir el número ingresado.
//Dentro del bucle:
//a. Se calcula el resto de la división de numero entre 10 utilizando el operador MOD. Esto permite obtener el último dígito del número.
//b. Se actualiza numeroInvertido multiplicándolo por 10 y sumándole el valor del resto obtenido en el paso anterior. Esto construye el número invertido digitos a dígito.
//c. Se actualiza numero dividiéndolo por 10 utilizando la función trunc(). Esto elimina el último dígito del número original.
//Después de salir del bucle, se compara si numeroOriginal es igual a numeroInvertido. Si son iguales, se imprime en pantalla el mensaje "Sí es capicúa". Si no son iguales, se imprime "No es capicúa".
Función capicua()
Definir numero, numeroInvertido, digito, numeroOriginal, resto Como Entero
Escribir 'Ingrese un número: '
Leer numero
numeroOriginal <- numero
numeroInvertido <- 0
Mientras numero>0 Hacer
	resto <- numero MOD 10
	numeroInvertido <- numeroInvertido*10+resto
	numero <- trunc(numero/10)
FinMientras
Si numeroOriginal=numeroInvertido Entonces
	Escribir 'Sí es capicúa.'
SiNo
	Escribir 'No es capicúa.'
FinSi
FinFunción

//EJERCICIO 3
//Se definen las variables numero y divisor como enteros. Estas variables se utilizarán para almacenar el número ingresado por el usuario y los divisores del número respectivamente.
//Se muestra en pantalla el mensaje "Ingrese un número: " para solicitar al usuario que ingrese un número.
//Se lee el número ingresado por el usuario y se almacena en la variable numero.
//Se muestra en pantalla el mensaje "Los divisores de " seguido del número ingresado.
//Se utiliza un bucle Para que se repetirá desde divisor igual a 1 hasta numero. Este bucle se encargará de encontrar los divisores del número.
//Dentro del bucle:
//a. Se verifica si el número es divisible por divisor utilizando el operador MOD. Si el resultado de la división es 0, significa que divisor es un divisor del número.
//b. Si divisor es un divisor del número, se imprime en pantalla el valor de divisor.
//Después de salir del bucle, se finaliza la función.
Función divisoresnumero()
Definir numero, divisor Como Entero
Escribir 'Ingrese un número: '
Leer numero
Escribir 'Los divisores de ', numero, ' son:'
Para divisor<-1 Hasta numero Hacer
	Si numero MOD divisor=0 Entonces
		Escribir divisor
	FinSi
FinPara
FinFunción

//EJERCICIO 4 
//Se definen las variables numero, divisor y suma como enteros. Estas variables se utilizarán para almacenar el número ingresado por el usuario, los divisores del número y la suma de los divisores respectivamente.
//Se muestra en pantalla el mensaje "Ingrese un número: " para solicitar al usuario que ingrese un número.
//Se lee el número ingresado por el usuario y se almacena en la variable numero.
//Se inicializa la variable suma en 0, ya que se irá acumulando la suma de los divisores.
//Se utiliza un bucle Para que se repetirá desde divisor igual a 1 hasta numero. Este bucle se encargará de encontrar los divisores del número y sumarlos.
//Dentro del bucle:
//a. Se verifica si el número es divisible por divisor utilizando el operador MOD. Si el resultado de la división es 0, significa que divisor es un divisor del número.
//b. Si divisor es un divisor del número, se suma su valor a la variable suma.
//Después de salir del bucle, se muestra en pantalla el mensaje "La suma de los divisores de ", seguido del número ingresado, y luego se muestra la variable suma que contiene la suma de los divisores.
Función sumadivisores()
Definir numero, divisor, suma Como Entero
Escribir 'Ingrese un número: '
Leer numero
suma <- 0
Para divisor<-1 Hasta numero Hacer
	Si numero MOD divisor=0 Entonces
		suma <- suma+divisor
	FinSi
FinPara
Escribir "La suma de los divisores de ", numero, " es: ", suma
FinFunción

//EJERCICIO 5
//Se definen las variables numero, divisor y cantidadDivisores como enteros. Estas variables se utilizarán para almacenar el número ingresado por el usuario, los divisores del número y la cantidad de divisores encontrados respectivamente.
//Se muestra en pantalla el mensaje "Ingrese un número: " para solicitar al usuario que ingrese un número.
//Se lee el número ingresado por el usuario y se almacena en la variable numero.
//Se inicializa la variable cantidadDivisores en 0, ya que se irá contando la cantidad de divisores.
//Se utiliza un bucle Para que se repetirá desde divisor igual a 1 hasta numero. Este bucle se encargará de encontrar los divisores del número y contarlos.
//Dentro del bucle:
//a. Se verifica si el número es divisible por divisor utilizando el operador MOD. Si el resultado de la división es 0, significa que divisor es un divisor del número.
//b. Si divisor es un divisor del número, se incrementa la variable cantidadDivisores en 1.
//Después de salir del bucle, se muestra en pantalla el mensaje "La cantidad de divisores de ", seguido del número ingresado, y luego se muestra la variable cantidadDivisores que contiene la cantidad de divisores encontrados.
Funcion  ContarDivisores()
    Definir numero, divisor, cantidadDivisores como Entero
	Escribir "Ingrese un número: "
    Leer numero
	
    cantidadDivisores <- 0
	
    Para divisor <- 1 Hasta numero Hacer
        Si numero MOD divisor = 0 Entonces
            cantidadDivisores <- cantidadDivisores + 1
        FinSi
    FinPara
	
    Escribir "La cantidad de divisores de ", numero, " es: ", cantidadDivisores
FinFuncion

//EJERCICIO 6
//Se definen las variables numero y sumaDiv como enteros. Estas variables se utilizarán para almacenar el número ingresado por el usuario y la suma de los divisores del número respectivamente.
//Se muestra en pantalla el mensaje "Ingrese un número:" para solicitar al usuario que ingrese un número.
//Se lee el número ingresado por el usuario y se almacena en la variable numero.
//Se inicializa la variable sumaDiv en 0, ya que se irá acumulando la suma de los divisores del número.
//Se utiliza un bucle Para que se repetirá desde i igual a 1 hasta numero/2. Este bucle se encargará de encontrar los divisores del número y sumarlos.
//Dentro del bucle:
//a. Se verifica si el número es divisible por i utilizando el operador MOD. Si el resultado de la división es 0, significa que i es un divisor del número.
//b. Si i es un divisor del número, se incrementa la variable sumaDiv en i, es decir, se suma el divisor al total acumulado.
//Después de salir del bucle, se realiza la comparación sumaDiv = numero. Si son iguales, significa que la suma de los divisores (excluyendo al propio número) es igual al número original, por lo tanto, el número es perfecto.
//Si la comparación es verdadera, se muestra en pantalla el mensaje "El número es perfecto."
//Si la comparación es falsa, se muestra en pantalla el mensaje "El número no es perfecto."
Funcion numeroperfecto()
	Definir numero, sumaDiv como Entero
	
    Escribir "Ingrese un número:"
    Leer numero
	
    sumaDiv<- 0
	
    Para i <- 1 Hasta numero/2 Hacer
        Si numero MOD i = 0 Entonces
            sumaDiv <- sumaDiv + i
        FinSi
    FinPara
	
    Si sumaDiv = numero Entonces
        Escribir "El número es perfecto."
    Sino
        Escribir "El número no es perfecto."
    FinSi
	
FinFuncion

//EJERCICIO 7 
//Se definen las variables numero, divisor y contadorDivisores como enteros. La variable contadorDivisores se inicializa en 0 y se utilizará para contar la cantidad de divisores del número.
//Se muestra en pantalla el mensaje "Ingrese un número:" para solicitar al usuario que ingrese un número.
//Se lee el número ingresado por el usuario y se almacena en la variable numero.
//Se inicia un bucle Para que se repetirá desde divisor igual a 1 hasta numero. Este bucle se encargará de verificar si existen divisores del número.
//Dentro del bucle:
//a. Se verifica si el número es divisible por divisor utilizando el operador MOD. Si el resultado de la división es 0, significa que divisor es un divisor del número.
//b. Si divisor es un divisor del número, se incrementa la variable contadorDivisores en 1, para contar la cantidad de divisores encontrados.
//Después de salir del bucle, se realiza la comparación contadorDivisores = 2. Si el contador de divisores es igual a 2, significa que el número es primo, ya que los números primos tienen exactamente dos divisores: 1 y el propio número.
//Si la comparación es verdadera, se muestra en pantalla el mensaje "El número es primo."
//Si la comparación es falsa, se muestra en pantalla el mensaje "El número no es primo."
Funcion numeroprimo()
	Definir numero, divisor, contadorDivisores como Entero
    contadorDivisores <- 0
	
    Escribir "Ingrese un número:"
    Leer numero
	
    Para divisor <- 1 Hasta numero Hacer
        Si numero MOD divisor = 0 Entonces
            contadorDivisores <- contadorDivisores + 1
        FinSi
    FinPara
	
    Si contadorDivisores = 2 Entonces
        Escribir "El número es primo."
    Sino
        Escribir "El número no es primo."
    FinSi
FinFuncion

//EJERCICIO 8 
//Se definen las variables N, i y fact como enteros. La variable fact se inicializa en 1 y se utilizará para almacenar el resultado del factorial.
//Se muestra en pantalla el mensaje "Introduzca un número entero:" para solicitar al usuario que ingrese un número.
//Se lee el número ingresado por el usuario y se almacena en la variable N.
//Se inicializa la variable fact en 1, ya que el factorial de cualquier número multiplicado por 1 es igual a ese número.
//Se inicia un bucle Para que se repetirá desde i igual a 1 hasta N, incrementando i en 1 en cada iteración. Este bucle se encargará de calcular el factorial del número.
//Dentro del bucle:
//a. Se multiplica el valor actual de fact por i y se almacena el resultado en fact. En cada iteración del bucle, fact se actualiza con el producto acumulativo.
//Después de salir del bucle, se muestra en pantalla el mensaje "El factorial de ", seguido del número ingresado N, seguido de " es ", seguido del valor calculado fact. Esto muestra el resultado del factorial
funcion factorial()
	Definir N, i, fact Como Entero
	
    Escribir "Introduzca un número entero:"
    Leer N
	
    fact <- 1
	
    Para i <- 1 Hasta N Con Paso 1 Hacer
        fact <- fact * i
    FinPara
	
    Escribir "El factorial de ", N, " es ", fact
FinFuncion

//EJERCICIO 9
//Se define la variable contraseña como una cadena y se inicializa con una cadena vacía.
//Se inicia un bucle Mientras que se repetirá mientras la longitud de la contraseña sea menor a 10 caracteres. Este bucle se encargará de solicitar al usuario que ingrese una contraseña y verificar su longitud.
//Dentro del bucle:
//a. Se muestra en pantalla el mensaje "Ingrese una contraseña:" para solicitar al usuario que ingrese una contraseña.
//b. Se lee la contraseña ingresada por el usuario y se almacena en la variable contraseña.
//c. Se verifica si la longitud de la contraseña es menor a 10 caracteres. Si es así, se muestra en pantalla el mensaje "La contraseña debe tener al menos 10 dígitos. Por favor, inténtelo nuevamente."
//Después de salir del bucle, se muestra en pantalla el mensaje "Contraseña válida. ¡Éxito!" Esto indica que la contraseña ingresada tiene al menos 10 caracteres.
Funcion  VerificarContraseña()
    Definir contraseña Como Cadena
    contraseña <- ""
    
    Mientras Longitud(contraseña) < 10 Hacer
        Escribir "Ingrese una contraseña: "
        Leer contraseña
        Si Longitud(contraseña) < 10 Entonces
            Escribir "La contraseña debe tener al menos 10 dígitos. Por favor, inténtelo nuevamente."
        FinSi
    FinMientras
    
    Escribir "Contraseña válida. ¡Éxito!"
FinFuncion

//EJERCICIO 10
//Se definen las variables num, mayor0 y menor0 como enteros. Estas variables se utilizarán para almacenar los valores de los números de la secuencia y los valores del número mayor y menor, respectivamente.
//Se muestra en pantalla el mensaje "Ingrese una secuencia de números terminada en cero:" para solicitar al usuario que ingrese una secuencia de números. El número cero (0) se utilizará como indicador para finalizar la secuencia.
//Se lee el primer número ingresado por el usuario y se almacena en la variable num.
//Se asigna el valor de num a las variables mayor0 y menor0 para tener un valor de referencia inicial. Esto se hace porque aún no se han procesado otros números de la secuencia, por lo que el primer número ingresado será tanto el número mayor como el número menor hasta el momento.
//Se inicia un bucle Mientras que se repetirá mientras num sea diferente de cero. Esto significa que el bucle continuará ejecutándose hasta que se ingrese el número cero para indicar el final de la secuencia.
//Dentro del bucle:
//Se verifica si num es mayor que mayor0. Si es así, se actualiza el valor de mayor0 con el valor de num. Esto se hace para encontrar el número más grande de la secuencia.
//Se verifica si num es menor que menor0. Si es así, se actualiza el valor de menor0 con el valor de num. Esto se hace para encontrar el número más pequeño de la secuencia.
//Se lee el siguiente número de la secuencia ingresado por el usuario y se almacena en la variable num. Esto permite que el bucle continúe hasta que se ingrese el número cero.
//Después de salir del bucle, se muestra en pantalla el mensaje "El número mayor es:" seguido del valor de mayor0. Esto indica cuál fue el número más grande de la secuencia ingresada.
//Luego, se muestra el mensaje "El número menor es:" seguido del valor de menor0. Esto indica cuál fue el número más pequeño de la secuencia ingresada
Funcion  SecuenciaNumeros()
    Definir num, mayor0, menor0 Como Entero
	
    Escribir "Ingrese una secuencia de números terminada en cero:"
    Leer num
	
    mayor0 <- num
    menor0 <- num
	
    Mientras num<> 0 Hacer
        Si num> mayor0 Entonces
            mayor0 <- num
        FinSi
        Si num < menor0 Entonces
            menor0 <- num
        FinSi
        Leer num
    FinMientras
	
    Escribir "El número mayor es:", mayor0
    Escribir "El número menor es:", menor0
FinFuncion

//EJERCICIO 11
//Se definen las variables edad, peso y estatura como enteros para almacenar los datos de cada persona.
//Se definen las variables edadPromedio, pesoPromedio y estaturaPromedio como reales para calcular los promedios.
//Se definen las variables contadorEdad18_25 y contadorMayores36 como enteros para contar la cantidad de personas en diferentes rangos de edad.
//Se define la variable sumaPeso18_35 como real para acumular el peso de las personas con edades entre 18 y 35 años.
//Se define la variable cantidadPersonas como entero para contar la cantidad total de personas ingresadas.
//Se inicializan todas las variables en cero.
//Se muestra en pantalla el mensaje "Ingrese la edad, peso y estatura de cada persona (terminar con cero):" para solicitar al usuario que ingrese los datos de cada persona. El ingreso se detiene cuando se ingresa una edad igual a cero.
//Se inicia un bucle Repetir hasta que se ingrese una edad igual a cero.
//Dentro del bucle:
//Se leen los valores de edad, peso y estatura.
//Se verifica si la edad es diferente de cero, lo que indica que se ha ingresado un valor válido.
//Si la edad es diferente de cero:
//Se suman las edades, los pesos y las estaturas para calcular los promedios posteriormente.
//Se verifica si la edad está entre 18 y 25 años. Si es así, se incrementa el contador contadorEdad18_25.
//Se verifica si la edad es mayor a 36 años. Si es así, se incrementa el contador contadorMayores36.
//Se verifica si la edad está entre 18 y 35 años. Si es así, se suma el peso a sumaPeso18_35.
//Se incrementa cantidadPersonas en 1 para contar la cantidad total de personas ingresadas.
//Se calculan los promedios dividiendo las sumas acumuladas (edadPromedio, pesoPromedio, estaturaPromedio) por la cantidadPersonas.
//Se muestra en pantalla el resultado de los cálculos:
//"Edad promedio de todas las personas en la muestra:" seguido de edadPromedio.
//"Peso promedio de todas las personas en la muestra:" seguido de pesoPromedio.
//"Estatura promedio de todas las personas en la muestra:" seguido de estaturaPromedio.
//"Cantidad de personas con edad entre los 18 y 25 años:" seguido de contadorEdad18_25.
//"Cantidad de personas mayores a 36 años:" seguido de contadorMayores36.
//Se verifica si contadorEdad18_25 es mayor a cero.
//Si es así, se calcula el promedio de peso para las personas con edades entre 18 y 35 años dividiendo sumaPeso18_35 por contadorEdad18_25. Luego se muestra en pantalla "Promedio de peso de las personas con edades entre 18 y 35 años:" seguido del valor calculado.
Funcion estudioPersonas()
	
    Definir edad, peso, estatura Como Entero
    Definir edadPromedio, pesoPromedio, estaturaPromedio Como Real
    Definir contadorEdad18_25, contadorMayores36 Como Entero
    Definir sumaPeso18_35 Como Real
    Definir cantidadPersonas Como Entero
	
    edadPromedio = 0
    pesoPromedio = 0
    estaturaPromedio = 0
    contadorEdad18_25 = 0
    contadorMayores36 = 0
    sumaPeso18_35 = 0
    cantidadPersonas = 0
	
    Escribir "Ingrese la edad, peso y estatura de cada persona (terminar con cero):"
	
    Repetir
        Leer edad, peso, estatura
		
        Si edad <> 0 Entonces
            edadPromedio = edadPromedio + edad
            pesoPromedio = pesoPromedio + peso
            estaturaPromedio = estaturaPromedio + estatura
			
            Si edad >= 18 Y edad <= 25 Entonces
                contadorEdad18_25 = contadorEdad18_25 + 1
            FinSi
			
            Si edad > 36 Entonces
                contadorMayores36 = contadorMayores36 + 1
            FinSi
			
            Si edad >= 18 Y edad <= 35 Entonces
                sumaPeso18_35 = sumaPeso18_35 + peso
            FinSi
			
            cantidadPersonas = cantidadPersonas + 1
        FinSi
		
    Hasta Que edad = 0
	
    edadPromedio = edadPromedio / cantidadPersonas
    pesoPromedio = pesoPromedio / cantidadPersonas
    estaturaPromedio = estaturaPromedio / cantidadPersonas
	
    Escribir "Edad promedio de todas las personas en la muestra:", edadPromedio
    Escribir "Peso promedio de todas las personas en la muestra:", pesoPromedio
    Escribir "Estatura promedio de todas las personas en la muestra:", estaturaPromedio
    Escribir "Cantidad de personas con edad entre los 18 y 25 años:", contadorEdad18_25
    Escribir "Cantidad de personas mayores a 36 años:", contadorMayores36
	
    Si contadorEdad18_25 > 0 Entonces
        promedioPeso18_35 = sumaPeso18_35 / contadorEdad18_25
        Escribir "Promedio de peso de las personas con edades entre 18 y 35 años:", promedioPeso18_35
    FinSi
	
FinFuncion

//EJERCICIO 12
//Se definen las variables num, multiplicador y resultado como enteros.
//Se inicia un bucle Para con num desde 1 hasta 10 con un paso de 1. Este bucle se encargará de iterar a través de las tablas de multiplicar del 1 al 10.
//Dentro del bucle Para exterior:
//Se muestra en pantalla el encabezado "Tabla de multiplicar del X:", donde X es el valor actual de num.
//Se inicia otro bucle Para con multiplicador desde 1 hasta 10 con un paso de 1. Este bucle se encargará de iterar a través de los multiplicadores del 1 al 10.
//Dentro del bucle Para interior:
//Se calcula el resultado de la multiplicación entre num y multiplicador.
//Se muestra en pantalla la expresión de multiplicación num x multiplicador = resultado.
//Fin del bucle Para interior.
//Se muestra una línea vacía para separar las tablas de multiplicar.
//Fin del bucle Para exterior.
Funcion  TablasMultiplicar()
    Definir num, multiplicador, resultado como Entero
	
    Para num <- 1 Hasta 10 Con Paso 1 Hacer
        Escribir "Tabla de multiplicar del ", num, ":"
        Para multiplicador <- 1 Hasta 10 Con Paso 1 Hacer
            resultado <- num * multiplicador
            Escribir num, " x ", multiplicador, " = ", resultado
        FinPara
        Escribir ""
    FinPara
	
FinFuncion

//EJERCICIO 13
//Se muestra en pantalla el mensaje "Ingrese dos números enteros:" para solicitar al usuario que ingrese dos números enteros.
//Se leen los valores ingresados por el usuario y se almacenan en las variables a y b.
//Se inicializa la variable producto con el valor 0. Esta variable se utilizará para almacenar el resultado de la multiplicación.
//Se inicia un bucle Para con i desde 1 hasta b con un paso de 1. Este bucle se encargará de realizar las sumas sucesivas.
//Dentro del bucle Para:
//Se realiza la operación producto <- producto + a, que consiste en sumar el valor actual de a al valor acumulado en producto.
//Fin del bucle Para.
//Se muestra en pantalla el mensaje "El producto de X x Y es: Z", donde X y Y son los valores ingresados por el usuario en las variables a y b, respectivamente, y Z es el resultado almacenado en la variable producto.
Funcion  MultiplicacionPorSumasSucesivas()
    Escribir "Ingrese dos números enteros:"
    Leer a, b
    producto <- 0
    Para i<-1 Hasta b Con Paso 1 Hacer
        producto <- producto + a
    FinPara
    Escribir "El producto de ", a, " x ", b, " es: ", producto
FinFuncion

//EJERCICIO 14
//Se muestra en pantalla el mensaje "Ingrese una serie de números (0 para terminar):" para solicitar al usuario que ingrese una serie de números. Se espera que el usuario ingrese números separados por espacios y que termine la serie con el número 0.
//Se lee el primer número ingresado por el usuario y se almacena en la variable numero.
//Se inicializa la variable suma con el valor 0. Esta variable se utilizará para acumular la suma de los números ingresados.
//Se inicializa la variable cantidad con el valor 0. Esta variable se utilizará para contar la cantidad de números ingresados.
//Se inicia un bucle Mientras que se ejecutará siempre que el valor de numero sea diferente de 0. Este bucle se encargará de procesar los números ingresados.
//Dentro del bucle Mientras:
//Se realiza la operación suma <- suma + numero, que consiste en sumar el valor actual de numero al valor acumulado en suma.
//Se incrementa la variable cantidad en 1, para llevar la cuenta de la cantidad de números ingresados.
//Se lee el siguiente número ingresado por el usuario y se actualiza el valor de numero.
//Fin del bucle Mientras.
//Se calcula el promedio dividiendo la suma total de los números (suma) entre la cantidad de números ingresados (cantidad), y se almacena en la variable promedio.
//Se muestra en pantalla el mensaje "El promedio de la serie de números ingresados es: " seguido del valor almacenado en la variable promedio.
Funcion  PromedioDeSerieDeNumeros()
    Escribir "Ingrese una serie de números (0 para terminar):"
    Leer numero
    suma <- 0
    cantidad <- 0
    Mientras numero <> 0 Hacer
        suma <- suma + numero
        cantidad <- cantidad + 1
        Leer numero
    FinMientras
    promedio <- suma / cantidad
    Escribir "El promedio de la serie de números ingresados es: ", promedio
FinFuncion

//EJERCICIO 15
//Se definen las variables dividendo, divisor, cociente y resto como enteros. Estas variables se utilizarán para almacenar los valores necesarios durante la división entera.
//Se muestra en pantalla el mensaje "Ingrese el dividendo:" para solicitar al usuario que ingrese el valor del dividendo.
//Se lee el valor ingresado por el usuario y se almacena en la variable dividendo.
//Se muestra en pantalla el mensaje "Ingrese el divisor:" para solicitar al usuario que ingrese el valor del divisor.
//Se lee el valor ingresado por el usuario y se almacena en la variable divisor.
//Se inicializa la variable cociente con el valor 0. Esta variable se utilizará para almacenar el cociente de la división entera.
//Se inicializa la variable resto con el valor del dividendo. Esta variable se utilizará para almacenar el resto de la división entera.
//Se inicia un bucle Mientras que se ejecutará siempre que el valor de resto sea mayor o igual que el valor del divisor. Este bucle se encargará de realizar las divisiones parciales.
//Dentro del bucle Mientras:
//Se realiza la operación resto <- resto - divisor, que consiste en restar el valor del divisor al valor actual de resto.
//Se incrementa la variable cociente en 1, para llevar la cuenta de las divisiones parciales realizadas.
//Fin del bucle Mientras.
//Se muestra en pantalla el mensaje "El cociente es: " seguido del valor almacenado en la variable cociente.
//Se muestra en pantalla el mensaje "El resto es: " seguido del valor almacenado en la variable resto.
Funcion  division_entera()
    Definir dividendo, divisor, cociente, resto Como Entero
    Escribir "Ingrese el dividendo:"
    Leer dividendo
    Escribir "Ingrese el divisor:"
    Leer divisor
    cociente <- 0
    resto <- dividendo
    Mientras resto >= divisor Hacer
        resto <- resto - divisor
        cociente <- cociente + 1
    FinMientras
    Escribir "El cociente es: ", cociente
    Escribir "El resto es: ", resto
FinFuncion

// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,apcc,apca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuSelectivas[11],menuCondicionales[11],menuIterativas[16]
	// Arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios Selectivos"
	menuPrincipal[1] = "  2)Ejercicios Condicionales "
	menuPrincipal[2] = "  3)Ejercicios Iterativos"
	menuPrincipal[3] = "  4)Salir"
	
	// arreglo submenu numeros
	//ejercicios selectivos
	menuSelectivas[0] = "  1)Convertir a expresión matemática"
	
	menuSelectivas[1] = "  2)Calcular la suma, resta, multiplicación, división y módulo."

	menuSelectivas[2] = "  3)Hacer una aplicación que calcule la resolvente"

	menuSelectivas[3] = "  4)Calcular la hipotenusa de un triangulo"
	
	menuSelectivas[4] = "  5)Dado un (1) número, imprimir 0 si es par y 1 si es impar"
	
	menuSelectivas[5] = "  6)Numero binario"
	
	menuSelectivas[6] = "  7)Unidades,decenas,centenas y unidades de mil."

	menuSelectivas[7] = "  8)Digito o una consonante o un carácter especial."
	
	menuSelectivas[8] = "  9)Caracteres  igual, mayor o menor que el segundo"
	
	menuSelectivas[9] = "  10)Frase en mayúscula y minuscula "
	
	menuSelectivas[10]= "  11)Salir"
	
	//ejercicios condicionales
	menuCondicionales[0] = "  1)Numeros divisibles"
	
	menuCondicionales[1] = "  2)Numero escapicua"
	
	menuCondicionales[2] = "  3)Equivalente en minutos, horas y días"
	
	menuCondicionales[3] = "  4)Determinar si son iguales, mayor y cual es el segundo mayor"

	menuCondicionales[4] = "  5)Calcular monto de estacionamiento"
	
	menuCondicionales[5] = "  6)Calcular IMC"

	menuCondicionales[6] = "  7)Calcular dias pasados"
	
	menuCondicionales[7] = "  8)Imprimir mes"
	
	menuCondicionales[8] = "  9)Calcular descuento de almacen"
	
	menuCondicionales[9] = "  10)Realizar operaciones matematicas"
	
	menuCondicionales[10] = "  11) Salir"
	
	//ejercicios iterativos
	menuIterativas[0]= "1)Digitos de un numero"
 
	menuIterativas[1]= "2)Numero Capicua"
    
	menuIterativas[2]= "3)Divisores de un numero"
  
	menuIterativas[3]= "4)Suma de los divisores de un numero"
 
	menuIterativas[4]= "5)Cantidad de los divisores de un numero"

	menuIterativas[5]= "6)Número es perfecto"
	
	menuIterativas[6]= "7)Número primo."
  
	menuIterativas[7]= "8)Calculo de funcion factorial"
   
	menuIterativas[8]= "9)Dado un número entero N que representa una contraseña "
	
	menuIterativas[9]= "10)Secuencia de números terminada en cero "
	
	menuIterativas[10]="11)Secuencias terminadas en 0 "
	
	menuIterativas[11]="12)Tabla de multiplicacion del 10"
	
	menuIterativas[12]="13)Multiplicacion de dos números por medio de sumas sucesivas"
	
	menuIterativas[13]="14)Dados N número positivos (N>1) calcular el promedio de esta serie"
	
	menuIterativas[14]="15)Division de dos números por medio de restas sucesivas"
	
	menuIterativas[15]= " 16) Salir"
	
	
	opc=""
    Mientras opc <> "4" Hacer
		Borrar Pantalla
		opc=presentarMenu("Menu Principal",menuPrincipal,4)
		Segun opc Hacer
		"1":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu selectivos",menuSelectivas,11)
				Segun opcn Hacer
					"1":
						Escribir "Convertir a expresión matemática"
						Convertir_expresionMatematica()
						Esperar 6 Segundos
					"2":
						Escribir "Calcular la suma, resta, multiplicación, división y módulo"
						MenuOperaciones()
						Esperar 6 Segundos
					"3":
						Escribir "Hacer una aplicación que calcule la resolvente"
						Aplicacion_resolvente()
						Esperar 6 Segundos
					"4":
						Escribir "Calcular la hipotenusa de un triangulo"
						CalcularHipotenusa()
						Esperar 6 Segundos
					"5":
						Escribir "Dado un (1) número, imprimir 0 si es par y 1 si es impar"
						Imprimir_par_impar()
						Esperar 6 Segundos
					"6":
						Escribir "Numero binario"
						ConvertirBinarioADecimal()
						Esperar 6 Segundos
					"7":
						Escribir "Unidades,decenas,centenas y unidades de mil"
						ImprimirDigitos()
						Esperar 6 Segundos
					"8":
						Escribir "Digito o una consonante o un carácter especial"
						Indicar_digito_consonante_caracterespecial()
						Esperar 6 Segundos
					"9":
						Escribir "Caracteres  igual, mayor o menor que el segundo"
						Indicarcaracterigual_mayor_menor()
						Esperar 6 Segundos
					"10":
						Escribir "Frase en mayúscula y minuscula"
						PresentarFrase()
						Esperar 6 Segundos
						
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		    
		"2":
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Condicionales",menuCondicionales,11)
				Segun opcn Hacer
					"1":
						Escribir "Numeros divisibles"
						AñoBisiesto()
						Esperar 6 Segundos
					"2":
						Escribir "Numero capicua"
						numeroCapicua()
						Esperar 6 Segundos
					"3":
						Escribir "Equivalente en minutos, horas y días"
						minutoshorasdías()
						Esperar 6 Segundos
					"4":
						Escribir "Determinar si son iguales, mayor y cual es el segundo mayor"
						Enterospositivos()
						Esperar 6 Segundos
					"5":
						Escribir "Calcular monto de estacionamiento"
						calcularmonto()
						Esperar 6 Segundos
					"6":
						Escribir "Calcular IMC"
						calcularIMC()
						Esperar 6 Segundos
					"7":
						Escribir "Calcular dias pasados"
						DIASPASADOS()
						Esperar 6 Segundos
					"8":
						Escribir "Imprimir mes"
						IMPRIMIRMES()
						Esperar 6 Segundos
					"9":
						Escribir "Calcular descuento de almacen"
						AplicarDescuento()
						Esperar 6 Segundos
					"10":
						Escribir "Realizar operaciones matematicas"
						OPERACIONESMAT()
						Esperar 6 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		    
			
		"3":
			Mientras opcn <> "16" Hacer         
				opcn=presentarMenu("Menu Interativos",menuIterativas,16)
				Segun opcn Hacer
					"1":
						Escribir "Digitos de un numero"
						longitud_numero_entero()
						Esperar 6 Segundos
					"2":
						Escribir "Numero Capicua"
						capicua()
						Esperar 6 Segundos
					"3":
						Escribir "Divisores de un numero"
						divisoresnumero()
						Esperar 6 Segundos
					"4":
						Escribir "Suma de los divisores de un numero"
						sumadivisores()
						Esperar 6 Segundos
					"5":
						Escribir "Cantidad de los divisores de un numero"
						ContarDivisores()
						Esperar 6 Segundos
					"6":
						Escribir "Número es perfecto"
						numeroperfecto()
						Esperar 6 Segundos
					"7":
						Escribir "Número primo"
						numeroprimo()
						Esperar 6 Segundos
					"8":
						Escribir "Calculo de funcion factorial"
						factorial()
						Esperar 6 Segundos
					"9":
						Escribir "Dado un número entero N que representa una contraseña"
						VerificarContraseña()
						Esperar 6 Segundos
					"10":
						Escribir "Secuencia de números terminada en cero "
						SecuenciaNumeros()
						Esperar 6 Segundos
					"11":
						Escribir "Secuencias terminadas en 0"
						estudioPersonas()
						Esperar 6 Segundos
					"12":
						Escribir "Tabla de multiplicacion del 10"
						TablasMultiplicar()
						Esperar 3 Segundos
					"13":
						Escribir "Multiplicacion de dos números por medio de sumas sucesivas"
						MultiplicacionPorSumasSucesivas()
						Esperar 6 Segundos
					"14":
						Escribir "Dados N número positivos (N>1) calcular el promedio de esta serie"
						PromedioDeSerieDeNumeros()
						Esperar 6 Segundos
					"15":
						Escribir "Division de dos números por medio de restas sucesivas"
						division_entera()
						Esperar 6 Segundos
					"16":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
			
		"4":
			Escribir "Gracias por usar el Sistema"
			Esperar 3 Segundos
		Fin Segun
    Fin Mientras
FinAlgoritmo
