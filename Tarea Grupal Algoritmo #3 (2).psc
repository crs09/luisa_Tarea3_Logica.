
//funciones de las presentaciones de los menus
funcion opc<-presentar_menu(arreglo,limite,aqui)
	
	//se reutiliza varias veces la funcion para q presente los menus
	para i=0 hasta limite con paso 1 Hacer
		Escribir arreglo[i]
	FinPara
	
	Escribir "         Ingrese una opcion del [1  -  ",aqui,"]" Sin Saltar
	leer opc
	
FinFuncion

//--------------------------------************ FUNCIONES DEL MENU NUMEROS*****************--------------------------------//



//----------------------Funcion ejercicio 1 del menu nuemeros
funcion colas
	
	//datos de entrada:
	definir cant como entero
	definir costo,subtotal,iva,total como real
	Escribir "                      Ingrese la cantidad de colas"Sin Saltar
	leer cant
	
	//se determina el costo por cantida de colas
	Si cant > 23 Entonces
		costo=0.50
	SiNo
		costo=0.50*0.20+(0.50)
	FinSi
	
	//se calcula
	subtotal=costo*cant
	iva=subtotal*0.12
	total=subtotal+iva
	
	//se presenta:
	Escribir ""
	Escribir "                      ------------------------------- "
	Escribir "                          Cantidad      :  ",cant
	Escribir "                          Costo Unidad  : $",costo
	Escribir "                      ------------------------------- "
	Escribir "                          Subtotal      : $",subtotal
	Escribir "                          (+)Iva 12%    : $",iva
	Escribir "                      ------------------------------- "
	Escribir "                          Total a pagar : $",total
	Escribir "                      ------------------------------- "
	
FinFuncion


//-----------------------------------funcion ejercicio 2 del menu numeros
funcion kilo_uva
	
	//Entrada de datos:
	definir tamaño,precio,total,inicial como real
	definir tipo como Cadena
	definir kilo como entero
	inicial=2.50
	
	Escribir "                       Ingrese el kilo de uva    "Sin Saltar
	leer kilo
	Escribir "                       Ingrese el tamaño [1 - 2] "Sin Saltar
	leer tamaño
	Escribir "                       Ingrese el tipo [A - B]   "Sin Saltar
	leer tipo
	
	//convierto la letra pedida en mayuscula
	tipo= Mayusculas(tipo)
	
	//se clasifica el tipo segun el ejercicio
	Si tipo="A" Entonces
		si tamaño=1 Entonces
			precio=(inicial*0.20)+inicial
		SiNo
			si tamaño=2 Entonces
				precio=(inicial*0.30)+inicial
			FinSi
		FinSi
	FinSi
	
	Si tipo="B" Entonces
		si tamaño=1 Entonces
			precio=(inicial*0.30)+inicial
		sino
			si tamaño=2 Entonces
				precio=(inicial*0.50)+inicial
			FinSi
		FinSi
	FinSi
	
	total=precio*kilo	
	
	//Se presenta:
	Escribir ""
	Escribir "                       -----------------------------"
	Escribir "                         Kilos de uva    : ","[ ",kilo," ]"
	Escribir "                         Tipo            : ","[ ",tipo," ]"
	Escribir "                         Tamaño          : ","[ ",tamaño," ]"
	Escribir "                       -----------------------------"
	Escribir "                         Precio por kilo : $ ",precio
	Escribir "                       -----------------------------"
	Escribir "                         Total a pagar   : $ ",total
	Escribir "                       -----------------------------"
FinFuncion

//------------------------------------------Funcion del ejercicio 3 del menu nuumeros
funcion residuo
	
	//datos de entrada
	definir num1,num2 Como Entero
	
	Escribir "                       Ingrese el primer número : "Sin Saltar
	Leer num1
	Escribir "                       Ingrese el segundo número: "Sin Saltar
	Leer num2
	
	Mientras num1 >= num2 Hacer
		//se calcula el residuo 
		num1 = num1 - num2
	Fin Mientras
	
	//se presenta:
	Escribir "                             El residuo es: ","[ ",num1," ]"
FinFuncion


//----------------------------------------funcion del el ejercicio 4 del menu numeros
funcion costo_cita 
	
	//Datos de entrada
	definir cita como entero
	
	Escribir "                       Ingrese el numero de cita"Sin Saltar
	leer cita
	
	//se condicionaliza para determinar el costo
	si cita <= 3 Entonces
		costo=200
	sino 
		si cita <= 5 Entonces
			costo = 150
		SiNo
			si cita <= 8 Entonces
				costo=100
			sino
				costo = 50
			FinSi
		FinSi
	FinSi
	
	//se calcula:
	total= (200*3) + (150*2) + (100*3) + ((cita - 8) * 50)
	
	//salida:
	Escribir ""
	Escribir "                       Costo de la consulta  : $ ",costo
	Escribir "                       Costo del tratamiento : $ ",total
	
	
FinFuncion

//------------------------------------funciones del ejercicio 5 del menu numeros
Funcion mitad_y_divisor
	
	//entrada de datos:
	definir num1,num2,num3,num4 Como Entero
	Escribir "                          Ingrese el primer numero"Sin Saltar
	leer num1
	Escribir "                          Ingrese el segundo numero"Sin Saltar
	leer num2
	Escribir "                          Ingrese el tercer numero"Sin Saltar
	leer num3
	Escribir "                          Ingrese el cuarto numero"Sin Saltar
	leer num4
	
	divisor_mitad_doble_(num1,num2,num3,num4,"mitad","divisor")
	
	
FinFuncion

funcion divisor_mitad_doble_(num1,num2,num3,num4,tipo1,tipo2)
	
	si num1/2 = num2 Entonces
		Escribir ""
		Escribir "                  El numero ","[",num1,"]"," es ",tipo1," del numero ","[",num2,"]"
	SiNo
		Escribir ""
		Escribir "                  El numero ","[",num1,"]"," no es ",tipo1," del numero ","[",num2,"]"
	FinSi
	
	si  num3 mod num4 = 0 Entonces
		Escribir ""
		Escribir "                  El numero ","[",num3,"]"," es ",tipo2," del numero ","[",num4,"]"
	SiNo
		Escribir ""
		Escribir "                  El numero ","[",num3,"]"," no es ",tipo2," del numero ","[",num4,"]"
	FinSi
	
FinFuncion

//----------------------------------------funciones del ejercicio 6 del menu numeros
funcion limite_tarjeta
	//Entrada de datos
	definir tipo,adicional,valor1,valor2,valor3,valor4 como entero
	adicional=20
	Escribir "                         Ingrese el tipo de tarjeta" Sin Saltar
	leer tipo
	
	//se llama a la funcion
	aumento<-ejercicio6(tipo,25,35,40,50)
	
	//se presenta
	Escribir ""
	Escribir "                         Tipo de tarjeta : ","[ ",tipo," ]"
	Escribir "                         Aumento del ",aumento,"%"," a su tarjeta"
	Escribir "                         (+) Adicional   : $",adicional
FinFuncion

Funcion aumento<-ejercicio6(tipo,valor1,valor2,valor3,valor4)
	
	si tipo = 1 Entonces
		aumento= valor1
	sino
		si tipo = 2 Entonces
			aumento = valor2
		SiNo
			si tipo=3 Entonces
				aumento = valor3
			SiNo
				si tipo > 3 Entonces
					aumento = valor4
				SiNo
					Escribir "                         [ Tipo de tarjeta incorrecto ]"
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

//------------------------------------funcione del ejercicio 7 del menu numeros
Funcion doble_y_divisor
	
	//Entrada:
	Escribir "                        Ingrese el primer numero "Sin Saltar
	leer num3
	Escribir "                        Ingrese el segundo numero"Sin Saltar
	leer num1
	Escribir "                        Ingrese el tercer numero "Sin Saltar
	leer num4
	Escribir "                        Ingrese el cuarto numero "Sin Saltar
	leer num2
	
	//se reutiliza la funcion del ejercicio 5
	divisor_mitad_doble_(num1,num2,num3,num4,"doble","divisor")

FinFuncion

//------------------------------------funcion del ejercicio 8 del menu numeros
Funcion aumento_tarjeta
	
	//Entrada de datos:
	definir tipo,adicional,valor1,valor2,valor3,valor4 Como Entero
	adicional=10
	Escribir "                          Ingrese el tipo de tarjeta"Sin Saltar
	leer tipo
	
	//se reutiliza la funcion del ejercicio 6
	aumento<-ejercicio6(tipo,100,200,300,500)
	
	//se presenta
	Escribir ""
	Escribir "                            Tipo de tarjeta : ","[ ",tipo," ]"
	Escribir "                            Aumento de $",aumento," a su tarjeta"
	Escribir "                            (+) Adicional   : ",adicional,"%"
	
FinFuncion

//-----------------------------------funcion del ejercicio 9 del menu numeros

Funcion negativo_impar
	
	//entrada de datos:
	definir num como entero
	Escribir "                          Ingrese un numero"Sin Saltar
	leer num
	
	//se condicionaliza segun lo solicita el ejercicio
	si num < -20 Entonces 
		Escribir "                   Su numero ","[ ",num," ]"," es menor que -20"
	SiNo
		si (num > 0 y num mod 2 = 0) Entonces
			Escribir "                     Su numero ","[ ",num," ]"," es positivo y par"
		sino  
			si ( num > 0 y num mod 2 = 1 y num mod 7 = 0) Entonces
				Escribir "        Su numero ","[ ",num," ]"," es positivo e impar y multiplo de siete"
			SiNo
				Escribir "Tu numero no es negativo ni menor a [-20] y tampoco es positivo par o impar multiplo de 7"
			FinSi
		FinSi
	FinSi
	
FinFuncion

//------------------------------------funcion del ejercicio 10 del menu numeros

Funcion venta_de_pitahaya
	
	//entrada de datos:
	definir subtotal,inicial,descuento,iva,total,precio como reales
	definir tamaño,kilo como entero
	definir tipo como cadena
	//se coloca el precio de la pitajaya por quintal
	inicial=200;tipo=""
	
	Escribir Sin Saltar"              Ingrese cuantos quintales de Pitahaya necesita"
	leer quintales
	Escribir Sin Saltar"              Ingrese el tamaño [1 - 2]"
	leer tamaño
	Escribir Sin Saltar"              Ingrese el tipo [Amarilla o Colorada]"
	leer tipo
	
	//se pone todas las letras de (tipo ) en mayuscula
	tipo= Mayusculas(tipo)
	
	//tipo amarailla
	si tipo="AMARILLA" Entonces
		si tamaño = 1 Entonces
			precio = inicial+10
		SiNo
			si tamaño = 2 Entonces
				precio = inicial*0.15 +(inicial+5)
			FinSi
		FinSi
	FinSi
	
	//Tipo colorada
	Si tipo = "COLORADA" Entonces
		si tamaño = 1 Entonces
			precio=inicial-20
		SiNo
			si tamaño = 2 Entonces
				precio= inicial*0.20+(inicial+5)
			FinSi
		FinSi
	FinSi
	
	//se calcula
	subtotal= precio * quintales
	sub_descuento= subtotal * 0.05
	sub_descuento1= subtotal-sub_descuento
	iva = sub_descuento1 * 0.12
	total=sub_descuento1 + iva
	
	//Salida:
	Escribir ""
	Escribir "                     --------------------------------"
	Escribir "                     Tamaño            : ","[ ",tamaño," ]"
	Escribir "                     Tipo              : ","[ ",tipo," ]"
	Escribir "                     Quintales         : ",quintales
	Escribir "                     Precio (1 Quintal): $ ",precio
	Escribir "                     --------------------------------"
	Escribir "                     Subtotal          : $ ",subtotal
	Escribir "                     (-) Descuento 5%  : $ ",sub_descuento
	Escribir "                     (+) Iva 12%       : $ ",iva
	Escribir "                     --------------------------------"
	Escribir "                     Total             : $ ",total
	
FinFuncion

//------------------------------------funcion del ejercicio 11 del menu numeros
Funcion menor_negativo_divisible
	
	//entrada de datos:
	definir num como entero
	Escribir "                         Ingrese un numero"Sin Saltar
	leer num
	
	//se condiciona segun lo solicita el ejercicio
	
	si (num < 10) y (num mod 2 = 0) Entonces
		Escribir "           El numero ","[ ",num," ]"," es par y menor que 10"
	SiNo
		Escribir "           El numero ","[ ",num," ]"," no es par ni menor que 10"
	FinSi
	
	si (num < 1 ) y (num mod 2 = -1) y (num mod 5 = 0) Entonces
		Escribir "           El numero ","[ ",num," ]"," es negativo e impar y divisible para 5"
	SiNo
		Escribir "           El numero ","[ ",num," ]"," no es negativo e impar y divisible para 5"
	FinSi
	
FinFuncion

//------------------------------------funcion del ejercicio 12 del menu numeros
Funcion calculo_materia
	
	//Entrada de datos:
	definir clave Como Entero
	definir precio_venta,costo_produccion,materia_prima,mano_obra,gasto_fabricacion Como Reales
	
	Escribir "                  Ingrese la clave del articulo [1 - 6]"Sin Saltar
	leer clave
	Escribir "                  Ingrese la materia prima"Sin Saltar
	leer materia_prima
	
	//se llama a la funcion
	mano_obra<-calcular_obra(clave,materia_prima)
	
	//se llama a la funcion
	gasto_fabricacion<-calcular_fabricacion(clave,materia_prima)
	
	//se clacula con los valores retornados
	costo_produccion= materia_prima+mano_obra+gasto_fabricacion
	
	//se llama a la funcion
	sub_precio_venta<-calcular_precio(costo_produccion)
	
	//se calcula el precio de venta con los valores retornados
	precio_venta=costo_produccion+sub_precio_venta
	
	//se presenta:
	Escribir ""
	Escribir "               -----------------------------------------------"
	Escribir "                    Clave                       : ","[ ",clave," ]"
	Escribir "                    Materia Prima               : $ ",materia_prima
	Escribir "                    Mano de obra                : $ ",mano_obra
	Escribir "                    Gasto de fabricacion        : $ ",gasto_fabricacion
	Escribir "               -----------------------------------------------"
	Escribir "                    Costo de produccion         : $ ",costo_produccion
	Escribir "                    (+) Costo de produccion 45% : $ ",sub_precio_venta
	Escribir "               -----------------------------------------------"
	Escribir "                    Precio de venta             : $ ",precio_venta
	Escribir "               -----------------------------------------------"
	
FinFuncion

funcion mano_obra<-calcular_obra(clave,materia_prima)
	
	//se condicionaliza la clave
	si clave =3 o clave = 4 Entonces
		mano_obra=materia_prima*0.75
	SiNo
		si clave = 1 o clave = 5 Entonces
			mano_obra=materia_prima*0.80
		SiNo
			si clave = 2 o clave = 6 Entonces
				mano_obra=materia_prima*0.85
			SiNo
				Escribir ""
				Escribir "                   [ Clave ingresada es incorrecta! ]"
			FinSi
		FinSi
	FinSi
FinFuncion

funcion gasto_fabricacion<-calcular_fabricacion(clave,materia_prima)
	
	//se condicionaliza la clave 
	si clave = 2 o clave = 5 Entonces
		gasto_fabricacion=materia_prima*0.30
	SiNo
		si clave = 3 o clave = 6 Entonces
			gasto_fabricacion=materia_prima*0.35
		SiNo
			si clave = 1 o clave = 4 Entonces
				gasto_fabricacion=materia_prima*0.28
			SiNo
				Escribir "                   [ Clave ingresada es incorrecta! ]"
			FinSi
		FinSi
	FinSi
FinFuncion

funcion sub_precio_venta<-calcular_precio(costo_produccion)
	//Precio de venta = costo de producción + 45 % de costo de producción. 
	sub_precio_venta=costo_produccion*0.45
FinFuncion

//--------------------------------------funcion del ejercicio 13 del menu numeros
Funcion cuenta_digitos
	
	//entrada de datos:
	Escribir "                   Ingrese cualquier numero entero"Sin Saltar
	leer num
	
	//se hace el conteo de digitos
	Mientras num>0 Hacer
		num=trunc(num/10)
		cont=cont+1
	FinMientras
	
	//se presenta:
	Escribir ""
	Escribir "                     Su numero tiene ","[ ",cont," ]"," digitos."
	
FinFuncion

//----------------------------funcion del ejercicio 14 del menu numeros

Funcion numero_capicua
	definir num,digito,copia_,reves Como reales
	
	Escribir "                      Escribir ingrese una cantidad"Sin Saltar
	leer num
	copia_=num
	reves=0
	digito=0
	
	//se verifica que el numero sea capicua
	mientras copia_ > 0 Hacer
		digito = copia_ mod 10
		reves = reves * 10 + digito
		copia_ = trunc(copia_ / 10 )
	FinMientras
	
	Escribir ""
	//se verifica si la variable reves es igual a la variable num y se presenta
	Si reves = num Entonces
		Escribir "                         Tu numero ","[ ",num," ]"," es capicua."
	sino
		Escribir "                         Tu numero ","[ ",num," ]"," no es capicua."
	FinSi

FinFuncion

//----------------------------funcion del ejercicio 15 del menu numeros

funcion divisores
	
	//Entrada:
	definir num,divisor_ como reales
	
	Escribir  "                      Ingrese el divisor"Sin Saltar
	leer num
	
	//se verifica los divisores de cuyo numero
	Escribir ""
	Escribir "                      Divisores:"
	
	suma<-divisores_numeros(num)
	
FinFuncion

Funcion suma<-divisores_numeros(num)
	cont=0
	suma=0
	para i=1 hasta num con paso 1 Hacer
		
		si (num mod i)=0 Entonces
			Escribir "                                   [ ",i," ] "
			suma=suma+i
			cont=cont+1
		FinSi
		
	FinPara

FinFuncion

//----------------------------funcion del ejercicio 16 del menu numeros

Funcion suma_divisores
	
	//entrada de datos:
	definir num,suma Como reales
	Escribir sin saltar "                           Ingrese el numero"
	leer num
	Escribir ""
	
	suma<-divisores_numeros(num)
	
	Escribir ""
	Escribir "                     La suma de los divisores es: ",suma
	
FinFuncion

//----------------------------funcion del ejercicio 17 del menu numeros

Funcion cantidad_divisores
	
	//Entrada de datos:
	definir num,cont Como Entero
	cont=0
	Escribir "                         Ingrese el numero" Sin Saltar
	leer num
	
	cont<-calcular_divisores(num)
	
	//se presenta:
	Escribir ""
	Escribir "                 El numero ingresado tiene ","[ ",cont," ]"," divisores"
	
FinFuncion

funcion cont<-calcular_divisores(num)
	
	//se hace el conteo de los divisores
	para i=1 hasta num con paso 1 Hacer
		
		si (num mod i)=0 Entonces
			
			cont=cont+1
			
		FinSi
		
	FinPara
	
FinFuncion
//----------------------------funcion del ejercicio 18 del menu numeros

Funcion numero_perfecto
	
	//entrada de datos:
	Escribir "                            Ingrese el numero"Sin Saltar
	leer num
	
	acum<-ejercicio18(num)
	
	Escribir ""
	// se comprueba que la suma de los divisores sea igual al numero ingresado y se presenta
	si acum = num Entonces
		Escribir "                        El numero ","[ ",num," ]"," es perfecto"
	SiNo
		Escribir "                        El numero ","[ ",num," ]"," no es perfecto"
	FinSi
	
FinFuncion

Funcion acum<-ejercicio18(num)
	
	//se comprueba los divisores y se acumula suma de ellos
	para i=1 hasta num-1 Hacer
		si num mod i = 0 Entonces
			
			acum =acum+i
			
		FinSi
	FinPara
	
FinFuncion
//----------------------------funcion del ejercicio 19 del menu numeros

Funcion numero_primo
	
	//datos de entrada:
	definir num como entero
	Escribir "                            Ingrese el numero" Sin Saltar
	leer num
	
	//se reutiliza la funcion del ejercicio 17
	cont<-calcular_divisores(num)
	
	//se comprueba que el numero sea primo
	Escribir ""
	Si cont=2 Entonces
		Escribir "                          Su numero ","[ ",num," ]"," es primo."
	SiNo
		Escribir "                          Su numero ","[ ",num," ]"," no es primo."
	FinSi
FinFuncion

//----------------------------funcion del ejercicio 20 del menu numeros

Funcion primos_gemelos
	
	//Entrada de datos:
	definir num1,num2 como entero
	definir primo1,primo2 Como Logico
	primo1=verdadero;primo2=Verdadero
	Escribir "                        Ingrese el primer numero "Sin Saltar
	leer num1
	Escribir "                        Ingrese el segundo numero"Sin Saltar
	leer num2
	
    //se comprueba si el primer numero es primos
	Para i=2 hasta num1-1 con paso 1 Hacer
		
		si num1 mod i =0 Entonces
			
			primo1=falso
			
		FinSi
		
	FinPara
	
	//se comprueba que el segundo numero sea primo
	Para i=2 hasta num2-1 con paso 1 Hacer
		
		si num2 mod i =0 Entonces
			
			primo2=falso
			
		FinSi
		
	FinPara
	
	Escribir ""
	//se condicionaliza y se presenta
	Si abs(num1-num2)=2 y primo1 y primo2 Entonces
		Escribir "             El numero ","[ ",num1," ]"," y el numero ","[ ",num2," ]"," son primos gemelos"
	SiNo
		Escribir "             El numero ","[ ",num1," ]"," y el numero ","[ ",num2," ]"," no son primos gemelos"
	FinSi
	
FinFuncion

//----------------------------funcion del ejercicio 20 del menu numeros

Funcion primos_amigos
	
	//entrada de datos
	definir num1,num2,num Como Entero
	Escribir "                 Ingrese el primer numero"Sin Saltar
	leer num
	
	//se reutiliza la funcion del ejercicio 18 
	acum<-ejercicio18(num)
	//se almacena la informacion de acum en num1
	num1=acum
	
	Escribir "                Ingrese el segundo numero"Sin Saltar
	leer num
	
	//se reutiliza la funcion del ejercio 18 
	acum<-ejercicio18(num)
	//se almacena la informacion de acum en num2
	num2=acum
	
	//se condiciona y se presenta
	Escribir ""
	si num1=num2 Entonces
		Escribir "                Los numeros ingresados son primos amigos"
	SiNo
		Escribir "                Los numeros ingresados no son primos amigos"
	FinSi
	
FinFuncion

//--------------------------------************ FUNCIONES DEL MENU ARREGLOS*****************--------------------------------//

//----------------------------funcion del ejercicio 1 del menu arreglos

funcion ejercicio1
	
	Definir n, i, num Como reales
	Escribir "                      Ingrese el valor de n:"Sin Saltar
	Leer n;
	num <- 2;
	Escribir ""
	Escribir "                                 ",num
	Para i<-1 Hasta n Hacer
		Escribir "                                 ",num 
		num <- num * num;
	Fin Para
	
fin funcion 

//----------------------------funcion del ejercicio 2 del menu arreglos

funcion ejercicio2(n)
	// BOSQUEJO
	// ENTR: definir num,j  Como Entero
	// creamos un arreglo para q guarde en la variable q va ingresar el usuario en " num "
	// mandamos esa variable a la funcion //ejercicio1(num) <- ejercicio2(n)
	// ENTR: definir sumapares, sumaimpares, promediopares, promedioimpares, arreglo,pares, impares, contadorpares, contadorimpares,i como real 
	// PROCESO: utilisamos la estructura (para) para hacer el procesooo, de calcular el promedio de los numeros pares e impares y la suma de los pares 
	// creamos arreglos para guadar los pares y impares 
	// SALIDA: escribir " el promedio de los numeros impares es:promediopares    escribir " el promedio de los numeros impares es: " promedioimpares 
	//  SALIDA: escribir " la suma de numeros pares ingresados es : " sumaimpares
	
	definir sumapares, sumaimpares, promediopares, promedioimpares, arreglo,pares, impares, contadorpares, contadorimpares,i como real 
	contadorpares <- 0
	contadorimpares <- 0
	sumapares <- 0 
	sumaimpares <- 0 
	dimension arreglo(n)
	dimension pares[10]
	dimension impares[10]
	
	para i <- 0 hasta n-1 hacer 
		escribir "                       Ingrese el elemento " i ": " Sin Saltar
		leer arreglo(i)
		si arreglo[i] MOD 2 = 0 entonces
			pares(contadorpares) <- arreglo[i]
			contadorpares <- contadorpares+1
			sumapares <- sumapares+ arreglo[i]
			
		FinSi
		si arreglo[i] mod 2 <> 0 entonces 
			impares(contadorimpares)<- arreglo[i]
			contadorimpares <- contadorimpares+1
			sumaimpares <- sumaimpares + arreglo[i]
		FinSi
	FinPara
	Escribir ""
	si contadorpares > 0 entonces 
		promediopares<- sumapares / contadorpares
		
		escribir "               El promedio de los numeros pares es:  " promediopares
	FinSi
	si contadorimpares> 0 Entonces
		promedioimpares<- sumaimpares/contadorimpares
		
		escribir "               El promedio de los numeros impares es:  " promedioimpares 
	FinSi
	escribir "               La suma de numeros pares ingresados es : " sumaimpares
	
FinFuncion

//----------------------------funcion del ejercicio 3 del menu arreglos

funcion ejercicio3
	
	Definir n, i, secuencia Como Entero;
	Escribir "                     Por favor, ingrese un número:"Sin Saltar
	Leer n;
	secuencia <- 20;
	Escribir "                                Secuencia: ", secuencia;
	Escribir ""
	Para i <- 1 Hasta n Hacer
		Si i mod 2 = 0 Entonces
			secuencia <- 5 - secuencia;
		Sino
			secuencia <- 10 - secuencia;
		FinSi
		Escribir "                                   ",secuencia;
	FinPara
	
FinFuncion

//----------------------------funcion del ejercicio 4 del menu arreglos

funcion ejercicio4(nu)
	// ENTR:definir num como entero VARIABLES DE LA FUNCION: definir  arreglo,i, posi,nega,contadorp, contadorN,num Como Entero
	// Proceso: creamos un arreglo con la variable (NUM)
	// utilizamos las estructuras ( para )  y ( si )
	// Salisa: mostramos los numeros negativos y positivos por separado 
	definir  arreglo,i, posi,nega,contadorp, contadorN,num Como Entero
	dimension posi[10]
	dimension nega[10]
	Dimension arreglo[nu]
	

	para i <- 0  hasta nu-1 con paso 1 hacer 
		escribir "            ingrese los numero positivos y negativos que desee "Sin Saltar
		leer arreglo[i]
	FinPara
	para i <- 0 hasta nu-1 con paso 1 hacer 
		si arreglo[i] > 0 Entonces
			
			posi[contadorp] <- arreglo[i]
			contadorp <-  contadorp + 1
		FinSi
		
		si arreglo[i] < 0 Entonces
			
			nega[contadorN] <- arreglo[i]
			contadorN <- contadorN + 1
			
		fin si
		
	FinPara
	
	Escribir ""
	para i <- 0 hasta contadorp-1 con  paso 1 
		escribir"                          numeros positivos :" posi[i]
	FinPara
	para i <- 0 hasta contadorN-1 con paso 1 
		escribir "                         numeros  negativos : " nega[i]
	FinPara

FinFuncion

//----------------------------funcion del ejercicio 5 del menu arreglos

funcion ejercicio5(nume)
	
	// ENTR: definir num como 	entero 
	// ENTRA nuevas varibales para la tarea  (definir numeron, paressuma, contmultiplos3,i, arreglo como entero )
	//  PROCESO: creamos un arreglo para la variable (num)
	// mandamos la varibale (NUM) a la funcion ejercicio5(nume
	// le pedimos al usuario q ingrese los numeros y los guadamos en el arreglo[i]
	// utilizamos laS estrutura (PARA) y (SI) para hacer el proceso 
	// SALIDA:escribir" se detuvo  la entrada de numeros "  escribir " los numero ingresados son:" ARREGLO[I]
//	escribir " la suma de los pares es: " paressuma
//	escribir " la cantidad de los multiplos de 3  es : " contmultiplos3
	
	
	
	definir numeron, paressuma, contmultiplos3,i, arreglo como entero 
	paressuma<- 0
	contmultiplos3<-0
	Dimension arreglo(nume)
Escribir ""
	para i=0 hasta nume-1 con paso 1 hacer 
		escribir "                          ingrese los numeros "Sin Saltar
		leer arreglo[i]
		si arreglo[i] < 0
			escribir"                      se detuvo  la entrada de numeros "
			
		FinSi
		
		si arreglo[i] mod 2 = 0 
			paressuma=paressuma+arreglo[i]
		FinSi
		
		si arreglo[i] mod 3 = 0 
			contmultiplos3<-contmultiplos3+1
		FinSi
	FinPara
	escribir "                          los numero ingresados son:" 
	Escribir "                             [ "Sin Saltar
	para i = 0 hasta nume-1 con paso 1 Hacer
		escribir arreglo[i],","Sin Saltar
	FinPara
	Escribir " ]"
	Escribir ""
	escribir "                        la suma de los pares es: " paressuma
	escribir "                  la cantidad de los multiplos de 3  es : " contmultiplos3
	
FinFuncion

//----------------------------funcion del ejercicio 6 del menu arreglos

Funcion suma_cuadrado
	
	//entrada:
	definir num como entero 
	dimension numeros_[100]
	Escribir "                     Puede ingresar [0] para terminar"
	cont=1
	num=1
	
	//sEl usuario ingresa los numeros y lo trasladamos al arreglo
	//mientras hacemos un conteo de la cantidad de los numeros ingresados
	Mientras num > 0 Hacer
		
		Escribir "                            Ingrese el numero"Sin Saltar
		leer num
		numeros_[cont]=num
		cont=cont+1
		
	FinMientras
	Limpiar Pantalla
	//definimos la arreglo q tendra los numeros elevados al cuadrado
	dimension potencia[cont]
	
	
	//Calculamos los numeros ingresados al cuadrado
	Para i=1 hasta cont-1 con paso 1 Hacer
		
		potencia[i]=numeros_[i]*numeros_[i]
		
	FinPara
	
	
	//Presentamos los numeros originales ingresados por el usuario
	Escribir ""
	Escribir "                             Numeros ingresados"
	Escribir "                              [ "sin saltar
	Para i=1 hasta cont-2 con paso 1 hacer
		
		Escribir numeros_[i],","Sin Saltar
		
	FinPara
	Escribir " ]"
	
	sumapotencia=0
	//presentamos los numeros elevados al cuadrado
	Escribir ""
	Escribir "                            Numeros al cuadrado"
	Escribir "                             [ "Sin Saltar
	Para i=1 hasta cont-2 con paso 1 Hacer
		
		Escribir potencia[i],","Sin Saltar
		sumapotencia=sumapotencia+potencia[i]
	FinPara
	Escribir " ]"
	
	Escribir ""
	//se presenta la suma de los numeros elevados al cuadrado
	Escribir "                Suma de los numeros elevados al cuadrado : ","[ ",sumapotencia," ]"
	
FinFuncion


//----------------------------funcion del ejercicio 7 del menu arreglos

Funcion mayores_multiplos

	definir num,j,mayores,numeros_ como entero
	Dimension numeros_[100]
	cont=1
	num=1
	//se lee los numeros ingresados por el usuario y si llega ha introducir un numero par terminara el bucle
	Escribir "              Puede ingresar un numero [par] para terminar"
	mientras (num mod 2) = 1 Hacer
		
		Escribir "                           Ingrese el numero "Sin Saltar
		leer num
		numeros_[cont]=num
		cont=cont+1
	FinMientras
	Limpiar Pantalla
	
	//presento los numeros ingresados
	Escribir ""
	Escribir "                        Numeros ingresados"
	Escribir "                         [ "Sin Saltar
	Para i=1 hasta cont-1 con paso 1 Hacer
		
		Escribir numeros_[i],","Sin Saltar
		
	FinPara
	Escribir " ]"
	
	Para i=1 hasta cont-1 con paso 1 Hacer
		
		si numeros_[i]>5 Entonces
			j=j+1
		FinSi
		
	FinPara
	
	//le coloco el tamoño al arreglo
	dimension mayores_[j]
	
	//redefino el valor de la variable
	j=0
	
	//Se calcula los numeros mayores a cinco
	Para i=0 hasta cont-1 con paso 1 Hacer
		
		si numeros_[i] > 5 Entonces
			//le coloco los valores mayores a 5 al nuevo arreglo
			mayores_[j]=numeros_[i]
			j=j+1
		FinSi
		
		si numeros_[i] mod 5 = 0 Entonces
			//calculo los numeros multiplos de 5 y lo coloco en la varible multi
			multi=multi+numeros_[i]
			
		FinSi
		
	FinPara
	
	//presento los numeros mayores a cinco
	Escribir ""
	Escribir "                        Numeros mayores a 5"
	Escribir "                           [ "Sin Saltar
	para i=0 hasta j-1 con paso 1 Hacer
		
		Escribir mayores_[i],","Sin Saltar
		
	FinPara
	Escribir " ]"
	
	//presento la suma de los multiplos de 5
	Escribir ""
	Escribir "                Suma de los multiplos de cinco es: ",multi
	
FinFuncion

//----------------------------funcion del ejercicio 8 del menu arreglos

funcion cubo_suma
	
	//Entrada de datos 
	definir num,potencia,numeros_,sumapotencia Como Entero
	Dimension numeros_[100]
	cont=1
	num=1
	
	//relleno el arreglo con los numeros dados por el usuario
	Escribir "             Puede ingresar un numero negativo para terminar"
	Mientras num > 0 Hacer
		
		Escribir "                         Ingrese el numero "Sin Saltar
		leer num
		numeros_[cont]=num
		cont=cont+1
		
	FinMientras
	Limpiar Pantalla
	
	
	//presento los numeros ingresados por el usuario
	Escribir ""
	Escribir "                           Numeros ingresados"
	Escribir "                             [ "Sin Saltar
	Para i=1 hasta cont-2 con paso 1 Hacer
		
		Escribir numeros_[i],","Sin Saltar
		
	FinPara
	Escribir " ]"
	
	Dimension potencia[cont]
	//se cañcula los numeros ingresados y se los eleva al cubp y la suma de ellos
	Para i=1 hasta cont-2 hacer 
		
		potencia[i]=numeros_[i]^3
		
		sumapotencia=sumapotencia + potencia[i]
		
	FinPara
	
	//Presento los numeros elevados al cubo
	Escribir ""
	Escribir "                         Numeros elevados al cubo"
	Escribir "                           [ "Sin Saltar
	Para i=1 Hasta cont-2 con paso 1 Hacer
		
		Escribir potencia[i],","Sin Saltar
		
	FinPara
	Escribir " ]"
	
	//presento la suma de la potencia
	Escribir ""
	Escribir "                       Suma de la potencia es : ",sumapotencia
	
FinFuncion

//----------------------------funcion del ejercicio 9 del menu arreglos

Funcion palabra_frase
	
	//Entrada de datos
	definir frase como cadena
	definir palabra,lenght como entero
	Escribir "               Ingrese la frase "Sin Saltar
	leer frase
	
	//coloco el valor a la palabra [1] para que sume un espacio mas ya que la palabra siempre tendra un espacio mas 
	palabra=1
	//se calcula la longitud de la frase
	lenght=Longitud(frase)-1
	
	//se recorre la frase
	Para i=0 hasta lenght con paso 1 Hacer
		
		//se condiciona si la palabra tiene un espacion el contador suma uno 
		si Subcadena(frase,i,i)=" " Entonces
			
			palabra=palabra+1
			
		FinSi
		
	FinPara
	
	//se presenta
	Escribir ""
	Escribir "                          La frase tiene ",palabra," palabras"

FinFuncion

//----------------------------funcion del ejercicio 10 del menu arreglos

Funcion elementos_doble
	
	//entrada de datos
	definir doble,numeros_,cont,num Como Entero
	num=1
	dimension numeros_[100]
	cont=1
	
	//se pide al usuario que ingrese los numeros
	Escribir "             Puede ingresar un numero negativo para terminar"
	Mientras num > 0 Hacer
		
		Escribir "                           Ingrese el numero "Sin Saltar
		leer num
		numeros_[cont]=num
		cont=cont+1
		
	FinMientras
	Limpiar Pantalla
	
	//se define la dimension del arreglo
	Dimension doble[cont]
	
	//se calcula el doble del numero
	Para i=1 hasta cont-1 con paso 1 Hacer
		
		doble[i]= numeros_[i]*numeros_[i]
		
	FinPara
	
	//se presenta los numeros ingresados por el usuario 
	Escribir ""
	Escribir "                           Numeros ingresados "
	Escribir "                            [ "Sin Saltar
	Para i=1 hasta cont-2 con paso 1 Hacer
		
		Escribir numeros_[i],","Sin Saltar
		
	FinPara
	Escribir " ]"
	
	//se presenta los numeros al doble
	Escribir ""
	Escribir "                            Numeros al doble "
	Escribir "                           [ "Sin Saltar
	Para i=1 hasta cont-2 con paso 1 Hacer
		
		Escribir doble[i],","Sin Saltar
		
	FinPara
	Escribir " ]"
	
FinFuncion

//----------------------------funcion del ejercicio 11 del menu arreglos

Funcion caracteres_secuencia
	
	definir frase como cadena
	definir cont Como Entero
	frase=""
	dimension letras[100]
	cont=1
	
	Escribir "                    Puede ingresar [.] para terminar"
	
	Mientras frase<>"." Hacer
		
		Escribir "                         Ingrese el caracter "Sin Saltar
		leer frase
		letras[cont]=frase
		cont=cont+1
		
	FinMientras
	Limpiar Pantalla
	
	
	para i=1 hasta cont-1 con paso 1 Hacer
		
		si letras[i]="x" o letras[i]="X" Entonces
			
			contx=contx+1
		FinSi
		
	FinPara
	
	Escribir ""
	Escribir "                         Caracteres ingresados"
	Escribir "                         [ "Sin Saltar
	Para i=1 hasta cont-1 con paso 1 Hacer
		
		Escribir letras[i],","Sin Saltar
		
	FinPara
	Escribir " ]"
	
	Escribir ""
	Escribir "                    Cantidad de [x] ingresadas son: ",contx
	
	
FinFuncion

//----------------------------funcion del ejercicio 12 del menu arreglos

Funcion numeros_pares
	//entrada de datos
	definir numeros_,pares_,cont,num Como Entero
	dimension numeros_[100]
	cont=1
	num=1
	
	//se pide al usuario que ingrese los numeros y rellenar el arreglo
	Escribir "                   Puede ingresar [0] para terminar"
	Mientras num <> 0 Hacer
		
		Escribir "                           Ingrese el numero"Sin Saltar
		leer num
		numeros_[cont]=num
		cont=cont+1
		
	FinMientras
	Limpiar Pantalla
	
	//le coloco el tamaño al arreglo pares_
	dimension pares_[cont]
	
	//recorro el arreglo y separo los numeros pares en el otro arreglo
	Para i=1 hasta cont-1 con paso 1 Hacer
		
		si (numeros_[i] mod 2) = 0 Entonces
			
			pares_[i]=numeros_[i]
			
		FinSi
		
	FinPara
	
	//presento los numeros ingresados
	Escribir ""
	Escribir "                             Numeros ingresados"
	Escribir "                           [ "sin saltar
	Para i = 1 hasta cont-2 con paso 1 Hacer
		
		Escribir numeros_[i],","Sin Saltar
		
	FinPara
	Escribir " ]"
	
	//presento los numeros pares
	Escribir ""
	Escribir "                               Numeros pares"
	Escribir "                               [ "Sin Saltar 
	para i=1 hasta cont-2 con paso 1 Hacer
		
		si numeros_[i] mod 2 = 0 Entonces
			pares_[i]=numeros_[i]
			Escribir pares_[i],","Sin Saltar
		FinSi
		
	FinPara
	Escribir " ]"
	
FinFuncion

//----------------------------funcion del ejercicio 13 del menu arreglos

funcion mayores_cinco
	
	//entrada de datos
	definir num1,num2,mayores Como Entero
	Escribir "                    Ingrese primer numero     "Sin Saltar
	leer num1
	Escribir "                    Ingrese el segundo numero "Sin Saltar
	leer num2
	
	//se presenta lso numeros mayores a cinco
	Escribir ""
	Escribir "                    Numeros mayores entre 5 son "
	Escribir "                    [ "Sin Saltar
	Para i=num1 hasta num2 con paso 1 Hacer
		si i > 5 Entonces
			Escribir i,"," Sin Saltar
		FinSi
		
		
	FinPara
	Escribir " ]"
	
FinFuncion

//----------------------------funcion del ejercicio 14 del menu arreglos

Funcion edadesDeAlumnos
	//Porceso: Definimos las variables (edad,i,n,sumaedades,promayor, promenor,contmayor,contmenor) como entero
	// 			Definimos Definir (promedioedad,totalmayor,totalmenor) Como Real
	// 			Dimension edad [100]
	//Proceso: Para i <- 1 Hasta n Hacer
	//	Escribir "Ingrese la edad del alumno ", i ," :" Sin Saltar
	//	Leer edad[i]
	//	sumaedades = sumaedades + edad[i]
	//	
	//	si edad[i] >= 18 Entonces
	//		promayor = promayor + edad[1]
	//		contmayor = contmayor + 1
	//	SiNo
	//		promenor = promenor + edad[i]
	//		contmenor = contmenor + 1
	//	FinSi
	//FinPara
	//
	//promedioedad = sumaedades / n
	//	otalmayor = promayor / contmayor
	//totalmenor = promenor / contmenor
	//Salida: Se muestran el promedio general de los estudiantes y el mayor y menor de los alumnos
	
	Definir edad,i,n,sumaedades,promayor, promenor,contmayor,contmenor Como Entero
	Definir promedioedad,totalmayor,totalmenor Como Real
	
	Dimension edad[100]
	
	Escribir "               Ingrese el promedio de alumnos a calcular: "Sin Saltar
	Leer n
	
	Para i <- 1 Hasta n Hacer
		Escribir "                Ingrese la edad del alumno ", i ," :" Sin Saltar
		Leer edad[i]
		sumaedades = sumaedades + edad[i]
		
		si edad[i] >= 18 Entonces
			promayor = promayor + edad[1]
			contmayor = contmayor + 1
		SiNo
			promenor = promenor + edad[i]
			contmenor = contmenor + 1
		FinSi
	FinPara
	
	Escribir "                 Calculando el valor, espere uno minutos...."
	Esperar 3 Segundos
	
	Limpiar Pantalla
	promedioedad = sumaedades / n
	totalmayor = promayor / contmayor
	totalmenor = promenor / contmenor
	
	Escribir "                 El promedio general es: ", promedioedad
	Escribir "            Alumnos mayores de edad son: ", contmayor
	Escribir "     El promedio de alumnos mayores son: ", totalmayor
	Escribir "            Alumnos menores de edad son: ", contmenor
	Escribir "     El promedio de alumnos menores son: ", totalmenor
	
FinFuncion

//----------------------------funcion del ejercicio 15 del menu arreglos

Funcion imparr(num1,num2,i)
	//Entrada: Definimos (num1,num2,i) como entero
	//			leemos (mum1,num2)
	//Proceso: si num1 < num2 Entonces
	//	para i <- num1 + 1 Hasta num2 - 1 Hacer
	//		si i mod 2 <> 0
	//			Escribir i
	//		FinSi
	//	FinPara
	//SiNo	
	//	para i <- num2 + 1 Hasta num1 - 1 Hacer
	//		si i mod 2 <> 0 Entonces
	//			Escribir i
	//		FinSi
	//	FinPara
	//FinSi
	//Salida: Se presentan los numeros impares, menos el inicial y el final
	
	si num1 < num2 Entonces
		para i <- num1 + 1 Hasta num2 - 1 Hacer
			si i mod 2 <> 0
				Escribir i
			FinSi
		FinPara
	SiNo
		para i <- num2 + 1 Hasta num1 - 1 Hacer
			si i mod 2 <> 0 Entonces
				Escribir i
			FinSi
		FinPara
	FinSi
	
FinFuncion

//----------------------------funcion del ejercicio 16 del menu arreglos

Funcion sueldosEmpleados
	
	//Entrada: Definimos (sueldos,i,n,sueldoalto,sumaSueldos) como entero y (progeneral) como real
	//			Se lee (n) que va a llevar la cantidad de sueldos que va a ingresar
	// 			Dimension sueldos [n] 
	//Proceso: para i <- 0 Hasta n-1 Hacer
	//	Escribir "Ingrese el sueldo ", i ," :" Sin Saltar
	//	Leer sueldos[i]
	//	
	//	si sueldos[i] > sueldoalto Entonces
	//		sueldoalto = sueldos[i]
	//	FinSi
	//	
	//	sumaSueldos = sumaSueldos + sueldos[i]
	//FinPara
	//Salida: Se presenta la cantidad de sueldos, se muestra el sueldo mas alto y el promedio de todos ellos
	
	Definir sueldos,i,n,sueldoalto,sumaSueldos Como Entero
	Definir progeneral Como Real
	
	Escribir "                 Ingrese la cantida de sueldos a ingresar: " Sin Saltar
	Leer n
	
	Dimension sueldos[n]
	
	para i <- 0 Hasta n-1 Hacer
		Escribir "                   Ingrese el sueldo ", i ," :" Sin Saltar
		Leer sueldos[i]
		
		si sueldos[i] > sueldoalto Entonces
			sueldoalto = sueldos[i]
		FinSi
		
		sumaSueldos = sumaSueldos + sueldos[i]
	FinPara
	Escribir ""
	Escribir "                 Calculando el promedio de los sueldos....."
	Esperar 3 Segundos
	
	progeneral = sumaSueldos / n
	
	Escribir "                   El sueldo mas alto es: ", sueldoalto
	Escribir "                  Cantidad de sueldos es: ", n
	Escribir "   El promedio general de los sueldos es: ", progeneral
	
	
FinFuncion





//--------------------------------************ FUNCIONES DEL MENU ARREGLOS*****************--------------------------------//


//----------------------------funcion del ejercicio 1 del menu cadenas

Funcion mayorlongitud(texto1,texto2,frase1,frase2)
	//Entrada: Se define (texto1,texto2) como cadena y (frase1,frase2) como entero
	// 			texto1 = Longitud(frase1)
	//			texto2 = Longitud(frase2)
	//Proceso: si texto1 > texto2 Entonces
	//	Escribir "El texto 1 tiene mayor Longitud"
	//SiNo
	//	si texto2 > texto1 Entonces
	//		Escribir "El texto 2 tiene mayor Longitud"
	//	SiNo
	//		Escribir "Los dos textos tiene mas misma Longitud"
	//	FinSi
	//FinSi
	//Salida: Se muestra la frase con mayor longitud
	
	texto1 = Longitud(frase1)
	texto2 = Longitud(frase2)
	
	Escribir ""
	si texto1 > texto2 Entonces
		Escribir "                     El texto 1 tiene mayor Longitud"
	SiNo
		si texto2 > texto1 Entonces
			Escribir "                      El texto 2 tiene mayor Longitud"
		SiNo
			Escribir "                      Los dos textos tiene mas misma Longitud"
		FinSi
	FinSi
	
FinFuncion

//----------------------------funcion del ejercicio 2 del menu cadenas

Funcion signos(i,cont,palabra)
	//Proceso: Definimos (i,cont,palabra) como entero
	// 			Leemos (palabra)
	//Proceso: para i <- 0 Hasta Longitud(palabra)-1 Hacer
	//	si Subcadena(palabra,i,i) = "," O Subcadena(palabra,i,i) = "." O Subcadena(palabra,i,i) = ";" O Subcadena(palabra,i,i) = ":" Entonces
	//		cont = cont + 1
	//	FinSi
	//FinPara
	//Salida: se muestran la cantidad de caracteres ingresados por el usiario
	
	para i <- 0 Hasta Longitud(palabra)-1 Hacer
		si Subcadena(palabra,i,i) = "," O Subcadena(palabra,i,i) = "." O Subcadena(palabra,i,i) = ";" O Subcadena(palabra,i,i) = ":" Entonces
			cont = cont + 1
		FinSi
	FinPara
	
	Escribir "                       La cantidad de caracteres son: ", cont
	
FinFuncion

//----------------------------funcion del ejercicio 3 del menu cadenas

Funcion contador_de_caracteres
	//entrada de datos
	definir frase,sub Como Caracter
	definir c,cons,dig Como Entero
	//definir valor de las variables
	c=0;cons=0;dig=0;frase="";sub=""
	Escribir "                        Escriba una frase" Sin Saltar
	leer frase
	
	//se hace el conteo de los caracteres
	para i<-0 Hasta longitud(frase) Hacer
		sub=subcadena(frase,i,i)
		Segun sub Hacer
			"A" o "a":
				c=c+1
			"E" o "e":
				c=c+1
			"I" o "i":
				c=c+1
			"O" o "o":
				c=c+1
			"U" o "u":
				c=c+1
			De Otro Modo:
				si (sub >= "a") y (sub <= "z") Entonces
					cons=cons+1
				SiNo
					si (sub >= "A") y (sub <= "Z")
						cons=cons+1
					sino
						dig=dig+1
					FinSi
				finsi
		FinSegun
	FinPara
	//se presenta
	Escribir ""
	Escribir "                   El numero de vocales de la frase es de: ",c
	Escribir "                   El numero de consonantes de la frase es de: ",cons
	escribir "                   El numero de digitos es de: ",dig-1
	
FinFuncion

//----------------------------funcion del ejercicio 4 del menu cadenas

funcion contador_palabras
	//Datos de entrada
	definir palabra,sub Como Caracter
	definir pal Como Entero
	pal=1
	Escribir "                Ingrese una o mas palabras:"Sin Saltar
	leer palabra
	
	//se hace el conteo de palabras
	Para i<-0 Hasta longitud(palabra) con paso 1 hacer
		sub=Subcadena(palabra,i,i)
		si sub=" " Entonces
			pal=pal+1
		FinSi
	FinPara
	
	//se presenta
	Escribir ""
	escribir "                El total de palabras escritas es de: ","[ ",pal," ]"
	
FinFuncion

//----------------------------funcion del ejercicio 5 del menu cadenas

Funcion suma_cedula
	
	//datos de entrada
	definir dni,suma Como Entero
	suma=0
	Escribir "                  Ingrese su numero de cedula:"Sin Saltar
	leer dni
	
	//se suma los digitos
	Mientras dni > 0 Hacer
		suma=suma+(dni mod 10)
		dni=trunc(dni/10)
	FinMientras
	
	//se presenta:
	Escribir ""
	escribir "                   La suma total de los digitos es de ",suma,"."
	
FinFuncion

//----------------------------funcion del ejercicio 6 del menu cadenas

Funcion palabra_palindroma
	
	//Datos de entrada
	definir text Como Caracter
	definir a,b,c Como Entero
	a=1;c=0
	Escribir "                    Ingrese una palabra"Sin Saltar
	leer text
	
	//se mide la longitud de la palabra
	b=Longitud(text)
	
	//se calcula si la palabra es palindroma
	mientras a < b Hacer
		si Subcadena(text,a,a)<>subcadena(text,b,b) Entonces
			c=c+1
		FinSi
		a=a+1;b=b-1
	FinMientras
	
	//se condiciona y se presenta
	Escribir ""
	si c==0 Entonces
		escribir "                  La palabra ingresada es palindroma."
	SiNo
		Escribir "                  La palabra ingresada no es palindroma"
	FinSi
	
FinFuncion

//----------------------------funcion del ejercicio 7 del menu cadenas

Funcion posicion_caracter
	
	//Datos de entrada
	definir palabra Como Caracter
	definir a Como Entero
	a=0;palabra=""
	Escribir "                         Ingrese una palabra"Sin Saltar
	leer palabra
	Escribir "                      Ingrese la poscion de la cadena"Sin Saltar
	leer a;a=a-1
	
	//se calcula y se presenta le letra en la posicion solicitada
	si a < longitud(palabra) entonces
		Escribir ""
		escribir "                  El caracter en la posicison ",a+1," es: ","[ ",Subcadena(palabra,a,a)," ]"
	SiNo
		Escribir ""
		Escribir "                           La posicion no existe."
	FinSi
	
FinFuncion

//----------------------------------------------------------------------------------------------------------------------

Algoritmo Tarea_3 
	
	definir menu_principal,menu_numeros,menu_cadenas,menu_arreglos como caracter
	definir i,limite,opc,opc1,opc2,aqui Como Entero
	
	Dimension menu_principal[7],menu_numeros[25],menu_cadenas[11],menu_arreglos[20]
	
	
	//Arreglo del menu principal
	menu_principal[0]="                 ******** MENU PRINCIPAL ********"
	menu_principal[1]=""
	menu_principal[2]="         Ingrese una opcion a visualizar"
	menu_principal[3]="         1.) Numeros"
	menu_principal[4]="         2:) Arreglos"
	menu_principal[5]="         3.) Cadenas"
	menu_principal[6]="         4.) Salir"
	
	
	//Arreglo del menu Numeros
	menu_numeros[0]= "                 ******** MENU NUMEROS ********"
	menu_numeros[1]= ""
	menu_numeros[2]= "         Ingrese un ejercicio a ejecutar"
	menu_numeros[3]= "         Ingrese [0] para regresar"
	menu_numeros[4]= "         1.) Ejercicio #1"
	menu_numeros[5]= "         2.) Ejercicio #2"
	menu_numeros[6]= "         3.) Ejercicio #3"
	menu_numeros[7]= "         4.) Ejercicio #4"
	menu_numeros[8]= "         5.) Ejercicio #5"
	menu_numeros[9]= "         6.) Ejercicio #6"
	menu_numeros[10]="         7.) Ejercicio #7"
	menu_numeros[11]="         8.) Ejercicio #8"
	menu_numeros[12]="         9.) Ejercicio #9"
	menu_numeros[13]="         10.) Ejercicio #10"
	menu_numeros[14]="         11.) Ejercicio #11"
	menu_numeros[15]="         12.) Ejercicio #12"
	menu_numeros[16]="         13.) Ejercicio #13"
	menu_numeros[17]="         14.) Ejercicio #14"
	menu_numeros[18]="         15.) Ejercicio #15"
	menu_numeros[19]="         16.) Ejercicio #16"
	menu_numeros[20]="         17.) Ejercicio #17"
	menu_numeros[21]="         18.) Ejercicio #18"
	menu_numeros[22]="         19.) Ejercicio #19"
	menu_numeros[23]="         20.) Ejercicio #20"
	menu_numeros[24]="         21.) Ejercicio #21"
	
	//Menu Arreglos:
	menu_arreglos[0]= "                 ******** MENU ARREGLOS ********"
	menu_arreglos[1]= ""
	menu_arreglos[2]= "         Ingrese un ejercicio a ejecutar"
	menu_arreglos[3]= "         Ingrese [0] para regresar"
	menu_arreglos[4]= "         1.) Ejercicio #1"
	menu_arreglos[5]= "         2.) Ejercicio #2"
	menu_arreglos[6]= "         3.) Ejercicio #3"
	menu_arreglos[7]= "         4.) Ejercicio #4"
	menu_arreglos[8]= "         5.) Ejercicio #5"
	menu_arreglos[9]= "         6.) Ejercicio #6"
	menu_arreglos[10]="         7.) Ejercicio #7"
	menu_arreglos[11]="         8.) Ejercicio #8"
	menu_arreglos[12]="         9.) Ejercicio #9"
	menu_arreglos[13]="         10.) Ejercicio #10"
	menu_arreglos[14]="         11.) Ejercicio #11"
	menu_arreglos[15]="         12.) Ejercicio #12"
	menu_arreglos[16]="         13.) Ejercicio #13"
	menu_arreglos[17]="         14.) Ejercicio #14"
	menu_arreglos[18]="         15.) Ejercicio #15"
	menu_arreglos[19]="         16.) Ejercicio #16"
	
	
	//Menu Cadenas:
	menu_cadenas[0]= "                 ******** MENU CADENAS ********"
	menu_cadenas[1]= ""
	menu_cadenas[2]= "         Ingrese un ejercicio a ejecutar"
	menu_cadenas[3]= "         Ingrese [0] para regresar"	
	menu_cadenas[4]= "         1.) Ejercicio #1"
	menu_cadenas[5]= "         2.) Ejercicio #2"
	menu_cadenas[6]= "         3.) Ejercicio #3"
	menu_cadenas[7]= "         4.) Ejercicio #4"
	menu_cadenas[8]= "         5.) Ejercicio #5"
	menu_cadenas[9]= "         6.) Ejercicio #6"
	menu_cadenas[10]="         7.) Ejercicio #7"
	

	Repetir
		//Menu Principal
		Borrar Pantalla
		opc1<-presentar_menu(menu_principal,7-1,4)
		Borrar Pantalla
		Segun opc1 Hacer
			1:
				//Menu Numeros
				Repetir
					Borrar Pantalla
					opc2<-presentar_menu(menu_numeros,25-1,21)
					Borrar Pantalla
					Segun opc2 Hacer
						0:
							Escribir "                       ***** Regresando al Menu Principal..........*****"
						 Esperar 2 Segundos
						 
					    1:
						 //	Determinar cuánto se  debe pagar por cierta  cantidad de colas,  considerando que si  son más de 23 colas, 
						 //	el costo por unidad  es de $0,50 caso  contrario el precio será  20% mas. Al costo resultante calcular el 12% del iva. Se pide presentar: 
						 //  cantidad comprada, el costo ´por unidad, el total sin iva el iva y el total a pagar. 
							Escribir "                    ********** Ejercicio #1 **********"
							Escribir "                     [ Precio por cantidad de colas ]"
							Escribir ""
							colas
							Escribir ""
							Escribir "                  [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						2:
							//La asociación de vinicultores tiene como política fijar un  precio inicial al kilo   de uva, 
							//la cual se clasifica en tipos A y B,  y además en tamaños 1 y 2.  Cuando se realiza la venta del producto, 
							//ésta es de un solo tipo y tamaño, se requiere determinar cuánto recibirá un productor por la uva que  entrega en un  embarque, 
							//considerando lo siguiente:Si es de tipo A, se le cargan 20 al precio  inicial cuando es  de tamaño 1; y 30 si es de tamaño 2. 
							//Si es de tipo B, se rebajan  30 cuando es de tamaño 1, y  50 cuando es de tamaño 2.  Realice un algoritmo para determinar la ganancia obtenida 
							Escribir "                    ********** Ejercicio #2 **********"
							Escribir "                         [ Venta de Kilo de uva ]"
							Escribir ""
							kilo_uva
							Escribir ""
							Escribir "                  [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						3:
							//	Dado dos números obtener el residuo sin el operador mod, % 
							Escribir "                    ********** Ejercicio #3 **********"
							Escribir "                  [ Residuo sin el operador (mod) o (%) ]"
							Escribir ""
							residuo
							Escribir ""
							Escribir "                  [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						4:
							//El consultorio del Dr. Paez tiene como política cobrar la consulta con base en el número de cita, de la siguiente forma:
							//	Las tres primeras citas a $200.00 c/u. 
							//	Las siguientes dos citas a $150.00 c/u. 
							//	Las tres siguientes citas a $100.00 c/u. 
							//	Las restantes a $50.00 c/u, mientras dure el tratamiento.   
							//	Se requiere un algoritmo para determinar: Cuánto pagará el paciente por la cita. 
							//	El monto de lo que ha pagado el paciente por el tratamiento. 
							//	Para la solución de este problema se requiere saber qué número de cita se efectuará, 
							//	con el cual se podrá determinar el costo que tendrá la consulta  
							//	y cuánto se ha gastado en el tratamiento. 
							Escribir "                    ********** Ejercicio #4 **********"
							Escribir "                      [ Costo segun numero de cita ]"
							Escribir ""
							costo_cita
							Escribir ""
							Escribir "                  [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						5:
							//	Escribir un algoritmo que lea cuatro números y determine si el numero 1  es la mitad del número 2; Y si el numero 3 es divisor del numero4. 
							Escribir "                    ********** Ejercicio #5 **********"
							Escribir "                  [ si el numero 1 es la mitad del número 2"
							escribir "                  Y si el numero 3 es divisor del numero 4 ]" 
							Escribir ""
							mitad_y_divisor
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						6:
							//	El banco XYZ ha decidido aumentar el límite de crédito de las tarjetas de crédito  de sus clientes, para esto considera que: 
							//	Si su cliente tiene tarjeta tipo 1, el aumento será del  25%. 
							//	Si tiene tipo 2 el aumento será del 35% 
							//	Si tiene tipo 3, el aumento será del 40% 
							//	Para cualquier otro tipo será del 50% 
							//	Se pide realizar un algoritmo que ayude al banco a determinar el nuevo límite de crédito 
							//	que tendrá una persona en su tarjeta considerando que después del aumento de porcentaje 
							//	se tendrá que subir $20 adicionales a todas las tarjetas
							Escribir "                    ********** Ejercicio #5 **********"
							Escribir "                [ Aumento del limite de tarjeta de credito ]"
							Escribir ""
							limite_tarjeta
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						7:
							//Escribir un algoritmo que lea cuatro números y determine si el numero 1 es divisor del numero3 Y si el numero 2 es el doble del numero4. 
							Escribir "                    ********** Ejercicio #6 **********"
							Escribir "                  [ si el numero 1 es divisor del número 3"
							escribir "                  Y si el numero 2 es mitad del numero 4 ]" 
							Escribir ""
							doble_y_divisor
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						8:
							//El banco POO ha decidido aumentar el límite de crédito de las tarjetas de crédito  de sus clientes, 
							//para esto considera que: 
							//Si su cliente tiene tarjeta tipo 1, el aumento será del  $100 . 
							//Si tiene tipo 2 el aumento será del $200 
							//Si tiene tipo 3, el aumento será del $300 
							//Para cualquier otro tipo será del 500 
							//Realizar un algoritmo que ayude al banco a determinar el nuevo límite de crédito que tendrá una persona en su tarjeta 
							//considerando que  después del aumento se tendrá que subir 10% adicionales a todas las tarjetas 
							Escribir "                    ********** Ejercicio #8 **********"
							Escribir "                [ Aumento del limite de tarjeta de credito ]"
							Escribir ""
							aumento_tarjeta
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
						 
						9:
							//Pedir al usuario un número y mostrar si es negativo menor que -20, sino mostrar si es positivo par o impar múltiplo de 7. 
							//Entrada de datos:
							Escribir "                    ********** Ejercicio #9 **********"
							Escribir "                     [  Numero negativo menor que -20"
							Escribir "                 numero positivo par o impar multiplo de 7]"
							Escribir ""
							negativo_impar
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						10:
							//La asociación de vinicultores tiene como política fijar un precio inicial al quintal de pitajaya, 
							//la cual se clasifica en tipos "Amarilla" y "Colorada", y además en tamaños 1 y 2. 
							//Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, 
							//se requiere determinar cuánto recibirá un productor por la pitajaya que entrega en un embarque, considerando lo siguiente: ?  
							//Si es de tipo Amarilla, se le cargan $10 al precio inicial cuando es de tamaño 1; 
							//y 15% mas $5 si es de tamaño 2  ?  
							//Si es de tipo Colorada, se rebajan $20 cuando es de tamaño 1, 
							//y 20% cuando es de tamaño 2. 
							//Sea tipo Amarilla y Colorada se debe se aplicar un descuento del 5% y el 12% del IVA. 
							//Realice un algoritmo para determinar el precio de embarque 
							Escribir "                    ********** Ejercicio #10 **********"
							Escribir "                           [ Venta de Pitahaya ]"
							Escribir ""
							venta_de_pitahaya
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						11:
							//Pedir al usuario un número y mostrar si es par menor que 10,  sino mostrar si es negativo e impar o negativo divisible para 5. 
							Escribir "                    ********** Ejercicio #11 **********"
							Escribir "                       [  Numero par menor que 10"
							Escribir "                 numero negativo e impar divisible para 7]"
							Escribir ""
							menor_negativo_divisible
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
					     
						12:
							//Fábricas "El cometa" produce artículos con claves (1, 2, 3, 4, 5 y 6). 
							//Se requiere un algoritmo para calcular los precios de venta, para esto hay que considerar lo siguiente: 
							//Costo de producción = materia prima + mano de obra + gastos de fabricación. 
							//Precio de venta = costo de producción + 45 % de costo de producción. 
							//El costo de la mano de obra se obtiene de la siguiente forma: 
							//para los productos con clave 3 o 4 se carga 75 % del costo de la materia prima;
							//para los que tienen clave 1 o 5 se carga 80 %,
							//y para los que tienen clave 2 o 6, 85 %. 
							//Para calcular el gasto de fabricación se considera que, 
							//si el artículo que se va a producir tiene claves 2 o 5, este gasto representa 30 % sobre el costo de la materia prima; 
							//si las claves son 3 o 6, representa 35 %; 
							//si las claves son 1 o 4, representa 28 %. 
							//La materia prima tiene el mismo costo para cualquier clave. 
							Escribir "                    ********** Ejercicio #12 **********"
							Escribir "             [ Calculo de materia prima para el precio de venta ]"
							Escribir ""
							calculo_materia
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
						 
						13:
							//Dado un número entero N, calcular e informar al usuario cuántos dígitos tiene dicho número
							Escribir "                    ********** Ejercicio #13 **********"
							Escribir "                          [ Contador de digitos ]"
							Escribir ""
						    cuenta_digitos
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
						 
						14:
							//Dado un número, determine si es capicúa. Nota: un número capicúa es aquel que se lee igual hacia adelante que hacia atrás. 
							Escribir "                    ********** Ejercicio #14 **********"
							Escribir "                            [ Numero capicua ]"
							Escribir ""
						    numero_capicua
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						15:
							//Escribir un algoritmo que presente los divisores de un numero 
							Escribir "                    ********** Ejercicio #15 **********"
							Escribir "                          [ Divisores de un numero ]"
							Escribir ""
						    divisores
							Escribir ""
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						16:
							//Escribir un algoritmo que presente la suma de los divisores de un numero 
							Escribir "                    ********** Ejercicio #16 **********"
							Escribir "                   [ suma de los divisores de un numero ]"
							Escribir ""
						    suma_divisores
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						17:
							//Escribir un algoritmo que presente la cantidad de los divisores de un numero 
							Escribir "                    ********** Ejercicio #17 **********"
							Escribir "                   [ Cantidad de divisores de un numero ]"
							Escribir ""
						    cantidad_divisores
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						18:
							//Escribir un algoritmo que indique si un número es perfecto
							//Nota: un número es perfecto cuando la suma de los divisores del número incluido el 1 y excluido el propio número es igual al numero 
							//Ejemplo: numero=6: los divisores del 6 son: 1+2+3=6 
							Escribir "                    ********** Ejercicio #18 **********"
							Escribir "                            [ Numero perfecto ]"
							Escribir ""
						    numero_perfecto
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						19:
							//Escribir un algoritmo que indique si un número es perfecto
							//Nota: un número es perfecto cuando la suma de los divisores del número incluido el 1 y excluido el propio número es igual al numero 
							//Ejemplo: numero=6: los divisores del 6 son: 1+2+3=6 
							Escribir "                    ********** Ejercicio #19 **********"
							Escribir "                             [ Numero Primo ]"
							Escribir ""
						    numero_primo
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						20:
							//Dado dos números determinar si son   primos gemelos. Nota: Dos números son primos gemelos si los dos son primos 
							//y su resta en valor absoluto es igual a 2.  Ejemplo: 7 y 5 
							Escribir "                    ********** Ejercicio #20 **********"
							Escribir "                             [ Primos Gemelos ]"
							Escribir ""
						    primos_gemelos
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						21:
							//Dado dos números determinar si son   primos amigos. Nota: 
							//Dos números son primos amigos si las sumas de los divisores del numero1 es igual a la suma de los divisores del numero2. 
							//Ejemplo: 6(1+2+3=6) y 25(1+5=6)
							Escribir "                    ********** Ejercicio #21 **********"
							Escribir "                             [ Primos Amigos ]"
							Escribir ""
						    primos_amigos
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
			             
						De Otro Modo:
							//Numero que no corresponda al del ejercicio dira [ ERROR ]
							Escribir "           ****** [ ¡Error! Numero ingresado incorrecto ] ******"
							Escribir "                       Regresanso al Menu Numeros...."
						    Esperar 2 Segundos
							Borrar Pantalla
					FinSegun
				Hasta Que opc2=0
				
			2:
				Repetir
					Borrar Pantalla
					opc2<-presentar_menu(menu_arreglos,20-1,16)
					Borrar Pantalla
					segun opc2 Hacer
						0:
							Escribir "                       ***** Regresando al Menu Principal..........*****"
							Esperar 2 Segundos
							
						1:
                            //Dada n realizar un algoritmo que presente la siguiente secuencia n=6 respuesta= 2 2 4 8 32   256  
							Escribir "                    ********** Ejercicio #1 **********"
							Escribir "                             [ secuencia 1 ]"
							Escribir ""
						 
							ejercicio1
							
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						2:
							//Implementa un programa que calcule el promedio de los elementos pares e impares en un arreglo de números enteros y los copie en otro arreglo.
						    //Ejemplo: arreglo[2,3,4,7]     areglo2[3,5] 
							Escribir "                    ********** Ejercicio #2 **********"
							Escribir "                           [ Pares e impares ]"
							Escribir ""
							escribir "             ingrese la cantidad de elementos q desee"Sin Saltar
							leer n
							
							ejercicio2(n)
							
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						3:
                            //Dada n realizar un algoritmo que presente la siguiente secuencia n=6 respuesta=  20 5 15 10  5 -5  0  
							Escribir "                    ********** Ejercicio #3 **********"
							Escribir "                             [ Secuencia 2 ]"
							Escribir ""
						    ejercicio3
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						4:
							//Implementa un programa que copie los números de un arreglo a  2 arreglos en uno  los números positivos y en el otro los negativos 
                            //Ejemplo: arreglo=[2,-6,4,-9, 12]  arregloPositivo=[2,4,12]   arregloNegativo[-6,-9] 
							Escribir "                    ********** Ejercicio #4 **********"
							Escribir "                    [ numeros, positivos y negativos ]"
							Escribir ""
						    definir num como 	entero 
							escribir"                  ingrese la cantidad de numero que desee "Sin Saltar
							leer num
							Dimension arreglo[num]
							
							ejercicio4(num)
							
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						5:
                            //Leer una secuencia de números hasta que se ingrese un numero negativo.  Mostrar la suma de los pares y la cantidad de los números que son múltiplo de 3 
                            //Ejemplo: 
                            //secuencia: 
                            //4,14,3,0,21,2,-4 
                            //Respuesta 
                            //paresSuma=20 
                            //contMuliplos3=2 
							Escribir "                    ********** Ejercicio #5 **********"
							Escribir "     [ suma de numeros pares y cantidad de los numeros multiplos de 3  ]"
							Escribir ""
							definir numeron como entero
							escribir "         ingrese un numero indicando  la cantidad de numero que desee"
							escribir "              para detener  ingrese un numero negativo "Sin Saltar
							leer numeron 
							Dimension arreglo[numeron]
							
							ejercicio5(numeron)
							
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						6:
                           //Leer una secuencia de números hasta que se ingrese un 0 y almacenarlos en un arreglo Se pide recorrer el arreglo y mostrar la suma del cuadrado de cada numero.   
                           //Ejemplo:  
						   //secuencia: 4,3,2,5,0  
						   //arreglo=[4,3,2,5] 
                           //exponentes= 16  9  4   25 
                           //respuestaSuma=54 
							Escribir "                    ********** Ejercicio #6 **********"
							Escribir "                   [ Suma del cuadrado de cada numero ]"
							Escribir ""
						    suma_cuadrado
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						7:
						   //Leer una secuencia de números hasta que se ingrese un numero par.  Mostrar la cantidad de los números mayores a 5 y la suma de los múltiplos de 5 
                           //Ejemplo: 
                           //secuencia: 3,5,15,7,9, 4  
                           //Respuesta 
                           //contMay5=3 
                           //sumaMultiplos5=20 
							Escribir "                    ********** Ejercicio #7 **********"
							Escribir "               [ Numeros mayores a 5 y suma multiplos de 5 ]"
							Escribir ""
						    mayores_multiplos
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
				         
						8:
                           //Leer una secuencia de números hasta que se ingrese un numero negativo y almacenarlos en un arreglo 
                           //Se pide recorrer el arreglo y mostrar la suma de cada número elevado al cubo. Ejemplo:  
                           //secuencia: 4,3,2,5,-1 
                           //arreglo=[4,3,2,5] 
                           //exponentes= 64  27  8   125 
                           //respuestaSuma=224   
							Escribir "                    ********** Ejercicio #8 **********"
							Escribir "                   [ Numeros al cubo y suma de ellos ]"
							Escribir ""
							cubo_suma
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						9:
							// Dado una frase indicar cuantas  palabras tiene 
                            //Ejemplo: frase="hola que tal".  contPalabras=3 
							Escribir "                    ********** Ejercicio #9 **********"
							Escribir "                  [ Cuantas palabras hay en tu palabra ]"
							Escribir ""
							palabra_frase
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						10:
                            //Leer una secuencia de números hasta que se ingrese un numero negativo y almacenarlos en arreglo. 
						    //Se pide recorrer el arreglo y cambiar cada  elemento del arreglo por su doble.   
                            //Ejemplo: 
                            //secuencia: 4,3,6,9,0 
                            //arreglo=[4,3,6,9]  = [8,6,12,18] 
							Escribir "                    ********** Ejercicio #10 **********"
							Escribir "                        [  elementos por su doble ]"
							Escribir ""
							elementos_doble
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						11:
                            //Leer una secuencia de caracteres hasta que se ingrese un punto.  
                            //Deberá mostrar cuantos "x" se ingresaron 
                            //Ejemplo: secuencia="axyrx".  contX= 2 
							Escribir "                    ********** Ejercicio #11 **********"
							Escribir "                           [  contador de (x) ]"
							Escribir ""
							caracteres_secuencia
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						12:
                            //Leer una secuencia de números hasta que se ingrese un 0 y almacenarlos en arreglo. Se pide recorrer el arreglo y pasar a otro  arreglo 
                            //solo los números pares de cada elemento del arreglo1   
                            //Ejemplo: 
                            //secuencia: 4,3,6,9,0 
                            //arreglo1=[4,3,6,9]  
                            //arreglo2= [4,6]      
							Escribir "                    ********** Ejercicio #12 **********"
							Escribir "                             [ Numeros pares ]"
							Escribir ""
							numeros_pares
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						13:
						    //Dado dos números presentar los valores mayores a 5 entre ellos incluidos el numero inicial y final 
                            //Ejemplo: numero1=2   
                            //numero2=10 
                            //salida= 6 7 8 9 10 
							Escribir "                    ********** Ejercicio #13 **********"
							Escribir "                          [ valores moyores a 5 ]"
							Escribir ""
							mayores_cinco
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						14:
						    //Elaborar un algoritmo que lea una serie de edades de los alumnos de la facultad FACI y los guarde en un arreglo. Se pide:  ·       
                            //calcular el promedio general de las edades de los alumnos ·       
                            //La cantidad y el promedio de las edades mayores o iguales a 18 ·       
                            //La cantidad y el promedio de las edades menores a 18  
							//
                            //Ejemplo: Edades=[20,17,20,23] 
                            //promedioGeneral=20 
                            //cantMayorIgual18= 3,
                            //promedioMayorIgual18=21 
                            //cantMenor18= 1, 
                            //promedioMenor18=17 
							Escribir "                    ********** Ejercicio #14 **********"
							Escribir "                          [ Edades de alumnos ]"
							Escribir ""
						    edadesDeAlumnos
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						15:
                            //Dado dos números presentar los valores Impares comprendidos entre ellos(excluidos el valor inicial y final) 
                            //Ejemplo: numero1=2    numero2=11 salida:  3 5 7 9
							Escribir "                    ********** Ejercicio 15 **********"
							Escribir "               [ numeros impares comprendidos entre ellos ]"
							Escribir ""
							Escribir "                Ingrese el primer valor" Sin Saltar
							Leer num1
							Escribir "                Ingrese el segundo valor" Sin Saltar
							Leer num2
						    imparr(num1,num2,i)
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						16:
                            //Elaborar un algoritmo que lea una serie de sueldos de los empleados de la unemi y los guarde en un arreglo. Se pide:  
                            //·       Presentar el sueldo más alto de los empleados 
						    //·       La cantidad y el promedio de os sueldos de los empleados 
                            //Ejemplo: 
                            //sueldos=[500,700,800,600] 
                            //SueldoMasAlto= 800 
                            //cantidadSueldos=4 
                            //promedioGeneral=650 
							Escribir "                    ********** Ejercicio #16 **********"
							Escribir "                         [ Sueldos de empleados ]"
							Escribir ""
						    sueldosEmpleados
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						De Otro Modo:
							Escribir "           ****** [ ¡Error! Numero ingresado incorrecto ] ******"
							Escribir "                       Regresanso al Menu Arreglos...."
						    Esperar 2 Segundos
							Borrar Pantalla
					FinSegun
				Hasta Que opc2=0
				
			3:
				Repetir
					Borrar Pantalla
					opc2<-presentar_menu(menu_cadenas,11-1,7)
					Borrar Pantalla
					segun opc2 Hacer
						0:
							Escribir "                       ***** Regresando al Menu Principal..........*****"
							Esperar 2 Segundos
							
						1:
                            //Dadas dos frase indicar la de mayor longitud" 
							Escribir "                    ********** Ejercicio #1 **********"
							Escribir "                       [ frase con mayor longitud ]"
							Escribir ""
						    
							
							Escribir "                  Ingrese el primer texto: " Sin Saltar
							Leer frase1
							Escribir "                  Ingrese el segundo texto: " Sin Saltar
							Leer frase2
							mayorlongitud(texto1,texto2,frase1,frase2)
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						2:
                            //Indicar cuantas ,.;: hay en una cadena" 
							Escribir "                    ********** Ejercicio #2 **********"
							Escribir "                   [ cuantos [, . ; :] hay en su frase ]"
							Escribir ""
						   
							cont=0
							Escribir "Ingrese una cadena de texto:" Sin Saltar
							Leer palabra
							signos(i,cont,palabra)
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						3:
                            //Dado una cadena indicar cuantas vocales, consonantes y dígitos hay"
							Escribir "                    ********** Ejercicio #3 **********"
							Escribir "               [ vocales,consonates,digitos hay en un palabra ]"
							Escribir ""
							contador_de_caracteres
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						4:
                            //Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras" 
							Escribir "                    ********** Ejercicio #4 **********"
							Escribir "                        [ Contador de palabras ]"
							Escribir ""
							contador_palabras
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						5:
                            //Presentar la suma de los dígitos de una cedula" 
							Escribir "                    ********** Ejercicio #5 **********"
							Escribir "                   [ Suma de los digitos de su cedula ]"
							Escribir ""
							suma_cedula
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						6:
                            //Indicar si una palabra es palíndroma". Ejemplo: "ana" es palíndroma por se lee igual de inicio a fin que de fin a inicio  
							Escribir "                    ********** Ejercicio #6 **********"
							Escribir "                 [ identificar si una palabra es palindroma ]"
							Escribir ""
							palabra_palindroma
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						7:
							//Presentar la posición de un carácter cualquiera dentro de una cadena" 
							Escribir "                    ********** Ejercicio #7 **********"
							Escribir "                       [ Posicion de un caracter ]"
							Escribir ""
							posicion_caracter
							Escribir ""
							Escribir "                   [Precione cualquier tecla para terminar]"
							Esperar Tecla
							
						De Otro Modo:
							Escribir "           ****** [ ¡Error! Numero ingresado incorrecto ] ******"
							Escribir "                       Regresanso al Menu Arreglos...."
						    Esperar 2 Segundos
							Borrar Pantalla
					FinSegun
				Hasta Que opc2=0
				
			4:
				Escribir "                                   Saliendo...."
				Esperar 3 Segundos
				Escribir "                           Gracias por usar el sistema"
			De Otro Modo:
				Escribir "           ****** [ ¡Error! Numero ingresado incorrecto ] ******"
				Escribir "                      Regresanso al Menu Principal...."
				esperar 3 segundos 
		FinSegun
		
	Hasta Que opc1=4
	
FinAlgoritmo
