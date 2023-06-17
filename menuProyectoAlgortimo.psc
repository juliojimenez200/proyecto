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
	Escribir "       Elija opci�n[1..",lim,"]" Sin Saltar
	leer opcion
FinFuncion

//EJERCICIOS SELECTIVOS
//EJERCICIO 1
//Se definen las variables resultado1, resultado4, y resultado5 como tipo l�gico (booleano) para almacenar los resultados de las expresiones como verdadero o falso.
//Se define la variable resultado2 como tipo entero para almacenar el resultado de la expresi�n como un n�mero entero.
//Se define la variable resultado3 como tipo real (flotante) para almacenar el resultado de la expresi�n como un n�mero decimal.
//Se eval�a la expresi�n (5 + 3 * 2) + 9 > 3 * 5 * (14 % 3) y el resultado se asigna a la variable resultado1. Esta expresi�n involucra operaciones aritm�ticas y operadores de comparaci�n. El resultado ser� verdadero (true) o falso (false).
//Se eval�a la expresi�n 2 * ((4 - 10 + 8) / 2) + 36 * (1/2) y el resultado se asigna a la variable resultado2. Esta expresi�n tambi�n involucra operaciones aritm�ticas y se eval�a siguiendo las reglas de precedencia de operadores. El resultado ser� un n�mero entero.
//Se eval�a la expresi�n (260 / 12) + (54 % 3) - (85 % 7) y el resultado se asigna a la variable resultado3. Esta expresi�n involucra operaciones aritm�ticas y se eval�a siguiendo las reglas de precedencia de operadores. El resultado ser� un n�mero decimal.
//Se eval�a la expresi�n (48 < (2 * 3)) O ((2 * 7) < 12) y el resultado se asigna a la variable resultado4. Esta expresi�n involucra operadores de comparaci�n y operadores l�gicos. El resultado ser� verdadero (true) o falso (false).
//Se eval�a la expresi�n ((8 > 2) O (932 < 23)) Y (4 == 2) y el resultado se asigna a la variable resultado5. Esta expresi�n involucra operadores de comparaci�n y operadores l�gicos. El resultado ser� verdadero (true) o falso (false).
//Se imprime en pantalla el resultado de cada expresi�n utilizando la funci�n Escribir.
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
//Se definen las variables num1, num2, suma, resta, multiplicacion, division y modulo como tipo real (flotante) para almacenar los n�meros ingresados y los resultados de las operaciones.
//Se define la variable opcion como tipo entero para almacenar la opci�n seleccionada por el usuario.
//Se muestra un men� con diferentes opciones de operaciones matem�ticas para el usuario seleccionar.
//e lee la opci�n seleccionada por el usuario y se almacena en la variable opcion.
//Se solicita al usuario que ingrese el primer n�mero y se almacena en la variable num1.
//Se solicita al usuario que ingrese el segundo n�mero y se almacena en la variable num2.
//Se utiliza la estructura "Segun opcion Hacer" para ejecutar el bloque de c�digo correspondiente a la opci�n seleccionada por el usuario:
//Si la opci�n es 1 (suma), se realiza la suma de los n�meros ingresados y se muestra el resultado.
//Si la opci�n es 2 (resta), se realiza la resta de los n�meros ingresados y se muestra el resultado.
//Si la opci�n es 3 (multiplicaci�n), se realiza la multiplicaci�n de los n�meros ingresados y se muestra el resultado.
//Si la opci�n es 4 (divisi�n), se verifica si el divisor (num2) es diferente de cero. Si es as�, se realiza la divisi�n de los n�meros ingresados y se muestra el resultado. Si el divisor es cero, se muestra un mensaje de error.
//Si la opci�n es 5 (m�dulo), se realiza el c�lculo del m�dulo de los n�meros ingresados y se muestra el resultado.
//En caso de seleccionar otra opci�n, se muestra un mensaje de error.
//Se finaliza la estructura "Segun" y se finaliza la funci�n.
Funcion MenuOperaciones()
    Definir num1, num2, suma, resta, multiplicacion, division, modulo Como Real
    Definir opcion Como Entero
	
    Escribir "Seleccione una opci�n:"
    Escribir "1. Suma"
    Escribir "2. Resta"
    Escribir "3. Multiplicaci�n"
    Escribir "4. Divisi�n"
    Escribir "5. M�dulo"
    Leer opcion
	
    Escribir Sin Saltar"Ingrese el primer n�mero: "
    Leer num1
    Escribir Sin Saltar"Ingrese el segundo n�mero: "
    Leer num2
	
    Segun opcion Hacer
        1:
            suma = num1 + num2
            Escribir Sin Saltar"La suma de los n�meros es: ", suma
        2:
            resta = num1 - num2
            Escribir "La resta de los n�meros es: ", resta
        3:
            multiplicacion = num1 * num2
            Escribir Sin Saltar"La multiplicaci�n de los n�meros es: ", multiplicacion
        4:
            Si num2 <> 0 Entonces
                division = num1 / num2
                Escribir Sin Saltar"La divisi�n de los n�meros es: ", division
            SiNo
                Escribir Sin Saltar"No se puede dividir entre cero."
            FinSi
        5:
            modulo = num1 % num2
            Escribir Sin Saltar"El m�dulo de los n�meros es: ", modulo
        De Otro Modo:
            Escribir Sin Saltar"Opci�n inv�lida."
			
    FinSegun
FinFuncion

//EJERCICIO 3
//Se definen las variables a, b y c como enteros para almacenar los coeficientes de la ecuaci�n cuadr�tica, y las variables delta, x1 y x2 como reales para almacenar el valor del discriminante y las soluciones de la ecuaci�n.
//Se muestra un mensaje solicitando al usuario ingresar el valor de a (coeficiente cuadr�tico) y se almacena en la variable a.
//Se muestra un mensaje solicitando al usuario ingresar el valor de b (coeficiente lineal) y se almacena en la variable b.
//Se muestra un mensaje solicitando al usuario ingresar el valor de c (t�rmino independiente) y se almacena en la variable c.
//Se calcula el valor del discriminante utilizando la f�rmula delta = b*b - 4*a*c.
//Se realiza una comprobaci�n utilizando la estructura "Si delta < 0 Entonces" para verificar si la ecuaci�n cuadr�tica no tiene soluci�n real. En ese caso, se muestra un mensaje indicando que la ecuaci�n no tiene soluci�n real.
//Si el discriminante es mayor o igual a cero, se ejecuta el bloque de c�digo dentro del "SiNo":
//Se calcula el valor de la primera soluci�n x1 utilizando la f�rmula x1 = (-b + RAIZ(delta)) / (2*a).
//Se calcula el valor de la segunda soluci�n x2 utilizando la f�rmula x2 = (-b - RAIZ(delta)) / (2*a).
//Se realiza una comprobaci�n adicional utilizando la estructura "Si delta = 0 Entonces" para verificar si la ecuaci�n cuadr�tica tiene una soluci�n doble. En ese caso, se muestra un mensaje indicando la soluci�n doble x1.
//Si no se cumple la condici�n anterior, se muestra un mensaje indicando las dos soluciones x1 y x2 de la ecuaci�n.
//Se finaliza la estructura "Si" y se finaliza la funci�n.
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
		Escribir "La ecuaci�n no tiene soluci�n real"
	SiNo
		x1 = (-b + RAIZ (delta)) / (2*a)
		x2 = (-b - RAIZ (delta)) / (2*a)
		Si delta = 0 Entonces
			Escribir "La ecuaci�n tiene una soluci�n doble: ", x1
		SiNo
			Escribir "La ecuaci�n tiene dos soluciones: ", x1, " y ", x2
		Fin Si
	Fin Si
FinFuncion

//EJERCICIO 4
//Se define la variable hipotenusa como real para almacenar el valor de la hipotenusa del tri�ngulo, y la variable opcion como entero para almacenar la opci�n seleccionada por el usuario.
//Se muestra un mensaje solicitando al usuario que seleccione una opci�n. A continuaci�n, se muestra el men� de opciones con las descripciones correspondientes.
//Se solicita al usuario ingresar una opci�n y se almacena en la variable opcion.
//Se utiliza la estructura "Segun opcion Hacer" para ejecutar el c�digo correspondiente seg�n la opci�n seleccionada.
//Si la opci�n es igual a 1, se ejecuta el bloque de c�digo dentro del "Si opcion = 1 Entonces":
//Se muestra un mensaje solicitando al usuario ingresar la longitud del lado A del tri�ngulo en cent�metros y se almacena en la variable ladoA.
//Se muestra un mensaje solicitando al usuario ingresar la longitud del lado B del tri�ngulo en cent�metros y se almacena en la variable ladoB.
//Se calcula la hipotenusa sumando las longitudes de los dos lados utilizando la f�rmula de Pit�goras.
//La hipotenusa calculada se asigna a la variable hipotenusa.
//Se muestra un mensaje que indica el resultado de la hipotenusa, independientemente de la opci�n seleccionada. Sin embargo, es importante tener en cuenta que si la opci�n seleccionada no es 1, el valor de hipotenusa no se calcular� correctamente y puede ser un valor no v�lido.
//Si la opci�n seleccionada es igual a 2, se muestra un mensaje indicando que se est� saliendo del programa.
//Se finaliza la estructura "Segun" y se finaliza la funci�n.
Funcion CalcularHipotenusa()
	Definir hipotenusa Como Real
	Definir opcion Como Entero
	
    Escribir "seleccione una opcion"
	Escribir "1. Calcular hipotenusa"
	Escribir "2. Salir"
	Escribir "Ingrese una opci�n: "
	Leer opcion
    Segun opcion Hacer
		1:
			Si opcion = 1 Entonces
				Escribir "Ingrese la longitud del lado A del tri�ngulo en cm: "
				Leer ladoA
				
				Escribir "Ingrese la longitud del lado B del tri�ngulo en cm: "
				Leer ladoB
				
				hipotenusa <- ladoA + ladoB
			FinSi
			Escribir "resultado de: ", hipotenusa
		2:	
			Escribir "Saliendo del programa..."
	FinSegun
	
    
FinFuncion

//EJERCICIO 5
//Se define la variable num como entero para almacenar el n�mero ingresado por el usuario.
//Se muestra un mensaje solicitando al usuario que ingrese un n�mero.
//El n�mero ingresado por el usuario se lee y se almacena en la variable num.
//Se utiliza la estructura "Si num % 2 = 0 Entonces" para verificar si el n�mero es divisible por 2 (es decir, si es par) o no.
//Si la condici�n es verdadera, es decir, si el n�mero es divisible por 2 y no tiene residuo, se ejecuta el bloque de c�digo dentro del "Si num % 2 = 0 Entonces":
//Se muestra un mensaje indicando que el n�mero es par.
//Si la condici�n es falsa, es decir, si el n�mero no es divisible por 2 y tiene residuo, se ejecuta el bloque de c�digo dentro del "SiNo":
//Se muestra un mensaje indicando que el n�mero es impar.
//Se finaliza la estructura "Si" y se finaliza la funci�n.
Funcion Imprimir_par_impar()
	Definir num Como Entero
    Escribir "Ingrese un n�mero:"
    Leer num
    Si num % 2 = 0 Entonces
        Escribir "El n�mero es par"
    SiNo
        Escribir "El n�mero es impar"
    FinSi
FinFuncion

//EJERCICIO 6
//Se definen las variables numeroBinario, digito1, digito2, digito3, digito4 y numeroDecimal como enteros. Estas variables se utilizar�n para almacenar los valores necesarios durante la conversi�n.
//Se muestra un mensaje solicitando al usuario que ingrese un n�mero binario de 4 d�gitos.
//El n�mero binario ingresado por el usuario se lee y se almacena en la variable numeroBinario.
//Se realiza la conversi�n de cada d�gito del n�mero binario al n�mero decimal correspondiente.
//Primero se obtiene el valor del d�gito m�s a la derecha (digito4) utilizando el operador de m�dulo % para obtener el residuo de dividir numeroBinario entre 10. Luego se actualiza numeroBinario dividi�ndolo entre 10 utilizando la funci�n trunc() para obtener el resultado entero.
//El proceso se repite para los d�gitos restantes (digito3, digito2 y digito1), obteniendo su valor y actualizando numeroBinario en cada iteraci�n.
//Se realiza el c�lculo del n�mero decimal utilizando la f�rmula: numeroDecimal = digito1 * 2^3 + digito2 * 2^2 + digito3 * 2^1 + digito4 * 2^0. Los exponentes de 2 corresponden a las posiciones de los d�gitos en el n�mero binario, donde el d�gito m�s a la izquierda tiene un exponente mayor.
//Se muestra en pantalla el resultado de la conversi�n, es decir, el n�mero decimal equivalente al n�mero binario ingresado.
//Se finaliza la funci�n.
Funcion ConvertirBinarioADecimal()
    Definir numeroBinario, digito1, digito2, digito3, digito4 Como Entero
    Definir numeroDecimal Como Entero
	
    Escribir "Ingrese un n�mero binario de 4 d�gitos: "
    Leer numeroBinario
	
    digito4 <- numeroBinario % 10
    numeroBinario <- trunc(numeroBinario / 10)
	
    digito3 <- numeroBinario % 10
    numeroBinario <- trunc(numeroBinario / 10)
	
    digito2 <- numeroBinario % 10
    numeroBinario <- trunc(numeroBinario / 10)
	
    digito1 <- numeroBinario % 10
	
    numeroDecimal <- digito1 * 2^3 + digito2 * 2^2 + digito3 * 2^1 + digito4 * 2^0
	
    Escribir "El n�mero decimal correspondiente es: ", numeroDecimal
FinFuncion

//EJERCICIO 7
//Se muestra un men� con dos opciones: imprimir los d�gitos de un n�mero de cuatro d�gitos o salir del programa.
//Se solicita al usuario que ingrese una opci�n.
//Se utiliza la estructura "Segun opcion" para evaluar la opci�n ingresada por el usuario.
//Si la opci�n es igual a 1, se procede a solicitar al usuario que ingrese un n�mero de cuatro d�gitos.
//Se verifica si el n�mero ingresado se encuentra en el rango de 1000 a 9999 (ambos inclusive) utilizando las condiciones "numero >= 1000" y "numero <= 9999". Si el n�mero cumple esta condici�n, se contin�a con el proceso de descomposici�n en d�gitos.
//Se calcula el d�gito de las unidades de mil dividiendo el n�mero por 1000 y se almacena en la variable "unidadesMil".
//Se calcula el d�gito de las centenas tomando el residuo de la divisi�n entre 1000 y luego dividiendo ese resultado por 100. El resultado se almacena en la variable "centenas".
//Se calcula el d�gito de las decenas tomando el residuo de la divisi�n entre 100 y luego dividiendo ese resultado por 10. El resultado se almacena en la variable "decenas".
//Se calcula el d�gito de las unidades tomando el residuo de la divisi�n entre 10 y se almacena en la variable "unidades".
//Se imprime cada uno de los d�gitos obtenidos en pasos anteriores utilizando la funci�n "Escribir". Por ejemplo, "Escribir 'Unidades de mil: ', unidadesMil".
//Si la opci�n ingresada por el usuario es igual a 2, se muestra el mensaje "Saliendo del programa..." y se finaliza la funci�n.
//Se finaliza la estructura "Segun".
//Se finaliza la funci�n "ImprimirDigitos".
Funcion ImprimirDigitos()
	Escribir "1. Imprimir los d�gitos de un n�mero de cuatro d�gitos"
	Escribir "2. Salir"
	Escribir "Ingrese una opci�n: "
	Leer opcion
    Segun opcion Hacer
		1:    
			Si opcion = 1 Entonces
				Escribir "Ingrese un n�mero de cuatro d�gitos: "
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
					Escribir "El n�mero debe tener exactamente cuatro d�gitos."
				FinSi
				
				Si opcion = 2 Entonces
					Escribir "Saliendo del programa..."
				FinSi
				
			FinSi
			
	FinSegun
FinFuncion

//EJERCICIO 8
//Se define la variable "caractere" de tipo caracter para almacenar el car�cter ingresado por el usuario.
//Se muestra el mensaje "Ingrese un car�cter:" para solicitar al usuario que ingrese un car�cter.
//Se lee el car�cter ingresado y se almacena en la variable "caractere".
//Se utiliza la estructura "Si" para evaluar las condiciones del car�cter ingresado.
//Primero se verifica si el car�cter est� en el rango de "0" a "9" utilizando las condiciones "caractere >= '0'" y "caractere <= '9'". Si el car�cter cumple esta condici�n, se imprime el mensaje "El car�cter es un d�gito".
//Si el car�cter no cumple la primera condici�n, se contin�a con las siguientes evaluaciones.
//Se verifica si el car�cter est� en el rango de "a" a "z" (min�sculas) o en el rango de "A" a "Z" (may�sculas). Esto se realiza utilizando las condiciones "caractere >= 'a'" y "caractere <= 'z'" o "caractere >= 'A'" y "caractere <= 'Z'". Si el car�cter cumple alguna de estas condiciones, se imprime el mensaje "El car�cter es una consonante".
//Si el car�cter no cumple ninguna de las condiciones anteriores, se asume que es un car�cter especial y se imprime el mensaje "El car�cter es un car�cter especial".
//Se finaliza la estructura "Si".
//Se finaliza la funci�n "Indicar_digito_consonante_caracterespecial".
Funcion Indicar_digito_consonante_caracterespecial()
	Definir caractere Como Caracter
    Escribir "Ingrese un car�cter:"
    Leer caractere
    Si caractere >= "0" Y caractere <= "9" Entonces
        Escribir "El car�cter es un d�gito"
    Sino
		si caractere >= "a" Y caractere<= "z" O caractere >= "A" Y caractere <= "Z" Entonces
			Escribir "El car�cter es una consonante"
		SiNo
			Escribir "El car�cter es un car�cter especial"
		FinSi
	FinSi
FinFuncion

//EJERCICIO 9
//Se definen las variables "caracter1" y "caracter2" de tipo caracter para almacenar los caracteres ingresados por el usuario.
//Se muestra el mensaje "Ingrese el primer car�cter:" para solicitar al usuario que ingrese el primer car�cter.
//Se lee el primer car�cter ingresado por el usuario y se almacena en la variable "caracter1".
//Se muestra el mensaje "Ingrese el segundo car�cter:" para solicitar al usuario que ingrese el segundo car�cter.
//Se lee el segundo car�cter ingresado por el usuario y se almacena en la variable "caracter2".
//Se utiliza la estructura "Si" para realizar las comparaciones entre los caracteres ingresados.
//Primero se verifica si el "caracter1" es igual a "caracter2" utilizando la condici�n "caracter1 = caracter2". Si los caracteres son iguales, se imprime el mensaje "El primer car�cter es igual al segundo".
//Si los caracteres no son iguales, se ejecuta la estructura "SiNo" para realizar la siguiente comparaci�n.
//Se verifica si el "caracter1" es mayor que el "caracter2" utilizando la condici�n "caracter1 > caracter2". Si esta condici�n se cumple, se imprime el mensaje "El primer car�cter es mayor que el segundo".
//Si la condici�n anterior no se cumple, se asume que el "caracter1" es menor que el "caracter2" y se imprime el mensaje "El primer car�cter es menor que el segundo".
//Se finaliza la estructura "SiNo".
//Se finaliza la estructura "Si".
//Se finaliza la funci�n "Indicarcaracterigual_mayor_menor".
Funcion Indicarcaracterigual_mayor_menor()
	Definir caracter1,caracter2 Como Caracter
    Escribir "Ingrese el primer car�cter:"
    Leer caracter1
    Escribir "Ingrese el segundo car�cter:"
    Leer caracter2
    Si caracter1 = caracter2 Entonces
        Escribir "El primer car�cter es igual al segundo"
    SiNo 
		Si caracter1 > caracter2 Entonces
			Escribir "El primer car�cter es mayor que el segundo"
		SiNo
			Escribir "El primer car�cter es menor que el segundo"
		FinSi
	FinSi
	
FinFuncion

//EJERCICIO 10
//Se define la variable "frase" de tipo caracter para almacenar la frase ingresada por el usuario.
//Se muestra el mensaje "Ingrese una frase:" para solicitar al usuario que ingrese la frase.
//Se lee la frase ingresada por el usuario y se almacena en la variable "frase".
//Se muestran las opciones disponibles al usuario mediante los mensajes:
//"1. Presentar frase en may�scula"
//"2. Presentar frase en min�scula"
//"3. Salir"
//"Ingrese una opci�n:"
//Se lee la opci�n seleccionada por el usuario y se almacena en la variable "opcion".
//Se utiliza la estructura "Segun opcion Hacer" para realizar diferentes acciones seg�n la opci�n seleccionada.
//Dentro de la estructura "Segun opcion Hacer", se eval�a cada opci�n seleccionada.
//Si la opci�n es 1, se ejecuta la acci�n correspondiente:
//Se verifica si la opci�n es igual a 1 con la condici�n "opcion = 1".
//Si la condici�n se cumple, se muestra la frase en may�scula utilizando la funci�n "Mayusculas(frase)" y se imprime el resultado con el mensaje "La frase en may�scula es: ".
//Si la opci�n es 2, se ejecuta la acci�n correspondiente:
//Se verifica si la opci�n es igual a 2 con la condici�n "opcion = 2".
//Si la condici�n se cumple, se muestra la frase en min�scula utilizando la funci�n "Minusculas(frase)" y se imprime el resultado con el mensaje "La frase en min�scula es: ".
//Si la opci�n es 3, se muestra el mensaje "Saliendo del programa..." para indicar al usuario que el programa finalizar�.
//Se finaliza la estructura "Segun opcion Hacer".
//Se finaliza la funci�n "PresentarFrase".
Funcion PresentarFrase()
	Definir frase Como Caracter
	
	Escribir "Ingrese una frase: "
	Leer frase
	Escribir "1. Presentar frase en may�scula"
	Escribir "2. Presentar frase en min�scula"
	Escribir "3. Salir"
	Escribir "Ingrese una opci�n: "
	Leer opcion
    Segun opcion Hacer
		1:
			Si opcion = 1 Entonces
				Escribir "La frase en may�scula es: ", Mayusculas(frase)
			FinSi
		2:		
			Si opcion = 2 Entonces
				Escribir "La frase en min�scula es: ", Minusculas(frase)
			FinSi
		3:	
			Escribir "Saliendo del programa..."
			
	FinSegun
	
FinFuncion



//ejercicios condicionales
//EJERCICIO 1
//Todos los a�os que se dividen exactamente entre 400, o que son divisibles exactamente
//entre 4 y no son divisibles exactamente entre 100 son a�os bisiestos.Usando estas 
//premisas crea un algoritmo que lea una fecha como un en tres variables: aaaa,mes, dia, y 
//luego indique si el a�o de la fecha es un a�o bisiesto o no.
Funcion A�oBisiesto()
	//Entrada
	//Se define variables
    Definir a�o, mes, d�a como enteros
	//Ingresar el a�o 
    Escribir "Ingrese el a�o:"
    Leer a�o
	//Ingresar el mes
    Escribir "Ingrese el mes:"
    Leer mes
	//Ingresar el dia
    Escribir "Ingrese el d�a:"
    Leer d�a
	//Verificar si el a�o cumple las condiciones para que pueda estimar como un a�o bisiesto
	//Usando una condicion de Si y SiNo
    Si ((a�o % 400 = 0) O ((a�o % 4 = 0) Y (a�o % 100 <> 0))) Entonces
        Escribir a�o, " es un a�o bisiesto."
    Sino
        Escribir a�o, " no es un a�o bisiesto."
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
funcion minutoshorasd�as()
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
//Dados tres n�meros enteros positivos A, B y C, �Determine si son iguales? �cu�l de ellos es
//elmayor? y �cu�l es el segundo mayor?
Funcion Enterospositivos()
	//Entrada 
	//Se define las variables
	Definir A,B,C,mayor,segundomayor Como Entero
	Escribir "Ingrese el n�mero A: "
	Leer A
	Escribir "Ingrese el n�mero B: "
	Leer B
	Escribir "Ingrese el n�mero C: "
	Leer C
	// Se usa una condici�n de Si y SiNo
	// Proceso
	Si A=B y A=C Entonces
		Escribir "Los tres n�meros son iguales: "
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
		Escribir "El n�mero mayor es: ", mayor
		Escribir "El segundo n�mero mayor es: ", segundoMayor
	FinSi
	//Salida
	//Finalmente, se muestra al usuario el n�mero mayor y el segundoMayor.
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
//El IMC resulta de la divisi�n de la masa del individuo (en kilogramos) entre el cuadrado de
//la estatura (en metros). El �ndice de masa corporal es un indicadordel peso de una
//persona en relaci�n con su altura.
//Clasificaci�n del IMC de acuerdo con la OMS de la ONU:
//a. Menor a 16: Criterio de ingreso.
//b. 16 a 16.9: infra peso.
//c.17 a 18.4: bajo peso.
//d. 18.5 a 24.9: peso normal.
//e. 25 a 29.9: sobrepeso.
//f. 30 a 34.9: obesidad pre-m�rbida.
//g. 40 a 45: obesidad m�rbida.
//h. Mayor a 45: obesidad h�per-m�rbida.
//Dado el peso de una persona en libras (1 libra = 0,453592 Kg) y su estatura en
//cent�metros, calcule su IMC e indique como salida el peso en kilogramos, el valorde IMC
//de la persona y la categor�a en la cual fue clasificado.
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
	
	IMC<- masa_kilos/estatura_metro^2   	//Y APLICO LA FORMULA DE IMC a divisi�n de la masa del individuo 
	//(en kilogramos) entre el cuadrado de
	//la estatura (en metros)
	
	si IMC >= 45
		Escribir "obesidad h�per-m�rbida."         
	SiNo
		si (IMC >= 40 y IMC <= 45) //PONGO RANGOS DEL IMC AL MOMENTO DEL RESULTADO DE LA FORMULA
			Escribir "obesidad m�rbida" //SU CATEGORIA
			Escribir "su IMC es: " IMC //RESULTADO DEL IMC (DE LA FORMULA)
			Escribir "SU PESO EN KILOGRAMOS ES: ", masa_kilos //PESO EN KILOS 
		SiNo
			si (IMC >= 30 y IMC <= 34.9) //PONGO RANGOS DEL IMC AL MOMENTO DEL RESULTADO DE LA FORMULA
				Escribir "obesidad pre-m�rbida" //SU CATEGORIA
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
//Escriba un algoritmo que reciba una fecha (d�a y mes) correspondiente al a�o2014 e
//imprima por pantalla el n�mero de d�as que han pasado desde el 1 deEnero de 2014
//hasta la fecha dada.
Funcion DIASPASADOS()
    Definir dia, mes, totalDias Como Entero //DEFINO LAS VARIABLES COMO ENTERO
	
    Escribir "Ingrese el d�a:" //MUESTRO MENSAJE PARA QUE INGRESE EL DIA
    Leer dia
	
    Escribir "Ingrese el mes:" //MUESTRO MENSAJE PARA INGRESAR EL MES 
    Leer mes
	
    totalDias = 0  //DOY VALOR DE 0 A LA VARIABLE DIAS
	
    totalDias = totalDias + (mes - 1) * 31 //Se calcula el n�mero de d�as correspondientes a los meses 
	//completos transcurridos hasta el mes ingresado (mes - 1) y se multiplica por 31. 
	//Esto se debe a que, en este caso, se asume que todos los meses tienen 31 d�as.
	
    Si mes > 2 entonces
        totalDias = totalDias - ((mes - 1)) // Si el mes ingresado es mayor que 2 se realiza 
		//un ajuste en el valor de "totalDias" restando ((mes - 1) / 2). 
		//Esto se hace para considerar los meses con menos de 31 d�as, como febrero.
    FinSi
	
    totalDias = totalDias + dia - 1 //Se suma el valor del d�a ingresado menos 1 a "totalDias". La resta de 1 se realiza porque se asume que el d�a 
	//ingresado se cuenta como parte de los d�as transcurridos.
	
    Escribir "El n�mero de d�as pasados desde el 1 de enero de 2014 hasta la fecha ingresada es:", totalDias //imprimo resultado
FinFuncion

//Ejercicio 8.
//Solicitar un n�mero entre el 1 y el 12 e imprimir el mes correspondiente a dicho n�mero
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
//En un almac�n se hace un 20% de descuento a los clientes cuya compra supere los $1000, 
//se desea que realice un algoritmo el cual tome por entrada el monto apagar por el cliente 
//y arroje como salida el monto aplicando el descuento de ser necesario.
Funcion AplicarDescuento()
	//Entrada
	//Definir las variables como Real
    Definir montoAPagar, montoConDescuento Como Real
    Escribir "Ingrese el monto a pagar por el cliente:"//Muestro mensaje para que ingrese el montoa pagar.
    Leer montoAPagar
    //Proceso 
	//Usamos la condici�n de Si y SiNo
    Si montoAPagar > 1000 Entonces
        montoConDescuento = montoAPagar - (montoAPagar * 0.2)
        Escribir "El monto a pagar con descuento es:", montoConDescuento
    SiNo
        Escribir "El monto a pagar es:", montoAPagar
    FinSi
    //Salida 
	//Mostrar en la pantalla el monto a pagar con descuento si corresponde.
	//O sino solo el monto original si no se cumple la condici�n.
FinFuncion

//Ejercicio 10
//Dado dos n�meros y un operador matem�tico(+,-,*,/,mod,div) realizar la suma, resta,
//multiplicaci�n, divisi�n, resto y divisi�n entera(div) de los dos n�meros seg�n el operador
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
//Muestra un mensaje pidiendo al usuario que ingrese un n�mero entero.
//Lee el n�mero ingresado por el usuario y lo almacena en la variable numero.
//Inicializa un contador en cero.
//Entra en un bucle mientras el valor de numerosea mayor que cero.
//En cada iteraci�n, divida numeroentre 10 usando la funci�n truncpara eliminar el d�gito m�s a la derecha y actualizar el valor de numero.
//Incrementa el contador en uno en cada iteraci�n.
//Cuando numerosea igual a cero, sale el bucle.
//Muestra en pantalla el mensaje "La longitud del n�mero es:" seguido del valor del contador, que representa la longitud del n�mero ingresado.
Funci�n longitud_numero_entero()
Escribir 'Ingrese un n�mero entero:'
Leer numero
contador <- 0
Mientras numero>0 Hacer
	numero <- trunc(numero/10)
	contador <- contador+1
FinMientras
Escribir 'La longitud del n�mero es:', contador
FinFunci�n

//EJERCICIO 2 
//Se definen las variables numero, numeroInvertido, digito, numeroOriginal y resto como enteros. Estas variables se utilizar�n para almacenar los diferentes valores durante el proceso de verificaci�n.
//Se muestra en pantalla el mensaje "Ingrese un n�mero:" para solicitar al usuario que ingrese un n�mero.
//Se lee el n�mero ingresado por el usuario y se almacena en la variable numeroOriginal. Esto es importante para comparar posteriormente con el n�mero invertido.
//Se inicializa la variable numeroInvertido en 0, ya que en esta variable se ir� construyendo el n�mero invertido.
//Se utiliza un bucle Mientras que se repetir� mientras numero sea mayor que 0. Este bucle se encarga de invertir el n�mero ingresado.
//Dentro del bucle:
//a. Se calcula el resto de la divisi�n de numero entre 10 utilizando el operador MOD. Esto permite obtener el �ltimo d�gito del n�mero.
//b. Se actualiza numeroInvertido multiplic�ndolo por 10 y sum�ndole el valor del resto obtenido en el paso anterior. Esto construye el n�mero invertido digitos a d�gito.
//c. Se actualiza numero dividi�ndolo por 10 utilizando la funci�n trunc(). Esto elimina el �ltimo d�gito del n�mero original.
//Despu�s de salir del bucle, se compara si numeroOriginal es igual a numeroInvertido. Si son iguales, se imprime en pantalla el mensaje "S� es capic�a". Si no son iguales, se imprime "No es capic�a".
Funci�n capicua()
Definir numero, numeroInvertido, digito, numeroOriginal, resto Como Entero
Escribir 'Ingrese un n�mero: '
Leer numero
numeroOriginal <- numero
numeroInvertido <- 0
Mientras numero>0 Hacer
	resto <- numero MOD 10
	numeroInvertido <- numeroInvertido*10+resto
	numero <- trunc(numero/10)
FinMientras
Si numeroOriginal=numeroInvertido Entonces
	Escribir 'S� es capic�a.'
SiNo
	Escribir 'No es capic�a.'
FinSi
FinFunci�n

//EJERCICIO 3
//Se definen las variables numero y divisor como enteros. Estas variables se utilizar�n para almacenar el n�mero ingresado por el usuario y los divisores del n�mero respectivamente.
//Se muestra en pantalla el mensaje "Ingrese un n�mero: " para solicitar al usuario que ingrese un n�mero.
//Se lee el n�mero ingresado por el usuario y se almacena en la variable numero.
//Se muestra en pantalla el mensaje "Los divisores de " seguido del n�mero ingresado.
//Se utiliza un bucle Para que se repetir� desde divisor igual a 1 hasta numero. Este bucle se encargar� de encontrar los divisores del n�mero.
//Dentro del bucle:
//a. Se verifica si el n�mero es divisible por divisor utilizando el operador MOD. Si el resultado de la divisi�n es 0, significa que divisor es un divisor del n�mero.
//b. Si divisor es un divisor del n�mero, se imprime en pantalla el valor de divisor.
//Despu�s de salir del bucle, se finaliza la funci�n.
Funci�n divisoresnumero()
Definir numero, divisor Como Entero
Escribir 'Ingrese un n�mero: '
Leer numero
Escribir 'Los divisores de ', numero, ' son:'
Para divisor<-1 Hasta numero Hacer
	Si numero MOD divisor=0 Entonces
		Escribir divisor
	FinSi
FinPara
FinFunci�n

//EJERCICIO 4 
//Se definen las variables numero, divisor y suma como enteros. Estas variables se utilizar�n para almacenar el n�mero ingresado por el usuario, los divisores del n�mero y la suma de los divisores respectivamente.
//Se muestra en pantalla el mensaje "Ingrese un n�mero: " para solicitar al usuario que ingrese un n�mero.
//Se lee el n�mero ingresado por el usuario y se almacena en la variable numero.
//Se inicializa la variable suma en 0, ya que se ir� acumulando la suma de los divisores.
//Se utiliza un bucle Para que se repetir� desde divisor igual a 1 hasta numero. Este bucle se encargar� de encontrar los divisores del n�mero y sumarlos.
//Dentro del bucle:
//a. Se verifica si el n�mero es divisible por divisor utilizando el operador MOD. Si el resultado de la divisi�n es 0, significa que divisor es un divisor del n�mero.
//b. Si divisor es un divisor del n�mero, se suma su valor a la variable suma.
//Despu�s de salir del bucle, se muestra en pantalla el mensaje "La suma de los divisores de ", seguido del n�mero ingresado, y luego se muestra la variable suma que contiene la suma de los divisores.
Funci�n sumadivisores()
Definir numero, divisor, suma Como Entero
Escribir 'Ingrese un n�mero: '
Leer numero
suma <- 0
Para divisor<-1 Hasta numero Hacer
	Si numero MOD divisor=0 Entonces
		suma <- suma+divisor
	FinSi
FinPara
Escribir "La suma de los divisores de ", numero, " es: ", suma
FinFunci�n

//EJERCICIO 5
//Se definen las variables numero, divisor y cantidadDivisores como enteros. Estas variables se utilizar�n para almacenar el n�mero ingresado por el usuario, los divisores del n�mero y la cantidad de divisores encontrados respectivamente.
//Se muestra en pantalla el mensaje "Ingrese un n�mero: " para solicitar al usuario que ingrese un n�mero.
//Se lee el n�mero ingresado por el usuario y se almacena en la variable numero.
//Se inicializa la variable cantidadDivisores en 0, ya que se ir� contando la cantidad de divisores.
//Se utiliza un bucle Para que se repetir� desde divisor igual a 1 hasta numero. Este bucle se encargar� de encontrar los divisores del n�mero y contarlos.
//Dentro del bucle:
//a. Se verifica si el n�mero es divisible por divisor utilizando el operador MOD. Si el resultado de la divisi�n es 0, significa que divisor es un divisor del n�mero.
//b. Si divisor es un divisor del n�mero, se incrementa la variable cantidadDivisores en 1.
//Despu�s de salir del bucle, se muestra en pantalla el mensaje "La cantidad de divisores de ", seguido del n�mero ingresado, y luego se muestra la variable cantidadDivisores que contiene la cantidad de divisores encontrados.
Funcion  ContarDivisores()
    Definir numero, divisor, cantidadDivisores como Entero
	Escribir "Ingrese un n�mero: "
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
//Se definen las variables numero y sumaDiv como enteros. Estas variables se utilizar�n para almacenar el n�mero ingresado por el usuario y la suma de los divisores del n�mero respectivamente.
//Se muestra en pantalla el mensaje "Ingrese un n�mero:" para solicitar al usuario que ingrese un n�mero.
//Se lee el n�mero ingresado por el usuario y se almacena en la variable numero.
//Se inicializa la variable sumaDiv en 0, ya que se ir� acumulando la suma de los divisores del n�mero.
//Se utiliza un bucle Para que se repetir� desde i igual a 1 hasta numero/2. Este bucle se encargar� de encontrar los divisores del n�mero y sumarlos.
//Dentro del bucle:
//a. Se verifica si el n�mero es divisible por i utilizando el operador MOD. Si el resultado de la divisi�n es 0, significa que i es un divisor del n�mero.
//b. Si i es un divisor del n�mero, se incrementa la variable sumaDiv en i, es decir, se suma el divisor al total acumulado.
//Despu�s de salir del bucle, se realiza la comparaci�n sumaDiv = numero. Si son iguales, significa que la suma de los divisores (excluyendo al propio n�mero) es igual al n�mero original, por lo tanto, el n�mero es perfecto.
//Si la comparaci�n es verdadera, se muestra en pantalla el mensaje "El n�mero es perfecto."
//Si la comparaci�n es falsa, se muestra en pantalla el mensaje "El n�mero no es perfecto."
Funcion numeroperfecto()
	Definir numero, sumaDiv como Entero
	
    Escribir "Ingrese un n�mero:"
    Leer numero
	
    sumaDiv<- 0
	
    Para i <- 1 Hasta numero/2 Hacer
        Si numero MOD i = 0 Entonces
            sumaDiv <- sumaDiv + i
        FinSi
    FinPara
	
    Si sumaDiv = numero Entonces
        Escribir "El n�mero es perfecto."
    Sino
        Escribir "El n�mero no es perfecto."
    FinSi
	
FinFuncion

//EJERCICIO 7 
//Se definen las variables numero, divisor y contadorDivisores como enteros. La variable contadorDivisores se inicializa en 0 y se utilizar� para contar la cantidad de divisores del n�mero.
//Se muestra en pantalla el mensaje "Ingrese un n�mero:" para solicitar al usuario que ingrese un n�mero.
//Se lee el n�mero ingresado por el usuario y se almacena en la variable numero.
//Se inicia un bucle Para que se repetir� desde divisor igual a 1 hasta numero. Este bucle se encargar� de verificar si existen divisores del n�mero.
//Dentro del bucle:
//a. Se verifica si el n�mero es divisible por divisor utilizando el operador MOD. Si el resultado de la divisi�n es 0, significa que divisor es un divisor del n�mero.
//b. Si divisor es un divisor del n�mero, se incrementa la variable contadorDivisores en 1, para contar la cantidad de divisores encontrados.
//Despu�s de salir del bucle, se realiza la comparaci�n contadorDivisores = 2. Si el contador de divisores es igual a 2, significa que el n�mero es primo, ya que los n�meros primos tienen exactamente dos divisores: 1 y el propio n�mero.
//Si la comparaci�n es verdadera, se muestra en pantalla el mensaje "El n�mero es primo."
//Si la comparaci�n es falsa, se muestra en pantalla el mensaje "El n�mero no es primo."
Funcion numeroprimo()
	Definir numero, divisor, contadorDivisores como Entero
    contadorDivisores <- 0
	
    Escribir "Ingrese un n�mero:"
    Leer numero
	
    Para divisor <- 1 Hasta numero Hacer
        Si numero MOD divisor = 0 Entonces
            contadorDivisores <- contadorDivisores + 1
        FinSi
    FinPara
	
    Si contadorDivisores = 2 Entonces
        Escribir "El n�mero es primo."
    Sino
        Escribir "El n�mero no es primo."
    FinSi
FinFuncion

//EJERCICIO 8 
//Se definen las variables N, i y fact como enteros. La variable fact se inicializa en 1 y se utilizar� para almacenar el resultado del factorial.
//Se muestra en pantalla el mensaje "Introduzca un n�mero entero:" para solicitar al usuario que ingrese un n�mero.
//Se lee el n�mero ingresado por el usuario y se almacena en la variable N.
//Se inicializa la variable fact en 1, ya que el factorial de cualquier n�mero multiplicado por 1 es igual a ese n�mero.
//Se inicia un bucle Para que se repetir� desde i igual a 1 hasta N, incrementando i en 1 en cada iteraci�n. Este bucle se encargar� de calcular el factorial del n�mero.
//Dentro del bucle:
//a. Se multiplica el valor actual de fact por i y se almacena el resultado en fact. En cada iteraci�n del bucle, fact se actualiza con el producto acumulativo.
//Despu�s de salir del bucle, se muestra en pantalla el mensaje "El factorial de ", seguido del n�mero ingresado N, seguido de " es ", seguido del valor calculado fact. Esto muestra el resultado del factorial
funcion factorial()
	Definir N, i, fact Como Entero
	
    Escribir "Introduzca un n�mero entero:"
    Leer N
	
    fact <- 1
	
    Para i <- 1 Hasta N Con Paso 1 Hacer
        fact <- fact * i
    FinPara
	
    Escribir "El factorial de ", N, " es ", fact
FinFuncion

//EJERCICIO 9
//Se define la variable contrase�a como una cadena y se inicializa con una cadena vac�a.
//Se inicia un bucle Mientras que se repetir� mientras la longitud de la contrase�a sea menor a 10 caracteres. Este bucle se encargar� de solicitar al usuario que ingrese una contrase�a y verificar su longitud.
//Dentro del bucle:
//a. Se muestra en pantalla el mensaje "Ingrese una contrase�a:" para solicitar al usuario que ingrese una contrase�a.
//b. Se lee la contrase�a ingresada por el usuario y se almacena en la variable contrase�a.
//c. Se verifica si la longitud de la contrase�a es menor a 10 caracteres. Si es as�, se muestra en pantalla el mensaje "La contrase�a debe tener al menos 10 d�gitos. Por favor, int�ntelo nuevamente."
//Despu�s de salir del bucle, se muestra en pantalla el mensaje "Contrase�a v�lida. ��xito!" Esto indica que la contrase�a ingresada tiene al menos 10 caracteres.
Funcion  VerificarContrase�a()
    Definir contrase�a Como Cadena
    contrase�a <- ""
    
    Mientras Longitud(contrase�a) < 10 Hacer
        Escribir "Ingrese una contrase�a: "
        Leer contrase�a
        Si Longitud(contrase�a) < 10 Entonces
            Escribir "La contrase�a debe tener al menos 10 d�gitos. Por favor, int�ntelo nuevamente."
        FinSi
    FinMientras
    
    Escribir "Contrase�a v�lida. ��xito!"
FinFuncion

//EJERCICIO 10
//Se definen las variables num, mayor0 y menor0 como enteros. Estas variables se utilizar�n para almacenar los valores de los n�meros de la secuencia y los valores del n�mero mayor y menor, respectivamente.
//Se muestra en pantalla el mensaje "Ingrese una secuencia de n�meros terminada en cero:" para solicitar al usuario que ingrese una secuencia de n�meros. El n�mero cero (0) se utilizar� como indicador para finalizar la secuencia.
//Se lee el primer n�mero ingresado por el usuario y se almacena en la variable num.
//Se asigna el valor de num a las variables mayor0 y menor0 para tener un valor de referencia inicial. Esto se hace porque a�n no se han procesado otros n�meros de la secuencia, por lo que el primer n�mero ingresado ser� tanto el n�mero mayor como el n�mero menor hasta el momento.
//Se inicia un bucle Mientras que se repetir� mientras num sea diferente de cero. Esto significa que el bucle continuar� ejecut�ndose hasta que se ingrese el n�mero cero para indicar el final de la secuencia.
//Dentro del bucle:
//Se verifica si num es mayor que mayor0. Si es as�, se actualiza el valor de mayor0 con el valor de num. Esto se hace para encontrar el n�mero m�s grande de la secuencia.
//Se verifica si num es menor que menor0. Si es as�, se actualiza el valor de menor0 con el valor de num. Esto se hace para encontrar el n�mero m�s peque�o de la secuencia.
//Se lee el siguiente n�mero de la secuencia ingresado por el usuario y se almacena en la variable num. Esto permite que el bucle contin�e hasta que se ingrese el n�mero cero.
//Despu�s de salir del bucle, se muestra en pantalla el mensaje "El n�mero mayor es:" seguido del valor de mayor0. Esto indica cu�l fue el n�mero m�s grande de la secuencia ingresada.
//Luego, se muestra el mensaje "El n�mero menor es:" seguido del valor de menor0. Esto indica cu�l fue el n�mero m�s peque�o de la secuencia ingresada
Funcion  SecuenciaNumeros()
    Definir num, mayor0, menor0 Como Entero
	
    Escribir "Ingrese una secuencia de n�meros terminada en cero:"
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
	
    Escribir "El n�mero mayor es:", mayor0
    Escribir "El n�mero menor es:", menor0
FinFuncion

//EJERCICIO 11
//Se definen las variables edad, peso y estatura como enteros para almacenar los datos de cada persona.
//Se definen las variables edadPromedio, pesoPromedio y estaturaPromedio como reales para calcular los promedios.
//Se definen las variables contadorEdad18_25 y contadorMayores36 como enteros para contar la cantidad de personas en diferentes rangos de edad.
//Se define la variable sumaPeso18_35 como real para acumular el peso de las personas con edades entre 18 y 35 a�os.
//Se define la variable cantidadPersonas como entero para contar la cantidad total de personas ingresadas.
//Se inicializan todas las variables en cero.
//Se muestra en pantalla el mensaje "Ingrese la edad, peso y estatura de cada persona (terminar con cero):" para solicitar al usuario que ingrese los datos de cada persona. El ingreso se detiene cuando se ingresa una edad igual a cero.
//Se inicia un bucle Repetir hasta que se ingrese una edad igual a cero.
//Dentro del bucle:
//Se leen los valores de edad, peso y estatura.
//Se verifica si la edad es diferente de cero, lo que indica que se ha ingresado un valor v�lido.
//Si la edad es diferente de cero:
//Se suman las edades, los pesos y las estaturas para calcular los promedios posteriormente.
//Se verifica si la edad est� entre 18 y 25 a�os. Si es as�, se incrementa el contador contadorEdad18_25.
//Se verifica si la edad es mayor a 36 a�os. Si es as�, se incrementa el contador contadorMayores36.
//Se verifica si la edad est� entre 18 y 35 a�os. Si es as�, se suma el peso a sumaPeso18_35.
//Se incrementa cantidadPersonas en 1 para contar la cantidad total de personas ingresadas.
//Se calculan los promedios dividiendo las sumas acumuladas (edadPromedio, pesoPromedio, estaturaPromedio) por la cantidadPersonas.
//Se muestra en pantalla el resultado de los c�lculos:
//"Edad promedio de todas las personas en la muestra:" seguido de edadPromedio.
//"Peso promedio de todas las personas en la muestra:" seguido de pesoPromedio.
//"Estatura promedio de todas las personas en la muestra:" seguido de estaturaPromedio.
//"Cantidad de personas con edad entre los 18 y 25 a�os:" seguido de contadorEdad18_25.
//"Cantidad de personas mayores a 36 a�os:" seguido de contadorMayores36.
//Se verifica si contadorEdad18_25 es mayor a cero.
//Si es as�, se calcula el promedio de peso para las personas con edades entre 18 y 35 a�os dividiendo sumaPeso18_35 por contadorEdad18_25. Luego se muestra en pantalla "Promedio de peso de las personas con edades entre 18 y 35 a�os:" seguido del valor calculado.
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
    Escribir "Cantidad de personas con edad entre los 18 y 25 a�os:", contadorEdad18_25
    Escribir "Cantidad de personas mayores a 36 a�os:", contadorMayores36
	
    Si contadorEdad18_25 > 0 Entonces
        promedioPeso18_35 = sumaPeso18_35 / contadorEdad18_25
        Escribir "Promedio de peso de las personas con edades entre 18 y 35 a�os:", promedioPeso18_35
    FinSi
	
FinFuncion

//EJERCICIO 12
//Se definen las variables num, multiplicador y resultado como enteros.
//Se inicia un bucle Para con num desde 1 hasta 10 con un paso de 1. Este bucle se encargar� de iterar a trav�s de las tablas de multiplicar del 1 al 10.
//Dentro del bucle Para exterior:
//Se muestra en pantalla el encabezado "Tabla de multiplicar del X:", donde X es el valor actual de num.
//Se inicia otro bucle Para con multiplicador desde 1 hasta 10 con un paso de 1. Este bucle se encargar� de iterar a trav�s de los multiplicadores del 1 al 10.
//Dentro del bucle Para interior:
//Se calcula el resultado de la multiplicaci�n entre num y multiplicador.
//Se muestra en pantalla la expresi�n de multiplicaci�n num x multiplicador = resultado.
//Fin del bucle Para interior.
//Se muestra una l�nea vac�a para separar las tablas de multiplicar.
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
//Se muestra en pantalla el mensaje "Ingrese dos n�meros enteros:" para solicitar al usuario que ingrese dos n�meros enteros.
//Se leen los valores ingresados por el usuario y se almacenan en las variables a y b.
//Se inicializa la variable producto con el valor 0. Esta variable se utilizar� para almacenar el resultado de la multiplicaci�n.
//Se inicia un bucle Para con i desde 1 hasta b con un paso de 1. Este bucle se encargar� de realizar las sumas sucesivas.
//Dentro del bucle Para:
//Se realiza la operaci�n producto <- producto + a, que consiste en sumar el valor actual de a al valor acumulado en producto.
//Fin del bucle Para.
//Se muestra en pantalla el mensaje "El producto de X x Y es: Z", donde X y Y son los valores ingresados por el usuario en las variables a y b, respectivamente, y Z es el resultado almacenado en la variable producto.
Funcion  MultiplicacionPorSumasSucesivas()
    Escribir "Ingrese dos n�meros enteros:"
    Leer a, b
    producto <- 0
    Para i<-1 Hasta b Con Paso 1 Hacer
        producto <- producto + a
    FinPara
    Escribir "El producto de ", a, " x ", b, " es: ", producto
FinFuncion

//EJERCICIO 14
//Se muestra en pantalla el mensaje "Ingrese una serie de n�meros (0 para terminar):" para solicitar al usuario que ingrese una serie de n�meros. Se espera que el usuario ingrese n�meros separados por espacios y que termine la serie con el n�mero 0.
//Se lee el primer n�mero ingresado por el usuario y se almacena en la variable numero.
//Se inicializa la variable suma con el valor 0. Esta variable se utilizar� para acumular la suma de los n�meros ingresados.
//Se inicializa la variable cantidad con el valor 0. Esta variable se utilizar� para contar la cantidad de n�meros ingresados.
//Se inicia un bucle Mientras que se ejecutar� siempre que el valor de numero sea diferente de 0. Este bucle se encargar� de procesar los n�meros ingresados.
//Dentro del bucle Mientras:
//Se realiza la operaci�n suma <- suma + numero, que consiste en sumar el valor actual de numero al valor acumulado en suma.
//Se incrementa la variable cantidad en 1, para llevar la cuenta de la cantidad de n�meros ingresados.
//Se lee el siguiente n�mero ingresado por el usuario y se actualiza el valor de numero.
//Fin del bucle Mientras.
//Se calcula el promedio dividiendo la suma total de los n�meros (suma) entre la cantidad de n�meros ingresados (cantidad), y se almacena en la variable promedio.
//Se muestra en pantalla el mensaje "El promedio de la serie de n�meros ingresados es: " seguido del valor almacenado en la variable promedio.
Funcion  PromedioDeSerieDeNumeros()
    Escribir "Ingrese una serie de n�meros (0 para terminar):"
    Leer numero
    suma <- 0
    cantidad <- 0
    Mientras numero <> 0 Hacer
        suma <- suma + numero
        cantidad <- cantidad + 1
        Leer numero
    FinMientras
    promedio <- suma / cantidad
    Escribir "El promedio de la serie de n�meros ingresados es: ", promedio
FinFuncion

//EJERCICIO 15
//Se definen las variables dividendo, divisor, cociente y resto como enteros. Estas variables se utilizar�n para almacenar los valores necesarios durante la divisi�n entera.
//Se muestra en pantalla el mensaje "Ingrese el dividendo:" para solicitar al usuario que ingrese el valor del dividendo.
//Se lee el valor ingresado por el usuario y se almacena en la variable dividendo.
//Se muestra en pantalla el mensaje "Ingrese el divisor:" para solicitar al usuario que ingrese el valor del divisor.
//Se lee el valor ingresado por el usuario y se almacena en la variable divisor.
//Se inicializa la variable cociente con el valor 0. Esta variable se utilizar� para almacenar el cociente de la divisi�n entera.
//Se inicializa la variable resto con el valor del dividendo. Esta variable se utilizar� para almacenar el resto de la divisi�n entera.
//Se inicia un bucle Mientras que se ejecutar� siempre que el valor de resto sea mayor o igual que el valor del divisor. Este bucle se encargar� de realizar las divisiones parciales.
//Dentro del bucle Mientras:
//Se realiza la operaci�n resto <- resto - divisor, que consiste en restar el valor del divisor al valor actual de resto.
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
	menuSelectivas[0] = "  1)Convertir a expresi�n matem�tica"
	
	menuSelectivas[1] = "  2)Calcular la suma, resta, multiplicaci�n, divisi�n y m�dulo."

	menuSelectivas[2] = "  3)Hacer una aplicaci�n que calcule la resolvente"

	menuSelectivas[3] = "  4)Calcular la hipotenusa de un triangulo"
	
	menuSelectivas[4] = "  5)Dado un (1) n�mero, imprimir 0 si es par y 1 si es impar"
	
	menuSelectivas[5] = "  6)Numero binario"
	
	menuSelectivas[6] = "  7)Unidades,decenas,centenas y unidades de mil."

	menuSelectivas[7] = "  8)Digito o una consonante o un car�cter especial."
	
	menuSelectivas[8] = "  9)Caracteres  igual, mayor o menor que el segundo"
	
	menuSelectivas[9] = "  10)Frase en may�scula y minuscula "
	
	menuSelectivas[10]= "  11)Salir"
	
	//ejercicios condicionales
	menuCondicionales[0] = "  1)Numeros divisibles"
	
	menuCondicionales[1] = "  2)Numero escapicua"
	
	menuCondicionales[2] = "  3)Equivalente en minutos, horas y d�as"
	
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

	menuIterativas[5]= "6)N�mero es perfecto"
	
	menuIterativas[6]= "7)N�mero primo."
  
	menuIterativas[7]= "8)Calculo de funcion factorial"
   
	menuIterativas[8]= "9)Dado un n�mero entero N que representa una contrase�a "
	
	menuIterativas[9]= "10)Secuencia de n�meros terminada en cero "
	
	menuIterativas[10]="11)Secuencias terminadas en 0 "
	
	menuIterativas[11]="12)Tabla de multiplicacion del 10"
	
	menuIterativas[12]="13)Multiplicacion de dos n�meros por medio de sumas sucesivas"
	
	menuIterativas[13]="14)Dados N n�mero positivos (N>1) calcular el promedio de esta serie"
	
	menuIterativas[14]="15)Division de dos n�meros por medio de restas sucesivas"
	
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
						Escribir "Convertir a expresi�n matem�tica"
						Convertir_expresionMatematica()
						Esperar 6 Segundos
					"2":
						Escribir "Calcular la suma, resta, multiplicaci�n, divisi�n y m�dulo"
						MenuOperaciones()
						Esperar 6 Segundos
					"3":
						Escribir "Hacer una aplicaci�n que calcule la resolvente"
						Aplicacion_resolvente()
						Esperar 6 Segundos
					"4":
						Escribir "Calcular la hipotenusa de un triangulo"
						CalcularHipotenusa()
						Esperar 6 Segundos
					"5":
						Escribir "Dado un (1) n�mero, imprimir 0 si es par y 1 si es impar"
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
						Escribir "Digito o una consonante o un car�cter especial"
						Indicar_digito_consonante_caracterespecial()
						Esperar 6 Segundos
					"9":
						Escribir "Caracteres  igual, mayor o menor que el segundo"
						Indicarcaracterigual_mayor_menor()
						Esperar 6 Segundos
					"10":
						Escribir "Frase en may�scula y minuscula"
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
						A�oBisiesto()
						Esperar 6 Segundos
					"2":
						Escribir "Numero capicua"
						numeroCapicua()
						Esperar 6 Segundos
					"3":
						Escribir "Equivalente en minutos, horas y d�as"
						minutoshorasd�as()
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
						Escribir "N�mero es perfecto"
						numeroperfecto()
						Esperar 6 Segundos
					"7":
						Escribir "N�mero primo"
						numeroprimo()
						Esperar 6 Segundos
					"8":
						Escribir "Calculo de funcion factorial"
						factorial()
						Esperar 6 Segundos
					"9":
						Escribir "Dado un n�mero entero N que representa una contrase�a"
						VerificarContrase�a()
						Esperar 6 Segundos
					"10":
						Escribir "Secuencia de n�meros terminada en cero "
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
						Escribir "Multiplicacion de dos n�meros por medio de sumas sucesivas"
						MultiplicacionPorSumasSucesivas()
						Esperar 6 Segundos
					"14":
						Escribir "Dados N n�mero positivos (N>1) calcular el promedio de esta serie"
						PromedioDeSerieDeNumeros()
						Esperar 6 Segundos
					"15":
						Escribir "Division de dos n�meros por medio de restas sucesivas"
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
