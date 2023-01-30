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


// Ejercicios Numeros
//1)
// SubAlgoritmo mayorDosNumeros()
// esta Funcion pide dos numeros y presenta el mayor de los dos
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero
	Escribir "Ingrese numero1"
	leer num1
	Escribir "Ingrese numero2"
	leer num2
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2
	SiNo
		Si num1 < num2 Entonces
			Escribir num1," Es menor que ",num2
		SiNo
			Escribir num1," Es igual a ",num2
		Fin Si
	Fin Si
FinFuncion


//2)
// SubAlgoritmo Dividir dos numeros por restas()
// esta Funcion presenta la division de 2 numeros mediante la resta de estos
Funcion dividirDosNumerosPorResta()
	Definir n1,n2,r,coc,cont Como Real
	coc=0
	cont=0
	r=0
	Escribir "Ingrese el dividendo"
	Leer n1
	Escribir "Ingrese el divisor"
	Leer n2
	Mientras n1>=n2 Hacer
		r=n1-n2
		Escribir "Si restamos ",n1,"-",n2," da:",r
		n1=n1-n2
		coc=coc+1
	Fin Mientras
	Escribir "Hay que restar ",coc," veces"
FinFuncion


//3)
// SubAlgoritmo Multiplicar dos numeros por sumas()
// esta funcion presenta la multiplicacion de 2 numeros mediante la suma de estos
Funcion multiplicarDosNumerosPorSuma()
	Definir acum,cont,num1,num2,res Como Entero
	acum=0
	cont=0
	Escribir "Ingrese la cantidad de veces a sumar"
	Leer num1
	Escribir "Ingrese un numero"
	Leer num2
	Mientras cont<num1 Hacer
		acum=acum+num2
		cont=cont+1
		res=acum
		Escribir "El resultado es: ",res
	Fin Mientras
FinFuncion


//4)
// SubAlgoritmo sumaParesProductoMultiplosDe5()
// esta funcion dado una serie de numeros sumar los pares y el produco multiplos de 5
Funcion sumaParesProductoMultiplosDe5()
	Definir num,sump,prod,secuencia,a Como Real
	sump=0
	prod=1
	a=0
	Escribir "¿Cuantos numeros tendra la secuencia?"
	Leer secuencia
	Para a=1 Hasta secuencia Con Paso 1 Hacer
		Escribir "Ingresa un numero"
		Leer num
		Si num mod 2=0 Entonces
			sump=sump+num
		Fin Si
		Si num mod 5=0 Entonces
			prod=prod*num
		Fin Si
	Fin Para
	Escribir "La suma de los pares es: ",sump
	Escribir "El producto de los multiplos de 5 es: ",prod
FinFuncion


//5)
//SubAlgoritmo cantidadDigitosDeUnaSecuenciaDeNumerosHasta0()
//Presentar cantidad de digitos de cada numero de una secuencia hasta 0
Funcion cantidadDigitosDeUnaSecuenciaDeNumerosHasta0()
	Definir num,c como real
	c=0
	Escribir "Ingrese un número"
	Leer num
	Mientras num<>0
		Mientras num>0
			num = trunc(num/10)
			c = c + 1
		FinMientras
		Escribir "Ingrese un nuemro"
		Leer num
	FinMientras
	Escribir "la cantidad de digitos es : " c
FinFuncion


//6)
//SubAlgoritmo presentarPrecioDescuentoIvaPago_nTrajes()
//esta funcion presenta el valor de n trajes con sus respectivos descuento e iva
Funcion presentarPrecioDescuentoIvaPago_nTrajes()
	Definir precio,descuento,iva,pago1,pago2,pagofinal,ntrajes,i,acum,n Como Real
	n=0
	acum=0
	i=0
	Escribir "Ingrese la cantidad de trajes"
	Leer ntrajes
	Para i=1 Hasta ntrajes Con Paso 1 Hacer
		Escribir "Ingrese el precio del traje"
		Leer precio
		Si precio>100 Entonces
			n=n+1
			descuento=precio*0.10
			iva=(precio-descuento)*0.12
			pago1=precio-descuento+iva
			acum=acum+pago1
			Escribir "Valor a pagar por el traje ",n," es: ",pago1
		SiNo
			n=n+1
			descuento=precio*0.05
			iva=(precio-descuento)*0.12
			pago2=precio-descuento+iva
			acum=acum+pago2
			Escribir "Valor a pagar por el traje ",n," es: ",pago2
		Fin Si
	Fin Para
	pagofinal=acum
	Escribir "Total a pagar es: ",pagofinal
FinFuncion


//7)
//SubAlgoritmo dado3NumerosIndicarSiElSegundoEsMayor()
//Dado tres numeros ingresados ver si el segundo es mayor
Funcion dado3NumerosIndicarSiElSegundoEsMayor()
	Definir n1,n2,n3 Como Real
	Escribir "Ingrese el primero numero"
	Leer n1
	Escribir "Ingrese el segundo numero"
	Leer n2
	Escribir "Ingrese el tercer numero"
	Leer n3
	Si n1<n2 y n2>n3 Entonces
		Escribir "El segundo numero es mayor"
	SiNo
		Escribir "El Segundo numero no es mayor"
	Fin Si
FinFuncion


//8)
//SubAlgoritmo dadoUnaSecuenciaDeNumerosPresentarSuPromedio()
//esta funcion nos da el promedio de una secuencia ingresada por teclado
Funcion dadoUnaSecuenciaDeNumerosPresentarSuPromedio()
	Definir Promedio como real
	Definir suma,c,num como entero
	Escribir "Ingresa un numero(Termina cuando ingresa un numero negativo)"
	Leer num
	Promedio=1
	suma=0
	c=0
	Mientras num>-1 Hacer
		suma=suma+num
		c=c+1
		leer num
	Fin Mientras
	Si c>0 Entonces
		Escribir"EL PROMEDIO ES: ", suma/c
	Fin Si
FinFuncion


//9)
//SubAlgoritmo numerosAmigos()
//esta funcion nos presenta la respuesta de las dos sumas y nos indica si son numeros amgigos
Funcion numerosAmigos()
	Definir totalsuma1,suma1,totalsuma2,suma2,i,n Como Real
	Escribir "Cuantos numeros desea colocar en la primer suma"
	Leer suma1
	i=1
	totalsuma1=0
	Mientras i<=suma1 Hacer
		Escribir "Ingrese el numero ",i,":"
		Leer n
		totalsuma1=totalsuma1+n
		i=i+1
	FinMientras
	Escribir "La suma total es: ",totalsuma1
	Escribir "Cuantos numeros desea colocar en la segunda suma"
	Leer suma2
	i=1
	totalsuma2=0
	Mientras i<=suma2 Hacer
		Escribir "Ingrese el numero ",i,":"
		Leer n
		totalsuma2=totalsuma2+n
		i=i+1
	FinMientras
	Escribir "La suma total es: ",totalsuma2
	Si totalsuma1=totalsuma2 Entonces
		Escribir "Son numeros amigos"
	SiNo
		Escribir "No son numeros amigos"
	Fin Si
FinFuncion


//10)
//SubAlgoritmo primosGemelos()
//esta funcion nos indica si los 2 numeros ingresados son primos gemelos
Funcion primosGemelos()
	Definir i,n1,n2,cont1,cont2 Como Real
	Escribir "Ingrese el primer numero"
	Leer n1
	i=1
	cont1=0
	Mientras i<=n1 Hacer
		Si n1 mod i=0 Entonces
			cont1=cont1+1
		FinSi
		i=i+1
	FinMientras
	Escribir "Ingrese el segundo numero"
	Leer n2
	i=1
	cont2=0
	Mientras i<=n2 Hacer
		Si n2 mod i=0 Entonces
			cont2=cont2+1
		FinSi
		i=i+1
	FinMientras
	Si cont1=2 y cont2=2 Entonces
		Escribir "El numero ",n1," y el ",n2," son primos gemelos"
	SiNo
		Escribir "El numero ",n1," y el ",n2," no son primos gemelos"
	FinSi
FinFuncion


// Ejercicios Cadenas
//1)
// SubAlgoritmo presentarCaracterPorCaracter()
//esta funcion nos presenta el caracter por caracter del nombre ingresado
Funcion presentarCaracterPorCaracter()
	Definir nombre,palabra,cadena Como Caracter
	Definir i,lon Como Entero
	Escribir "Ingrese el nombre"
	Leer nombre
	cadena=Subcadena(nombre,1,)
	Escribir cadena
	lon=Longitud(nombre)
	Dimension palabra(lon)
	Para i=0 Hasta lon-1 Con Paso 1 Hacer
		palabra[i]=Subcadena(nombre,i,i)
		Escribir i," ",palabra[i]
	Fin Para
FinFuncion


//2)
//SubAlgoritmo presentarElInicioMedioYUltimaLetraDeUnaFrase()
//esta funcion nos da como respuesta la primera, mitad y ultima letra de una frase
Funcion presentarElInicioMedioYUltimaLetraDeUnaFrase()
	Definir frase,frase1,frase2,frase3 Como Caracter
	Definir l,d,pos Como Real
	frase=""
	l=0;d=0;pos=0
	Escribir "Ingrese una frase"
	Leer frase
	l = Longitud(frase) - 1
	si l>=0 Entonces
		d=trunc(l/2)
	FinSi
	frase1 =Subcadena(frase,0,0)
	frase2=Subcadena(frase,d,d)
	frase3=Subcadena(frase,l,l)
	pos=l
	Escribir frase1,frase2,frase3
FinFuncion


//3)
//SubAlgoritmo indicarSiLosNombresSonIguales()
//esta funcion nos indica si los nombres ingresados son iguales
Funcion indicarSiLosDosNombresSonIguales()
	Definir n1,n2 como caracter;
	Escribir "ESCRIBA DOS NOMBRES";
	Leer n1
	Leer n2
	Si n1=n2 Entonces
		Escribir "LOS NOMBRES SON IGUALES";
	SiNo
		Escribir "LOS NOMBRES NO SON IGUALES";
	Fin Si
FinFuncion


//4)
//SubAlgoritmo  dadasDosFrasesPresentarLaDeMayorLongitud()
//esta funcion nos pide dos frases y presenta la de mayor longitud
Funcion dadasDosFrasesPresentarLaDeMayorLongitud()
	Definir frase1,frase2 Como Cadenas
	Escribir "Ingrese una frase"
	Leer frase1
	Escribir "Ingrese otra frase"
	Leer frase2
	Escribir ""
	Si Longitud(frase1)=Longitud(frase2) Entonces
		Escribir "Ambas cadenas tienen la misma longitud"
	SiNo
		Si Longitud(frase1)>Longitud(frase2) Entonces
			Escribir frase1
			Escribir "Longitud: ",Longitud(frase1)
			Escribir "La frase de mayor longitud es: ",frase1
		SiNo
			Escribir frase2
			Escribir "Longitud: ",Longitud(frase2)
			Escribir "La frase de mayor longitud es: ",frase2
		FinSi
	FinSi
FinFuncion


//5)
//SubAlgoritmo indicarCuantasComas_Puntos_PuntosdoblesyPuntocoma()
//este proceso nos muestra cuantos puntos, comas, puntos dobles y punto y coma
//hay en la frase
Funcion indicarCuantasComas_Puntos_PuntosdoblesyPuntocoma()
	Definir frase como caracter
	Definir lon,pos,ccc,ccc1,ccc2,ccc3,c como entero
	c=1
	ccc=0
	ccc1=0
	ccc2=0
	ccc3=0
	pos=0
	Escribir "ingrese frase"
	leer frase
	lon=longitud(frase)
	para pos=0 hasta longitud(frase) con paso 1 hacer
		Si subcadena(frase,pos,pos) = "." 
			ccc=ccc+1
		FinSi
		Si subcadena(frase,pos,pos) = "," 
			ccc1=ccc1+1
		FinSi
		Si subcadena(frase,pos,pos) = ";" 
			ccc2=ccc2+1
		FinSi
		Si subcadena(frase,pos,pos) = ":" 
			ccc3=ccc3+1
		FinSi
	FinPara
	Escribir "la cantidad de . es: ",ccc
	Escribir "la cantidad de , es: ",ccc1
	Escribir "la cantidad de ; es: ",ccc2
	Escribir "la cantidad de : es: ",ccc3
FinFuncion


//6)
//SubAlgoritmo vocales_consonantes_digitos()
//
Funcion vocales_consonantes_digitos()
	Definir frase Como Caracter
	Definir dig,voc,cons,num,r,I Como Entero
	Escribir "Ingrese la frase"Sin Saltar
	Leer frase
	Voc = 0
	Cons = 0
	Num = 0
	Dig = 0
	R = Longitud(frase)
	Para I = 1 hasta r con paso 1 Hacer
		Si Subcadena(frase,I,i) = "a" o Subcadena(frase,I,i) = "e" o Subcadena(frase,I,i) = "i" o Subcadena(frase,I,i) = "o" o Subcadena(frase,I,i) = "u" Entonces
			Voc = voc + 1
		SiNo
			Si Subcadena(frase,I,i) >= "0" y Subcadena(frase,I,i) <= "9" entonces
				Dig = dig + 1
			SiNo
				Si subcadena(frase,I,i) <> " " Entonces
					Cons = cons + 1
				FinSi
			FinSi
		FinSi
	FinPara
	Mostrar "La cantidad de vocales es: ",voc
	Mostrar "La cantidad de consonates es: ",cons
	Mostrar "La cantidad de digitos es: ",dig
FinFuncion


//7)
//SubAlgoritmo indicarCuantasPlabrasHayEnUnaFrase()
//este proceso indica cuantas palabras tiene la frase ingresada asumiendo los espacios
Funcion indicarCuantasPlabrasHayEnUnaFrase() 
	definir frase como Cadena;
	Definir espacios,i,cantidad Como Entero;
	espacios=0
	i=0
	cantidad=0
	escribir "Escribir una frase"
	leer frase;
	cantidad=Longitud(frase);
	para i<-0 hasta cantidad-1 con paso 1 hacer 
		si Subcadena(frase,i,i)=" " Entonces
			espacios=espacios+1
		FinSi
	FinPara
	Escribir "la frase tiene ", espacios+1 , " palabras ";
FinFuncion


//8)
//SubAlgoritmo presentarLaSumaDeLosDigitosDeLaCedula()
//esta funcion suma los digitos de la cedula y los presenta en pantalla
Funcion presentarLaSumaDeLosDigitosDeLaCedula()
	Definir l,n,pos Como Entero
	Definir frase Como Caracter
	n=0
	Escribir "ingrese numero de cedula"
	Leer frase
	l=Longitud(frase)-1
	para pos=0 Hasta l Con Paso 1 Hacer
		n=(convertirANumero(subcadena(frase,pos,pos)))+n
	FinPara
	Escribir "la suma de los numeros=" n
FinFuncion


//9)
//SubAlgoritmo indicarSiUnaPalabraEsPolindroma()
//esta funcion nos dice si la palabra ingresada es polindroma
Funcion indicarSiUnaPalabraEsPolindroma()
	Definir i Como Entero
	Definir frase,frase2,fraseReves Como Cadenas
	Escribir "Ingrese una palabra"
	Leer frase
	i = 0
	frase2 = ""
	Mientras i<Longitud(frase) Hacer
		Si subcadena(frase,i,i) <>' ' Entonces
			frase2 = concatenar(frase2,subcadena(frase,i,i))
			i = i+1
		SiNo
			i = i+1
		FinSi
	FinMientras
	frase = frase2
	fraseReves = ""
	Para i<-(Longitud(frase)-1) Hasta 0 Con Paso -1 Hacer
		fraseReves = concatenar(fraseReves,subcadena(frase,i,i))
	FinPara
	Si frase=fraseReves Entonces
		Escribir "La palabra es polindroma"
	SiNo
		Escribir "La palabra no es un palindroma"
	FinSi
FinFuncion


//10)
//SubAlgoritmo indicarPosicion()
//esta funcion indica en que lugar se posiciona la palabra a buscar
Funcion indicarPosicion()
	definir frase,carter Como Caracter
	definir i como entero
	i=0
	Escribir "ingrese una frase"
	leer frase
	Escribir "ingrese el caracter que le gustaria buscar"
	Leer carter
	Para i=1 hasta longitud(frase) Con Paso 1 Hacer
		result=Subcadena(frase,1,1)
		si carter=result Entonces
			mostrar  "ese caracter esta en la posicion... ", i
		FinSi
	FinPara
FinFuncion


// Ejercicios Arreglos
//1)
//SubAlgoritmo dadoUnArregloIngresarloYPresentarlo()
//esta funcion nos imprime en pantalla los digistos ingresados
Funcion dadoUnArregloIngresarloYPresentarlo()
	Definir i,num Como Entero
	Dimension num[5]
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir "Digite el numero"
		Leer num[]
	Fin Para
	
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir "Posicion: ", i," valor: ", num[]
	Fin Para
FinFuncion


//2)
//SubAlgoritmo presentarLosNumerosPares()
//esta funcion nos presenta los numeros pares de un arreglo
Funcion presentarLosNumerosPares()
	Definir i,pares,impares,arreglo como Entero
	pares=0
	impares=0
	Dimension arreglo[5]
	Para i<- 1 Hasta 4  Con Paso 1 Hacer
		Escribir "ingresar numero"
		Leer arreglo[i]
	Fin Para
	Escribir "Los numeros pares son:"
	Para i<- 1 Hasta 4 Con Paso 1 Hacer
		Si arreglo[i] mod 2=0 Entonces
			Escribir arreglo[i]
		FinSi
	Fin Para
FinFuncion


//3)
//SubAlgoritmo dadoUnaSerieDeNumerosPresentarLosNegativos()
//esta funcion da como respuesta los numeros negativos de un arreglo
Funcion dadoUnaSerieDeNumerosPresentarLosNegativos()
	Definir i,arreglo como entero;
	Dimension arreglo[5]
	Para i<-1 Hasta 4 Con Paso 1 Hacer
		Escribir "INGRESE LOS VALORES "
		Leer arreglo[i]
	Fin Para
	Para i<-1 Hasta 4 Con Paso 1 Hacer
		Si arreglo[i]<0 Entonces
			Escribir  "LOS NUMEROS NEGATIVOS SON : ", arreglo[i]
		Fin Si
	Fin Para
FinFuncion


//4)
//SubAlgoritmo presentarElPrimerCaracterDeUnNombre()
//esta funcion muestra el primer caracter del nombre ingresado
Funcion presentarElPrimerCaracterDeUnNombre()
	Definir x, n,contador, cont, cont1 Como Entero
	definir nombres Como Caracter
	x=0
	contador=0
	cont=1
	cont1=1
	Escribir "Cuantos nombres desea ingresar"
	leer n
	Dimension nombres[n+1]
	para x = 1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese el nombre #", cont
		Leer nombres[x]
		cont=cont+1
	FinPara
	Para x = 1 Hasta n Con Paso 1 Hacer
		contador = contador + 1
		Escribir "La incial del nombre #",cont1, " ", subcadena(nombres[x],0,0)
		cont1=cont1+1
	FinPara
FinFuncion


//5)
//SubAlgoritmo dadoUnArregloPresentar_PrimerMedioYUltimo()
//esta funcion nos presenta el primer, medio y ultimo digito del arreglo
Funcion dadoUnArregloPresentar_PrimerMedioYUltimo()
	Definir arreglo, lon, pos, num, numedio Como Real
	Definir primer, medio, ultimo Como Real
	lon=0;pos=0
	primer=0
	medio=0
	ultimo=0
	Escribir "Cuantos numeros va a ingresar"
	Leer lon
	Dimension arreglo[lon]
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "Ingrese el numero"
		Leer num
		arreglo[pos]=num
	Fin Para
	
	primer=arreglo[0]
	ultimo=arreglo[lon-1]
	Si (lon)%2=0 Entonces
		numedio=(lon)/2
		medio=(arreglo[numedio-1]+arreglo[numedio])/2-0.5
	SiNo
		numedio=(lon)/2+0.5
		medio=arreglo[numedio-1]
	Fin Si
	Escribir primer," ",medio," ",ultimo
FinFuncion


//6)
//SubAlgoritmo presentarElTotalCantidadYPromedioDelArreglo()
//esta funcion presenta la suma total, cantidad y promedio del arreglo
Funcion presentarElTotalCantidadYPromedioDelArreglo()
	Definir n,c,arreglo,num,pos,pos2,acu Como Entero
	Definir div Como Real
	Escribir "INGRESE LA CANTIDAD DE NUMEROS";Leer n
	Dimension arreglo[n]
	c=0;pos=0;pos2=0;acu=0;
	Mientras c < n Hacer
		Escribir "ingrese Numero"
		Leer num
		si num > 0 Entonces
			arreglo[pos]=num
			pos=pos+1
			acu=acu+num
		FinSi
		c=c+1
	FinMientras
	div=acu/pos
	Escribir "ARREGLO"
	para c=0 Hasta pos-1 Con Paso 1 Hacer
		Escribir "[",c,"]=",arreglo[c]
	FinPara
	Escribir "hay ",pos," digitos"
	Escribir "la suma es ",acu
	Escribir "el promedio es ",div
FinFuncion


//7)
//SubAlgoritmo presentarLosMultiplosDe5AlReves()
//esta funcion nos pide ingresar cierta cantidad de numeros
//y nos presenta los multiplos de 5 de atras hacia delante
Funcion presentarLosMultiplosDe5AlReves()
	definir num,i, totnum como entero
	dimension num[50]
	i=0
	Escribir "ingrese el total de numeros a ingresar"
	leer totnum
	para i=1 hasta totnum con paso 1 hacer
		escribir "ingrese los numeros" , "numero: ",i
		leer num[i]
	FinPara
	para i=totnum hasta 1 con paso -1 Hacer
		si num[i] mod 5 = 0 Entonces
			Mostrar "Los numeros del arreglo al reves multiplos de 5 son: ", num[i]
		FinSi
	FinPara
FinFuncion


//8)
//SubAlgoritmo presentarUnArregloEnOtro()
//este proceso nos presenta los numeros ingresados en otro proceso
Funcion presentarUnArregloEnOtro()
	definir num,num2,i como entero
	dimension num[50]
	dimension num2[50]
	para i=1 hasta 5 con paso 1 hacer
		escribir "ingrese 5 numeros " , "Numero: ",i
		Leer num[]
		num2[i]=num[]
	FinPara
	para i=1 hasta 5 Hacer
		mostrar "[" num2[i] "]" Sin Saltar
	FinPara
FinFuncion


//9)
//SubAlgoritmo dado2ArreglosCopiarenOtroArregloLaSumaDeCadaElementoDeLos2Arreglos()
//esta funcion suma cada elemento de los dos arreglos ingresados
Funcion dado2ArreglosCopiarenOtroArregloLaSumaDeCadaElementoDeLos2Arreglos()
	Definir arreglo1, arreglo2, arreglo3, n, pos Como Entero
	n=5
	Dimension arreglo1[n]
	Dimension arreglo2[n]
	Dimension arreglo3[n]
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Ingrese su primer arreglo ", pos Sin Saltar
		Leer arreglo1(pos)
	FinPara
	
	Escribir "<<INGRESE SU SEGUNDO ARREGLO>>"
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Ingrese su segundo arreglo ", pos Sin Saltar
		Leer arreglo2(pos)
	FinPara 
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		Arreglo3(pos)=arreglo1(pos)+arreglo2(pos)
		Escribir "arreglo3: ", arreglo3(pos)
	FinPara
FinFuncion


//10)
//SubAlgoritmo factoriales()
//esta funcion dada una serie de numeros guarda en un arreglo los factoriales
Funcion factoriales()
	definir mum, facto, n Como Entero
	Dimension facto[50]
	para i=1 hasta 5 con paso 1 Hacer
		Escribir  "ingrese 5 numeros del segundo arreglo " , "Numero: " ,i
		leer num
		n=num
		Mientras n>1 Hacer
			n=n-1
			num = num * n
		FinMientras
		facto[i]=num
	FinPara
	Escribir ""
	para i=1 hasta 5 con paso 1 Hacer
		Mostrar facto[i] " , " Sin Saltar
	FinPara
FinFuncion


// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,opcc,opca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11]
	// Arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios con Numeros"
	menuPrincipal[1] = "  2)Ejercicios con Cadenas"
	menuPrincipal[2] = "  3)Ejercicios con Arreglos"
	menuPrincipal[3] = "  4)Salir"
	
	// arreglo submenu numeros
	menuNumeros[0] = "  1)Mayor de 2 Numeros"
	menuNumeros[1] = "  2)Dividir dos numeros por restas"
	menuNumeros[2] = "  3)Multiplicar dos numeros por sumas"
	// n=5 : 20,5,10,2,1 respuesta: sumpares=32  multiplos5=1000
	menuNumeros[3] = "  4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
	//  2,123,10,2345,0 respuesta = 10    r=trunc(2/10)=0 r = 2 mod 10 =2
	menuNumeros[4] = "  5)Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
	//El almacen SomosMas tiene una promoción: a todos los trajes que tienen un
	//precio superior a 100, se les aplicará un descuento del 10%  y a los demas
	//el 5%. presentar el valor de cada traje con su respectivo valor, descuento y pago
	//considerando el iva del 12%. Asuma que se ingresan n trajes.
	// n=2
	// PrecioTraje=120   des=precioTraje*0.10=12  iva=(120-12)*0.12 pago=precioTraje-des+iva
	// PrecioTraje=50   des=precioTraje*0.05=2.5  iva=(50-2.5)*0.12
	menuNumeros[5] = "  6)Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
	menuNumeros[6] = "  7)Dado tres numeros indicar si el segundo es el mayor"
	// la secuencia termina cuando se ingrese un numero negativo
	// 2,4,6,8,-10
	menuNumeros[7] = "  8)Dado una secuencia de numeros presentar su promedio"
	// dos numeros son amigos cuando la suma de los divisores del primer numero
	// son iguales a la suma de los divisores del segundo numero.
	// n1=6(1,2,3)=6 n2=25(1,5)=6
	menuNumeros[8] = "  9)Numeros amigos"
	// dos numeros son primos gemelos si ambos son primos
	//n1=5  n2=7
	menuNumeros[9] = "  10)primos gemelos"
	menuNumeros[10]= "  11)Salir"
	
	// arreglos submenu cadenas
	// nombre = "ana"  ana
	menuCadenas[0] = "  1)Presentar un nombre caracter por caracter"
	// frase="hola que tal"    hql
	menuCadenas[1] = "  2)Presentar el primero, el medio y el ultimo caracter de una frase"
	//nom1="daniel" nombre2="daniel" si nombre1 = nombre2
	menuCadenas[2] = "  3)Dado dos nombres indicar si son iguales"
	//f1="Hola" f2="mal"  si longitud(f1)>longitud(f2)
	menuCadenas[3] = "  4)Dadas dos frase indicar la de mayor longitud"
	//frase="Hola, que tal; como te va,Bien: y tu, como estas."
	// ,=3  .=1  ;=1 :1   si subcadena(frase,pos,pos)=","
	menuCadenas[4] = "  5)Indicar cuantas ,.;: hay en una cadena"
	//frase="Juan tiene 20 dolares"
	// vocales=8   consonantes=11  digitos=2  si subcadena(frase,pos,pos)>="0" y <="9"
	menuCadenas[5] = "  6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
	// frase = "hola   que  tal" palabras=3
	menuCadenas[6] = "  7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
	// cedula="0914192182"= 37   convertirANumero(subcadena(frase,pos,pos))
	menuCadenas[7] = "  8)Presentar la suma de los digitos de una cedula"
	// palabra="ana"
	menuCadenas[8] = "  9)Indicar si una palabra es palindroma"
	// cadena="hola que tal"
	//         01234567891011
	//caracter="qui"  resp=-1
	//caracter="que"  resp=5
	menuCadenas[9] = "  10)Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
	menuCadenas[10] = "  11)Salir"
	
	// arreglo submenu arreglos
	// arreglo=[2,4,5,8,10]  presentar 2 4 5 8 10
	menuArreglos[0]= "1)Dado un arreglo cualquiera ingresarlo y presentarlo"
	// arreglo=[2,3,4,67,8] presenta 2 4 8  
	menuArreglos[1]= "2)Presentar los numeros pares de un arreglo"
    //n=5
	// 2,4,-6,2,-5 = [-6,-5]  = presenta -6 -5
	menuArreglos[2]= "3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
    // n=3
	// ["ana","jose","dan"]  presenta a j d 
	menuArreglos[3]= "4)Dado un arreglo de nombres presentar el primer caracter de cada nombre"
    //n=5  arreglo=[10,20,30,5,10]= total=75  cant=5   prom=15  
	menuArreglos[4]= "5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
    //n=5  arreglo=[8,20,7,5,4] presenta 5 20
	menuArreglos[5]= "6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
	//n=5  arreglo=[8,20,7,5,4] presenta 8  7  4
	menuArreglos[6]= "7)Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
    //n=5  arreglo1=[8,20,7,5,4]   arreglo2=[8,20,7,5,4] presenta 8,20,7,5,4
	menuArreglos[7]= "8)Dado un arreglo copiarlo en otro y presentarlo"
    //n=5  arreglo1=[8,20,7,5,4]
	//     arreglo2=[2,1,3,5,6] copiarArreglo3=[pos]=arreglo1[pos]+arreglo2[pos]
	menuArreglos[8]= "9)Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos"
	//n=5  3,2,1,5,4  arregloFactorual [6,2,1,120,24] 
	menuArreglos[9]= "10)Dado una serie de numeros guarda en un arreglo los factoriales"
	menuArreglos[10]="11) Salir"
	opc=""
    Mientras opc <> "4" Hacer
		opc=presentarMenu("Menu Principal",menuPrincipal,4)
		Segun opc Hacer
		"1":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Numeros",menuNumeros,11)
				Segun opcn Hacer
					"1":
						Escribir "Mayor de dos Numeros"
						mayorDosNumeros()
						Esperar 3 Segundos
					"2":
						Escribir "Dividir dos numeros por restas"
						dividirDosNumerosPorResta()
						Esperar 3 Segundos
					"3":
						Escribir "Multiplicar dos numeros por sumas"
						multiplicarDosNumerosPorSuma()
						Esperar 3 Segundos
					"4":
						Escribir "Ejercicio 4"
						sumaParesProductoMultiplosDe5()
						Esperar 3 Segundos
					"5":
						Escribir "Ejercicio 5"
						cantidadDigitosDeUnaSecuenciaDeNumerosHasta0()
						Esperar 3 Segundos                                
					"6":
						Escribir "Ejercicio 6"
						presentarPrecioDescuentoIvaPago_nTrajes()
						Esperar 3 Segundos
					"7":
						Escribir "Ejercicio 7"
						dado3NumerosIndicarSiElSegundoEsMayor()
						Esperar 3 Segundos
					"8":
						Escribir "Ejercicio 8"
						dadoUnaSecuenciaDeNumerosPresentarSuPromedio()
						Esperar 3 Segundos
					"9":
						Escribir "Ejercicio 9"
						numerosAmigos()
						Esperar 3 Segundos
					"10":
						Escribir "Ejercicio 10"
						primosGemelos()
						Esperar 3 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		    
		"2":
			opcc=""
			Mientras opcc <> "11" Hacer
				opcc=presentarMenu("Menu Cadenas",menuCadenas,11)
				Segun opcc Hacer
					"1":
						Escribir "Ejercicio 1"
						presentarCaracterPorCaracter()
						Esperar 3 Segundos
					"2":
						Escribir "Ejercicio 2"
						presentarElInicioMedioYUltimaLetraDeUnaFrase()
						Esperar 3 Segundos
					"3":
						Escribir "Ejercicio 3"
						indicarSiLosDosNombresSonIguales()
						Esperar 3 Segundos
					"4":
						Escribir "Ejercicio 4"
						dadasDosFrasesPresentarLaDeMayorLongitud()
						Esperar 3 Segundos
					"5":
						Escribir "Ejercicio 5"
						indicarCuantasComas_Puntos_PuntosdoblesyPuntocoma()
						Esperar 3 Segundos
					"6":
						Escribir "Ejercicio 6"
						vocales_consonantes_digitos()
						Esperar 3 Segundos
					"7":
						Escribir "Ejercicio 7"
						indicarCuantasPlabrasHayEnUnaFrase()
						Esperar 3 Segundos
					"8":
						Escribir "Ejercicio 8"
						presentarLaSumaDeLosDigitosDeLaCedula()
						Esperar 3 Segundos
					"9":
						Escribir "Ejercicio 9"
						indicarSiUnaPalabraEsPolindroma()
						Esperar 3 Segundos
					"10":
						Escribir "Ejercicio 10"
						indicarPosicion()
						Esperar 3 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		"3":
			opca=""
			Mientras opca <> "11" Hacer         
				opca=presentarMenu("Menu Arreglos",menuArreglos,11)
				Segun opca Hacer
					"1":
						Escribir "Ejercicio 1"
						dadoUnArregloIngresarloYPresentarlo()
						Esperar 3 Segundos
					"2":
						Escribir "Ejercicio 2"
						presentarLosNumerosPares()
						Esperar 3 Segundos
					"3":
						Escribir "Ejercicio 3"
						dadoUnaSerieDeNumerosPresentarLosNegativos()
						Esperar 3 Segundos
					"4":
						Escribir "Ejercicio 4"
						presentarElPrimerCaracterDeUnNombre()
						Esperar 3 Segundos
					"5":
						Escribir "Ejercicio 5"
						presentarElTotalCantidadYPromedioDelArreglo()
						Esperar 3 Segundos
					"6":
						Escribir "Ejercicio 6"
						presentarLosMultiplosDe5AlReves()
						Esperar 3 Segundos
					"7":
						Escribir "Ejercicio 7"
						dadoUnArregloPresentar_PrimerMedioYUltimo()
						Esperar 3 Segundos
					"8":
						Escribir "Ejercicio 8"
						presentarUnArregloEnOtro()
						Esperar 3 Segundos
					"9":
						Escribir "Ejercicio 9"
						dado2ArreglosCopiarenOtroArregloLaSumaDeCadaElementoDeLos2Arreglos()
						Esperar 3 Segundos
					"10":
						Escribir "Ejercicio 10"
						factoriales()
						Esperar 3 Segundos
					"11":
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
